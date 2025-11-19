uint64_t sub_1A346D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, CGFloat a9@<D6>, CGFloat a10@<D7>, double a11, double a12)
{
  v78 = a6;
  v95 = a4;
  v99 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v100 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v76 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE28);
  v88 = *(v23 - 8);
  v89 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE30);
  MEMORY[0x1EEE9AC00](v85);
  v27 = &v76 - v26;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE38);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v76 - v28;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE40);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v76 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE48);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v97 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v96 = &v76 - v33;
  v101 = a5;
  v94 = a3;
  v34 = a3 / a5 * (1.0 / a9);
  v35 = v34 * a12;
  v77 = v34 * a11;
  CGAffineTransformMakeScale(&v108, v34 * a11, v34 * a12);
  v124.origin.x = a7;
  v124.origin.y = a8;
  v124.size.width = a9;
  v124.size.height = a10;
  v125 = CGRectApplyAffineTransform(v124, &v108);
  y = v125.origin.y;
  x = v125.origin.x;
  height = v125.size.height;
  width = v125.size.width;
  CGAffineTransformMakeScale(&v108, a11, a12);
  v126.origin.x = a7;
  v126.origin.y = a8;
  v126.size.width = a9;
  v126.size.height = a10;
  v127 = CGRectApplyAffineTransform(v126, &v108);
  v92 = v127.origin.x;
  v93 = v127.origin.y;
  v36 = type metadata accessor for VisualIdentityPreview();
  v37 = a1 + *(v36 + 28);
  v83 = type metadata accessor for VisualIdentity(0);
  v84 = v37;
  v38 = sub_1A31EE4BC(v37 + *(v83 + 32), &v108);
  LOBYTE(v121) = 1;
  if (*(a1 + *(v36 + 44) + 8) == 1)
  {
    v38 = sub_1A34CCD60();
  }

  MEMORY[0x1EEE9AC00](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE50);
  sub_1A32B4E7C();
  sub_1A32CCEC4();
  *&v102 = sub_1A34CBA40();
  *(&v102 + 1) = MEMORY[0x1E697CCD0];
  swift_getOpaqueTypeConformance2();
  sub_1A34CC200();
  sub_1A346E690(&v108);
  sub_1A34CCC80();
  sub_1A34CA760();
  (*(v88 + 32))(v27, v25, v89);
  v39 = &v27[*(v85 + 36)];
  v40 = v119;
  *v39 = v118;
  *(v39 + 1) = v40;
  *(v39 + 2) = v120;
  sub_1A346CAE4(&v108);
  if (v108)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = v34;
  }

  sub_1A34CCE10();
  v43 = v42;
  v45 = v44;
  v46 = v90;
  sub_1A329D98C(v27, v90, &qword_1EB0CBE30);
  v47 = v46 + *(v87 + 36);
  *v47 = v41;
  *(v47 + 8) = v41;
  *(v47 + 16) = v43;
  *(v47 + 24) = v45;
  sub_1A346CAE4(&v108);
  v48 = 0.0;
  v49 = 0.0;
  if ((v108 & 1) == 0)
  {
    v50 = v77 * 0.5;
    v128.origin.y = y;
    v128.origin.x = x;
    v128.size.height = height;
    v128.size.width = width;
    v49 = v50 - CGRectGetMidX(v128);
  }

  sub_1A346CAE4(&v108);
  if ((v108 & 1) == 0)
  {
    v129.origin.y = y;
    v129.origin.x = x;
    v129.size.height = height;
    v129.size.width = width;
    v48 = v35 * 0.5 - CGRectGetMidY(v129);
  }

  v51 = v101 / v94 * a9;
  v52 = a12 * 0.5 - v51 * v95 * 0.5;
  v53 = a11 * 0.5 - v51 * v94 * 0.5;
  v54 = v86;
  sub_1A329D98C(v46, v86, &qword_1EB0CBE38);
  v55 = (v54 + *(v91 + 36));
  *v55 = v49;
  v55[1] = v48;
  sub_1A346CAE4(&v108);
  sub_1A346E6E4();
  v56 = v96;
  sub_1A34CC0F0();
  sub_1A3288FDC(v54, &qword_1EB0CBE40);
  v57 = (v84 + *(v83 + 28));
  v58 = v57[3];
  v59 = v57[4];
  v60 = __swift_project_boxed_opaque_existential_1(v57, v58);
  *(&v109 + 1) = v58;
  *v110 = *(v59 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
  (*(*(v58 - 8) + 16))(boxed_opaque_existential_1, v60, v58);
  sub_1A34CCC80();
  sub_1A34CA760();
  *&v110[8] = v121;
  *&v110[24] = v122;
  *&v110[40] = v123;
  sub_1A346CAE4(&v102);
  if (v102)
  {
    v62 = v51;
  }

  else
  {
    v62 = 1.0;
  }

  sub_1A34CCE10();
  v64 = v63;
  v66 = v65;
  v104 = *v110;
  v105 = *&v110[16];
  v106 = *&v110[32];
  v107 = *&v110[48];
  v102 = v108;
  v103 = v109;
  sub_1A346CAE4(&v108);
  if (v108)
  {
    v67 = v92 - v53;
  }

  else
  {
    v67 = 0.0;
  }

  sub_1A346CAE4(&v108);
  if (v108)
  {
    v68 = v93 - v52;
  }

  else
  {
    v68 = 0.0;
  }

  sub_1A346CAE4(&v108);
  if (v108)
  {
    v69 = 0.0;
  }

  else
  {
    v69 = 1.0;
  }

  *v110 = v104;
  *&v110[16] = v105;
  *&v110[32] = v106;
  *&v110[48] = v107;
  v108 = v102;
  v109 = v103;
  v111 = v62;
  v112 = v62;
  v113 = v64;
  v114 = v66;
  v115 = v67;
  v116 = v68;
  v117 = v69;
  sub_1A346CAE4(&v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE58);
  sub_1A346E924();
  v70 = v98;
  sub_1A34CC0F0();
  sub_1A3288FDC(&v108, &qword_1EB0CBE58);
  v71 = v97;
  sub_1A3210AC4(v56, v97);
  v72 = v100;
  sub_1A346EAC8(v70, v100);
  v73 = v99;
  sub_1A3210AC4(v71, v99);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE70);
  sub_1A346EAC8(v72, v73 + *(v74 + 48));
  sub_1A3288FDC(v70, &qword_1EB0CBE20);
  sub_1A3288FDC(v56, &qword_1EB0CBE48);
  sub_1A3288FDC(v72, &qword_1EB0CBE20);
  return sub_1A3288FDC(v71, &qword_1EB0CBE48);
}

uint64_t sub_1A346DD24(double a1)
{
  v2 = sub_1A34CAD60();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = a1 * 0.25;
  v7 = *(v6 + 28);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1A34CB200();
  (*(*(v9 - 8) + 104))(v4 + v7, v8, v9);
  *v4 = v5;
  v4[1] = v5;
  sub_1A34CBA40();
  sub_1A34CBA10();
  return sub_1A32C851C(v4);
}

uint64_t sub_1A346DE2C(uint64_t a1)
{
  v2 = *(type metadata accessor for VisualIdentity(0) + 28);
  sub_1A31EE4BC(a1 + v2, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  type metadata accessor for MemojiAvatarSource();
  if (swift_dynamicCast())
  {
    v3 = v20[0];
    swift_getKeyPath();
    v15 = v3;
    sub_1A346EB38(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
    sub_1A34C99A0();

    v4 = [*(v3 + 56) accessibilityDescription];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1A34CD110();
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_1A31EE4BC(a1 + v2, &v15);
    if (swift_dynamicCast())
    {
      v6 = v20[0];
      sub_1A31ECC9C(v20[2], v21);
    }

    else
    {
      sub_1A31EE4BC(a1 + v2, v20);
      if (swift_dynamicCast())
      {
        v7 = v15;
        v9 = v17;
        v8 = v18;
        v10 = v19;
        v11 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1A34DCA90;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
        LOBYTE(v15) = v10;

        *(v12 + 48) = sub_1A346E110(&v15);
        *(v12 + 56) = v13;
        v15 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
        sub_1A3284D0C(&qword_1EB0C0270, &qword_1EB0C7380);
        v6 = sub_1A34CD010();
        sub_1A31ECC9C(v7, v11);
      }

      else
      {
        return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000020, 0x80000001A3512960);
      }
    }
  }

  return v6;
}

uint64_t sub_1A346E110(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (v1 - 3 >= 2)
    {
      v5 = 0x4E4F465F50414E53;
      v6 = 0xEF46495245535F54;
    }

    else
    {
      v6 = 0x80000001A35129B0;
      v5 = 0xD000000000000011;
    }
  }

  else
  {
    if (*a1)
    {
      v2 = v1 == 1;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v3 = "ON_ACCESSIBILITY";
      v4 = MEMORY[0x1E69E7CC0];
      v5 = 0xD000000000000013;
    }

    else
    {
      v3 = "SNAP_FONT_ROUNDED";
      v4 = MEMORY[0x1E69E7CC0];
      v5 = 0xD000000000000014;
    }

    v6 = v3 | 0x8000000000000000;
  }

  return sub_1A3332448(v4, 0, 0, v5, v6);
}

uint64_t sub_1A346E1E0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A346E2E0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A346E424(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VisualIdentityPreview);
  *a2 = sub_1A346E350;
  a2[1] = v7;
  return result;
}

uint64_t sub_1A346E2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentityPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A346E344(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A346E350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisualIdentityPreview() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A346CBC8(a1, v6, a2);
}

unint64_t sub_1A346E3D0()
{
  result = qword_1EB0C16E8;
  if (!qword_1EB0C16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C16E8);
  }

  return result;
}

uint64_t sub_1A346E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A346E48C()
{
  result = qword_1EB0C0A60;
  if (!qword_1EB0C0A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBDE8);
    sub_1A346E518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A60);
  }

  return result;
}

unint64_t sub_1A346E518()
{
  result = qword_1EB0C0B28;
  if (!qword_1EB0C0B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBDE0);
    sub_1A346E5D0();
    sub_1A3284D0C(&qword_1EB0C10E8, &qword_1EB0CBE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B28);
  }

  return result;
}

unint64_t sub_1A346E5D0()
{
  result = qword_1EB0C0CA8;
  if (!qword_1EB0C0CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBDD8);
    sub_1A3284D0C(&unk_1EB0C0448, &qword_1EB0CBE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CA8);
  }

  return result;
}

unint64_t sub_1A346E6E4()
{
  result = qword_1EB0C0A98;
  if (!qword_1EB0C0A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE40);
    sub_1A346E770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A98);
  }

  return result;
}

unint64_t sub_1A346E770()
{
  result = qword_1EB0C0B90;
  if (!qword_1EB0C0B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE38);
    sub_1A346E7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B90);
  }

  return result;
}

unint64_t sub_1A346E7FC()
{
  result = qword_1EB0C0DB8;
  if (!qword_1EB0C0DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE50);
    sub_1A32B4E7C();
    sub_1A32CCEC4();
    sub_1A34CBA40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DB8);
  }

  return result;
}

unint64_t sub_1A346E924()
{
  result = qword_1EB0C0A28;
  if (!qword_1EB0C0A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE58);
    sub_1A346E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A28);
  }

  return result;
}

unint64_t sub_1A346E9B0()
{
  result = qword_1EB0C0AF8;
  if (!qword_1EB0C0AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE60);
    sub_1A346EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AF8);
  }

  return result;
}

unint64_t sub_1A346EA3C()
{
  result = qword_1EB0C0C48;
  if (!qword_1EB0C0C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE68);
    sub_1A32B4DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C48);
  }

  return result;
}

uint64_t sub_1A346EAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A346EB38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A346EBAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A346EC1C()
{
  result = qword_1EB0C0C28;
  if (!qword_1EB0C0C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE90);
    sub_1A346ECA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C28);
  }

  return result;
}

unint64_t sub_1A346ECA8()
{
  result = qword_1EB0C0EF0;
  if (!qword_1EB0C0EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBE80);
    sub_1A3284D0C(&qword_1EB0C0728, &qword_1EB0CBE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0EF0);
  }

  return result;
}

uint64_t sub_1A346ED60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;
  sub_1A34C9010();
  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1A346EDD0()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A346EE80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1A346EF2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1A34CDE30() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A346F08C()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A346F13C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1A346F1E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1A34CDE30() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A346F348()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v0 + 48);
}

uint64_t sub_1A346F3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1A346F490(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A346F5A0()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1A346F650@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1A346F6FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_1A34CDE30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1A346F86C()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v0 + 72);
}

uint64_t sub_1A346F90C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1A346F9B4(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A346FAC4()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A346FB68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 80);
  return sub_1A34C9010();
}

uint64_t sub_1A346FC14(uint64_t a1)
{
  if (!*(v1 + 80))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A34C9010();
  v3 = sub_1A34CC650();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 80) = a1;
}

uint64_t sub_1A346FD7C()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v0 + 88);
}

uint64_t sub_1A346FE1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1A346FEC4(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A346FFD4()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v0 + 89);
}

uint64_t sub_1A3470074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_1A347011C(uint64_t result)
{
  if (*(v1 + 89) == (result & 1))
  {
    *(v1 + 89) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A347022C()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v0 + 120);
}

uint64_t sub_1A34702CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1A3470374(uint64_t result)
{
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A3470484()
{
  sub_1A34CD450();
  *(v0 + 16) = sub_1A34CD440();
  v2 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3470518, v2, v1);
}

uint64_t sub_1A3470518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3470578()
{

  v1 = OBJC_IVAR____TtC14ContactsUICore35ContactCardLabeledPropertyViewModel___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A347066C()
{
  result = sub_1A34C99E0();
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

uint64_t sub_1A3470734()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1A34707E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1A3470894()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v1 + 48);
}

uint64_t sub_1A3470934()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_1A34709E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v1 + 72);
}

uint64_t sub_1A3470A84()
{
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A3470B28()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v1 + 89);
}

uint64_t sub_1A3470BD4()
{
  v1 = *(*v0 + 96);

  return v1;
}

uint64_t sub_1A3470C14()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v1 + 120);
}

uint64_t sub_1A3470CB4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3472550(&unk_1EB0C13D0, type metadata accessor for ContactCardLabeledPropertyViewModel);
  sub_1A34C99A0();

  return *(v1 + 88);
}

uint64_t sub_1A3470D54()
{
  v4 = (*(**v0 + 624) + **(**v0 + 624));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3292050;

  return v4();
}

id sub_1A3470E70()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel____lazy_storage___mainThreadScheduler;
  if (*(v0 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel____lazy_storage___mainThreadScheduler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel____lazy_storage___mainThreadScheduler);
  }

  else
  {
    v2 = [objc_opt_self() mainThreadScheduler];
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

void sub_1A3470F04(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress;
  v5 = *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
    sub_1A34C9990();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A31EC194(0, qword_1EB0C01D0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1A34CD830();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *sub_1A34710B0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
  sub_1A34C99A0();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1A3471158@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
  sub_1A34C99A0();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1A347121C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable;
  v5 = *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
    sub_1A34C9990();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEC8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1A34CD830();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1A34713B0()
{
  swift_getKeyPath();
  sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
  sub_1A34C99A0();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A347145C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageCancelable);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A3471510()
{
  swift_getKeyPath();
  sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
  sub_1A34C9990();
}

uint64_t sub_1A34715DC()
{
  *(v1 + 64) = v0;
  sub_1A34CD450();
  *(v1 + 72) = sub_1A34CD440();
  v3 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3471674, v3, v2);
}

uint64_t sub_1A3471674()
{
  v1 = v0[8];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
  sub_1A34C99A0();

  v2 = OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable;
  if (!*(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable))
  {
    v3 = v0[8];
    swift_getKeyPath();
    v0[2] = v3;
    sub_1A34C99A0();

    v4 = *(v3 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress);
    if (v4)
    {
      v5 = v0[8];
      v6 = objc_allocWithZone(CNUICoreMapTileGenerator);
      v7 = v4;
      v8 = [v6 init];
      v9 = [v8 tilesForAddress_];

      v10 = [v9 observeOn_];
      swift_unknownObjectRelease();

      sub_1A347121C(v10);
      swift_getKeyPath();
      v0[2] = v5;
      sub_1A34C99A0();

      v11 = *(v1 + v2);
      if (v11)
      {
        v12 = objc_opt_self();
        v13 = swift_allocObject();
        swift_weakInit();
        v0[6] = sub_1A3472598;
        v0[7] = v13;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1A346ED60;
        v0[5] = &block_descriptor_27;
        v14 = _Block_copy(v0 + 2);
        v15 = v11;

        v16 = [v12 observerWithResultBlock_];
        _Block_release(v14);
        v17 = [v15 subscribe_];
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v18 = v0[8];
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      v0[2] = v18;
      sub_1A34C9990();

      swift_unknownObjectRelease();
    }
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1A3471A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34CCE90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34CCED0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EE354(a1, aBlock);
  sub_1A31EC194(0, &qword_1EB0C00D0);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = aBlock[6];
    sub_1A31EC194(0, &qword_1ED854B50);
    v18 = sub_1A34CD750();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1A34725C0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A32A5AB4;
    aBlock[3] = &block_descriptor_163;
    v15 = _Block_copy(aBlock);
    sub_1A34C9010();
    v16 = v13;

    sub_1A34CCEB0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3472550(&qword_1ED854650, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
    sub_1A328B67C();
    sub_1A34CD960();
    v17 = v18;
    MEMORY[0x1A58EEF80](0, v11, v7, v15);
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1A3471D40(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    v5 = sub_1A34CC5C0();
    sub_1A346FC14(v5);
  }

  return result;
}

uint64_t sub_1A3471DA4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel___observationRegistrar;
  v2 = sub_1A34C99E0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1A3471E4C()
{
  v1 = v0;
  v2 = sub_1A34CCE90();
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A34CCED0();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  v8 = sub_1A34CD750();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A3472648;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_167;
  v10 = _Block_copy(aBlock);
  sub_1A34C9010();
  sub_1A34CCEB0();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A3472550(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A328B67C();
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v7, v4, v10);
  _Block_release(v10);

  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);

  v11 = OBJC_IVAR____TtC14ContactsUICore35ContactCardLabeledPropertyViewModel___observationRegistrar;
  v12 = sub_1A34C99E0();
  v13 = *(*(v12 - 8) + 8);
  v13(v1 + v11, v12);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v13(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel___observationRegistrar, v12);
  return v1;
}

uint64_t sub_1A3472200()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
    sub_1A34C99A0();

    v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageCancelable);
    swift_unknownObjectRetain();

    if (v2)
    {
      [v2 cancel];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3472550(&qword_1EB0C14B8, type metadata accessor for ContactCardPostalAddressViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A34723E8()
{
  sub_1A3471E4C();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3472468()
{
  result = sub_1A34C99E0();
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

uint64_t keypath_set_139Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1A3472550(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A34725C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable);
  *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable) = v2;
  v4 = v2;
}

void sub_1A3472608()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress);
  *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress) = v2;
  v4 = v2;
}

uint64_t sub_1A3472650()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageCancelable) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A34726C4()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
  sub_1A34C9010();
}

uint64_t sub_1A3472710()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

uint64_t sub_1A3472750()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_1A3472790()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_1A34727F8()
{
  v0 = type metadata accessor for PhotosSuggestionProvider();

  return sub_1A3463D24(v0, &off_1F162A2D0);
}

uint64_t sub_1A3472828()
{
  result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000012, 0x80000001A3512C50);
  qword_1EB0ED250 = result;
  *algn_1EB0ED258 = v1;
  return result;
}

void sub_1A3472874()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1EB0EDFA8 = v2;
}

id sub_1A34728D8()
{
  v0 = objc_opt_self();
  if ([v0 isAvailableAndAuthorized])
  {
    sub_1A31EC194(0, &qword_1EB0C01B0);
    return sub_1A3374D20();
  }

  else
  {
    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v2 = sub_1A34CA250();
    __swift_project_value_buffer(v2, qword_1EB0ECF90);
    v3 = sub_1A34CA230();
    v4 = sub_1A34CD660();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = [v0 isAvailable];
      _os_log_impl(&dword_1A31E6000, v3, v4, "Process does not have authorization to access photo library, suggestions will not be generated (isAvailable: %{BOOL}d).", v5, 8u);
      MEMORY[0x1A58F1010](v5, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1A3472B88(char a1)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v1 + 48);
  if (v4 && (*(v1 + 40) & 1) == (a1 & 1))
  {

    return v4;
  }

  if (a1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = v2;
  v7 = [v6 fetchSuggestedAssetsOfType_];
  v8 = sub_1A31EC194(0, &qword_1EB0C0218);
  v9 = sub_1A34CD370();

  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = sub_1A34CD9B0();
    if (sub_1A34CD9B0() < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= 6)
    {
      v21 = 6;
    }

    else
    {
      v21 = v14;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = 6;
    }

    result = sub_1A34CD9B0();
    if (result >= v12)
    {
LABEL_12:
      if ((v9 & 0xC000000000000001) != 0)
      {

        if (v12)
        {
          sub_1A34CDAE0();
          if (v12 != 1)
          {
            sub_1A34CDAE0();
            if (v12 != 2)
            {
              sub_1A34CDAE0();
              if (v12 != 3)
              {
                sub_1A34CDAE0();
                if (v12 != 4)
                {
                  sub_1A34CDAE0();
                  if (v12 != 5)
                  {
                    sub_1A34CDAE0();
                  }
                }
              }
            }
          }
        }
      }

      else
      {
      }

      if (v10)
      {
        v8 = sub_1A34CDC30();
        v10 = v15;
        v13 = v16;
        v14 = v17;

        if (v14)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = 0;
        v8 = v9 & 0xFFFFFFFFFFFFFF8;
        v10 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
        v14 = (2 * v12) | 1;
        if (v14)
        {
LABEL_28:
          sub_1A34CDE40();
          swift_unknownObjectRetain_n();
          v19 = swift_dynamicCastClass();
          if (!v19)
          {
            swift_unknownObjectRelease();
            v19 = MEMORY[0x1E69E7CC0];
          }

          v20 = *(v19 + 16);

          if (!__OFSUB__(v14 >> 1, v13))
          {
            if (v20 == (v14 >> 1) - v13)
            {
              v4 = swift_dynamicCastClass();

              swift_unknownObjectRelease();
              if (!v4)
              {
                swift_unknownObjectRelease();
                v4 = MEMORY[0x1E69E7CC0];
              }

              swift_unknownObjectRelease();
              goto LABEL_35;
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          swift_unknownObjectRelease_n();
        }
      }

      sub_1A34A52E0(v8, v10, v13, v14);
      v4 = v18;
      swift_unknownObjectRelease();

LABEL_35:
      *(v1 + 40) = a1 & 1;
      *(v1 + 48) = v4;
      sub_1A34C9010();

      return v4;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 6)
    {
      v12 = 6;
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3472ECC(uint64_t a1)
{
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 2;
  }

  return (v2 == 2) | (*(a1 + 8) ^ v2) & 1u;
}

uint64_t sub_1A3472EFC(uint64_t a1, uint64_t a2)
{
  v3[94] = v2;
  v3[93] = a2;
  v3[92] = a1;
  v4 = type metadata accessor for VisualIdentity(0);
  v3[95] = v4;
  v3[96] = *(v4 - 8);
  v3[97] = swift_task_alloc();
  type metadata accessor for VisualIdentitySuggestionContext(0);
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v5 = sub_1A34CA250();
  v3[104] = v5;
  v3[105] = *(v5 - 8);
  v3[106] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3473088, 0, 0);
}

uint64_t sub_1A3473088()
{
  v71 = v0;
  v1 = v0[92];
  if (*(v1 + 8) != 1)
  {
    if (qword_1EB0C1248 != -1)
    {
      swift_once();
      v1 = v0[92];
    }

    v15 = v0[99];
    v16 = v0[98];
    __swift_project_value_buffer(v0[104], qword_1EB0ECF90);
    sub_1A34755B0(v1, v15);
    sub_1A34755B0(v1, v16);
    v17 = sub_1A34CA230();
    v18 = sub_1A34CD620();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[99];
    v21 = v0[98];
    if (v19)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v70 = v23;
      *v22 = 136315394;
      v24 = [*v20 identifier];
      v25 = sub_1A34CD110();
      v27 = v26;

      sub_1A3475614(v20);
      v28 = sub_1A31EE23C(v25, v27, &v70);

      *(v22 + 4) = v28;
      *(v22 + 12) = 1024;
      LODWORD(v28) = *(v21 + 8);
      sub_1A3475614(v21);
      *(v22 + 14) = v28;
      _os_log_impl(&dword_1A31E6000, v17, v18, "Returning empty photos suggestions since the contact is not the me contact: identifier: %s isMeContact: %{BOOL}d", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1A58F1010](v23, -1, -1);
      MEMORY[0x1A58F1010](v22, -1, -1);
    }

    else
    {
      sub_1A3475614(v0[98]);

      sub_1A3475614(v20);
    }

    goto LABEL_25;
  }

  if (qword_1EB0C1248 != -1)
  {
    swift_once();
  }

  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[93];
  v6 = __swift_project_value_buffer(v4, qword_1EB0ECF90);
  v0[107] = v6;
  (*(v3 + 16))(v2, v6, v4);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v0[108] = sub_1A34C9ED0();

  sub_1A34C9EA0();
  v7 = *v5;
  v8 = v5[1];
  v0[87] = &type metadata for PhotosSuggestionsCacheKey;
  sub_1A34CDA40();
  v9 = sub_1A33C8DFC((v0 + 77), v7, v8);
  sub_1A32F7584((v0 + 77));
  v10 = *(v9 + 16);

  if (v10)
  {
    v0[88] = &type metadata for PhotosSuggestionsCacheKey;
    sub_1A34CDA40();
    v11 = sub_1A33C8DFC((v0 + 82), v7, v8);
    sub_1A32F7584((v0 + 82));

    v12 = sub_1A34CA230();
    v13 = sub_1A34CD630();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = *(v11 + 16);

      _os_log_impl(&dword_1A31E6000, v12, v13, "Returning cached photos suggestions of count: %ld", v14, 0xCu);
      MEMORY[0x1A58F1010](v14, -1, -1);
    }

    else
    {
    }

    sub_1A34C9E80();

    goto LABEL_26;
  }

  v29 = sub_1A3472B88(1);
  v0[109] = v29;
  v30 = v29 >> 62;
  if (v29 >> 62)
  {
    v66 = v29;
    v31 = sub_1A34CD9B0();
    v29 = v66;
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[110] = v31;
  v32 = v0[92];
  if (!v31)
  {
    v39 = v0[101];
    v40 = v0[100];

    sub_1A34755B0(v32, v39);
    sub_1A34755B0(v32, v40);
    v41 = sub_1A34CA230();
    v42 = sub_1A34CD660();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[101];
    v45 = v0[100];
    if (v43)
    {
      v46 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = v68;
      *v46 = 136315394;
      v47 = [*v44 identifier];
      v48 = sub_1A34CD110();
      v50 = v49;

      sub_1A3475614(v44);
      v51 = sub_1A31EE23C(v48, v50, &v70);

      *(v46 + 4) = v51;
      *(v46 + 12) = 1024;
      LODWORD(v50) = *(v45 + 8);
      sub_1A3475614(v45);
      *(v46 + 14) = v50;
      _os_log_impl(&dword_1A31E6000, v41, v42, "Unable to fetch suggested photo assets for contact with identifier: %s isMeContact: %{BOOL}d", v46, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1A58F1010](v68, -1, -1);
      MEMORY[0x1A58F1010](v46, -1, -1);
    }

    else
    {
      sub_1A3475614(v0[100]);

      sub_1A3475614(v44);
    }

    sub_1A34C9E80();

LABEL_25:
    v11 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v53 = v0[1];

    return v53(v11);
  }

  v33 = v29;
  v34 = v0[102];
  sub_1A34755B0(v0[92], v0[103]);
  sub_1A34755B0(v32, v34);
  v35 = sub_1A34CA230();
  v36 = sub_1A34CD660();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v70 = v67;
    *v37 = 134218498;
    if (v30)
    {
      v38 = sub_1A34CD9B0();
    }

    else
    {
      v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v0[103];
    v56 = v0[102];
    *(v37 + 4) = v38;
    *(v37 + 12) = 2080;
    v57 = [*v55 identifier];
    v58 = sub_1A34CD110();
    v60 = v59;

    sub_1A3475614(v55);
    v61 = sub_1A31EE23C(v58, v60, &v70);

    *(v37 + 14) = v61;
    *(v37 + 22) = 1024;
    LODWORD(v60) = *(v56 + 8);
    sub_1A3475614(v56);
    *(v37 + 24) = v60;
    _os_log_impl(&dword_1A31E6000, v35, v36, "Fetched %ld photo suggestions for contact with identifier: %s isMeContact: %{BOOL}d", v37, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x1A58F1010](v69, -1, -1);
    MEMORY[0x1A58F1010](v37, -1, -1);
  }

  else
  {
    v52 = v0[103];
    sub_1A3475614(v0[102]);

    sub_1A3475614(v52);
  }

  if (v31 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[112] = MEMORY[0x1E69E7CC0];
    v0[111] = 0;
    v62 = v0[109];
    if ((v62 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x1A58EF310](0);
    }

    else
    {
      v63 = *(v62 + 32);
    }

    v35 = v63;
    v0[113] = v63;
    if (qword_1EB0C4AF8 == -1)
    {
      goto LABEL_36;
    }
  }

  swift_once();
LABEL_36:
  v64 = *&qword_1EB0EDFA8 * 256.0;
  v0[2] = v0;
  v0[7] = v0 + 89;
  v0[3] = sub_1A3473A0C;
  v65 = swift_continuation_init();
  v0[70] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE98);
  v0[67] = v65;
  v0[63] = MEMORY[0x1E69E9820];
  v0[64] = 1107296256;
  v0[65] = sub_1A3474C38;
  v0[66] = &block_descriptor_28;
  [v35 requestImageWithTargetSize:v0 + 63 completionHandler:v64, v64];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A3473A0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 912) = v1;
  if (v1)
  {
    v2 = sub_1A3474430;
  }

  else
  {
    v2 = sub_1A3473B1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3473B1C()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 712);
  *(v0 + 920) = v2;
  v3 = v2;
  v4 = [v1 assetID];
  v5 = sub_1A34CD110();
  v7 = v6;

  *(v0 + 256) = v3;
  *(v0 + 264) = v3;
  *(v0 + 272) = v5;
  *(v0 + 280) = v7;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 1;
  v8 = v3;
  sub_1A3362D58();
  v9 = *(v0 + 288);
  v10 = *(v0 + 304);
  *(v0 + 200) = v9;
  *(v0 + 216) = v10;
  v11 = *(v0 + 320);
  *(v0 + 232) = v11;
  v12 = *(v0 + 336);
  *(v0 + 248) = v12;
  v13 = *(v0 + 256);
  v14 = *(v0 + 272);
  *(v0 + 168) = v13;
  *(v0 + 184) = v14;
  *(v0 + 160) = v12;
  *(v0 + 112) = v9;
  *(v0 + 128) = v10;
  *(v0 + 144) = v11;
  *(v0 + 80) = v13;
  *(v0 + 96) = v14;
  sub_1A336351C(v0 + 168, v0 + 344);
  sub_1A3363554(v0 + 80);
  v15 = v1;
  v16 = swift_task_alloc();
  *(v0 + 928) = v16;
  *v16 = v0;
  v16[1] = sub_1A3473CA8;
  v17 = *(v0 + 904);

  return sub_1A3383328(0xD00000000000002ELL, 0x80000001A350EED0, 1, v17);
}

uint64_t sub_1A3473CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  *(v7 + 936) = a2;
  *(v7 + 944) = a3;
  *(v7 + 952) = a4;
  *(v7 + 960) = v4;

  if (v4)
  {
    v8 = sub_1A347482C;
  }

  else
  {

    *(v7 + 968) = a1;
    v8 = sub_1A3473DE4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A3473DE4()
{
  v56 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = **(v0 + 736);
  v4 = objc_opt_self();

  v5 = v1;
  v6 = v3;
  v7 = sub_1A3444DEC(v2, v5);
  v8 = sub_1A34CD0E0();
  v9 = [v4 finalizedConfiguration:v7 forExtensionIdentifier:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = sub_1A3444DEC(*(v0 + 944), *(v0 + 952));
  }

  v11 = sub_1A3444A44(v10, 0);
  v13 = v12;
  v14 = (v0 + 568);
  v15 = HIDWORD(v11);
  *(v0 + 432) = v3;
  v16 = v11 & 1;
  *(v0 + 440) = v11 & 1;
  *(v0 + 444) = HIDWORD(v11);
  v18 = v17 & 1;
  *(v0 + 448) = v17 & 1;
  *(v0 + 456) = v12;
  v19 = qword_1EB0C2300;
  v20 = v6;
  v52 = v13;
  v53 = v3;
  if (v19 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 952);
  v21 = *(v0 + 776);
  v22 = *(v0 + 760);
  v23 = *&qword_1EB0ED418;
  *v14 = xmmword_1EB0ED408;
  *(v0 + 584) = v23;
  *(v0 + 600) = xmmword_1EB0ED428;
  v24 = type metadata accessor for LazyPosterSnapshot(0);
  v25 = swift_allocObject();
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  sub_1A34C99D0();
  v26 = swift_allocObject();
  v27 = *(v0 + 584);
  *(v26 + 40) = *v14;
  *(v26 + 16) = v16;
  *(v26 + 20) = v15;
  *(v26 + 24) = v18;
  *(v26 + 32) = v52;
  *(v26 + 56) = v27;
  *(v26 + 72) = *(v0 + 600);
  *(v26 + 88) = v53;
  *(v25 + 16) = &unk_1A34E95B0;
  *(v25 + 24) = v26;
  *(v0 + 488) = v24;
  *(v0 + 496) = &off_1F161E320;

  *(v0 + 464) = v25;
  sub_1A34C8A90();
  v28 = (v21 + v22[7]);
  v28[3] = &type metadata for PhotosAvatarSource;
  v28[4] = &off_1F1622140;
  v29 = swift_allocObject();
  *v28 = v29;
  v30 = *(v0 + 184);
  *(v29 + 16) = *(v0 + 168);
  *(v29 + 32) = v30;
  *(v29 + 96) = *(v0 + 248);
  v31 = *(v0 + 232);
  v32 = *(v0 + 200);
  *(v29 + 64) = *(v0 + 216);
  *(v29 + 80) = v31;
  *(v29 + 48) = v32;
  v33 = (v21 + v22[8]);
  v33[3] = &type metadata for PosterConfigurationSource;
  v33[4] = &off_1F16220A8;
  v34 = swift_allocObject();
  *v33 = v34;
  sub_1A335DA24(v0 + 432, v34 + 16);
  *(v21 + v22[5]) = 0;
  *(v21 + v22[6]) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v0 + 896);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_1A3298DD8(0, v36[2] + 1, 1, *(v0 + 896));
  }

  v38 = v36[2];
  v37 = v36[3];
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1A3298DD8(v37 > 1, v38 + 1, 1, v36);
  }

  v39 = *(v0 + 952);
  v40 = *(v0 + 920);
  v41 = *(v0 + 904);
  v42 = *(v0 + 776);
  v43 = *(v0 + 768);

  sub_1A335D9D0(v0 + 432);
  v36[2] = v38 + 1;
  sub_1A3336E78(v42, v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38);
  v44 = *(v0 + 888) + 1;
  if (v44 == *(v0 + 880))
  {

    *(v0 + 720) = &type metadata for PhotosSuggestionsCacheKey;

    sub_1A34CDA40();
    sub_1A33C8F30(v36, v55);
    sub_1A34C9E80();

    v45 = *(v0 + 8);

    return v45(v36);
  }

  else
  {
    *(v0 + 896) = v36;
    *(v0 + 888) = v44;
    v47 = *(v0 + 872);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v48 = *(v47 + 8 * v44 + 32);
    }

    v49 = v48;
    *(v0 + 904) = v48;
    if (qword_1EB0C4AF8 != -1)
    {
      swift_once();
    }

    v50 = *&qword_1EB0EDFA8 * 256.0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 712;
    *(v0 + 24) = sub_1A3473A0C;
    v51 = swift_continuation_init();
    *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE98);
    *(v0 + 536) = v51;
    *(v0 + 504) = MEMORY[0x1E69E9820];
    *(v0 + 512) = 1107296256;
    *(v0 + 520) = sub_1A3474C38;
    *(v0 + 528) = &block_descriptor_28;
    [v49 requestImageWithTargetSize:v0 + 504 completionHandler:{v50, v50}];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A3474430()
{
  v22 = v0;
  swift_willThrow();
  v1 = *(v0 + 912);
  v2 = v1;
  v3 = sub_1A34CA230();
  v4 = sub_1A34CD640();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 904);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136315138;
    *(v0 + 728) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v9 = sub_1A34CD170();
    v11 = sub_1A31EE23C(v9, v10, v21);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1A31E6000, v3, v4, "Error getting image from asset: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 888) + 1;
  if (v12 == *(v0 + 880))
  {
    v13 = *(v0 + 896);

    *(v0 + 720) = &type metadata for PhotosSuggestionsCacheKey;

    sub_1A34CDA40();
    sub_1A33C8F30(v13, v21);
    sub_1A34C9E80();

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    *(v0 + 888) = v12;
    v16 = *(v0 + 872);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v17 = *(v16 + 8 * v12 + 32);
    }

    v18 = v17;
    *(v0 + 904) = v17;
    if (qword_1EB0C4AF8 != -1)
    {
      swift_once();
    }

    v19 = *&qword_1EB0EDFA8 * 256.0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 712;
    *(v0 + 24) = sub_1A3473A0C;
    v20 = swift_continuation_init();
    *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE98);
    *(v0 + 536) = v20;
    *(v0 + 504) = MEMORY[0x1E69E9820];
    *(v0 + 512) = 1107296256;
    *(v0 + 520) = sub_1A3474C38;
    *(v0 + 528) = &block_descriptor_28;
    [v18 requestImageWithTargetSize:v0 + 504 completionHandler:{v19, v19}];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A347482C()
{
  v23 = v0;
  v1 = *(v0 + 904);

  sub_1A3363554(v0 + 168);
  v2 = *(v0 + 960);
  v3 = v2;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 904);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    *(v0 + 728) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v10 = sub_1A34CD170();
    v12 = sub_1A31EE23C(v10, v11, v22);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error getting image from asset: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v7, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 888) + 1;
  if (v13 == *(v0 + 880))
  {
    v14 = *(v0 + 896);

    *(v0 + 720) = &type metadata for PhotosSuggestionsCacheKey;

    sub_1A34CDA40();
    sub_1A33C8F30(v14, v22);
    sub_1A34C9E80();

    v15 = *(v0 + 8);

    return v15(v14);
  }

  else
  {
    *(v0 + 888) = v13;
    v17 = *(v0 + 872);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v18 = *(v17 + 8 * v13 + 32);
    }

    v19 = v18;
    *(v0 + 904) = v18;
    if (qword_1EB0C4AF8 != -1)
    {
      swift_once();
    }

    v20 = *&qword_1EB0EDFA8 * 256.0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 712;
    *(v0 + 24) = sub_1A3473A0C;
    v21 = swift_continuation_init();
    *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE98);
    *(v0 + 536) = v21;
    *(v0 + 504) = MEMORY[0x1E69E9820];
    *(v0 + 512) = 1107296256;
    *(v0 + 520) = sub_1A3474C38;
    *(v0 + 528) = &block_descriptor_28;
    [v19 requestImageWithTargetSize:v0 + 504 completionHandler:{v20, v20}];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A3474C38(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A3474D10()
{
}

uint64_t sub_1A3474D40()
{
  sub_1A31F08B0(v0 + 16);
  v1 = *(v0 + 32);
  sub_1A34C9010();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3474DE4()
{
  if (qword_1EB0C1D80 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0ED250;

  return v0;
}

uint64_t sub_1A3474E50(uint64_t a1)
{
  v2 = sub_1A3472B88(*(a1 + 8));
  if (v2 >> 62)
  {
    v3 = sub_1A34CD9B0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_1A3466630(v3);
  v5 = *(v1 + 8);

  return v5(v4);
}

uint64_t sub_1A3474EF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A330F6A8;

  return sub_1A3472EFC(a1, a2);
}

uint64_t sub_1A3474FB8()
{
  v1 = *(v0 + 456);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *v1;
  v42 = *(v1 + 80);
  if ((v42 & 1) != 0 || (v7 = [v6 CGImage]) == 0)
  {
    v10 = v6;
  }

  else
  {
    v8 = v7;
    v47.origin.x = v2;
    v47.origin.y = v3;
    v47.size.width = v4;
    v47.size.height = v5;
    v9 = CGImageCreateWithImageInRect(v7, v47);
    if (!v9)
    {
      v9 = v8;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  [v10 size];
  [v10 size];
  [v10 size];
  [v10 size];
  [v10 scale];
  v37 = v10;
  v11 = sub_1A3398A04(&unk_1F161AF00, v10);
  *&v43 = v6;
  *(&v43 + 1) = v6;
  *&v44 = v2;
  *(&v44 + 1) = v3;
  *&v45 = v4;
  *(&v45 + 1) = v5;
  v12 = v6;
  sub_1A3362D58();
  *(v0 + 136) = 0u;
  *(v0 + 152) = v44;
  *(v0 + 168) = v45;
  *(v0 + 184) = v42;
  *(v0 + 104) = v43;
  *(v0 + 120) = 0u;
  *(v0 + 96) = v42;
  *(v0 + 48) = 0u;
  *(v0 + 64) = v44;
  *(v0 + 80) = v45;
  *(v0 + 16) = v43;
  *(v0 + 32) = 0u;
  sub_1A336351C(v0 + 104, v0 + 192);
  sub_1A3363554(v0 + 16);
  v13 = sub_1A3298930(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    *(v13 + 2) = v16;
    v17 = &v13[88 * v15];
    v18 = *(v0 + 120);
    *(v17 + 2) = *(v0 + 104);
    *(v17 + 3) = v18;
    v19 = *(v0 + 136);
    v20 = *(v0 + 152);
    v21 = *(v0 + 168);
    v17[112] = *(v0 + 184);
    *(v17 + 5) = v20;
    *(v17 + 6) = v21;
    *(v17 + 4) = v19;
    if (v11 >> 62)
    {
      break;
    }

    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v11;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_10:
    v22 = 0;
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    v41 = v11 & 0xC000000000000001;
    v39 = v11 + 32;
    v11 = &off_1F161AF28;
    while (1)
    {
      if (v41)
      {
        v23 = MEMORY[0x1A58EF310](v22, v38);
      }

      else
      {
        v14 = *(v40 + 16);
        if (v22 >= v14)
        {
          goto LABEL_21;
        }

        v23 = *(v39 + 8 * v22);
      }

      v24 = v23;
      if (v22 == 9)
      {
        break;
      }

      v25 = *(v11 - 8);
      v26 = *v11;
      *(v0 + 280) = v12;
      *(v0 + 288) = v23;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0;
      *(v0 + 312) = v25;
      *(v0 + 320) = v26;
      *(v0 + 328) = v2;
      *(v0 + 336) = v3;
      *(v0 + 344) = v4;
      *(v0 + 352) = v5;
      *(v0 + 360) = v42;
      *(v0 + 192) = v12;
      *(v0 + 200) = v23;
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = v25;
      *(v0 + 232) = v26;
      *(v0 + 240) = v2;
      *(v0 + 248) = v3;
      *(v0 + 256) = v4;
      *(v0 + 264) = v5;
      *(v0 + 272) = v42;
      v27 = v12;
      v28 = v24;

      sub_1A336351C(v0 + 280, v0 + 368);
      sub_1A3363554(v0 + 192);
      v15 = *(v13 + 2);
      v29 = *(v13 + 3);
      if (v15 >= v29 >> 1)
      {
        v13 = sub_1A3298930((v29 > 1), v15 + 1, 1, v13);
      }

      ++v22;

      *(v13 + 2) = v15 + 1;
      v30 = &v13[88 * v15];
      v31 = *(v0 + 296);
      *(v30 + 2) = *(v0 + 280);
      *(v30 + 3) = v31;
      v32 = *(v0 + 312);
      v33 = *(v0 + 328);
      v34 = *(v0 + 344);
      v30[112] = *(v0 + 360);
      *(v30 + 5) = v33;
      *(v30 + 6) = v34;
      *(v30 + 4) = v32;
      v11 += 16;
      if (v16 == v22)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v13 = sub_1A3298930((v14 > 1), v16, 1, v13);
  }

  v16 = sub_1A34CD9B0();
  v38 = v11;
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_24:

  v35 = *(v0 + 8);

  return v35(v13);
}

uint64_t sub_1A3475404()
{
  v2 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = *(v0 + 80);
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  v4[1] = sub_1A34754B4;

  return sub_1A3474F98();
}

uint64_t sub_1A34754B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A34755B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentitySuggestionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3475614(uint64_t a1)
{
  v2 = type metadata accessor for VisualIdentitySuggestionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A34756A0()
{
  result = qword_1EB0CBEA0;
  if (!qword_1EB0CBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBEA0);
  }

  return result;
}

unint64_t sub_1A34756F4(uint64_t a1)
{
  result = sub_1A347571C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A347571C()
{
  result = qword_1EB0CBEA8;
  if (!qword_1EB0CBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBEA8);
  }

  return result;
}

uint64_t sub_1A3475770@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1A31EE004(v2, v3);
}

uint64_t sub_1A3475784(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1A31EE4BC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (swift_dynamicCast())
  {
    if (v2 == v8 && v3 == v9)
    {

      sub_1A31ECC9C(v10, v11);
      v6 = 0;
    }

    else
    {
      v5 = sub_1A34CDE30();

      sub_1A31ECC9C(v10, v11);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1A3475868@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[6];
  v17 = a1[5];
  v18 = v3;
  v4 = a1[4];
  v19 = *(a1 + 14);
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  v6 = a1[3];
  v14 = a1[2];
  v15 = v6;
  v16 = v4;
  if (v3 >> 62 == 1)
  {
    v7 = *(&v13 + 1);
    v8 = v13;
    v9 = v12;
    v10 = BYTE8(v12);
    sub_1A32891C8(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
    sub_1A31EE004(v12, BYTE8(v12));
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  result = sub_1A3288E28(&v12);
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1A3475944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1A347598C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3475A08(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = &v1[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec];
  v6 = *&v1[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec];
  v7 = *&v1[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec + 8];
  *v5 = v3;
  *(v5 + 1) = v4;
  v8 = v3 == v6 && v4 == v7;
  if (!v8 && (sub_1A34CDE30() & 1) == 0)
  {
    [v1 setNeedsDisplay];
  }
}

id sub_1A3475A84(void *a1)
{
  v2 = a1[1];
  v3 = &v1[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec];
  *v3 = *a1;
  *(v3 + 1) = v2;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EmojiLayer();
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = [objc_opt_self() standardPreferences];
  v6 = sub_1A34CD0E0();
  v7 = [v5 userHasOptedInToPreference_];

  if (v7)
  {
    v8 = [objc_opt_self() orangeColor];
    v9 = [v8 CGColor];

    [v4 setBackgroundColor_];
  }

  v10 = v4;
  [v10 setOpaque_];
  [v10 setRendersAsynchronously_];
  [v10 setNeedsDisplayOnBoundsChange_];

  [v10 setNeedsDisplay];
  return v10;
}

uint64_t sub_1A3475BF8(void *a1)
{
  sub_1A31EE354(a1, v18);
  v3 = type metadata accessor for EmojiLayer();
  if (swift_dynamicCast())
  {
    v4 = v17;
    v5 = *&v17[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec + 8];
    v6 = &v1[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec];
    *v6 = *&v17[OBJC_IVAR____TtC14ContactsUICore10EmojiLayer_spec];
    *(v6 + 1) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    v7 = sub_1A34CDE10();
    v16.receiver = v1;
    v16.super_class = v3;
    v8 = objc_msgSendSuper2(&v16, sel_initWithLayer_, v7);
    swift_unknownObjectRelease();
    v9 = [objc_opt_self() standardPreferences];
    v10 = sub_1A34CD0E0();
    v11 = [v9 userHasOptedInToPreference_];

    if (v11)
    {
      v12 = [objc_opt_self() orangeColor];
      v13 = [v12 CGColor];

      [v8 setBackgroundColor_];
    }

    v14 = v8;
    [v14 setOpaque_];
    [v14 setRendersAsynchronously_];
    [v14 setNeedsDisplayOnBoundsChange_];

    [v14 setNeedsDisplay];
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v14;
  }

  else
  {
    result = sub_1A34CDC10();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3475EF8(void *a1)
{
  v3 = sub_1A34CB0B0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = [objc_opt_self() standardPreferences];
  v5 = sub_1A34CD0E0();
  v6 = [v4 userHasOptedInToPreference_];

  if (v6)
  {
    [v1 setBackgroundColor_];
  }

  v7 = a1;
  sub_1A34CB0A0();
  sub_1A34CAB00();
  [v1 bounds];
  v9 = v8;
  sub_1A328A95C();

  v10 = sub_1A34CBE30();
  v12 = v11;
  v14 = v13;
  sub_1A347624C(v9 * 0.5);
  v15 = sub_1A34CBE10();
  v17 = v16;
  v19 = v18;

  sub_1A328A9B0(v10, v12, v14 & 1);

  sub_1A34CCE10();
  sub_1A34CAB20();
  sub_1A328A9B0(v15, v17, v19 & 1);
}

id sub_1A34761D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A347624C(CGFloat a1)
{
  v2 = [objc_opt_self() systemFontOfSize_];
  v3 = [v2 fontDescriptor];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5350);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E6965778];
  *(inited + 16) = xmmword_1A34DAA10;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = 0;
  v7 = v6;
  sub_1A33E9468(inited);
  swift_setDeallocating();
  sub_1A328AA94(inited + 32);
  type metadata accessor for CFString(0);
  sub_1A3476398();
  v8 = sub_1A34CCF70();

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v3, v8);

  CTFontCreateWithFontDescriptor(CopyWithAttributes, a1, 0);
  v10 = sub_1A34CBC20();

  return v10;
}

unint64_t sub_1A3476398()
{
  result = qword_1ED854618;
  if (!qword_1ED854618)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854618);
  }

  return result;
}

uint64_t sub_1A34763F0(void *a1)
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  if ([a1 selectedColor])
  {
    sub_1A34CC440();
  }

  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBEC0);
  sub_1A34CC910();
}

id sub_1A3476588()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ColorWell.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3476644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A347668C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A34766E8(void *a1)
{
  v2 = v1;
  v16 = *(v1 + 2);
  if (*(&v16 + 1))
  {
    v4 = sub_1A34CD0E0();
  }

  else
  {
    v4 = 0;
  }

  [a1 setTitle_];

  [a1 setSupportsAlpha_];
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v13[0] = *v2;
  v13[1] = v5;
  v13[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBEC0);
  MEMORY[0x1A58EE120](&v15, v8);
  v9 = v15;
  if (v15)
  {
    sub_1A31EC930();
    v9 = sub_1A34CD800();
  }

  [a1 setSelectedColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBEC8);
  sub_1A34CB810();
  v10 = &v12[OBJC_IVAR____TtCV14ContactsUICore9ColorWell11Coordinator_parent];
  v14 = v6;
  v15 = v7;
  v11 = *(v2 + 1);
  *v10 = *v2;
  *(v10 + 1) = v11;
  *(v10 + 2) = *(v2 + 2);

  sub_1A330066C(&v14, v13);
  sub_1A34C9010();
  sub_1A328D790(&v15, v13, &qword_1EB0CB810);
  sub_1A328D790(&v16, v13, &qword_1EB0C5A80);
}

id sub_1A34768A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC8A8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBEC8);
  sub_1A34CB810();
  [v0 addTarget:v2 action:sel_colorChanged_ forControlEvents:4096];

  return v0;
}

id sub_1A3476938@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v8 = v1[4];
  v7 = v1[5];
  v9 = type metadata accessor for ColorWell.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV14ContactsUICore9ColorWell11Coordinator_parent];
  *v11 = v3;
  *(v11 + 1) = v4;
  *(v11 + 2) = v5;
  v11[24] = v6;
  *(v11 + 4) = v8;
  *(v11 + 5) = v7;
  v13.receiver = v10;
  v13.super_class = v9;
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();

  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A34769EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3476AE0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A3476A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3476AE0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3476AB4()
{
  sub_1A3476AE0();
  sub_1A34CB3A0();
  __break(1u);
}

unint64_t sub_1A3476AE0()
{
  result = qword_1EB0CBED0;
  if (!qword_1EB0CBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBED0);
  }

  return result;
}

id sub_1A3476B34()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    [v4 setClipsToBounds_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A3476BDC()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___portalView;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___portalView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___portalView);
  }

  else
  {
    v4 = sub_1A3476C40();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A3476C40()
{
  type metadata accessor for PosterPortalView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_1A3476B34();
  v2 = [v1 layer];

  v3 = v0;
  v4 = [v3 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    [v5 setSourceLayer_];

    [v3 setClipsToBounds_];
    return v3;
  }

  else
  {

    result = sub_1A34CDC10();
    __break(1u);
  }

  return result;
}

id sub_1A3476D70(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___portalView] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore15PosterImageView_contentOffset] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PosterImageView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_1A3476B34();
  [v9 addSubview_];

  v11 = sub_1A3476BDC();
  [v9 addSubview_];

  return v9;
}

id sub_1A3476E7C(void *a1)
{
  *&v1[OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___portalView] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15PosterImageView_contentOffset] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PosterImageView();
  v3 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_1A3476B34();
    [v5 addSubview_];

    v7 = sub_1A3476BDC();
    [v5 addSubview_];

    a1 = v7;
  }

  return v4;
}

void sub_1A3476F78()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for PosterImageView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = sub_1A3476B34();
  v2 = [v1 image];

  if (v2)
  {
    [v2 size];
    [v0 bounds];
    v3 = OBJC_IVAR____TtC14ContactsUICore15PosterImageView_contentOffset;
    [v2 size];
    v5 = v4;
    v7 = v6;
    [v0 bounds];
    v10 = sub_1A3477278(v5, v7, v8, v9, *&v0[v3]);
    v11 = OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView;
    [*&v0[OBJC_IVAR____TtC14ContactsUICore15PosterImageView____lazy_storage___imageView] setFrame_];
    [v0 bounds];
    MaxY = CGRectGetMaxY(v21);
    [*&v0[v11] frame];
    v13 = MaxY - CGRectGetMaxY(v22);
    [v0 bounds];
    v14 = v13 / CGRectGetMaxY(v23) + -0.167;
    [v0 bounds];
    v15 = CGRectGetMaxY(v24);
    [v0 bounds];
    v16 = CGRectGetMaxY(v25);
    v17 = 0.0;
    if (v14 < 0.0)
    {
      v17 = -v14;
    }

    v18 = v15 + v17 * v16;
    v19 = sub_1A3476BDC();
    [v0 bounds];
    v27.size.width = CGRectGetWidth(v26);
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.height = v18;
    v28 = CGRectIntegral(v27);
    [v19 setFrame_];
  }
}

id sub_1A34771D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A3477278(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 * -0.167;
  if (a4 * -0.167 < a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4 * -0.167;
  }

  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = (a4 - v5) / (a2 * 0.167 + a2);
  if (a3 / a1 > v7)
  {
    v7 = a3 / a1;
  }

  return (v7 * a1 - a3) * -0.5;
}

uint64_t type metadata accessor for ContactCardGeminiPicker()
{
  result = qword_1EB0C20F8;
  if (!qword_1EB0C20F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A347737C()
{
  sub_1A3477400();
  if (v0 <= 0x3F)
  {
    sub_1A3477458();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3477400()
{
  if (!qword_1EB0C1158)
  {
    sub_1A34CA7A0();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1158);
    }
  }
}

void sub_1A3477458()
{
  if (!qword_1EB0C0FD8)
  {
    type metadata accessor for ContactCardGeminiViewModel();
    sub_1A347BB08(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
    v0 = sub_1A34CAA10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0FD8);
    }
  }
}

uint64_t sub_1A3477508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v3 = sub_1A34CB490();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF20);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF38);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF10);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF40);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBEF8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = &v29 - v17;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF48);
  sub_1A3284D0C(&qword_1EB0CBF50, &qword_1EB0CBF48);
  sub_1A34CBC50();
  sub_1A34CB480();
  v18 = sub_1A3284D0C(&qword_1EB0CBF28, &qword_1EB0CBF20);
  v19 = MEMORY[0x1E697C750];
  sub_1A34CC3F0();
  (*(v34 + 8))(v5, v3);
  (*(v30 + 8))(v8, v6);
  v43 = v6;
  v44 = v3;
  v45 = v18;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v31;
  sub_1A34CC1F0();
  (*(v33 + 8))(v10, v20);
  v43 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001BLL, 0x80000001A3512DD0);
  v44 = v21;
  v22 = sub_1A347AE14();
  v23 = sub_1A328A95C();
  v24 = MEMORY[0x1E69E6158];
  v25 = v36;
  sub_1A34CC040();

  sub_1A3288FDC(v12, &qword_1EB0CBF10);
  v43 = v25;
  v44 = v24;
  v45 = v22;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  v27 = v37;
  sub_1A34CC1F0();
  (*(v38 + 8))(v16, v27);
  v41 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF00);
  sub_1A347AD00();
  sub_1A3284D0C(&qword_1EB0CBF30, &qword_1EB0CBF00);
  sub_1A34CC380();
  return sub_1A3288FDC(v26, &qword_1EB0CBEF8);
}

uint64_t sub_1A3477B2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF68);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF70);
  v30 = *(v8 - 8);
  v9 = v30;
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v38 = a1;
  sub_1A3478778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF78);
  sub_1A347B444();
  sub_1A336FB70();
  v29 = v14;
  sub_1A34CCA10();
  v37 = a1;
  sub_1A3479E18();
  sub_1A3479F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBFC8);
  sub_1A347B74C();
  v15 = v32;
  sub_1A34CC9F0();
  v16 = *(v9 + 16);
  v28 = v11;
  v17 = v14;
  v18 = v31;
  v16(v11, v17, v31);
  v19 = *(v36 + 16);
  v20 = v33;
  v21 = v34;
  v19(v33, v15, v34);
  v22 = v35;
  v16(v35, v11, v18);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC020);
  v19(&v22[*(v23 + 48)], v20, v21);
  v24 = *(v36 + 8);
  v24(v15, v21);
  v25 = *(v30 + 8);
  v25(v29, v18);
  v24(v20, v21);
  return (v25)(v28, v18);
}

uint64_t sub_1A3477F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1A34CB7E0();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactCardGeminiPicker();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF90);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF88);
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC070);
  v15 = *(v14 - 8);
  v30 = v14;
  v31 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF78);
  MEMORY[0x1EEE9AC00](v28);
  v19 = &v27 - v18;
  *v10 = sub_1A34CB110();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC078);
  sub_1A34783E8(&v10[*(v20 + 44)]);
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBFA8) + 36)] = 0;
  sub_1A347AF80(a1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_1A347AFE4(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = sub_1A347B580();
  sub_1A34CBF50();

  sub_1A3288FDC(v10, &qword_1EB0CBF90);
  sub_1A34CB7D0();
  v35 = v8;
  v36 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A34CC140();
  (*(v32 + 8))(v5, v33);
  (*(v29 + 8))(v13, v11);
  v35 = v11;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  sub_1A34CC1F0();
  (*(v31 + 8))(v17, v25);
  sub_1A34CAC20();
  return sub_1A3288FDC(v19, &qword_1EB0CBF78);
}

uint64_t sub_1A34783E8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC048);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19[-v6];
  v22 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000025, 0x80000001A3512F60);
  v23 = v8;
  sub_1A328A95C();
  v9 = sub_1A34CBE30();
  v11 = v10;
  v20 = v12;
  v21 = v13;
  v14 = sub_1A34CC5E0();
  type metadata accessor for ContactCardGeminiPicker();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if ((v23 & 1) != 0 || v22)
  {
    v15 = sub_1A34CC4E0();
  }

  else
  {
    v15 = sub_1A34CC4A0();
  }

  v22 = v14;
  v23 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65D0);
  sub_1A32D3F40();
  sub_1A34CC0F0();

  sub_1A328D790(v7, v4, &qword_1EB0CC048);
  *a1 = v9;
  *(a1 + 8) = v11;
  v16 = v20 & 1;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC080);
  sub_1A328D790(v4, a1 + *(v17 + 64), &qword_1EB0CC048);
  sub_1A3285BB4(v9, v11, v16);

  sub_1A3288FDC(v7, &qword_1EB0CC048);
  sub_1A3288FDC(v4, &qword_1EB0CC048);
  sub_1A328A9B0(v9, v11, v16);
}

uint64_t sub_1A34786F4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ContactCardGeminiPicker() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1A34CA380();
}

uint64_t sub_1A3478778()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000026, 0x80000001A3512EF0);
  sub_1A328A95C();
  v0 = sub_1A34CBE30();
  v2 = v1;
  v4 = v3 & 1;
  sub_1A34CC1F0();
  sub_1A328A9B0(v0, v2, v4);
}

uint64_t sub_1A3478864(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardGeminiPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v5 = *(v9[0] + 16);

  if (v5)
  {
    v9[0] = 1;
    v9[1] = v5;
    swift_getKeyPath();
    sub_1A347AF80(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1A347AFE4(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC028);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBFE0);
    sub_1A347BBD0();
    sub_1A347B7D0();
    return sub_1A34CC9C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3478A50(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v5 = sub_1A34CB7E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactCardGeminiPicker();
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v9;
  v70 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1A34CAD20();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC000);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v51 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBFF0);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v51 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBFE8);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v51 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC038);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBFE0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - v20;
  v22 = *a1;
  v23 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v55 = v19;
  v56 = v21;
  v58 = v6;
  v57 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v23 < *(v76[0] + 16))
  {
    v24 = v76[0] + 48 * v23;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);
    v54 = v5;
    v52 = v15;
    v28 = *(v24 + 48);
    v27 = *(v24 + 56);
    v29 = *(v24 + 64);
    v30 = *(v24 + 72);
    v53 = v26;

    v31 = v29;

    v76[0] = v25;
    v76[1] = v26;
    v76[2] = v28;
    v76[3] = v27;
    v76[4] = v31;
    v32 = v31;
    v77 = v30;
    *v13 = sub_1A34CB110();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC040);
    v34 = v57;
    v35 = v22;
    sub_1A3479228(v76, v22, &v13[*(v33 + 44)]);
    v13[*(v59 + 36)] = 0;
    sub_1A34CAD10();
    sub_1A347BA24();
    sub_1A347BB08(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    v36 = v52;
    v37 = v61;
    sub_1A34CBEA0();
    (*(v60 + 8))(v11, v37);
    sub_1A3288FDC(v13, &qword_1EB0CC000);
    v38 = v70;
    sub_1A347AF80(v34, v70);
    v39 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v40 = (v67 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1A347AFE4(v38, v41 + v39);
    *(v41 + v40) = v35;
    v42 = sub_1A347B90C();
    v44 = v62;
    v43 = v63;
    sub_1A34CBF50();

    sub_1A3288FDC(v36, &qword_1EB0CBFF0);
    v45 = v73;
    sub_1A34CB7D0();
    v74 = v43;
    v75 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v64;
    v48 = v69;
    sub_1A34CC140();
    (*(v58 + 8))(v45, v54);
    (*(v65 + 8))(v44, v48);
    v74 = v48;
    v75 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v49 = v56;
    v50 = v71;
    sub_1A34CC1F0();
    (*(v68 + 8))(v47, v50);
    sub_1A34CAC20();

    sub_1A3288FDC(v49, &qword_1EB0CBFE0);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A3479228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC048);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  v24 = sub_1A34CB290();
  LOBYTE(v29) = 1;
  sub_1A347965C(a1, &v27);
  v36 = v28[3];
  v37 = v28[4];
  v38 = v28[5];
  v39 = *&v28[6];
  v32 = v27;
  v33 = v28[0];
  v34 = v28[1];
  v35 = v28[2];
  v40[0] = v27;
  v40[1] = v28[0];
  v40[2] = v28[1];
  v40[3] = v28[2];
  v40[4] = v28[3];
  v40[5] = v28[4];
  v40[6] = v28[5];
  v41 = *&v28[6];
  sub_1A328D790(&v32, &v25, &qword_1EB0CC050);
  sub_1A3288FDC(v40, &qword_1EB0CC050);
  *(&v31[4] + 7) = v36;
  *(&v31[5] + 7) = v37;
  *(&v31[6] + 7) = v38;
  *(v31 + 7) = v32;
  *(&v31[1] + 7) = v33;
  *(&v31[2] + 7) = v34;
  *(&v31[7] + 7) = v39;
  *(&v31[3] + 7) = v35;
  v23 = v29;
  v12 = sub_1A34CC5E0();
  type metadata accessor for ContactCardGeminiPicker();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if ((BYTE8(v27) & 1) != 0 || v27 != a2)
  {
    v13 = sub_1A34CC4E0();
  }

  else
  {
    v13 = sub_1A34CC4A0();
  }

  v29 = v12;
  v30 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65D0);
  sub_1A32D3F40();
  sub_1A34CC0F0();

  sub_1A328D790(v11, v8, &qword_1EB0CC048);
  v14 = v24;
  v25 = v24;
  v15 = v23;
  LOBYTE(v26[0]) = v23;
  *(v26 + 1) = v31[0];
  *(&v26[1] + 1) = v31[1];
  *(&v26[5] + 1) = v31[5];
  *(&v26[4] + 1) = v31[4];
  *(&v26[6] + 1) = v31[6];
  v26[7] = *(&v31[6] + 15);
  *(&v26[2] + 1) = v31[2];
  *(&v26[3] + 1) = v31[3];
  v16 = v26[6];
  *(a3 + 96) = v26[5];
  *(a3 + 112) = v16;
  *(a3 + 128) = v26[7];
  v17 = v26[2];
  *(a3 + 32) = v26[1];
  *(a3 + 48) = v17;
  v18 = v26[4];
  *(a3 + 64) = v26[3];
  *(a3 + 80) = v18;
  v19 = v26[0];
  *a3 = v25;
  *(a3 + 16) = v19;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC058);
  sub_1A328D790(v8, a3 + *(v20 + 64), &qword_1EB0CC048);
  sub_1A328D790(&v25, &v27, &qword_1EB0CC060);
  sub_1A3288FDC(v11, &qword_1EB0CC048);
  sub_1A3288FDC(v8, &qword_1EB0CC048);
  *(&v28[4] + 1) = v31[4];
  *(&v28[5] + 1) = v31[5];
  *(&v28[6] + 1) = v31[6];
  v28[7] = *(&v31[6] + 15);
  *(v28 + 1) = v31[0];
  *(&v28[1] + 1) = v31[1];
  *(&v28[2] + 1) = v31[2];
  v27 = v14;
  LOBYTE(v28[0]) = v15;
  *(&v28[3] + 1) = v31[3];
  return sub_1A3288FDC(&v27, &qword_1EB0CC060);
}

uint64_t sub_1A347965C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_1A34CBC10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34CB110();
  LOBYTE(v60) = 1;
  sub_1A3479B48(a1, v68);
  *&v67[7] = v68[0];
  *&v67[23] = v68[1];
  *&v67[39] = v68[2];
  *&v67[55] = v68[3];
  LODWORD(v12) = v60;
  v13 = [*(a1 + 32) handle];
  if (v13 && (v14 = v13, v51 = v8, v15 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_], v14, v16 = objc_msgSend(v15, sel_formattedInternationalStringValue), v15, v16))
  {
    v17 = sub_1A34CD110();
    v49 = v12;
    v19 = v18;

    v60 = v17;
    v61 = v19;
    sub_1A328A95C();
    v20 = sub_1A34CBE30();
    v47 = v21;
    v48 = v20;
    v23 = v22;
    v24 = v51;
    (*(v51 + 104))(v10, *MEMORY[0x1E6980EF0], v7);
    v25 = sub_1A34CBB40();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_1A34CBBA0();
    v50 = v11;
    sub_1A3288FDC(v6, &qword_1EB0C86B8);
    (*(v24 + 8))(v10, v7);
    v27 = v47;
    v26 = v48;
    v51 = sub_1A34CBE10();
    v46 = v28;
    LOBYTE(v19) = v29;

    sub_1A328A9B0(v26, v27, v23 & 1);

    v30 = [objc_opt_self() systemGrayColor];
    v48 = sub_1A34CC440();
    v60 = v48;
    v31 = v19;
    v12 = v51;
    v32 = v46;
    v33 = sub_1A34CBDF0();
    v35 = v34;
    LODWORD(v47) = v36;
    v38 = v37;
    v39 = v12;
    LOBYTE(v12) = v49;
    sub_1A328A9B0(v39, v32, v31 & 1);

    v40 = v47 & 1;
    v11 = v50;
    sub_1A3285BB4(v33, v35, v47 & 1);
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v40 = 0;
    v38 = 0;
  }

  v52[0] = v11;
  v52[1] = 0;
  v53[0] = v12;
  *&v53[1] = *v67;
  *&v53[17] = *&v67[16];
  *&v53[33] = *&v67[32];
  *&v53[49] = *&v67[48];
  *&v53[64] = *&v67[63];
  v54 = v11;
  v55 = *v53;
  v59 = *&v67[63];
  v57 = *&v53[32];
  v58 = *&v53[48];
  v56 = *&v53[16];
  sub_1A328D790(v52, &v60, &qword_1EB0CC068);
  sub_1A334071C(v33, v35, v40, v38);
  sub_1A3340760(v33, v35, v40, v38);
  v41 = v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v41;
  *(a2 + 64) = v58;
  v42 = v59;
  v43 = v55;
  *a2 = v54;
  *(a2 + 16) = v43;
  *(a2 + 80) = v42;
  *(a2 + 88) = v33;
  *(a2 + 96) = v35;
  *(a2 + 104) = v40;
  *(a2 + 112) = v38;
  sub_1A3340760(v33, v35, v40, v38);
  v60 = v11;
  v61 = 0;
  v62 = v12;
  v64 = *&v67[16];
  v65 = *&v67[32];
  *v66 = *&v67[48];
  *&v66[15] = *&v67[63];
  v63 = *v67;
  return sub_1A3288FDC(&v60, &qword_1EB0CC068);
}

uint64_t sub_1A3479B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34C93B0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  v8 = a1[3];
  v9 = [objc_opt_self() systemMidGrayColor];
  sub_1A33328A8(v9, v7, v8, v6);

  v10 = sub_1A34CBE20();
  v12 = v11;
  v14 = v13;
  if (qword_1EB0C1E10 != -1)
  {
    swift_once();
  }

  v33 = qword_1EB0ED2C0;
  sub_1A34C9010();
  v15 = sub_1A34CBDF0();
  v17 = v16;
  HIDWORD(v31) = v18;
  v20 = v19;
  sub_1A328A9B0(v10, v12, v14 & 1);

  v21 = *a1;
  v22 = a1[1];
  v33 = v21;
  v34 = v22;
  sub_1A328A95C();

  v23 = sub_1A34CBE30();
  v25 = v24;
  v26 = BYTE4(v31) & 1;
  v32 = BYTE4(v31) & 1;
  LOBYTE(v33) = BYTE4(v31) & 1;
  v28 = v27 & 1;
  v35 = v27 & 1;
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v26;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  sub_1A3285BB4(v15, v17, v26);

  sub_1A3285BB4(v23, v25, v28);

  sub_1A328A9B0(v23, v25, v28);

  sub_1A328A9B0(v15, v17, v32);
}

uint64_t sub_1A3479D90(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ContactCardGeminiPicker() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1A34CA380();
}

uint64_t sub_1A3479E18()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000027, 0x80000001A3512EA0);
  sub_1A328A95C();
  v0 = sub_1A34CBE30();
  v2 = v1;
  v4 = v3 & 1;
  sub_1A34CC1F0();
  sub_1A328A9B0(v0, v2, v4);
}

uint64_t sub_1A3479F04()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000027, 0x80000001A3512E50);
  sub_1A328A95C();
  v0 = sub_1A34CBE30();
  v2 = v1;
  v4 = v3 & 1;
  sub_1A34CC1F0();
  sub_1A328A9B0(v0, v2, v4);
}

uint64_t sub_1A3479FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF58);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - v4;
  v6 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBF60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  sub_1A34CB430();
  v18[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DB0);
  sub_1A32B5314();
  sub_1A34CA680();
  sub_1A34CB440();
  v18[4] = a1;
  sub_1A34CA680();
  v14 = *(v3 + 48);
  v15 = *(v8 + 16);
  v15(v5, v13, v7);
  v15(&v5[v14], v10, v7);
  sub_1A34CB2C0();
  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

uint64_t sub_1A347A280(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardGeminiPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v13[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4C45434E4143, 0xE600000000000000);
  v13[1] = v9;
  sub_1A347AF80(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1A347AFE4(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1A328A95C();
  sub_1A34CC7C0();
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  sub_1A34CC1F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A347A4C8(uint64_t a1)
{
  v15 = sub_1A34CB0B0();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_1A34CA7A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C8080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1A34CD650();
    v12 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_1A34CA790();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A347A744(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardGeminiPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v13[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1162760004, 0xE400000000000000);
  v13[1] = v9;
  sub_1A347AF80(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1A347AFE4(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1A328A95C();
  sub_1A34CC7C0();
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  sub_1A34CC1F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A347A988()
{
  v0 = sub_1A34CA7A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactCardGeminiPicker();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if (v10)
  {
    goto LABEL_9;
  }

  v4 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v5 = *(v9 + 16);

  if (v5 < v4)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    v8 = 0;
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if (v4 <= *(v9 + 16))
  {
    v7 = *(v9 + 48 * v4 + 16);

    v8 = v7;

LABEL_8:
    sub_1A3429114(v8);

LABEL_9:
    sub_1A3454878(v3);
    sub_1A34CA790();
    return (*(v1 + 8))(v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A347ABE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBEF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF00);
  sub_1A347AD00();
  sub_1A3284D0C(&qword_1EB0CBF30, &qword_1EB0CBF00);
  swift_getOpaqueTypeConformance2();
  return sub_1A34CAC40();
}

unint64_t sub_1A347AD00()
{
  result = qword_1EB0CBF08;
  if (!qword_1EB0CBF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF10);
    sub_1A347AE14();
    sub_1A328A95C();
    swift_getOpaqueTypeConformance2();
    sub_1A347BB08(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBF08);
  }

  return result;
}

unint64_t sub_1A347AE14()
{
  result = qword_1EB0CBF18;
  if (!qword_1EB0CBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF20);
    sub_1A34CB490();
    sub_1A3284D0C(&qword_1EB0CBF28, &qword_1EB0CBF20);
    swift_getOpaqueTypeConformance2();
    sub_1A347BB08(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBF18);
  }

  return result;
}

uint64_t sub_1A347AF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardGeminiPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A347AFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardGeminiPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A347B060@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0A0);
  v20 = *(v2 - 8);
  v3 = v20;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v21 = *(v6 - 8);
  v7 = v21;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1A34CB1A0();
  sub_1A34CC7B0();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v14 = *(v3 + 16);
  v15 = v2;
  v14(v5, v22, v2);
  v16 = v23;
  v13(v23, v9, v6);
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0A8) + 48)];
  v14(v17, v5, v15);
  v18 = *(v21 + 8);
  v18(v12, v6);
  (*(v20 + 8))(v5, v15);
  return (v18)(v9, v6);
}

uint64_t sub_1A347B2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1A34CCC80();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC098);
  return sub_1A347B060(a1, a2 + *(v5 + 44));
}

uint64_t sub_1A347B32C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  *a1 = v3;
  return result;
}

uint64_t sub_1A347B3AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1A34CA380();
}

unint64_t sub_1A347B444()
{
  result = qword_1EB0CBF80;
  if (!qword_1EB0CBF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF90);
    sub_1A347B580();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A347BB08(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBF80);
  }

  return result;
}

unint64_t sub_1A347B580()
{
  result = qword_1EB0CBF98;
  if (!qword_1EB0CBF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBF90);
    sub_1A347B60C();
    sub_1A347B6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBF98);
  }

  return result;
}

unint64_t sub_1A347B60C()
{
  result = qword_1EB0CBFA0;
  if (!qword_1EB0CBFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBFA8);
    sub_1A3284D0C(&qword_1EB0CBFB0, &qword_1EB0CBFB8);
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBFA0);
  }

  return result;
}

unint64_t sub_1A347B6F0()
{
  result = qword_1EB0CBFC0;
  if (!qword_1EB0CBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBFC0);
  }

  return result;
}

unint64_t sub_1A347B74C()
{
  result = qword_1EB0CBFD0;
  if (!qword_1EB0CBFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBFC8);
    sub_1A347B7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBFD0);
  }

  return result;
}

unint64_t sub_1A347B7D0()
{
  result = qword_1EB0CBFD8;
  if (!qword_1EB0CBFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBFE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBFF0);
    sub_1A347B90C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A347BB08(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBFD8);
  }

  return result;
}

unint64_t sub_1A347B90C()
{
  result = qword_1EB0CBFF8;
  if (!qword_1EB0CBFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC000);
    sub_1A34CAD20();
    sub_1A347BA24();
    sub_1A347BB08(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A347B6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBFF8);
  }

  return result;
}

unint64_t sub_1A347BA24()
{
  result = qword_1EB0CC008;
  if (!qword_1EB0CC008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC000);
    sub_1A3284D0C(&qword_1EB0CC010, &qword_1EB0CC018);
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC008);
  }

  return result;
}

uint64_t sub_1A347BB08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A347BB50(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardGeminiPicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A3478A50(a1, v6, a2);
}

unint64_t sub_1A347BBD0()
{
  result = qword_1EB0CC030;
  if (!qword_1EB0CC030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC028);
    sub_1A32D3AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC030);
  }

  return result;
}

uint64_t sub_1A347BC5C()
{
  v1 = *(type metadata accessor for ContactCardGeminiPicker() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A3479D90(v2);
}

uint64_t sub_1A347BD00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContactCardGeminiPicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A347BDA0()
{
  v1 = *(v0 + 8);
  if (v1 > 1)
  {
    return 0;
  }

  v2 = *v0;
  sub_1A31EE004(*v0, v1);
  return v2;
}

uint64_t sub_1A347BDE0()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED100 = result;
  byte_1EB0ED108 = 0;
  return result;
}

uint64_t sub_1A347BECC()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED150 = result;
  byte_1EB0ED158 = 0;
  return result;
}

uint64_t sub_1A347BFB8()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED130 = result;
  byte_1EB0ED138 = 0;
  return result;
}

uint64_t sub_1A347C0A0()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED170 = result;
  byte_1EB0ED178 = 0;
  return result;
}

uint64_t sub_1A347C18C()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED180 = result;
  byte_1EB0ED188 = 0;
  return result;
}

uint64_t sub_1A347C278()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED1B0 = result;
  byte_1EB0ED1B8 = 0;
  return result;
}

uint64_t sub_1A347C364()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED1E0 = result;
  byte_1EB0ED1E8 = 0;
  return result;
}

uint64_t sub_1A347C450()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED1F0 = result;
  byte_1EB0ED1F8 = 0;
  return result;
}

uint64_t sub_1A347C53C()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED200 = result;
  byte_1EB0ED208 = 0;
  return result;
}

uint64_t sub_1A347C628()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED160 = result;
  byte_1EB0ED168 = 0;
  return result;
}

uint64_t sub_1A347C714()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED140 = result;
  byte_1EB0ED148 = 0;
  return result;
}

uint64_t sub_1A347C800()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED1C0 = result;
  byte_1EB0ED1C8 = 0;
  return result;
}

uint64_t sub_1A347C8EC()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED1D0 = result;
  byte_1EB0ED1D8 = 0;
  return result;
}

uint64_t sub_1A347C9D8()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED1A0 = result;
  byte_1EB0ED1A8 = 0;
  return result;
}

uint64_t sub_1A347CAC4()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED190 = result;
  byte_1EB0ED198 = 0;
  return result;
}

uint64_t sub_1A347CBB0()
{
  v0 = sub_1A34CC450();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1A34CC580();
  qword_1EB0ED120 = result;
  byte_1EB0ED128 = 0;
  return result;
}

uint64_t sub_1A347CC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC10;
  if (qword_1EB0C1770 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB0ED100;
  *(v0 + 32) = qword_1EB0ED100;
  v2 = byte_1EB0ED108;
  *(v0 + 40) = byte_1EB0ED108;
  sub_1A31EE004(v1, v2);
  if (qword_1EB0C17A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0ED150;
  *(v0 + 48) = qword_1EB0ED150;
  v4 = byte_1EB0ED158;
  *(v0 + 56) = byte_1EB0ED158;
  sub_1A31EE004(v3, v4);
  if (qword_1EB0C1790 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB0ED130;
  *(v0 + 64) = qword_1EB0ED130;
  v6 = byte_1EB0ED138;
  *(v0 + 72) = byte_1EB0ED138;
  sub_1A31EE004(v5, v6);
  if (qword_1EB0C17C8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB0ED170;
  *(v0 + 80) = qword_1EB0ED170;
  v8 = byte_1EB0ED178;
  *(v0 + 88) = byte_1EB0ED178;
  sub_1A31EE004(v7, v8);
  if (qword_1EB0C17D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB0ED180;
  *(v0 + 96) = qword_1EB0ED180;
  v10 = byte_1EB0ED188;
  *(v0 + 104) = byte_1EB0ED188;
  sub_1A31EE004(v9, v10);
  if (qword_1EB0C17F8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB0ED1B0;
  *(v0 + 112) = qword_1EB0ED1B0;
  v12 = byte_1EB0ED1B8;
  *(v0 + 120) = byte_1EB0ED1B8;
  sub_1A31EE004(v11, v12);
  if (qword_1EB0C1820 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB0ED1E0;
  *(v0 + 128) = qword_1EB0ED1E0;
  v14 = byte_1EB0ED1E8;
  *(v0 + 136) = byte_1EB0ED1E8;
  sub_1A31EE004(v13, v14);
  if (qword_1EB0C1828 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB0ED1F0;
  *(v0 + 144) = qword_1EB0ED1F0;
  v16 = byte_1EB0ED1F8;
  *(v0 + 152) = byte_1EB0ED1F8;
  sub_1A31EE004(v15, v16);
  if (qword_1EB0C1830 != -1)
  {
    swift_once();
  }

  v17 = qword_1EB0ED200;
  *(v0 + 160) = qword_1EB0ED200;
  v18 = byte_1EB0ED208;
  *(v0 + 168) = byte_1EB0ED208;
  sub_1A31EE004(v17, v18);
  if (qword_1EB0C17B8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB0ED160;
  *(v0 + 176) = qword_1EB0ED160;
  v20 = byte_1EB0ED168;
  *(v0 + 184) = byte_1EB0ED168;
  sub_1A31EE004(v19, v20);
  if (qword_1EB0C17A0 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB0ED140;
  *(v0 + 192) = qword_1EB0ED140;
  v22 = byte_1EB0ED148;
  *(v0 + 200) = byte_1EB0ED148;
  sub_1A31EE004(v21, v22);
  if (qword_1EB0C1808 != -1)
  {
    swift_once();
  }

  v23 = qword_1EB0ED1C0;
  *(v0 + 208) = qword_1EB0ED1C0;
  v24 = byte_1EB0ED1C8;
  *(v0 + 216) = byte_1EB0ED1C8;
  sub_1A31EE004(v23, v24);
  if (qword_1EB0C1810 != -1)
  {
    swift_once();
  }

  v25 = qword_1EB0ED1D0;
  *(v0 + 224) = qword_1EB0ED1D0;
  v26 = byte_1EB0ED1D8;
  *(v0 + 232) = byte_1EB0ED1D8;
  sub_1A31EE004(v25, v26);
  if (qword_1EB0C17E8 != -1)
  {
    swift_once();
  }

  v27 = qword_1EB0ED1A0;
  *(v0 + 240) = qword_1EB0ED1A0;
  v28 = byte_1EB0ED1A8;
  *(v0 + 248) = byte_1EB0ED1A8;
  sub_1A31EE004(v27, v28);
  if (qword_1EB0C17E0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EB0ED190;
  *(v0 + 256) = qword_1EB0ED190;
  v30 = byte_1EB0ED198;
  *(v0 + 264) = byte_1EB0ED198;
  qword_1EB0ED118 = v0;

  return sub_1A31EE004(v29, v30);
}

uint64_t sub_1A347D170()
{
  if (qword_1EB0C1780 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0ED118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  v2 = qword_1EB0C1788;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0ED120;
  *(inited + 32) = qword_1EB0ED120;
  v4 = byte_1EB0ED128;
  *(inited + 40) = byte_1EB0ED128;
  sub_1A31EE004(v3, v4);
  result = sub_1A33B93B8(inited);
  qword_1EB0ED110 = v0;
  return result;
}

double sub_1A347D270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FAC30;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FAC50;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FAC70;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FAC80;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF31DCC383B703DLL;
  *(v0 + 336) = 0xBFB9111111111111;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FACA0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC876D43EC46D00;
  *(v0 + 480) = 0x3FC9111111111111;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FACB0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FACC0;
  *(v0 + 592) = xmmword_1A34FACD0;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA2CA213ABA1F3;
  *(v0 + 624) = 0x3FC9111111111111;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FACE0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD2CCCCCCCCCCCDLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FACF0;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD9DDDDDDDDDDDELL;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FAD00;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF31DCC383B703DLL;
  *(v0 + 1056) = 0x3FD3BBBBBBBBBBBCLL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FAD10;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE3BBBBBBBBBBBCLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FAD20;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA078728CCAC24;
  *(v0 + 1344) = 0x3FE3DDDDDDDDDDDELL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FAD30;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v0 + 1488) = 0x3FEB111111111111;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FAD40;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFB5F0244941E2;
  *(v0 + 1632) = 0x3FE9888888888889;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FAD50;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v0 + 1776) = 0x3FEB222222222222;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FAD60;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0800000000000;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FAD70;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0800000000000;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FAD80;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED6A0 = xmmword_1A34FAD90;
  qword_1EB0ED6B0 = v0;
  *algn_1EB0ED6B8 = xmmword_1A34FADA0;
  qword_1EB0ED6C8 = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED6D0 = 0;
  *algn_1EB0ED6D1 = *v59;
  dword_1EB0ED6D4 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED6D8 = 0u;
  *(&xmmword_1EB0ED6E0 + 8) = 0u;
  qword_1EB0ED6F8 = v57;
  return result;
}

unint64_t static ContactTypeEnum.caseDisplayRepresentations.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB70) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DCA90;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_1A34C8F00();
  v4[v1] = 1;
  sub_1A34C8F00();
  v5 = sub_1A33EAA44(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

uint64_t static ContactTypeEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A34C95B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v5 + 104))(v7, *MEMORY[0x1E6968DF0], v4);
  sub_1A34C95C0();
  (*(v11 + 56))(v3, 1, 1, v10);
  return sub_1A34C8FF0();
}

uint64_t ContactTypeEnum.displayRepresentation.getter()
{
  if (*v0)
  {
    v1 = 0x617A696E6167726FLL;
  }

  else
  {
    v1 = 0x6E6F73726570;
  }

  if (*v0)
  {
    v2 = 0xEC0000006E6F6974;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  MEMORY[0x1A58EEA30](v1, v2);

  return sub_1A34C8F00();
}

uint64_t ContactTypeEnum.rawValue.getter()
{
  if (*v0)
  {
    return 0x617A696E6167726FLL;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

ContactsUICore::ContactTypeEnum_optional __swiftcall ContactTypeEnum.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

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

uint64_t sub_1A347E630(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x617A696E6167726FLL;
  }

  else
  {
    v3 = 0x6E6F73726570;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v5 = 0x617A696E6167726FLL;
  }

  else
  {
    v5 = 0x6E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A34CDE30();
  }

  return v8 & 1;
}

uint64_t sub_1A347E6DC()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A347E764()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A347E7D8()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A347E85C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A34CDC80();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A347E8BC(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F73726570;
  if (*v1)
  {
    v2 = 0x617A696E6167726FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1A347E944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB70) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DCA90;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_1A34C8F00();
  v4[v1] = 1;
  sub_1A34C8F00();
  v5 = sub_1A33EAA44(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_1A347EAEC()
{
  result = qword_1EB0CC0D0;
  if (!qword_1EB0CC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC0D0);
  }

  return result;
}

unint64_t sub_1A347EB44()
{
  result = qword_1EB0CC0D8;
  if (!qword_1EB0CC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC0D8);
  }

  return result;
}

unint64_t sub_1A347EB9C()
{
  result = qword_1EB0CC0E0;
  if (!qword_1EB0CC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC0E0);
  }

  return result;
}

unint64_t sub_1A347EBF4()
{
  result = qword_1EB0CC0E8;
  if (!qword_1EB0CC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC0E8);
  }

  return result;
}

unint64_t sub_1A347EC4C()
{
  result = qword_1EB0CC0F0;
  if (!qword_1EB0CC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC0F0);
  }

  return result;
}

unint64_t sub_1A347ECA0()
{
  result = qword_1EB0CC0F8;
  if (!qword_1EB0CC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC0F8);
  }

  return result;
}

unint64_t sub_1A347ECF4()
{
  result = qword_1EB0CC100;
  if (!qword_1EB0CC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC100);
  }

  return result;
}

unint64_t sub_1A347ED4C()
{
  result = qword_1EB0CC108;
  if (!qword_1EB0CC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC108);
  }

  return result;
}

unint64_t sub_1A347EDE4()
{
  result = qword_1EB0CC110;
  if (!qword_1EB0CC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC110);
  }

  return result;
}

unint64_t sub_1A347EE3C()
{
  result = qword_1EB0CC118;
  if (!qword_1EB0CC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC118);
  }

  return result;
}

unint64_t sub_1A347EE94()
{
  result = qword_1EB0CC120;
  if (!qword_1EB0CC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC120);
  }

  return result;
}

unint64_t sub_1A347EEEC()
{
  result = qword_1EB0CC128;
  if (!qword_1EB0CC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC128);
  }

  return result;
}

unint64_t sub_1A347EF44()
{
  result = qword_1EB0CC130;
  if (!qword_1EB0CC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC130);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore18GradientDefinitionVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A347F00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A347F054(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A347F0C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A3332110(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1A347F204(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = sub_1A33E1F70(*(*(a1 + 48) + 8 * v12));
      if (v15)
      {
        v16 = v14;
        sub_1A31EC194(0, &qword_1EB0C01A8);
        v17 = *(*(a2 + 56) + 8 * v16);
        v18 = v13;
        v19 = v17;
        LOBYTE(v17) = sub_1A34CD830();

        if (v17)
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

double sub_1A347F35C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = sub_1A33E3C00();
  v4 = sub_1A33E3C00();

  result = 0.0;
  xmmword_1EB0EDFF0 = 0u;
  unk_1EB0EE000 = 0u;
  xmmword_1EB0EDFD0 = 0u;
  unk_1EB0EDFE0 = 0u;
  xmmword_1EB0EDFB0 = 0u;
  unk_1EB0EDFC0 = 0u;
  *&xmmword_1EB0EE010 = v4;
  *(&xmmword_1EB0EE010 + 1) = v3;
  qword_1EB0EE020 = 0;
  unk_1EB0EE028 = 0xE000000000000000;
  byte_1EB0EE030 = 1;
  return result;
}

uint64_t sub_1A347F40C()
{
  *&v15[0] = 0;
  *(&v15[0] + 1) = 0xE000000000000000;
  sub_1A34CDAD0();
  v14 = v15[0];
  MEMORY[0x1A58EEA30](0xD000000000000028, 0x80000001A3512FB0);
  MEMORY[0x1A58EEA30](*(v0 + 112), *(v0 + 120));
  MEMORY[0x1A58EEA30](0xD00000000000001DLL, 0x80000001A3512FE0);
  if (*(v0 + 128))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 128))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1A58EEA30](v1, v2);

  MEMORY[0x1A58EEA30](0xD000000000000022, 0x80000001A3513000);
  v3 = sub_1A34CCFB0();
  MEMORY[0x1A58EEA30](v3);

  MEMORY[0x1A58EEA30](0xD00000000000001FLL, 0x80000001A3513030);
  v4 = sub_1A34CCFB0();
  MEMORY[0x1A58EEA30](v4);

  MEMORY[0x1A58EEA30](0xD000000000000016, 0x80000001A3513050);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v16 = *(v0 + 32);
  v17 = v5;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v18 = *(v0 + 64);
  v19 = v8;
  v9 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v9;
  v13[8] = v16;
  v13[9] = v7;
  v10 = *(v0 + 80);
  v13[10] = v18;
  v13[11] = v10;
  v13[6] = v15[0];
  v13[7] = v6;
  sub_1A346098C(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90C0);
  v11 = sub_1A34CD170();
  MEMORY[0x1A58EEA30](v11);

  return v14;
}

uint64_t sub_1A347F60C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC148);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A34807A0();
  sub_1A34CDFA0();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1A346098C(&v31, &v18);
  sub_1A3480848();
  v14 = v37;
  sub_1A34CDD70();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1A3288FDC(&v18, &qword_1EB0C90C0);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1A3288FDC(&v18, &qword_1EB0C90C0);
    v17 = *(v2 + 12);
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8E8);
    sub_1A348089C(&qword_1EB0C02E8, sub_1A33E4A94);
    sub_1A34CDDC0();
    v17 = *(v2 + 13);
    HIBYTE(v16) = 2;
    sub_1A34CDDC0();
    LOBYTE(v17) = 3;
    sub_1A34CDD80();
    LOBYTE(v17) = 4;
    sub_1A34CDD90();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A347F934()
{
  v1 = *v0;
  v2 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A347F9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3480084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A347FA04(uint64_t a1)
{
  v2 = sub_1A34807A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A347FA40(uint64_t a1)
{
  v2 = sub_1A34807A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1A347FA7C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A348023C(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1A347FB00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1A347FB88(v11, v13) & 1;
}

uint64_t sub_1A347FB88(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v45 = a1[2];
  v46 = v4;
  v5 = a1[5];
  v47 = a1[4];
  v48 = v5;
  v6 = a1[1];
  v43 = *a1;
  v44 = v6;
  v7 = a2[3];
  v42[2] = a2[2];
  v42[3] = v7;
  v8 = a2[5];
  v42[4] = a2[4];
  v42[5] = v8;
  v9 = a2[1];
  v42[0] = *a2;
  v42[1] = v9;
  v10 = v44;
  v11 = v9;
  if (!v44)
  {
    if (!v9)
    {
      v33 = *a1;
      *&v34[24] = *(a1 + 40);
      *&v34[40] = *(a1 + 56);
      *&v34[56] = *(a1 + 72);
      v21 = *(a1 + 11);
      *v34 = 0;
      *&v34[72] = v21;
      *&v34[8] = *(a1 + 24);
      sub_1A346098C(&v43, &v49);
      sub_1A346098C(v42, &v49);
      sub_1A3288FDC(&v33, &qword_1EB0C90C0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!v9)
  {
LABEL_6:
    v33 = *a1;
    *&v34[24] = *(a1 + 40);
    *&v34[40] = *(a1 + 56);
    *&v34[56] = *(a1 + 72);
    v16 = *(a1 + 11);
    *v34 = v44;
    *&v34[72] = v16;
    *&v34[8] = *(a1 + 24);
    v35 = *a2;
    v37 = *(a2 + 24);
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 72);
    v20 = *(a2 + 11);
    v36 = v11;
    v41 = v20;
    v40 = v19;
    v39 = v18;
    v38 = v17;
    sub_1A346098C(&v43, &v49);
    sub_1A346098C(v42, &v49);
    sub_1A3288FDC(&v33, &qword_1EB0CC150);
    goto LABEL_14;
  }

  v24 = *a2;
  *v25 = v9;
  *&v25[8] = *(a2 + 24);
  *&v25[72] = *(a2 + 11);
  *&v25[56] = *(a2 + 72);
  *&v25[40] = *(a2 + 56);
  *&v25[24] = *(a2 + 40);
  v33 = v24;
  *v34 = *v25;
  *&v34[48] = *&v25[48];
  *&v34[64] = *&v25[64];
  *&v34[16] = *&v25[16];
  *&v34[32] = *&v25[32];
  v49 = *a1;
  v51 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = *(a1 + 11);
  v54 = *(a1 + 72);
  v53 = v13;
  v52 = v12;
  v55 = v14;
  v50 = v44;
  sub_1A346098C(&v43, &v26);
  sub_1A346098C(v42, &v26);
  v15 = sub_1A344148C(&v49, &v33);
  sub_1A3288FDC(&v24, &qword_1EB0C90C0);
  v26 = *a1;
  v27 = v10;
  v29 = *(a1 + 40);
  v30 = *(a1 + 56);
  v31 = *(a1 + 72);
  v32 = *(a1 + 11);
  v28 = *(a1 + 24);
  sub_1A3288FDC(&v26, &qword_1EB0C90C0);
  if ((v15 & 1) == 0)
  {
LABEL_14:
    v22 = 0;
    return v22 & 1;
  }

LABEL_8:
  if ((sub_1A347F0C8(*(a1 + 12), *(a2 + 12)) & 1) == 0 || (sub_1A347F0C8(*(a1 + 13), *(a2 + 13)) & 1) == 0 || (*(a1 + 14) != *(a2 + 14) || *(a1 + 15) != *(a2 + 15)) && (sub_1A34CDE30() & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = *(a1 + 128) ^ *(a2 + 128) ^ 1;
  return v22 & 1;
}

void sub_1A347FE90(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v30 = a1[4];
  v31 = a1[3];
  v28 = a1[6];
  v29 = a1[5];
  v26 = a1[8];
  v27 = a1[7];
  v24 = a1[10];
  v25 = a1[9];
  v23 = a1[11];
  memset(v33, 0, sizeof(v33));
  sub_1A3442920(a1, v43);
  sub_1A3288FDC(v33, &qword_1EB0C90C0);
  sub_1A31EC194(0, &qword_1ED853440);
  v12 = a1[2];
  if (*(v12 + 16))
  {
    v21 = v11;
    sub_1A34C9010();
    v13 = sub_1A34CD800();
    v20 = sub_1A33E3C00();

    if (*(v12 + 16))
    {
      sub_1A34C9010();
      v14 = sub_1A34CD800();
      sub_1A3442958(a1);
      v15 = sub_1A33E3C00();

      *&v34 = v10;
      *(&v34 + 1) = v9;
      *&v35 = v21;
      *(&v35 + 1) = v31;
      *&v36 = v30;
      *(&v36 + 1) = v29;
      *&v37 = v28;
      *(&v37 + 1) = v27;
      *&v38 = v26;
      *(&v38 + 1) = v25;
      *&v39 = v24;
      *(&v39 + 1) = v23;
      *&v40 = v15;
      *(&v40 + 1) = v20;
      *&v41 = a2;
      *(&v41 + 1) = a3;
      v42 = a4 & 1;
      v43[0] = v10;
      v43[1] = v9;
      v43[2] = v21;
      v43[3] = v31;
      v43[4] = v30;
      v43[5] = v29;
      v43[6] = v28;
      v43[7] = v27;
      v43[8] = v26;
      v43[9] = v25;
      v43[10] = v24;
      v43[11] = v23;
      v43[12] = v15;
      v43[13] = v20;
      v43[14] = a2;
      v43[15] = a3;
      v44 = a4 & 1;
      sub_1A33851C8(&v34, v32);
      sub_1A335DA80(v43);
      v16 = v41;
      *(a5 + 96) = v40;
      *(a5 + 112) = v16;
      *(a5 + 128) = v42;
      v17 = v37;
      *(a5 + 32) = v36;
      *(a5 + 48) = v17;
      v18 = v39;
      *(a5 + 64) = v38;
      *(a5 + 80) = v18;
      v19 = v35;
      *a5 = v34;
      *(a5 + 16) = v19;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A3480084(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001A3513070 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A3513090 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A350AEE0 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A35130B0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A34CDE30();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A348023C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC140);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1A34807A0();
  sub_1A34CDF90();
  if (v2)
  {
    v43 = v2;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v42 = 0;
    LODWORD(v40) = 0;
    v86 = 0;
    LODWORD(v39) = 0;
    __swift_destroy_boxed_opaque_existential_0(v41);
    v56 = v46;
    v57 = v45;
    v58 = v44;
    v59 = 0;
    v60 = v42;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    result = sub_1A3288FDC(&v56, &qword_1EB0C90C0);
    if (v40)
    {
    }

    if (v86)
    {
    }

    if (v39)
    {
    }
  }

  else
  {
    v88 = 0;
    sub_1A34807F4();
    sub_1A34CDCE0();
    v40 = a2;
    v45 = v75;
    v46 = v74;
    v44 = v76;
    v10 = v79;
    v42 = v78;
    v30 = v80;
    v31 = v77;
    v29 = v81;
    v34 = v83;
    v35 = v82;
    v32 = v85;
    v33 = v84;
    memset(v73, 0, 96);
    sub_1A3288FDC(v73, &qword_1EB0C90C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8E8);
    LOBYTE(v47) = 1;
    sub_1A348089C(&qword_1EB0C02E0, sub_1A33E4B6C);
    sub_1A34CDD30();
    v38 = v56;
    LOBYTE(v47) = 2;
    sub_1A34CDD30();
    v37 = v56;
    LOBYTE(v56) = 3;
    v11 = sub_1A34CDCF0();
    v36 = v12;
    v87 = 4;
    v13 = sub_1A34CDD00();
    v43 = 0;
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v86 = v14 & 1;
    v16 = v45;
    v15 = v46;
    *&v47 = v46;
    *(&v47 + 1) = v45;
    v17 = v44;
    v18 = v11;
    v39 = v11;
    v20 = v30;
    v19 = v31;
    *&v48 = v44;
    *(&v48 + 1) = v31;
    v21 = v42;
    *&v49 = v42;
    *(&v49 + 1) = v10;
    v22 = v29;
    *&v50 = v30;
    *(&v50 + 1) = v29;
    *&v51 = v35;
    *(&v51 + 1) = v34;
    *&v52 = v33;
    *(&v52 + 1) = v32;
    *&v53 = v38;
    *(&v53 + 1) = v37;
    *&v54 = v18;
    *(&v54 + 1) = v36;
    v55 = v86;
    sub_1A33851C8(&v47, &v56);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v56 = v15;
    v57 = v16;
    v58 = v17;
    v59 = v19;
    v60 = v21;
    v61 = v10;
    v62 = v20;
    v63 = v22;
    v64 = v35;
    v65 = v34;
    v66 = v33;
    v67 = v32;
    v68 = v38;
    v69 = v37;
    v70 = v39;
    v71 = v36;
    v72 = v86;
    result = sub_1A335DA80(&v56);
    v24 = v54;
    v25 = v40;
    *(v40 + 96) = v53;
    *(v25 + 112) = v24;
    *(v25 + 128) = v55;
    v26 = v50;
    *(v25 + 32) = v49;
    *(v25 + 48) = v26;
    v27 = v52;
    *(v25 + 64) = v51;
    *(v25 + 80) = v27;
    v28 = v48;
    *v25 = v47;
    *(v25 + 16) = v28;
  }

  return result;
}

unint64_t sub_1A34807A0()
{
  result = qword_1EB0C1A70;
  if (!qword_1EB0C1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1A70);
  }

  return result;
}

unint64_t sub_1A34807F4()
{
  result = qword_1EB0C24D8;
  if (!qword_1EB0C24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C24D8);
  }

  return result;
}

unint64_t sub_1A3480848()
{
  result = qword_1EB0C24E0;
  if (!qword_1EB0C24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C24E0);
  }

  return result;
}

uint64_t sub_1A348089C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA8E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3480934()
{
  result = qword_1EB0CC158;
  if (!qword_1EB0CC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC158);
  }

  return result;
}

unint64_t sub_1A348098C()
{
  result = qword_1EB0C1A60;
  if (!qword_1EB0C1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1A60);
  }

  return result;
}

unint64_t sub_1A34809E4()
{
  result = qword_1EB0C1A68;
  if (!qword_1EB0C1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1A68);
  }

  return result;
}

uint64_t sub_1A3480A38()
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB0C4B18 != -1)
  {
    swift_once();
  }

  if (sub_1A3481224(qword_1EB0CC160, *algn_1EB0CC168, qword_1EB0CC170))
  {
    if (qword_1EB0C4B20 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB0CC178;
    v1 = unk_1EB0CC180;
    v3 = qword_1EB0CC188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A34DAA10;
    if (qword_1EB0C4B40 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB0CC1C0;
    *(v4 + 32) = qword_1EB0CC1C0;
    v6 = *(v0 + 16);
    type metadata accessor for CNEntitlementName(0);
    v7 = v5;
    v8 = v2;
    v9 = sub_1A34CD350();
    v30[0] = 0;
    [v6 currentProcessHasArrayWithStringValue:v8 forAnyEntitlement:v9 error:v30];

    v10 = v30[0];
    if (v30[0])
    {
      goto LABEL_16;
    }

    if (qword_1EB0C4B28 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB0CC190;
    v1 = *algn_1EB0CC198;
    v3 = qword_1EB0CC1A0;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A34DCA90;
    if (qword_1EB0C4B48 != -1)
    {
      swift_once();
    }

    v12 = qword_1EB0CC1C8;
    *(v4 + 32) = qword_1EB0CC1C8;
    v13 = qword_1EB0C4B50;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB0CC1D0;
    *(v4 + 40) = qword_1EB0CC1D0;
    v16 = v15;
    v8 = v11;
    v17 = sub_1A34CD350();
    v30[0] = 0;
    [v6 currentProcessHasArrayWithStringValue:v8 forAnyEntitlement:v17 error:v30];

    v10 = v30[0];
    if (v30[0])
    {
LABEL_16:
      swift_willThrow();
      v18 = v10;
    }

    else
    {

      if (qword_1EB0C4B38 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB0CC1A8;
      v1 = unk_1EB0CC1B0;
      v3 = qword_1EB0CC1B8;
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1A34DAA10;
      if (qword_1EB0C4B58 != -1)
      {
        swift_once();
      }

      v26 = qword_1EB0CC1D8;
      *(v4 + 32) = qword_1EB0CC1D8;
      v27 = v26;
      v8 = v25;
      v28 = sub_1A34CD350();
      v30[0] = 0;
      [v6 currentProcessHasArrayWithStringValue:v8 forAnyEntitlement:v28 error:v30];

      v29 = v30[0];
      if (!v30[0])
      {

        return 1;
      }

      swift_willThrow();
      v18 = v29;
    }

    v19 = v18;
    sub_1A3481308(v8, v1, v3, v4);
  }

  if (qword_1EB0C12D8 != -1)
  {
    swift_once();
  }

  v20 = sub_1A34CA250();
  __swift_project_value_buffer(v20, qword_1EB0ED098);
  v21 = sub_1A34CA230();
  v22 = sub_1A34CD640();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1A31E6000, v21, v22, "Unable to show sensitive content UI, process is not correctly entitled", v23, 2u);
    MEMORY[0x1A58F1010](v23, -1, -1);
  }

  return 0;
}

id sub_1A3480F1C()
{
  type metadata accessor for SensitiveContentUIEntitlementVerifier();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69966E0]) init];
  *(v0 + 16) = result;
  qword_1EB0ED0E0 = v0;
  return result;
}

uint64_t sub_1A3480F70()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC160 = result;
  *algn_1EB0CC168 = 0xD00000000000001FLL;
  qword_1EB0CC170 = 0x80000001A35132E0;
  return result;
}

uint64_t sub_1A3480FCC()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC178 = result;
  unk_1EB0CC180 = 0xD00000000000001FLL;
  qword_1EB0CC188 = 0x80000001A35132E0;
  return result;
}

uint64_t sub_1A3481028()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC190 = result;
  *algn_1EB0CC198 = 0xD000000000000042;
  qword_1EB0CC1A0 = 0x80000001A3513220;
  return result;
}

uint64_t sub_1A348108C()
{
  result = sub_1A34CD0E0();
  qword_1EB0C1378 = result;
  unk_1EB0C1380 = 0xD000000000000029;
  qword_1EB0C1388 = 0x80000001A3513360;
  return result;
}

uint64_t sub_1A34810F0()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC1A8 = result;
  unk_1EB0CC1B0 = 0xD000000000000020;
  qword_1EB0CC1B8 = 0x80000001A3513140;
  return result;
}

uint64_t sub_1A3481144()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC1C0 = result;
  return result;
}

uint64_t sub_1A348117C()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC1C8 = result;
  return result;
}

uint64_t sub_1A34811B4()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC1D0 = result;
  return result;
}

uint64_t sub_1A34811EC()
{
  result = sub_1A34CD0E0();
  qword_1EB0CC1D8 = result;
  return result;
}

BOOL sub_1A3481224(void *a1, uint64_t a2, unint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 16);
  v11[0] = 0;
  [v7 currentProcessHasBooleanEntitlement:a1 error:v11];
  v8 = v11[0];
  if (v11[0])
  {
    swift_willThrow();
    v9 = v8;
    sub_1A3481308(a1, a2, a3, 0);
  }

  return v8 == 0;
}

void sub_1A3481308(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (qword_1EB0C12D8 != -1)
    {
      swift_once();
    }

    v8 = sub_1A34CA250();
    __swift_project_value_buffer(v8, qword_1EB0ED098);

    v9 = a1;
    oslog = sub_1A34CA230();
    v10 = sub_1A34CD640();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136315650;
      if (a3)
      {
        v13 = a3;
      }

      else
      {
        a2 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = sub_1A31EE23C(a2, v13, &v37);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      type metadata accessor for CNEntitlementName(0);
      v16 = v15;
      v17 = v9;
      v18 = sub_1A34CD160();
      v20 = sub_1A31EE23C(v18, v19, &v37);

      *(v11 + 14) = v20;
      *(v11 + 22) = 2080;
      v21 = MEMORY[0x1A58EEBA0](a4, v16);
      v23 = sub_1A31EE23C(v21, v22, &v37);

      *(v11 + 24) = v23;
      _os_log_impl(&dword_1A31E6000, oslog, v10, "[SensitiveContentUIEntitlementVerifier] %s - %s for any entitlements: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v12, -1, -1);
      v24 = v11;
LABEL_16:
      MEMORY[0x1A58F1010](v24, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EB0C12D8 != -1)
    {
      swift_once();
    }

    v25 = sub_1A34CA250();
    __swift_project_value_buffer(v25, qword_1EB0ED098);

    v26 = a1;
    oslog = sub_1A34CA230();
    v27 = sub_1A34CD640();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315394;
      if (a3)
      {
        v30 = a3;
      }

      else
      {
        a2 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = sub_1A31EE23C(a2, v30, &v37);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      type metadata accessor for CNEntitlementName(0);
      v32 = v26;
      v33 = sub_1A34CD160();
      v35 = sub_1A31EE23C(v33, v34, &v37);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_1A31E6000, oslog, v27, "[SensitiveContentUIEntitlementVerifier] %s - %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v29, -1, -1);
      v24 = v28;
      goto LABEL_16;
    }
  }
}

uint64_t sub_1A34816E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56F8);
  v0 = swift_allocObject();
  v0[1] = xmmword_1A34DE790;
  if (qword_1EB0C25E0 != -1)
  {
    swift_once();
  }

  v1 = *&byte_1EB0ED850;
  v33[2] = xmmword_1EB0ED840;
  v33[3] = *&byte_1EB0ED850;
  v2 = xmmword_1EB0ED860;
  v3 = unk_1EB0ED870;
  v33[4] = xmmword_1EB0ED860;
  v33[5] = unk_1EB0ED870;
  v4 = xmmword_1EB0ED820;
  v5 = *&qword_1EB0ED830;
  v33[0] = xmmword_1EB0ED820;
  v33[1] = *&qword_1EB0ED830;
  v0[4] = xmmword_1EB0ED840;
  v0[5] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1A3442920(v33, v38);
  if (qword_1EB0C25F8 != -1)
  {
    swift_once();
  }

  v6 = *&byte_1EB0ED8C0;
  v34[2] = xmmword_1EB0ED8B0;
  v34[3] = *&byte_1EB0ED8C0;
  v7 = xmmword_1EB0ED8D0;
  v8 = unk_1EB0ED8E0;
  v34[4] = xmmword_1EB0ED8D0;
  v34[5] = unk_1EB0ED8E0;
  v9 = xmmword_1EB0ED890;
  v10 = *&qword_1EB0ED8A0;
  v34[0] = xmmword_1EB0ED890;
  v34[1] = *&qword_1EB0ED8A0;
  v0[10] = xmmword_1EB0ED8B0;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v8;
  v0[8] = v9;
  v0[9] = v10;
  sub_1A3442920(v34, v38);
  if (qword_1EB0C2508 != -1)
  {
    swift_once();
  }

  v11 = *&byte_1EB0ED550;
  v35[2] = xmmword_1EB0ED540;
  v35[3] = *&byte_1EB0ED550;
  v12 = xmmword_1EB0ED560;
  v13 = unk_1EB0ED570;
  v35[4] = xmmword_1EB0ED560;
  v35[5] = unk_1EB0ED570;
  v14 = xmmword_1EB0ED520;
  v15 = *&qword_1EB0ED530;
  v35[0] = xmmword_1EB0ED520;
  v35[1] = *&qword_1EB0ED530;
  v0[16] = xmmword_1EB0ED540;
  v0[17] = v11;
  v0[18] = v12;
  v0[19] = v13;
  v0[14] = v14;
  v0[15] = v15;
  sub_1A3442920(v35, v38);
  if (qword_1EB0C2500 != -1)
  {
    swift_once();
  }

  v16 = *&byte_1EB0ED4F0;
  v36[2] = xmmword_1EB0ED4E0;
  v36[3] = *&byte_1EB0ED4F0;
  v17 = xmmword_1EB0ED500;
  v18 = unk_1EB0ED510;
  v36[4] = xmmword_1EB0ED500;
  v36[5] = unk_1EB0ED510;
  v19 = xmmword_1EB0ED4C0;
  v20 = *&qword_1EB0ED4D0;
  v36[0] = xmmword_1EB0ED4C0;
  v36[1] = *&qword_1EB0ED4D0;
  v0[22] = xmmword_1EB0ED4E0;
  v0[23] = v16;
  v0[24] = v17;
  v0[25] = v18;
  v0[20] = v19;
  v0[21] = v20;
  sub_1A3442920(v36, v38);
  if (qword_1EB0C2600 != -1)
  {
    swift_once();
  }

  v21 = *&byte_1EB0ED920;
  v37[2] = xmmword_1EB0ED910;
  v37[3] = *&byte_1EB0ED920;
  v22 = xmmword_1EB0ED930;
  v23 = unk_1EB0ED940;
  v37[4] = xmmword_1EB0ED930;
  v37[5] = unk_1EB0ED940;
  v24 = xmmword_1EB0ED8F0;
  v25 = *&qword_1EB0ED900;
  v37[0] = xmmword_1EB0ED8F0;
  v37[1] = *&qword_1EB0ED900;
  v0[28] = xmmword_1EB0ED910;
  v0[29] = v21;
  v0[30] = v22;
  v0[31] = v23;
  v0[26] = v24;
  v0[27] = v25;
  sub_1A3442920(v37, v38);
  if (qword_1EB0C24F0 != -1)
  {
    swift_once();
  }

  v26 = *&byte_1EB0ED490;
  v38[2] = xmmword_1EB0ED480;
  v38[3] = *&byte_1EB0ED490;
  v27 = xmmword_1EB0ED4A0;
  v28 = unk_1EB0ED4B0;
  v38[4] = xmmword_1EB0ED4A0;
  v38[5] = unk_1EB0ED4B0;
  v29 = xmmword_1EB0ED460;
  v30 = *&qword_1EB0ED470;
  v38[0] = xmmword_1EB0ED460;
  v38[1] = *&qword_1EB0ED470;
  v0[34] = xmmword_1EB0ED480;
  v0[35] = v26;
  v0[36] = v27;
  v0[37] = v28;
  v0[32] = v29;
  v0[33] = v30;
  qword_1EB0ED888 = v0;
  return sub_1A3442920(v38, &v32);
}

uint64_t sub_1A34819B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56F8);
  v0 = swift_allocObject();
  v0[1] = xmmword_1A34FB330;
  if (qword_1EB0C2608 != -1)
  {
    swift_once();
  }

  v1 = *&byte_1EB0ED980;
  v43[2] = xmmword_1EB0ED970;
  v43[3] = *&byte_1EB0ED980;
  v2 = xmmword_1EB0ED990;
  v3 = unk_1EB0ED9A0;
  v43[4] = xmmword_1EB0ED990;
  v43[5] = unk_1EB0ED9A0;
  v4 = xmmword_1EB0ED950;
  v5 = *&qword_1EB0ED960;
  v43[0] = xmmword_1EB0ED950;
  v43[1] = *&qword_1EB0ED960;
  v0[4] = xmmword_1EB0ED970;
  v0[5] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1A3442920(v43, v50);
  if (qword_1EB0C2518 != -1)
  {
    swift_once();
  }

  v6 = *&byte_1EB0ED5B0;
  v44[2] = xmmword_1EB0ED5A0;
  v44[3] = *&byte_1EB0ED5B0;
  v7 = xmmword_1EB0ED5C0;
  v8 = unk_1EB0ED5D0;
  v44[4] = xmmword_1EB0ED5C0;
  v44[5] = unk_1EB0ED5D0;
  v9 = xmmword_1EB0ED580;
  v10 = *&qword_1EB0ED590;
  v44[0] = xmmword_1EB0ED580;
  v44[1] = *&qword_1EB0ED590;
  v0[10] = xmmword_1EB0ED5A0;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v8;
  v0[8] = v9;
  v0[9] = v10;
  sub_1A3442920(v44, v50);
  if (qword_1EB0C2528 != -1)
  {
    swift_once();
  }

  v11 = *&byte_1EB0ED610;
  v45[2] = xmmword_1EB0ED600;
  v45[3] = *&byte_1EB0ED610;
  v12 = xmmword_1EB0ED620;
  v13 = unk_1EB0ED630;
  v45[4] = xmmword_1EB0ED620;
  v45[5] = unk_1EB0ED630;
  v14 = xmmword_1EB0ED5E0;
  v15 = *&qword_1EB0ED5F0;
  v45[0] = xmmword_1EB0ED5E0;
  v45[1] = *&qword_1EB0ED5F0;
  v0[16] = xmmword_1EB0ED600;
  v0[17] = v11;
  v0[18] = v12;
  v0[19] = v13;
  v0[14] = v14;
  v0[15] = v15;
  sub_1A3442920(v45, v50);
  if (qword_1EB0C2530 != -1)
  {
    swift_once();
  }

  v16 = *&byte_1EB0ED670;
  v46[2] = xmmword_1EB0ED660;
  v46[3] = *&byte_1EB0ED670;
  v17 = xmmword_1EB0ED680;
  v18 = unk_1EB0ED690;
  v46[4] = xmmword_1EB0ED680;
  v46[5] = unk_1EB0ED690;
  v19 = xmmword_1EB0ED640;
  v20 = *&qword_1EB0ED650;
  v46[0] = xmmword_1EB0ED640;
  v46[1] = *&qword_1EB0ED650;
  v0[22] = xmmword_1EB0ED660;
  v0[23] = v16;
  v0[24] = v17;
  v0[25] = v18;
  v0[20] = v19;
  v0[21] = v20;
  sub_1A3442920(v46, v50);
  if (qword_1EB0C2558 != -1)
  {
    swift_once();
  }

  v21 = *&byte_1EB0ED790;
  v47[2] = xmmword_1EB0ED780;
  v47[3] = *&byte_1EB0ED790;
  v22 = xmmword_1EB0ED7A0;
  v23 = unk_1EB0ED7B0;
  v47[4] = xmmword_1EB0ED7A0;
  v47[5] = unk_1EB0ED7B0;
  v24 = xmmword_1EB0ED760;
  v25 = *&qword_1EB0ED770;
  v47[0] = xmmword_1EB0ED760;
  v47[1] = *&qword_1EB0ED770;
  v0[28] = xmmword_1EB0ED780;
  v0[29] = v21;
  v0[30] = v22;
  v0[31] = v23;
  v0[26] = v24;
  v0[27] = v25;
  sub_1A3442920(v47, v50);
  if (qword_1EB0C2550 != -1)
  {
    swift_once();
  }

  v26 = *&byte_1EB0ED730;
  v48[2] = xmmword_1EB0ED720;
  v48[3] = *&byte_1EB0ED730;
  v27 = xmmword_1EB0ED740;
  v28 = unk_1EB0ED750;
  v48[4] = xmmword_1EB0ED740;
  v48[5] = unk_1EB0ED750;
  v29 = xmmword_1EB0ED700;
  v30 = *&qword_1EB0ED710;
  v48[0] = xmmword_1EB0ED700;
  v48[1] = *&qword_1EB0ED710;
  v0[34] = xmmword_1EB0ED720;
  v0[35] = v26;
  v0[36] = v27;
  v0[37] = v28;
  v0[32] = v29;
  v0[33] = v30;
  sub_1A3442920(v48, v50);
  if (qword_1EB0C2560 != -1)
  {
    swift_once();
  }

  v31 = *&byte_1EB0ED7F0;
  v49[2] = xmmword_1EB0ED7E0;
  v49[3] = *&byte_1EB0ED7F0;
  v32 = xmmword_1EB0ED800;
  v33 = unk_1EB0ED810;
  v49[4] = xmmword_1EB0ED800;
  v49[5] = unk_1EB0ED810;
  v34 = xmmword_1EB0ED7C0;
  v35 = *&qword_1EB0ED7D0;
  v49[0] = xmmword_1EB0ED7C0;
  v49[1] = *&qword_1EB0ED7D0;
  v0[40] = xmmword_1EB0ED7E0;
  v0[41] = v31;
  v0[42] = v32;
  v0[43] = v33;
  v0[38] = v34;
  v0[39] = v35;
  sub_1A3442920(v49, v50);
  if (qword_1EB0C2540 != -1)
  {
    swift_once();
  }

  v36 = *&byte_1EB0ED6D0;
  v50[2] = unk_1EB0ED6C0;
  v50[3] = *&byte_1EB0ED6D0;
  v37 = xmmword_1EB0ED6E0;
  v38 = unk_1EB0ED6F0;
  v50[4] = xmmword_1EB0ED6E0;
  v50[5] = unk_1EB0ED6F0;
  v39 = xmmword_1EB0ED6A0;
  v40 = *&qword_1EB0ED6B0;
  v50[0] = xmmword_1EB0ED6A0;
  v50[1] = *&qword_1EB0ED6B0;
  v0[46] = unk_1EB0ED6C0;
  v0[47] = v36;
  v0[48] = v37;
  v0[49] = v38;
  v0[44] = v39;
  v0[45] = v40;
  qword_1EB0ED880 = v0;
  return sub_1A3442920(v50, &v42);
}

id sub_1A3481D4C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  *&v2 = v2;
  [v1 setMinimumValue_];
  *&v4 = v3;
  [v1 setMaximumValue_];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1E8);
  MEMORY[0x1A58EE120](&v13, v5);
  sub_1A31EC930();
  sub_1A34C9010();
  v6 = sub_1A34CD800();
  v7 = sub_1A31EC6B0();

  swift_getAtKeyPath();

  HIDWORD(v8) = HIDWORD(v13);
  *&v8 = v13;
  [v1 setValue_];
  [v1 _setSliderStyle_];
  v9 = sub_1A3481F4C();
  [v1 _setSliderConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1F8);
  sub_1A34CB810();
  [v1 addTarget:*&v7 action:sel_sliderValueChanged_ forControlEvents:4096];

  v10 = v1;
  v11 = sub_1A34CD0E0();
  [v10 setAccessibilityIdentifier_];

  return v10;
}

id sub_1A3481F4C()
{
  v1 = sub_1A34CC450();
  v32 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v0;
  v38 = *(v0 + 2);
  v33 = *v0;
  v34 = *(v0 + 2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1E8);
  MEMORY[0x1A58EE120](&v36);
  v7 = *(v0 + 4);
  v6 = *(v0 + 5);
  sub_1A31EC930();
  sub_1A34C9010();
  v8 = sub_1A34CD800();
  v9 = sub_1A31EC6B0();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *&v33 = v9;
  *(&v33 + 1) = v11;
  v34 = v13;
  v35 = v15;
  v36 = v7;
  swift_setAtWritableKeyPath();
  v16 = *MEMORY[0x1E69814D8];
  v17 = *(v2 + 104);
  v17(v4, v16, v1);
  sub_1A34CC580();

  v33 = v37;
  v34 = v38;
  MEMORY[0x1A58EE120](&v36, v5);
  sub_1A34C9010();
  v18 = sub_1A34CD800();
  v19 = sub_1A31EC6B0();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  *&v33 = v19;
  *(&v33 + 1) = v21;
  v34 = v23;
  v35 = v25;
  v36 = v6;
  swift_setAtWritableKeyPath();
  v17(v4, v16, v32);
  sub_1A34CC580();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A34DC310;
  sub_1A34C9010();
  *(v26 + 32) = sub_1A34CD800();
  sub_1A34C9010();
  *(v26 + 40) = sub_1A34CD800();
  v27 = objc_allocWithZone(MEMORY[0x1E69DD710]);
  v28 = sub_1A34CD350();

  v29 = [v27 initWithColors_];

  return v29;
}

void sub_1A348227C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1F8);
  sub_1A34CB810();
  v3 = v22;
  v19 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1E8);
  sub_1A34CC930();
  v5 = v21;
  *(v22 + 16) = v20;
  *(v3 + 24) = v5;

  sub_1A34CB810();
  *(v19 + 40) = *(v1 + 3);
  sub_1A34C9010();

  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  *&v6 = v6;
  [a1 setMinimumValue_];
  *&v8 = v7;
  [a1 setMaximumValue_];
  MEMORY[0x1A58EE120](&v20, v4);
  sub_1A31EC930();
  sub_1A34C9010();
  v9 = sub_1A34CD800();
  v10 = sub_1A31EC6B0();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  swift_getAtKeyPath();

  HIDWORD(v17) = HIDWORD(v20);
  *&v17 = v20;
  [a1 setValue_];
  v18 = sub_1A3481F4C();
  [a1 _setSliderConfiguration_];
}

uint64_t sub_1A3482500@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1E8);
  sub_1A34CC930();
  type metadata accessor for ColorSlider.Coordinator();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 40) = v3;
  *a1 = v4;
  return sub_1A34C9010();
}

uint64_t sub_1A348259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3482998();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A3482600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3482998();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3482664()
{
  sub_1A3482998();
  sub_1A34CB3A0();
  __break(1u);
}

uint64_t sub_1A348268C(void *a1)
{
  v3 = sub_1A34CC450();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  [a1 value];
  v11 = v10;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC1E8);
  MEMORY[0x1A58EE120](&v31);
  sub_1A31EC930();
  sub_1A34C9010();
  v12 = sub_1A34CD800();
  v13 = sub_1A31EC6B0();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  v23 = v11;
  swift_setAtWritableKeyPath();
  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
  *&v20 = COERCE_DOUBLE(sub_1A34CC580());

  v24 = v7;
  v25 = v8;
  v26 = v9;
  v23 = *&v20;
  sub_1A34CC910();
}

uint64_t sub_1A34828FC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1A3482998()
{
  result = qword_1EB0CC1F0;
  if (!qword_1EB0CC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC1F0);
  }

  return result;
}

uint64_t sub_1A3482A14()
{
  v0 = sub_1A34CC620();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CC610();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AvatarImageView();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  sub_1A34CC680();
  (*(v5 + 8))(v7, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E6981648], v0);
  v8 = sub_1A34CC630();

  (*(v1 + 8))(v3, v0);
  v10[1] = v8;
  v10[2] = 0;
  v11 = 257;
  v12 = 0x3FF0000000000000;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC200);
  sub_1A31F0ADC();
  sub_1A34CC1F0();
}

unint64_t sub_1A3482C7C()
{
  result = qword_1EB0CC208;
  if (!qword_1EB0CC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC210);
    sub_1A31F0ADC();
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC208);
  }

  return result;
}

uint64_t sub_1A3482D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3482D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3482DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6980210];
  v3 = sub_1A34CB6C0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_1A3482E14(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A34CA400();
  return sub_1A32F7C20;
}

uint64_t sub_1A3482E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A31FBA1C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

void AvatarViewImage.init(cgImage:orientation:cropRect:shouldAyncRender:)(CGImageRef image@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = image;
  if ((*(a3 + 32) & 1) == 0)
  {
    v9 = CGImageCreateWithImageInRect(image, *a3);
    if (v9)
    {
      v10 = v9;

      v7 = v10;
    }
  }

  *a5 = v7;
  *(a5 + 8) = a2;
  *(a5 + 9) = a4 & 1;
}

uint64_t sub_1A3482F78@<X0>(__int128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  Width = CGImageGetWidth(v3);
  result = CGImageGetHeight(v3);
  v7 = result;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        CGAffineTransformMakeTranslation(&v22, Width, 0.0);
        v17 = *&v22.a;
        v18 = *&v22.c;
        v19 = *&v22.tx;
      }

      else
      {
        CGAffineTransformMakeScale(&v22, -1.0, 1.0);
        CGAffineTransformTranslate(&v21, &v22, -v7, 0.0);
        v17 = *&v21.a;
        v18 = *&v21.c;
        v19 = *&v21.tx;
      }

      *&v22.a = v17;
      *&v22.c = v18;
      *&v22.tx = v19;
      v20 = 1.57079633;
    }

    else
    {
      if (v4 == 4)
      {
        CGAffineTransformMakeTranslation(&v22, 0.0, result);
        v11 = *&v22.a;
        v12 = *&v22.c;
        v13 = *&v22.tx;
      }

      else
      {
        CGAffineTransformMakeScale(&v22, -1.0, 1.0);
        CGAffineTransformTranslate(&v21, &v22, -v7, 0.0);
        v11 = *&v21.a;
        v12 = *&v21.c;
        v13 = *&v21.tx;
      }

      *&v22.a = v11;
      *&v22.c = v12;
      *&v22.tx = v13;
      v20 = -1.57079633;
    }

    goto LABEL_19;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      CGAffineTransformMakeTranslation(&v22, Width, result);
      v14 = *&v22.a;
      v15 = *&v22.c;
      v16 = *&v22.tx;
    }

    else
    {
      CGAffineTransformMakeScale(&v22, -1.0, 1.0);
      CGAffineTransformTranslate(&v21, &v22, -Width, 0.0);
      v14 = *&v21.a;
      v15 = *&v21.c;
      v16 = *&v21.tx;
    }

    *&v22.a = v14;
    *&v22.c = v15;
    *&v22.tx = v16;
    v20 = 3.14159265;
LABEL_19:
    result = CGAffineTransformRotate(&v21, &v22, v20);
    goto LABEL_20;
  }

  if (v4)
  {
    CGAffineTransformMakeScale(&v22, -1.0, 1.0);
    result = CGAffineTransformTranslate(&v21, &v22, -Width, 0.0);
LABEL_20:
    v9 = *&v21.a;
    v8 = *&v21.c;
    v10 = *&v21.tx;
    goto LABEL_21;
  }

  v8 = xmmword_1A34D9450;
  v9 = xmmword_1A34F45D0;
  v10 = 0uLL;
LABEL_21:
  *a1 = v9;
  a1[1] = v8;
  a1[2] = v10;
  return result;
}

void sub_1A34831A0()
{
  objc_sync_enter(v0);
  v1 = sub_1A34CD0E0();
  Property = CGImageGetProperty();

  if (Property)
  {

    objc_sync_exit(v0);
  }

  else
  {
    v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v3)
    {
      v4 = v3;
      v5 = type metadata accessor for CAProxyImage();
      v6 = objc_allocWithZone(v5);
      swift_unknownObjectWeakInit();
      v7 = OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_state;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC220);
      v8 = swift_allocObject();
      *(v8 + 24) = 0;
      *(v8 + 16) = 0;
      *&v6[v7] = v8;
      swift_unknownObjectWeakAssign();
      *&v6[OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_colorSpace] = v4;
      v12.receiver = v6;
      v12.super_class = v5;
      v9 = v4;
      v10 = objc_msgSendSuper2(&v12, sel_init);
      v11 = sub_1A34CD0E0();
      CGImageSetProperty();

      objc_sync_exit(v0);
      sub_1A328AFC0();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _s14ContactsUICore15AvatarViewImageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 9);
  type metadata accessor for CGImage(0);
  sub_1A34834A8();
  if ((sub_1A34C9B50() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_1A34CC5F0();
  if (v4 == sub_1A34CC5F0())
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1A3483410(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1A3483458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A34834A8()
{
  result = qword_1EB0C0240;
  if (!qword_1EB0C0240)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0240);
  }

  return result;
}

uint64_t sub_1A3483500()
{
  if (qword_1EB0C1890 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = qword_1EB0C1898;
  v2 = [*(v0 + 16) identifier];
  v3 = sub_1A34CD110();
  v5 = v4;

  v6 = MEMORY[0x1A58EEA90](v3, v5);

  v38 = xmmword_1A34EB520;
  sub_1A32FD380();
  *&v38 = v38 + (v6 ^ v1);
  sub_1A32FD380();
  v7 = type metadata accessor for PhotosSuggestionProvider();
  v29 = sub_1A3463D24(v7, &off_1F162A2D0);
  v30 = v8;
  v31 = v9;
  v10 = type metadata accessor for MemojiSuggestionProvider();
  v32 = sub_1A3463D24(v10, &off_1F1625428);
  v33 = v11;
  v34 = v12;
  v13 = type metadata accessor for MonogramSuggestionProvider();
  v35 = sub_1A3463D24(v13, &off_1F1623008);
  v36 = v14;
  v37 = v15;
  v16 = MEMORY[0x1E69E7CC0];
  for (i = 48; i != 120; i += 24)
  {
    v18 = *&v28[i];
    v0 = *(v18 + 16);
    v19 = v16[2];
    v20 = v19 + v0;
    if (__OFADD__(v19, v0))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v0;
      }

      else
      {
        v22 = v19;
      }

      v16 = sub_1A3298DD8(isUniquelyReferenced_nonNull_native, v22, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_3:

        if (v0)
        {
          goto LABEL_20;
        }

        continue;
      }
    }

    v23 = (v16[3] >> 1) - v16[2];
    type metadata accessor for VisualIdentity(0);
    if (v23 < v0)
    {
      goto LABEL_21;
    }

    swift_arrayInitWithCopy();

    if (v0)
    {
      v24 = v16[2];
      v25 = __OFADD__(v24, v0);
      v26 = v24 + v0;
      if (v25)
      {
        goto LABEL_22;
      }

      v16[2] = v26;
    }
  }

  swift_arrayDestroy();
  sub_1A34856B4(&v38);
  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000017, 0x80000001A350E9F0);
}

char *sub_1A34837E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3483918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3483A74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3483BAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1A3483CD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1A3483DD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3483EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C76B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A348402C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1A348419C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A34842A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A34843D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1A34844EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A3484620(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC270);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C96B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C96B0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1A3484810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3484930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3484A3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_1A3484B40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC2C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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