uint64_t sub_1CF734F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);
  (v9)((AssociatedTypeWitness - 8), a3, a1, AssociatedTypeWitness);
  v7 = a3 + *(type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct() + 36);

  return v9(v7, a2, AssociatedTypeWitness);
}

uint64_t sub_1CF735010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v27 - v8;
  type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct.CodingKeys();
  swift_getWitnessTable();
  v39 = sub_1CF9E7E08();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v27 - v10;
  v34 = a2;
  v12 = type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v11;
  v17 = v40;
  sub_1CF9E8298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v12;
  v29 = v15;
  v40 = a1;
  v19 = v32;
  v18 = v33;
  v42 = 0;
  v20 = *(swift_getAssociatedConformanceWitness() + 16);
  v21 = v36;
  v22 = v35;
  sub_1CF9E7D88();
  v23 = v29;
  v36 = *(v18 + 32);
  (v36)(v29, v21, AssociatedTypeWitness);
  v41 = 1;
  sub_1CF9E7D88();
  (*(v37 + 8))(v22, v39);
  v24 = v28;
  (v36)(&v23[*(v28 + 36)], v19, AssociatedTypeWitness);
  v25 = v30;
  (*(v30 + 16))(v31, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v25 + 8))(v23, v24);
}

uint64_t sub_1CF735448(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1CF9E8048();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CF7354BC(void *a1, uint64_t a2, void (*a3)(uint64_t, void, void))
{
  a3(255, *(a2 + 16), *(a2 + 24));
  swift_getWitnessTable();
  v4 = sub_1CF9E7F78();
  v11 = *(v4 - 8);
  v5 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 32);
  sub_1CF9E7F08();
  return (*(v11 + 8))(v7, v4);
}

uint64_t sub_1CF735670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, __n128)@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t, __n128)@<X5>, uint64_t a6@<X8>)
{
  v37 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v33 - v13;
  a4(255, a2, a3, v12);
  swift_getWitnessTable();
  v42 = sub_1CF9E7E08();
  v38 = *(v42 - 8);
  v14 = *(v38 + 64);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v17 = &v33 - v16;
  v39 = a3;
  v40 = a2;
  v18 = a5(0, a2, a3, v15);
  v36 = *(v18 - 8);
  v19 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v45;
  sub_1CF9E8298();
  if (v23)
  {
    v32 = a1;
  }

  else
  {
    v34 = v21;
    v35 = v18;
    v45 = a1;
    v24 = v38;
    v25 = v41;
    v26 = AssociatedTypeWitness;
    v27 = *(swift_getAssociatedConformanceWitness() + 24);
    v29 = v42;
    v28 = v43;
    sub_1CF9E7D88();
    (*(v24 + 8))(v17, v29);
    v31 = v34;
    (*(v25 + 32))(v34, v28, v26);
    (*(v36 + 32))(v37, v31, v35);
    v32 = v45;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1CF7359A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_1CF735A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF734838(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1CF735A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735AD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1CF735B24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_1CF734A4C(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_1CF735B58(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1CF7348BC(a1, *v2, *(v2 + 8));
}

uint64_t sub_1CF735B7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735C80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735CD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735DC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735E18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1CF735EB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1CF734CE4();
}

uint64_t sub_1CF735EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF734C04(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF735EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735FD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736028(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7360C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7361B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7362A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7362F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF736394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7363E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7364D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF73652C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7365C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(a3, a1, AssociatedTypeWitness);
  if (a2)
  {
    swift_getErrorValue();
    v9 = sub_1CF4C2330(v16, v17);
    if (v3)
    {

      v11 = *(v8 + 8);
      v11(a1, AssociatedTypeWitness);
      return (v11)(a3, AssociatedTypeWitness);
    }

    v13 = v9;
    v14 = v10;
  }

  else
  {
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  (*(v8 + 8))(a1, AssociatedTypeWitness);
  result = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct();
  v15 = (a3 + *(result + 36));
  *v15 = v13;
  v15[1] = v14;
  return result;
}

uint64_t sub_1CF736748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF736818(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1CF736850(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v18 = a2;
  type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v5;
  sub_1CF9E82A8();
  LOBYTE(v22) = 0;
  swift_getAssociatedTypeWitness();
  v11 = v20;
  v12 = *(swift_getAssociatedConformanceWitness() + 32);
  v13 = v21;
  sub_1CF9E7F08();
  if (v13)
  {
    return (*(v19 + 8))(v8, v5);
  }

  v15 = v19;
  v16 = (v11 + *(v18 + 36));
  v17 = v16[1];
  v22 = *v16;
  v23 = v17;
  v24 = 1;
  sub_1CEFF05F4(v22, v17);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v22, v23);
  return (*(v15 + 8))(v8, v10);
}

uint64_t sub_1CF736A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v29 - v6;
  type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1CF9E7E08();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v34 = a2;
  v12 = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v11;
  v17 = v40;
  sub_1CF9E8298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v15;
  v30 = v12;
  v18 = v33;
  LOBYTE(v41) = 0;
  v19 = AssociatedTypeWitness;
  v20 = *(swift_getAssociatedConformanceWitness() + 24);
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_1CF9E7D88();
  v24 = *(v18 + 32);
  v25 = v40;
  v24(v40, v21, v19);
  v42 = 1;
  sub_1CF190888();
  sub_1CF9E7CF8();
  (*(v38 + 8))(v22, v23);
  v27 = v30;
  v26 = v31;
  *&v25[*(v30 + 36)] = v41;
  (*(v26 + 16))(v32, v25, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v25, v27);
}

uint64_t sub_1CF736E78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1CF9E81D8();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1CF9E8228();
}

uint64_t sub_1CF736ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF736818(*v1);
}

uint64_t sub_1CF736EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF736748(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF736F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF736FF0@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_1CF73703C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF737090(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF73712C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v341 = a4;
  v7 = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct();
  v307 = sub_1CF9E75D8();
  v306 = *(v307 - 8);
  v8 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v307);
  v305 = &v273 - v9;
  v310 = v7;
  v309 = *(v7 - 8);
  v10 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v308 = &v273 - v12;
  IsDetachedRootStruct = type metadata accessor for FileTreeError.ItemIsDetachedRootStruct();
  v303 = sub_1CF9E75D8();
  v301 = *(v303 - 8);
  v14 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v302 = &v273 - v15;
  v304 = IsDetachedRootStruct;
  v299 = *(IsDetachedRootStruct - 8);
  v16 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v300 = &v273 - v18;
  v19 = type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct();
  v297 = sub_1CF9E75D8();
  v294 = *(v297 - 8);
  v20 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v295 = &v273 - v21;
  v298 = v19;
  v293 = *(v19 - 8);
  v22 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v296 = &v273 - v24;
  v25 = type metadata accessor for FileTreeError.LookupNotPermittedStruct();
  v290 = sub_1CF9E75D8();
  v288 = *(v290 - 8);
  v26 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v290);
  v289 = &v273 - v27;
  v291 = v25;
  v286 = *(v25 - 8);
  v28 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v287 = &v273 - v30;
  v31 = type metadata accessor for FileTreeError.ItemMismatchStruct();
  v283 = sub_1CF9E75D8();
  v281 = *(v283 - 8);
  v32 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v282 = &v273 - v33;
  v285 = v31;
  v280 = *(v31 - 8);
  v34 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v284 = &v273 - v36;
  v37 = type metadata accessor for FileTreeError.VersionConflictStruct();
  v312 = sub_1CF9E75D8();
  v311 = *(v312 - 8);
  v38 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v312);
  v318 = &v273 - v39;
  v317 = v37;
  v314 = *(v37 - 8);
  v40 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v313 = &v273 - v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v325 = *(AssociatedTypeWitness - 8);
  v43 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v326 = &v273 - v44;
  v351 = swift_getAssociatedTypeWitness();
  v327 = *(v351 - 8);
  v45 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v324 = &v273 - v46;
  v47 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct();
  v316 = sub_1CF9E75D8();
  v315 = *(v316 - 8);
  v48 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v316);
  v328 = &v273 - v49;
  v329 = v47;
  v320 = *(v47 - 8);
  v50 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v319 = &v273 - v52;
  v53 = type metadata accessor for FileTreeError.ContentUnavailableStruct();
  v322 = sub_1CF9E75D8();
  v321 = *(v322 - 8);
  v54 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v332 = &v273 - v55;
  v331 = v53;
  v330 = *(v53 - 8);
  v56 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v323 = &v273 - v58;
  v59 = type metadata accessor for FileTreeError.CannotBounceStruct();
  v334 = sub_1CF9E75D8();
  v333 = *(v334 - 8);
  v60 = *(v333 + 64);
  MEMORY[0x1EEE9AC00](v334);
  v338 = &v273 - v61;
  v340 = v59;
  v335 = *(v59 - 8);
  v62 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v355 = &v273 - v64;
  v65 = type metadata accessor for FileTreeError.ItemCollisionStruct();
  v337 = sub_1CF9E75D8();
  v336 = *(v337 - 8);
  v66 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v337);
  v346 = &v273 - v67;
  v347 = v65;
  v343 = *(v65 - 8);
  v68 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v339 = &v273 - v70;
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct();
  v345 = sub_1CF9E75D8();
  v344 = *(v345 - 8);
  v72 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v345);
  v354 = &v273 - v73;
  v357 = found;
  v353 = *(found - 8);
  v74 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v349 = &v273 - v76;
  v77 = type metadata accessor for FileTreeError.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v78 = sub_1CF9E7E08();
  v358 = *(v78 - 8);
  v359 = v78;
  v79 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v273 - v80;
  v356 = a2;
  v348 = a3;
  v352 = type metadata accessor for FileTreeError();
  v342 = *(v352 - 8);
  v82 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v352);
  v292 = &v273 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v279 = (&v273 - v85);
  MEMORY[0x1EEE9AC00](v86);
  v278 = &v273 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v273 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v273 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v273 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v273 - v98;
  v100 = a1[3];
  v101 = a1[4];
  v361 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v100);
  v360 = v81;
  v102 = TupleTypeMetadata3;
  sub_1CF9E8298();
  if (v102)
  {
    goto LABEL_12;
  }

  v276 = v93;
  TupleTypeMetadata3 = v96;
  v275 = v90;
  v277 = v99;
  LOBYTE(v363) = 13;
  v104 = v359;
  v103 = v360;
  v105 = sub_1CF9E7D48();
  v107 = v106;
  v274 = 0;
  v363 = v356;
  swift_getMetatypeMetadata();
  if (v105 == sub_1CF9E6948() && v107 == v108)
  {

    v109 = v355;
  }

  else
  {
    v110 = sub_1CF9E8048();

    v109 = v355;
    if ((v110 & 1) == 0)
    {
      v122 = sub_1CF9E79E8();
      swift_allocError();
      v124 = v123;
      v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0) + 48);
      *v124 = v352;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C29D0, &unk_1CFA13B98);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_1CF9FA450;
      v127 = WitnessTable;
      *(v126 + 56) = v77;
      *(v126 + 64) = v127;
      *(v126 + 32) = 13;
      sub_1CF9E79D8();
      (*(*(v122 - 8) + 104))(v124, *MEMORY[0x1E69E6AF8], v122);
      swift_willThrow();
      goto LABEL_11;
    }
  }

  LOBYTE(v363) = 0;
  v111 = v357;
  swift_getWitnessTable();
  v112 = v354;
  v113 = v274;
  sub_1CF9E7CF8();
  if (!v113)
  {
    v114 = v109;
    v115 = v353;
    if ((*(v353 + 48))(v112, 1, v111) == 1)
    {
      (*(v344 + 8))(v112, v345);
      LOBYTE(v363) = 1;
      v116 = v347;
      swift_getWitnessTable();
      v117 = v346;
      sub_1CF9E7CF8();
      v118 = v343;
      if ((*(v343 + 48))(v117, 1, v116) != 1)
      {
        v274 = 0;
        v156 = v339;
        v157 = (*(v118 + 32))(v339, v117, v116);
        MEMORY[0x1EEE9AC00](v157);
        qmemcpy(&v273 - 6, " filename below syncability original", 36);
        strcpy(v272 + 2, "alError ");
        v158 = v116;
        v363 = swift_getAssociatedTypeWitness();
        v364 = &type metadata for Filename;
        v365 = v363;
        v366 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
        v367 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v160 = v276;
        v161 = &v276[TupleTypeMetadata[12]];
        WitnessTable = TupleTypeMetadata[16];
        TupleTypeMetadata3 = TupleTypeMetadata[20];
        v162 = swift_getAssociatedTypeWitness();
        v163 = *(v162 - 8);
        v164 = *(v163 + 16);
        v164(v160, v156, v162);
        v165 = v158;
        v166 = &v156[*(v158 + 36)];
        v167 = *(v166 + 1);
        *v161 = *v166;
        *(v161 + 1) = v167;
        v357 = v161;
        v168 = v165;
        v164(&v160[WitnessTable], &v156[*(v165 + 40)], v162);
        v169 = v156;
        *&v160[TupleTypeMetadata3] = xmmword_1CFA13A70;

        v170 = &v156[*(v168 + 44)];
        v171 = v170[1];
        if (v171 >> 60 == 15)
        {
          v172 = 0;
          v173 = v361;
          v174 = v274;
        }

        else
        {
          v174 = v274;
          sub_1CF4C2898(*v170, v171);
          v172 = v180;
          v173 = v361;
        }

        if (v174)
        {
          (*(v343 + 8))(v169, v347);
          (*(v358 + 8))(v360, v359);
          v181 = *(v163 + 8);
          v181(&v160[WitnessTable], v162);
          v182 = v357[1];

          v181(v160, v162);
LABEL_42:
          v128 = v173;
          return __swift_destroy_boxed_opaque_existential_1(v128);
        }

        v193 = TupleTypeMetadata[24];
        (*(v343 + 8))(v169, v347);
        (*(v358 + 8))(v360, v359);
        *&v160[v193] = v172;
        v191 = v352;
        swift_storeEnumTagMultiPayload();
        v184 = v342;
        v185 = v277;
        (*(v342 + 32))(v277, v160, v191);
        goto LABEL_37;
      }

      (*(v336 + 8))(v117, v337);
      LOBYTE(v363) = 2;
      v119 = v340;
      swift_getWitnessTable();
      v120 = v338;
      sub_1CF9E7CF8();
      v121 = v358;
      v183 = v335;
      if ((*(v335 + 48))(v120, 1, v119) == 1)
      {
        (*(v333 + 8))(v120, v334);
        type metadata accessor for FileTreeError.CollidingItemChangedBeforeBounceStruct();
        LOBYTE(v368) = 14;
        swift_getWitnessTable();
        sub_1CF9E7CF8();
        v184 = v342;
        v185 = v277;
        if ((v363 & 1) == 0)
        {
          (*(v121 + 8))(v103, v104);
          v191 = v352;
          swift_storeEnumTagMultiPayload();
LABEL_44:
          v173 = v361;
LABEL_37:
          v192 = v341;
          goto LABEL_41;
        }

        LOBYTE(v363) = 3;
        v186 = v331;
        swift_getWitnessTable();
        v187 = v332;
        sub_1CF9E7CF8();
        v274 = 0;
        if ((*(v330 + 48))(v187, 1, v186) != 1)
        {
          (*(v358 + 8))(v360, v359);
          v197 = v323;
          v198 = v331;
          v199 = (*(v330 + 32))(v323, v332, v331);
          WitnessTable = &v273;
          MEMORY[0x1EEE9AC00](v199);
          qmemcpy(&v273 - 6, " at originalError previousError ", 32);
          LOBYTE(v272[0]) = 0;
          v363 = swift_getAssociatedTypeWitness();
          v200 = v351;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          TupleTypeMetadata3 = AssociatedConformanceWitness;
          v202 = AssociatedTypeWitness;
          v203 = swift_getAssociatedConformanceWitness();
          v368 = v200;
          v369 = v202;
          v370 = AssociatedConformanceWitness;
          v371 = v203;
          type metadata accessor for FileItemVersion();
          v364 = sub_1CF9E75D8();
          v365 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          v366 = v365;
          v204 = swift_getTupleTypeMetadata();
          v205 = v204[12];
          WitnessTable = v204[16];
          v360 = v204[20];
          v206 = swift_getAssociatedTypeWitness();
          v185 = v277;
          (*(*(v206 - 8) + 16))(v277, v197, v206);
          v207 = v324;
          (*(v327 + 16))(v324, &v197[*(v198 + 36)], v200);
          v208 = v326;
          (*(v325 + 16))(v326, &v197[*(v198 + 44)], v202);
          (*(v330 + 8))(v197, v198);
          v272[1] = v203;
          v209 = TupleTypeMetadata3;
          v272[0] = TupleTypeMetadata3;
          sub_1CF023878(v207, 0, v208, 0, 0, 0, v200, v202, &v185[v205]);
          v363 = v200;
          v364 = v202;
          v365 = v209;
          v366 = v203;
          v210 = type metadata accessor for FileItemVersion();
          (*(*(v210 - 8) + 56))(&v185[v205], 0, 1, v210);
          *&v185[WitnessTable] = 0;
          *(v360 + v185) = 0;
          v191 = v352;
          swift_storeEnumTagMultiPayload();
          v173 = v361;
          v192 = v341;
          goto LABEL_40;
        }

        (*(v321 + 8))(v332, v322);
        LOBYTE(v363) = 4;
        swift_getWitnessTable();
        v188 = v274;
        sub_1CF9E7CF8();
        if (v188)
        {
          (*(v358 + 8))(v360, v359);
          goto LABEL_12;
        }

        if ((*(v320 + 48))(v328, 1, v329) != 1)
        {
          v215 = v319;
          v216 = v329;
          (*(v320 + 32))(v319, v328, v329);
          v217 = swift_getAssociatedTypeWitness();
          v218 = sub_1CF9E75D8();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v219 = *(TupleTypeMetadata3 + 48);
          v220 = v275;
          (*(*(v217 - 8) + 16))(v275, v215, v217);
          v221 = *(v216 + 40);
          v222 = *(*(v218 - 8) + 16);
          WitnessTable = v219;
          v222(&v220[v219], &v215[v221], v218);
          v223 = &v215[*(v216 + 36)];
          v224 = v223[1];
          if (v224 >> 60 == 15)
          {
            v225 = 0;
          }

          else
          {
            sub_1CF4C2898(*v223, v224);
            v225 = v226;
          }

          v227 = *(TupleTypeMetadata3 + 64);
          (*(v320 + 8))(v319, v329);
          (*(v358 + 8))(v360, v359);
          v228 = v275;
          *&v275[v227] = v225;
          v191 = v352;
LABEL_73:
          swift_storeEnumTagMultiPayload();
          v184 = v342;
          v185 = v277;
          (*(v342 + 32))(v277, v228, v191);
          goto LABEL_44;
        }

        (*(v315 + 8))(v328, v316);
        LOBYTE(v363) = 5;
        swift_getWitnessTable();
        sub_1CF9E7CF8();
        if ((*(v314 + 48))(v318, 1, v317) == 1)
        {
          (*(v311 + 8))(v318, v312);
          type metadata accessor for FileTreeError.CapturedContentMissingStruct();
          LOBYTE(v368) = 6;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemNotEvictableStruct();
          LOBYTE(v368) = 7;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0 || (type metadata accessor for FileTreeError.DirectoryChangedStruct(), LOBYTE(v368) = 9, swift_getWitnessTable(), sub_1CF9E7CF8(), (v363 & 1) == 0))
          {
LABEL_75:
            (*(v358 + 8))(v360, v359);
            v185 = v277;
            v191 = v352;
            goto LABEL_39;
          }

          type metadata accessor for FileTreeError.DownloadCancelled();
          LOBYTE(v368) = 10;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          v211 = v363;
          if (v363 != 3)
          {
            (*(v358 + 8))(v360, v359);
            v245 = v278;
            *v278 = v211 & 1;
            v191 = v352;
            swift_storeEnumTagMultiPayload();
            v184 = v342;
            v185 = v277;
            (*(v342 + 32))(v277, v245, v191);
            goto LABEL_44;
          }

          LOBYTE(v363) = 8;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v280 + 48))(v282, 1, v285) != 1)
          {
            (*(v358 + 8))(v360, v359);
            v246 = v284;
            v247 = v285;
            (*(v280 + 32))(v284, v282, v285);
            v248 = swift_getAssociatedTypeWitness();
            v249 = sub_1CF9E75D8();
            v250 = *(swift_getTupleTypeMetadata2() + 48);
            v185 = v277;
            (*(*(v249 - 8) + 32))(v277, v246, v249);
            (*(*(v248 - 8) + 32))(&v185[v250], &v246[*(v247 + 36)], v248);
            v191 = v352;
            goto LABEL_39;
          }

          (*(v281 + 8))(v282, v283);
          LOBYTE(v363) = 11;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v286 + 48))(v289, 1, v291) != 1)
          {
            (*(v358 + 8))(v360, v359);
            v251 = v287;
            (*(v286 + 32))(v287, v289, v291);
            v252 = swift_getAssociatedTypeWitness();
            v185 = v277;
            (*(*(v252 - 8) + 32))(v277, v251, v252);
            v191 = v352;
            goto LABEL_39;
          }

          (*(v288 + 8))(v289, v290);
          type metadata accessor for FileTreeError.ItemKindMismatchStruct();
          LOBYTE(v368) = 12;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemIsFlockedStruct();
          LOBYTE(v368) = 15;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemNeedDelayPropagationStruct();
          LOBYTE(v368) = 16;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.UploadCancelled();
          LOBYTE(v368) = 17;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          v212 = v364;
          if (v364 >> 60 != 11)
          {
            v253 = v363;
            if (v364 >> 60 == 15)
            {
              v254 = 0;
            }

            else
            {
              sub_1CF4C2898(v363, v364);
              v254 = v255;
            }

            (*(v358 + 8))(v360, v359);
            sub_1CEFF0584(v253, v212);
            v256 = v279;
            *v279 = v254;
            v191 = v352;
            swift_storeEnumTagMultiPayload();
            v184 = v342;
            v185 = v277;
            (*(v342 + 32))(v277, v256, v191);
            goto LABEL_44;
          }

          type metadata accessor for FileTreeError.UploadInterrupted();
          LOBYTE(v368) = 18;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          LOBYTE(v363) = 19;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v293 + 48))(v295, 1, v298) != 1)
          {
            (*(v358 + 8))(v360, v359);
            v257 = v296;
            v258 = v298;
            (*(v293 + 32))(v296, v295, v298);
            v259 = v351;
            v260 = *(swift_getTupleTypeMetadata2() + 48);
            v261 = *(v327 + 32);
            v185 = v277;
            v261(v277, v257, v259);
            v261(&v185[v260], &v257[*(v258 + 36)], v259);
            v191 = v352;
            goto LABEL_39;
          }

          (*(v294 + 8))(v295, v297);
          type metadata accessor for FileTreeError.MaxLookupDepthStruct();
          LOBYTE(v368) = 20;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.CompressedFileReadFailedStruct();
          LOBYTE(v368) = 21;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.SpeculativeDownloadRejectedStruct();
          LOBYTE(v368) = 22;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemNotTracked();
          LOBYTE(v368) = 23;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          LOBYTE(v363) = 24;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v299 + 48))(v302, 1, v304) != 1)
          {
            (*(v358 + 8))(v360, v359);
            v262 = v300;
            (*(v299 + 32))(v300, v302, v304);
            v263 = swift_getAssociatedTypeWitness();
            v185 = v277;
            (*(*(v263 - 8) + 32))(v277, v262, v263);
            v191 = v352;
            goto LABEL_39;
          }

          (*(v301 + 8))(v302, v303);
          type metadata accessor for FileTreeError.NoContentToFetch();
          LOBYTE(v368) = 25;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v363 & 1) == 0)
          {
            goto LABEL_75;
          }

          LOBYTE(v363) = 26;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v309 + 48))(v305, 1, v310) == 1)
          {
            (*(v306 + 8))(v305, v307);
            type metadata accessor for FileTreeError.ItemNotInTrash();
            LOBYTE(v368) = 27;
            swift_getWitnessTable();
            sub_1CF9E7CF8();
            if (v363)
            {
              LOBYTE(v363) = 13;
              sub_1CF9E79E8();
              swift_allocError();
              v213 = v359;
              swift_getWitnessTable();
              v214 = v360;
              sub_1CF9E79C8();
              swift_willThrow();
              (*(v358 + 8))(v214, v213);
              goto LABEL_12;
            }

            goto LABEL_75;
          }

          v264 = v308;
          v265 = v310;
          (*(v309 + 32))(v308, v305, v310);
          v266 = swift_getAssociatedTypeWitness();
          (*(*(v266 - 8) + 16))(v292, v264, v266);
          v267 = &v264[*(v265 + 36)];
          v268 = v267[1];
          if (v268 >> 60 == 15)
          {
            v269 = 0;
          }

          else
          {
            sub_1CF4C2898(*v267, v268);
            v269 = v270;
          }

          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          v271 = *(swift_getTupleTypeMetadata2() + 48);
          (*(v309 + 8))(v308, v310);
          (*(v358 + 8))(v360, v359);
          v228 = v292;
          *&v292[v271] = v269;
          v191 = v352;
          goto LABEL_73;
        }

        (*(v358 + 8))(v360, v359);
        v229 = v313;
        v230 = v317;
        v231 = (*(v314 + 32))(v313, v318, v317);
        WitnessTable = &v273;
        MEMORY[0x1EEE9AC00](v231);
        v360 = &v273 - 6;
        qmemcpy(&v273 - 6, " at originalError previousError ", 32);
        LOBYTE(v272[0]) = 0;
        v363 = swift_getAssociatedTypeWitness();
        v232 = v351;
        v233 = swift_getAssociatedConformanceWitness();
        TupleTypeMetadata3 = v233;
        v234 = AssociatedTypeWitness;
        v235 = swift_getAssociatedConformanceWitness();
        v368 = v232;
        v369 = v234;
        v370 = v233;
        v371 = v235;
        type metadata accessor for FileItemVersion();
        v364 = sub_1CF9E75D8();
        v365 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v366 = v365;
        v236 = swift_getTupleTypeMetadata();
        v237 = v236[12];
        WitnessTable = v236[16];
        v238 = v236[20];
        v359 = v237;
        v360 = v238;
        v239 = swift_getAssociatedTypeWitness();
        v185 = v277;
        (*(*(v239 - 8) + 16))(v277, v229, v239);
        v240 = v324;
        (*(v327 + 16))(v324, &v229[*(v230 + 36)], v232);
        v241 = v326;
        (*(v325 + 16))(v326, &v229[*(v230 + 44)], v234);
        (*(v314 + 8))(v229, v230);
        v272[1] = v235;
        v242 = TupleTypeMetadata3;
        v272[0] = TupleTypeMetadata3;
        v243 = v359;
        sub_1CF023878(v240, 0, v241, 0, 0, 0, v232, v234, &v185[v359]);
        v363 = v232;
        v364 = v234;
        v365 = v242;
        v366 = v235;
        v244 = type metadata accessor for FileItemVersion();
        (*(*(v244 - 8) + 56))(&v185[v243], 0, 1, v244);
        *&v185[WitnessTable] = 0;
        *(v360 + v185) = 0;
        v191 = v352;
      }

      else
      {
        (*(v121 + 8))(v103, v104);
        (*(v183 + 32))(v114, v120, v119);
        v194 = swift_getAssociatedTypeWitness();
        v195 = *(swift_getTupleTypeMetadata2() + 48);
        v196 = *(v114 + 1);
        v185 = v277;
        *v277 = *v114;
        *(v185 + 1) = v196;
        (*(*(v194 - 8) + 32))(&v185[v195], &v114[*(v119 + 36)], v194);
        v191 = v352;
      }

LABEL_39:
      swift_storeEnumTagMultiPayload();
      v173 = v361;
      v192 = v341;
LABEL_40:
      v184 = v342;
      goto LABEL_41;
    }

    v274 = 0;
    v130 = v349;
    v131 = (*(v115 + 32))(v349, v112, v111);
    MEMORY[0x1EEE9AC00](v131);
    qmemcpy(&v273 - 6, " at originalError previousError ", 32);
    LOBYTE(v272[0]) = 0;
    v363 = swift_getAssociatedTypeWitness();
    v132 = v351;
    v133 = swift_getAssociatedConformanceWitness();
    v134 = AssociatedTypeWitness;
    v135 = swift_getAssociatedConformanceWitness();
    v368 = v132;
    v369 = v134;
    v136 = v357;
    WitnessTable = v133;
    v370 = v133;
    v371 = v135;
    v355 = v135;
    type metadata accessor for FileItemVersion();
    v364 = sub_1CF9E75D8();
    v365 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v366 = v365;
    v137 = swift_getTupleTypeMetadata();
    v138 = v137[12];
    v139 = swift_getAssociatedTypeWitness();
    v140 = *(v139 - 8);
    v141 = TupleTypeMetadata3;
    (*(v140 + 16))(TupleTypeMetadata3, v130, v139);
    sub_1CF72E51C(v136, v141 + v138);
    v142 = &v130[*(v136 + 44)];
    v143 = v142[1];
    if (v143 >> 60 == 15)
    {
      v144 = v130;
      v145 = 0;
      v146 = v274;
    }

    else
    {
      v146 = v274;
      sub_1CF4C2898(*v142, v143);
      v144 = v349;
    }

    v274 = v146;
    v147 = v360;
    v148 = v351;
    v149 = AssociatedTypeWitness;
    if (v146)
    {
      (*(v353 + 8))(v144, v357);
      (*(v358 + 8))(v147, v359);
      v363 = v148;
      v364 = v149;
      v365 = WitnessTable;
      v366 = v355;
      type metadata accessor for FileItemVersion();
      v150 = sub_1CF9E75D8();
      (*(*(v150 - 8) + 8))(v141 + v138, v150);
      (*(v140 + 8))(v141, v139);
LABEL_19:
      v128 = v361;
      return __swift_destroy_boxed_opaque_existential_1(v128);
    }

    *(v141 + v137[16]) = v145;
    v151 = v357;
    v152 = &v144[*(v357 + 12)];
    v153 = v152[1];
    if (v153 >> 60 == 15)
    {
      v154 = 0;
      v155 = v353;
    }

    else
    {
      v175 = v145;
      v176 = v274;
      sub_1CF4C2898(*v152, v153);
      v274 = v176;
      v155 = v353;
      if (v176)
      {
        (*(v353 + 8))(v349, v151);
        (*(v358 + 8))(v360, v359);

        v363 = v351;
        v364 = AssociatedTypeWitness;
        v365 = WitnessTable;
        v366 = v355;
        type metadata accessor for FileItemVersion();
        v178 = sub_1CF9E75D8();
        v179 = TupleTypeMetadata3;
        (*(*(v178 - 8) + 8))(TupleTypeMetadata3 + v138, v178);
        (*(v140 + 8))(v179, v139);
        goto LABEL_19;
      }

      v154 = v177;
      v144 = v349;
    }

    v189 = v137[20];
    (*(v155 + 8))(v144, v151);
    (*(v358 + 8))(v360, v359);
    v190 = TupleTypeMetadata3;
    *(TupleTypeMetadata3 + v189) = v154;
    v191 = v352;
    swift_storeEnumTagMultiPayload();
    v184 = v342;
    v185 = v277;
    (*(v342 + 32))(v277, v190, v191);
    v173 = v361;
    v192 = v341;
LABEL_41:
    (*(v184 + 32))(v192, v185, v191);
    goto LABEL_42;
  }

LABEL_11:
  (*(v358 + 8))(v103, v104);
LABEL_12:
  v128 = v361;
  return __swift_destroy_boxed_opaque_existential_1(v128);
}

void sub_1CF73ADE4(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v271 = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct();
  v272 = *(v271 - 8);
  v6 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v333 = &v264 - v7;
  IsDetachedRootStruct = type metadata accessor for FileTreeError.ItemIsDetachedRootStruct();
  v298 = *(IsDetachedRootStruct - 1);
  v8 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](IsDetachedRootStruct);
  v289 = &v264 - v9;
  v331 = type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct();
  v300 = *(v331 - 8);
  v10 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v331);
  v299 = &v264 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v322 = *(AssociatedTypeWitness - 1);
  v13 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v297 = &v264 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v295 = &v264 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v314 = &v264 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v312 = &v264 - v20;
  v293 = type metadata accessor for FileTreeError.LookupNotPermittedStruct();
  v330 = *(v293 - 8);
  v21 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v293);
  v291 = &v264 - v22;
  v296 = type metadata accessor for FileTreeError.ItemMismatchStruct();
  v294 = *(v296 - 8);
  v23 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v296);
  v292 = &v264 - v24;
  v270 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct();
  v269 = *(v270 - 8);
  v25 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v309 = &v264 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v319 = sub_1CF9E75D8();
  v318 = *(v319 - 8);
  v28 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v285 = &v264 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v310 = &v264 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v287 = &v264 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v308 = &v264 - v35;
  v288 = type metadata accessor for FileTreeError.CannotBounceStruct();
  v286 = *(v288 - 8);
  v36 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v284 = &v264 - v37;
  v268 = type metadata accessor for FileTreeError.ItemCollisionStruct();
  v267 = *(v268 - 8);
  v38 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v290 = &v264 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v41 = sub_1CF9E75D8();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v301 = &v264 - v43;
  v44 = sub_1CF9E75D8();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v316 = &v264 - v46;
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct();
  v304 = *(found - 8);
  v47 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](found);
  v303 = &v264 - v48;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v317 = AssociatedTypeWitness;
  v338 = AssociatedTypeWitness;
  v339 = v40;
  v302 = v40;
  v340 = AssociatedConformanceWitness;
  v341 = v50;
  v283 = type metadata accessor for FileItemVersion();
  v315 = sub_1CF9E75D8();
  Description = v315[-1].Description;
  v51 = Description[8];
  MEMORY[0x1EEE9AC00](v315);
  v282 = &v264 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v281 = &v264 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v321 = &v264 - v56;
  v325 = v27;
  v324 = *(v27 - 8);
  v57 = v324[8];
  MEMORY[0x1EEE9AC00](v58);
  v275 = &v264 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v279 = &v264 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v329 = &v264 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v328 = &v264 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v278 = &v264 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v273 = &v264 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v306 = &v264 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v323 = &v264 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v274 = &v264 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v277 = &v264 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v276 = &v264 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v307 = &v264 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v280 = &v264 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v311 = &v264 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v313 = &v264 - v87;
  v335 = a2;
  v327 = *(a2 - 1);
  v88 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v336 = &v264 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = v4;
  type metadata accessor for FileTreeError.CodingKeys();
  swift_getWitnessTable();
  v91 = sub_1CF9E7F78();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v264 - v94;
  v96 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v338 = v5;
  swift_getMetatypeMetadata();
  sub_1CF9E6948();
  LOBYTE(v338) = 13;
  v97 = v337;
  sub_1CF9E7EB8();
  if (v97)
  {
    (*(v92 + 8))(v95, v91);
  }

  else
  {
    v99 = v328;
    v98 = v329;
    v100 = v330;
    v265 = v95;
    v337 = v91;
    v101 = IsDetachedRootStruct;
    v266 = 0;
    v102 = v331;
    v103 = v333;
    v264 = v92;

    (*(v327 + 16))(v336, v334, v335);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v335 = v5;
        strcpy(&v264 - 48, " filename below syncability originalError ");
        v196 = v325;
        v338 = v325;
        v339 = &type metadata for Filename;
        v340 = v325;
        v341 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
        v342 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v198 = v336;
        v199 = &v336[TupleTypeMetadata[12]];
        v200 = *(v199 + 1);
        v334 = *v199;
        v201 = TupleTypeMetadata[16];
        sub_1CF480620(*&v336[TupleTypeMetadata[20]], *&v336[TupleTypeMetadata[20] + 8]);
        v202 = *&v198[TupleTypeMetadata[24]];
        v203 = v324;
        v204 = v324[4];
        v205 = v280;
        v204(v280, v198, v196);
        v206 = &v198[v201];
        v207 = v307;
        v204(v307, v206, v196);
        v208 = v203[2];
        v209 = v276;
        v208(v276, v205, v196);
        v338 = v334;
        v339 = v200;
        v210 = v277;
        v208(v277, v207, v196);
        v211 = v202;
        v212 = v290;
        v213 = v266;
        sub_1CF72FD7C(v209, &v338, v210, v202, v290);
        if (v213)
        {

          v214 = v203[1];
          v214(v207, v196);
          v214(v205, v196);
          goto LABEL_30;
        }

        LOBYTE(v338) = 1;
        v254 = v268;
        swift_getWitnessTable();
        v255 = v337;
        v256 = v265;
        sub_1CF9E7F08();

        (*(v267 + 8))(v212, v254);
        v257 = v324[1];
        v257(v307, v196);
        v257(v205, v196);
        (*(v264 + 8))(v256, v255);
        return;
      case 2:
        v150 = v336;
        v151 = *v336;
        v152 = *(v336 + 1);
        v153 = v325;
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v155 = v324;
        v156 = v274;
        (v324[4])(v274, &v150[*(TupleTypeMetadata2 + 48)], v153);
        v338 = v151;
        v339 = v152;
        v157 = v155;
        v158 = v323;
        (v155[2])(v323, v156, v153);
        v159 = v284;
        sub_1CF730CB8(&v338, v158, v284);
        LOBYTE(v338) = 2;
        v160 = v288;
        swift_getWitnessTable();
        v161 = v337;
        v162 = v265;
        sub_1CF9E7F08();
        (*(v286 + 8))(v159, v160);
        (v157[1])(v156, v153);
        goto LABEL_38;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v163 = v325;
        v164 = v319;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v166 = *(TupleTypeMetadata3 + 48);
        v167 = *(TupleTypeMetadata3 + 64);
        v335 = v5;
        v168 = v336;
        v169 = *&v336[v167];
        v170 = v324;
        v171 = v306;
        (v324[4])(v306, v336, v163);
        v172 = v318;
        v173 = &v168[v166];
        v174 = v308;
        (*(v318 + 32))(v308, v173, v164);
        v175 = v273;
        (v170[2])(v273, v171, v163);
        v176 = v287;
        (*(v172 + 16))(v287, v174, v164);
        v177 = v169;
        v178 = v266;
        sub_1CF7318D0(v175, v176, v169, v309);
        if (v178)
        {

          (*(v172 + 8))(v174, v164);
          (v170[1])(v171, v163);
          goto LABEL_30;
        }

        LOBYTE(v338) = 4;
        v252 = v270;
        swift_getWitnessTable();
        v253 = v309;
        v161 = v337;
        v162 = v265;
        sub_1CF9E7F08();

        (*(v269 + 8))(v253, v252);
        (*(v318 + 8))(v308, v319);
        (v324[1])(v306, v325);
        goto LABEL_38;
      case 4:
        v129 = v319;
        v130 = v325;
        v131 = *(swift_getTupleTypeMetadata2() + 48);
        v132 = v318;
        v133 = v310;
        v134 = v336;
        (*(v318 + 32))(v310, v336, v129);
        v135 = &v134[v131];
        v136 = v324;
        v137 = v278;
        (v324[4])(v278, v135, v130);
        v138 = v285;
        (*(v132 + 16))(v285, v133, v129);
        v139 = v323;
        (v136[2])(v323, v137, v130);
        v140 = v292;
        sub_1CF7334A0(v138, v139, v292);
        LOBYTE(v338) = 8;
        v141 = v296;
        swift_getWitnessTable();
        v142 = v265;
        sub_1CF9E7F08();
        (*(v294 + 8))(v140, v141);
        (v136[1])(v137, v130);
        (*(v132 + 8))(v310, v129);
        (*(v264 + 8))(v142, v337);
        return;
      case 5:
        LOBYTE(v338) = *v336;
        v343 = 10;
        type metadata accessor for FileTreeError.DownloadCancelled();
        swift_getWitnessTable();
        v161 = v337;
        goto LABEL_37;
      case 6:
        v215 = v100;
        v216 = v324;
        v217 = v325;
        v218 = v99;
        (v324[4])(v99, v336, v325);
        v219 = v323;
        (v216[2])(v323, v218, v217);
        v220 = v291;
        sub_1CF7359A4(v219, v291);
        LOBYTE(v338) = 11;
        v221 = v293;
        swift_getWitnessTable();
        v222 = v337;
        v223 = v265;
        sub_1CF9E7F08();
        (*(v215 + 8))(v220, v221);
        (v216[1])(v218, v217);
        (*(v264 + 8))(v223, v222);
        return;
      case 7:
        v179 = v317;
        v180 = swift_getTupleTypeMetadata2();
        v335 = v5;
        v181 = *(v180 + 48);
        v182 = v322;
        v183 = *(v322 + 32);
        v184 = v312;
        v185 = v336;
        v183(v312, v336, v179);
        v186 = v314;
        v183(v314, &v185[v181], v179);
        v187 = v265;
        v188 = *(v182 + 16);
        v189 = v295;
        v188(v295, v184, v179);
        v190 = v297;
        v188(v297, v186, v179);
        v191 = v189;
        v192 = v299;
        sub_1CF734F30(v191, v190, v299);
        LOBYTE(v338) = 19;
        swift_getWitnessTable();
        v161 = v337;
        sub_1CF9E7F08();
        (*(v300 + 8))(v192, v102);
        v193 = *(v322 + 8);
        v193(v314, v179);
        v193(v312, v179);
        v194 = *(v264 + 8);
        v195 = v187;
        goto LABEL_39;
      case 8:
        v231 = *v336;
        v232 = *v336;
        v233 = v266;
        sub_1CF7347AC(v231);
        if (v233)
        {
          (*(v264 + 8))(v265, v337);
        }

        else
        {
          v338 = v234;
          v339 = v235;
          v343 = 17;
          type metadata accessor for FileTreeError.UploadCancelled();
          swift_getWitnessTable();
          v161 = v337;
          v162 = v265;
          sub_1CF9E7F08();

          sub_1CEFE48D8(v338, v339);
LABEL_38:
          v194 = *(v264 + 8);
          v195 = v162;
LABEL_39:
          v194(v195, v161);
        }

        break;
      case 9:
        v143 = v98;
        v145 = v324;
        v144 = v325;
        (v324[4])(v98, v336, v325);
        v146 = v323;
        (v145[2])(v323, v143, v144);
        v147 = v289;
        sub_1CF7359A4(v146, v289);
        LOBYTE(v338) = 24;
        swift_getWitnessTable();
        v148 = v337;
        v149 = v265;
        sub_1CF9E7F08();
        (*(v298 + 8))(v147, v101);
        (v145[1])(v143, v325);
        (*(v264 + 8))(v149, v148);
        return;
      case 10:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v224 = v325;
        v225 = *&v336[*(swift_getTupleTypeMetadata2() + 48)];
        v226 = v324;
        v227 = v279;
        (v324[4])(v279);
        v228 = v275;
        (v226[2])(v275, v227, v224);
        v229 = v225;
        v230 = v266;
        sub_1CF7365C8(v228, v225, v103);
        if (v230)
        {

          (v226[1])(v227, v224);
LABEL_30:
          (*(v264 + 8))(v265, v337);
        }

        else
        {
          LOBYTE(v338) = 26;
          v261 = v271;
          swift_getWitnessTable();
          v262 = v337;
          v263 = v265;
          sub_1CF9E7F08();

          (*(v272 + 8))(v103, v261);
          (v324[1])(v227, v325);
          (*(v264 + 8))(v263, v262);
        }

        return;
      case 11:
        v128 = 14;
        goto LABEL_15;
      case 12:
        LOBYTE(v338) = 6;
        type metadata accessor for FileTreeError.CapturedContentMissingStruct();
        goto LABEL_36;
      case 13:
        LOBYTE(v338) = 7;
        type metadata accessor for FileTreeError.ItemNotEvictableStruct();
        goto LABEL_36;
      case 14:
        LOBYTE(v338) = 9;
        type metadata accessor for FileTreeError.DirectoryChangedStruct();
        goto LABEL_36;
      case 15:
        v128 = 12;
LABEL_15:
        LOBYTE(v338) = v128;
        type metadata accessor for FileTreeError.ItemKindMismatchStruct();
        goto LABEL_36;
      case 16:
        LOBYTE(v338) = 15;
        type metadata accessor for FileTreeError.ItemIsFlockedStruct();
        goto LABEL_36;
      case 17:
        LOBYTE(v338) = 16;
        type metadata accessor for FileTreeError.ItemNeedDelayPropagationStruct();
        goto LABEL_36;
      case 18:
        LOBYTE(v338) = 18;
        type metadata accessor for FileTreeError.UploadInterrupted();
        goto LABEL_36;
      case 19:
        LOBYTE(v338) = 20;
        type metadata accessor for FileTreeError.MaxLookupDepthStruct();
        goto LABEL_36;
      case 20:
        LOBYTE(v338) = 21;
        type metadata accessor for FileTreeError.CompressedFileReadFailedStruct();
        goto LABEL_36;
      case 21:
        LOBYTE(v338) = 22;
        type metadata accessor for FileTreeError.SpeculativeDownloadRejectedStruct();
        goto LABEL_36;
      case 22:
        LOBYTE(v338) = 23;
        type metadata accessor for FileTreeError.ItemNotTracked();
        goto LABEL_36;
      case 23:
        LOBYTE(v338) = 25;
        type metadata accessor for FileTreeError.NoContentToFetch();
        goto LABEL_36;
      case 24:
        LOBYTE(v338) = 27;
        type metadata accessor for FileTreeError.ItemNotInTrash();
LABEL_36:
        swift_getWitnessTable();
        v161 = v337;
LABEL_37:
        v162 = v265;
        sub_1CF9E7F08();
        goto LABEL_38;
      default:
        v335 = v5;
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v264 - 48, " at originalError previousError ");
        v105 = v325;
        v106 = v315;
        v338 = v325;
        v339 = v315;
        v340 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v341 = v340;
        v107 = swift_getTupleTypeMetadata();
        v108 = v107[12];
        v109 = v336;
        v110 = *&v336[v107[16]];
        v333 = *&v336[v107[20]];
        v334 = v110;
        v111 = v324;
        v112 = v313;
        (v324[4])(v313, v336, v105);
        v113 = Description;
        v114 = &v109[v108];
        v115 = v321;
        (Description[4])(v321, v114, v106);
        (v111[2])(v311, v112, v105);
        v116 = v281;
        v336 = v113[2];
        (v336)(v281, v115, v106);
        v117 = v283;
        v118 = *(v283 - 8);
        IsDetachedRootStruct = *(v118 + 48);
        v119 = (IsDetachedRootStruct)(v116, 1, v283);
        v331 = v118;
        if (v119 == 1)
        {
          v120 = v113;
          v121 = v106;
          v122 = v116;
          v123 = v317;
          v124 = v322;
          v125 = 1;
          v126 = v106;
          v127 = v316;
        }

        else
        {
          v124 = v322;
          v126 = v106;
          v127 = v316;
          v236 = v116;
          v122 = v116;
          v123 = v317;
          (*(v322 + 16))(v316, v236, v317);
          v120 = v118;
          v125 = 0;
          v121 = v117;
        }

        (*(v120 + 8))(v122, v121);
        (*(v124 + 56))(v127, v125, 1, v123);
        v237 = v282;
        (v336)(v282, v321, v126);
        if ((IsDetachedRootStruct)(v237, 1, v117) == 1)
        {
          (Description[1])(v237, v126);
          v238 = v302;
          v239 = v302[-1].Description;
          v240 = 1;
          v241 = v266;
          v242 = v337;
          v243 = v325;
          v244 = found;
          v245 = v304;
          v246 = v303;
          v247 = v301;
        }

        else
        {
          v238 = v302;
          v239 = v302[-1].Description;
          v247 = v301;
          v239[2](v301, &v237[*(v117 + 56)], v302);
          (*(v331 + 8))(v237, v117);
          v240 = 0;
          v241 = v266;
          v242 = v337;
          v243 = v325;
          v244 = found;
          v245 = v304;
          v246 = v303;
        }

        (v239[7])(v247, v240, 1, v238);
        v248 = v334;
        v249 = v334;
        v250 = v333;
        v251 = v333;
        sub_1CF72EA70(v311, v316, v247, v248, v250, v246);
        if (v241)
        {

          (Description[1])(v321, v315);
          (v324[1])(v313, v243);
          (*(v264 + 8))(v265, v242);
        }

        else
        {
          LOBYTE(v338) = 0;
          swift_getWitnessTable();
          v258 = v265;
          sub_1CF9E7F08();
          v259 = v264;
          v260 = v321;

          (*(v245 + 8))(v246, v244);
          (Description[1])(v260, v315);
          (v324[1])(v313, v243);
          (*(v259 + 8))(v258, v242);
        }

        return;
    }
  }
}

uint64_t sub_1CF73D6A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF73D6DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CF73D738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1CF73D784()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF73D7C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

void sub_1CF73D86C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    if (v4 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      if (v5 <= 0x3F)
      {
        sub_1CF73E108();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1CF73D98C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  v7 = *(v6 + 84);
  v37 = swift_getAssociatedTypeWitness();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v40 = v7;
  v38 = v10;
  if (v10 > v7)
  {
    v7 = v10;
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0xB)
  {
    v15 = 11;
  }

  v16 = *(v8 + 64);
  if (!v9)
  {
    ++v16;
  }

  v17 = *(v8 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (!v13)
  {
    ++v19;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v17;
  v21 = v19 + 7;
  if (v15 < a2)
  {
    v22 = ((((v21 + ((v16 + v18 + (v20 & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v23 = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v15 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 < 2)
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v22);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v22);
        if (v26)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v22);
      if (v26)
      {
LABEL_32:
        v27 = v26 - 1;
        if (v23)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        return v15 + (v28 | v27) + 1;
      }
    }
  }

  if (v40 != v15)
  {
    v31 = (a1 + v20) & ~v17;
    if (v38 == v15)
    {
      if (v9 >= 2)
      {
        v32 = (*(v8 + 48))(v31, v9, v37);
LABEL_54:
        v35 = v32 - 1;
        v36 = v32 >= 2;
LABEL_55:
        if (v36)
        {
          return v35;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v33 = (v31 + v16 + v18) & ~v18;
      if (v14 != v15)
      {
        v34 = *(((v21 + v33) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
        v35 = ((v34 >> 2) & 0xFFFFFFF3 | (4 * (v34 & 3))) ^ 0xF;
        if (v35 >= 0xC)
        {
          v35 = -1;
        }

        v36 = v35 + 1 >= 2;
        goto LABEL_55;
      }

      if (v13 >= 2)
      {
        v32 = (*(v12 + 48))(v33);
        goto LABEL_54;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(a1, v40, v39);
}

void sub_1CF73DD28(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  v39 = swift_getAssociatedTypeWitness();
  v9 = *(v39 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v41 = v8;
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v7 + 64);
  v17 = v14 - 1;
  if (!v14)
  {
    v17 = 0;
  }

  if (v17 <= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 80);
  v20 = *(v13 + 80);
  if (v18 <= 0xB)
  {
    v21 = 11;
  }

  else
  {
    v21 = v18;
  }

  if (!v10)
  {
    ++v15;
  }

  v22 = v16 + v19;
  v23 = (v15 + v20 + ((v16 + v19) & ~v19)) & ~v20;
  if (v14)
  {
    v24 = *(v13 + 64);
  }

  else
  {
    v24 = *(v13 + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = ((((v25 + v23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v21 < a3)
  {
    if (((((v25 + v23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a3 - v21 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  v29 = a2;
  if (a2 > v21)
  {
    if (v26)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v21;
    }

    if (v26)
    {
      v31 = ~v21 + a2;
      bzero(a1, v26);
      *a1 = v31;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v26) = v30;
      }

      else
      {
        *(a1 + v26) = v30;
      }
    }

    else if (v12)
    {
      *(a1 + v26) = v30;
    }

    return;
  }

  v32 = a1;
  if (v12 <= 1)
  {
    if (v12)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if (v12 == 2)
  {
    *(a1 + v26) = 0;
    goto LABEL_48;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_49:
  if (v41 == v21)
  {
    v33 = v40;
    v34 = *(v7 + 56);
    v35 = v41;
LABEL_53:

    v34(v32, v29, v35, v33);
    return;
  }

  v32 = ((a1 + v22) & ~v19);
  if (v11 == v21)
  {
    v34 = *(v9 + 56);
    v29 = a2 + 1;
    v35 = v10;
    v33 = v39;
    goto LABEL_53;
  }

  v36 = (v32 + v15 + v20) & ~v20;
  if (v17 == v21)
  {
    v37 = *(v13 + 56);

    v37(v36, a2 + 1);
  }

  else
  {
    v38 = ((v25 + v36) & 0xFFFFFFFFFFFFFFF8);
    *v38 = 0;
    if (a2 > 0xB)
    {
      v38[1] = 0;
      *v38 = a2 - 12;
    }

    else
    {
      v38[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }
}

void sub_1CF73E108()
{
  if (!qword_1EDEAFE08)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAFE08);
    }
  }
}

void sub_1CF73E158(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_1CF73E108();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF73E200(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80))) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_1CF73E3A8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80))) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((v11 + 7 + ((((v11 + 7) & 0xFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80))) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          v21[1] = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((v11 + 7 + ((((v11 + 7) & 0xFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80))) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((v11 + 7 + ((((v11 + 7) & 0xFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80))) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t sub_1CF73E5AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF73E63C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_26;
  }

  v14 = ((v12 + 16) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 < 2)
    {
LABEL_26:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = *(v9 + 48);

        return v21((a1 + v12 + 16) & ~v12);
      }

      else
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_26;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_1CF73E810(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 16) & ~v11) + *(v9 + 64);
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v12 < a2)
  {
    v15 = ~v12 + a2;
    if (v13 < 4)
    {
      v16 = (v15 >> (8 * v13)) + 1;
      if (v13)
      {
        v19 = v15 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_46:
              if (v14 == 2)
              {
                *(a1 + v13) = v16;
              }

              else
              {
                *(a1 + v13) = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        *(a1 + 2) = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v14)
    {
      *(a1 + v13) = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v13) = 0;
  }

  else if (v14)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v10 & 0x80000000) != 0)
  {
    v20 = *(v9 + 56);

    v20((a1 + v11 + 16) & ~v11, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

void sub_1CF73EA84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_1CF73E108();
    if (v4 <= 0x3F)
    {
      sub_1CF9E75D8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CF73EB3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xB)
  {
    v12 = 11;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v10)
  {
    v13 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_29;
  }

  v14 = v13 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80));
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      if (v10 < 0xB)
      {
        v21 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
        v22 = ((v21 >> 2) & 0xFFFFFFF3 | (4 * (v21 & 3))) ^ 0xF;
        if (v22 >= 0xC)
        {
          v22 = -1;
        }

        if (v22 + 1 >= 2)
        {
          return v22;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v20 = *(v9 + 48);

        return v20(a1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v12 + (v14 | v19) + 1;
}

void sub_1CF73ED3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xB)
  {
    v12 = 11;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v10)
  {
    v13 = *(v9 + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = v13 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80));
  if (a3 <= v12)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12 < a2)
  {
    v16 = ~v12 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_49:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 < 0xB)
  {
    v22 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v22 = 0;
    if (a2 > 0xB)
    {
      v22[1] = 0;
      *v22 = a2 - 12;
    }

    else
    {
      v22[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  else
  {
    v21 = *(v9 + 56);

    v21(a1, a2);
  }
}

uint64_t sub_1CF73EFDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF73F0CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  v34 = swift_getAssociatedTypeWitness();
  v9 = *(v34 - 8);
  v35 = *(v9 + 84);
  if (v35 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v7 + 64) + v12;
  v17 = v13 + v12;
  v18 = v13 + v14;
  v19 = a1;
  if (a2 > v15)
  {
    v20 = ((*(v11 + 64) + v14 + ((v18 + ((v17 + (v16 & ~v12)) & ~v12)) & ~v14)) & ~v14) + *(v11 + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v15)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = v20;
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v15 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v15)
  {
    v27 = v36;
    v28 = *(v7 + 48);
    v29 = v8;
LABEL_36:

    return v28(v19, v29, v27);
  }

  v31 = ~v12;
  v19 = ((a1 + v16) & v31);
  if (v35 == v15)
  {
    v28 = *(v9 + 48);
    v29 = v35;
    v27 = v34;
    goto LABEL_36;
  }

  v32 = *(v11 + 48);
  v33 = (v18 + ((v19 + v17) & v31)) & ~v14;

  return v32(v33);
}

void sub_1CF73F454(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v36 = v6;
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v6 + 64);
  if (*(v11 + 84) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v8 + 80);
  v16 = v13 + v15;
  v17 = (v13 + v15) & ~v15;
  v18 = *(v8 + 64);
  v19 = v18 + v15;
  v20 = (v18 + v15 + v17) & ~v15;
  v21 = *(v11 + 80);
  v22 = v18 + v21;
  v23 = ((*(v11 + 64) + v21 + ((v18 + v21 + v20) & ~v21)) & ~v21) + *(v11 + 64);
  if (a3 <= v14)
  {
    v26 = 0;
    v24 = a1;
    v25 = a2;
  }

  else
  {
    v24 = a1;
    v25 = a2;
    if (v23 <= 3)
    {
      v29 = ((a3 - v14 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v14 < v25)
  {
    v27 = ~v14 + v25;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v31 = v27 & ~(-1 << (8 * v23));
        bzero(v24, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *v24 = v31;
            if (v26 > 1)
            {
LABEL_52:
              if (v26 == 2)
              {
                *&v24[v23] = v28;
              }

              else
              {
                *&v24[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *v24 = v27;
            if (v26 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v24 = v31;
        v24[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v24, v23);
      *v24 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v26)
    {
      v24[v23] = v28;
    }

    return;
  }

  if (v26 <= 1)
  {
    if (v26)
    {
      v24[v23] = 0;
      if (!v25)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v25)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v26 == 2)
  {
    *&v24[v23] = 0;
    goto LABEL_33;
  }

  *&v24[v23] = 0;
  if (!v25)
  {
    return;
  }

LABEL_34:
  if (v7 == v14)
  {
    v32 = *(v36 + 56);
    v33 = v24;
LABEL_38:

    v32(v33);
    return;
  }

  v33 = (&v24[v16] & ~v15);
  if (v9 == v14)
  {
    v32 = *(v8 + 56);
    goto LABEL_38;
  }

  v34 = *(v12 + 56);
  v35 = (v22 + (&v33[v19] & ~v15)) & ~v21;

  v34(v35);
}

uint64_t sub_1CF73F858(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  result = sub_1CF9E75D8();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF73F910(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = v9 - 1;
  if (!v9)
  {
    v11 = 0;
  }

  v12 = *(v8 + 80);
  v13 = v10 + v12;
  if (v9)
  {
    v14 = v10 + v12;
  }

  else
  {
    v14 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_30;
  }

  v15 = (v14 & ~v12) + v10;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v9 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 < 2)
    {
LABEL_29:
      if (v9)
      {
LABEL_30:
        if (v11 == v9)
        {
          v22 = (*(v8 + 48))(a1);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v24 = *(v8 + 48);

          return v24((a1 + v13) & ~v12);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_29;
  }

LABEL_16:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v9 + (v21 | v19) + 1;
}

void sub_1CF73FB00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = v12 + v14;
  if (v11)
  {
    v16 = v12 + v14;
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = (v16 & ~v14) + v12;
  if (a3 <= v11)
  {
    goto LABEL_17;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v11 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_17:
    if (v11 >= a2)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (v11 >= a2)
  {
LABEL_27:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v17] = 0;
    }

    else if (v9)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      return;
    }

LABEL_34:
    v23 = *(v10 + 56);
    if (v13 == v11)
    {
      v24 = (a2 + 1);
      v25 = a1;
    }

    else
    {
      v25 = (&a1[v15] & ~v14);
      v24 = a2;
    }

    v23(v25, v24);
    return;
  }

LABEL_18:
  v20 = ~v11 + a2;
  if (v17 >= 4)
  {
    bzero(a1, v17);
    *a1 = v20;
    v21 = 1;
    if (v9 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_43:
    if (v9 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_43;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_47:
      if (v9 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v9 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v9)
  {
    a1[v17] = v21;
  }
}

uint64_t sub_1CF73FD74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF73FDF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
LABEL_23:
    v16 = *(v9 + 48);

    return v16(a1);
  }

  v11 = ((*(*(AssociatedTypeWitness - 8) + 64) + *(v9 + 80)) & ~*(v9 + 80)) + *(*(AssociatedTypeWitness - 8) + 64);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((a2 - v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v10)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_11:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v10 + (v11 | v15) + 1;
}

void sub_1CF73FF98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = ((*(v9 + 64) + *(v9 + 80)) & ~*(v9 + 80)) + *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t sub_1CF7401D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF740254(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1CF7403E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

void sub_1CF740614(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_1CF73E108();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF7406AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xB)
  {
    v11 = 11;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0xB)
    {
      v22 = *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      v23 = ((v22 >> 2) & 0xFFFFFFF3 | (4 * (v22 & 3))) ^ 0xF;
      if (v23 >= 0xC)
      {
        v23 = -1;
      }

      if (v23 + 1 >= 2)
      {
        return v23;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_1CF74084C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xB)
  {
    v12 = 11;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0xB)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = 0;
    if (a2 > 0xB)
    {
      v21[1] = 0;
      *v21 = a2 - 12;
    }

    else
    {
      v21[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t sub_1CF740BE0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(255);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  return (*(v6 + 8))(v9, v5);
}

FileProviderDaemon::EvictionReasons __swiftcall EvictionReasons.init(onDiskValue:)(Swift::UInt32 onDiskValue)
{
  if (onDiskValue >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = onDiskValue;
  }

  *v1 = v2;
  return onDiskValue;
}

FileProviderDaemon::EvictionReasons __swiftcall EvictionReasons.init(stringName:)(Swift::String stringName)
{
  object = stringName._object;
  v3 = v1;
  v4 = stringName._countAndFlagsBits == 0x6E776F6E6B6E75 && stringName._object == 0xE700000000000000;
  if (v4 || (countAndFlagsBits = stringName._countAndFlagsBits, (sub_1CF9E8048() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6C65446568636163 && object == 0xEB00000000657465 || (sub_1CF9E8048() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1919251317 && object == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x697461646E756F66 && object == 0xEA00000000006E6FLL || (sub_1CF9E8048() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 28774 && object == 0xE200000000000000 || (sub_1CF9E8048() & 1) != 0 || countAndFlagsBits == 0x766F7270656C6966 && object == 0xEC00000072656469 || (sub_1CF9E8048() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x705565746F6D6572 && object == 0xEC00000065746164 || (sub_1CF9E8048() & 1) != 0 || countAndFlagsBits == 30066 && object == 0xE200000000000000)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_1CF9E8048();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t EvictionReasons.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x697461646E756F66;
  v4 = 28774;
  if (v1 != 4)
  {
    v4 = 0x705565746F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65446568636163;
  if (v1 != 1)
  {
    v5 = 1919251317;
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

FileProviderDaemon::EvictionReasons_optional __swiftcall EvictionReasons.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1CF7419B0()
{
  result = qword_1EC4C4558;
  if (!qword_1EC4C4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4558);
  }

  return result;
}

uint64_t sub_1CF741A0C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x697461646E756F66;
  v4 = 28774;
  if (v1 != 4)
  {
    v4 = 0x705565746F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65446568636163;
  if (v1 != 1)
  {
    v5 = 1919251317;
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

unint64_t sub_1CF741B88()
{
  result = qword_1EC4C4560;
  if (!qword_1EC4C4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4560);
  }

  return result;
}

id static ConcreteFPDPurger.shared()()
{
  if (qword_1EDEA70C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEA70D0;

  return v1;
}

void ConcreteFPDPurger.purgeAsync(at:)(uint64_t a1)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v6 = fpfs_current_log();
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = v1;
  sub_1CF01001C(v6, "purgeAsync(at:)", 15, 2, sub_1CF7433C0, v8);
}

void sub_1CF741DE8(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  v13 = a1;
  if (!a1)
  {
    v13 = fpfs_current_log();
  }

  v14 = a1;
  v31 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v34 = v15;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v16 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v16);

  sub_1CF9E6978();

  v17 = __fp_log_fork();

  v30[2] = v30;
  v40 = v17;
  v41 = 0;
  MEMORY[0x1EEE9AC00](v18);
  v26[2] = v13;
  v26[3] = &v40;
  v26[4] = v7;
  v26[5] = a2;
  v26[6] = a3;
  v27 = a4;
  v28 = a5;
  v29 = v32;
  v42 = 1;
  v39 = 0;
  v19 = swift_allocObject();
  v19[2] = &v42;
  v19[3] = sub_1CF2BA13C;
  v19[4] = v26;
  v19[5] = &v39;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF2BA170;
  *(v20 + 24) = v19;
  v37 = sub_1CF485970;
  v38 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CEFFD02C;
  v36 = &block_descriptor_40_1;
  v21 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v7, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v39)
  {
    swift_willThrow();

    v22 = v31;
    v23 = fpfs_adopt_log();

    return;
  }

  if (v42)
  {
    goto LABEL_10;
  }

  v24 = v31;
  v25 = fpfs_adopt_log();
}

void *sub_1CF7420F0(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = 0;
  return result;
}

uint64_t sub_1CF74216C(uint64_t *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v6);
  v3 = *a1;
  v4 = a1[1];
  *a1 = v6;

  return sub_1CEFF7124(v3);
}

void *sub_1CF742200(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1CF742280(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v11 - v7;
  a2(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return sub_1CF74477C(v8, a1);
}

void *sub_1CF74238C(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1CF742440(uint64_t *a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  a2(&v9);
  v6 = *a1;
  *a1 = v9;

  return a5(v6);
}

void sub_1CF7424E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr))
{
  v17[2] = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log();
  if ((a2[1] & 1) == 0)
  {
    v16 = *a2;
    sub_1CF9E73C8();
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v11 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v11);

    sub_1CF9E6978();

    __fp_log_adopt();
  }

  a7(v17);
  if (v7)
  {
    if ((a2[1] & 1) == 0)
    {
      v14 = *a2;
      __fp_leave_section_Debug();
    }
  }

  else if ((a2[1] & 1) == 0)
  {
    v15 = *a2;
    __fp_leave_section_Debug();
  }

  v12 = fpfs_adopt_log();

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF742688(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *__return_ptr))
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log();
  if ((a2[1] & 1) == 0)
  {
    v19 = *a2;
    sub_1CF9E73C8();
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v11 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v11);

    sub_1CF9E6978();

    __fp_log_adopt();
  }

  a7(&v20);
  if (v7)
  {
    if ((a2[1] & 1) == 0)
    {
      v17 = *a2;
      __fp_leave_section_Debug();
    }

    v12 = fpfs_adopt_log();
  }

  else
  {
    if ((a2[1] & 1) == 0)
    {
      v18 = *a2;
      __fp_leave_section_Debug();
    }

    v14 = fpfs_adopt_log();

    v13 = v20;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void sub_1CF742834(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log();
  if ((a2[1] & 1) == 0)
  {
    v16 = *a2;
    sub_1CF9E73C8();
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v11 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v11);

    sub_1CF9E6978();

    __fp_log_adopt();
  }

  a7(v17);
  if (v7)
  {
    if ((a2[1] & 1) == 0)
    {
      v14 = *a2;
      __fp_leave_section_Debug();
    }
  }

  else if ((a2[1] & 1) == 0)
  {
    v15 = *a2;
    __fp_leave_section_Debug();
  }

  v12 = fpfs_adopt_log();

  v13 = *MEMORY[0x1E69E9840];
}

void ConcreteFPDPurger.purgeAndWait(at:)(uint64_t a1)
{
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEA70E8;
  v4 = fpfs_current_log();
  MEMORY[0x1EEE9AC00](v4);
  v21[2] = v1;
  v21[3] = a1;
  v6 = v5;
  if (!v5)
  {
    v6 = fpfs_current_log();
  }

  v22 = v4;
  v23 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v25 = v7;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v8 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v8);

  sub_1CF9E6978();

  v9 = __fp_log_fork();

  v32 = v9;
  v33 = 0;
  MEMORY[0x1EEE9AC00](v10);
  v17[2] = v6;
  v17[3] = &v32;
  v17[4] = v3;
  v17[5] = "purgeAndWait(at:)";
  v17[6] = 17;
  v18 = 2;
  v19 = sub_1CF7445D0;
  v20 = v21;
  v31 = 1;
  v30 = 0;
  v11 = swift_allocObject();
  v11[2] = &v31;
  v11[3] = sub_1CF2B1698;
  v11[4] = v17;
  v11[5] = &v30;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF2B16B0;
  *(v12 + 24) = v11;
  v28 = sub_1CEFFD05C;
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1CEFFD02C;
  v27 = &block_descriptor_38;
  v13 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v3, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v30)
  {
    if ((v31 & 1) == 0)
    {

      v14 = v23;
      v15 = fpfs_adopt_log();

      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  swift_willThrow();

  v16 = fpfs_adopt_log();
  __break(1u);
}

id ConcreteFPDPurger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcreteFPDPurger.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConcreteFPDPurger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CF742E1C()
{
  result = [objc_allocWithZone(type metadata accessor for ConcreteFPDPurger()) init];
  qword_1EDEA70D0 = result;
  return result;
}

uint64_t sub_1CF742E4C()
{
  v0 = sub_1CF9E7388();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v23 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E7318();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  v11 = sub_1CF9E6448();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  v19 = sub_1CF701F40();
  v22[0] = &unk_1CFA164A0;
  v22[1] = v19;
  sub_1CF9E63E8();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CF00BD28(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  (*(v12 + 16))(v16, v18, v11);
  (*(v4 + 16))(v8, v10, v3);
  (*(v24 + 104))(v23, *MEMORY[0x1E69E8098], v25);
  v20 = sub_1CF9E73B8();
  (*(v4 + 8))(v10, v3);
  result = (*(v12 + 8))(v18, v11);
  qword_1EDEA70E8 = v20;
  return result;
}

void ConcreteFPDPurger.barrier(completionHandler:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDEA70E8;
  v5 = fpfs_current_log();
  MEMORY[0x1EEE9AC00](v5);
  v22[2] = a1;
  v22[3] = a2;
  v7 = v6;
  if (!v6)
  {
    v7 = fpfs_current_log();
  }

  v23 = v5;
  v24 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v26 = v8;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v9 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v9);

  sub_1CF9E6978();

  v10 = __fp_log_fork();

  v33 = v10;
  v34 = 0;
  MEMORY[0x1EEE9AC00](v11);
  v18[2] = v7;
  v18[3] = &v33;
  v18[4] = v4;
  v18[5] = "barrier(completionHandler:)";
  v18[6] = 27;
  v19 = 2;
  v20 = sub_1CF7445FC;
  v21 = v22;
  v32 = 1;
  v31 = 0;
  v12 = swift_allocObject();
  v12[2] = &v32;
  v12[3] = sub_1CF2BA13C;
  v12[4] = v18;
  v12[5] = &v31;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF2BA170;
  *(v13 + 24) = v12;
  v29 = sub_1CF485970;
  v30 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1CEFFD02C;
  v28 = &block_descriptor_18_0;
  v14 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v4, v14);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v31)
  {
    if ((v32 & 1) == 0)
    {

      v15 = v24;
      v16 = fpfs_adopt_log();

      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  swift_willThrow();

  v17 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF743A30@<X0>(int *a1@<X8>)
{
  sub_1CF9E5A18();
  v2 = sub_1CF9E6978();

  v3 = sub_1CF9E6978();
  v4 = removexattr((v2 + 32), (v3 + 32), 0);

  *a1 = v4;
  return result;
}

uint64_t sub_1CF743ACC@<X0>(int *a1@<X8>)
{
  sub_1CF9E5A18();
  v2 = sub_1CF9E6978();

  v3 = sub_1CF9E6978();
  v4 = removexattr((v2 + 32), (v3 + 32), 0);

  *a1 = v4;
  return result;
}

uint64_t sub_1CF743B68@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  sub_1CF9E6978();

  v2 = fpfs_clear_file_acl();

  *a1 = v2;
  return result;
}

uint64_t _s18FileProviderDaemon17ConcreteFPDPurgerC31prepareDomainForSyncRootRemoval3urly10Foundation3URLV_tF_0(uint64_t a1)
{
  v20 = sub_1CF9E5A58();
  v2 = *(*(v20 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v20);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1CF9E6118();
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v21 = a1;
  v15 = sub_1CEFE1894(sub_1CF7457B0);
  v18[8] = v7;
  v18[7] = v11;
  v18[9] = v14;
  v18[6] = v6;
  MEMORY[0x1EEE9AC00](v15);
  v18[-2] = a1;
  v16 = sub_1CEFE1894(sub_1CF7457CC);
  MEMORY[0x1EEE9AC00](v16);
  v18[-2] = a1;
  return sub_1CEFE1894(sub_1CF7457E8);
}

uint64_t sub_1CF7445FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm_7()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF74471C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CF74480C(v2);
}

uint64_t sub_1CF74477C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7447EC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1CF7447FC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1CF74480C(uint64_t a1)
{
  v153 = a1;
  v171 = *MEMORY[0x1E69E9840];
  v147 = sub_1CF9E53C8();
  v1 = *(v147 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v166 = (&v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v151 = &v140 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v140 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v156 = &v140 - v14;
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v142 = &v140 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v141 = &v140 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v159 = &v140 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v163 = &v140 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v140 - v29;
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E7288();
  v34 = os_log_type_enabled(v32, v33);
  v160 = v13;
  if (v34)
  {
    v35 = v4;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "Started purging...", v36, 2u);
    v37 = v36;
    v4 = v35;
    v13 = v160;
    MEMORY[0x1D386CDC0](v37, -1, -1);
  }

  v161 = *(v16 + 8);
  v162 = v16 + 8;
  v161(v30, v15);
  v38 = [objc_opt_self() defaultManager];
  v39 = v153;
  sub_1CF9E5A18();
  v40 = sub_1CF9E6888();

  v169 = 0;
  v41 = [v38 contentsOfDirectoryAtPath:v40 error:&v169];

  v42 = v169;
  if (!v41)
  {
    v111 = v169;
    v112 = sub_1CF9E57F8();

    swift_willThrow();
    v113 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v114 = v166;
    (*(v5 + 16))(v166, v39, v4);
    v115 = sub_1CF9E6108();
    v116 = sub_1CF9E72A8();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v169 = v165;
      *v117 = 136446210;
      v118 = sub_1CF9E5928();
      v119 = v4;
      v120 = [v118 fp_shortDescription];

      v121 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v164 = v15;
      v123 = v122;

      (*(v5 + 8))(v114, v119);
      v124 = sub_1CEFD0DF0(v121, v123, &v169);

      *(v117 + 4) = v124;
      _os_log_impl(&dword_1CEFC7000, v115, v116, "Failed to get contents for URL %{public}s", v117, 0xCu);
      v125 = v165;
      __swift_destroy_boxed_opaque_existential_1(v165);
      MEMORY[0x1D386CDC0](v125, -1, -1);
      MEMORY[0x1D386CDC0](v117, -1, -1);

      v110 = v20;
      v126 = v164;
LABEL_32:
      result = (v161)(v110, v126);
      v128 = *MEMORY[0x1E69E9840];
      return result;
    }

    (*(v5 + 8))(v114, v4);
    v110 = v20;
LABEL_31:
    v126 = v15;
    goto LABEL_32;
  }

  v43 = sub_1CF9E6D48();
  v44 = v42;

  v46 = v43;
  v47 = v156;
  v155 = *(v43 + 16);
  if (!v155)
  {
LABEL_24:
    v103 = fpfs_current_or_default_log();
    v104 = v142;
    sub_1CF9E6128();

    v105 = v46;
    v106 = sub_1CF9E6108();
    v107 = sub_1CF9E7288();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 134217984;
      v109 = *(v105 + 16);

      *(v108 + 4) = v109;

      _os_log_impl(&dword_1CEFC7000, v106, v107, "Finished purging %ld files.", v108, 0xCu);
      MEMORY[0x1D386CDC0](v108, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v110 = v104;
    goto LABEL_31;
  }

  v158 = (v5 + 16);
  v166 = (v5 + 8);
  v150 = 9939394;
  v145 = (v1 + 8);
  v48 = 0;
  v49 = (v43 + 40);
  *&v45 = 136446210;
  v152 = v45;
  *&v45 = 136315394;
  v144 = v45;
  v154 = v43;
  v143 = v4;
  while (1)
  {
    if (v48 >= *(v46 + 16))
    {
      __break(1u);
    }

    v52 = *(v49 - 1);
    v51 = *v49;

    sub_1CF9E5968();

    v53 = fpfs_current_or_default_log();
    v54 = v163;
    sub_1CF9E6128();
    v157 = *v158;
    v157(v13, v47, v4);
    v55 = sub_1CF9E6108();
    v56 = sub_1CF9E7288();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v164 = v48;
      v58 = v57;
      v59 = swift_slowAlloc();
      v169 = v59;
      *v58 = v152;
      v60 = sub_1CF9E5928();
      v61 = v15;
      v62 = v4;
      v63 = [v60 fp_shortDescription];

      v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v66 = v65;

      v4 = v62;
      v15 = v61;
      v165 = *v166;
      (v165)(v160, v4);
      v67 = sub_1CEFD0DF0(v64, v66, &v169);
      v13 = v160;

      *(v58 + 4) = v67;
      _os_log_impl(&dword_1CEFC7000, v55, v56, "Purging: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1D386CDC0](v59, -1, -1);
      v68 = v58;
      v48 = v164;
      MEMORY[0x1D386CDC0](v68, -1, -1);

      v69 = v163;
      v70 = v61;
    }

    else
    {

      v165 = *v166;
      (v165)(v13, v4);
      v69 = v54;
      v70 = v15;
    }

    v161(v69, v70);
    v47 = v156;
    sub_1CF9E5A18();
    v71 = sub_1CF9E6978();

    v72 = removefile((v71 + 32), 0, 0x101u);

    if (v72 < 0)
    {
      break;
    }

    v50 = v165;
LABEL_7:
    ++v48;
    (v50)(v47, v4);
    v49 += 2;
    v46 = v154;
    if (v155 == v48)
    {
      goto LABEL_24;
    }
  }

  if (MEMORY[0x1D38683F0](v73))
  {
    v74 = MEMORY[0x1D38683F0]();
    v164 = v48;
    if (v74 == v150)
    {
      v75 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v76 = sub_1CF9E6138();
      if ((v76 & 0x100000000) != 0)
      {
        LODWORD(v169) = 22;
      }

      else
      {
        LODWORD(v169) = v76;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BD28(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v77 = v146;
      v78 = v147;
      sub_1CF9E57D8();
      v75 = sub_1CF9E53A8();
      (*v145)(v77, v78);
    }

    swift_willThrow();
    v79 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v80 = v151;
    v157(v151, v47, v4);
    v81 = v75;
    v82 = sub_1CF9E6108();
    v83 = v4;
    v84 = sub_1CF9E72A8();

    if (os_log_type_enabled(v82, v84))
    {
      v85 = v80;
      v86 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v169 = v157;
      *v86 = v144;
      v148 = v84;
      v87 = v83;
      v88 = sub_1CF9E5928();
      v89 = [v88 fp_shortDescription];

      v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v91 = v15;
      v93 = v92;

      v94 = v85;
      v47 = v156;
      v95 = v87;
      v96 = v165;
      (v165)(v94, v95);
      v97 = sub_1CEFD0DF0(v90, v93, &v169);
      v15 = v91;

      *(v86 + 4) = v97;
      *(v86 + 12) = 2112;
      swift_getErrorValue();
      v98 = Error.prettyDescription.getter(v168);
      *(v86 + 14) = v98;
      v99 = v149;
      *v149 = v98;
      _os_log_impl(&dword_1CEFC7000, v82, v148, "Failed to unlink URL %s, error: %@", v86, 0x16u);
      sub_1CF19CAB0(v99);
      MEMORY[0x1D386CDC0](v99, -1, -1);
      v100 = v157;
      __swift_destroy_boxed_opaque_existential_1(v157);
      MEMORY[0x1D386CDC0](v100, -1, -1);
      v101 = v86;
      v50 = v96;
      MEMORY[0x1D386CDC0](v101, -1, -1);

      v161(v159, v91);
      v4 = v143;
    }

    else
    {

      v102 = v80;
      v50 = v165;
      (v165)(v102, v83);
      v161(v159, v15);
      v4 = v83;
    }

    v13 = v160;
    v48 = v164;
    goto LABEL_7;
  }

  v169 = 0;
  v170 = 0xE000000000000000;
  sub_1CF9E7948();

  v169 = 0xD00000000000001ALL;
  v170 = 0x80000001CFA2DF30;
  v167 = v72;
  v129 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v129);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v130 = v169;
  v131 = v170;
  v132 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v133 = sub_1CF9E6108();
  v134 = sub_1CF9E72B8();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v169 = v136;
    *v135 = 136315650;
    v137 = sub_1CF9E7988();
    v139 = sub_1CEFD0DF0(v137, v138, &v169);

    *(v135 + 4) = v139;
    *(v135 + 12) = 2048;
    *(v135 + 14) = 315;
    *(v135 + 22) = 2080;
    *(v135 + 24) = sub_1CEFD0DF0(v130, v131, &v169);
    _os_log_impl(&dword_1CEFC7000, v133, v134, "[ASSERT] ‼️  %s:%lu: %s", v135, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v136, -1, -1);
    MEMORY[0x1D386CDC0](v135, -1, -1);
  }

  v161(v141, v15);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF745840(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr))
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1CF0A749C(a1, a2, a3, a4, a5, a6, a7);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t type metadata accessor for FPFSPendingSetAnchor()
{
  result = qword_1EC4C45D0;
  if (!qword_1EC4C45D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF745900()
{
  result = sub_1CF9E5D98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF745988(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45E0, &qword_1CFA16578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7460A4();
  sub_1CF9E82A8();
  v17 = 0;
  sub_1CF9E5D98();
  sub_1CF342AD0(&qword_1EDEAECC8);
  sub_1CF9E7F08();
  if (!v2)
  {
    v11 = type metadata accessor for FPFSPendingSetAnchor();
    v16 = *(v3 + v11[5]);
    v15[15] = 1;
    sub_1CF1C5234();
    sub_1CF9E7F08();
    v12 = *(v3 + v11[6]);
    v15[14] = 2;
    sub_1CF9E7EE8();
    v13 = *(v3 + v11[7]);
    v15[13] = 3;
    sub_1CF9E7EC8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF745BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1CF9E5D98();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45F0, &qword_1CFA16580);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FPFSPendingSetAnchor();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7460A4();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v28;
  v36 = 0;
  sub_1CF342AD0(&qword_1EDEAECB8);
  v18 = v30;
  sub_1CF9E7D88();
  v19 = v4;
  v20 = *(v17 + 32);
  v21 = v16;
  v22 = v31;
  v31 = v19;
  v20(v16, v22, v19);
  v35 = 1;
  sub_1CF1C51E0();
  sub_1CF9E7D88();
  *&v16[v11[5]] = v32;
  v34 = 2;
  v23 = sub_1CF9E7D78();
  v24 = v29;
  *(v21 + v11[6]) = v23;
  v33 = 3;
  v25 = sub_1CF9E7D58();
  (*(v24 + 8))(v10, v18);
  *(v21 + v11[7]) = v25 & 1;
  sub_1CF7460F8(v21, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF74615C(v21);
}

unint64_t sub_1CF745F4C()
{
  v1 = 0x53676E69646E6570;
  v2 = 0x74657366666FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1CF745FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF7462D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF745FFC(uint64_t a1)
{
  v2 = sub_1CF7460A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF746038(uint64_t a1)
{
  v2 = sub_1CF7460A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF7460A4()
{
  result = qword_1EC4C45E8;
  if (!qword_1EC4C45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C45E8);
  }

  return result;
}

uint64_t sub_1CF7460F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFSPendingSetAnchor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF74615C(uint64_t a1)
{
  v2 = type metadata accessor for FPFSPendingSetAnchor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CF7461CC()
{
  result = qword_1EC4C45F8;
  if (!qword_1EC4C45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C45F8);
  }

  return result;
}

unint64_t sub_1CF746224()
{
  result = qword_1EC4C4600;
  if (!qword_1EC4C4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4600);
  }

  return result;
}

unint64_t sub_1CF74627C()
{
  result = qword_1EC4C4608;
  if (!qword_1EC4C4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4608);
  }

  return result;
}

uint64_t sub_1CF7462D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E69646E6570 && a2 == 0xEE00444955557465;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFA59C50 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFA59C70 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF746444()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FPCKWharfResource()
{
  result = qword_1EDEA6F20;
  if (!qword_1EDEA6F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF746510(_BYTE *a1)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(v1 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v9 = *(swift_dynamicCastClassUnconditional() + 136);
  type metadata accessor for FPCKWharfResource();
  inited = swift_initStackObject();
  v28[3] = type metadata accessor for DocumentWharf();
  v28[4] = &off_1F4C2E638;
  v28[0] = v9;
  *(inited + 72) = 0;
  sub_1CF1A91AC(v28, inited + 16);
  v11 = objc_allocWithZone(type metadata accessor for FPCKReport());

  v12 = [v11 init];
  __swift_destroy_boxed_opaque_existential_1(v28);
  *(inited + 80) = v12;
  *(inited + 56) = 1801678950;
  *(inited + 64) = 0xE400000000000000;

  sub_1CF7F3FC8();
  swift_beginAccess();
  v13 = *(inited + 80);
  sub_1CF4DF514(a1);
  *(inited + 80) = v13;
  *(inited + 72) = 1;

  sub_1CF7F2C08();
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = a1;
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7288();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v3;
    v20 = v19;
    v27 = v19;
    *v18 = 136315138;
    v26 = v15[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
    v21 = FPCKPhase.description.getter();
    v23 = sub_1CEFD0DF0(v21, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "🧹 Successfully saved telemetry report update for phase %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);

    return (*(v4 + 8))(v7, v25);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1CF746824(void *a1)
{
  v3 = *(*(*(v1 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v4 = *(swift_dynamicCastClassUnconditional() + 136);
  type metadata accessor for FPCKWharfResource();
  inited = swift_initStackObject();
  v16[3] = type metadata accessor for DocumentWharf();
  v16[4] = &off_1F4C2E638;
  v16[0] = v4;
  *(inited + 72) = 0;
  sub_1CF1A91AC(v16, inited + 16);
  v6 = objc_allocWithZone(type metadata accessor for FPCKReport());

  v7 = [v6 init];
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(inited + 80) = v7;
  *(inited + 56) = 1801678950;
  *(inited + 64) = 0xE400000000000000;

  sub_1CF7F3FC8();
  swift_beginAccess();
  v8 = *(inited + 80);
  v9 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v10 = *&v8[v9];
  v11 = *&v10[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error];
  *&v10[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = a1;
  v12 = v8;
  v13 = v10;
  v14 = a1;

  *(inited + 80) = v12;
  *(inited + 72) = 1;

  sub_1CF7F2C08();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  v15 = *(inited + 64);
}

uint64_t sub_1CF7469D8()
{
  v1 = *(*(*(v0 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v2 = *(swift_dynamicCastClassUnconditional() + 136);
  type metadata accessor for FPCKWharfResource();
  inited = swift_initStackObject();
  v10[3] = type metadata accessor for DocumentWharf();
  v10[4] = &off_1F4C2E638;
  v10[0] = v2;
  *(inited + 72) = 0;
  sub_1CF1A91AC(v10, inited + 16);
  v4 = objc_allocWithZone(type metadata accessor for FPCKReport());

  v5 = [v4 init];
  __swift_destroy_boxed_opaque_existential_1(v10);
  *(inited + 80) = v5;
  *(inited + 56) = 1801678950;
  *(inited + 64) = 0xE400000000000000;

  sub_1CF7F3FC8();
  swift_beginAccess();
  v6 = *(inited + 80);

  v7 = sub_1CF4DFA80();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  v8 = *(inited + 64);

  return v7;
}

BOOL sub_1CF746CA0()
{
  result = sub_1CF746CC4();
  byte_1EDEBB9E8 = result;
  return result;
}

BOOL sub_1CF746CC4()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v7 = domain_answer == sub_1CF9E61A8() && v14[0] == 4;
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E7288();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "🧲 Device eligible for embeddings: %{BOOL}d", v11, 8u);
    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

id sub_1CF746E80(void *a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator] = 0;
  v7 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] = 0;
  result = [a1 provider];
  if (result)
  {
    v10 = result;
    v11 = [result asAppExtensionBackedProvider];

    v13.receiver = v3;
    v13.super_class = type metadata accessor for FPFSIndexer();
    v12 = objc_msgSendSuper2(&v13, sel_initWithExtension_domain_enabled_supportingIndexAll_, v11, a1, a2 & 1, a3 & 1);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF746FA8(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 queue];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  v10 = a2;

  v11 = a1;
  sub_1CF01001C(0, "setIndexingEnabled(_:completionHandler:)", 40, 2, sub_1CF75BC68, v9);
}

uint64_t sub_1CF747080(char *a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = a4;
  sub_1CF7515B8(v11, 0, a1, a2, a3, a4);

  return sub_1CEFCCC44(v11, &qword_1EC4C46C0, &unk_1CFA16798);
}

void sub_1CF747300(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer);
  if (v8)
  {
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v10 = v8;
    v11 = sub_1CF9E6D28();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v12 = sub_1CF9E6D28();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v15[4] = sub_1CF74F980;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1CF00A468;
    v15[3] = &block_descriptor_39;
    v14 = _Block_copy(v15);

    [v10 indexOutOfBandUpdatedItems:v11 deletedItems:v12 indexReason:a6 completionHandler:v14];
    _Block_release(v14);
  }

  else
  {
    a2(0);
  }
}

uint64_t sub_1CF747490(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CF0892D0;
  v8[3] = &block_descriptor_331;
  v6 = _Block_copy(v8);
  [a2 signalChangesWithCompletionHandler_];
  _Block_release(v6);
  return a3(a1);
}

uint64_t sub_1CF7475E0()
{
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if ((*(*(Strong + 16) + 82) & 4) == 0)
      {
        goto LABEL_13;
      }

      if (qword_1EDEAA3F8 != -1)
      {
        v10 = Strong;
        swift_once();
        Strong = v10;
      }

      if (byte_1EDEBB9E8 == 1)
      {
        v2 = *(*(*(Strong + 16) + 40) + 16);
        type metadata accessor for FPFileTree();
        v3 = *(swift_dynamicCastClassUnconditional() + 280);
        v4 = [v3 pathComponents];
        v5 = sub_1CF9E6D48();

        v6 = *(v5 + 16);

        v7 = v3;
        if (v6 >= 2)
        {
          v7 = [v3 stringByDeletingLastPathComponent];
          if (!v7)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v7 = sub_1CF9E6888();
          }
        }

        v8 = [v7 fp_isiCloudDriveIdentifier];

        if (v8)
        {
          return 1;
        }
      }

      else
      {
LABEL_13:
      }
    }
  }

  return 0;
}

uint64_t sub_1CF747778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(*(Strong + 16) + 64);
      *v14 = v16;
      (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10);
      v17 = v16;
      LOBYTE(v16) = sub_1CF9E64D8();

      (*(v11 + 8))(v14, v10);
      if ((v16 & 1) == 0)
      {
        __break(1u);
      }
    }
  }

  v18 = [objc_opt_self() wellKnownPhotoLibraryURLForIdentifier_];
  sub_1CF9E59D8();

  v19 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v20 = sub_1CF9E5928();
  v21 = [v19 initWithPhotoLibraryURL_];

  v22 = sub_1CF9E6888();
  v23 = sub_1CF9E6888();
  v30[0] = 0;
  v24 = [v21 ingestItemWithSpotlightUniqueIdentifier:v22 bundleID:v23 purgeUrgency:2 error:v30];

  if (v24)
  {
    v25 = v30[0];
  }

  else
  {
    v27 = v30[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  result = (*(v6 + 8))(v9, v5);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF747AA4(unint64_t a1, void *a2, char *a3, void (*a4)(void, void *, uint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v144 = a7;
  v145 = a6;
  v147 = a5;
  v146 = a4;
  v152 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v142 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v126 - v15;
  v138 = type metadata accessor for ChangeEnumeratorAnchor();
  v137 = *(v138 - 8);
  v16 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v18 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1CF9E6118();
  v19 = *(v150 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v141 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v126 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v126 - v28;
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = &v126 - v32;
  v148 = a3;
  v34 = [a3 domain];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 log];
  }

  else
  {
    v36 = 0;
  }

  v37 = fpfs_adopt_log();

  if (!a2)
  {
    v133 = v37;
    v58 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA27C(v144, v18, type metadata accessor for ChangeEnumeratorAnchor);
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E7288();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v153 = v19;
      v63 = v62;
      v156 = v62;
      *v61 = 136315138;
      v64 = sub_1CF7D9BAC();
      v66 = v65;
      sub_1CF75B008(v18, type metadata accessor for ChangeEnumeratorAnchor);
      v67 = sub_1CEFD0DF0(v64, v66, &v156);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_1CEFC7000, v59, v60, "🧲  batch indexation succeeded for anchor %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v68 = v63;
      v19 = v153;
      MEMORY[0x1D386CDC0](v68, -1, -1);
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    else
    {

      sub_1CF75B008(v18, type metadata accessor for ChangeEnumeratorAnchor);
    }

    v134 = *(v19 + 8);
    v134(v33, v150);
    v70 = sub_1CF7475E0();
    v37 = v133;
    if ((v70 & 1) != 0 && v152)
    {
      v71 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v72 = sub_1CF9E6108();
      v73 = sub_1CF9E7288();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1CEFC7000, v72, v73, "🧲 starting media ingestion", v74, 2u);
        MEMORY[0x1D386CDC0](v74, -1, -1);
      }

      v131 = v19 + 8;
      v134(v26, v150);
      v76 = (v152 & 0xFFFFFFFFFFFFFF8);
      if (v152 >> 62)
      {
        goto LABEL_60;
      }

      for (i = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
      {
        v140 = v76;
        v132 = 0;
        v130 = 0;
        v78 = 0;
        v135 = 0;
        v151 = v152 & 0xC000000000000001;
        v139 = v152 + 32;
        v79 = a8 + 56;
        *&v75 = 136315650;
        v128 = v75;
        v149 = i;
        while (1)
        {
          if (v151)
          {
            v80 = MEMORY[0x1D3869C30](v78, v152);
          }

          else
          {
            if (v78 >= v140[2])
            {
              goto LABEL_58;
            }

            v80 = *(v139 + 8 * v78);
          }

          v76 = v80;
          v81 = __OFADD__(v78++, 1);
          if (v81)
          {
            break;
          }

          v82 = [v80 attributeSet];
          v83 = [v82 eligibleForPhotosProcessing];

          if (v83)
          {
            v84 = [v83 BOOLValue];
          }

          else
          {
            v84 = 0;
          }

          v85 = [v76 bundleID];
          if (v85)
          {
            v86 = v85;
            v153 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v88 = v87;
          }

          else
          {
            v153 = 0;
            v88 = 0;
          }

          v89 = [v76 uniqueIdentifier];
          v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v92 = v91;

          if (*(a8 + 16))
          {
            v93 = *(a8 + 40);
            sub_1CF9E81D8();
            sub_1CF9E69C8();
            v94 = sub_1CF9E8228();
            v95 = -1 << *(a8 + 32);
            v96 = v94 & ~v95;
            if (((*(v79 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
            {
              goto LABEL_48;
            }

            v97 = ~v95;
            while (1)
            {
              v98 = (*(a8 + 48) + 16 * v96);
              v99 = *v98 == v90 && v98[1] == v92;
              if (v99 || (sub_1CF9E8048() & 1) != 0)
              {
                break;
              }

              v96 = (v96 + 1) & v97;
              if (((*(v79 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            if ((v84 & 1) == 0)
            {
LABEL_48:

LABEL_49:
              i = v149;
              goto LABEL_21;
            }

            v100 = v135;
            if (!v88)
            {

              goto LABEL_49;
            }

            sub_1CF747778(v90, v92, v153, v88);
            if (v100)
            {
              v101 = fpfs_current_or_default_log();
              sub_1CF9E6128();

              v102 = v100;
              v103 = sub_1CF9E6108();
              v104 = sub_1CF9E72A8();

              v129 = v104;
              if (os_log_type_enabled(v103, v104))
              {
                v105 = swift_slowAlloc();
                v127 = v103;
                v135 = v100;
                v106 = v105;
                v126 = swift_slowAlloc();
                v107 = swift_slowAlloc();
                v156 = v107;
                *v106 = v128;
                v108 = sub_1CEFD0DF0(v90, v92, &v156);

                *(v106 + 4) = v108;
                *(v106 + 12) = 2080;
                v109 = sub_1CEFD0DF0(v153, v88, &v156);

                *(v106 + 14) = v109;
                *(v106 + 22) = 2112;
                v110 = v135;
                swift_getErrorValue();
                v111 = Error.prettyDescription.getter(v155);
                *(v106 + 24) = v111;
                v112 = v126;
                *v126 = v111;
                v113 = v127;
                _os_log_impl(&dword_1CEFC7000, v127, v129, "🧲 cannot ingest media item %s %s: %@", v106, 0x20u);
                sub_1CEFCCC44(v112, &qword_1EC4BE350, &unk_1CF9FC3B0);
                MEMORY[0x1D386CDC0](v112, -1, -1);
                swift_arrayDestroy();
                MEMORY[0x1D386CDC0](v107, -1, -1);
                MEMORY[0x1D386CDC0](v106, -1, -1);
              }

              else
              {
              }

              v134(v141, v150);
              v81 = __OFADD__(v132++, 1);
              i = v149;
              if (v81)
              {
                goto LABEL_59;
              }

              v135 = 0;
            }

            else
            {
              v135 = 0;

              v81 = __OFADD__(v130++, 1);
              i = v149;
              if (v81)
              {
                __break(1u);
                return;
              }
            }
          }

          else
          {
          }

LABEL_21:
          if (v78 == i)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        ;
      }

      v132 = 0;
      v130 = 0;
LABEL_62:
      v114 = fpfs_current_or_default_log();
      v115 = v136;
      sub_1CF9E6128();
      v116 = sub_1CF9E6108();
      v117 = sub_1CF9E7288();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 134218240;
        *(v118 + 4) = v130;
        *(v118 + 12) = 2048;
        *(v118 + 14) = v132;
        _os_log_impl(&dword_1CEFC7000, v116, v117, "🧲 ingested %ld media items (%ld errors)", v118, 0x16u);
        MEMORY[0x1D386CDC0](v118, -1, -1);
      }

      v134(v115, v150);
      v37 = v133;
    }

    v119 = v143;
    sub_1CEFDA27C(v144, v143, type metadata accessor for ChangeEnumeratorAnchor);
    (*(v137 + 56))(v119, 0, 1, v138);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    v121 = v142;
    sub_1CEFCCBDC(v119, v142, &qword_1EC4C46C0, &unk_1CFA16798);
    v122 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
    v123 = v148;
    swift_beginAccess();
    v124 = v147;

    sub_1CF75B0B0(v121, &v123[v122]);
    swift_endAccess();
    sub_1CF754620(v119, 0, v123, v146, v124, v145 & 1);

    v57 = v119;
    goto LABEL_66;
  }

  v38 = a2;
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v40 = a2;
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E72A8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    swift_getErrorValue();
    v45 = Error.prettyDescription.getter(v154);
    *(v43 + 4) = v45;
    *v44 = v45;
    _os_log_impl(&dword_1CEFC7000, v41, v42, "🧲  indexing failed: %@", v43, 0xCu);
    sub_1CEFCCC44(v44, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v44, -1, -1);
    MEMORY[0x1D386CDC0](v43, -1, -1);
  }

  (*(v19 + 8))(v29, v150);
  type metadata accessor for Code(0);
  v156 = -1006;
  v46 = a2;
  sub_1CF75B5B0(&unk_1EDEA3690, type metadata accessor for Code);
  v47 = sub_1CF9E5658();

  if (v47)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    v49 = v143;
    (*(*(v48 - 8) + 56))(v143, 1, 1, v48);
    v50 = v37;
    v51 = v142;
    sub_1CEFCCBDC(v49, v142, &qword_1EC4C46C0, &unk_1CFA16798);
    v52 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
    v53 = v148;
    swift_beginAccess();
    v54 = a2;
    v55 = v147;

    v56 = v51;
    v37 = v50;
    sub_1CF75B0B0(v56, &v53[v52]);
    swift_endAccess();
    sub_1CF752DF4(v49, 0, v53, v146, v55, v145 & 1, a2);

    v57 = v49;
LABEL_66:
    sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
    goto LABEL_67;
  }

  v69 = a2;
  v146(v145 & 1, a2, 10);

LABEL_67:
  v125 = fpfs_adopt_log();
}

uint64_t sub_1CF748AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1CEFD57E0(0, &unk_1EDEA3668, 0x1E6964E80);
    v4 = sub_1CF9E6D48();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1CF748B68(void *a1, void (*a2)(void *), uint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (a1)
  {
    v15 = a1;
    a2(a1);
  }

  v16 = type metadata accessor for ChangeEnumeratorAnchor();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  sub_1CEFCCBDC(v14, v11, &qword_1EC4C46C0, &unk_1CFA16798);
  v18 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
  swift_beginAccess();
  v19 = a1;

  sub_1CF75B0B0(v11, &a4[v18]);
  swift_endAccess();
  sub_1CF755E54(v14, 1, a4, a2, a3, a1);

  return sub_1CEFCCC44(v14, &qword_1EC4C46C0, &unk_1CFA16798);
}

uint64_t sub_1CF748D78(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v35 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v33 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v33 - v23);
  if (a3)
  {
    *v12 = a3;
    swift_storeEnumTagMultiPayload();
    v25 = a3;
    v24 = v12;
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      v26 = type metadata accessor for ChangeEnumeratorAnchor();
      (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    }

    else
    {
      v34 = a4;
      v27 = sub_1CF9E5688();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_1CEFE42D4(a1, a2);
      sub_1CF9E5678();
      v30 = type metadata accessor for ChangeEnumeratorAnchor();
      sub_1CF75B5B0(&qword_1EDEA5668, type metadata accessor for ChangeEnumeratorAnchor);
      sub_1CF9E5668();
      (*(*(v30 - 8) + 56))(v15, 0, 1, v30);

      sub_1CEFE48D8(a1, a2);
      a4 = v34;
    }

    swift_storeEnumTagMultiPayload();
    sub_1CEFE55D0(v15, v18, &qword_1EC4C46B8, &qword_1CFA16790);
    sub_1CEFE55D0(v18, v21, &qword_1EC4C46B8, &qword_1CFA16790);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *v21;
      type metadata accessor for NSFileProviderError(0);
      v36 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF75B5B0(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();

      *v24 = v37;
    }

    else
    {
      sub_1CEFE55D0(v21, v24, &unk_1EC4C4AE0, qword_1CFA17B10);
    }

    swift_storeEnumTagMultiPayload();
  }

  a4(v24);
  return sub_1CEFCCC44(v24, &qword_1EC4C46B8, &qword_1CFA16790);
}

uint64_t sub_1CF749170(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1CF9E5B88();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1CEFE48D8(v4, v9);
}

uint64_t sub_1CF749244(char *a1, void (*a2)(void **), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v32 - v8);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isIndexingEnabled])
  {
    v16 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
    v17 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer];
    if (v17)
    {
LABEL_3:

      v18 = v17;
      sub_1CF757A54(v18, a1, a2, a3);
    }

    v22 = [a1 domain];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 provider];
      if (v24)
      {
        v36 = v24;
        v35 = [v24 providerDomainForDomain_];
        v34 = [v23 nsDomainOrNilForDefault];
        v33 = [v23 log];
        v25 = [v23 supportURL];
        v37 = a2;
        v26 = v25;
        sub_1CF9E59D8();

        v32 = objc_allocWithZone(MEMORY[0x1E6967420]);
        v27 = sub_1CF9E5928();
        (*(v11 + 8))(v15, v10);
        v28 = v33;
        v30 = v34;
        v29 = v35;
        v32 = [v32 initWithDomain:v34 providerDomain:v35 log:v33 supportURL:v27 dropIndexDelegate:a1];

        a2 = v37;
        v31 = *&a1[v16];
        *&a1[v16] = v32;

        v17 = *&a1[v16];
        if (v17)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

    type metadata accessor for NSFileProviderError(0);
    v38 = -2013;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF75B5B0(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    *v9 = v39;
  }

  else
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46A8, &qword_1CFA18050) + 48);
    v21 = type metadata accessor for ChangeEnumeratorAnchor();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    *(v9 + v20) = 0;
  }

  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_1CEFCCC44(v9, &qword_1EC4C46A0, &unk_1CFA16780);
}

uint64_t sub_1CF749624(uint64_t a1, void (*a2)(void **))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v23 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v23 - v14);
  sub_1CEFCCBDC(a1, &v23 - v14, &qword_1EC4C46B8, &qword_1CFA16790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    *v11 = *v15;
    swift_storeEnumTagMultiPayload();
    v17 = v16;
    a2(v11);

    v18 = &qword_1EC4C46A0;
    v19 = &unk_1CFA16780;
    v20 = v11;
  }

  else
  {
    sub_1CEFE55D0(v15, v7, &unk_1EC4C4AE0, qword_1CFA17B10);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46A8, &qword_1CFA18050) + 48);
    sub_1CEFCCBDC(v7, v11, &unk_1EC4C4AE0, qword_1CFA17B10);
    *(v11 + v21) = 1;
    swift_storeEnumTagMultiPayload();
    a2(v11);
    sub_1CEFCCC44(v11, &qword_1EC4C46A0, &unk_1CFA16780);
    v20 = v7;
    v18 = &unk_1EC4C4AE0;
    v19 = qword_1CFA17B10;
  }

  return sub_1CEFCCC44(v20, v18, v19);
}

uint64_t sub_1CF74987C(void *a1)
{
  v24 = sub_1CF9E6388();
  v22 = *(v24 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1CF9E6498();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v12;

  v15 = a1;
  v16 = v12;
  sub_1CF74921C(sub_1CF74F9A8, v14);

  sub_1CF9E6478();
  *v4 = 1;
  v17 = v22;
  v18 = v24;
  (*(v22 + 104))(v4, *MEMORY[0x1E69E7F48], v24);
  MEMORY[0x1D3868740](v8, v4);
  (*(v17 + 8))(v4, v18);
  v19 = *(v5 + 8);
  v20 = v23;
  v19(v8, v23);
  sub_1CF9E72E8();

  v19(v11, v20);
  swift_beginAccess();
  *(v13 + 16) = 0;
}

void sub_1CF749B28(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v28[-1] - v17);
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    sub_1CEFCCBDC(a1, v18, &qword_1EC4C46A0, &unk_1CFA16780);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v18;
      v28[0] = 0;
      v28[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6E61202020202020, 0xEE00203A726F6863);
      v27 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();

      MEMORY[0x1D3868CC0](10, 0xE100000000000000);

      v20 = sub_1CF9E6888();

      [a3 put_];
    }

    else
    {
      sub_1CEFE55D0(v18, v14, &unk_1EC4C4AE0, qword_1CFA17B10);
      v28[0] = 0;
      v28[1] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(v28, "      anchor: ");
      HIBYTE(v28[1]) = -18;
      sub_1CEFCCBDC(v14, v11, &unk_1EC4C4AE0, qword_1CFA17B10);
      v21 = type metadata accessor for ChangeEnumeratorAnchor();
      if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
      {
        sub_1CEFCCC44(v11, &unk_1EC4C4AE0, qword_1CFA17B10);
        v22 = 0xE500000000000000;
        v23 = 0x3E6C696E3CLL;
      }

      else
      {
        v24 = sub_1CF7D9BAC();
        v22 = v25;
        sub_1CF75B008(v11, type metadata accessor for ChangeEnumeratorAnchor);
        v23 = v24;
      }

      MEMORY[0x1D3868CC0](v23, v22);

      MEMORY[0x1D3868CC0](10, 0xE100000000000000);

      v26 = sub_1CF9E6888();

      [a3 put_];

      sub_1CEFCCC44(v14, &unk_1EC4C4AE0, qword_1CFA17B10);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1CF749EF0(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void *), uint64_t a5, void *a6, void *a7)
{
  if (!a2)
  {
    return a4(a1 & 1, a2);
  }

  _s3__C4CodeOMa_1(0);
  v22[0] = -1002;
  v14 = a2;
  sub_1CF75B5B0(&qword_1EDEA3590, _s3__C4CodeOMa_1);
  v15 = sub_1CF9E5658();

  if ((v15 & 1) == 0)
  {
    return a4(a1 & 1, a2);
  }

  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a2;
  v17 = swift_allocObject();
  v17[2] = sub_1CF75C0A0;
  v17[3] = v16;
  v17[4] = a6;
  v22[4] = sub_1CF75C0AC;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1CF00A468;
  v22[3] = &block_descriptor_318_0;
  v18 = _Block_copy(v22);
  v19 = a2;

  v20 = a6;

  [a7 dropIndexWithDropReason:a3 completionHandler:v18];
  _Block_release(v18);
}

void sub_1CF74A0F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v175 = a6;
  v179 = a5;
  v184 = a3;
  v185 = a4;
  v182 = a1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  v7 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v159 = (&v153 - v8);
  v157 = sub_1CF9E63D8();
  v156 = *(v157 - 8);
  v9 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v170 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v180 = &v153 - v15;
  v168 = sub_1CF9E6068();
  v167 = *(v168 - 8);
  v16 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v163 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v161 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v153 - v22;
  v162 = type metadata accessor for Signpost(0);
  v164 = *(v162 - 8);
  v23 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v169 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v153 - v26;
  v165 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v178 = &v153 - v29;
  v174 = sub_1CF9E6118();
  v171 = *(v174 - 8);
  v30 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v32 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v173 = *(v33 - 8);
  v34 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v160 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v183 = &v153 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v172 = (&v153 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v153 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v153 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v153 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  v49 = *(*(v48 - 8) + 64);
  *&v50 = MEMORY[0x1EEE9AC00](v48).n128_u64[0];
  v52 = (&v153 - v51);
  v176 = a2;
  v53 = [a2 domain];
  if (v53)
  {
    v54 = v47;
    v55 = v53;
    v56 = [v53 log];

    v47 = v54;
  }

  else
  {
    v56 = 0;
  }

  v181 = fpfs_adopt_log();

  sub_1CEFCCBDC(v182, v52, &qword_1EC4C46B8, &qword_1CFA16790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = *v52;
    v58 = *v52;
    (v184)(0, v57, 7);

LABEL_25:
    v151 = v181;
    v152 = fpfs_adopt_log();

    return;
  }

  sub_1CEFE55D0(v52, v47, &unk_1EC4C4AE0, qword_1CFA17B10);
  v59 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v47, v44, &unk_1EC4C4AE0, qword_1CFA17B10);
  v60 = sub_1CF9E6108();
  v61 = sub_1CF9E7288();
  v62 = os_log_type_enabled(v60, v61);
  v154 = v47;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&aBlock = v64;
    *v63 = 136315138;
    sub_1CEFCCBDC(v44, v41, &unk_1EC4C4AE0, qword_1CFA17B10);
    v65 = type metadata accessor for ChangeEnumeratorAnchor();
    if ((*(*(v65 - 8) + 48))(v41, 1, v65) == 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4C4AE0, qword_1CFA17B10);
      v66 = 0xE500000000000000;
      v67 = 0x3E6C696E3CLL;
    }

    else
    {
      v67 = sub_1CF7D9BAC();
      v66 = v68;
      sub_1CF75B008(v41, type metadata accessor for ChangeEnumeratorAnchor);
    }

    sub_1CEFCCC44(v44, &unk_1EC4C4AE0, qword_1CFA17B10);
    v69 = sub_1CEFD0DF0(v67, v66, &aBlock);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_1CEFC7000, v60, v61, "🧲  indexing from %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1D386CDC0](v64, -1, -1);
    MEMORY[0x1D386CDC0](v63, -1, -1);

    (*(v171 + 8))(v32, v174);
    v47 = v154;
  }

  else
  {

    sub_1CEFCCC44(v44, &unk_1EC4C4AE0, qword_1CFA17B10);
    (*(v171 + 8))(v32, v174);
  }

  v70 = v183;
  v71 = v172;
  sub_1CEFCCBDC(v47, v172, &unk_1EC4C4AE0, qword_1CFA17B10);
  sub_1CEFCCBDC(v71, v70, &unk_1EC4C4AE0, qword_1CFA17B10);
  v72 = *(v173 + 80);
  v73 = (v72 + 40) & ~v72;
  v182 = v34 + 7;
  v74 = (v34 + 7 + v73) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  v76 = v176;
  v78 = v184;
  v77 = v185;
  v75[2] = v176;
  v75[3] = v78;
  v75[4] = v77;
  v79 = v75 + v73;
  v80 = v75;
  sub_1CEFE55D0(v71, v79, &unk_1EC4C4AE0, qword_1CFA17B10);
  v81 = v47;
  v82 = v175;
  *(v80 + v74) = v175;
  Strong = swift_weakLoadStrong();
  v84 = v82;

  v85 = v76;
  if (Strong)
  {
    sub_1CEFCCC44(v183, &unk_1EC4C4AE0, qword_1CFA17B10);
    v184 = *(Strong + 16);
    v86 = v160;
    sub_1CEFCCBDC(v81, v160, &unk_1EC4C4AE0, qword_1CFA17B10);
    v87 = (v72 + 24) & ~v72;
    v88 = (v182 + v87) & 0xFFFFFFFFFFFFFFF8;
    v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    *(v90 + 16) = Strong;
    sub_1CEFE55D0(v86, v90 + v87, &unk_1EC4C4AE0, qword_1CFA17B10);
    v91 = (v90 + v88);
    *v91 = sub_1CF75C124;
    v91[1] = v80;
    *(v90 + v89) = 200;
    v176 = v90;
    *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = v179;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_1CF75C124;
    *(v92 + 24) = v80;
    v185 = v92;
    v93 = *(v184 + qword_1EDEBBC38);
    v183 = v80;
    swift_retain_n();
    v182 = Strong;

    v179 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v94 = qword_1EDEBBE40;
    v95 = v167;
    v96 = v177;
    v97 = v168;
    (*(v167 + 56))(v177, 1, 1, v168);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v98 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v98);

    v99 = aBlock;
    v100 = v96;
    v101 = v161;
    sub_1CEFCCBDC(v100, v161, &unk_1EC4BED20, &unk_1CFA00700);
    v102 = *(v95 + 48);
    v103 = v102(v101, 1, v97);
    v104 = v163;
    if (v103 == 1)
    {
      v105 = v94;
      sub_1CF9E6048();
      if (v102(v101, 1, v97) != 1)
      {
        sub_1CEFCCC44(v101, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v95 + 32))(v163, v101, v97);
    }

    v110 = v178;
    (*(v95 + 16))(v178, v104, v97);
    v111 = v162;
    *(v110 + *(v162 + 20)) = v94;
    v112 = v110 + *(v111 + 24);
    *v112 = "DB queue wait";
    *(v112 + 8) = 13;
    *(v112 + 16) = 2;
    v113 = v94;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1CF9FA450;
    *(v114 + 56) = MEMORY[0x1E69E6158];
    *(v114 + 64) = sub_1CEFD51C4();
    *(v114 + 32) = v99;
    sub_1CF9E6028();

    (*(v95 + 8))(v104, v97);
    sub_1CEFCCC44(v177, &unk_1EC4BED20, &unk_1CFA00700);
    v175 = *(v184 + 168);
    v177 = *(v184 + 64);
    v115 = sub_1CF9E6448();
    v116 = *(v115 - 8);
    v173 = v115;
    v174 = v116;
    (*(v116 + 56))(v180, 1, 1, v115);
    v117 = v166;
    sub_1CEFDA27C(v110, v166, type metadata accessor for Signpost);
    v118 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v119 = (v165 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
    v120 = swift_allocObject();
    sub_1CEFD9FF4(v117, v120 + v118, type metadata accessor for Signpost);
    v121 = (v120 + v119);
    v172 = sub_1CF75C098;
    v122 = v185;
    *v121 = sub_1CF75C098;
    v121[1] = v122;
    v123 = v169;
    sub_1CEFDA27C(v110, v169, type metadata accessor for Signpost);
    v124 = (v119 + 23) & 0xFFFFFFFFFFFFFFF8;
    v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
    v126 = (v125 + 25) & 0xFFFFFFFFFFFFFFF8;
    v127 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    v129 = v128 + v118;
    v130 = v173;
    sub_1CEFD9FF4(v123, v129, type metadata accessor for Signpost);
    v131 = (v128 + v119);
    *v131 = sub_1CF045408;
    v131[1] = 0;
    v132 = v185;
    *(v128 + v124) = v184;
    v133 = v128 + v125;
    *v133 = "enumerateChanges(fromAnchor:suggestedBatchSize:reply:)";
    *(v133 + 8) = 54;
    *(v133 + 16) = 2;
    v134 = (v128 + v126);
    v135 = v174;
    *v134 = v172;
    v134[1] = v132;
    v136 = (v128 + v127);
    v137 = v176;
    *v136 = sub_1CF75C144;
    v136[1] = v137;
    v138 = swift_allocObject();
    v138[2] = sub_1CF75C120;
    v138[3] = v120;
    v139 = v175;
    v138[4] = v175;
    swift_retain_n();

    v184 = v120;

    v140 = fpfs_current_log();
    v175 = v139[2];
    v141 = v170;
    sub_1CEFCCBDC(v180, v170, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v135 + 48))(v141, 1, v130) == 1)
    {
      sub_1CEFCCC44(v141, &unk_1EC4BE370, qword_1CFA01B30);
      v142 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v143 = v155;
      sub_1CF9E6438();
      (*(v135 + 8))(v141, v130);
      v142 = sub_1CF9E63C8();
      (*(v156 + 8))(v143, v157);
    }

    v144 = v154;
    v145 = swift_allocObject();
    v145[2] = v140;
    v145[3] = sub_1CF4858EC;
    v145[4] = v128;
    v189 = sub_1CF2BA17C;
    v190 = v145;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v187 = sub_1CEFCA444;
    v188 = &block_descriptor_304_0;
    v146 = _Block_copy(&aBlock);
    v147 = v140;

    v189 = sub_1CF2BA180;
    v190 = v138;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v187 = sub_1CEFCA444;
    v188 = &block_descriptor_307;
    v148 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v175, v177, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v142, v146, v148);
    _Block_release(v148);
    _Block_release(v146);

    sub_1CEFCCC44(v180, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF75B008(v178, type metadata accessor for Signpost);
    v149 = v179;
    v150 = fpfs_adopt_log();

    sub_1CEFCCC44(v144, &unk_1EC4C4AE0, qword_1CFA17B10);

    goto LABEL_25;
  }

  v106 = v85;
  v107 = FPDomainUnavailableError();
  if (v107)
  {
    v108 = v159;
    *v159 = v107;
    swift_storeEnumTagMultiPayload();
    v109 = v183;
    sub_1CF74B450(v108, v106, v78, v77, v183, v84);

    sub_1CEFCCC44(v108, &qword_1EC4C46C8, &unk_1CFA167A8);
    sub_1CEFCCC44(v109, &unk_1EC4C4AE0, qword_1CFA17B10);
    sub_1CEFCCC44(v81, &unk_1EC4C4AE0, qword_1CFA17B10);
    goto LABEL_25;
  }

  sub_1CEFCCC44(v183, &unk_1EC4C4AE0, qword_1CFA17B10);
  __break(1u);
}

void sub_1CF74B450(uint64_t a1, void *a2, void (*a3)(void, void *, uint64_t), uint64_t a4, uint64_t a5, char **a6)
{
  v132 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v133 = &v120[-v13];
  v134 = type metadata accessor for ChangeEnumeratorAnchor();
  v135 = *(v134 - 8);
  v14 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v136 = v15;
  v137 = &v120[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v120[-v17];
  v19 = sub_1CF9E6118();
  v140 = *(v19 - 8);
  v141 = v19;
  v20 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v120[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v120[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  v26 = *(*(v25 - 8) + 64);
  *&v27 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v29 = &v120[-v28];
  v30 = [a2 domain];
  v138 = a2;
  if (v30)
  {
    v31 = v30;
    v32 = [v30 log];
  }

  else
  {
    v32 = 0;
  }

  v33 = fpfs_adopt_log();

  sub_1CEFCCBDC(a1, v29, &qword_1EC4C46C8, &unk_1CFA167A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = *v29;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v37 = v35;
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E72A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v33;
      v42 = swift_slowAlloc();
      *v40 = 138412290;
      swift_getErrorValue();
      v43 = Error.prettyDescription.getter(v143);
      *(v40 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "🧲  enumeration error: %@", v40, 0xCu);
      sub_1CEFCCC44(v42, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v44 = v42;
      v33 = v41;
      MEMORY[0x1D386CDC0](v44, -1, -1);
      MEMORY[0x1D386CDC0](v40, -1, -1);
    }

    (*(v140 + 8))(v24, v141);
    v45 = v35;
    a3(0, v35, 9);

    goto LABEL_53;
  }

  v127 = v33;
  v142 = v35;
  v46 = *(v29 + 1);
  v125 = *(v29 + 2);
  v130 = v29[24];
  v47 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D8, &unk_1CFA167B8) + 96)];
  v131 = v18;
  sub_1CEFD9FF4(v47, v18, type metadata accessor for ChangeEnumeratorAnchor);
  v146 = v46;
  v48 = v142;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v123 = (v142 >> 62);
  v129 = a4;
  v128 = a3;
  v49 = v142 & 0xFFFFFFFFFFFFFF8;
  if (v142 >> 62)
  {
LABEL_56:
    v50 = sub_1CF9E7818();
  }

  else
  {
    v50 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v126 = a6;
  v51 = v48 & 0xC000000000000001;
  if (!v50)
  {
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  a6 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  do
  {
    v124 = v53;
    v54 = v52;
    while (1)
    {
      if (v51)
      {
        v55 = MEMORY[0x1D3869C30](v54, v48);
      }

      else
      {
        if (v54 >= *(v49 + 16))
        {
          goto LABEL_55;
        }

        v55 = *(v48 + 8 * v54 + 32);
      }

      v56 = v55;
      v52 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if ([v55 isKnownByTheProvider])
      {
        v57 = [v56 itemID];
        v58 = [v57 isDiskIdentifier];

        v48 = v142;
        if (v58)
        {
          break;
        }
      }

LABEL_14:
      ++v54;
      if (v52 == v50)
      {
        v53 = v124;
        goto LABEL_30;
      }
    }

    v59 = [v56 itemID];

    if (!v59)
    {
      goto LABEL_14;
    }

    MEMORY[0x1D3868FA0]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v60 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
      v48 = v142;
    }

    sub_1CF9E6DE8();
    v53 = aBlock[0];
  }

  while (v52 != v50);
LABEL_30:
  sub_1CF1E90BC(v53);
  v61 = v146;
  v62 = fpfs_current_or_default_log();
  v63 = v139;
  sub_1CF9E6128();

  v64 = sub_1CF9E6108();
  v65 = sub_1CF9E7288();
  v124 = v61;

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    aBlock[0] = v122;
    *v66 = 136315650;
    if (v123)
    {
      v67 = sub_1CF9E7818();
    }

    else
    {
      v67 = *(v49 + 16);
    }

    v72 = MEMORY[0x1E69E7CC0];
    v68 = v131;
    if (v67)
    {
      v144 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        v119 = v66;
        sub_1CF513A38("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 38, v66);
      }

      v121 = v65;
      v123 = v64;
      v72 = v144;
      if (v51)
      {
        for (i = 0; i != v67; ++i)
        {
          MEMORY[0x1D3869C30](i, v142);
          v74 = [swift_unknownObjectRetain() itemID];
          v75 = [v74 identifier];
          swift_unknownObjectRelease_n();

          v144 = v72;
          v77 = *(v72 + 16);
          v76 = *(v72 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_1CF680D2C((v76 > 1), v77 + 1, 1);
            v72 = v144;
          }

          *(v72 + 16) = v77 + 1;
          *(v72 + 8 * v77 + 32) = v75;
        }
      }

      else
      {
        v78 = (v48 + 32);
        do
        {
          v79 = *v78;
          v80 = [v79 itemID];
          v81 = [v80 identifier];

          v144 = v72;
          v83 = *(v72 + 16);
          v82 = *(v72 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_1CF680D2C((v82 > 1), v83 + 1, 1);
            v72 = v144;
          }

          *(v72 + 16) = v83 + 1;
          *(v72 + 8 * v83 + 32) = v81;
          ++v78;
          --v67;
        }

        while (v67);
      }

      v63 = v139;
      v64 = v123;
      LOBYTE(v65) = v121;
    }

    type metadata accessor for NSFileProviderItemIdentifier(0);
    v85 = MEMORY[0x1D3868FE0](v72, v84);
    v87 = v86;

    v88 = sub_1CEFD0DF0(v85, v87, aBlock);

    *(v66 + 1) = v88;
    *(v66 + 6) = 2080;
    v89 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v90 = MEMORY[0x1D3868FE0](v124, v89);
    v92 = sub_1CEFD0DF0(v90, v91, aBlock);

    *(v66 + 14) = v92;
    *(v66 + 11) = 1024;
    v66[6] = v130;
    _os_log_impl(&dword_1CEFC7000, v64, v65, "🧲  pushing batch: updating=%s, deleting=%s hasMore=%{BOOL}d", v66, 0x1Cu);
    v93 = v122;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v93, -1, -1);
    MEMORY[0x1D386CDC0](v66, -1, -1);

    (*(v140 + 8))(v63, v141);
    v69 = v135;
    v70 = v134;
    v71 = v133;
  }

  else
  {

    (*(v140 + 8))(v63, v141);
    v68 = v131;
    v69 = v135;
    v70 = v134;
    v71 = v133;
  }

  sub_1CEFCCBDC(v132, v71, &unk_1EC4C4AE0, qword_1CFA17B10);
  if ((*(v69 + 48))(v71, 1, v70) == 1)
  {
    sub_1CEFCCC44(v71, &unk_1EC4C4AE0, qword_1CFA17B10);
    v142 = 0;
  }

  else
  {
    v94 = sub_1CF9E56C8();
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor);
    v97 = sub_1CF9E56A8();
    v99 = v98;

    sub_1CF75B008(v71, type metadata accessor for ChangeEnumeratorAnchor);
    v142 = sub_1CF9E5B48();
    sub_1CEFE4714(v97, v99);
  }

  v100 = sub_1CF9E56C8();
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor);
  v103 = sub_1CF9E56A8();
  v105 = v104;

  v106 = sub_1CF9E5B48();
  sub_1CEFE4714(v103, v105);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v107 = sub_1CF9E6D28();

  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v108 = sub_1CF9E6D28();

  v109 = v137;
  sub_1CEFDA27C(v68, v137, type metadata accessor for ChangeEnumeratorAnchor);
  v110 = (*(v69 + 80) + 41) & ~*(v69 + 80);
  v111 = (v136 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v113 = v138;
  v114 = v128;
  *(v112 + 16) = v138;
  *(v112 + 24) = v114;
  *(v112 + 32) = v129;
  *(v112 + 40) = v130;
  sub_1CEFD9FF4(v109, v112 + v110, type metadata accessor for ChangeEnumeratorAnchor);
  *(v112 + v111) = v125;
  aBlock[4] = sub_1CF75C140;
  aBlock[5] = v112;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF748AC4;
  aBlock[3] = &block_descriptor_273;
  v115 = _Block_copy(aBlock);
  v116 = v113;

  v117 = v142;
  [v126 indexOneBatchFromAnchor:v142 toAnchor:v106 updatedItems:v107 deletedItems:v108 completionHandler:v115];
  _Block_release(v115);

  sub_1CF75B008(v131, type metadata accessor for ChangeEnumeratorAnchor);
  v33 = v127;
LABEL_53:
  v118 = fpfs_adopt_log();
}

uint64_t sub_1CF74C2D0(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E6888();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FPFSIndexer();
  objc_msgSendSuper2(&v10, sel_dumpStateTo_withName_, a1, v4);

  v5 = sub_1CF9E6888();
  [a1 put_];

  [*&v2[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] dumpStateTo_];
  sub_1CF9E7948();

  if (qword_1EDEAA3F8 != -1)
  {
    swift_once();
  }

  if (byte_1EDEBB9E8)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (byte_1EDEBB9E8)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v6, v7);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);

  v8 = sub_1CF9E6888();

  [a1 put_];

  return sub_1CF74987C(a1);
}

uint64_t sub_1CF74C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v6 = v5;
  v9 = sub_1CF9E63A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6448();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  *&v16 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v6 queue];
  v20 = swift_allocObject();
  v20[2] = v6;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  v22 = v6;

  sub_1CF9E63F8();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1CF75B5B0(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v18, v13, v21);
  _Block_release(v21);

  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v18, v26);
}

void sub_1CF74C888(char *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  *&v15 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer])
  {
LABEL_2:
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = a1;
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E7298();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v54 = a3;
      v55 = v6;
      v24 = a2;
      v25 = v23;
      v26 = v7;
      v27 = swift_slowAlloc();
      *v25 = 138412290;
      v28 = [v20 domain];
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "🧲 pausing indexing for %@", v25, 0xCu);
      sub_1CEFCCC44(v27, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v29 = v27;
      v7 = v26;
      MEMORY[0x1D386CDC0](v29, -1, -1);
      v30 = v25;
      a2 = v24;
      v6 = v55;
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    [*&a1[v18] pause];
    (a2)(0);
    return;
  }

  v53 = v14;
  v31 = [a1 domain];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 provider];
    if (v33)
    {
      v51 = v33;
      v50 = [v33 providerDomainForDomain_];
      v48 = [v32 nsDomainOrNilForDefault];
      v47 = [v32 log];
      v34 = [v32 supportURL];
      v52 = v7;
      v35 = v34;
      sub_1CF9E59D8();

      v36 = objc_allocWithZone(MEMORY[0x1E6967420]);
      v37 = sub_1CF9E5928();
      v54 = a3;
      v55 = v6;
      v49 = a2;
      v38 = v37;
      (*(v12 + 8))(v17, v53);
      v39 = v36;
      v7 = v52;
      v41 = v47;
      v40 = v48;
      v42 = v50;
      v43 = [v39 initWithDomain:v48 providerDomain:v50 log:v47 supportURL:v38 dropIndexDelegate:a1];

      a2 = v49;
      a3 = v54;
      v6 = v55;

      v44 = *&a1[v18];
      *&a1[v18] = v43;

      goto LABEL_2;
    }
  }

  v55 = FPDomainUnavailableError();
  a2();
  v45 = v55;
}

uint64_t sub_1CF74CDA0(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = a1;
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7298();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = [v10 domain];
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "🧲 resuming indexing for %@", v13, 0xCu);
    sub_1CEFCCC44(v14, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v14, -1, -1);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  [*&v10[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] resume];
  return a2(0);
}

id sub_1CF74D0B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1CF74D164(char a1, char a2, void (*a3)(unint64_t *), uint64_t a4)
{
  v5 = v4;
  v10 = [v5 domain];
  if (!v10)
  {
    v60 = FPDomainUnavailableError();
    if (v60)
    {
      v61 = v60;
      aBlock = v60;
      v99 = 1;
      a3(&aBlock);

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v10 identifier];
  if (!v12)
  {
    v62 = FPDomainUnavailableError();
    if (v62)
    {
      v63 = v62;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = [v11 provider];
  if (!v17)
  {
    v66 = FPDomainUnavailableError();
    if (!v66)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v63 = v66;

LABEL_16:
    aBlock = v63;
    v99 = 1;
    a3(&aBlock);

    return;
  }

  v18 = v17;
  if (!*&v5[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator] || (Strong = swift_weakLoadStrong()) == 0)
  {
    v64 = FPDomainUnavailableError();
    if (v64)
    {
      v65 = v64;

      aBlock = v65;
      v99 = 1;
      a3(&aBlock);

      return;
    }

    goto LABEL_21;
  }

  v92 = *(Strong + 16);

  v20 = swift_allocObject();
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 16) = a1 & 1;
  if (a2)
  {
    v79 = v20;
    v85 = a1 & 1;
    v90 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
    v21 = [v18 descriptor];
    v22 = [v21 topLevelBundleIdentifier];

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v80 = v18;
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CF9FA450;
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;
    v27 = sub_1CF9E6D28();

    [v90 setBundleIDs_];

    sub_1CF9E7948();

    aBlock = 0xD00000000000001BLL;
    v94 = 0x80000001CFA5A0B0;
    MEMORY[0x1D3868CC0](v14, v16);

    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA5A0B0);

    v28 = *MEMORY[0x1E6964348];
    v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v29;
    v31 = *MEMORY[0x1E6964340];
    v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1CFA001F0;
    *(v34 + 32) = 0xD00000000000001ELL;
    *(v34 + 40) = 0x80000001CFA5A0D0;
    *(v34 + 48) = 0xD00000000000001CLL;
    *(v34 + 56) = 0x80000001CFA5A0F0;
    *(v34 + 64) = 0xD000000000000016;
    *(v34 + 72) = 0x80000001CFA5A110;
    *(v34 + 80) = v74;
    *(v34 + 88) = v30;
    v70 = v33;
    v71 = v30;
    *(v34 + 96) = v72;
    *(v34 + 104) = v33;
    *(v34 + 112) = 0xD000000000000013;
    *(v34 + 120) = 0x80000001CFA5A130;

    v35 = sub_1CF9E6D28();

    [v90 setFetchAttributes_];

    [v90 setDisableSemanticSearch_];
    [v90 setDisableNLP_];

    v77 = swift_allocObject();
    v36 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v37 = v90;
    v38 = sub_1CF9E6888();

    v78 = v37;
    v69 = [v36 initWithQueryString:v38 queryContext:v37];

    *(v77 + 16) = v69;
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = v41;
    v91 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = v43;
    v88 = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v46 = v45;
    v87 = v45;
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v46;
    *(v48 + 32) = 1;
    *(v48 + 40) = v74;
    *(v48 + 48) = v71;
    *(v48 + 56) = v72;
    *(v48 + 64) = v70;
    *(v48 + 72) = v92;
    *(v48 + 80) = v39;
    *(v48 + 88) = v89;
    *(v48 + 96) = v42;
    *(v48 + 104) = v44;
    *(v48 + 112) = v85;
    *(v48 + 120) = v83;
    *(v48 + 128) = v82;
    v84 = v40;
    *(v48 + 136) = v40;
    *(v48 + 144) = v81;
    v97 = sub_1CF75BE94;
    v98 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1CF74EA64;
    v96 = &block_descriptor_417;
    v75 = _Block_copy(&aBlock);

    v49 = v69;

    [v49 setFoundItemsHandler_];
    _Block_release(v75);

    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = v87;
    v51[4] = v77;
    v51[5] = a3;
    v51[6] = a4;
    v97 = sub_1CF75BEF0;
    v98 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1CF02C160;
    v96 = &block_descriptor_424;
    v52 = _Block_copy(&aBlock);
    v53 = objc_opt_self();

    v76 = [v53 timerWithTimeInterval:0 repeats:v52 block:5.0];
    _Block_release(v52);

    swift_beginAccess();
    v73 = *(v77 + 16);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = v87;
    v56[4] = v54;
    v56[5] = a3;
    v56[6] = a4;
    v56[7] = v79;
    v56[8] = v77;
    v56[9] = v89;
    v56[10] = v91;
    v56[11] = v88;
    v56[12] = v83;
    v56[13] = v82;
    v56[14] = v84;
    v56[15] = v81;
    v97 = sub_1CF75BF00;
    v98 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1CF00A468;
    v96 = &block_descriptor_434_0;
    v86 = _Block_copy(&aBlock);

    v57 = v73;

    [v57 setCompletionHandler_];
    _Block_release(v86);

    v58 = [objc_opt_self() currentRunLoop];
    [v58 addTimer:v76 forMode:*MEMORY[0x1E695D918]];

    v59 = *(v77 + 16);
    [v59 start];

    return;
  }

  v67 = FPDomainUnavailableError();
  if (v67)
  {
    v68 = v67;

    aBlock = v68;
    v99 = 1;
    a3(&aBlock);

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1CF74DD78(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v105 = a7;
  v106 = a8;
  v107 = a5;
  v108 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v94 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v85 - v25;
  v100 = sub_1CF9E5CF8();
  v26 = *(v100 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
LABEL_100:
    v30 = sub_1CF9E7818();
    if (!v30)
    {
      return;
    }
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      return;
    }
  }

  v110 = v30;
  if (v30 < 1)
  {
    goto LABEL_105;
  }

  v111 = a14;
  v92 = a18;
  v99 = a17;
  v114 = a1 & 0xC000000000000001;
  v112 = " && FPDomainIdentifier == ";
  v88 = a9;
  swift_beginAccess();
  v113 = a11;
  swift_beginAccess();
  v103 = a12;
  swift_beginAccess();
  v95 = a13;
  swift_beginAccess();
  v98 = a15;
  swift_beginAccess();
  v91 = a16;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v31 = 0;
  v93 = (v26 + 56);
  v89 = (v26 + 48);
  v90 = "_kMDItemPhotoEmbedding";
  v86 = (v26 + 16);
  v87 = (v26 + 32);
  v85 = (v26 + 8);
  v101 = "_kMDItemPrimaryTextEmbedding";
  v102 = "_kMDItemTextContentIndexExists";
  v32 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  v104 = a4;
  v109 = a1;
  while (1)
  {
    if (v114)
    {
      v33 = MEMORY[0x1D3869C30](v31, a1);
      if (a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v33 = *(a1 + 8 * v31 + 32);
      if (a4)
      {
LABEL_11:
        v26 = [v33 v32[352]];
        v34 = [v26 filename];

        if (!v34)
        {
          goto LABEL_23;
        }

        v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v36 = v35;

        goto LABEL_20;
      }
    }

    v37 = [v33 v32[352]];
    a1 = sub_1CF9E6888();
    v26 = [v37 attributeForKey_];

    if (v26)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
    }

    v119 = v117;
    v120 = v118;
    if (!*(&v118 + 1))
    {
      sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_23:
      v40 = 0;
      goto LABEL_61;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v26 = v115;
    v36 = v116;
LABEL_20:
    a1 = [v33 v32[352]];
    v38 = sub_1CF9E6888();
    v39 = [a1 attributeForKey_];

    if (v39)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
    }

    v119 = v117;
    v120 = v118;
    v32 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
    if (!*(&v118 + 1))
    {

      sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_31:
      v40 = 0;
      a4 = v104;
      goto LABEL_61;
    }

    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_31;
    }

    a1 = v115;
    v41 = [v33 attributeSet];
    v42 = sub_1CF9E6888();
    v43 = [v41 attributeForKey_];

    if (v43)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
    }

    v119 = v117;
    v120 = v118;
    if (!*(&v118 + 1))
    {

      sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v44 = v97;
      (*v93)(v97, 1, 1, v100);
      goto LABEL_37;
    }

    v44 = v97;
    v45 = v100;
    v46 = swift_dynamicCast();
    v47 = *v93;
    (*v93)(v44, v46 ^ 1u, 1, v45);
    if ((*v89)(v44, 1, v45) != 1)
    {
      break;
    }

LABEL_37:
    sub_1CEFCCC44(v44, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v40 = 0;
    a4 = v104;
LABEL_60:
    v32 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
LABEL_61:
    v59 = *(a10 + 16);
    v60 = __CFADD__(v59, 1);
    v61 = v59 + 1;
    v62 = v113;
    if (v60)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *(a10 + 16) = v61;
    if (v40)
    {
      v63 = *(v62 + 16);
      v60 = __CFADD__(v63, 1);
      v64 = v63 + 1;
      if (v60)
      {
        goto LABEL_93;
      }

      *(v62 + 16) = v64;
    }

    v65 = [v33 v32[352]];
    a1 = sub_1CF9E6888();
    v66 = [v65 attributeForKey_];

    if (v66)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
    }

    v119 = v117;
    v120 = v118;
    if (!*(&v118 + 1))
    {
      sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_72:
      sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      v26 = sub_1CF9E7548();
      goto LABEL_73;
    }

    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_72;
    }

    v26 = v115;
LABEL_73:
    if ([v26 BOOLValue])
    {
      v67 = *(v103 + 16);
      v60 = __CFADD__(v67, 1);
      v68 = v67 + 1;
      if (v60)
      {
        goto LABEL_94;
      }

      *(v103 + 16) = v68;
      if (v40)
      {
        v69 = *(v95 + 16);
        v60 = __CFADD__(v69, 1);
        v70 = v69 + 1;
        if (v60)
        {
          goto LABEL_97;
        }

        *(v95 + 16) = v70;
      }
    }

    if (v111)
    {
      a1 = [v33 v32[352]];
      v71 = sub_1CF9E6888();
      v72 = [a1 attributeForKey_];

      if (v72)
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v73 = *(v98 + 16);
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_95;
        }

        *(v98 + 16) = v75;
        v76 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
        if (v40)
        {
          v77 = *(v91 + 16);
          v74 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v74)
          {
            goto LABEL_98;
          }

          *(v91 + 16) = v78;
        }
      }

      else
      {
        v119 = 0u;
        v120 = 0u;
        sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v76 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      }

      a1 = [v33 v76[352]];
      v79 = sub_1CF9E6888();
      v80 = [a1 attributeForKey_];

      if (v80)
      {
        sub_1CF9E7728();

        swift_unknownObjectRelease();
        sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v81 = *(v99 + 16);
        v74 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v74)
        {
          goto LABEL_96;
        }

        *(v99 + 16) = v82;
        v32 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
        if (v40)
        {
          v83 = *(v92 + 16);
          v74 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v74)
          {
            goto LABEL_99;
          }

          *(v92 + 16) = v84;
        }
      }

      else
      {

        v119 = 0u;
        v120 = 0u;
        sub_1CEFCCC44(&v119, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v32 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      }
    }

    else
    {
    }

    ++v31;
    a1 = v109;
    if (v110 == v31)
    {
      return;
    }
  }

  (*v87)(v96, v44, v45);
  [a1 doubleValue];
  if (v104)
  {
    [a1 doubleValue];
    v50 = v49 * 1000.0 * 1000.0;
  }

  else
  {
    v50 = v48;
  }

  v51 = v100;
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v50 <= -9.22337204e18)
    {
      goto LABEL_103;
    }

    if (v50 >= 9.22337204e18)
    {
      goto LABEL_104;
    }

    v52 = v94;
    (*v86)(v94, v96, v100);
    v47(v52, 0, 1, v51);
    v53 = *(v88 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v54 = swift_dynamicCastClass();
    if (v54 && *(*(v54 + 32) + qword_1EDEBBB18))
    {

      v26 = sub_1CF3A8798(v26, v36, v94);

      if (v26)
      {
        a4 = v104;
        if ((*(v88 + 82) & 8) == 0 && (v55 = swift_dynamicCastClass()) != 0 && (v56 = *(*(v55 + 32) + qword_1EDEBBB18)) != 0)
        {
          v26 = v50;
          v57 = *(v56 + qword_1EDEBB7B0);

          v40 = v50 > 0 && v57 >= v26;
        }

        else
        {

          v40 = 1;
        }

        goto LABEL_59;
      }
    }

    else
    {
    }

    v40 = 0;
    a4 = v104;
LABEL_59:
    sub_1CEFCCC44(v94, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    (*v85)(v96, v100);
    goto LABEL_60;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}