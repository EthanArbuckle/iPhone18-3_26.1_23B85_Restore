uint64_t sub_1BF38B58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E7774();
  if (v11)
  {

    v13 = *(v3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
    MEMORY[0x1EEE9AC00](v12);
    *&v15[-16] = a1;

    os_unfair_lock_lock((v13 + 24));
    sub_1BF38B740((v13 + 16), a2);
    os_unfair_lock_unlock((v13 + 24));
  }

  else
  {
    sub_1BF4E77C4();
    sub_1BF38B8B8(v10, a2);
    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1BF38B774(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = v5;
  v12 = *(v10 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1BF38C8B4(a4, a2, a3);
  v13 = sub_1BF4E8874();
  return sub_1BF38CA14(a1, v13, a2, a3, a5, MEMORY[0x1E6994148]);
}

double sub_1BF38B83C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_1BF38C890(a2);
    if (v6)
    {
      sub_1BF38E49C(*(v4 + 56) + 40 * v5, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
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

uint64_t sub_1BF38B8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v106 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v107 = &v98 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v98 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v98 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v98 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v98 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v111 = *(v112 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v23 = &v98 - v22;
  v109 = v6;
  v26 = *(v6 + 16);
  v24 = v6 + 16;
  v25 = v26;
  v110 = a1;
  v26(v20, a1, v5);
  sub_1BF4E77B4();
  v27 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  v108 = v2;
  v28 = *(v2 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
  v113 = v23;
  v114 = v23;

  os_unfair_lock_lock((v28 + 24));
  sub_1BF38B740((v28 + 16), &v121);
  os_unfair_lock_unlock((v28 + 24));

  sub_1BF38C94C(&v121, &v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  v29 = *(&v119 + 1);
  sub_1BF38C9B4(&v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (v29)
  {
    goto LABEL_2;
  }

  v31 = v107;
  v100 = v18;
  v102 = v25;
  v101 = v24;
  v103 = a2;
  v32 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  v33 = v108;
  swift_beginAccess();
  v34 = *(v33 + v32);
  v35 = v110;
  if (sub_1BF38CBB8(v110, 0, 0, v34))
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v36 = sub_1BF4E7B54();
    __swift_project_value_buffer(v36, qword_1EDCA69A0);
    v102(v31, v35, v5);
    v37 = sub_1BF4E7B34();
    v38 = sub_1BF4E8E84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v118 = v40;
      *v39 = 136446210;
      sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990);
      v41 = sub_1BF4E96A4();
      v43 = v42;
      (*(v109 + 8))(v31, v5);
      v44 = sub_1BF38D65C(v41, v43, &v118);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1BF389000, v37, v38, "Ignoring restricted or unknown extension %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1BFB5A5D0](v40, -1, -1);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
    }

    else
    {

      (*(v109 + 8))(v31, v5);
    }

    sub_1BF38C9B4(&v121, &unk_1EBDD91B0, &unk_1BF4F0720);
    v51 = v103;
    *(v103 + 32) = 0;
    *v51 = 0u;
    v51[1] = 0u;
    goto LABEL_12;
  }

  v45 = *(v33 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock);
  os_unfair_lock_lock(*(v45 + 16));
  v46 = *(v33 + v27);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v113;
  *(&v98 - 2) = v113;

  os_unfair_lock_lock((v46 + 24));
  sub_1BF38B724((v46 + 16), &v118);
  os_unfair_lock_unlock((v46 + 24));
  sub_1BF38C9B4(&v121, &unk_1EBDD91B0, &unk_1BF4F0720);

  v121 = v118;
  v122 = v119;
  v123 = v120;
  sub_1BF38C94C(&v121, &v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  v49 = *(&v119 + 1);
  sub_1BF38C9B4(&v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (v49)
  {
    sub_1BF38C94C(&v121, v103, &unk_1EBDD91B0, &unk_1BF4F0720);
    os_unfair_lock_unlock(*(v45 + 16));
    sub_1BF38C9B4(&v121, &unk_1EBDD91B0, &unk_1BF4F0720);
    v50 = v48;
    return (*(v111 + 8))(v50, v112);
  }

  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v53 = sub_1BF4E7B54();
  v54 = __swift_project_value_buffer(v53, qword_1EDCA69A0);
  v55 = v100;
  v56 = v110;
  v57 = v5;
  v102(v100, v110, v5);
  v107 = v54;
  v58 = sub_1BF4E7B34();
  v59 = sub_1BF4E8E84();
  v60 = os_log_type_enabled(v58, v59);
  v99 = v45;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v118 = v62;
    *v61 = 136446210;
    sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990);
    v63 = sub_1BF4E96A4();
    v64 = v55;
    v65 = v63;
    v67 = v66;
    v100 = *(v109 + 8);
    v100(v64, v57);
    v68 = sub_1BF38D65C(v65, v67, &v118);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_1BF389000, v58, v59, "Unable to find %{public}s cached, attempting to locate directly.", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1BFB5A5D0](v62, -1, -1);
    MEMORY[0x1BFB5A5D0](v61, -1, -1);
  }

  else
  {

    v100 = *(v109 + 8);
    v100(v55, v5);
  }

  sub_1BF38E49C(v33 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer, &v118);
  v69 = v120;
  __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
  sub_1BF4E8204();
  v84 = (*(v69 + 16))();

  if (v84)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v118);
    sub_1BF38E49C(v33 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory, v115);
    v85 = v116;
    v86 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v86 + 8))(&v118, v84, v85, v86);
    sub_1BF38C9B4(&v121, &unk_1EBDD91B0, &unk_1BF4F0720);

    v121 = v118;
    v122 = v119;
    v123 = v120;
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    v56 = v110;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v118);
    v87 = v104;
    v102(v104, v56, v57);
    v88 = sub_1BF4E7B34();
    v89 = sub_1BF4E8E84();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v118 = v91;
      *v90 = 136446210;
      sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990);
      v92 = sub_1BF4E96A4();
      v93 = v87;
      v94 = v92;
      v96 = v95;
      v100(v93, v57);
      v97 = sub_1BF38D65C(v94, v96, &v118);

      *(v90 + 4) = v97;
      _os_log_impl(&dword_1BF389000, v88, v89, "Unable to find %{public}s extension directly.", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x1BFB5A5D0](v91, -1, -1);
      MEMORY[0x1BFB5A5D0](v90, -1, -1);

      v83 = v99;
      goto LABEL_20;
    }

    v100(v87, v57);
  }

  v83 = v99;
LABEL_20:
  sub_1BF38C94C(&v121, &v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  v70 = *(&v119 + 1);
  sub_1BF38C9B4(&v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (!v70)
  {
LABEL_28:
    os_unfair_lock_unlock(*(v83 + 16));
    a2 = v103;
LABEL_2:
    v30 = v122;
    *a2 = v121;
    *(a2 + 16) = v30;
    *(a2 + 32) = v123;
LABEL_12:
    v50 = v113;
    return (*(v111 + 8))(v50, v112);
  }

  v71 = v105;
  v102(v105, v56, v57);
  v72 = sub_1BF4E7B34();
  v73 = sub_1BF4E8E84();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v118 = v75;
    *v74 = 136446210;
    sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990);
    v76 = sub_1BF4E96A4();
    v77 = v71;
    v78 = v76;
    v80 = v79;
    v100(v77, v57);
    v81 = sub_1BF38D65C(v78, v80, &v118);

    *(v74 + 4) = v81;
    _os_log_impl(&dword_1BF389000, v72, v73, "Found %{public}s extension directly. Adding to cache.", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x1BFB5A5D0](v75, -1, -1);
    v82 = v74;
    v83 = v99;
    MEMORY[0x1BFB5A5D0](v82, -1, -1);
  }

  else
  {

    v100(v71, v57);
  }

  result = sub_1BF38C94C(&v121, &v118, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (*(&v119 + 1))
  {
    sub_1BF43642C(&v118);
    __swift_destroy_boxed_opaque_existential_1Tm(&v118);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF38C8B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BF38C8FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF38C94C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF38C9B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BF38CA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v24 = a1;
  v26 = a3;
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v22 - v11;
  v25 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v23 = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v16 = v9 + 16;
    v17 = v18;
    v19 = *(v16 + 56);
    do
    {
      v17(v12, *(v25 + 48) + v19 * v14, v8);
      sub_1BF38C8B4(v28, v26, v27);
      v20 = sub_1BF4E88C4();
      (*(v16 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v23 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1BF38CBB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9280, &qword_1BF4F08A0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BF4EBEF0;
    sub_1BF4E7694();
    v10 = sub_1BF44A8F4(v9);
    swift_setDeallocating();
    (*(v6 + 8))(v9 + v8, v5);
    swift_deallocClassInstance();
    if (qword_1EDC9AA28 != -1)
    {
      swift_once();
    }

    if (byte_1EDC9AA30 == 1)
    {
      v11 = sub_1BF4A962C(a1, v10);

      return v11 & 1;
    }
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v15 = sub_1BF4E76B4();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v19 = sub_1BF38D0B8(v15, v17, a4 & 1);
    if (!v19)
    {
      return a4 & 1;
    }

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9280, &qword_1BF4F08A0);
    v21 = *(v14 - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BF4EBEF0;
    v25 = v20;
    sub_1BF4E7694();
    v26 = sub_1BF44A8F4(v24);
    swift_setDeallocating();
    (*(v21 + 8))(v24 + v23, v14);
    swift_deallocClassInstance();
    if (qword_1EDC9AA28 != -1)
    {
      swift_once();
    }

    if (byte_1EDC9AA30 == 1)
    {
      v11 = sub_1BF4A962C(a1, v26);

      return v11 & 1;
    }
  }

  a4 = 0;
  return a4 & 1;
}

id sub_1BF38D0B8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E88E4();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 requireValid:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t type metadata accessor for ControlEntryKey()
{
  result = qword_1EDC9F7C0;
  if (!qword_1EDC9F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1BF38D218(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BF38F1AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BF4E9354();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BF38D324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1BF38D3D0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1BF38D3FC()
{
  v1 = v0;
  v2 = *v0;
  v11 = *(v1 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[16];
  sub_1BF4E8834();
  v8 = v2[14];
  v9 = sub_1BF4E87B4();

  sub_1BF38D774(sub_1BF38D554, v1, v3, v9, &off_1F3DEE010);

  swift_getWitnessTable();
  return sub_1BF4E8CB4();
}

uint64_t sub_1BF38D570@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = qword_1EDCA6870;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = v4[10];
  v8 = v4[11];
  v9 = v4[12];
  v10 = v4[16];
  v11 = sub_1BF4E8834();
  *a2 = nullsub_1(v6, v7, v11, v4[14]);
}

uint64_t sub_1BF38D65C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BF38D218(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BF38D324(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1BF38D774(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 24))(a3, a5);
}

uint64_t sub_1BF38D858(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BF38D8D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF38D99C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void sub_1BF38DA58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit19ReloadConfigurationV0C6ReasonO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1BF38DAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF38DB44(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExtensionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of DescriptorServicing.reloadDescriptors(for:userInitiated:reason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 72))();
}

{
  return (*(a8 + 64))();
}

uint64_t sub_1BF38DBE4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF38DC60((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF38DC78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v56[0] = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(v80 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v58 = v56 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v72 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v74 = v56 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v73 = v56 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9298, &qword_1BF4F08A8);
  v17 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v19 = v56 - v18;
  v20 = *a1;
  v21 = *a1 + 64;
  v22 = 1 << *(*a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(*a1 + 64);
  v25 = (v22 + 63) >> 6;
  v63 = (v4 + 16);
  v62 = (v4 + 56);
  v61 = (v4 + 48);
  v57 = (v4 + 32);
  v60 = (v4 + 8);
  v71 = v20;

  v27 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  v65 = v21;
  v64 = v25;
  v59 = v13;
  v66 = v19;
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_6:
  v28 = v74;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      *v56[0] = v75;
      return result;
    }

    v24 = *(v21 + 8 * v29);
    ++v27;
    if (v24)
    {
      v30 = v80;
      v27 = v29;
      while (1)
      {
        v31 = __clz(__rbit64(v24)) | (v27 << 6);
        v32 = v71;
        v33 = *(v71 + 48);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
        (*(*(v34 - 8) + 16))(v19, v33 + *(*(v34 - 8) + 72) * v31, v34);
        v35 = *(v32 + 56) + 40 * v31;
        v36 = &v19[*(v67 + 48)];
        sub_1BF38E49C(v35, v36);
        v37 = *(v36 + 3);
        v38 = *(v36 + 4);
        v70 = v36;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v39 = (*(v38 + 40))(v37, v38);
        v40 = *MEMORY[0x1E69941B0];
        swift_beginAccess();
        v41 = v73;
        sub_1BF38C94C(v39 + v40, v73, &qword_1EBDD9290, &qword_1BF4EE4B0);

        (*v63)(v28, v69, v30);
        (*v62)(v28, 0, 1, v30);
        v42 = *(v68 + 48);
        v43 = v28;
        v44 = v72;
        sub_1BF38C94C(v41, v72, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C94C(v43, v44 + v42, &qword_1EBDD9290, &qword_1BF4EE4B0);
        v45 = *v61;
        if ((*v61)(v44, 1, v30) == 1)
        {
          sub_1BF38C9B4(v43, &qword_1EBDD9290, &qword_1BF4EE4B0);
          sub_1BF38C9B4(v41, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v46 = v45(v44 + v42, 1, v80);
          v21 = v65;
          v25 = v64;
          if (v46 != 1)
          {
            goto LABEL_17;
          }

          sub_1BF38C9B4(v44, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v19 = v66;
        }

        else
        {
          v47 = v59;
          sub_1BF38C94C(v44, v59, &qword_1EBDD9290, &qword_1BF4EE4B0);
          if (v45(v44 + v42, 1, v80) == 1)
          {
            sub_1BF38C9B4(v74, &qword_1EBDD9290, &qword_1BF4EE4B0);
            sub_1BF38C9B4(v73, &qword_1EBDD9290, &qword_1BF4EE4B0);
            (*v60)(v47, v80);
            v21 = v65;
            v25 = v64;
LABEL_17:
            sub_1BF38C9B4(v44, &qword_1EBDD9288, &unk_1BF4F5A20);
            v19 = v66;
LABEL_18:
            v78 = 0;
            v76 = 0u;
            v77 = 0u;
            goto LABEL_21;
          }

          v48 = v44 + v42;
          v49 = v58;
          v50 = v80;
          (*v57)(v58, v48, v80);
          sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
          v51 = sub_1BF4E88C4();
          v52 = *v60;
          (*v60)(v49, v50);
          sub_1BF38C9B4(v74, &qword_1EBDD9290, &qword_1BF4EE4B0);
          sub_1BF38C9B4(v73, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v52(v47, v50);
          sub_1BF38C9B4(v72, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v19 = v66;
          v21 = v65;
          v25 = v64;
          if ((v51 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        sub_1BF38E49C(v70, &v76);
LABEL_21:
        v24 &= v24 - 1;
        sub_1BF38C9B4(v19, &unk_1EBDD9298, &qword_1BF4F08A8);
        if (*(&v77 + 1))
        {
          sub_1BF38E60C(&v76, v79);
          sub_1BF38E60C(v79, &v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1BF38E628(0, v75[2] + 1, 1, v75);
          }

          v54 = v75[2];
          v53 = v75[3];
          if (v54 >= v53 >> 1)
          {
            v75 = sub_1BF38E628((v53 > 1), v54 + 1, 1, v75);
          }

          v55 = v75;
          v75[2] = v54 + 1;
          result = sub_1BF38E60C(&v76, &v55[5 * v54 + 4]);
          if (!v24)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = sub_1BF38C9B4(&v76, &unk_1EBDD91B0, &unk_1BF4F0720);
          if (!v24)
          {
            goto LABEL_6;
          }
        }

LABEL_11:
        v30 = v80;
        v28 = v74;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF38E49C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id Extension.id.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 32))(a1, a2);
  v8 = *v7;
  sub_1BF38DB44(v7);
  return v8;
}

uint64_t sub_1BF38E610(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1BF38E628(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BF38E774(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit22DescriptorChangeReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata accessor for WidgetExtensionInfo()
{
  result = qword_1EDC99EF8;
  if (!qword_1EDC99EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF38E804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF38E868(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t storeEnumTagSinglePayload for PowerlogWakeReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ReloadConfiguration.ReloadCost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ExtensionManaging.extension(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1BF4E9024();
  (*(a3 + 24))(v9, a2, a3);
  return (*(v6 + 8))(v9, v5);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1BF4E77C4();
  v10 = sub_1BF4E76B4();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  (*(a3 + 40))(v10, v12, a2, a3);
}

_OWORD *sub_1BF38EB2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ContainerKindDescriptorPredicate()
{
  result = qword_1EDC96EE0;
  if (!qword_1EDC96EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DescriptorCollectionFilter.insert(_:)(unint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  sub_1BF38ED18(*a1);
  v3 = *(a2 + 16);
  type metadata accessor for DescriptorCollectionFilterType();
  sub_1BF4E8CA4();
  return sub_1BF4E8C44();
}

unint64_t sub_1BF38ED18(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void *sub_1BF38ED7C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit30DescriptorCollectionFilterTypeOyxG(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *WidgetDescriptorCache.widgetDescriptors.getter()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  v2 = sub_1BF38EE88(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AB0, &qword_1BF4F5A10);
  v3 = swift_allocObject();
  v4 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v5 = swift_allocObject();
  v3[6] = v4;
  v3[7] = &off_1F3DF42A8;
  v3[2] = v2;
  v3[3] = v5;
  return v3;
}

uint64_t sub_1BF38EE88(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CC0, &unk_1BF4F7660);
  result = sub_1BF4E9494();
  v7 = result;
  v8 = 0;
  v30 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v27 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v30 + 48) + 8 * v19);
      sub_1BF38F0DC(*(v30 + 56) + *(v28 + 72) * v19, v5);
      v21 = *&v5[*(v29 + 24)];
      v22 = v20;

      result = sub_1BF38F140(v5);
      *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v22;
      *(v7[7] + 8 * v19) = v21;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v7[2] = v25;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ExtensionMetadata()
{
  result = qword_1EDC9A870;
  if (!qword_1EDC9A870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF38F0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF38F140(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF38F1AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF38F1F8(a1, a2);
  sub_1BF38F4E4(&unk_1F3DECB98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BF38F1F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BF38F388(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BF4E9354();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BF4E8A54();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BF38F388(v10, 0);
        result = sub_1BF4E92C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityKey()
{
  result = qword_1EDC9EF28;
  if (!qword_1EDC9EF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BF38F388(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA0, &unk_1BF4F1CA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1BF38F3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WidgetExtensionInfo.nominatedContainingBundleIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo() + 104));
}

uint64_t sub_1BF38F480()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 84));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BF38F4E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1BF45C6BC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF38F660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BF38F6B4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_1BF4E8424();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t dispatch thunk of ExtensionManager.extension(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x198))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))();
}

uint64_t sub_1BF38F778()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF38F8C8(v0);
  os_unfair_lock_unlock(*(v1 + 16));
  sub_1BF4E8264();
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity);
  v6[3] = sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v6[0] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);

  v4 = v2;
  sub_1BF4E8254();

  return sub_1BF38C9B4(v6, &qword_1EBDD8AD0, &unk_1BF4F53F0);
}

void sub_1BF38F8C8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) != 1)
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) = 0;
  v57 = *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateInitial);
  *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateInitial) = 0;
  if (qword_1EDC9D490 != -1)
  {
    swift_once();
  }

  v63 = sub_1BF4E7B54();
  __swift_project_value_buffer(v63, qword_1EDCA68E0);

  v2 = sub_1BF4E7B34();
  v3 = sub_1BF4E8E54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v65[0] = v5;
    *v4 = 136446210;
    v6 = [*(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info) tokenString];
    v7 = sub_1BF4E8914();
    v9 = v8;

    v10 = sub_1BF38D65C(v7, v9, v65);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1BF389000, v2, v3, "[%{public}s] Begin fetching preferred languages", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
    MEMORY[0x1BFB5A5D0](v4, -1, -1);
  }

  v11 = *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  v12 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(&v11[v12], 1, v13) == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v15 = objc_opt_self();
  v61 = v13;
  v62 = v12;
  sub_1BF4E76B4();
  swift_endAccess();
  v16 = sub_1BF4E88E4();

  v17 = [v15 preferredLanguagesForContainerBundleIdentifier_];

  if (v17)
  {
    v18 = sub_1BF4E8BA4();
  }

  else
  {
    v18 = 0;
  }

  v60 = v14;

  v19 = sub_1BF4E7B34();
  v20 = sub_1BF4E8E54();

  v59 = v11;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v65[0] = v22;
    *v21 = 136446210;
    v23 = [v11 tokenString];
    v24 = sub_1BF4E8914();
    v25 = v18;
    v27 = v26;

    v28 = sub_1BF38D65C(v24, v27, v65);
    v18 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1BF389000, v19, v20, "[%{public}s] End fetching preferred languages", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1BFB5A5D0](v22, -1, -1);
    MEMORY[0x1BFB5A5D0](v21, -1, -1);
  }

  v29 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages;
  v30 = *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);
  if (v18)
  {
    if (v30 && (sub_1BF4D1C7C(v18, *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages)) & 1) != 0)
    {

      goto LABEL_26;
    }

    v65[0] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
    v31 = sub_1BF4E8894();
    v33 = v32;

    v30 = *(a1 + v29);
    v58 = v18;
    if (!v30)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
LABEL_21:
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v63, qword_1EDCA69A0);

      v37 = sub_1BF4E7B34();
      v38 = sub_1BF4E8E84();

      if (!os_log_type_enabled(v37, v38))
      {

        goto LABEL_34;
      }

      v56 = v34;
      v64 = v29;
      v39 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v66 = v55;
      *v39 = 136315650;
      swift_beginAccess();
      if (v60(&v59[v62], 1, v61) != 1)
      {
        v40 = sub_1BF4E76B4();
        v42 = v41;
        swift_endAccess();
        v43 = sub_1BF38D65C(v40, v42, &v66);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v44 = sub_1BF38D65C(v31, v33, &v66);

        *(v39 + 14) = v44;
        *(v39 + 22) = 2080;
        v45 = sub_1BF38D65C(v56, v35, &v66);

        *(v39 + 24) = v45;
        _os_log_impl(&dword_1BF389000, v37, v38, "Changing Extension's preferred app override languages in container (%s) changed to: %s from: %s", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v55, -1, -1);
        MEMORY[0x1BFB5A5D0](v39, -1, -1);

        v29 = v64;
LABEL_34:
        v54 = *(a1 + v29);
        *(a1 + v29) = v58;

        return;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

LABEL_20:
    v65[0] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
    v34 = sub_1BF4E8894();
    v35 = v36;

    goto LABEL_21;
  }

  if (v30)
  {
    v58 = 0;
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_20;
  }

LABEL_26:
  if ((v57 & 1) == 0)
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v63, qword_1EDCA69A0);

    v46 = sub_1BF4E7B34();
    v47 = sub_1BF4E8E84();

    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_32;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66 = v49;
    *v48 = 136446210;
    swift_beginAccess();
    if (v60(&v59[v62], 1, v61) != 1)
    {
      v50 = sub_1BF4E76B4();
      v52 = v51;
      swift_endAccess();
      v53 = sub_1BF38D65C(v50, v52, &v66);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_1BF389000, v46, v47, "No change to preferred app overrides for (%{public}s).", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1BFB5A5D0](v49, -1, -1);
      MEMORY[0x1BFB5A5D0](v48, -1, -1);
LABEL_32:

      return;
    }

    goto LABEL_38;
  }
}

uint64_t sub_1BF3901C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t KeepAliveTransaction.__allocating_init(reason:)(uint64_t a1, unint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BF390264(a1, a2);

  return v4;
}

uint64_t sub_1BF390264(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDC9EFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDC9EFC0);

  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1BF38D65C(a1, a2, &v13);
    _os_log_impl(&dword_1BF389000, v7, v8, "Added: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  sub_1BF4E89B4();
  v11 = os_transaction_create();

  if (v11)
  {
    *(v3 + 16) = v11;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3903EC(uint64_t a1)
{
  v2 = *v1;
  sub_1BF38B8B8(a1, v7);
  if (v7[3])
  {
    sub_1BF38E60C(v7, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_1BF38C9B4(v7, &unk_1EBDD91B0, &unk_1BF4F0720);
    return 0;
  }

  return v5;
}

uint64_t KeepAliveTransaction.__deallocating_deinit()
{
  KeepAliveTransaction.deinit();

  return swift_deallocClassInstance();
}

uint64_t KeepAliveTransaction.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (os_transaction_get_description())
  {
    v3 = sub_1BF4E8A44();
    v5 = v4;
    if (qword_1EDC9EFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1BF4E7B54();
    __swift_project_value_buffer(v6, qword_1EDC9EFC0);

    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E84();

    if (!os_log_type_enabled(v7, v8))
    {

      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = sub_1BF38D65C(v3, v5, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1BF389000, v7, v8, "Removed: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    v12 = v9;
    goto LABEL_10;
  }

  if (qword_1EDC9EFB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF4E7B54();
  __swift_project_value_buffer(v13, qword_1EDC9EFC0);
  v7 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E84();
  if (os_log_type_enabled(v7, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BF389000, v7, v14, "Removed: Transaction with no description", v15, 2u);
    v12 = v15;
LABEL_10:
    MEMORY[0x1BFB5A5D0](v12, -1, -1);
  }

LABEL_12:

  v16 = *(v1 + 16);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t WidgetDescriptorCache.fillCache(for:descriptors:controlDescriptors:activityDescriptors:reason:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v51 = a3;
  v9 = type metadata accessor for ExtensionMetadata();
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = *a5;
  v49 = a5[1];
  v50 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 stringRepresentation];

    v19 = sub_1BF4E8914();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 40))(v22, v23);
  sub_1BF4E9024();

  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1BF390B24(v25, v26);
  v28 = &v14[v9[8]];
  v29 = &v14[v9[5]];
  *v29 = v27;
  v29[1] = v30;
  *v28 = v19;
  v28[1] = v21;
  *&v14[v9[6]] = a2;
  v31 = v9[9];
  *&v14[v9[7]] = v51;
  *&v14[v31] = a4;
  v32 = qword_1EDC9D470;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_1BF4E7B54();
  __swift_project_value_buffer(v33, qword_1EDCA68B0);

  v34 = sub_1BF4E7B34();
  v35 = sub_1BF4E8E84();
  v36 = os_log_type_enabled(v34, v35);
  v38 = v52;
  v37 = v53;
  if (v36)
  {
    v39 = swift_slowAlloc();
    *v39 = 134349056;
    if (a4 >> 62)
    {
      v40 = sub_1BF4E9204();
    }

    else
    {
      v40 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v39 + 4) = v40;

    _os_log_impl(&dword_1BF389000, v34, v35, "Filling descriptor cache with %{public}ld activity descriptors", v39, 0xCu);
    MEMORY[0x1BFB5A5D0](v39, -1, -1);
  }

  else
  {
  }

  sub_1BF38F0DC(v14, v37);
  v41 = *(v38 + 64);

  os_unfair_lock_lock((v41 + 24));
  sub_1BF390E94((v41 + 16), a1, v37, v38, v54);
  os_unfair_lock_unlock((v41 + 24));
  v42 = v54[0];

  if (v42 >> 62)
  {
    if (!sub_1BF4E9204())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C90, &qword_1BF4F73F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF4EBEF0;
    v45 = v49;
    v44 = v50;
    *(inited + 32) = v50;
    *(inited + 40) = v45;
    sub_1BF44B994(v44, v45);
    v46 = sub_1BF44B578(inited);
    swift_setDeallocating();
    sub_1BF4DC9D0(inited + 32);
    v47 = *(v38 + 40);
    v54[0] = v42;
    v54[1] = v46;
    sub_1BF4E7C14();
  }

LABEL_14:

  sub_1BF38F140(v37);
  return sub_1BF38F140(v14);
}

uint64_t sub_1BF390B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = (*(a2 + 152))(a1, a2);
  v18[1] = v9;
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v10 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](10285, 0xE200000000000000);
  (*(a2 + 72))(a1, a2);
  if (qword_1EDC9F0D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDC9F0E0;
  v12 = sub_1BF4E7254();
  v13 = [v11 stringFromDate_];

  v14 = sub_1BF4E8914();
  v16 = v15;

  (*(v5 + 8))(v8, v4);
  MEMORY[0x1BFB58C90](v14, v16);

  MEMORY[0x1BFB58C90](41, 0xE100000000000000);
  return v18[0];
}

uint64_t sub_1BF390D54()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BF390DA4()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  return v2;
}

uint64_t sub_1BF390E08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF390E94@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v83 = a5;
  v79 = a4;
  v86 = a3;
  v7 = type metadata accessor for ExtensionMetadata();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v81 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CA0, &unk_1BF4F7630);
  v13 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v78 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v74 = &v73 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v73 - v25;
  v91 = MEMORY[0x1E69E7CC0];
  v28 = a2[3];
  v27 = a2[4];
  v85 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v28);
  v29 = (*(v27 + 40))(v28, v27);
  v30 = v29;
  v80 = a1;
  v31 = *a1;
  v32 = *(*a1 + 16);
  v84 = v7;
  if (v32)
  {
    v33 = sub_1BF3916CC(v29);
    if (v34)
    {
      sub_1BF38F0DC(*(v31 + 56) + v8[9] * v33, v26);

      v35 = v8[7];
      v36 = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v37 = v26;
      v38 = 0;
    }

    else
    {

      v35 = v8[7];
      v36 = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v37 = v26;
      v38 = 1;
    }

    v39 = v84;
    v35(v37, v38, 1, v84);
  }

  else
  {

    v35 = v8[7];
    v36 = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v35(v26, 1, 1, v7);
    v39 = v7;
  }

  sub_1BF38F0DC(v86, v24);
  v76 = v36;
  v77 = v35;
  v35(v24, 0, 1, v39);
  v40 = *(v82 + 48);
  sub_1BF38C94C(v26, v15, &qword_1EBDD9318, &qword_1BF4F09A8);
  sub_1BF38C94C(v24, &v15[v40], &qword_1EBDD9318, &qword_1BF4F09A8);
  v41 = v8[6];
  if (v41(v15, 1, v39) == 1)
  {
    sub_1BF38C9B4(v24, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF38C9B4(v26, &qword_1EBDD9318, &qword_1BF4F09A8);
    if (v41(&v15[v40], 1, v39) == 1)
    {
      result = sub_1BF38C9B4(v15, &qword_1EBDD9318, &qword_1BF4F09A8);
LABEL_22:
      v68 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v43 = v74;
  sub_1BF38C94C(v15, v74, &qword_1EBDD9318, &qword_1BF4F09A8);
  if (v41(&v15[v40], 1, v39) == 1)
  {
    sub_1BF38C9B4(v24, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF38C9B4(v26, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF38F140(v43);
LABEL_12:
    sub_1BF38C9B4(v15, &qword_1EBDD9CA0, &unk_1BF4F7630);
    v44 = v81;
    goto LABEL_13;
  }

  v69 = v75;
  sub_1BF3919A0(&v15[v40], v75);
  v70 = v43;
  v71 = _s9ChronoKit17ExtensionMetadataV2eeoiySbAC_ACtFZ_0(v43, v69);
  sub_1BF38F140(v69);
  sub_1BF38C9B4(v24, &qword_1EBDD9318, &qword_1BF4F09A8);
  sub_1BF38C9B4(v26, &qword_1EBDD9318, &qword_1BF4F09A8);
  sub_1BF38F140(v70);
  result = sub_1BF38C9B4(v15, &qword_1EBDD9318, &qword_1BF4F09A8);
  v44 = v81;
  if (v71)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v45 = sub_1BF4E7B54();
  __swift_project_value_buffer(v45, qword_1EDCA6898);
  sub_1BF38E49C(v85, v88);
  sub_1BF38F0DC(v86, v44);
  v46 = sub_1BF4E7B34();
  v47 = sub_1BF4E8E84();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v87 = v50;
    *v48 = 138543618;
    v51 = v89;
    v52 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v53 = (*(v52 + 40))(v51, v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    *(v48 + 4) = v53;
    *v49 = v53;
    *(v48 + 12) = 2082;
    sub_1BF38F0DC(v44, v75);
    v54 = v84;
    v55 = sub_1BF4E89A4();
    v57 = v56;
    sub_1BF38F140(v44);
    v58 = sub_1BF38D65C(v55, v57, &v87);

    *(v48 + 14) = v58;
    _os_log_impl(&dword_1BF389000, v46, v47, "Updating descriptor cache for %{public}@ with %{public}s.", v48, 0x16u);
    sub_1BF38C9B4(v49, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1BFB5A5D0](v50, -1, -1);
    MEMORY[0x1BFB5A5D0](v48, -1, -1);
  }

  else
  {

    sub_1BF38F140(v44);
    v59 = __swift_destroy_boxed_opaque_existential_1Tm(v88);
    v54 = v84;
  }

  MEMORY[0x1EEE9AC00](v59);
  v60 = v86;
  *(&v73 - 2) = v86;
  sub_1BF4D6630(sub_1BF4DCD00);
  v61 = v85;
  v62 = v85[3];
  v63 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v62);
  v64 = (*(v63 + 40))(v62, v63);
  v65 = v78;
  sub_1BF38F0DC(v60, v78);
  v77(v65, 0, 1, v54);
  sub_1BF43ABB4(v65, v64);
  v66 = v61[3];
  v67 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v66);
  (*(v67 + 40))(v66, v67);
  MEMORY[0x1BFB58DD0]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v72 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1BF4E8BE4();
  }

  result = sub_1BF4E8C24();
  v68 = v91;
LABEL_23:
  *v83 = v68;
  return result;
}

unint64_t sub_1BF3916CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BF4E9094();

  return sub_1BF391710(a1, v5);
}

unint64_t sub_1BF391710(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BF4E9034();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BF4E90A4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1BF3917E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF3918C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BF391990(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BF3919A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9ChronoKit17ExtensionMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v21 == v19 && v22 == v20)
  {
  }

  else
  {
    v5 = sub_1BF4E9734();

    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = type metadata accessor for ExtensionMetadata();
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1BF4E9734() & 1) == 0 || (sub_1BF391BC4(*(a1 + v6[6]), *(a2 + v6[6])) & 1) == 0 || (sub_1BF391E40(*(a1 + v6[7]), *(a2 + v6[7])) & 1) == 0)
  {
    goto LABEL_22;
  }

  v12 = v6[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (sub_1BF4E9734() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v16)
  {
LABEL_22:
    v17 = 0;
    return v17 & 1;
  }

  v17 = sub_1BF391E54(*(a1 + v6[9]), *(a2 + v6[9]));
  return v17 & 1;
}

uint64_t sub_1BF391BD8(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1BF3901C0(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1BFB59570](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1BFB59570](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1BF4E90A4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1BF4E90A4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1BF4E9204();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1BF4E9204();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t DescriptorCollection.allExtensionIdentities.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1BF4E9034();
  v3 = *(v1 + 80);
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
  sub_1BF4E87B4();

  swift_getWitnessTable();
  return sub_1BF4E8D94();
}

uint64_t sub_1BF391F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF391FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF392020(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BF3920EC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 64);

  os_unfair_lock_lock((v7 + 24));
  v8 = a1(*(v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = swift_allocObject();
  v10 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v11 = swift_allocObject();
  v9[6] = v10;
  v9[7] = &off_1F3DF42A8;
  v9[2] = v8;
  v9[3] = v11;
  return v9;
}

uint64_t sub_1BF3921AC(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CB8, &unk_1BF4F7650);
  result = sub_1BF4E9494();
  v7 = result;
  v8 = 0;
  v30 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v27 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v30 + 48) + 8 * v19);
      sub_1BF38F0DC(*(v30 + 56) + *(v28 + 72) * v19, v5);
      v21 = *&v5[*(v29 + 28)];
      v22 = v20;

      result = sub_1BF38F140(v5);
      *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v22;
      *(v7[7] + 8 * v19) = v21;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v7[2] = v25;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *DescriptorCollection.filter(_:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *v1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v35 - v9;
  v10 = *a1;
  v11 = v1[2];
  v40 = v1;
  v47 = *(v3 + 80);
  v12 = type metadata accessor for DescriptorCollectionFilterType();

  if (!sub_1BF4E8C34())
  {
LABEL_15:

    return DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(v11);
  }

  v35[1] = v4;
  v13 = 0;
  v14 = 0;
  v35[4] = "cadoWidgetExtension";
  v35[5] = "extensions-verbose";
  v35[2] = v5 + 8;
  v35[3] = v5 + 16;
  v15 = v5;
  v45 = v12;
  v46 = v5;
  v36 = v10;
  while (1)
  {
    v18 = sub_1BF4E8C14();
    result = sub_1BF4E8BD4();
    if ((v18 & 1) == 0)
    {
      break;
    }

    v16 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_17;
    }

    v48 = v14;
    v20 = v10 + 16 * v13;
    v21 = *(v20 + 32);
    v22 = *(v20 + 32);
    if (v22)
    {
      if (v22 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9280, &qword_1BF4F08A0);
        v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v41 = *(v15 + 72);
        v42 = swift_allocObject();
        v24 = v42 + v23;
        sub_1BF4E7694();
        sub_1BF4E7694();
        v25 = sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
        v26 = v39;
        v49 = MEMORY[0x1BFB58FA0](2, v39, v25);
        v44 = (v13 + 1);
        v27 = *(v15 + 16);
        v28 = v37;
        v27(v37, v24, v26);
        v43 = v11;
        v29 = v38;
        sub_1BF4ACFDC(v38, v28);
        v30 = *(v46 + 8);
        v30(v29, v26);
        v27(v28, v24 + v41, v26);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1BF4ACFDC(v29, v28);
        v31 = v26;
        v10 = v36;
        v32 = (v30)(v29, v31);
        v33 = v49;
        MEMORY[0x1EEE9AC00](v32);
        v35[-2] = v47;
        v35[-1] = v33;
        sub_1BF4E9034();
        sub_1BF4E8CA4();
        sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
        v16 = v44;
        v14 = v48;
        v11 = sub_1BF4E87D4();

        v15 = v46;
        goto LABEL_5;
      }

      if (v22 == 2)
      {
        sub_1BF4E9034();
        sub_1BF4E8CA4();
        sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
        v14 = v48;
        v17 = sub_1BF4E8794();
      }

      else
      {
        v44 = v35;
        *&v34 = MEMORY[0x1EEE9AC00](result);
        v35[-4] = v47;
        *&v35[-3] = v34;
        sub_1BF38ED18(v22);
        sub_1BF4E9034();
        sub_1BF4E8CA4();
        sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
        v16 = (v13 + 1);
        v14 = v48;
        v17 = sub_1BF4E8794();
        sub_1BF4B0D38(v22);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](result);
      v35[-2] = v47;
      sub_1BF4E9034();
      sub_1BF4E8CA4();
      sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
      v16 = (v13 + 1);
      v14 = v48;
      v17 = sub_1BF4E8794();
    }

    v11 = v17;
LABEL_5:
    ++v13;
    if (v16 == sub_1BF4E8C34())
    {
      goto LABEL_15;
    }
  }

  result = sub_1BF4E9304();
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v4 = swift_allocObject();
  v2[6] = v3;
  v2[7] = &off_1F3DF42A8;
  v2[2] = a1;
  v2[3] = v4;
  return v2;
}

uint64_t sub_1BF392B88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1BF4E8CA4();

  swift_getWitnessTable();
  v4 = sub_1BF4E9364();
  swift_getWitnessTable();
  result = sub_1BF4E8DE4();
  if (result)
  {

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_1BF392C94(id *a1)
{
  v1 = *a1;
  if (![*a1 isEnabled])
  {
    return;
  }

  v2 = [v1 requiredFeatureFlags];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_1BF3901C0(0, &qword_1EDC96390, 0x1E6994298);
  v4 = sub_1BF4E8BA4();

  v32 = v1;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:

    return;
  }

LABEL_23:
  v5 = sub_1BF4E9204();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB59570](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (([objc_opt_self() isFeatureFlagEnabled_] & 1) == 0)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_24;
    }
  }

  if (qword_1EDC9D510 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF4E7B54();
  __swift_project_value_buffer(v10, qword_1EDCA69B8);
  v11 = v8;
  v12 = v32;
  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446722;
    v17 = [v12 succinctDescription];

    if (v17)
    {
      v18 = sub_1BF4E8914();
      v20 = v19;

      v21 = sub_1BF38D65C(v18, v20, &v33);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v22 = [v11 domain];
      v23 = sub_1BF4E8914();
      v25 = v24;

      v26 = sub_1BF38D65C(v23, v25, &v33);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2082;
      v27 = [v11 featureName];
      v28 = sub_1BF4E8914();
      v30 = v29;

      v31 = sub_1BF38D65C(v28, v30, &v33);

      *(v15 + 24) = v31;
      _os_log_impl(&dword_1BF389000, v13, v14, "filtering out %{public}s due to feature flag: %{public}s:%{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_1BF393058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v4 = *(*a2 + 80);
  sub_1BF4E8CA4();

  swift_getWitnessTable();
  v5 = sub_1BF4E9364();
  swift_getWitnessTable();
  result = sub_1BF4E8DE4();
  if (result)
  {

    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1BF393158@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = type metadata accessor for WidgetExtensionInfo();
  return sub_1BF38C94C(v3 + *(v4 + 52), a1, &qword_1EBDD8AF8, &qword_1BF4EC370);
}

uint64_t Extension.localizedDisplayName.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 32);
  v11(a1, a2);
  v12 = *(v10 + 3);
  v13 = *(v10 + 4);

  sub_1BF38DB44(v10);
  if (!v13)
  {
    v11(a1, a2);
    v14 = *v8;
    sub_1BF38DB44(v8);
    v15 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v12 = sub_1BF4E76B4();
    swift_endAccess();
  }

  return v12;
}

uint64_t Extension.containerBundleLocalizedDisplayName.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *(a2 + 32);
  v12(a1, a2);
  v13 = &v11[*(v5 + 76)];
  v15 = *v13;
  v14 = v13[1];

  sub_1BF38DB44(v11);
  if (!v14)
  {
    v12(a1, a2);
    v16 = *v9;
    sub_1BF38DB44(v9);
    v17 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v18 - 8) + 48))(&v16[v17], 1, v18))
    {
      swift_endAccess();
      v15 = 0x6E776F6E6B6E55;
    }

    else
    {
      v15 = sub_1BF4E76B4();
      swift_endAccess();
    }
  }

  return v15;
}

void *sub_1BF393538()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo() + 108));
  v3 = v2;
  return v2;
}

uint64_t DescriptorCollection.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetEntryKey()
{
  result = qword_1EDC9F910;
  if (!qword_1EDC9F910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetEntryKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = [*v0 _loggingIdentifierWithMetrics_];
  v6 = sub_1BF4E8914();
  v8 = v7;

  v19 = 544108320;
  v20 = 0xE400000000000000;
  v9 = type metadata accessor for WidgetEntryKey();
  sub_1BF3988F8(v0 + *(v9 + 24), v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1BF38C9B4(v4, &qword_1EBDD8E78, &unk_1BF4EE790);
    v12 = 0xE500000000000000;
    v13 = 0x6C61636F6CLL;
  }

  else
  {
    v14 = sub_1BF4E7754();
    v12 = v15;
    (*(v11 + 8))(v4, v10);
    v13 = v14;
  }

  MEMORY[0x1BFB58C90](v13, v12);

  v16 = v19;
  v17 = v20;
  v19 = v6;
  v20 = v8;

  MEMORY[0x1BFB58C90](v16, v17);

  return v19;
}

uint64_t type metadata accessor for WidgetCacheKey()
{
  result = qword_1EDC9E938;
  if (!qword_1EDC9E938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF393884(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEntryKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3938E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X3>, uint64_t *a5@<X8>)
{
  v88 = a1;
  v79 = a5;
  v80 = a2;
  v78 = sub_1BF4E6E34();
  v77 = *(v78 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7194();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WidgetEntryKey();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF4E8424();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BF4E8294();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = qword_1EDCA6A00;
  swift_beginAccess();
  v85 = v21;
  v86 = v20;
  (*(v21 + 16))(v24, a3 + v25, v20);
  v26 = [*a4 extensionIdentity];
  v27 = &v26[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v28 = *(v27 + 1);

  if (v28)
  {

    sub_1BF4E8274();
  }

  sub_1BF4E82C4();
  v29 = v87;
  v30 = sub_1BF4E82A4();
  v31 = v29;
  if (v29)
  {
    return (*(v85 + 8))(v24, v86);
  }

  v32 = v30;
  (*(v16 + 16))(v19, v80, v15);
  sub_1BF4E86E4();
  sub_1BF3F4A08(a4);
  sub_1BF4E86D4();
  if (qword_1EDC9EFD8 != -1)
  {
    swift_once();
  }

  v33 = sub_1BF4E7B54();
  __swift_project_value_buffer(v33, qword_1EDCA6A48);
  v34 = v81;
  sub_1BF3A5A3C(a4, v81, type metadata accessor for WidgetEntryKey);
  v35 = v82;
  v36 = v83;
  v37 = v84;
  (*(v83 + 16))(v82, v88, v84);
  swift_retain_n();
  v38 = sub_1BF4E7B34();
  v39 = sub_1BF4E8E84();
  if (!os_log_type_enabled(v38, v39))
  {

    (*(v36 + 8))(v35, v37);
    sub_1BF39D654(v34, type metadata accessor for WidgetEntryKey);
LABEL_14:
    v71 = sub_1BF4E8714();
    v72 = MEMORY[0x1E6985B20];
    v73 = v79;
    v79[3] = v71;
    v73[4] = v72;
    *v73 = v32;
    return (*(v85 + 8))(v24, v86);
  }

  LODWORD(v80) = v39;
  v87 = v38;
  v40 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  v90 = v75;
  *v40 = 136447234;
  v41 = WidgetEntryKey.description.getter();
  v42 = v34;
  v43 = v32;
  v44 = v41;
  v46 = v45;
  sub_1BF39D654(v42, type metadata accessor for WidgetEntryKey);
  v47 = sub_1BF38D65C(v44, v46, &v90);

  *(v40 + 4) = v47;
  *(v40 + 12) = 2082;
  sub_1BF3A5AA4(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
  v48 = sub_1BF4E96A4();
  v50 = v49;
  (*(v36 + 8))(v35, v37);
  v51 = sub_1BF38D65C(v48, v50, &v90);

  *(v40 + 14) = v51;
  *(v40 + 22) = 2050;
  v52 = *(sub_1BF4E86F4() + 16);

  *(v40 + 24) = v52;

  *(v40 + 32) = 2082;
  v88 = v43;
  v53 = sub_1BF4E86C4();
  v54 = *(v53 + 16);
  if (v54)
  {
    v83 = 0;
    v55 = sub_1BF4388F0(v54, 0);
    v56 = *(sub_1BF4E8454() - 8);
    v57 = v55;
    v84 = sub_1BF438B78(v89, (v55 + ((*(v56 + 80) + 32) & ~*(v56 + 80))), v54, v53);
    p_isa = v89[1];

    sub_1BF39A9CC();
    if (v84 != v54)
    {
      __break(1u);
      goto LABEL_17;
    }

    v31 = v83;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  v89[0] = v57;
  sub_1BF3F6194(v89);
  p_isa = &v31->isa;
  if (!v31)
  {

    v59 = sub_1BF3F43E0(8236, 0xE200000000000000, v89[0]);
    v61 = v60;

    v62 = sub_1BF38D65C(v59, v61, &v90);

    *(v40 + 34) = v62;
    *(v40 + 42) = 2082;
    v63 = v76;
    sub_1BF4E8704();
    sub_1BF3A5AA4(&qword_1EDC9F108, MEMORY[0x1E6968130]);
    v64 = v78;
    v65 = sub_1BF4E96A4();
    v67 = v66;
    (*(v77 + 8))(v63, v64);
    v68 = sub_1BF38D65C(v65, v67, &v90);

    *(v40 + 44) = v68;
    v69 = v87;
    v32 = v88;
    v70 = v75;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v70, -1, -1);
    MEMORY[0x1BFB5A5D0](v40, -1, -1);

    goto LABEL_14;
  }

LABEL_17:

  __break(1u);
  return result;
}

unint64_t sub_1BF39419C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87F0, &qword_1BF4F5410);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BF3CD5D0(v5, v6);
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

uint64_t sub_1BF3942D0()
{
  result = sub_1BF4E8424();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DataProtectionMonitor.__allocating_init(keybagStateProvider:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DataProtectionMonitor.init(keybagStateProvider:)(a1);
  return v5;
}

uint64_t *DataProtectionMonitor.init(keybagStateProvider:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = *MEMORY[0x1E69859A0];
  v9 = *(v5 + 104);
  v9(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D08, &qword_1BF4EDA28);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v1[2] = sub_1BF4E7C64();
  *(v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token) = 0;
  sub_1BF38E49C(a1, v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider);
  v9(v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel, v8, v4);
  sub_1BF39455C(v1, a1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1BF39455C(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = a3;
  v95 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D28, &qword_1BF4EDB18);
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D30, &qword_1BF4EDB20);
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D38, &qword_1BF4EDB28);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v76 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D10, &qword_1BF4EDA30);
  v13 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v15 = &v76 - v14;
  v79 = sub_1BF4E7674();
  v16 = *(v79 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BF4E7684();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BF4E8424();
  v81 = *(v96 - 8);
  v25 = *(v81 + 64);
  v26 = MEMORY[0x1EEE9AC00](v96);
  v84 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v76 - v28;
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1BF4E7704();
  v30 = a2[3];
  v31 = a2[4];
  v83 = a2;
  v32 = a2;
  v33 = v19;
  v34 = v79;
  __swift_project_boxed_opaque_existential_1(v32, v30);
  v35 = sub_1BF4E7724();
  v36 = *MEMORY[0x1E6994048];
  (*(v16 + 104))(v33, *MEMORY[0x1E6994048], v34);
  v37 = *(v82 + 48);
  (*(v21 + 16))(v15, v24, v20);
  (*(v16 + 16))(&v15[v37], v33, v34);
  v38 = (*(v21 + 88))(v15, v20);
  if (v38 == *MEMORY[0x1E6994090])
  {
    v39 = *(v16 + 8);
    v39(v33, v34);
    (*(v21 + 8))(v24, v20);
    v41 = v80;
    v40 = v81;
    v42 = v96;
    (*(v81 + 104))(v80, *MEMORY[0x1E69859A0], v96);
    v39(&v15[v37], v34);
    v43 = v41;
    v44 = v40;
LABEL_12:
    v52 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
    v53 = v95;
    swift_beginAccess();
    (*(v44 + 24))(v53 + v52, v43, v42);
    swift_endAccess();
    v54 = *(v53 + 16);
    v55 = v84;
    (*(v44 + 16))(v84, v53 + v52, v42);
    sub_1BF4E7C54();
    v56 = *(v44 + 8);
    v56(v55, v42);
    v56(v43, v42);
    v57 = v83;
    v58 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v98 = sub_1BF4E7714();
    v59 = v57[4];
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v97 = sub_1BF4E7734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D40, &qword_1BF4EDB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D48, &qword_1BF4EDB38);
    sub_1BF38C8B4(&qword_1EDC9FF80, &qword_1EBDD8D40, &qword_1BF4EDB30);
    sub_1BF38C8B4(&qword_1EDC9FF78, &qword_1EBDD8D48, &qword_1BF4EDB38);
    v60 = v86;
    sub_1BF4E7CA4();

    v61 = swift_allocObject();
    *(v61 + 16) = v85;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1BF395760;
    *(v62 + 24) = v61;
    sub_1BF38C8B4(&qword_1EDC9FF98, &qword_1EBDD8D28, &qword_1BF4EDB18);
    v63 = v87;
    v64 = v89;
    sub_1BF4E7CB4();

    (*(v88 + 8))(v60, v64);
    sub_1BF38C8B4(&qword_1EDC9FF88, &qword_1EBDD8D30, &qword_1BF4EDB20);
    sub_1BF3951EC();
    v65 = v91;
    v66 = v92;
    sub_1BF4E7D04();
    (*(v90 + 8))(v63, v65);
    swift_allocObject();
    swift_weakInit();
    sub_1BF38C8B4(&qword_1EDC9FF90, &qword_1EBDD8D38, &qword_1BF4EDB28);
    v67 = v94;
    v68 = sub_1BF4E7D14();

    (*(v93 + 8))(v66, v67);
    v69 = *(v53 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token);
    *(v53 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token) = v68;
  }

  v76 = v33;
  v77 = v20;
  v78 = v21;
  v45 = v16;
  v46 = v34;
  v43 = v80;
  v44 = v81;
  if (v38 == *MEMORY[0x1E69940A0])
  {
    v47 = v45;
LABEL_5:
    v48 = *(v47 + 8);
    v48(v76, v46);
    (*(v78 + 8))(v24, v77);
    v48(&v15[v37], v46);
LABEL_6:
    v49 = MEMORY[0x1E6985988];
LABEL_7:
    v42 = v96;
    (*(v44 + 104))(v43, *v49, v96);
    goto LABEL_12;
  }

  if (v38 == *MEMORY[0x1E6994080])
  {
    v50 = *(v45 + 8);
    v50(v76, v46);
    (*(v78 + 8))(v24, v77);
    v51 = MEMORY[0x1E6985998];
    if ((v35 & 1) == 0)
    {
      v51 = MEMORY[0x1E69859A0];
    }

    v42 = v96;
    (*(v44 + 104))(v43, *v51, v96);
    v50(&v15[v37], v46);
    goto LABEL_12;
  }

  if (v38 == *MEMORY[0x1E6994088])
  {
    v71 = *(v45 + 8);
    v71(v76, v46);
    (*(v78 + 8))(v24, v77);
    v71(&v15[v37], v46);
LABEL_15:
    v49 = MEMORY[0x1E6985990];
    goto LABEL_7;
  }

  v47 = v45;
  if (v38 == *MEMORY[0x1E6994098] || v38 == *MEMORY[0x1E6994078] || v38 == *MEMORY[0x1E6994070])
  {
    goto LABEL_5;
  }

  if (v38 == *MEMORY[0x1E6994068])
  {
    v72 = (*(v45 + 88))(&v15[v37], v46);
    if (v72 == *MEMORY[0x1E6994040])
    {
      (*(v47 + 8))(v76, v46);
      (*(v78 + 8))(v24, v77);
      goto LABEL_15;
    }

    v73 = v72 == v36;
    v74 = v78;
    v75 = v77;
    if (v73)
    {
      (*(v47 + 8))(v76, v46);
      (*(v74 + 8))(v24, v75);
      goto LABEL_6;
    }
  }

  else if (v38 == *MEMORY[0x1E6994060])
  {
    goto LABEL_5;
  }

  result = sub_1BF4E9724();
  __break(1u);
  return result;
}

uint64_t sub_1BF39517C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3951B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1BF3951EC()
{
  result = qword_1EDC9FDE0;
  if (!qword_1EDC9FDE0)
  {
    sub_1BF4E8424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FDE0);
  }

  return result;
}

uint64_t sub_1BF395244(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D50, &qword_1BF4EDB40);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_1BF3952A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D10, &qword_1BF4EDA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-v6];
  v8 = sub_1BF4E7674();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *MEMORY[0x1E6994048];
  (*(v9 + 104))(v12, *MEMORY[0x1E6994048], v8);
  v14 = *(v4 + 48);
  v15 = sub_1BF4E7684();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, a1, v15);
  (*(v9 + 16))(&v7[v14], v12, v8);
  v17 = (*(v16 + 88))(v7, v15);
  if (v17 == *MEMORY[0x1E6994090])
  {
    v18 = *(v9 + 8);
    v18(v12, v8);
    v19 = *MEMORY[0x1E69859A0];
    v20 = sub_1BF4E8424();
    (*(*(v20 - 8) + 104))(v34, v19, v20);
    return (v18)(&v7[v14], v8);
  }

  v22 = v34;
  if (v17 == *MEMORY[0x1E69940A0])
  {
    goto LABEL_4;
  }

  if (v17 != *MEMORY[0x1E6994080])
  {
    if (v17 == *MEMORY[0x1E6994088])
    {
      v30 = *(v9 + 8);
      v30(v12, v8);
      v30(&v7[v14], v8);
LABEL_14:
      v24 = MEMORY[0x1E6985990];
      goto LABEL_6;
    }

    if (v17 != *MEMORY[0x1E6994098] && v17 != *MEMORY[0x1E6994078] && v17 != *MEMORY[0x1E6994070])
    {
      if (v17 == *MEMORY[0x1E6994068])
      {
        v31 = (*(v9 + 88))(&v7[v14], v8);
        if (v31 == *MEMORY[0x1E6994040])
        {
          (*(v9 + 8))(v12, v8);
          goto LABEL_14;
        }

        if (v31 == v13)
        {
          (*(v9 + 8))(v12, v8);
          goto LABEL_5;
        }

LABEL_25:
        result = sub_1BF4E9724();
        __break(1u);
        return result;
      }

      if (v17 != *MEMORY[0x1E6994060])
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    v23 = *(v9 + 8);
    v23(v12, v8);
    v23(&v7[v14], v8);
LABEL_5:
    v24 = MEMORY[0x1E6985988];
LABEL_6:
    v25 = *v24;
    v26 = sub_1BF4E8424();
    return (*(*(v26 - 8) + 104))(v22, v25, v26);
  }

  v27 = *(v9 + 8);
  v27(v12, v8);
  v28 = sub_1BF4E8424();
  v29 = MEMORY[0x1E6985998];
  if ((v33 & 1) == 0)
  {
    v29 = MEMORY[0x1E69859A0];
  }

  (*(*(v28 - 8) + 104))(v22, *v29, v28);
  return (v27)(&v7[v14], v8);
}

uint64_t sub_1BF395770(uint64_t a1)
{
  v2 = sub_1BF4E8424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(v3 + 16);
    v12(v9, a1, v2);
    v13 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
    swift_beginAccess();
    (*(v3 + 24))(v11 + v13, v9, v2);
    swift_endAccess();
    v14 = *(v11 + 16);
    v12(v7, v11 + v13, v2);
    sub_1BF4E7C54();
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v9, v2);
  }

  return result;
}

uint64_t sub_1BF395960()
{
  v0 = sub_1BF4E8424();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF395A3C(v4);
  sub_1BF395C08(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BF395A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCA6868;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF395AC4(uint64_t a1)
{
  v3 = qword_1EDCA6868;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1BF395B90();
  return (*(v5 + 8))(a1, v4);
}

void sub_1BF395B90()
{
  v1 = *(v0 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF395960();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_1BF395C08(uint64_t a1)
{
  v183 = *v1;
  v3 = v183;
  v4 = v183[12];
  v150 = sub_1BF4E90F4();
  v5 = *(v150 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v164 = &v140 - v7;
  v167 = v4;
  v182 = *(v4 - 8);
  v8 = v182[8];
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v140 - v12;
  v170 = *(v3[10] - 8);
  v13 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v140 - v22;
  v172 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v179 = sub_1BF4E90F4();
  v181 = *(v179 - 8);
  v25 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v187 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v178 = &v140 - v28;
  v29 = sub_1BF4E8424();
  v30 = *(v29 - 8);
  v31 = v30[8];
  MEMORY[0x1EEE9AC00](v29);
  v155 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v140 - v34;
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  v36 = qword_1EDC9AF50;
  v37 = v30[2];
  v151 = a1;
  v37(v35, a1, v29);
  v185 = v1;
  v147 = v36;
  v38 = sub_1BF4E7B34();
  v39 = sub_1BF4E8E84();
  v40 = os_log_type_enabled(v38, v39);
  v41 = &loc_1BF4EA000;
  v157 = v29;
  v175 = TupleTypeMetadata2;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v188[0] = v186;
    *v42 = 136446210;
    sub_1BF3983D4(&qword_1EDC9D780, MEMORY[0x1E69859A8]);
    v43 = sub_1BF4E96A4();
    v44 = v5;
    v46 = v45;
    v47 = v30[1];
    v156 = v30 + 1;
    v154 = v47;
    v47(v35, v29);
    v48 = sub_1BF38D65C(v43, v46, v188);
    v5 = v44;
    v41 = &loc_1BF4EA000;

    *(v42 + 4) = v48;
    _os_log_impl(&dword_1BF389000, v38, v39, "Data protection level changed to %{public}s available", v42, 0xCu);
    v49 = v186;
    __swift_destroy_boxed_opaque_existential_1Tm(v186);
    MEMORY[0x1BFB5A5D0](v49, -1, -1);
    v50 = v42;
    TupleTypeMetadata2 = v175;
    MEMORY[0x1BFB5A5D0](v50, -1, -1);
  }

  else
  {

    v51 = v30[1];
    v156 = v30 + 1;
    v154 = v51;
    v51(v35, v29);
  }

  v52 = qword_1EDC9AF48;
  v53 = v185;
  swift_beginAccess();
  v54 = *(v53 + v52);
  v55 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v54 + 64);
  v159 = (v56 + 63) >> 6;
  v177 = TupleTypeMetadata2 - 8;
  v173 = (v170 + 16);
  v186 = (v170 + 32);
  v176 = (v181 + 32);
  v163 = v182 + 6;
  v149 = v182 + 4;
  v143 = v182 + 2;
  v160 = v182 + 1;
  v181 = v170 + 8;
  v148 = (v5 + 8);
  v169 = v54;

  v60 = 0;
  *&v61 = v41[314];
  v141 = v61;
  *&v61 = 136446466;
  v140 = v61;
  v62 = v167;
  v63 = v172;
  v64 = v187;
  v174 = v55;
  v180 = v20;
  if (!v58)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v67 = v60;
LABEL_19:
      v69 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v70 = v69 | (v67 << 6);
      v71 = v169;
      v72 = v170;
      v73 = v171;
      (*(v170 + 16))(v171, *(v169 + 48) + *(v170 + 72) * v70, v63);
      LOBYTE(v70) = *(*(v71 + 56) + v70);
      v74 = *(TupleTypeMetadata2 + 48);
      v75 = *(v72 + 32);
      v64 = v187;
      v75(v187, v73, v63);
      v68 = 0;
      v64[v74] = v70;
LABEL_20:
      v76 = *(TupleTypeMetadata2 - 8);
      (*(v76 + 56))(v64, v68, 1, TupleTypeMetadata2);
      v77 = v178;
      (*v176)(v178, v64, v179);
      if ((*(v76 + 48))(v77, 1, TupleTypeMetadata2) == 1)
      {
      }

      LODWORD(v182) = v77[*(TupleTypeMetadata2 + 48)];
      (*v186)(v20, v77, v63);
      v78 = qword_1EDCA6870;
      v79 = v185;
      swift_beginAccess();
      v80 = *(v79 + v78);
      v81 = v183;
      v82 = v183[11];
      v83 = v183[16];
      sub_1BF4E8834();
      v84 = v81[14];

      sub_1BF4E8854();

      v85 = v63;
      v86 = v188[0];
      if (v188[0])
      {
        break;
      }

      result = (*v181)(v20, v85);
      TupleTypeMetadata2 = v175;
      v64 = v187;
      v55 = v174;
      v63 = v85;
      if (!v58)
      {
        goto LABEL_9;
      }
    }

    sub_1BF4E87C4();

    swift_getWitnessTable();
    v87 = v164;
    sub_1BF4E8DD4();
    if ((*v163)(v87, 1, v62) == 1)
    {
      v88 = v180;
      v89 = v172;
      (*v181)(v180, v172);

      v90 = v87;
      v20 = v88;
      (*v148)(v90, v150);
      v63 = v89;
    }

    else
    {
      (*v149)(v184, v87, v62);
      v168 = v86;

      v91 = qword_1EDC9AF88;
      v92 = v185;
      swift_beginAccess();
      v93 = *(v92 + v91);

      v94 = v183[13];
      v95 = v183[15];
      v96 = v183[17];
      v188[0] = v172;
      v188[1] = v82;
      v188[2] = v62;
      v188[3] = v94;
      v158 = v94;
      v188[4] = v84;
      v188[5] = v95;
      v188[6] = v83;
      v188[7] = v96;
      type metadata accessor for ReloadTaskPair();
      sub_1BF4E8854();

      v166 = v188[0];
      v165 = v96;
      v97 = *(v96 + 88);
      v98 = v155;
      v97(v62, v96);
      v162 = sub_1BF3983D4(&qword_1EDC9D788, MEMORY[0x1E69859A8]);
      v99 = v157;
      LODWORD(v161) = sub_1BF4E88A4();
      v100 = v154;
      v154(v98, v99);
      v153 = v96 + 88;
      v152 = v97;
      v97(v167, v165);
      v101 = sub_1BF4E88A4();
      v100(v98, v99);
      if (v182 == 3)
      {
        v63 = v172;
        v20 = v180;
        if ((v101 & 1) == 0)
        {
          v102 = *v173;
          v103 = v145;
          (*v173)(v145, v180, v172);
          v104 = sub_1BF4E7B34();
          v105 = sub_1BF4E8E44();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v165 = v106;
            v182 = swift_slowAlloc();
            v188[0] = v182;
            *v106 = v141;
            v107 = v171;
            v102(v171, v103, v63);
            v108 = *v181;
            (*v181)(v103, v63);
            v109 = v104;
            v110 = sub_1BF4E96A4();
            v112 = v111;
            v108(v107, v63);
            v113 = sub_1BF38D65C(v110, v112, v188);

            v114 = v165;
            *(v165 + 1) = v113;
            _os_log_impl(&dword_1BF389000, v109, v105, "%{public}s Will be unblocked", v114, 0xCu);
            v115 = v182;
            __swift_destroy_boxed_opaque_existential_1Tm(v182);
            MEMORY[0x1BFB5A5D0](v115, -1, -1);
            MEMORY[0x1BFB5A5D0](v114, -1, -1);
          }

          else
          {
            (*v181)(v103, v63);
          }

          v20 = v180;
          sub_1BF397CC8(v180, v168, v166);
        }
      }

      else
      {
        v63 = v172;
        v20 = v180;
        v116 = v166;
        if (v161)
        {
          v117 = *v173;
          v118 = v144;
          (*v173)(v144, v180, v172);
          v119 = v146;
          v120 = v167;
          (*v143)(v146, v184, v167);
          v121 = sub_1BF4E7B34();
          LODWORD(v182) = sub_1BF4E8E84();
          if (os_log_type_enabled(v121, v182))
          {
            v122 = swift_slowAlloc();
            v142 = v122;
            v162 = swift_slowAlloc();
            v188[0] = v162;
            *v122 = v140;
            v161 = v121;
            v123 = v171;
            v117(v171, v118, v63);
            v124 = v120;
            v125 = *v181;
            (*v181)(v118, v63);
            v126 = sub_1BF4E96A4();
            v128 = v127;
            v125(v123, v63);
            v129 = sub_1BF38D65C(v126, v128, v188);

            v130 = v142;
            *(v142 + 1) = v129;
            *(v130 + 6) = 2082;
            v131 = v155;
            v132 = v146;
            v152(v124, v165);
            (*v160)(v132, v124);
            sub_1BF3983D4(&qword_1EDC9D780, MEMORY[0x1E69859A8]);
            v133 = v157;
            v134 = sub_1BF4E96A4();
            v136 = v135;
            v154(v131, v133);
            v137 = sub_1BF38D65C(v134, v136, v188);

            *(v130 + 14) = v137;
            v138 = v161;
            _os_log_impl(&dword_1BF389000, v161, v182, "%{public}s Will be blocked (requiredProtectionLevel: %{public}s)", v130, 0x16u);
            v139 = v162;
            swift_arrayDestroy();
            MEMORY[0x1BFB5A5D0](v139, -1, -1);
            MEMORY[0x1BFB5A5D0](v130, -1, -1);
          }

          else
          {
            (*v160)(v119, v120);
            (*v181)(v118, v63);
          }

          v20 = v180;
          sub_1BF4533A4(v180, v168, v116);
        }
      }

      v62 = v167;
      (*v160)(v184, v167);
      result = (*v181)(v20, v63);
    }

    TupleTypeMetadata2 = v175;
    v64 = v187;
    v55 = v174;
  }

  while (v58);
LABEL_9:
  if (v159 <= v60 + 1)
  {
    v65 = v60 + 1;
  }

  else
  {
    v65 = v159;
  }

  v66 = v65 - 1;
  while (1)
  {
    v67 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v67 >= v159)
    {
      v58 = 0;
      v68 = 1;
      v60 = v66;
      goto LABEL_20;
    }

    v58 = *(v55 + 8 * v67);
    ++v60;
    if (v58)
    {
      v60 = v67;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF396F00(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  sub_1BF4E9804();
  v14 = *v2;
  sub_1BF4E90B4();
  sub_1BF3988F8(v4 + *(a2 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018);
    sub_1BF4E8884();
    (*(v6 + 8))(v9, v5);
  }

  return sub_1BF4E9844();
}

BOOL _s9ChronoKit15ControlEntryKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB0, &unk_1BF4EEA40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v17 = *a1;
  v18 = *a2;
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for ControlEntryKey() + 20);
  v20 = *(v13 + 48);
  sub_1BF3988F8(a1 + v19, v16);
  sub_1BF3988F8(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1BF38C9B4(v16, &qword_1EBDD8E78, &unk_1BF4EE790);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1BF3988F8(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1BF38C9B4(v16, &qword_1EBDD8EB0, &unk_1BF4EEA40);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_1BF38C8FC(&qword_1EDC9D550);
  v23 = sub_1BF4E88C4();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1BF38C9B4(v16, &qword_1EBDD8E78, &unk_1BF4EE790);
  return (v23 & 1) != 0;
}

uint64_t sub_1BF397424@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF3974D8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 40);
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
  return v2;
}

uint64_t sub_1BF397524(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF397564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BF3975AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_1BF397638(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BF4E7FF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E8064();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  v14 = *(*a1 + 144);
  v15 = qword_1EDC9AF48;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = *(v4 + 80);
  v18 = *(v4 + 112);

  sub_1BF4E8854();

  if (LOBYTE(aBlock[0]) == 3)
  {

    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E84();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      v23 = sub_1BF39B444();
      v25 = sub_1BF38D65C(v23, v24, aBlock);

      *(v21 + 4) = v25;
      v26 = "%{public}s Reload cannot be scheduled as store is blocked";
LABEL_7:
      _os_log_impl(&dword_1BF389000, v19, v20, v26, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v27 = *(v2 + qword_1EDC9AF78);

  if (v27 == 1)
  {
    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E84();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      v28 = sub_1BF39B444();
      v30 = sub_1BF38D65C(v28, v29, aBlock);

      *(v21 + 4) = v30;
      v26 = "%{public}s Reload cannot be scheduled as system is migrating";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v47 = v6;

  v31 = sub_1BF4E7B34();
  v32 = sub_1BF4E8E84();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v33 = 136446466;
    v34 = sub_1BF39B444();
    v36 = sub_1BF38D65C(v34, v35, aBlock);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;

    v37 = a1 + *(*a1 + 168);
    v38 = ReloadConfiguration.description.getter();
    v40 = v39;

    v41 = sub_1BF38D65C(v38, v40, aBlock);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1BF389000, v31, v32, "%{public}s Scheduling reload with configuration: %{public}s", v33, 0x16u);
    v42 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v42, -1, -1);
    MEMORY[0x1BFB5A5D0](v33, -1, -1);
  }

  else
  {
  }

  v43 = *(v2 + qword_1EDC9AFD8);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = v2;
  aBlock[4] = sub_1BF39BAF0;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_70;
  v45 = _Block_copy(aBlock);

  sub_1BF4E8014();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v13, v9, v45);
  _Block_release(v45);
  (*(v47 + 8))(v9, v5);
  (*(v48 + 8))(v13, v49);
}

uint64_t sub_1BF397CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v45 = a2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38[-v13];
  LOBYTE(v46) = 0;
  sub_1BF399684(&v46, a1);
  if (a3)
  {
    v15 = sub_1BF39B43C();
    if (v15)
    {
      v16 = v15;

LABEL_8:
      sub_1BF397638(v16);
    }
  }

  v17 = v11;
  v43 = v6;
  v44 = v8[2];
  v44(v14, a1, v7);
  v18 = sub_1BF4E7B34();
  v19 = sub_1BF4E8E64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v20;
    v42 = swift_slowAlloc();
    v46 = v42;
    *v20 = 136446210;
    v41 = v18;
    v21 = v17;
    v44(v17, v14, v7);
    v22 = v8[1];
    v22(v14, v7);
    v23 = v43;
    v24 = *(v43 + 104);
    v25 = sub_1BF4E96A4();
    v39 = v19;
    v26 = v25;
    v28 = v27;
    v22(v21, v7);
    v29 = sub_1BF38D65C(v26, v28, &v46);
    v30 = v21;

    v31 = v40;
    *(v40 + 1) = v29;
    v32 = v41;
    _os_log_impl(&dword_1BF389000, v41, v39, "Unexpectedly found no reload tasks for key %{public}s", v31, 0xCu);
    v33 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1BFB5A5D0](v33, -1, -1);
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
  }

  else
  {
    (v8[1])(v14, v7);

    v23 = v43;
    v30 = v17;
  }

  v34 = sub_1BF455294(a1, v45);
  v16 = sub_1BF39B43C();
  v44(v30, a1, v7);
  v51 = v34;
  swift_beginAccess();
  v35 = *(v23 + 104);

  v46 = v7;
  v47 = *(v23 + 88);
  v48 = v35;
  v36 = *(v23 + 128);
  v45 = *(v23 + 112);
  v49 = v45;
  v50 = v36;
  type metadata accessor for ReloadTaskPair();
  sub_1BF4E8834();
  sub_1BF4E8864();
  swift_endAccess();

  if (v16)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ReloadConfiguration.description.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 91;
  v27 = 0xE100000000000000;
  v11 = type metadata accessor for ReloadConfiguration(0);
  v25 = *(v0 + v11[6]);
  v12 = ReloadConfiguration.ReloadReason.description.getter();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  sub_1BF39B31C(v0, v10, type metadata accessor for ReloadConfiguration.ReloadType);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    v13 = 0xE900000000000065;
    v14 = 0x74616964656D6D69;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    if (qword_1EDC9F0F0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDC9F0F8;
    v16 = sub_1BF4E7254();
    v17 = [v15 stringFromDate_];

    v18 = sub_1BF4E8914();
    v13 = v19;

    (*(v3 + 8))(v6, v2);
    v14 = v18;
  }

  MEMORY[0x1BFB58C90](v14, v13);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  if (*(v1 + v11[5]))
  {
    v20 = 1701147238;
  }

  else
  {
    v20 = 0x6465746567647562;
  }

  if (*(v1 + v11[5]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE800000000000000;
  }

  MEMORY[0x1BFB58C90](v20, v21);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v25 = *(v1 + v11[7]);
  v22 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v22);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return v26;
}

uint64_t sub_1BF3983D4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF398440()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v4)
  {
    v5 = v4;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

BOOL _s9ChronoKit11TimelineKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v4 == v8;
  if (!v10 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  result = (v5 | v9) == 0;
  if (v5)
  {
    if (v9)
    {
      sub_1BF3901C0(0, &unk_1EDC96360, 0x1E69942D0);
      v12 = v9;
      v13 = v5;
      v14 = sub_1BF4E90A4();

      return v14 & 1;
    }
  }

  return result;
}

uint64_t sub_1BF3985D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v24 = *v2;
  v4 = v24[11];
  v5 = sub_1BF4E90F4();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v22 - v12;
  sub_1BF38E49C((v2 + 5), v27);
  v15 = v28;
  v14 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v16 = *(v14 + 56);
  v25 = a1;
  v16(a1, v15, v14);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v22 + 8))(v9, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v17 = (*(v24[13] + 16))(v24[10]);
    sub_1BF3F79D0();
    swift_allocError();
    *v18 = v17;
    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v13, v9, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    sub_1BF38E49C((v2 + 10), v27);
    v20 = v28;
    v21 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v21 + 24))(v13, v20, v21);
    (*(v10 + 8))(v13, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }
}

id sub_1BF3988C0()
{
  v1 = [*v0 extensionIdentity];

  return v1;
}

uint64_t sub_1BF3988F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF39898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v30 = v4;
  v31 = a2;
  v5 = *(v4 + 80);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_1BF4E7194();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *(*(v4 + 96) + 16);
  v29 = a1;
  v22 = v21(v5);
  sub_1BF398CFC(v22, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BF38C9B4(v12, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    return (*(*(*(v30 + 88) - 8) + 56))(v31, 1, 1);
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    v24 = v30;
    v25 = *(v30 + 88);
    (*(v14 + 16))(v18, v20, v13);
    (*(v28 + 16))(v8, v29, v5);
    v26 = *(*(v24 + 104) + 16);
    v27 = v31;
    v26(v18, v8, v25);
    (*(v14 + 8))(v20, v13);
    return (*(*(v25 - 8) + 56))(v27, 0, 1);
  }
}

uint64_t sub_1BF398CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v23 - v13;
  sub_1BF38E49C(v3 + 32, v24);
  v15 = v25;
  v16 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v16 + 8))(a1, v15, v16);
  v17 = sub_1BF4E7194();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    sub_1BF38C9B4(v14, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v19 = 1;
  }

  else
  {
    swift_beginAccess();
    v20 = *(v3 + 16);
    v21 = *(v3 + 24);
    v23[0] = v20;
    v23[1] = v21;
    (*(v7 + 104))(v10, *MEMORY[0x1E6968F58], v6);
    sub_1BF399080();

    sub_1BF4E7184();
    (*(v7 + 8))(v10, v6);

    (*(v18 + 8))(v14, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v19 = 0;
  }

  return (*(v18 + 56))(a2, v19, 1, v17);
}

id sub_1BF398FB4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BF4E88E4();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1BF399080()
{
  result = qword_1EDC9FDD8;
  if (!qword_1EDC9FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FDD8);
  }

  return result;
}

uint64_t sub_1BF3990D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1BF4E7014();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BF4E7194();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v47 - v19;
  v21 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;

    sub_1BF4E76F4();
    v53 = v23;
    v54 = v22;
    v24 = *MEMORY[0x1E6968F58];
    v25 = v50;
    v49 = *(v50 + 104);
    v49(v6, v24, v3);
    v47[1] = sub_1BF399080();
    v48 = v13;
    sub_1BF4E7184();
    v50 = *(v25 + 8);
    (v50)(v6, v3);

    v47[0] = *(v7 + 8);
    v26 = v51;
    (v47[0])(v11, v51);
    v27 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v28 = sub_1BF4E76B4();
    v30 = v29;
    swift_endAccess();
    v53 = v28;
    v54 = v30;
    v49(v6, *MEMORY[0x1E6968F70], v3);
    v31 = v52;
    v32 = v48;
    sub_1BF4E7184();
    (v50)(v6, v3);

    (v47[0])(v32, v26);
    return (*(v7 + 56))(v31, 0, 1, v26);
  }

  else
  {
    v34 = v51;
    v35 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF4E76B4();
    swift_endAccess();
    v36 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v37 = sub_1BF398FB4();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 dataContainerURL];
      if (v39)
      {
        v40 = v39;
        sub_1BF4E7154();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = v20;
      v43 = *(v7 + 56);
      v43(v18, v41, 1, v34);
      sub_1BF39D6DC(v18, v42);
      if ((*(v7 + 48))(v42, 1, v34) == 1)
      {

        sub_1BF38C9B4(v42, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
        v44 = v52;
        v45 = 1;
      }

      else
      {
        v46 = v52;
        sub_1BF4E70F4();

        (*(v7 + 8))(v42, v34);
        v44 = v46;
        v45 = 0;
      }

      return (v43)(v44, v45, 1, v34);
    }

    else
    {
      return (*(v7 + 56))(v52, 1, 1, v34);
    }
  }
}

uint64_t sub_1BF399684(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v155 = v6;
  v147 = sub_1BF4E7FF4();
  v146 = *(v147 - 8);
  v7 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v144 = v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1BF4E8064();
  v143 = *(v145 - 8);
  v9 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v142 = v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6[12];
  v150 = sub_1BF4E90F4();
  v163 = *(v150 - 8);
  v12 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v165 = v135 - v13;
  v169 = v11;
  v153 = *(v11 - 8);
  v14 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v149 = v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v148 = v135 - v18;
  v157 = v6[11];
  v19 = sub_1BF4E90F4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v168 = v135 - v21;
  v22 = v6[10];
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v166 = v135 - v29;
  v141 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v135 - v32;
  v167 = *a1;
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  v34 = qword_1EDC9AF48;
  swift_beginAccess();
  v35 = *(v3 + v34);
  v36 = v6[14];

  v164 = v36;
  sub_1BF4E8854();

  v37 = LOBYTE(aBlock[0]);
  v162 = v23;
  v38 = *(v23 + 16);
  v159 = a2;
  v161 = v23 + 16;
  v160 = v38;
  v156 = v3;
  if (LOBYTE(aBlock[0]) != 5)
  {
    v38(v33, a2, v22);
    v61 = sub_1BF4E7B34();
    v62 = sub_1BF4E8E44();
    if (os_log_type_enabled(v61, v62))
    {
      LODWORD(v154) = v62;
      v158 = v61;
      v63 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      aBlock[0] = v152;
      *v63 = 136446722;
      v64 = v166;
      v38(v166, v33, v22);
      v65 = *(v162 + 8);
      v65(v33, v22);
      v66 = v155[13];
      v67 = sub_1BF4E96A4();
      v69 = v68;
      v65(v64, v22);
      v70 = sub_1BF38D65C(v67, v69, aBlock);

      v71 = 0xE600000000000000;
      *(v63 + 4) = v70;
      *(v63 + 12) = 2082;
      v72 = 0xE600000000000000;
      v73 = 0x64656C696166;
      v74 = 0xE700000000000000;
      v75 = 0x64656B636F6C62;
      if (v37 != 3)
      {
        v75 = 0x646573756170;
        v74 = 0xE600000000000000;
      }

      if (v37 != 2)
      {
        v73 = v75;
        v72 = v74;
      }

      v76 = 0x6E61656C63;
      if (v37)
      {
        v71 = 0xE500000000000000;
      }

      else
      {
        v76 = 0x64616F6C6572;
      }

      if (v37 <= 1)
      {
        v77 = v76;
      }

      else
      {
        v77 = v73;
      }

      if (v37 <= 1)
      {
        v78 = v71;
      }

      else
      {
        v78 = v72;
      }

      v79 = sub_1BF38D65C(v77, v78, aBlock);

      v80 = 0xE600000000000000;
      *(v63 + 14) = v79;
      *(v63 + 22) = 2082;
      v81 = 0xE600000000000000;
      v82 = 0x64656C696166;
      v54 = v167;
      v83 = 0xE700000000000000;
      v84 = 0x64656B636F6C62;
      if (v167 != 3)
      {
        v84 = 0x646573756170;
        v83 = 0xE600000000000000;
      }

      if (v167 != 2)
      {
        v82 = v84;
        v81 = v83;
      }

      v85 = 0x6E61656C63;
      if (v167)
      {
        v80 = 0xE500000000000000;
      }

      else
      {
        v85 = 0x64616F6C6572;
      }

      if (v167 <= 1)
      {
        v86 = v85;
      }

      else
      {
        v86 = v82;
      }

      if (v167 <= 1)
      {
        v87 = v80;
      }

      else
      {
        v87 = v81;
      }

      v88 = sub_1BF38D65C(v86, v87, aBlock);

      *(v63 + 24) = v88;
      v89 = v158;
      _os_log_impl(&dword_1BF389000, v158, v154, "%{public}s Reload state %{public}s -> %{public}s", v63, 0x20u);
      v90 = v152;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v90, -1, -1);
      MEMORY[0x1BFB5A5D0](v63, -1, -1);

      goto LABEL_45;
    }

    (*(v162 + 8))(v33, v22);

LABEL_48:
    v54 = v167;
    goto LABEL_49;
  }

  v39 = v38;
  v38(v27, a2, v22);
  v40 = sub_1BF4E7B34();
  v41 = sub_1BF4E8E44();
  if (!os_log_type_enabled(v40, v41))
  {
    (*(v162 + 8))(v27, v22);

    goto LABEL_48;
  }

  LODWORD(v158) = v41;
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  aBlock[0] = v43;
  *v42 = 136446466;
  v44 = v166;
  v39(v166, v27, v22);
  v45 = *(v162 + 8);
  v45(v27, v22);
  v46 = v155[13];
  v47 = sub_1BF4E96A4();
  v49 = v48;
  v45(v44, v22);
  v50 = sub_1BF38D65C(v47, v49, aBlock);

  v51 = 0xE600000000000000;
  *(v42 + 4) = v50;
  *(v42 + 12) = 2082;
  v52 = 0xE600000000000000;
  v53 = 0x64656C696166;
  v54 = v167;
  v55 = 0xE700000000000000;
  v56 = 0x64656B636F6C62;
  if (v167 != 3)
  {
    v56 = 0x646573756170;
    v55 = 0xE600000000000000;
  }

  if (v167 != 2)
  {
    v53 = v56;
    v52 = v55;
  }

  v57 = 0x6E61656C63;
  if (v167)
  {
    v51 = 0xE500000000000000;
  }

  else
  {
    v57 = 0x64616F6C6572;
  }

  if (v167 <= 1)
  {
    v58 = v57;
  }

  else
  {
    v58 = v53;
  }

  if (v167 <= 1)
  {
    v59 = v51;
  }

  else
  {
    v59 = v52;
  }

  v60 = sub_1BF38D65C(v58, v59, aBlock);

  *(v42 + 14) = v60;
  _os_log_impl(&dword_1BF389000, v40, v158, "%{public}s Initial reload state %{public}s", v42, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1BFB5A5D0](v43, -1, -1);
  MEMORY[0x1BFB5A5D0](v42, -1, -1);

LABEL_45:
  a2 = v159;
LABEL_49:
  v91 = qword_1EDC9AF48;
  v92 = v156;
  swift_beginAccess();
  v93 = *(v92 + v91);

  sub_1BF4E8854();

  v94 = LOBYTE(aBlock[0]);
  v160(v166, a2, v22);
  LOBYTE(v174[0]) = v54;
  swift_beginAccess();
  sub_1BF4E8834();
  sub_1BF4E8864();
  result = swift_endAccess();
  if (v94 == 5)
  {
    v96 = v157;
    if (v54 != 2)
    {
      return result;
    }
  }

  else
  {
    v96 = v157;
    if (v54 != 5 && v94 == v54 || v94 != 2 && v54 != 2)
    {
      return result;
    }
  }

  v97 = qword_1EDCA6870;
  swift_beginAccess();
  v98 = *(v92 + v97);
  v99 = v155[16];
  v100 = v169;
  sub_1BF4E8834();

  sub_1BF4E8854();

  result = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v158 = aBlock[0];
  v101 = nullsub_1(aBlock[0], v96, v100, v99);
  v154 = v99;
  if ((v101 & 0xC000000000000001) != 0)
  {
    v102 = sub_1BF4E9414();
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v102 | 0x8000000000000000;
  }

  else
  {
    v107 = -1 << *(v101 + 32);
    v104 = ~v107;
    v103 = v101 + 64;
    v108 = -v107;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    else
    {
      v109 = -1;
    }

    v105 = v109 & *(v101 + 64);
    v106 = v101;
  }

  v135[1] = v104;
  v110 = (v104 + 64) >> 6;
  v151 = (v153 + 48);
  v140 = (v153 + 32);
  v139 = (v153 + 16);
  v137 = (v153 + 8);
  v138 = (v163 + 8);

  v136 = 0;
  v163 = 0;
  v153 = v22;
  v152 = v106;
  while ((v106 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF4E9454())
    {
LABEL_80:

      (*(*(v96 - 8) + 56))(v168, 1, 1, v96);
      result = sub_1BF39A9CC();
      if (v136)
      {
        v123 = *(v92 + qword_1EDC9AFD0);
        v124 = v166;
        v160(v166, v159, v22);
        v125 = v162;
        v126 = (*(v162 + 80) + 88) & ~*(v162 + 80);
        v127 = swift_allocObject();
        *(v127 + 2) = v22;
        *(v127 + 3) = v96;
        *(v127 + 4) = v169;
        v128 = v155;
        v129 = v164;
        *(v127 + 5) = v155[13];
        *(v127 + 6) = v129;
        v130 = v154;
        *(v127 + 7) = v128[15];
        *(v127 + 8) = v130;
        *(v127 + 9) = v128[17];
        *(v127 + 10) = v92;
        (*(v125 + 32))(&v127[v126], v124, v22);
        v172 = sub_1BF45E7FC;
        v173 = v127;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BF38E868;
        v171 = &block_descriptor_91;
        v131 = _Block_copy(aBlock);

        v132 = v142;
        sub_1BF4E8014();
        *&v174[0] = MEMORY[0x1E69E7CC0];
        sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
        sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
        v133 = v144;
        v134 = v147;
        sub_1BF4E91A4();
        MEMORY[0x1BFB591B0](0, v132, v133, v131);
        _Block_release(v131);
        (*(v146 + 8))(v133, v134);
        (*(v143 + 8))(v132, v145);
      }

      return result;
    }

    v116 = v168;
    sub_1BF4E9704();
    swift_unknownObjectRelease();
    v115 = *(v96 - 8);
LABEL_76:
    (*(v115 + 56))(v116, 0, 1, v96);
    v117 = v165;
    v118 = v169;
    sub_1BF4E8854();
    (*(v115 + 8))(v116, v96);
    if ((*v151)(v117, 1, v118) == 1)
    {
      result = (*v138)(v117, v150);
      v22 = v153;
    }

    else
    {
      v119 = v148;
      (*v140)(v148, v117, v118);
      (*v139)(v149, v119, v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D8, &qword_1BF4F1C90);
      v120 = swift_dynamicCast();
      v22 = v153;
      if (v120)
      {
        v136 = v167 == 2;
        sub_1BF38E610(v174, aBlock);
        v122 = v171;
        v121 = v172;
        __swift_mutable_project_boxed_opaque_existential_1(aBlock, v171);
        (*(v121 + 2))(v136, v122, v121);
        (*v137)(v119, v169);
        result = __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        v136 = 1;
      }

      else
      {
        (*v137)(v119, v118);
        v175 = 0;
        memset(v174, 0, sizeof(v174));
        result = sub_1BF38C9B4(v174, &qword_1EBDD95E0, &qword_1BF4F1C98);
      }
    }

    v106 = v152;
  }

  v111 = v163;
  if (v105)
  {
    v112 = v163;
LABEL_73:
    v113 = __clz(__rbit64(v105));
    v105 &= v105 - 1;
    v114 = *(v106 + 48);
    v115 = *(v96 - 8);
    v116 = v168;
    (*(v115 + 16))(v168, v114 + *(v115 + 72) * (v113 | (v112 << 6)), v96);
    goto LABEL_76;
  }

  while (1)
  {
    v112 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v112 >= v110)
    {
      goto LABEL_80;
    }

    v105 = *(v103 + 8 * v112);
    ++v111;
    if (v105)
    {
      v163 = v112;
      goto LABEL_73;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF39A9D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t storeEnumTagSinglePayload for ReloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BF39AB40@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 20);
  v8 = sub_1BF4E7194();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = *a2;
  result = sub_1BF39ABC8(a2);
  *(a4 + v7) = v9;
  return result;
}

uint64_t sub_1BF39ABC8(uint64_t a1)
{
  v2 = type metadata accessor for ControlEntryKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF39AC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7194();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BF39AD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BF39ADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  (*(v7 + 16))(v11, a1, v6);
  swift_beginAccess();
  v14 = v3[2];
  v15 = v3[3];

  sub_1BF4E70A4();

  v16 = *(a1 + *(type metadata accessor for ControlCacheKey() + 20));
  if (v16)
  {
    v17 = v16;
    sub_1BF39B13C();
    sub_1BF4E70A4();

    v32 = *(v7 + 32);
    v32(v13, v11, v6);
    v18 = [v17 intentReference];
    v33 = a2;
    if (v18)
    {
      v19 = v18;
      v20 = [v18 stableHash];

      v34 = v20;
      v21 = sub_1BF4E96A4();
      v23 = v22;
    }

    else
    {
      v23 = 0xE400000000000000;
      v21 = 1701736302;
    }

    v26 = [v17 kind];
    v27 = sub_1BF4E8914();
    v29 = v28;

    v34 = v27;
    v35 = v29;
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    MEMORY[0x1BFB58C90](v21, v23);

    sub_1BF4E70B4();

    swift_beginAccess();
    v30 = v3[4];
    v31 = v3[5];

    sub_1BF4E70C4();

    return (v32)(v33, v13, v6);
  }

  else
  {
    v24 = *(v7 + 32);
    v24(v13, v11, v6);
    return (v24)(a2, v13, v6);
  }
}

uint64_t type metadata accessor for ControlCacheKey()
{
  result = qword_1EDC9F860;
  if (!qword_1EDC9F860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimelineKey.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v3)
  {
    v5 = v3;
    [v5 stableHash];
    v6 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v6);

    v8 = 58;
    v7 = 0xE100000000000000;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = [v2 description];
  v10 = sub_1BF4E8914();
  v12 = v11;

  MEMORY[0x1BFB58C90](v10, v12);

  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  MEMORY[0x1BFB58C90](v1, v4);
  MEMORY[0x1BFB58C90](v8, v7);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return 91;
}

uint64_t getEnumTagSinglePayload for ReloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BF39B31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1BF39B398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BF4E7454();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF39B444()
{
  v1 = *v0;
  MEMORY[0x1BFB58C90](0x5B206B736154, 0xE600000000000000);
  v7 = *(v0 + *(*v0 + 160));
  v2 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](8285, 0xE200000000000000);
  v3 = *(*v0 + 144);
  v4 = *(v1 + 80);
  v5 = *(v1 + 104);
  sub_1BF4E96F4();
  return 0;
}

unint64_t ReloadConfiguration.ReloadReason.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 2)
  {
    if (!v2)
    {
      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
      v10 = *(v1 + 32);
      sub_1BF4E92E4();

      v18[0] = 0xD000000000000018;
      v18[1] = 0x80000001BF4F9760;
      if (v9)
      {
        v11 = [v9 description];
        v12 = sub_1BF4E8914();
        v14 = v13;
      }

      else
      {
        v14 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E75;
      }

      MEMORY[0x1BFB58C90](v12, v14);

      MEMORY[0x1BFB58C90](0x6F73616572202C5DLL, 0xEB00000000203A6ELL);
      MEMORY[0x1BFB58C90](v8, v10);
      goto LABEL_17;
    }

    v3 = v1 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      v4 = *(v3 + 16);
      v5 = *(v3 + 24);

      sub_1BF4E92E4();

      strcpy(v18, "systemRequest(");
      HIBYTE(v18[1]) = -18;
      MEMORY[0x1BFB58C90](v4, v5);

LABEL_17:
      MEMORY[0x1BFB58C90](41, 0xE100000000000000);
      return v18[0];
    }

    v6 = *(v3 + 16);
    sub_1BF39C510(v6);
    sub_1BF4E92E4();

    v18[0] = 0x656C756465686373;
    v18[1] = 0xEF28797274655264;
LABEL_12:
    v15 = ReloadConfiguration.ReloadReason.description.getter(v7);
    MEMORY[0x1BFB58C90](v15);

    MEMORY[0x1BFB58C90](41, 0xE100000000000000);
    sub_1BF39C9A4(v6);
    return v18[0];
  }

  if (v2 == 3)
  {
    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    strcpy(v18, "reloadLoop(");
    HIDWORD(v18[1]) = -352321536;
    v7 = sub_1BF39C510(v6);
    goto LABEL_12;
  }

  if (v2 == 4)
  {
    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1BF39C510(v6);
    sub_1BF4E92E4();

    v18[0] = 0xD00000000000001ELL;
    v18[1] = 0x80000001BF4F96E0;
    goto LABEL_12;
  }

  result = 0x437363697274656DLL;
  switch(__ROR8__(v1 + 0x6000000000000000, 3))
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return result;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x656C617473;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x6C616974696E69;
    case 7:
      return 0x6C656D6954646162;
    case 8:
      return 0x4368747541707061;
    case 9:
      v17 = 9;
      goto LABEL_33;
    case 0xALL:
      v17 = 10;
      goto LABEL_33;
    case 0xBLL:
      v17 = 13;
LABEL_33:
      result = v17 | 0xD000000000000010;
      break;
    case 0xCLL:
      result = 0x7463617265746E69;
      break;
    case 0xDLL:
      result = 0x746163696C706572;
      break;
    case 0xELL:
      result = 1752397168;
      break;
    case 0xFLL:
      result = 0xD000000000000023;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1BF39BA44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BF4E7454();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF39BAF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + qword_1EDC9AFB0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1BF39BD98(v3, sub_1BF3A72FC, v5);
}

uint64_t sub_1BF39BBBC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF39BBFC()
{
  v1 = *(v0 + *(*v0 + 200));

  os_unfair_lock_lock(v1 + 4);
  sub_1BF39BC90(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

double sub_1BF39BC90@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1BF39BCD4@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 208));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

unint64_t ReloadConfiguration.reason.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ReloadConfiguration(0) + 24));
  *a1 = v3;

  return sub_1BF39C510(v3);
}

void sub_1BF39BD98(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BF4E8324();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF39BBFC();
  if (v13)
  {

    v14 = *(*v3 + 192);

    v15 = sub_1BF4E7B34();
    v16 = sub_1BF4E8E84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v48 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v49 = v19;
      *v18 = 136446210;
      v20 = sub_1BF39B444();
      v22 = sub_1BF38D65C(v20, v21, &v49);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1BF389000, v15, v16, "%{public}s Cancelled before being scheduled", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1BFB5A5D0](v19, -1, -1);
      v23 = v18;
      a2 = v48;
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
    }

    sub_1BF42E928();
    (*(v9 + 104))(v12, *MEMORY[0x1E6985880], v8);
    v24 = sub_1BF4E9074();
    (a2)(v24, 1);
  }

  else
  {
    v25 = *(*v3 + 144);
    v26 = *(v3 + *(*v3 + 152));
    v27 = *(*v4 + 168);
    v28 = swift_allocObject();
    *(v28 + 16) = *(v7 + 80);
    *(v28 + 24) = *(v7 + 88);
    *(v28 + 32) = *(v7 + 96);
    *(v28 + 48) = *(v7 + 112);
    *(v28 + 56) = *(v7 + 120);
    *(v28 + 72) = *(v7 + 136);
    *(v28 + 80) = a2;
    *(v28 + 88) = a3;

    v29 = sub_1BF39BD0C();

    if (v29)
    {

      sub_1BF3A5D68();
      v30 = *(*v4 + 192);

      v48 = sub_1BF4E7B34();
      v31 = sub_1BF4E8E84();

      if (os_log_type_enabled(v48, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49 = v33;
        *v32 = 136446466;
        v34 = sub_1BF39B444();
        v36 = sub_1BF38D65C(v34, v35, &v49);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2082;
        v37 = sub_1BF3B978C();
        v39 = sub_1BF38D65C(v37, v38, &v49);

        *(v32 + 14) = v39;
        _os_log_impl(&dword_1BF389000, v48, v31, "%{public}s Scheduled with cancellable token: [%{public}s]", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v33, -1, -1);
        MEMORY[0x1BFB5A5D0](v32, -1, -1);

        return;
      }
    }

    else
    {
      sub_1BF3A5D68();
      v40 = *(*v4 + 192);

      v48 = sub_1BF4E7B34();
      v41 = sub_1BF4E8E84();

      if (os_log_type_enabled(v48, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49 = v43;
        *v42 = 136446210;
        v44 = sub_1BF39B444();
        v46 = sub_1BF38D65C(v44, v45, &v49);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1BF389000, v48, v41, "%{public}s Scheduled with no cancellable token.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1BFB5A5D0](v43, -1, -1);
        MEMORY[0x1BFB5A5D0](v42, -1, -1);

        return;
      }
    }

    v47 = v48;
  }
}

uint64_t sub_1BF39C368()
{
  v1 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BF39C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*v5 + 144);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v16 = &v19 - v15;
  (*(v13 + 16))(&v19 - v15, v5 + *(v11 + 160), v12);
  v17 = (*(*(v11 + 152) + 56))(a1, a2, a3, a4, a5, v12);
  (*(v13 + 8))(v16, v12);
  return v17;
}

unint64_t sub_1BF39C510(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t static ReloadConfiguration.ReloadReason.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v4 != 4)
      {
        switch(__ROR8__(v2 + 0x6000000000000000, 3))
        {
          case 1:
            if (v3 != 0xA000000000000008)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000008;
            goto LABEL_61;
          case 2:
            v20 = 0xA000000000000010;
            break;
          case 3:
            if (v3 != 0xA000000000000018)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000018;
            goto LABEL_61;
          case 4:
            v20 = 0xA000000000000020;
            break;
          case 5:
            if (v3 != 0xA000000000000028)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000028;
            goto LABEL_61;
          case 6:
            v20 = 0xA000000000000030;
            break;
          case 7:
            if (v3 != 0xA000000000000038)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000038;
            goto LABEL_61;
          case 8:
            v20 = 0xA000000000000040;
            break;
          case 9:
            if (v3 != 0xA000000000000048)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000048;
            goto LABEL_61;
          case 0xALL:
            v20 = 0xA000000000000050;
            break;
          case 0xBLL:
            if (v3 != 0xA000000000000058)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000058;
            goto LABEL_61;
          case 0xCLL:
            v20 = 0xA000000000000060;
            break;
          case 0xDLL:
            if (v3 != 0xA000000000000068)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000068;
            goto LABEL_61;
          case 0xELL:
            v20 = 0xA000000000000070;
            break;
          case 0xFLL:
            if (v3 != 0xA000000000000078)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000078;
            goto LABEL_61;
          default:
            if (v3 != 0xA000000000000000)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000000;
            goto LABEL_61;
        }

        if (v3 == v20)
        {
          sub_1BF39C9A4(*a1);
          v18 = v20;
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (v3 >> 61 != 4)
      {
LABEL_62:
        sub_1BF39C510(*a2);
        sub_1BF39C510(v2);
        goto LABEL_63;
      }
    }

    goto LABEL_22;
  }

  if (!v4)
  {
    if (v3 >> 61)
    {
      goto LABEL_62;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v9 = *(v2 + 32);
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    v12 = *(v3 + 32);
    if (v8)
    {
      if (!v11)
      {
        goto LABEL_62;
      }

      sub_1BF3EF004();
      sub_1BF39C510(v3);
      sub_1BF39C510(v2);
      v13 = v11;
      v14 = v8;
      v15 = sub_1BF4E90A4();

      if ((v15 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      sub_1BF39C510(*a2);
      sub_1BF39C510(v2);
      if (v11)
      {
LABEL_63:
        sub_1BF39C9A4(v2);
        sub_1BF39C9A4(v3);
        v6 = 0;
        return v6 & 1;
      }
    }

    if (v7 == v10 && v9 == v12)
    {
      goto LABEL_35;
    }

    v17 = sub_1BF4E9734();
LABEL_23:
    v6 = v17;
    goto LABEL_24;
  }

  if (v4 != 1)
  {
    if (v3 >> 61 != 2)
    {
      goto LABEL_62;
    }

LABEL_22:
    v16 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = v16;
    sub_1BF39C510(v3);
    sub_1BF39C510(v2);
    v17 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v23, &v22);
    goto LABEL_23;
  }

  if (v3 >> 61 != 1)
  {
    goto LABEL_62;
  }

  if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    sub_1BF39C510(v3);
    sub_1BF39C510(v2);
LABEL_35:
    sub_1BF39C9A4(v2);
    v18 = v3;
LABEL_61:
    sub_1BF39C9A4(v18);
    v6 = 1;
    return v6 & 1;
  }

  v6 = sub_1BF4E9734();
  sub_1BF39C510(v3);
  sub_1BF39C510(v2);
LABEL_24:
  sub_1BF39C9A4(v2);
  sub_1BF39C9A4(v3);
  return v6 & 1;
}

unint64_t sub_1BF39C9A4(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t sub_1BF39C9E0@<X0>(id *a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v105 = a3;
  v106 = a2;
  v104 = a4;
  v117[5] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for WidgetEntryKey();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v100 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = &v99 - v16;
  v17 = sub_1BF4E6D64();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BF4E8424();
  v102 = *(v103 - 8);
  v21 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v109 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF4E7194();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v107 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v99 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v108 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v99 - v34;
  v36 = *(v24 + 56);
  v36(&v99 - v34, 1, 1, v23);
  v37 = a1;
  v116 = v5;
  v38 = v111;
  sub_1BF3F4FF4(a1, v29);
  v112 = v35;
  if (v38)
  {
    v39 = v24;
    v40 = v23;
    v41 = a1;
    v46 = v113;
    v47 = v115;
    v48 = v116;
    v49 = v112;
    v50 = v114;
    if (*(v116 + 160) == 1)
    {
      v111 = v41;
      v51 = v112;
      v117[0] = v38;
      v52 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v53 = v110;
      v54 = swift_dynamicCast();
      v55 = v50[7];
      if (v54)
      {
        v55(v53, 0, 1, v46);
        (v50[4])(v47, v53, v46);
        if (sub_1BF41B748())
        {
          v49 = v51;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v56 = sub_1BF4E7B54();
          __swift_project_value_buffer(v56, qword_1EDCA6940);
          v57 = v101;
          sub_1BF3A5A3C(v111, v101, type metadata accessor for WidgetEntryKey);
          v58 = sub_1BF4E7B34();
          v59 = sub_1BF4E8E84();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v117[0] = v116;
            *v60 = 136446210;
            v61 = v100;
            sub_1BF3A5A3C(v57, v100, type metadata accessor for WidgetEntryKey);
            sub_1BF39D654(v57, type metadata accessor for WidgetEntryKey);
            v62 = WidgetEntryKey.description.getter();
            v64 = v63;
            sub_1BF39D654(v61, type metadata accessor for WidgetEntryKey);
            v65 = sub_1BF38D65C(v62, v64, v117);

            *(v60 + 4) = v65;
            _os_log_impl(&dword_1BF389000, v58, v59, "Not removing item for key %{public}s because of keybag", v60, 0xCu);
            v66 = v116;
            __swift_destroy_boxed_opaque_existential_1Tm(v116);
            MEMORY[0x1BFB5A5D0](v66, -1, -1);
            MEMORY[0x1BFB5A5D0](v60, -1, -1);

            (v114[1])(v115, v113);
          }

          else
          {
            sub_1BF39D654(v57, type metadata accessor for WidgetEntryKey);

            (v114[1])(v115, v46);
          }

          goto LABEL_26;
        }

        (v50[1])(v47, v46);
      }

      else
      {
        v55(v53, 1, 1, v46);
        sub_1BF38C9B4(v53, &qword_1EBDD8BF0, &qword_1BF4ED508);
      }

      v49 = v51;
      v68 = v108;
      sub_1BF38C94C(v51, v108, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v39 + 48))(v68, 1, v40) == 1)
      {
        sub_1BF38C9B4(v68, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v69 = v48;
        v70 = v39;
        v71 = *(v39 + 32);
        v72 = v107;
        v71(v107, v68, v40);
        v73 = v69[2];
        v74 = sub_1BF4E7094();
        v117[0] = 0;
        v75 = [v73 removeItemAtURL:v74 error:v117];

        if (v75)
        {
          v116 = v70;
          v76 = qword_1EDC9EFD8;
          v77 = v117[0];
          if (v76 != -1)
          {
            swift_once();
          }

          v78 = sub_1BF4E7B54();
          __swift_project_value_buffer(v78, qword_1EDCA6A48);
          v79 = v99;
          sub_1BF3A5A3C(v111, v99, type metadata accessor for WidgetEntryKey);
          v80 = v38;
          v81 = sub_1BF4E7B34();
          v82 = sub_1BF4E8E84();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v115 = v40;
            v84 = v83;
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v117[0] = v114;
            *v84 = 136446466;
            v85 = v100;
            sub_1BF3A5A3C(v79, v100, type metadata accessor for WidgetEntryKey);
            sub_1BF39D654(v79, type metadata accessor for WidgetEntryKey);
            v86 = WidgetEntryKey.description.getter();
            v88 = v87;
            sub_1BF39D654(v85, type metadata accessor for WidgetEntryKey);
            v89 = sub_1BF38D65C(v86, v88, v117);

            *(v84 + 4) = v89;
            *(v84 + 12) = 2114;
            v90 = v38;
            v91 = _swift_stdlib_bridgeErrorToNSError();
            *(v84 + 14) = v91;
            v92 = v113;
            *v113 = v91;
            _os_log_impl(&dword_1BF389000, v81, v82, "Removing item for key %{public}s because  %{public}@", v84, 0x16u);
            sub_1BF38C9B4(v92, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v92, -1, -1);
            v93 = v114;
            __swift_destroy_boxed_opaque_existential_1Tm(v114);
            MEMORY[0x1BFB5A5D0](v93, -1, -1);
            MEMORY[0x1BFB5A5D0](v84, -1, -1);

            (v116[1])(v107, v115);
          }

          else
          {
            sub_1BF39D654(v79, type metadata accessor for WidgetEntryKey);

            (v116[1])(v107, v40);
          }
        }

        else
        {
          v94 = v117[0];
          v95 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v70 + 8))(v72, v40);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    v96 = v49;
    goto LABEL_27;
  }

  sub_1BF38C9B4(v35, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v24 + 16))(v35, v29, v23);
  v36(v35, 0, 1, v23);
  v42 = v116;
  swift_beginAccess();
  sub_1BF38E49C((v42 + 15), v117);
  v43 = v117[4];
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  v111 = v37;
  v44 = [*v37 extensionIdentity];
  v45 = v109;
  v43[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  if (v116[20])
  {
    v67 = v116[2];
    sub_1BF3B36F0(v29, v67);
  }

  v106(v29, v45);
  (*(v102 + 8))(v45, v103);
  (*(v24 + 8))(v29, v23);
  v96 = v112;
LABEL_27:
  result = sub_1BF38C9B4(v96, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v98 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF39D654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF39D6DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF39D74C(void *a1)
{
  v2 = sub_1BF4E6E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 kind];
  v8 = sub_1BF4E8914();
  v10 = v9;

  v11 = sub_1BF39DC9C(0x32uLL, v8, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1BFB58C30](v11, v13, v15, v17);
  v20 = v19;

  v27[1] = v18;
  v27[2] = v20;
  sub_1BF4E6E04();
  sub_1BF399080();
  v21 = sub_1BF4E9144();
  v23 = v22;
  (*(v3 + 8))(v6, v2);

  if (!v23)
  {
    v24 = [a1 extensionIdentity];
    v25 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v21 = sub_1BF4E76B4();
    swift_endAccess();
  }

  return v21;
}

uint64_t sub_1BF39D9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF39DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 8);
  v9 = *a2;
  v10 = v8;
  sub_1BF393884(a2);
  v12 = *(a3 + 20);
  v11 = *(a3 + 24);
  v13 = sub_1BF4E7194();
  result = (*(*(v13 - 8) + 32))(a4, a1, v13);
  *(a4 + v12) = v9;
  *(a4 + v11) = v10;
  return result;
}

uint64_t sub_1BF39DB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7194();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BF39DBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

unint64_t sub_1BF39DC9C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1BF4E8A24();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1BF4E8AA4();
}

uint64_t ExtensionManager.systemDataURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1BF4E7014();
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BF4E7194();
  v53 = *(v56 - 8);
  v7 = *(v53 + 64);
  v8 = MEMORY[0x1EEE9AC00](v56);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v48 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v48 - v19;
  v21 = *MEMORY[0x1E69941A8];
  v54 = a1;
  v22 = (a1 + v21);
  swift_beginAccess();
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = v22[1];

    sub_1BF4E76F4();
    v57 = v24;
    v58 = v23;
    v26 = *MEMORY[0x1E6968F58];
    v27 = v51;
    v49 = *(v51 + 104);
    v49(v6, v26, v3);
    v48[1] = sub_1BF399080();
    v28 = v50;
    sub_1BF4E7184();
    v51 = *(v27 + 8);
    (v51)(v6, v3);

    v29 = v53;
    v48[0] = *(v53 + 8);
    v30 = v10;
    v31 = v56;
    (v48[0])(v30, v56);
    v32 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    v33 = sub_1BF4E76B4();
    v35 = v34;
    swift_endAccess();
    v57 = v33;
    v58 = v35;
    v49(v6, *MEMORY[0x1E6968F70], v3);
    v36 = v55;
    sub_1BF4E7184();
    (v51)(v6, v3);

    (v48[0])(v28, v31);
    return (*(v29 + 56))(v36, 0, 1, v31);
  }

  else
  {
    v38 = v52;
    v39 = v53;
    v40 = v56;
    v41 = v49;
    sub_1BF4E9024();
    sub_1BF4E7774();
    if (v42)
    {

      v44 = *(v41 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
      MEMORY[0x1EEE9AC00](v43);
      v48[-2] = v20;

      os_unfair_lock_lock((v44 + 24));
      sub_1BF38B758((v44 + 16), &v57);
      os_unfair_lock_unlock((v44 + 24));
    }

    else
    {
      sub_1BF4E77C4();
      sub_1BF38B8B8(v15, &v57);
      (*(v12 + 8))(v15, v38);
    }

    (*(v17 + 8))(v20, v16);
    v45 = v59;
    if (v59)
    {
      v46 = v60;
      __swift_project_boxed_opaque_existential_1(&v57, v59);
      v47 = v55;
      (*(v46 + 104))(v45, v46);
      (*(v39 + 56))(v47, 0, 1, v40);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    }

    else
    {
      sub_1BF38C9B4(&v57, &unk_1EBDD91B0, &unk_1BF4F0720);
      return (*(v39 + 56))(v55, 1, 1, v40);
    }
  }
}

uint64_t sub_1BF39E34C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 48);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF39E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  swift_beginAccess();
  if (v3[3])
  {
    v14 = v3[2];
    (*(v7 + 16))(v11, a1, v6);

    sub_1BF4E70A4();

    v15 = *(a1 + *(type metadata accessor for WidgetCacheKey() + 20));
    if (v15)
    {
      v16 = v15;
      sub_1BF39D74C(v16);
      sub_1BF4E70A4();
    }

    (*(v7 + 32))(v13, v11, v6);
  }

  else
  {
    (*(v7 + 16))(v13, a1, v6);
  }

  v17 = type metadata accessor for WidgetCacheKey();
  v18 = *(a1 + *(v17 + 20));
  if (v18)
  {
    v19 = *(a1 + *(v17 + 24));
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      sub_1BF39E648(v20, v21);
      sub_1BF4E70B4();

      swift_beginAccess();
      v22 = v3[4];
      v23 = v3[5];

      sub_1BF4E70C4();
    }
  }

  return (*(v7 + 32))(a2, v13, v6);
}

uint64_t sub_1BF39E648(void *a1, void *a2)
{
  v4 = [a1 intentReference];
  if (v4)
  {
    v5 = v4;
    [v4 stableHash];

    v21 = sub_1BF4E96A4();
    v23 = v6;
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    v8 = v21;
    v7 = v23;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = [a1 personaIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BF4E8914();
    v13 = v12;

    v14 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      [a1 family];
      v22 = sub_1BF4E8EA4();
      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
      MEMORY[0x1BFB58C90](v11, v13);

      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
      MEMORY[0x1BFB58C90](v8, v7);
    }

    else
    {

      [a1 family];
      v22 = sub_1BF4E8EA4();
      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
      MEMORY[0x1BFB58C90](v11, v13);

      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
    }

    v15 = [a2 _stringKeyRepresentation];
  }

  else
  {
    [a1 family];
    v22 = sub_1BF4E8EA4();
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    MEMORY[0x1BFB58C90](v8, v7);

    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    v15 = [a2 _stringKeyRepresentation];
  }

  v16 = v15;
  v17 = sub_1BF4E8914();
  v19 = v18;

  MEMORY[0x1BFB58C90](v17, v19);

  return v22;
}

uint64_t URL.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = sub_1BF4E7094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FD0, &qword_1BF4EFAC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF4EBEF0;
  v4 = *MEMORY[0x1E695DA98];
  *(v3 + 32) = *MEMORY[0x1E695DA98];
  type metadata accessor for URLResourceKey(0);
  v5 = v4;
  v6 = sub_1BF4E8B84();

  v18 = 0;
  v7 = [v2 resourceValuesForKeys:v6 error:&v18];

  v8 = v18;
  if (!v7)
  {
    v14 = v18;
    v15 = sub_1BF4E6FF4();

    swift_willThrow();
LABEL_6:
    v16 = sub_1BF4E7334();
    result = (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    goto LABEL_7;
  }

  sub_1BF39EB0C();
  v9 = sub_1BF4E8764();
  v10 = v8;

  sub_1BF39EB64(v9, &v19);

  if (!v19)
  {
    sub_1BF3B61EC(&v19);
    goto LABEL_6;
  }

  sub_1BF38EB2C(&v20, &v21);
  v11 = sub_1BF4E7334();
  v12 = swift_dynamicCast();
  result = (*(*(v11 - 8) + 56))(a1, v12 ^ 1u, 1, v11);
LABEL_7:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1BF39EB0C()
{
  result = qword_1EDC9FDD0;
  if (!qword_1EDC9FDD0)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FDD0);
  }

  return result;
}

_OWORD *sub_1BF39EB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1BF4E91B4();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_1BF39EC00(v6, result, *(a1 + 36), 0, a1);
    return sub_1BF38EB2C(v6, (a2 + 8));
  }

  return result;
}

id sub_1BF39EC00(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_1BF38D324(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_1BF39ECA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetEntryKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF39ED3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1BF4E8424();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  sub_1BF39F400(v2 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider, &v51);
  v18 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    v48 = v2;
    v19 = a2;
    v20 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    v21 = (*(v20 + 8))(a1, v18, v20);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      v4 = 0;
LABEL_4:
      a2 = v19;
      v5 = v48;
      goto LABEL_6;
    }

    v35 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    if (!v35)
    {
      goto LABEL_4;
    }

    [v35 dataProtectionLevel];
    sub_1BF4E8444();

    a2 = v19;
    if ((*(v9 + 48))(v17, 1, v8) != 1)
    {
      return (*(v9 + 32))(v19, v17, v8);
    }

    sub_1BF38C9B4(v17, &qword_1EBDD8AF8, &qword_1BF4EC370);
    v5 = v48;
  }

  else
  {
    sub_1BF38C9B4(&v51, &qword_1EBDD9CF0, &qword_1BF4F7A38);
  }

LABEL_6:
  if ([a1 isRemote])
  {
    v22 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
    swift_beginAccess();
    return (*(v9 + 16))(a2, v5 + v22, v8);
  }

  v24 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  swift_endAccess();
  v25 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v26 = sub_1BF398FB4();
  if (!v4)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    v36 = a2;
    v37 = v26;
    v38 = [v26 entitlements];
    v39 = sub_1BF4E88E4();
    sub_1BF3A1ED0();
    v40 = [v38 objectForKey:v39 ofClass:swift_getObjCClassFromMetadata()];

    if (v40)
    {
      sub_1BF4E9164();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    v41 = v46;
    v51 = v49;
    v52 = v50;
    if (*(&v50 + 1))
    {
      type metadata accessor for FileProtectionType(0);
      if ((swift_dynamicCast() & 1) != 0 && v54)
      {
        sub_1BF4E8434();

        if ((*(v9 + 48))(v41, 1, v8) != 1)
        {
          v42 = v47;
          (*(v9 + 32))(v47, v41, v8);
          return (*(v9 + 32))(v36, v42, v8);
        }

LABEL_30:
        v43 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
        swift_beginAccess();
        v44 = v5 + v43;
        v42 = v47;
        (*(v9 + 16))(v47, v44, v8);
        if ((*(v9 + 48))(v41, 1, v8) != 1)
        {
          sub_1BF38C9B4(v41, &qword_1EBDD8AF8, &qword_1BF4EC370);
        }

        return (*(v9 + 32))(v36, v42, v8);
      }
    }

    else
    {
      sub_1BF38C9B4(&v51, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    }

    (*(v9 + 56))(v41, 1, 1, v8);
    goto LABEL_30;
  }

LABEL_10:
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v27 = sub_1BF4E7B54();
  __swift_project_value_buffer(v27, qword_1EDCA69A0);
  v28 = a1;
  v29 = sub_1BF4E7B34();
  v30 = sub_1BF4E8E64();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_1BF389000, v29, v30, "Extension not found for %{public}@", v31, 0xCu);
    sub_1BF38C9B4(v32, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v32, -1, -1);
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
  }

  sub_1BF4B86EC();
  swift_allocError();
  *v34 = 6;
  return swift_willThrow();
}

uint64_t sub_1BF39F400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CF0, &qword_1BF4F7A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

char *WidgetEntry.init(key:protectionType:environmentProvider:observer:entrySupportsRendering:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v6 = v5;
  v82 = a5;
  v83 = a4;
  v84 = a2;
  v80 = a1;
  v81 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B08, &qword_1BF4F5E08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9B10, &qword_1BF4F5E10);
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  v16 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = v18;
  *&v6[v16] = v17;
  v19 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
  v20 = sub_1BF4E8594();
  (*(*(v20 - 8) + 56))(&v6[v19], 1, 1, v20);
  sub_1BF4E7214();
  v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher] = 0;
  v21 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content];
  v76 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  v24 = sub_1BF4E7334();
  (*(*(v24 - 8) + 56))(&v6[v23], 1, 1, v24);
  v25 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError];
  v77 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__objectWillChangePublisher;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9B20, &qword_1BF4F5E18);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v6[v26] = sub_1BF4E7C34();
  v30 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher;
  v73 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *&v6[v30] = sub_1BF4E7C34();
  v34 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__descriptorDidChangePublisher;
  v74 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__descriptorDidChangePublisher;
  v35 = *(v31 + 48);
  v36 = *(v31 + 52);
  swift_allocObject();
  *&v6[v34] = sub_1BF4E7C34();
  v75 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor;
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor] = 0;
  *&v87[0] = *&v6[v26];
  v37 = objc_opt_self();

  v38 = [v37 mainRunLoop];
  v86 = v38;
  v39 = sub_1BF4E90C4();
  (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
  sub_1BF3901C0(0, &unk_1EDC9D690, 0x1E695DFD0);
  v72 = MEMORY[0x1E695BF88];
  sub_1BF38C8B4(&unk_1EDC9EF78, &unk_1EBDD9B20, &qword_1BF4F5E18);
  sub_1BF3A0628();
  sub_1BF4E7CE4();
  sub_1BF38C9B4(v10, &qword_1EBDD9B08, &qword_1BF4F5E08);

  sub_1BF38C8B4(&qword_1EDC9EFA8, &unk_1EBDD9B10, &qword_1BF4F5E10);
  v40 = v78;
  v41 = sub_1BF4E7C84();
  (*(v79 + 8))(v15, v40);
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_objectWillChange] = v41;
  *&v87[0] = *&v6[v73];
  sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0);
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_contentDidChangePublisher] = sub_1BF4E7C84();
  *&v87[0] = *&v6[v74];
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorDidChangePublisher] = sub_1BF4E7C84();
  v42 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key;
  v43 = v80;
  sub_1BF3A3470(v80, &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key]);
  v44 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  v45 = sub_1BF4E8424();
  v46 = *(v45 - 8);
  v78 = v45;
  v79 = v46;
  (*(v46 + 16))(&v6[v44], v84, v45);
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v47 = v76;
  swift_beginAccess();
  sub_1BF3A3A54(v87, v47, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  swift_endAccess();
  v48 = *(v77 + 1);
  *v77 = xmmword_1BF4F5DE0;

  v49 = v83;
  sub_1BF38E49C(v83, &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver]);
  v50 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v51 = *(v50 + 8);
  v52 = *&v6[v42];
  v53 = v51();

  v54 = *&v6[v75];
  *&v6[v75] = v53;
  v55 = v53;

  v56 = v81;
  sub_1BF38E49C(v81, v87);
  v57 = *v43;
  v58 = v55;
  v59 = [v57 _loggingIdentifierWithoutMetrics];
  v60 = sub_1BF4E8914();
  v62 = v61;

  v63 = type metadata accessor for DescriptorMixedEnvironmentProviderAdapter();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider] = sub_1BF3A0244(v87, v53, v60, v62);
  v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_entrySupportsRendering] = v82;
  v66 = type metadata accessor for WidgetEntry(0);
  v85.receiver = v6;
  v85.super_class = v66;
  v67 = objc_msgSendSuper2(&v85, sel_init);
  v68 = *&v67[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 32];
  __swift_project_boxed_opaque_existential_1(&v67[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver], *&v67[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 24]);
  v69 = *(v68 + 16);
  v70 = v67;
  v69();

  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  (*(v79 + 8))(v84, v78);
  sub_1BF393884(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  return v70;
}

void sub_1BF39FCD4(char *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  os_unfair_lock_lock(*(v4 + 16));
  sub_1BF3A000C(v2, a1, &selRef_addObject_, "[%{public}s] Registering for descriptor changes for widget: %{public}s");
  os_unfair_lock_unlock(*(v4 + 16));
  v5 = *&a1[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key];
  sub_1BF38E49C(v2 + 32, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 24))(v6, v7);
  if (v8)
  {
    v9 = WidgetDescriptorPredicate.evaluate(with:)(*(v8 + 16));

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if (v9)
    {
      sub_1BF3AC91C(v9, a1);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1BF39FDFC()
{
  v1 = sub_1BF4E7F64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = *(v0 + 24);
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v2 + 16))(v8, v0 + v10, v1);
  sub_1BF3A44B8(v8, v0, v6);
  (*(v2 + 8))(v8, v1);
  swift_beginAccess();
  (*(v2 + 40))(v0 + v10, v6, v1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v9 + 16));
  v11 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

void sub_1BF3A000C(uint64_t a1, void *a2, SEL *a3, const char *a4)
{
  [*(a1 + 88) *a3];
  if (qword_1EDC9EFE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF4E7B54();
  __swift_project_value_buffer(v7, qword_1EDCA6A78);

  v8 = a2;
  v9 = sub_1BF4E7B34();
  v10 = sub_1BF4E8E54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);

    v15 = sub_1BF38D65C(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = [*&v8[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key] _loggingIdentifierWithoutMetrics];
    v17 = sub_1BF4E8914();
    v19 = v18;

    v20 = sub_1BF38D65C(v17, v19, &v21);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1BF389000, v9, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v12, -1, -1);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
  }
}

uint64_t sub_1BF3A0244(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable) = 0;
  v10 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *(v5 + v10) = v11;
  v13 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor;
  *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor) = 0;
  sub_1BF38E49C(a1, v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider);
  *(v5 + v13) = a2;
  v14 = (v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier);
  *v14 = a3;
  v14[1] = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = a2;
  *(v5 + 16) = sub_1BF4E7C34();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *v20 = 0;
  *(v19 + 16) = v20;
  *(v5 + 24) = v19;
  sub_1BF4E7F54();

  sub_1BF39FDFC();
  sub_1BF38E49C(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider, v28);
  v21 = v29;
  v22 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v22 + 16))(v21, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1BF3BB83C;
  *(v24 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080);
  v25 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v26 = *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable);
  *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable) = v25;

  return v5;
}

uint64_t sub_1BF3A04EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3A0524()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3A055C()
{
  sub_1BF38E49C(v0 + 32, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = (*(v2 + 24))(v1, v2);
  if (v3)
  {
    v4 = WidgetDescriptorPredicate.evaluate(with:)(*(v3 + 16));
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

unint64_t sub_1BF3A0628()
{
  result = qword_1EDC9D6A0;
  if (!qword_1EDC9D6A0)
  {
    sub_1BF3901C0(255, &unk_1EDC9D690, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D6A0);
  }

  return result;
}

unint64_t sub_1BF3A0690()
{
  result = qword_1EDC9D7A0;
  if (!qword_1EDC9D7A0)
  {
    sub_1BF4E81E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D7A0);
  }

  return result;
}

uint64_t sub_1BF3A06E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(*v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1BF38C8B4(a5, a3, a4);
  return sub_1BF4E7C84();
}

void sub_1BF3A079C()
{
  sub_1BF3901C0(319, &qword_1EDC9F120, 0x1E6994370);
  if (v0 <= 0x3F)
  {
    sub_1BF3901C0(319, &unk_1EDC9F150, 0x1E69943F0);
    if (v1 <= 0x3F)
    {
      sub_1BF3A1C10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF3A0858(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1BF3901C0(255, a3, a4);
    v5 = sub_1BF4E90F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id default argument 2 of BaseDirectoryCacheKeyProvider.init(subsystem:in:fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

void *_s9ChronoKit35ExtensionSystemDataCacheKeyProviderC19subsystemIdentifier06systemE11URLProvider11fileManagerACyxq_GSS_AA0deL0_pSo06NSFileN0CtcfC_0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_1BF38E610(a3, (v8 + 4));
  v8[9] = a4;
  return v8;
}

uint64_t static WidgetArchiver.ValidationOptions.extensionManaged(by:)(uint64_t a1)
{
  return sub_1BF3A0A24(a1, &unk_1F3DEFDC0, sub_1BF38E60C);
}

{
  return sub_1BF3A0A24(a1, &unk_1F3DEFDE8, sub_1BF38E60C);
}

uint64_t sub_1BF3A09EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3A0A24(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1BF4E8284();
  sub_1BF38E49C(a1, v7);
  v5 = swift_allocObject();
  a3(v7, v5 + 16);
  return sub_1BF4E8274();
}

uint64_t sub_1BF3A0AB0()
{
  result = sub_1BF4E7334();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t default argument 1 of WidgetUpdateTimer.init(quantum:queue:)()
{
  v0 = sub_1BF4E8004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E7F98], v0);
  v5 = sub_1BF4E8F74();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t WidgetUpdateTimer.init(quantum:queue:)(uint64_t a1, double a2)
{
  v24[4] = a1;
  v5 = *v2;
  v6 = sub_1BF4E8F24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E8ED4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1BF4E8064();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC0, &qword_1BF4F5FB0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v2 + 2) = sub_1BF4E7C34();
  result = sub_1BF4E7224();
  *(v2 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer) = 0.0;
  v19 = (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v20 = ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a2 >= 0.0)
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v19;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v21 = 1;
  }

  if ((v21 | v20))
  {
    __break(1u);
  }

  else
  {
    v2[3] = a2;
    v24[3] = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v22 = sub_1BF4E9894();
    v24[1] = v23;
    v24[2] = v22;
    sub_1BF4E8054();
    v24[5] = MEMORY[0x1E69E7CC0];
    sub_1BF3A1144(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
    v24[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF4E91A4();
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v24[0]);
    *(v2 + 4) = sub_1BF4E8F64();
    return v2;
  }

  return result;
}

uint64_t WidgetUpdateTimer.__allocating_init(quantum:queue:)(uint64_t a1, double a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  WidgetUpdateTimer.init(quantum:queue:)(a1, a2);
  return v7;
}

uint64_t sub_1BF3A1024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A106C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A10B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A10FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A1144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A118C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A11D4()
{
  result = sub_1BF4E8424();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ClientDataProtectionLevelProvider.__allocating_init(defaultLevel:extensionProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = v7 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  v10 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v11 = sub_1BF4E8424();
  (*(*(v11 - 8) + 32))(v7 + v10, a1, v11);
  return v7;
}

uint64_t sub_1BF3A1330()
{
  result = sub_1BF4E8294();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id default argument 4 of WidgetCacheManager.init(subdirectory:fileExtension:descriptorProvider:protectionLevelProvider:fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

uint64_t WidgetCacheManager.__allocating_init(subdirectory:cacheKeyProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for WidgetCacheURLProvider();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[2] = 0;
  swift_beginAccess();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0x742D6F6E6F726863;
  v13[5] = 0xEF656E696C656D69;
  sub_1BF38E49C(a3, v23);
  sub_1BF38E49C(a4, v22);
  v20 = v12;
  v21 = &protocol witness table for WidgetCacheURLProvider;
  *&v19 = v13;
  v14 = type metadata accessor for WidgetCacheManager(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();

  sub_1BF4E8284();
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v17 + 160) = a6 ^ 1;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  sub_1BF38E610(v23, v17 + 40);
  sub_1BF38E610(&v19, v17 + 80);
  sub_1BF38E610(v22, v17 + 120);
  *(v17 + 16) = a5;
  return v17;
}

uint64_t sub_1BF3A1638(uint64_t a1)
{
  v3 = qword_1EDCA6A00;
  swift_beginAccess();
  v4 = sub_1BF4E8294();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *_WidgetEntryDescriptorChangeObserver.init(label:descriptorProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[9] = 0;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  v3[10] = v7;
  sub_1BF38E49C(a3, (v3 + 4));
  v3[11] = [objc_opt_self() weakObjectsHashTable];
  v3[2] = a1;
  v3[3] = a2;
  sub_1BF3A17D0();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v3;
}

uint64_t _WidgetEntryDescriptorChangeObserver.__allocating_init(label:descriptorProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  _WidgetEntryDescriptorChangeObserver.init(label:descriptorProvider:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1BF3A17D0()
{
  v1 = v0;
  sub_1BF38E49C(v0 + 32, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v3 + 16))(v2, v3);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98E0, &qword_1BF4F3B88);
  sub_1BF38C8B4(&unk_1EDC9EF98, &qword_1EBDD98E0, &qword_1BF4F3B88);
  v4 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v5 = *(v1 + 72);
  *(v1 + 72) = v4;
}

uint64_t sub_1BF3A1908()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3A1950()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC0, &qword_1BF4F5FB0);
  sub_1BF38C8B4(&qword_1EDC9EF88, &qword_1EBDD9BC0, &qword_1BF4F5FB0);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF3A1A14()
{
  result = sub_1BF4E8424();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FixedDataProtectionProvider.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

unint64_t sub_1BF3A1B80(uint64_t a1)
{
  result = sub_1BF3A1DA8();
  *(a1 + 8) = result;
  return result;
}

void sub_1BF3A1C10()
{
  if (!qword_1EDC9FFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9FFA0);
    }
  }
}

void sub_1BF3A1C74()
{
  sub_1BF4E7194();
  if (v0 <= 0x3F)
  {
    sub_1BF3A0858(319, &qword_1EDC9D6A8, &qword_1EDC9F120, 0x1E6994370);
    if (v1 <= 0x3F)
    {
      sub_1BF3A0858(319, &qword_1EDC9D728, &unk_1EDC9F150, 0x1E69943F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BF3A1D40(uint64_t a1)
{
  result = sub_1BF39ECA4(&qword_1EDC9E8A0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF3A1DA8()
{
  result = qword_1EDC9DD60;
  if (!qword_1EDC9DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9DD60);
  }

  return result;
}

unint64_t sub_1BF3A1E00()
{
  result = qword_1EDC9DD58;
  if (!qword_1EDC9DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9DD58);
  }

  return result;
}

unint64_t sub_1BF3A1E54(uint64_t a1)
{
  result = sub_1BF3A1E7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF3A1E7C()
{
  result = qword_1EDC9E110[0];
  if (!qword_1EDC9E110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9E110);
  }

  return result;
}

unint64_t sub_1BF3A1ED0()
{
  result = qword_1EDC9F9A8;
  if (!qword_1EDC9F9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F9A8);
  }

  return result;
}

unint64_t sub_1BF3A1F20()
{
  result = qword_1EDC9E108;
  if (!qword_1EDC9E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9E108);
  }

  return result;
}

uint64_t sub_1BF3A1F74()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDC9EFC0);
  __swift_project_value_buffer(v0, qword_1EDC9EFC0);
  return sub_1BF4E7B44();
}

uint64_t type metadata accessor for EnvironmentModifiers()
{
  result = qword_1EDC9FCD0;
  if (!qword_1EDC9FCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF3A203C()
{
  v0 = sub_1BF4E8424();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for WidgetEntryKey();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1BF3A224C(319, &qword_1EDC9D770, MEMORY[0x1E6985A58]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = sub_1BF4E7334();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1BF3A224C(319, &qword_1EDC9FFA8, MEMORY[0x1E6969530]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1BF3A224C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF4E90F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for EnvironmentProvider()
{
  result = qword_1EDC9E1E8;
  if (!qword_1EDC9E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3A2354()
{
  result = sub_1BF4E7F64();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF3A23F4()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA6A78);
  __swift_project_value_buffer(v0, qword_1EDCA6A78);
  return sub_1BF4E7B44();
}

uint64_t PowerlogWidgetViewService.init(owner:)(char *a1)
{
  v14 = sub_1BF4E8F24();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1BF4E8064();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  type metadata accessor for WidgetPowerlogProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v14);
  *(v11 + 24) = sub_1BF4E8F64();
  return sub_1BF3A2868(v11, v15);
}

unint64_t sub_1BF3A2804()
{
  result = qword_1EDC9F178;
  if (!qword_1EDC9F178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F178);
  }

  return result;
}

uint64_t sub_1BF3A2868(uint64_t a1, void *a2)
{
  v16 = sub_1BF4E8F24();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8ED4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BF4E8064();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v18[3] = type metadata accessor for WidgetPowerlogProvider();
  v18[4] = sub_1BF3A10B4(qword_1EDC9E008, type metadata accessor for WidgetPowerlogProvider);
  v18[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC8];
  a2[8] = 0;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8014();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v16);
  v12 = sub_1BF4E8F64();
  a2[9] = v12;
  sub_1BF38E49C(v18, (a2 + 2));
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BF3A2C8C;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1BF3A2C88;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF3A2C38;
  aBlock[3] = &block_descriptor_52;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return a2;
  }

  return result;
}

uint64_t sub_1BF3A2C60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF3A2CCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF3A2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 64) invalidate];
  v7 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v8 = sub_1BF4E88E4();
  v9 = [v7 initWithIdentifier_];

  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  v11 = v9;

  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = swift_allocObject();
    swift_weakInit();
    v15[4] = a3;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BF3CAF50;
    v15[3] = a4;
    v14 = _Block_copy(v15);

    [v11 scheduleRepeatingWithFireInterval:v12 repeatInterval:v14 leewayInterval:900.0 queue:900.0 handler:300.0];
    _Block_release(v14);
  }
}

uint64_t sub_1BF3A2E80()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - v3;
  v4 = v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v5 = *(v4 + *(type metadata accessor for WidgetExtensionInfo() + 104));
  KeyPath = swift_getKeyPath();
  v7 = *(v5 + 16);
  if (v7)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v7, 0);
    v8 = v30;
    v10 = *(v1 + 16);
    v9 = v1 + 16;
    v11 = v5 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    v12 = (v9 - 8);
    do
    {
      v14 = v26;
      v13 = v27;
      v15 = v9;
      v25(v26, v11, v27);
      v16 = KeyPath;
      swift_getAtKeyPath();
      (*v12)(v14, v13);
      v17 = v28;
      v18 = v29;
      v30 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF3A31DC((v19 > 1), v20 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v11 += v24;
      --v7;
      v9 = v15;
      KeyPath = v16;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *sub_1BF3A30D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A68, &qword_1BF4EC038);
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