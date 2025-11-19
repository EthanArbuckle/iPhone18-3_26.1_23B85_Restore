uint64_t sub_1C4802C78()
{
  v0 = sub_1C44171D4();
  v1 = sub_1C4413190();
  sub_1C4802CD4(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v5;
}

void sub_1C4802CD4(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v20 - v12;
  v14 = *(v11 + 48);
  v16 = *(v15 + 8);
  sub_1C4EF9698();
  if (v3)
  {

    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v6 + 16))(v10, v13, a2);
    v17 = sub_1C4F01198();
    v18 = v19;
    (*(v6 + 8))(v13, a2);
  }

  *a3 = v17;
  a3[1] = v18;
}

void sub_1C4802E34()
{
  v0 = sub_1C44171D4();
  v1 = sub_1C4413190();
  sub_1C4802E94(v1, v2, v3, v4, v5, v6);

  objc_autoreleasePoolPop(v0);
}

void sub_1C4802E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C4F01188();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = *(a1 + 48);
  v13 = *(a6 + 8);
  sub_1C4EF9698();
  if (v6)
  {
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C4F0D130;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = 0xD00000000000001ELL;
    *(v14 + 40) = 0x80000001C4F9BCE0;
    sub_1C4F02AC8();
  }

  else
  {
    v15 = *(a1 + 56);
    v16 = *(a6 + 16);
    v17 = sub_1C4EF93B8();
    v19 = v18;
    sub_1C4F01178();
    v20 = sub_1C4F01158();
    v22 = v21;
    sub_1C4434000(v17, v19);
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C4F0CE60;
    *(v23 + 32) = v26;
    *(v23 + 88) = MEMORY[0x1E69E6158];
    v24 = 32123;
    if (v22)
    {
      v24 = v20;
    }

    v25 = 0xE200000000000000;
    if (v22)
    {
      v25 = v22;
    }

    *(v23 + 56) = a5;
    *(v23 + 64) = v24;
    *(v23 + 72) = v25;
    swift_unknownObjectRetain();
    sub_1C4F02AC8();
    swift_unknownObjectRelease();
  }
}

void *FeedbackWalker.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t FeedbackWalker.__deallocating_deinit()
{
  FeedbackWalker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4803164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v126 = a5;
  *&v125 = a4;
  v121 = a1;
  v9 = sub_1C456902C(&qword_1EC0BC788, &unk_1C4F30600);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v114 - v11);
  v13 = type metadata accessor for EventLogEvent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v6[2];
  v18 = type metadata accessor for FeedbackLogEntry(0);
  v19 = v128;
  sub_1C4790868(*(a3 + *(v18 + 36)), v12);
  if (v19)
  {
    return v20 & 1;
  }

  v122 = v16;
  v119 = v18;
  v21 = sub_1C44157D4(v12, 1, v13);
  v22 = a3;
  v123 = a3;
  v124 = a2;
  v127 = v6;
  v128 = v17;
  if (v21 != 1)
  {
    v24 = v122;
    sub_1C4806B0C(v12, v122, type metadata accessor for EventLogEvent);
    v25 = v6[4];
    v26 = (v24 + *(v13 + 40));
    v27 = *v26;
    v28 = v26[1];
    v29 = (a3 + *(v119 + 24));
    v30 = *v29;
    v31 = v29[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = sub_1C465C848(v27, v28, v30, v31, v25);

    if (!v32)
    {
      sub_1C4453DEC(v24, type metadata accessor for EventLogEvent);
      a2 = v124;
      v6 = v127;
      v17 = v128;
      v23 = v119;
      goto LABEL_44;
    }

    if (v126)
    {
      v34 = 0;
      v35 = *(v32 + 16);
      v36 = v32 + 32;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v35 == v34)
        {

          goto LABEL_25;
        }

        if (v34 >= *(v32 + 16))
        {
          goto LABEL_92;
        }

        sub_1C442E860(v36, &v132);
        v39 = v133;
        v38 = v134;
        sub_1C4409678(&v132, v133);
        v40 = (*(*(v38 + 8) + 8))(v39);
        if (v40 == v125 && v41 == v126)
        {
        }

        else
        {
          v43 = sub_1C4F02938();

          if ((v43 & 1) == 0)
          {
            sub_1C440962C(&v132);
            goto LABEL_21;
          }
        }

        sub_1C441D670(&v132, &v129);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = *(v37 + 16);
          sub_1C459E5B0();
          v37 = v135;
        }

        v46 = *(v37 + 16);
        if (v46 >= *(v37 + 24) >> 1)
        {
          sub_1C459E5B0();
          v37 = v135;
        }

        *(v37 + 16) = v46 + 1;
        sub_1C441D670(&v129, v37 + 40 * v46 + 32);
        v24 = v122;
LABEL_21:
        v36 += 40;
        ++v34;
      }
    }

    v37 = v32;
LABEL_25:
    v47 = v119;
    v17 = v128;
    v120 = *(v37 + 16);
    if (!v120)
    {
LABEL_43:

      sub_1C4453DEC(v24, type metadata accessor for EventLogEvent);
      v23 = v47;
      v22 = v123;
      a2 = v124;
      v6 = v127;
      goto LABEL_44;
    }

    v48 = 0;
    v49 = v37 + 32;
    *&v33 = 134218498;
    v114 = v33;
    *&v33 = 138412290;
    v118 = v33;
    while (1)
    {
      if (v48 >= *(v37 + 16))
      {
        goto LABEL_91;
      }

      sub_1C442E860(v49, &v132);
      v50 = v133;
      v51 = v134;
      v52 = sub_1C4409678(&v132, v133);
      sub_1C48047FC(v52, v17, v24, v124, v123, v50, v51, &v129);
      if (v129 == 1)
      {
        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        v53 = sub_1C4F00978();
        v117 = sub_1C442B738(v53, qword_1EDDFECB8);
        v54 = sub_1C4F00968();
        v55 = sub_1C4F01CB8();
        v56 = os_log_type_enabled(v54, v55);
        v57 = v127;
        if (v56)
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_1C43F8000, v54, v55, "Deferring feedback processing", v58, 2u);
          MEMORY[0x1C6942830](v58, -1, -1);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          v17 = v128;
          goto LABEL_41;
        }

        v59 = v57[8];
        ObjectType = swift_getObjectType();
        v115 = v57[3];
        v61 = v133;
        v60 = v134;
        v62 = sub_1C4409678(&v132, v133);
        v130 = v61;
        v131 = *(v60 + 8);
        v63 = sub_1C4422F90(&v129);
        (*(*(v61 - 8) + 16))(v63, v62, v61);
        (*(v59 + 24))(v115, v121, &v129, ObjectType, v59);
      }

      else
      {
        v64 = v127;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          v17 = v128;
          goto LABEL_35;
        }

        v65 = v64[8];
        v117 = swift_getObjectType();
        ObjectType = v64[3];
        v67 = v133;
        v66 = v134;
        v68 = sub_1C4409678(&v132, v133);
        v130 = v67;
        v131 = *(v66 + 8);
        v69 = sub_1C4422F90(&v129);
        (*(*(v67 - 8) + 16))(v69, v68, v67);
        (*(v65 + 32))(ObjectType, v121, &v129, v117, v65);
      }

      swift_unknownObjectRelease();
      sub_1C440962C(&v129);
      v17 = v128;
      v47 = v119;
LABEL_41:
      v24 = v122;
LABEL_35:
      ++v48;
      sub_1C440962C(&v132);
      v49 += 40;
      if (v120 == v48)
      {
        goto LABEL_43;
      }
    }
  }

  sub_1C4420C3C(v12, &qword_1EC0BC788, &unk_1C4F30600);
  v23 = v119;
LABEL_44:
  v70 = sub_1C4663244(*(v22 + *(v23 + 24)), *(v22 + *(v23 + 24) + 8), v6[5]);
  if (v70)
  {
    v37 = v70;
    if (v126)
    {
      v72 = 0;
      v73 = *(v70 + 16);
      v74 = v70 + 32;
      v75 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v73 == v72)
        {

          v85 = v123;
          a2 = v124;
          goto LABEL_64;
        }

        if (v72 >= *(v37 + 16))
        {
          goto LABEL_90;
        }

        sub_1C442E860(v74, &v132);
        v77 = v133;
        v76 = v134;
        sub_1C4409678(&v132, v133);
        v78 = (*(*(v76 + 8) + 8))(v77);
        if (v78 == v125 && v79 == v126)
        {
        }

        else
        {
          v81 = sub_1C4F02938();

          if ((v81 & 1) == 0)
          {
            sub_1C440962C(&v132);
            goto LABEL_61;
          }
        }

        sub_1C441D670(&v132, &v129);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v75;
        if ((v82 & 1) == 0)
        {
          v83 = *(v75 + 16);
          sub_1C459E570();
          v75 = v135;
        }

        v84 = *(v75 + 16);
        if (v84 >= *(v75 + 24) >> 1)
        {
          sub_1C459E570();
          v75 = v135;
        }

        *(v75 + 16) = v84 + 1;
        sub_1C441D670(&v129, v75 + 40 * v84 + 32);
        v17 = v128;
LABEL_61:
        v74 += 40;
        ++v72;
      }
    }

    v75 = v70;
    v85 = v22;
LABEL_64:
    v126 = *(v75 + 16);
    if (v126)
    {
      v86 = 0;
      v37 = v75 + 32;
      *&v71 = 134218498;
      v118 = v71;
      *&v71 = 138412290;
      v125 = v71;
      do
      {
        if (v86 >= *(v75 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          swift_once();
LABEL_84:
          v109 = sub_1C4F00978();
          sub_1C442B738(v109, qword_1EDDFECB8);
          v110 = sub_1C4F00968();
          v111 = sub_1C4F01CD8();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&dword_1C43F8000, v110, v111, "Got cancellation. Stopping feedback processing.", v112, 2u);
            MEMORY[0x1C6942830](v112, -1, -1);
          }

          goto LABEL_87;
        }

        sub_1C442E860(v37, &v132);
        v87 = v133;
        v88 = v134;
        v89 = sub_1C4409678(&v132, v133);
        sub_1C4804978(v17, v89, a2, v85, v87, v88, &v129);
        if (v129 == 1)
        {
          if (qword_1EDDFECB0 != -1)
          {
            swift_once();
          }

          v90 = sub_1C4F00978();
          v122 = sub_1C442B738(v90, qword_1EDDFECB8);
          v91 = sub_1C4F00968();
          v92 = sub_1C4F01CB8();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&dword_1C43F8000, v91, v92, "Deferring feedback processing", v93, 2u);
            MEMORY[0x1C6942830](v93, -1, -1);
          }

          v94 = v127;
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_78;
          }

          v95 = v94[8];
          v96 = swift_getObjectType();
          v119 = v94[3];
          v120 = v96;
          v98 = v133;
          v97 = v134;
          v99 = sub_1C4409678(&v132, v133);
          v130 = v98;
          v131 = *(v97 + 8);
          v100 = sub_1C4422F90(&v129);
          (*(*(v98 - 8) + 16))(v100, v99, v98);
          (*(v95 + 24))(v119, v121, &v129, v120, v95);
        }

        else
        {
          v101 = v127;
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_78;
          }

          v102 = v101[8];
          v122 = swift_getObjectType();
          v120 = v101[3];
          v104 = v133;
          v103 = v134;
          v105 = sub_1C4409678(&v132, v133);
          v130 = v104;
          v131 = *(v103 + 8);
          v106 = sub_1C4422F90(&v129);
          (*(*(v104 - 8) + 16))(v106, v105, v104);
          (*(v102 + 32))(v120, v121, &v129, v122, v102);
        }

        swift_unknownObjectRelease();
        sub_1C440962C(&v129);
        v85 = v123;
        a2 = v124;
LABEL_78:
        v17 = v128;
        ++v86;
        sub_1C440962C(&v132);
        v37 += 40;
      }

      while (v126 != v86);
    }

    v22 = v85;

    v6 = v127;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v107 = v6[8];
    v108 = swift_getObjectType();
    (*(v107 + 16))(v6[3], v121, a2, v22, v108, v107);
    swift_unknownObjectRelease();
  }

  LOBYTE(v37) = sub_1C4F01948();
  if (v37)
  {
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_84;
  }

LABEL_87:
  v20 = v37 ^ 1;
  return v20 & 1;
}

uint64_t sub_1C48047FC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v26 = a7;
  v9 = v8;
  v25 = a6;
  v16 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = sub_1C4EF9CD8();
  (*(*(v21 - 8) + 16))(v20, a4, v21);
  sub_1C4430B8C(a5, &v20[*(v17 + 56)], type metadata accessor for FeedbackLogEntry);
  v22 = objc_autoreleasePoolPush();
  sub_1C4804AEC(v9, a3, v20, a2, a1, v25, v26, &v27, a8);
  objc_autoreleasePoolPop(v22);
  return sub_1C4420C3C(v20, &qword_1EC0BD9E0, &unk_1C4F30610);
}

uint64_t sub_1C4804978@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v23 = a6;
  v8 = v7;
  v15 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  v20 = sub_1C4EF9CD8();
  (*(*(v20 - 8) + 16))(v19, a3, v20);
  sub_1C4430B8C(a4, &v19[*(v16 + 56)], type metadata accessor for FeedbackLogEntry);
  v21 = objc_autoreleasePoolPush();
  sub_1C4805208(v8, v19, a1, a2, a5, v23, &v24, a7);
  objc_autoreleasePoolPop(v21);
  return sub_1C4420C3C(v19, &qword_1EC0BD9E0, &unk_1C4F30610);
}

uint64_t sub_1C4804AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, CFIndex a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, _BYTE *a9@<X8>)
{
  v87 = a8;
  v77 = a5;
  v75 = a4;
  v81 = a3;
  v72 = a9;
  v73 = type metadata accessor for EventMetadata();
  v13 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  v15 = *(*(v80 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v80);
  v74 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v65[-v18];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v20 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v65[-v21];
  v23 = *(a1 + 48);
  v24 = type metadata accessor for EventLogEvent(0);
  v25 = a2;
  v26 = (a2 + *(v24 + 48));
  v28 = *v26;
  v27 = v26[1];
  v82 = a6;
  v83 = a7;
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  v78 = v23;
  v30 = v85;
  result = sub_1C4EF9698();
  if (v30)
  {
    *v87 = v30;
  }

  else
  {
    v70 = v25;
    v71 = AssociatedTypeWitness;
    v85 = v22;
    swift_getAssociatedTypeWitness();
    v32 = v84;
    sub_1C445FFF0(v81, v84, &qword_1EC0BD9E0, &unk_1C4F30610);
    v33 = &v32[*(v80 + 48)];
    v69 = type metadata accessor for FeedbackLogEntry(0);
    v34 = (v33 + *(v69 + 20));
    v35 = *v34;
    v36 = v34[1];
    sub_1C44344B8(*v34, v36);
    sub_1C4453DEC(v33, type metadata accessor for FeedbackLogEntry);
    v37 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_1C4EF9698();
    sub_1C4434000(v35, v36);
    v38 = sub_1C4EF9CD8();
    v39 = *(v38 - 8);
    v40 = v39;
    v68 = *(v39 + 8);
    v78 = v39 + 8;
    v68(v84, v38);
    v84 = v86[0];
    v41 = v24;
    v42 = *(v24 + 20);
    v43 = v73;
    v44 = v76;
    v45 = v70;
    (*(v40 + 16))(&v76[*(v73 + 20)], v70 + v42, v38);
    v46 = v45 + *(v41 + 24);
    v47 = *v46;
    LOBYTE(v36) = v46[8];
    v67 = *v45;
    v48 = v45 + *(v41 + 32);
    v70 = *v48;
    v66 = v48[8];
    v49 = v74;
    sub_1C445FFF0(v81, v74, &qword_1EC0BD9E0, &unk_1C4F30610);
    v50 = &v49[*(v80 + 48)];
    v51 = (v50 + *(v69 + 32));
    v53 = *v51;
    v52 = v51[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453DEC(v50, type metadata accessor for FeedbackLogEntry);
    v54 = v75;
    *v44 = v75;
    v55 = v44 + v43[6];
    *v55 = v47;
    v55[8] = v36;
    *(v44 + v43[7]) = v67;
    v56 = v54;
    v57 = v44 + v43[8];
    *v57 = v70;
    v57[8] = v66;
    v58 = (v44 + v43[9]);
    *v58 = v53;
    v58[1] = v52;

    v68(v49, v38);
    v81 = CFGetRetainCount(v56);
    v59 = v83;
    v60 = v82;
    (*(v83 + 64))(v86, v85);
    v61 = v79;
    v62 = v86[0];
    v63 = CFGetRetainCount(v56);
    if (v81 == v63)
    {
      swift_unknownObjectRelease();
      sub_1C4453DEC(v44, type metadata accessor for EventMetadata);
      result = (*(v61 + 8))(v85, v71);
      *v72 = v62;
    }

    else
    {
      v86[0] = 0;
      v86[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4F9BD40);
      v64 = (*(*(v59 + 8) + 8))(v60);
      MEMORY[0x1C6940010](v64);

      MEMORY[0x1C6940010](0xD00000000000002FLL, 0x80000001C4F9BD60);
      result = sub_1C4F024A8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C4805208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, _BYTE *a8@<X8>)
{
  v46 = a4;
  v47 = a7;
  v48 = a3;
  v41 = a8;
  v12 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = *(a1 + 48);
  swift_getAssociatedTypeWitness();
  v43 = a2;
  sub_1C445FFF0(a2, v17, &qword_1EC0BD9E0, &unk_1C4F30610);
  v19 = &v17[*(v12 + 48)];
  v42 = type metadata accessor for FeedbackLogEntry(0);
  v20 = &v19[*(v42 + 20)];
  v21 = *v20;
  v22 = v20[1];
  sub_1C44344B8(*v20, v22);
  v23 = v19;
  v24 = a5;
  v25 = a6;
  sub_1C4453DEC(v23, type metadata accessor for FeedbackLogEntry);
  v45 = v24;
  v26 = *(swift_getAssociatedConformanceWitness() + 8);
  v27 = v49;
  sub_1C4EF9698();
  if (v27)
  {
    sub_1C4434000(v21, v22);
    v28 = sub_1C4EF9CD8();
    result = (*(*(v28 - 8) + 8))(v17, v28);
    *v47 = v27;
  }

  else
  {
    sub_1C4434000(v21, v22);
    v30 = sub_1C4EF9CD8();
    v31 = *(*(v30 - 8) + 8);
    v31(v17, v30);
    v49 = v50;
    v32 = v44;
    sub_1C445FFF0(v43, v44, &qword_1EC0BD9E0, &unk_1C4F30610);
    v33 = v32 + *(v12 + 48);
    v34 = (v33 + *(v42 + 32));
    v36 = *v34;
    v35 = v34[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453DEC(v33, type metadata accessor for FeedbackLogEntry);
    v37 = v48;

    v31(v32, v30);
    v38 = CFGetRetainCount(v37);
    v50 = v37;
    v51 = v36;
    v52 = v35;
    (*(v25 + 40))(&v53, v49, &v50, v45, v25);
    v39 = v53;
    if (v38 == CFGetRetainCount(v48))
    {
      swift_unknownObjectRelease();

      *v41 = v39;
    }

    else
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4F9BD40);
      v40 = (*(*(v25 + 8) + 8))(v45);
      MEMORY[0x1C6940010](v40);

      MEMORY[0x1C6940010](0xD00000000000002FLL, 0x80000001C4F9BD60);
      result = sub_1C4F024A8();
      __break(1u);
    }
  }

  return result;
}

void *sub_1C480564C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  sub_1C48068D4((v0 + 7));
  return v0;
}

uint64_t sub_1C4805694()
{
  sub_1C480564C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C48056C8(uint64_t a1, void (*a2)(void, uint64_t, uint64_t, void, void))
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4EF9CC8();
  a2(0, v12, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23FeedbackSingleProcessor_feedback, 0, 0);
  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_1C48057F8()
{
  sub_1C4453DEC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23FeedbackSingleProcessor_feedback, type metadata accessor for FeedbackLogEntry);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C48058EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v11);
  (*(v12 + 16))(v10, a3, v11);
  sub_1C440BAA8(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_bookmark;
  swift_beginAccess();
  sub_1C45AD734(v10, v3 + v13);
  return swift_endAccess();
}

uint64_t sub_1C48059E0()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_start, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_bookmark, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4805AF0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3[3];
  v7 = a3[4];
  sub_1C4409678(a3, v6);
  v8 = (*(v7 + 8))(v6, v7);
  a4(a2, v8, v9);
}

void sub_1C4805BDC()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Configuration();
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  sub_1C4406EAC();
  sub_1C4430B8C(v4, v17, v18);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1C4F02248();

  v27 = 0xD000000000000020;
  v28 = 0x80000001C4F9BE20;
  MEMORY[0x1C6940010](v8, v6);

  v19 = v27;
  v20 = v28;
  v21 = type metadata accessor for KeyValueStore();
  sub_1C44099C4(v21);
  v22 = KeyValueStore.init(config:domain:)(v17, v19, v20);
  if (v1)
  {

    sub_1C4419738();
    sub_1C4453DEC(v4, v23);
    type metadata accessor for FeedbackProcessingTask();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = v22;
    sub_1C4406EAC();
    sub_1C4430B8C(v4, v14, v24);
    type metadata accessor for FeedbackWalker();
    v25 = swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    sub_1C4419738();
    sub_1C4453DEC(v4, v26);
    *(v2 + 24) = v25;
  }

  sub_1C43FBC80();
}

void sub_1C4805DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = sub_1C4EF9CD8();
  v25 = sub_1C43FCDF8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v76 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v71 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v71 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v71 - v45;
  v77 = v20;
  v47 = *(v20 + 16);
  v74 = "ngTask";
  v75 = v47;
  sub_1C446FB00();
  if (v21)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v48 = sub_1C4F00978();
    sub_1C442B738(v48, qword_1EDDFECB8);
    v49 = sub_1C4404CE0();
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CD8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v73 = v46;
      v53 = v52;
      v72 = swift_slowAlloc();
      a10 = v72;
      *v53 = 136315138;
      v78 = v21;
      v54 = v21;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v55 = sub_1C4F01198();
      v71 = v21;
      v57 = v27;
      v58 = v24;
      v59 = sub_1C441D828(v55, v56, &a10);

      *(v53 + 4) = v59;
      v24 = v58;
      v27 = v57;
      _os_log_impl(&dword_1C43F8000, v50, v51, "Error when loading bookmark: %s. Treating as having no bookmark", v53, 0xCu);
      sub_1C440962C(v72);
      sub_1C43FBE2C();
      v46 = v73;
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C440BAA8(v46, 1, 1, v24);
  }

  else
  {
    sub_1C45B69E4(v43, v46);
  }

  sub_1C445FFF0(v46, v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v60 = sub_1C44157D4(v40, 1, v24);
  sub_1C4420C3C(v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v60 == 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v61 = sub_1C4F00978();
    sub_1C442B738(v61, qword_1EDDFECB8);
    v62 = sub_1C4F00968();
    v63 = sub_1C4F01CD8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1C43F8000, v62, v63, "Feedback processing has no bookmark, so it will process the entire log.", v64, 2u);
      sub_1C43FBE2C();
    }
  }

  v65 = v76;
  v66 = *(v77 + 24);
  sub_1C4801E80(v46, v76);
  if (sub_1C44157D4(v65, 1, v24) == 1)
  {
    sub_1C4420C3C(v65, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v67 = sub_1C4F00978();
    sub_1C442B738(v67, qword_1EDDFECB8);
    v68 = sub_1C4F00968();
    v69 = sub_1C4F01CD8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1C43F8000, v68, v69, "Feedback processing didn't get a new bookmark. Possibly empty feedback log?", v70, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    (*(v27 + 32))(v32, v65, v24);
    sub_1C448EE10();
    (*(v27 + 8))(v32, v24);
  }

  sub_1C4420C3C(v46, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC80();
}

uint64_t sub_1C4806574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4801D88();
}

uint64_t sub_1C4806744()
{
  result = type metadata accessor for FeedbackLogEntry(319);
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

void sub_1C48067FC()
{
  sub_1C45C2C2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48068FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_1C4806934(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v8 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v30 == v8)
    {
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(i - 2);
    v10 = *(i - 1);
    v31 = *i;
    v12 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C445FAA8(v11, v10);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_17;
    }

    v17 = v13;
    if (v12[3] >= v15 + v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C456902C(a5, a6);
        sub_1C4F02468();
      }
    }

    else
    {
      a4();
      v18 = *a3;
      v19 = sub_1C445FAA8(v11, v10);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v14 = v19;
    }

    v21 = *a3;
    if (v17)
    {

      *(v21[7] + 16 * v14) = v31;
    }

    else
    {
      v21[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v21[6] + 16 * v14);
      *v22 = v11;
      v22[1] = v10;
      *(v21[7] + 16 * v14) = v31;
      v23 = v21[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v21[2] = v25;
    }

    ++v8;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4806B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4806CE0()
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1C49D4544(&unk_1F43D98E8);
  return v1;
}

uint64_t sub_1C4806D24(uint64_t a1)
{
  inited = _s11InitContextVMa();
  v3 = *(*(inited - 8) + 64);
  MEMORY[0x1EEE9AC00](inited - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosAutonamingViewFeedbackProcessor();
  sub_1C4806E04(a1, v5);
  return sub_1C4AAB5CC(v5);
}

uint64_t _s11InitContextVMa()
{
  result = qword_1EDDE2D28;
  if (!qword_1EDDE2D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4806E04(uint64_t a1, uint64_t a2)
{
  inited = _s11InitContextVMa();
  (*(*(inited - 8) + 16))(a2, a1, inited);
  return a2;
}

uint64_t sub_1C4806E90(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for FeedbackLogDatabase.Writer();
  *(swift_allocObject() + 16) = a1;

  a2(v5);

  if (v2 || swift_isUniquelyReferenced_nonNull_native())
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4806F80()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD70);
  v1 = sub_1C442B738(v0, qword_1EDE2CD70);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4806FFC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FCED0();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "FeedbackServiceXPC: starting...", v11, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE5BD8 != -1)
  {
    sub_1C441FA58();
  }

  v12 = sub_1C442B738(v2, qword_1EDE2CD70);
  sub_1C44098F0(a1, v7);
  v13 = type metadata accessor for Configuration();
  sub_1C440BAA8(v7, 0, 1, v13);
  swift_beginAccess();
  sub_1C45A6EE0(v7, v12);
  swift_endAccess();
  sub_1C45A6F50();
  v14 = *MEMORY[0x1E69A9F68];
  sub_1C4F01138();
  v15 = sub_1C49AA56C();
  v16 = qword_1EDE2CD60;
  qword_1EDE2CD60 = v15;
  v17 = v15;

  if (v17)
  {
    qword_1EDE2CD68 = [objc_allocWithZone(type metadata accessor for FeedbackServiceXPC.Delegate()) init];
    v18 = qword_1EDE2CD68;
    swift_unknownObjectRelease();
    [v17 setDelegate:v18];

    [v17 resume];
  }

  else
  {
    v17 = sub_1C4F00968();
    v19 = sub_1C4F01CE8();
    if (os_log_type_enabled(v17, v19))
    {
      v20 = sub_1C43FCED0();
      *v20 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v19, "Failed to create FeedbackService XPC service", v20, 2u);
      sub_1C43FBE2C();
    }
  }
}

id sub_1C480729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config);
  if (qword_1EDDFF168 != -1)
  {
    swift_once();
  }

  v11 = sub_1C44FD0B8();
  if (v4)
  {

    sub_1C480894C(a1, type metadata accessor for Configuration);
    sub_1C480894C(v3 + v10, type metadata accessor for Configuration);
    v12 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v13 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_database) = v11;
    v14 = (v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier);
    *v14 = a2;
    v14[1] = a3;
    v17.receiver = v3;
    v17.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v17, sel_init);
    sub_1C4406EC4();
    sub_1C480894C(a1, v15);
  }

  return v5;
}

void sub_1C4807420(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void (**a11)(void, uint64_t, void))
{
  v48 = a8;
  v49 = a3;
  v50 = a5;
  v51 = a7;
  v52 = a4;
  v14 = type metadata accessor for Configuration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeedbackLogEntry(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v53 = a11;
  v46 = sub_1C4F00978();
  sub_1C442B738(v46, qword_1EDE2DCD8);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a6;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C43F8000, v21, v22, "FeedbackServiceXPC: Logging feedback", v24, 2u);
    v25 = v24;
    a6 = v23;
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  v26 = sub_1C4EF9CD8();
  v27 = (*(*(v26 - 8) + 16))(v20, v48, v26);
  v28 = *(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier);
  v29 = *(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier + 8);
  v30 = &v20[v17[5]];
  *v30 = a1;
  v30[1] = a2;
  v31 = &v20[v17[6]];
  v32 = v50;
  v33 = v52;
  *v31 = v49;
  *(v31 + 1) = v33;
  v34 = &v20[v17[7]];
  *v34 = v32;
  *(v34 + 1) = a6;
  v35 = &v20[v17[8]];
  *v35 = v28;
  *(v35 + 1) = v29;
  *&v20[v17[9]] = v51;
  if (a9)
  {
    v36 = OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config;
    sub_1C44098F0(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config, v47);
    type metadata accessor for FeedbackProcessingTask();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4806460(a10 + v36);
    type metadata accessor for FeedbackWalker();
    swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    v43 = MEMORY[0x1EEE9AC00](v42);
    *(&v45 - 2) = v20;
    *(&v45 - 1) = v43;
    sub_1C48010FC(sub_1C48089A8, (&v45 - 4));
  }

  else
  {
    v37 = *(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_database);
    v38 = MEMORY[0x1EEE9AC00](v27);
    *(&v45 - 2) = v20;
    v40 = *(v39 + OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_pool);
    MEMORY[0x1EEE9AC00](v38);
    *(&v45 - 2) = sub_1C48089CC;
    *(&v45 - 1) = v41;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C37C(sub_1C48089EC, (&v45 - 4));
  }

  v44 = v53;
  v53[2](v53, 1, 0);
  sub_1C480894C(v20, type metadata accessor for FeedbackLogEntry);
  _Block_release(v44);
}

uint64_t FeedbackServiceXPC.Server.log(feedback:type:variant:eventId:timestamp:shouldProcessImmediately:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void (*a10)(uint64_t, void), uint64_t a11)
{
  v12 = v11;
  v52 = a8;
  v53 = a3;
  v54 = a5;
  v55 = a7;
  v17 = type metadata accessor for Configuration();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedbackLogEntry(0);
  v22 = sub_1C43FBCE0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v56 = a11;
  v57 = a10;
  v51 = a9;
  v50 = sub_1C4F00978();
  sub_1C442B738(v50, qword_1EDE2DCD8);
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_1C43FCED0();
    v49 = v26;
    *v29 = 0;
    _os_log_impl(&dword_1C43F8000, v27, v28, "FeedbackServiceXPC: Logging feedback", v29, 2u);
    v26 = v49;
    sub_1C43FBE2C();
  }

  v30 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v30);
  v32 = (*(v31 + 16))(v26, v52);
  v33 = *(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier);
  v34 = *(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier + 8);
  v35 = &v26[v21[5]];
  *v35 = a1;
  v35[1] = a2;
  v36 = &v26[v21[6]];
  v37 = v54;
  *v36 = v53;
  *(v36 + 1) = a4;
  v38 = &v26[v21[7]];
  *v38 = v37;
  *(v38 + 1) = a6;
  v39 = &v26[v21[8]];
  *v39 = v33;
  *(v39 + 1) = v34;
  *&v26[v21[9]] = v55;
  if (v51)
  {
    v40 = OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config;
    sub_1C44098F0(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config, v20);
    type metadata accessor for FeedbackProcessingTask();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4806460(v12 + v40);
    type metadata accessor for FeedbackWalker();
    swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    v47 = MEMORY[0x1EEE9AC00](v46);
    *(&v49 - 2) = v26;
    *(&v49 - 1) = v47;
    sub_1C48010FC(sub_1C48065E8, (&v49 - 4));
  }

  else
  {
    v41 = *(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_database);
    v42 = MEMORY[0x1EEE9AC00](v32);
    *(&v49 - 2) = v26;
    v44 = *(v43 + OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_pool);
    MEMORY[0x1EEE9AC00](v42);
    *(&v49 - 2) = sub_1C48087C4;
    *(&v49 - 1) = v45;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C37C(sub_1C4806BB4, (&v49 - 4));
  }

  v57(1, 0);
  return sub_1C480894C(v26, type metadata accessor for FeedbackLogEntry);
}

id FeedbackServiceXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C480815C(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - v10;
  if (qword_1EDDE5BD8 != -1)
  {
    sub_1C441FA58();
  }

  v12 = sub_1C442B738(v3, qword_1EDE2CD70);
  swift_beginAccess();
  sub_1C4466EEC(v12, v11);
  v13 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v11, 1, v13);
  if (result != 1)
  {
    v15 = &v11[*(v13 + 20)];
    v16 = *v15;
    v17 = *(v15 + 1);
    sub_1C4406EC4();
    sub_1C480894C(v11, v18);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v16) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v17) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v24 = sub_1C4F00978();
      sub_1C442B738(v24, qword_1EDE2DCD8);
      v25 = sub_1C4F00968();
      v26 = sub_1C4F01CF8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = sub_1C43FCED0();
        *v27 = 0;
        _os_log_impl(&dword_1C43F8000, v25, v26, "FeedbackServiceXPC: service is in no-op mode.", v27, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      v20 = *MEMORY[0x1E69A9F68];
      sub_1C4F01138();
      v21 = sub_1C446874C();

      if (v21)
      {
        v22 = sub_1C4F01108();
        v23 = [a2 valueForEntitlement_];

        if (v23)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          aBlock = 0u;
          v38 = 0u;
        }

        v41[0] = aBlock;
        v41[1] = v38;
        if (*(&v38 + 1))
        {
          sub_1C44482AC(v41, v36);
          v28 = swift_dynamicCast();
          if (v28)
          {
            v29 = v43;
          }

          else
          {
            v29 = 0;
          }

          if (v28)
          {
            v30 = v42;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v29 = 0;
          v30 = 0;
        }

        v31 = [objc_opt_self() interfaceWithProtocol_];
        [a2 setExportedInterface_];

        sub_1C4466EEC(v12, v9);
        result = sub_1C44157D4(v9, 1, v13);
        if (result != 1)
        {
          v32 = objc_allocWithZone(type metadata accessor for FeedbackServiceXPC.Server());
          v33 = sub_1C480729C(v9, v30, v29);
          [a2 setExportedObject_];

          v39 = sub_1C48086D8;
          v40 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v38 = sub_1C4833DD0;
          *(&v38 + 1) = &unk_1F43ED448;
          v34 = _Block_copy(&aBlock);
          [a2 setInterruptionHandler_];
          _Block_release(v34);
          v39 = sub_1C48086F8;
          v40 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v38 = sub_1C4833DD0;
          *(&v38 + 1) = &unk_1F43ED470;
          v35 = _Block_copy(&aBlock);
          [a2 setInvalidationHandler_];
          _Block_release(v35);
          [a2 resume];
          return 1;
        }

        goto LABEL_31;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FeedbackServiceXPC.Server()
{
  result = qword_1EC0BDA68;
  if (!qword_1EC0BDA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4808868()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C480894C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4808A04()
{
  sub_1C4404078();
  v2 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v4 = swift_allocObject();
  *(v4 + 56) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v4 + 64) = &off_1F43F72C0;
  *(v4 + 16) = 4;
  *(v4 + 72) = xmmword_1C4F306C0;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *(v4 + 88) = &unk_1F43D6DD0;
  *(v4 + 96) = v1;
  *(v4 + 112) = 0x302E302E31;
  *(v4 + 120) = 0xE500000000000000;
  *(v4 + 104) = v0;
  return v4;
}

uint64_t sub_1C4808AE4()
{
  sub_1C43FBCD4();
  v1[76] = v0;
  v1[75] = v2;
  v1[74] = v3;
  v1[73] = v4;
  v1[72] = v5;
  v6 = sub_1C4EFFA08();
  v1[77] = v6;
  sub_1C43FCF7C(v6);
  v1[78] = v7;
  v9 = *(v8 + 64);
  v1[79] = sub_1C43FBE7C();
  v10 = sub_1C4EFE1C8();
  v1[80] = v10;
  sub_1C43FCF7C(v10);
  v1[81] = v11;
  v13 = *(v12 + 64);
  v1[82] = sub_1C43FE604();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v14 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  v1[91] = sub_1C43FE604();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v17 = type metadata accessor for LOIBasedSegment(0);
  v1[94] = v17;
  sub_1C43FCF7C(v17);
  v1[95] = v18;
  v1[96] = *(v19 + 64);
  v1[97] = sub_1C43FE604();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v20 = sub_1C4F00978();
  v1[103] = v20;
  sub_1C43FCF7C(v20);
  v1[104] = v21;
  v23 = *(v22 + 64);
  v1[105] = sub_1C43FE604();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v24 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1C4808DA0()
{
  v1 = *(v0 + 880);
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "Running flight inference model");
    sub_1C43FBE2C();
  }

  v6 = *(v0 + 880);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v9 = *(v0 + 752);
  v10 = *(v0 + 744);
  v11 = *(v0 + 584);

  v14 = *(v7 + 8);
  v12 = v7 + 8;
  v13 = v14;
  *(v0 + 888) = v14;
  v15 = sub_1C4402B58();
  v14(v15);
  sub_1C442E860(v11, v0 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = *(v0 + 752);
    v42 = *(v0 + 744);
    v43 = sub_1C440A564();
LABEL_14:
    sub_1C440BAA8(v43, v44, v45, v46);
    v56 = &qword_1EC0B9790;
    v57 = &unk_1C4F0F7C0;
    v58 = v42;
LABEL_15:
    sub_1C4420C3C(v58, v56, v57);
    v59 = *(v0 + 576);
    v39 = type metadata accessor for InferredActivitySegment();
    v40 = v59;
    goto LABEL_16;
  }

  v16 = *(v0 + 816);
  v17 = *(v0 + 752);
  v18 = *(v0 + 744);
  v19 = *(v0 + 736);
  v20 = *(v0 + 592);
  sub_1C43FF01C();
  sub_1C4406EDC();
  sub_1C480BDB0();
  sub_1C442E860(v20, v0 + 56);
  if ((sub_1C44041E8() & 1) == 0)
  {
    v47 = *(v0 + 816);
    v48 = *(v0 + 752);
    v42 = *(v0 + 736);
    sub_1C4419068();
    sub_1C45AD6DC(v49, v50);
    v43 = sub_1C440A564();
    v46 = v48;
    goto LABEL_14;
  }

  v21 = *(v0 + 808);
  v22 = *(v0 + 752);
  v23 = *(v0 + 736);
  v24 = *(v0 + 728);
  v25 = *(v0 + 600);
  sub_1C43FF01C();
  sub_1C4406EDC();
  sub_1C480BDB0();
  sub_1C442E860(v25, v0 + 96);
  if ((sub_1C44041E8() & 1) == 0)
  {
    v51 = *(v0 + 816);
    v52 = *(v0 + 808);
    v53 = *(v0 + 752);
    v42 = *(v0 + 728);
    sub_1C442CA90();
    sub_1C45AD6DC(v54, v55);
    sub_1C45AD6DC(v51, v23);
    v43 = sub_1C440A564();
    v46 = v53;
    goto LABEL_14;
  }

  v26 = *(v0 + 808);
  v27 = *(v0 + 800);
  v28 = *(v0 + 752);
  sub_1C440BAA8(*(v0 + 728), 0, 1, v28);
  sub_1C4406EDC();
  sub_1C43FBC98();
  sub_1C480BDB0();
  v29 = *(v28 + 24);
  sub_1C44DDE2C();
  v30 = *(v0 + 160);
  sub_1C4420C3C(v0 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (v30)
  {
    v31 = *(v0 + 872);
    sub_1C4F00198();
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CF8();
    if (sub_1C4402B64(v33))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v34, v35, "currSegment is a visit segment");
      sub_1C43FBE2C();
    }

    v36 = *(v0 + 872);
    sub_1C44333E8();
    v37 = sub_1C4402B58();
    v13(v37);
    sub_1C441FA78();
    sub_1C45AD6DC(v25, v38);
    sub_1C45AD6DC(v24, v32);
    sub_1C45AD6DC(v30, v32);
LABEL_10:
    v39 = type metadata accessor for InferredActivitySegment();
    v40 = v12;
LABEL_16:
    sub_1C440BAA8(v40, 1, 1, v39);
    sub_1C44031B4();
    v193 = *(v0 + 744);
    v194 = *(v0 + 736);
    v195 = *(v0 + 728);
    v197 = *(v0 + 720);
    v199 = *(v0 + 712);
    v201 = *(v0 + 704);
    v203 = *(v0 + 696);
    v205 = *(v0 + 688);
    v207 = *(v0 + 680);
    v209 = *(v0 + 672);
    v211 = *(v0 + 664);
    v213 = *(v0 + 656);
    v216 = *(v0 + 632);

    v60 = *(v0 + 8);

    return v60();
  }

  v62 = *(v0 + 808);
  v63 = *(v0 + 752);
  *(v0 + 944) = *(v63 + 20);
  sub_1C4EF9B78();
  if (v64 < 2700.0)
  {
    v65 = *(v0 + 864);
    v66 = *(v0 + 808);
    v67 = *(v0 + 792);
    sub_1C4F00198();
    sub_1C4406EDC();
    sub_1C4402B58();
    sub_1C480BD58();
    v68 = sub_1C4F00968();
    v69 = sub_1C4F01CF8();
    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 792);
    if (v70)
    {
      v72 = sub_1C43FD084();
      *v72 = 134217984;
      v73 = v71 + *(v63 + 20);
      sub_1C4EF9B78();
      v75 = v74;
      sub_1C4419068();
      sub_1C45AD6DC(v71, v76);
      *(v72 + 4) = v75;
      _os_log_impl(&dword_1C43F8000, v68, v69, "currSegment duration of %f < minDurationOfFlightActivityInSeconds", v72, 0xCu);
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4419068();
      sub_1C45AD6DC(v71, v95);
    }

    v96 = *(v0 + 816);
    v97 = *(v0 + 808);
    v98 = *(v0 + 800);
    v99 = *(v0 + 576);
    v100 = *(v0 + 832) + 8;
    (v13)(*(v0 + 864), *(v0 + 824));
    sub_1C45AD6DC(v98, type metadata accessor for LOIBasedSegment);
    sub_1C45AD6DC(v97, type metadata accessor for LOIBasedSegment);
    sub_1C45AD6DC(v96, type metadata accessor for LOIBasedSegment);
    v39 = type metadata accessor for InferredActivitySegment();
    v40 = v99;
    goto LABEL_16;
  }

  v77 = *(v0 + 816);
  v78 = *(v28 + 24);
  sub_1C44DDE2C();
  if (!*(v0 + 240))
  {
    v101 = *(v0 + 816);
    v102 = *(v0 + 808);
    sub_1C45AD6DC(*(v0 + 800), type metadata accessor for LOIBasedSegment);
    v103 = sub_1C4402B58();
    sub_1C45AD6DC(v103, v104);
    sub_1C45AD6DC(v101, type metadata accessor for LOIBasedSegment);
    v56 = &qword_1EC0B97A0;
    v57 = &qword_1C4F0F7D0;
    v58 = v0 + 216;
    goto LABEL_15;
  }

  v79 = *(v0 + 800);
  v80 = *(v0 + 232);
  *(v0 + 176) = *(v0 + 216);
  *(v0 + 192) = v80;
  *(v0 + 208) = *(v0 + 248);
  v81 = *(v28 + 24);
  sub_1C44DDE2C();
  v82 = *(v0 + 816);
  if (!*(v0 + 320))
  {
    v105 = *(v0 + 808);
    v106 = *(v0 + 800);
    sub_1C442CA90();
    sub_1C45AD6DC(v107, v108);
    sub_1C45AD6DC(v105, 0);
    sub_1C45AD6DC(v82, 0);
    sub_1C46CB91C(v0 + 176);
    v56 = &qword_1EC0B97A0;
    v57 = &qword_1C4F0F7D0;
    v58 = v0 + 296;
    goto LABEL_15;
  }

  v83 = *(v0 + 800);
  v84 = *(v0 + 312);
  *(v0 + 256) = *(v0 + 296);
  *(v0 + 272) = v84;
  *(v0 + 288) = *(v0 + 328);
  v85 = *(v63 + 20);
  sub_1C4EF9B78();
  v87 = COERCE_DOUBLE(sub_1C480A2AC((v0 + 176), v0 + 256, v86));
  if (v88)
  {
    v89 = *(v0 + 816);
    v90 = *(v0 + 808);
    v91 = *(v0 + 800);
    v92 = *(v0 + 576);
    sub_1C442CA90();
    sub_1C45AD6DC(v93, v94);
    sub_1C45AD6DC(v90, 0);
    sub_1C45AD6DC(v89, 0);
    sub_1C46CB91C(v0 + 256);
    sub_1C46CB91C(v0 + 176);
    v39 = type metadata accessor for InferredActivitySegment();
    v40 = v92;
    goto LABEL_16;
  }

  v109 = v87;
  if (v87 < 45.0)
  {
    v110 = *(v0 + 856);
    sub_1C4F00198();
    v111 = sub_1C4F00968();
    v112 = sub_1C4F01CF8();
    if (sub_1C4402B64(v112))
    {
      v30 = sub_1C43FD084();
      *v30 = 134217984;
      *(v30 + 4) = v109;
      _os_log_impl(&dword_1C43F8000, v111, v62, "speedOfTravelBetweenSegments of %f is less than the threshold for flights", v30, 0xCu);
      sub_1C43FBE2C();
    }

    v113 = *(v0 + 856);
    sub_1C44333E8();
    v114 = sub_1C4402B58();
    v13(v114);
    sub_1C441FA78();
    sub_1C45AD6DC(v63, v115);
    sub_1C45AD6DC(v0 + 296, v111);
    sub_1C45AD6DC(v30, v111);
    sub_1C46CB91C(v0 + 256);
    sub_1C46CB91C(v0 + 176);
    goto LABEL_10;
  }

  v116 = *(v0 + 720);
  v117 = *(v0 + 712);
  sub_1C480BC20(v0 + 176, v0 + 336);
  v118 = swift_allocObject();
  v119 = *(v0 + 352);
  *(v118 + 16) = *(v0 + 336);
  *(v118 + 32) = v119;
  *(v118 + 48) = *(v0 + 368);
  sub_1C4EFE1B8();
  sub_1C480BC20(v0 + 256, v0 + 376);
  v120 = swift_allocObject();
  v121 = *(v0 + 392);
  *(v120 + 16) = *(v0 + 376);
  *(v120 + 32) = v121;
  *(v120 + 48) = *(v0 + 408);
  sub_1C4EFE1B8();
  v122 = *(v0 + 200);
  v123 = *(v0 + 208);
  sub_1C43FC3A4((v0 + 176));
  v125 = *(v124 + 32);
  v126 = sub_1C43FD074();
  v127(v126);
  if (*(v0 + 480))
  {
    v128 = *(v0 + 488);
    sub_1C43FC3A4((v0 + 456));
    v130 = *(v129 + 16);
    v131 = sub_1C43FD074();
    v132(v131);
    if (*(v0 + 440))
    {
      v133 = *(v0 + 448);
      sub_1C4414AF0((v0 + 416));
      v135 = *(v134 + 32);
      v136 = sub_1C43FD074();
      v214 = v137(v136);
      v217 = v138;
      sub_1C440962C((v0 + 416));
      sub_1C440962C((v0 + 456));
      goto LABEL_40;
    }

    sub_1C440962C((v0 + 456));
    v139 = &unk_1EC0BB388;
    v140 = &unk_1C4F1F2F0;
    v141 = v0 + 416;
  }

  else
  {
    v139 = &qword_1EC0BB380;
    v140 = &unk_1C4F1F2E0;
    v141 = v0 + 456;
  }

  sub_1C4420C3C(v141, v139, v140);
  v214 = 0;
  v217 = 0;
LABEL_40:
  v142 = *(v0 + 280);
  v143 = *(v0 + 288);
  sub_1C43FC3A4((v0 + 256));
  v145 = *(v144 + 32);
  v146 = sub_1C43FD074();
  v147(v146);
  if (!*(v0 + 560))
  {
    v160 = &qword_1EC0BB380;
    v161 = &unk_1C4F1F2E0;
    v162 = v0 + 536;
LABEL_45:
    sub_1C4420C3C(v162, v160, v161);
    v196 = 0;
    v159 = 0;
    goto LABEL_46;
  }

  v148 = *(v0 + 568);
  sub_1C43FC3A4((v0 + 536));
  v150 = *(v149 + 16);
  v151 = sub_1C43FD074();
  v152(v151);
  if (!*(v0 + 520))
  {
    sub_1C440962C((v0 + 536));
    v160 = &unk_1EC0BB388;
    v161 = &unk_1C4F1F2F0;
    v162 = v0 + 496;
    goto LABEL_45;
  }

  v153 = *(v0 + 528);
  sub_1C4414AF0((v0 + 496));
  v155 = *(v154 + 32);
  v156 = sub_1C43FD074();
  v196 = v157(v156);
  v159 = v158;
  sub_1C440962C((v0 + 496));
  sub_1C440962C((v0 + 536));
LABEL_46:
  v163 = *(v0 + 712);
  v164 = *(v0 + 696);
  v212 = *(v0 + 680);
  v206 = *(v0 + 648);
  v208 = *(v0 + 848);
  v210 = *(v0 + 640);
  v198 = *(v0 + 704);
  v200 = *(v0 + 632);
  v165 = *(v0 + 624);
  v202 = *(v0 + 616);
  v204 = *(v0 + 688);
  v166 = *(v0 + 608);
  sub_1C480A648(v214, v217, *(v0 + 720));

  sub_1C480A648(v196, v159, v163);

  *(v0 + 896) = sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v167 = sub_1C4EFE178();
  sub_1C43FCF7C(v167);
  *(v0 + 904) = *(v168 + 72);
  *(v0 + 948) = *(v169 + 80);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  *v200 = v170;
  *(v0 + 952) = *MEMORY[0x1E69A9AA0];
  v171 = *(v165 + 104);
  *(v0 + 912) = v171;
  *(v0 + 920) = (v165 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v171(v200);
  sub_1C4EFE198();
  sub_1C4F00198();
  (*(v206 + 16))(v212, v204, v210);
  v172 = sub_1C4F00968();
  v173 = sub_1C4F01CF8();
  v174 = os_log_type_enabled(v172, v173);
  v175 = *(v0 + 680);
  v176 = *(v0 + 648);
  v177 = *(v0 + 640);
  if (v174)
  {
    v218 = *(v0 + 640);
    v178 = sub_1C43FD084();
    *v178 = 134217984;
    sub_1C4EFE188();
    v180 = v179;
    v181 = *(v176 + 8);
    v181(v175, v218);
    *(v178 + 4) = v180;
    _os_log_impl(&dword_1C43F8000, v172, v173, "flight confidence due to poiNode = %f", v178, 0xCu);
    sub_1C43FBE2C();
  }

  else
  {

    v181 = *(v176 + 8);
    v181(v175, v177);
  }

  *(v0 + 928) = v181;
  v182 = *(v0 + 816);
  v183 = *(v0 + 800);
  v184 = *(v0 + 784);
  v185 = *(v0 + 776);
  v186 = *(v0 + 768);
  v187 = *(v0 + 760);
  v188 = *(v0 + 832) + 8;
  v215 = *(v0 + 608);
  v219 = *(v0 + 672);
  (v13)(*(v0 + 848), *(v0 + 824));
  sub_1C480BD58();
  sub_1C480BD58();
  v189 = *(v187 + 80);
  *(swift_allocObject() + 16) = v215;
  sub_1C480BDB0();
  sub_1C480BDB0();

  sub_1C4EFE1B8();
  v190 = swift_task_alloc();
  *(v0 + 936) = v190;
  *v190 = v0;
  v190[1] = sub_1C4809C44;
  v191 = *(v0 + 816);
  v192 = *(v0 + 608);

  return sub_1C480AA98();
}

uint64_t sub_1C4809C44()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 936);
  v7 = *v0;
  *(*v0 + 956) = v2;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4809D38()
{
  v1 = *(v0 + 956);
  v69 = *(v0 + 912);
  v72 = *(v0 + 920);
  v66 = *(v0 + 952);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v75 = *(v0 + 840);
  v54 = *(v0 + 688);
  v57 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 632);
  v60 = *(v0 + 616);
  v63 = *(v0 + 656);
  v6 = (*(v0 + 948) + 32) & ~*(v0 + 948);
  v7 = *(v0 + 608);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;

  sub_1C4EFE1B8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0C890;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  *v5 = v9;
  v69(v5, v66, v60);
  sub_1C4EFE198();
  sub_1C4EFE188();
  v11 = v10;
  sub_1C4F00198();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_1C43FD084();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v12, v13, "flightConfidence = %f", v14, 0xCu);
    sub_1C43FBE2C();
  }

  v15 = *(v0 + 928);
  v16 = *(v0 + 888);
  v17 = *(v0 + 840);
  v18 = v12;
  v19 = *(v0 + 832);
  v20 = *(v0 + 824);
  v76 = *(v0 + 816);
  v70 = *(v0 + 720);
  v73 = *(v0 + 800);
  v64 = *(v0 + 704);
  v67 = *(v0 + 712);
  v58 = *(v0 + 688);
  v61 = *(v0 + 696);
  v55 = *(v0 + 672);
  v21 = *(v0 + 664);
  v22 = *(v0 + 656);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);

  v16(v17, v20);
  v15(v22, v24);
  v15(v21, v24);
  v15(v55, v24);
  v15(v58, v24);
  v15(v61, v24);
  v15(v64, v24);
  v15(v67, v24);
  v15(v70, v24);
  sub_1C441FA78();
  sub_1C45AD6DC(v73, v25);
  sub_1C45AD6DC(v76, (v23 + 8));
  sub_1C46CB91C(v0 + 256);
  sub_1C46CB91C(v0 + 176);
  if (v11 >= 0.6)
  {
    v34 = *(v0 + 944);
    v35 = *(v0 + 808);
    v36 = *(v0 + 608);
    v37 = *(v0 + 576);
    v38 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v38);
    v40 = *(v39 + 16);
    v41 = sub_1C43FBC98();
    v40(v41);
    v42 = type metadata accessor for InferredActivitySegment();
    (v40)(v37 + v42[5], v35 + v34, v38);
    sub_1C4419068();
    sub_1C45AD6DC(v35, v43);
    v44 = *(v36 + 112);
    v45 = *(v36 + 120);
    *(v37 + v42[6]) = *(v36 + 16);
    *(v37 + v42[7]) = v11;
    v46 = (v37 + v42[8]);
    *v46 = v44;
    v46[1] = v45;
    sub_1C440BAA8(v37, 0, 1, v42);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v26 = *(v0 + 808);
    v27 = *(v0 + 576);
    sub_1C4419068();
    sub_1C45AD6DC(v28, v29);
    type metadata accessor for InferredActivitySegment();
    v30 = sub_1C440A564();
    sub_1C440BAA8(v30, v31, v32, v33);
  }

  sub_1C44031B4();
  v49 = *(v0 + 744);
  v50 = *(v0 + 736);
  v51 = *(v0 + 728);
  v52 = *(v0 + 720);
  v53 = *(v0 + 712);
  v56 = *(v0 + 704);
  v59 = *(v0 + 696);
  v62 = *(v0 + 688);
  v65 = *(v0 + 680);
  v68 = *(v0 + 672);
  v71 = *(v0 + 664);
  v74 = *(v0 + 656);
  v77 = *(v0 + 632);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1C480A2AC(void *a1, uint64_t a2, double a3)
{
  v5 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v6 = *(v5 + 24);
  v7 = sub_1C43FCFC0();
  v8(v7, v5);
  if (!v43)
  {
    sub_1C4420C3C(&v42, &qword_1EC0BDA78, &qword_1C4F30788);
LABEL_6:
    v38 = 0.0;
    return *&v38;
  }

  sub_1C441D670(&v42, v45);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = sub_1C4402B58();
  sub_1C4409678(v11, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C43FCFC0();
  v15(v14, v10);
  if (!v41)
  {
    sub_1C4420C3C(&v40, &qword_1EC0BDA78, &qword_1C4F30788);
    sub_1C440962C(v45);
    goto LABEL_6;
  }

  sub_1C441D670(&v40, &v42);
  v16 = v47;
  sub_1C4409678(v45, v46);
  v17 = *(v16 + 8);
  v18 = sub_1C4402B58();
  v20 = v19(v18);
  v21 = v47;
  sub_1C4409678(v45, v46);
  v22 = *(v21 + 16);
  v23 = sub_1C4402B58();
  v25 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v20 longitude:v24(v23)];
  v26 = v44;
  sub_1C4409678(&v42, v43);
  v27 = *(v26 + 8);
  v28 = sub_1C43FCFC0();
  v30 = v29(v28, v26);
  v31 = v44;
  sub_1C4409678(&v42, v43);
  v32 = *(v31 + 16);
  v33 = sub_1C43FCFC0();
  v35 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v30 longitude:{v34(v33, v31)}];
  [v35 distanceFromLocation_];
  v37 = v36;

  v38 = v37 / a3;
  sub_1C440962C(&v42);
  sub_1C440962C(v45);
  return *&v38;
}

double sub_1C480A4FC(uint64_t a1, const char *a2)
{
  v3 = sub_1C4F00978();
  sub_1C43FCE64();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4B70BBC();
  sub_1C4F00198();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_1C43FD084();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v12, v13, a2, v14, 0xCu);
    sub_1C43FBE2C();
  }

  (*(v5 + 8))(v10, v3);
  return v11;
}

uint64_t sub_1C480A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C4EFE1C8();
  sub_1C43FCE64();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v9 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v3;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;
  (*(v9 + 32))(&v14[v13], &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return sub_1C4EFE1B8();
}

double sub_1C480A7A4(void *a1, unint64_t a2, uint64_t a3)
{
  v27[0] = sub_1C4F00978();
  v6 = *(v27[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v27[0]);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[13];
  type metadata accessor for EventsFoundInAppsSignal();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = v10;
  v13 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v14 = v10;

  sub_1C479CBF4(a2, a3 + v13);
  v15 = sub_1C44F9274(0xD00000000000001DLL);

  v16 = 0.0;
  if (v15)
  {
    v17 = [v15 dictionaryValue];
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v18 = sub_1C4F00ED8();

    v27[1] = 0x746867696C46;
    v27[2] = 0xE600000000000000;
    sub_1C4F02198();
    if (*(v18 + 16))
    {
      sub_1C457AA70(v28);
      v20 = v19;

      sub_1C457E804(v28);
      if (v20)
      {
        v21 = a1[12];
        v22._object = 0x80000001C4F8AC10;
        v22._countAndFlagsBits = 0xD000000000000014;
        v16 = ConfidenceService.confidence(source:signalType:)(v22, 0);
      }
    }

    else
    {

      sub_1C457E804(v28);
    }
  }

  sub_1C4F00198();
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v23, v24, "flightConfidenceDueToFiA = %f", v25, 0xCu);
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  (*(v6 + 8))(v9, v27[0]);
  return v16;
}

uint64_t sub_1C480AA98()
{
  sub_1C43FBCD4();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_1C4F00978();
  v1[36] = v4;
  sub_1C43FCF7C(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0B97B0, &qword_1C4F30780);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  v1[39] = sub_1C43FBE7C();
  v11 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
  v1[40] = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  v1[41] = sub_1C43FBE7C();
  v14 = type metadata accessor for WalletPassContent();
  v1[42] = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  v1[43] = sub_1C43FE604();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v17 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  v1[46] = sub_1C43FE604();
  v1[47] = swift_task_alloc();
  v20 = sub_1C4EF9CD8();
  v1[48] = v20;
  sub_1C43FCF7C(v20);
  v1[49] = v21;
  v23 = *(v22 + 64);
  v1[50] = sub_1C43FBE7C();
  v24 = sub_1C456902C(&qword_1EC0B97C0, &qword_1C4F0F800);
  sub_1C43FBD18(v24);
  v26 = *(v25 + 64);
  v1[51] = sub_1C43FBE7C();
  v27 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[52] = v27;
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  v1[53] = sub_1C43FE604();
  v1[54] = swift_task_alloc();
  v30 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[55] = v30;
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  v1[56] = sub_1C43FBE7C();
  v33 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t sub_1C480ACF4()
{
  v1 = v0[48];
  v2 = v0[35];
  v34 = v0[33];
  v36 = v0[34];
  sub_1C442E860(v2 + 32, (v0 + 16));
  v3 = *(v2 + 104);
  v4 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);

  v5 = [v4 init];
  type metadata accessor for PassKitSignal();
  inited = swift_initStackObject();
  v0[57] = inited;
  v7 = v0[19];
  v8 = v0[20];
  v9 = sub_1C4418280((v0 + 16), v7);
  sub_1C43FCE64();
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = sub_1C43FBE7C();
  (*(v11 + 16))(v14, v9, v7);
  v0[58] = sub_1C4A873E0(v14, v5, v3, inited, v7, v8);
  sub_1C440962C(v0 + 16);

  sub_1C4575ED0();
  v15 = sub_1C4F01088();
  if (v15)
  {
    v33 = v0[56];
    v35 = v0[55];
    v18 = v0[53];
    v19 = v0[54];
    v20 = v0[52];
    v22 = v0[48];
    v21 = v0[49];
    v23 = v0[33];
    v24 = v0[34];
    v25 = v21[2];
    v0[59] = v25;
    v0[60] = (v21 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v19, v23, v22);
    v25(v19 + *(v20 + 48), v24, v22);
    sub_1C44DDE2C();
    v32 = *(v20 + 48);
    v26 = v21[4];
    v0[61] = v26;
    v0[62] = (v21 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v33, v18, v22);
    v27 = v21[1];
    v0[63] = v27;
    v0[64] = (v21 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v18 + v32, v22);
    sub_1C44CDA7C();
    v26(v33 + *(v35 + 36), v18 + *(v20 + 48), v22);
    v27(v18, v22);
    sub_1C4A85140(v33, v0 + 31);
    sub_1C4420C3C(v0[56], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v28 = v0[31];
    v29 = v0[32];
    v0[65] = v28;
    v0[66] = *(v28 + 16);
    v0[67] = v29;
    sub_1C43FCE74();
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C480B1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 536);
  if (v4 < *(v3 + 528))
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v3 + 520);
      if (v4 < *(v5 + 16))
      {
        v7 = *(v3 + 376);
        v6 = *(v3 + 384);
        sub_1C442E860(v5 + 40 * v4 + 32, v3 + 168);
        v8 = v4 + 1;
        v9 = *(v3 + 192);
        v10 = *(v3 + 200);
        sub_1C4409678((v3 + 168), v9);
        (*(v10 + 8))(v9, v10);
        if (sub_1C44157D4(v7, 1, v6) == 1)
        {
          v11 = *(v3 + 408);
          v12 = *(v3 + 320);
          sub_1C4420C3C(*(v3 + 376), &unk_1EC0B84E0, qword_1C4F0D2D0);
          v13 = sub_1C440A564();
          v16 = v12;
        }

        else
        {
          v17 = *(v3 + 496);
          v18 = *(v3 + 472);
          v19 = *(v3 + 480);
          v21 = *(v3 + 400);
          v20 = *(v3 + 408);
          v22 = *(v3 + 384);
          v23 = *(v3 + 360);
          v24 = *(v3 + 368);
          v65 = *(v3 + 336);
          v25 = *(v3 + 320);
          (*(v3 + 488))(v21, *(v3 + 376), v22);
          v18(v20, v21, v22);
          v18(v20 + *(v25 + 28), v21, v22);
          sub_1C442E860(v3 + 168, v3 + 208);
          sub_1C440BAA8(v23, 1, 1, v22);
          v26 = *(v3 + 232);
          v27 = *(v3 + 240);
          sub_1C43FC3A4((v3 + 208));
          v29 = *(v28 + 8);
          v30 = sub_1C43FD074();
          v31(v30);
          sub_1C45AD734(v24, v23);
          v32 = *(v3 + 232);
          v33 = *(v3 + 240);
          sub_1C4414AF0((v3 + 208));
          v35 = *(v34 + 32);
          v36 = sub_1C43FD074();
          v38 = v37(v36);
          if (v38 == 1)
          {
            v39 = 1;
          }

          else
          {
            v39 = 2;
          }

          if (!v38)
          {
            v39 = 0;
          }

          *(v23 + *(v65 + 20)) = v39;
          v40 = *(v3 + 232);
          v41 = *(v3 + 240);
          sub_1C4414AF0((v3 + 208));
          v43 = *(v42 + 56);
          v44 = sub_1C43FD074();
          v46 = v45(v44);
          v47 = (v23 + *(v65 + 24));
          *v47 = v46;
          v47[1] = v48;
          v49 = *(v3 + 240);
          sub_1C4409678((v3 + 208), *(v3 + 232));
          v50 = *(v49 + 64);
          v51 = sub_1C4402B58();
          v53 = v52(v51);
          v54 = 9;
          if (v53 < 9)
          {
            v54 = v53;
          }

          v56 = *(v3 + 504);
          v55 = *(v3 + 512);
          v57 = *(v3 + 400);
          v58 = *(v3 + 408);
          v59 = *(v3 + 384);
          v60 = *(v3 + 360);
          v61 = *(v3 + 320);
          v62 = *(v61 + 32);
          *(v60 + *(*(v3 + 336) + 28)) = v54;
          sub_1C480BD58();
          sub_1C440962C((v3 + 208));
          sub_1C45AD6DC(v60, type metadata accessor for WalletPassContent);
          v63 = sub_1C4402B58();
          v56(v63);
          v13 = v58;
          v14 = 0;
          v15 = 1;
          v16 = v61;
        }

        sub_1C440BAA8(v13, v14, v15, v16);
        sub_1C440962C((v3 + 168));
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  sub_1C440BAA8(*(v3 + 408), 1, 1, *(v3 + 320));
  v8 = *(v3 + 536);
LABEL_16:
  *(v3 + 544) = v8;
  a1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1C480B4E4()
{
  v1 = v0[40];
  if (sub_1C44157D4(v0[51], 1, v1) == 1)
  {
    goto LABEL_10;
  }

  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[39];
  sub_1C44CDA7C();
  v6 = *(v1 + 32);
  sub_1C44171F8();
  sub_1C480BD58();
  sub_1C4420C3C(v4, &qword_1EC0B97B8, &unk_1C4F0F7F0);
  if (swift_dynamicCast())
  {
    v7 = v0[44];
    v8 = v0[42];
    v9 = v0[39];
    sub_1C43FF01C();
    sub_1C44171F8();
    sub_1C480BDB0();
    v10 = v0[44];
    if (*(v7 + *(v8 + 20)))
    {
      sub_1C45AD6DC(v10, type metadata accessor for WalletPassContent);
      goto LABEL_6;
    }

    v21 = *(v10 + *(v0[42] + 28));
    sub_1C45AD6DC(v10, type metadata accessor for WalletPassContent);
    if (v21 == 4)
    {
LABEL_10:
      v22 = v0[65];
      v23 = v0[58];

      v24 = v0[56];
      v26 = v0[53];
      v25 = v0[54];
      v28 = v0[50];
      v27 = v0[51];
      v30 = v0[46];
      v29 = v0[47];
      v32 = v0[44];
      v31 = v0[45];
      v33 = v0[43];
      sub_1C4404B50();

      v34 = v0[1];
      sub_1C440405C();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    v11 = v0[42];
    v12 = v0[39];
    v13 = sub_1C440A564();
    sub_1C440BAA8(v13, v14, v15, v16);
    sub_1C4420C3C(v12, &qword_1EC0B97B0, &qword_1C4F30780);
  }

LABEL_6:
  v0[67] = v0[68];
  sub_1C43FCE74();
  sub_1C440405C();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

double sub_1C480B760(char a1, uint64_t a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0.0;
  if (a1)
  {
    v10 = *(a2 + 96);
    v11._countAndFlagsBits = 0x74694B73736150;
    v12.value._countAndFlagsBits = 0x726568746FLL;
    v11._object = 0xE700000000000000;
    v12.value._object = 0xE500000000000000;
    v9 = ConfidenceService.confidence(source:signalType:)(v11, v12);
  }

  sub_1C4F00198();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v13, v14, "flightConfidenceDueToBoardingPass = %f", v15, 0xCu);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_1C480B8F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 88);
  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v12[0] = v5;
  v12[1] = v6;
  v11[2] = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C44CE068(sub_1C44CE790, v11, v4);

  if (v7)
  {
    v9 = *(a1 + 96);
    v10._countAndFlagsBits = 0x494F506F6547;
    v10._object = 0xE600000000000000;
    ConfidenceService.confidence(source:signalType:)(v10, 0);
    return sub_1C4EFE188();
  }

  return result;
}

uint64_t sub_1C480B9CC()
{
  sub_1C440962C((v0 + 32));
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 120);

  return v0;
}

uint64_t sub_1C480BA14()
{
  sub_1C480B9CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C480BA6C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C480BB30;

  return sub_1C4808AE4();
}

uint64_t sub_1C480BB30()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_1C480BCC4()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FCF7C(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v0 + 16);
  v9 = v0 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1C480A7A4(v8, v0 + v7, v9);
}

uint64_t sub_1C480BD58()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C480BDB0()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C480BE08()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  return sub_1C480B8F0(v4, v5, v6);
}

uint64_t sub_1C480BE6C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for PhaseStores();
  *(v4 + 40) = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  *(v4 + 48) = sub_1C43FBE7C();
  v9 = type metadata accessor for Linker();
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  *(v4 + 56) = sub_1C43FBE7C();
  v12 = type metadata accessor for SGEventSourceIngestor();
  *(v4 + 64) = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  *(v4 + 72) = sub_1C43FBE7C();
  v15 = type metadata accessor for Source();
  *(v4 + 80) = v15;
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v18 = type metadata accessor for Configuration();
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  *(v4 + 104) = sub_1C43FBE7C();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C480BFA0, 0, 0);
}

uint64_t sub_1C480BFA0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1C4430BEC(v2, *(v0 + 104), type metadata accessor for Configuration);
  *(v0 + 112) = *(v2 + *(v1 + 24));
  v3 = qword_1EDDFD110;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 129);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v17 = *(v0 + 88);
  v18 = *(v0 + 48);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_1C442B738(*(v0 + 80), qword_1EDDFD118);
  sub_1C4430BEC(v10, v5, type metadata accessor for Source);
  sub_1C4430BEC(v9, v6, type metadata accessor for PhaseStores);
  v11 = v7[7];
  sub_1C4430BEC(v10, v6 + v7[5], type metadata accessor for Source);
  *(v6 + v11) = v8;
  *(v6 + v7[6]) = v4;
  sub_1C4430BEC(v10, v17, type metadata accessor for Source);
  sub_1C4430BEC(v9, v18, type metadata accessor for PhaseStores);
  *(v0 + 128) = 3;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C480C188;
  v13 = *(v0 + 88);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480C188()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C480C284, 0, 0);
}

uint64_t sub_1C480C284()
{
  v18 = *(v0 + 129);
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v16 = *(v0 + 112);
  v17 = *(v0 + 56);
  v19 = *(v0 + 88);
  v20 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  v7 = *(sub_1C4EFD548() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0CE60;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD4C8();
  sub_1C44853AC(v6, type metadata accessor for PhaseStores);
  v11 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor + 24) = v3;
  v11[4] = sub_1C480C5D0();
  v12 = sub_1C4422F90(v11);
  sub_1C4430BEC(v4, v12, type metadata accessor for SGEventSourceIngestor);
  sub_1C480C628(v1, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = v16;
  sub_1C480C628(v2, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C480C628(v17, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = v10;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = v18;
  sub_1C44853AC(v4, type metadata accessor for SGEventSourceIngestor);

  v13 = *(v0 + 8);
  v14 = *(v0 + 32);

  return v13(v14);
}

uint64_t type metadata accessor for FoundInAppsEventMatchExtractor()
{
  result = qword_1EC0BDA80;
  if (!qword_1EC0BDA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C480C5D0()
{
  result = qword_1EDDE33D8;
  if (!qword_1EDDE33D8)
  {
    type metadata accessor for SGEventSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE33D8);
  }

  return result;
}

uint64_t sub_1C480C628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C480C688(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for Fuser();
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v9 = type metadata accessor for Linker();
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v12 = type metadata accessor for SGEventSourceIngestor();
  *(v4 + 56) = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v15 = type metadata accessor for Source();
  *(v4 + 72) = v15;
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v18 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C480C7E4, 0, 0);
}

uint64_t sub_1C480C7E4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  sub_1C4419750();
  sub_1C4471814(v3, v4, v5);
  if (qword_1EDDFD110 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 129);
  v6 = *(v0 + 88);
  v20 = *(v0 + 96);
  v7 = *(v0 + 80);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = sub_1C442B738(*(v0 + 72), qword_1EDDFD118);
  *(v0 + 112) = v12;
  sub_1C4471814(v12, v6, type metadata accessor for Source);
  sub_1C4471814(v11, v8, type metadata accessor for PhaseStores);
  v13 = v9[7];
  sub_1C4471814(v12, v8 + v9[5], type metadata accessor for Source);
  *(v8 + v13) = v10;
  *(v8 + v9[6]) = v19;
  sub_1C4471814(v12, v7, type metadata accessor for Source);
  sub_1C4471814(v11, v20, type metadata accessor for PhaseStores);
  *(v0 + 128) = 1;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1C480C9B0;
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);
  v17 = *(v0 + 48);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480C9B0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C480CAAC, 0, 0);
}

uint64_t sub_1C480CAAC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v23 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  sub_1C4471814(v0[14], v0[10], type metadata accessor for Source);
  sub_1C4419750();
  sub_1C4471814(v8, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44853AC(v8, type metadata accessor for PhaseStores);
  v10 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C480C5D0();
  v11 = sub_1C4422F90(v10);
  sub_1C4471814(v5, v11, type metadata accessor for SGEventSourceIngestor);
  sub_1C44002E8();
  sub_1C4471F54(v2, v12, v13);
  sub_1C44002E8();
  sub_1C4471F54(v1, v14, v15);
  sub_1C44002E8();
  sub_1C4471F54(v23, v16, v17);
  sub_1C44002E8();
  sub_1C4471F54(v6, v18, v19);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;
  sub_1C44853AC(v5, type metadata accessor for SGEventSourceIngestor);

  v20 = v0[1];
  v21 = v0[4];

  return v20(v21);
}

uint64_t type metadata accessor for FoundInAppsEventPhase()
{
  result = qword_1EDDE3B88;
  if (!qword_1EDDE3B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C480CD80(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for PhaseStores();
  *(v3 + 32) = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v3 + 40) = sub_1C43FBE7C();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  *(v3 + 48) = sub_1C43FBE7C();
  v11 = type metadata accessor for SGContactSourceIngestor();
  *(v3 + 56) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  *(v3 + 64) = sub_1C43FBE7C();
  v14 = type metadata accessor for Source();
  *(v3 + 72) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v17 = type metadata accessor for Configuration();
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  *(v3 + 96) = sub_1C43FBE7C();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C480CEB0, 0, 0);
}

uint64_t sub_1C480CEB0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1C4430A70(v2, *(v0 + 96), type metadata accessor for Configuration);
  *(v0 + 104) = *(v2 + *(v1 + 24));
  v3 = qword_1EDDFD068;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 72), qword_1EDDFD070);
  sub_1C4430A70(v11, v6, type metadata accessor for Source);
  sub_1C4430A70(v10, v7 + *(v8 + 20), type metadata accessor for PhaseStores);
  sub_1C4430A70(v11, v7, type metadata accessor for Source);
  *(v7 + *(v8 + 24)) = v4;
  sub_1C4430A70(v11, v5, type metadata accessor for Source);
  sub_1C4430A70(v10, v9, type metadata accessor for PhaseStores);
  *(v0 + 120) = 3;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C480D08C;
  v13 = *(v0 + 80);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480D08C()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C480D188, 0, 0);
}

uint64_t sub_1C480D188()
{
  v18 = *(v0 + 121);
  v1 = *(v0 + 96);
  v17 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v19 = *(v0 + 80);
  v20 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  v8 = *(sub_1C4EFD548() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0D130;
  sub_1C4EFD4C8();
  sub_1C44857CC(v7);
  v12 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor + 24) = v4;
  v12[4] = sub_1C480D490();
  v13 = sub_1C4422F90(v12);
  sub_1C480D4E8(v3, v13, type metadata accessor for SGContactSourceIngestor);
  sub_1C480D4E8(v1, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = v17;
  sub_1C480D4E8(v2, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C480D4E8(v5, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = v11;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = v18;

  v14 = *(v0 + 8);
  v15 = *(v0 + 24);

  return v14(v15);
}

uint64_t type metadata accessor for FoundInAppsPersonMatchExtractor()
{
  result = qword_1EC0BDA90;
  if (!qword_1EC0BDA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C480D490()
{
  result = qword_1EDDE1C68;
  if (!qword_1EDDE1C68)
  {
    type metadata accessor for SGContactSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1C68);
  }

  return result;
}

uint64_t sub_1C480D4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C480D544(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for SGContactSourceIngestor();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v14 = type metadata accessor for Source();
  *(v3 + 64) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C480D69C, 0, 0);
}

uint64_t sub_1C480D69C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD068 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 121);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 64), qword_1EDDFD070);
  *(v0 + 104) = v13;
  sub_1C44717B8(v13, v7, type metadata accessor for Source);
  sub_1C44717B8(v12, v10 + *(v11 + 20), type metadata accessor for PhaseStores);
  sub_1C44717B8(v13, v10, type metadata accessor for Source);
  *(v10 + *(v11 + 24)) = v6;
  sub_1C44717B8(v13, v9, type metadata accessor for Source);
  sub_1C44717B8(v12, v8, type metadata accessor for PhaseStores);
  *(v0 + 120) = 1;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1C480D854;
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480D854()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C480D950, 0, 0);
}

uint64_t sub_1C480D950()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C480D490();
  v11 = sub_1C4422F90(v10);
  sub_1C480DBF0(v5, v11, type metadata accessor for SGContactSourceIngestor);
  sub_1C44002E8();
  sub_1C480DBF0(v2, v12, v13);
  sub_1C44002E8();
  sub_1C480DBF0(v1, v14, v15);
  sub_1C44002E8();
  sub_1C480DBF0(v23, v16, v17);
  sub_1C44002E8();
  sub_1C480DBF0(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = v0[1];
  v21 = v0[3];

  return v20(v21);
}

uint64_t type metadata accessor for FoundInAppsPersonPhase()
{
  result = qword_1EDDE2C00;
  if (!qword_1EDDE2C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C480DBF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t Array<A>.sqlExpression.getter()
{
  Array<A>.jsonString()();
  sub_1C440AB40();
}

uint64_t Array<A>.jsonString()()
{
  v1 = sub_1C4F01188();
  v2 = sub_1C43FBD18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EF9378();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = sub_1C4EF93D8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9358();
  sub_1C4EF9388();
  sub_1C456902C(&qword_1EC0BDAA0, &unk_1C4F30838);
  sub_1C480E500();
  sub_1C4EF93B8();
  if (!v0)
  {
    sub_1C4F01178();
    sub_1C43FFE24();
    v7 = sub_1C4F01158();
    v16 = v15;
    v17 = sub_1C43FFE24();
    sub_1C4434000(v17, v18);
    if (!v16)
    {
      v7 = 0x80000001C4F9C250;
      sub_1C480E5DC();
      swift_allocError();
      *v20 = 0xD000000000000032;
      v20[1] = 0x80000001C4F9C250;
      swift_willThrow();
    }
  }

  return v7;
}

uint64_t Array<A>.csvString()(uint64_t a1)
{
  v2 = type metadata accessor for Source();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v7 = (v6 - v5);
  v8 = *(a1 + 16);
  if (v8)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1C449ED64(v9, v7);
      v12 = *v7;
      v11 = v7[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v7);
      v13 = *(v17 + 16);
      if (v13 >= *(v17 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v15 = sub_1C4F01048();

  return v15;
}

uint64_t Dictionary<>.sqlExpression.getter()
{
  Dictionary<>.jsonString()();
  sub_1C440AB40();
}

uint64_t Dictionary<>.jsonString()()
{
  v1 = sub_1C4F01188();
  v2 = sub_1C43FBD18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EF9378();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = sub_1C4EF93D8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9358();
  sub_1C4EF9388();
  sub_1C4F00FA8();
  swift_getWitnessTable();
  sub_1C4EF93B8();
  if (!v0)
  {
    sub_1C4F01178();
    sub_1C43FFE24();
    v7 = sub_1C4F01158();
    v16 = v15;
    v17 = sub_1C43FFE24();
    sub_1C4434000(v17, v18);
    if (!v16)
    {
      v7 = 0x80000001C4F9C250;
      sub_1C480E5DC();
      swift_allocError();
      *v20 = 0xD000000000000032;
      v20[1] = 0x80000001C4F9C250;
      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1C480E4EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 24);
  return Dictionary<>.sqlExpression.getter();
}

unint64_t sub_1C480E500()
{
  result = qword_1EC0BDAA8;
  if (!qword_1EC0BDAA8)
  {
    sub_1C4572308(&qword_1EC0BDAA0, &unk_1C4F30838);
    sub_1C480E584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAA8);
  }

  return result;
}

unint64_t sub_1C480E584()
{
  result = qword_1EDDF0D68;
  if (!qword_1EDDF0D68)
  {
    type metadata accessor for Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0D68);
  }

  return result;
}

unint64_t sub_1C480E5DC()
{
  result = qword_1EC0BDAB0;
  if (!qword_1EC0BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAB0);
  }

  return result;
}

uint64_t sub_1C480E724(unsigned __int8 a1)
{
  sub_1C441EC18();
  MEMORY[0x1C69417F0](a1 - 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480E768()
{
  sub_1C441EC18();
  sub_1C47E1854();
  sub_1C4406EF4();

  return sub_1C4F02B68();
}

uint64_t sub_1C480E7C8(char a1)
{
  sub_1C441EC18();
  MEMORY[0x1C69417F0](qword_1C4F30B18[a1]);
  return sub_1C4F02B68();
}

uint64_t sub_1C480E938(char a1)
{
  sub_1C441EC18();
  MEMORY[0x1C69417F0](a1 & 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480E990(uint64_t a1, uint64_t a2)
{
  sub_1C441EC18();
  v3 = sub_1C4435060();
  MEMORY[0x1C69417F0](v3);
  MEMORY[0x1C69417F0](a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C480EAD8()
{
  sub_1C441EC18();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EB20()
{
  sub_1C441EC18();
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EBE0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1C441EC18();
  a2(v5, a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480ECB8()
{
  sub_1C441EC18();
  sub_1C4408A68();
  return sub_1C4F02B68();
}

uint64_t sub_1C480ED74(unsigned __int8 a1, void (*a2)(void))
{
  sub_1C441EC18();
  a2(a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480EE10(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1C441EC18();
  a2(a1);
  sub_1C4406EF4();

  return sub_1C4F02B68();
}

uint64_t sub_1C480EE60()
{
  sub_1C441EC18();
  sub_1C441CA2C();
  sub_1C4F02B28();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EE9C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1C441EC18();
  v3 = sub_1C4435060();
  a2(v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C480EEE8()
{
  sub_1C441EC18();
  sub_1C441CA2C();
  sub_1C4F02B38();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EF6C()
{
  sub_1C4411D30();
  sub_1C4417210();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480EFDC()
{
  sub_1C4411D30();
  sub_1C441CA2C();
  sub_1C4F02B28();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F014()
{
  sub_1C4411D30();
  sub_1C441CA2C();
  sub_1C4F02B38();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02AF8();
  v4 = sub_1C4435060();
  MEMORY[0x1C69417F0](v4);
  MEMORY[0x1C69417F0](a3);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F14C()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F1F0()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F29C()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F310()
{
  sub_1C4411D30();
  sub_1C4417210();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F3D0()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F47C()
{
  sub_1C4F02AF8();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F574(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a2 & 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F5E8()
{
  v1 = sub_1C440D448();
  v0(v1);
  sub_1C4406EF4();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F64C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a2 - 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F694()
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F6F8(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](qword_1C4F30B18[a2]);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F790()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F818()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F87C()
{
  sub_1C4411D30();
  sub_1C4417210();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F93C()
{
  sub_1C4F02AF8();
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F994()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FA1C()
{
  sub_1C4F02AF8();
  sub_1C4408A68();
  return sub_1C4F02B68();
}

uint64_t sub_1C480FA54()
{
  sub_1C4411D30();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FAF0()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FBA0()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FC3C()
{
  sub_1C440D448();
  v0(v3, v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FC7C()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FD14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  v4 = sub_1C4435060();
  a3(v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FD7C()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FE40()
{
  sub_1C4411D30();
  sub_1C44131B0();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FEC8(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  sub_1C4F02AF8();
  a3(a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FF2C()
{
  sub_1C440D448();
  v0(v1);
  sub_1C4406EF4();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FF74()
{
  sub_1C4411D30();
  sub_1C47E1854();
  sub_1C4406EF4();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FFB8()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4810078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C480FFB8();
  *a2 = result;
  return result;
}

uint64_t sub_1C48100A8(uint64_t a1)
{
  v2 = sub_1C45021B8();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C48100F4(uint64_t a1)
{
  v2 = sub_1C45021B8();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t FusedTriple.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFF8A8();
  v53 = sub_1C43FCDF8(v4);
  v54 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v52 = v9 - v8;
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v10);
  v57 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4F02248();

  v59 = 60;
  v60 = 0xE100000000000000;
  v58[0] = a1;
  swift_getMetatypeMetadata();
  v21 = sub_1C4F01198();
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  v55 = *(a2 + 8);
  v22 = v55[1];
  sub_1C43FD7D4();
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v23, v24);
  v25 = sub_1C4F02858();
  MEMORY[0x1C6940010](v25);

  v26 = *(v18 + 8);
  v27 = sub_1C4410CBC();
  v28(v27);
  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C43FD7D4();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  sub_1C4811074(v29, v30);
  v31 = sub_1C4F02858();
  MEMORY[0x1C6940010](v31);

  v51 = *(v57 + 8);
  v32 = sub_1C43FC0A8();
  v33(v32);
  MEMORY[0x1C6940010](0x273A69722027, 0xE600000000000000);
  sub_1C43FD7D4();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v34, v35);
  v36 = sub_1C4F02858();
  MEMORY[0x1C6940010](v36);

  (*(v54 + 8))(v52, v53);
  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  sub_1C43FEDF8();
  sub_1C4EFF7C8();
  v37 = sub_1C4F02858();
  MEMORY[0x1C6940010](v37);

  v38 = sub_1C43FC0A8();
  v51(v38);
  MEMORY[0x1C6940010](0x273A6F2027, 0xE500000000000000);
  sub_1C43FD7D4();
  v39 = sub_1C4EFF7D8();
  MEMORY[0x1C6940010](v39);

  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](658141298, 0xE400000000000000);

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x273A637273, 0xE500000000000000);
  v40 = v55[2];
  v41 = sub_1C43FD7D4();
  v42(v41);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x273A632027, 0xE500000000000000);
  (*(a2 + 40))(a1, a2);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x273A64732027, 0xE600000000000000);
  (*(a2 + 48))(v58, a1, a2);
  v43 = v58[0];
  v44 = v58[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v43, v44);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);

  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F9C290);

  MEMORY[0x1C6940010](0x27203A73742027, 0xE700000000000000);
  v45 = v55[3];
  v46 = sub_1C43FD7D4();
  v47(v46);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  v48 = v59;
  v49 = v60;
  v59 = 60;
  v60 = 0xE100000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v48, v49);

  return v59;
}

uint64_t static FusedTriple.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4EFF8A8();
  v8 = sub_1C43FCDF8(v7);
  v105 = v9;
  v106 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v104 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v107 = v100 - v15;
  v108 = sub_1C4EFEEF8();
  v16 = sub_1C43FCDF8(v108);
  v110 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v109 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v100 - v23;
  v25 = sub_1C4EFF0C8();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v100 - v32;
  v102 = a4;
  v103 = *(a4 + 8);
  v34 = *(v103 + 8);
  v111 = a1;
  sub_1C43FC0A8();
  sub_1C4EFF7E8();
  v112 = a2;
  sub_1C43FC0A8();
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v35, v36);
  sub_1C440E2DC();
  LOBYTE(a4) = sub_1C4F010B8();
  v37 = *(v28 + 8);
  v38 = sub_1C43FD7E0();
  v37(v38);
  (v37)(v33, v25);
  if ((a4 & 1) == 0)
  {
    sub_1C440AB58();
    sub_1C4EFF7E8();
    sub_1C440AB58();
    sub_1C4EFF7E8();
    sub_1C440E2DC();
    v58 = sub_1C4EFF078();
    v59 = sub_1C43FD7E0();
    v37(v59);
    (v37)(v33, v25);
    return v58 & 1;
  }

  sub_1C440AB58();
  sub_1C4EFF7F8();
  sub_1C440AB58();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  v41 = sub_1C4811074(v39, v40);
  v42 = v108;
  v43 = sub_1C4F010B8();
  v45 = v110 + 8;
  v44 = *(v110 + 8);
  v46 = sub_1C4410CBC();
  v44(v46);
  (v44)(v24, v42);
  if ((v43 & 1) == 0)
  {
    sub_1C4EFF7F8();
    sub_1C4EFF7F8();
    v58 = sub_1C4EFE9A8();
    v60 = sub_1C4410CBC();
    v44(v60);
    (v44)(v24, v42);
    return v58 & 1;
  }

  v100[1] = v41;
  v101 = v44;
  v110 = v45;
  v47 = sub_1C4EFF7D8();
  v49 = v48;
  if (v47 == sub_1C4EFF7D8() && v49 == v50)
  {
  }

  else
  {
    v52 = sub_1C4F02938();

    if ((v52 & 1) == 0)
    {
      sub_1C442FDB4();
      v53 = sub_1C4EFF7D8();
      v55 = v54;
      sub_1C442FDB4();
      if (v53 == sub_1C4EFF7D8() && v55 == v56)
      {

        v58 = 0;
      }

      else
      {
        v58 = sub_1C4F02938();
      }

      return v58 & 1;
    }
  }

  sub_1C442FDB4();
  sub_1C4EFF7B8();
  sub_1C442FDB4();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v61, v62);
  v63 = sub_1C4F010B8();
  v64 = *(v105 + 8);
  v65 = sub_1C43FD7E0();
  v64(v65);
  v66 = sub_1C4410CBC();
  v64(v66);
  if (v63)
  {
    sub_1C4402E08();
    sub_1C4EFF7C8();
    v67 = v109;
    sub_1C4402E08();
    sub_1C4EFF7C8();
    v68 = v108;
    v69 = sub_1C4F010B8();
    v70 = v101;
    (v101)(v67, v68);
    v70(v24, v68);
    if (v69)
    {
      v71 = v103;
      v72 = *(v103 + 16);
      v73 = sub_1C440E2DC();
      v72(v73);
      v74 = v113;
      sub_1C442BB6C();
      MEMORY[0x1C6941830](v74);
      v75 = sub_1C4F02B68();
      v76 = sub_1C440E2DC();
      v72(v76);
      v77 = v113;
      sub_1C442BB6C();
      MEMORY[0x1C6941830](v77);
      v78 = sub_1C4F02B68();
      v79 = v75 < v78;
      if (v75 != v78)
      {
        goto LABEL_24;
      }

      v80 = v102;
      v81 = *(v102 + 48);
      v82 = sub_1C440AB58();
      v81(v82);
      sub_1C442BB6C();
      sub_1C4F01298();
      v83 = sub_1C4F02B68();

      v84 = sub_1C440AB58();
      v81(v84);
      sub_1C442BB6C();
      sub_1C4F01298();
      v85 = sub_1C4F02B68();

      v79 = v83 < v85;
      if (v83 == v85)
      {
        v86 = *(v71 + 24);
        v87 = sub_1C43FEDF8();
        v88 = v86(v87);
        v89 = sub_1C43FEDF8();
        if (v88 == v86(v89))
        {
          v90 = *(v80 + 40);
          v91 = sub_1C440AB58();
          v92 = v90(v91);
          v93 = sub_1C440AB58();
          v90(v93);
        }

        else
        {
          v97 = sub_1C43FEDF8();
          v92 = v86(v97);
          v98 = sub_1C43FEDF8();
          v94 = v86(v98);
        }

        v58 = v92 < v94;
      }

      else
      {
LABEL_24:
        v58 = v79;
      }
    }

    else
    {
      sub_1C4402E08();
      sub_1C4EFF7C8();
      sub_1C4402E08();
      sub_1C4EFF7C8();
      v58 = sub_1C4EFE9A8();
      v70(v67, v68);
      v70(v24, v68);
    }
  }

  else
  {
    sub_1C4402E08();
    sub_1C4EFF7B8();
    sub_1C4402E08();
    sub_1C4EFF7B8();
    v58 = sub_1C4EFF868();
    v95 = sub_1C43FD7E0();
    v64(v95);
    v96 = sub_1C4410CBC();
    v64(v96);
  }

  return v58 & 1;
}

uint64_t sub_1C4811074(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FusedTripleColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48111E0()
{
  result = qword_1EC0BDAC0;
  if (!qword_1EC0BDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAC0);
  }

  return result;
}

unint64_t sub_1C481123C()
{
  result = qword_1EDDFD850;
  if (!qword_1EDDFD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD850);
  }

  return result;
}

unint64_t sub_1C4811294()
{
  result = qword_1EDDFD848;
  if (!qword_1EDDFD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD848);
  }

  return result;
}

unint64_t sub_1C48112EC()
{
  result = qword_1EDDFD858;
  if (!qword_1EDDFD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD858);
  }

  return result;
}

void sub_1C4811368()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459CFD0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EC0BDAF8, 0x1E69634B8);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459CFD0();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      v7 = *(v6 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v10 = sub_1C43FD7EC(v9, v19);
      v11(v10);
      v12 = sub_1C4433410();
      sub_1C4813D24(v12, v13, v14, v15, v16, v17);
      sub_1C440962C(&v19);
      sub_1C44160C0();
    }

    while (!v18);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C48114B8()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459D010();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EDDDB868, 0x1E69B8A20);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459D010();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      v7 = *(v6 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v10 = sub_1C43FD7EC(v9, v19);
      v11(v10);
      v12 = sub_1C4433410();
      sub_1C4813D24(v12, v13, v14, v15, v16, v17);
      sub_1C440962C(&v19);
      sub_1C44160C0();
    }

    while (!v18);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1C4811608(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C43FED38();
    sub_1C459D088(v4, v5, v6);
    v2 = v13;
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      swift_dynamicCast();
      v13 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C459D088((v9 > 1), v10 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v10 + 1;
      sub_1C44482AC(&v12, (v2 + 32 * v10 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C48116F8()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for GraphTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C459D6F8();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C459D6F8();
      }

      sub_1C4436548();
      v11 = sub_1C445E5E8(&qword_1EC0BAA28, v10);
      sub_1C4414204(v11);
      sub_1C445E81C();
      sub_1C4471874(v0, v12);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v13);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4811820()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for EventTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C459D6F8();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C459D6F8();
      }

      sub_1C4441074();
      v11 = sub_1C445E5E8(&qword_1EDDEBC08, v10);
      sub_1C4414204(v11);
      sub_1C4418AAC();
      sub_1C4471874(v0, v12);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v13);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4811948(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C43FED38();
    sub_1C459D088(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_1C442E860(v7, &v11);
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C459D088((v8 > 1), v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      sub_1C44482AC(&v12, (v2 + 32 * v9 + 32));
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C4811A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, char a17)
{
  sub_1C4404B14();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17;
    v32 = MEMORY[0x1E69E7CC0];
    v20 = sub_1C43FED38();
    sub_1C459D788(v20, v21, v22);
    v23 = (v19 + 48);
    do
    {
      v24 = *(v23 - 1);
      v31 = *v23;
      v25 = *(v23 - 2);
      v26 = v24;
      sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
      sub_1C456902C(&qword_1EC0B8898, &unk_1C4F30C50);
      sub_1C44017A8();
      v27 = a15;
      v29 = *(v32 + 16);
      v28 = *(v32 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C459D788((v28 > 1), v29 + 1, 1);
        v27 = a15;
      }

      *(v32 + 16) = v29 + 1;
      v30 = v32 + 32 * v29;
      *(v30 + 32) = v27;
      *(v30 + 48) = a16;
      *(v30 + 56) = a17;
      v23 += 3;
      --v18;
    }

    while (v18);
  }

  sub_1C440576C();
}

void sub_1C4811B78()
{
  sub_1C43FBD3C();
  v2 = v1;
  v26 = sub_1C456902C(&qword_1EC0B8830, &unk_1C4F0DC20);
  sub_1C43FCDF8(v26);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
  sub_1C43FCDF8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C448F128();
  if (v0)
  {
    sub_1C4405C20();
    sub_1C459D850();
    v16 = v27;
    v17 = *(v4 + 80);
    sub_1C43FC354();
    v19 = v2 + v18;
    v20 = *(v4 + 72);
    do
    {
      sub_1C4460108(v19, v9, &qword_1EC0B8830, &unk_1C4F0DC20);
      sub_1C4459B80();
      sub_1C44512F0();
      if (v21)
      {
        sub_1C459D850();
        v16 = v27;
      }

      *(v16 + 16) = v4;
      v22 = *(v12 + 80);
      sub_1C43FC354();
      v24 = sub_1C446240C(v23);
      sub_1C44CDA30(v24, v25, &qword_1EC0B8F18, &unk_1C4F0E9D0);
      v19 += v20;
      --v0;
    }

    while (v0);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4811D34(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1[2])
  {
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C459D810();
    v1 = v29;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      v22 = a1[4];
      v23 = a1[5];
      v24 = a1[6];
      v25 = a1[7];
      v26 = *v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = v4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&qword_1EC0B8828, &qword_1C4F0E9C0);
      sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
      v6 = sub_1C44017A8();
      v15 = sub_1C44414A4(v6, v7, v8, v9, v10, v11, v12, v13, v20.n128_i64[0], v20.n128_i64[1], v21, v22, v23, v24, v25, v26, v27, v28, v14);
      if (v16)
      {
        sub_1C4404F04();
        v20 = v18;
        sub_1C459D810();
        v15 = v20;
        v1 = v29;
      }

      sub_1C4423B94(v15);
    }

    while (!v17);
  }

  return v1;
}

uint64_t sub_1C4811E40(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1[2])
  {
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C459D810();
    v1 = v29;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      v22 = a1[4];
      v23 = a1[5];
      v24 = a1[6];
      v25 = a1[7];
      v26 = *v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = v4;
      sub_1C456902C(&qword_1EC0BDAD8, &unk_1C4F30C60);
      sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
      v6 = sub_1C44017A8();
      v15 = sub_1C44414A4(v6, v7, v8, v9, v10, v11, v12, v13, v20.n128_i64[0], v20.n128_i64[1], v21, v22, v23, v24, v25, v26, v27, v28, v14);
      if (v16)
      {
        sub_1C4404F04();
        v20 = v18;
        sub_1C459D810();
        v15 = v20;
        v1 = v29;
      }

      sub_1C4423B94(v15);
    }

    while (!v17);
  }

  return v1;
}

uint64_t sub_1C4811F4C(uint64_t a1)
{
  v2 = type metadata accessor for StandardEntityFusion();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C459DD18();
    v8 = v17;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1C4471874(v9, v6);
      v17 = v8;
      v11 = *(v8 + 16);
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1C459DD18();
        v8 = v17;
      }

      v15 = v2;
      v16 = sub_1C445E5E8(&qword_1EDDF4658, type metadata accessor for StandardEntityFusion);
      v12 = sub_1C4422F90(&v14);
      sub_1C4471874(v6, v12);
      *(v8 + 16) = v11 + 1;
      sub_1C441D670(&v14, v8 + 40 * v11 + 32);
      sub_1C4485404(v6, type metadata accessor for StandardEntityFusion);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_1C4812140()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for EntityTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C459DD58();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C459DD58();
      }

      sub_1C4433CF0();
      v11 = sub_1C445E5E8(&qword_1EDDF8D78, v10);
      sub_1C4414204(v11);
      sub_1C444B150();
      sub_1C4471874(v0, v12);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v13);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4812268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C43FED38();
    sub_1C459DE30();
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1C4460108(v4, &v7, &qword_1EC0B90A0, &unk_1C4F10E30);
      sub_1C456902C(&qword_1EC0B90A0, &unk_1C4F10E30);
      sub_1C442F680();
      swift_dynamicCast();
      v9 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1C459DE30();
        v2 = v9;
      }

      *(v2 + 16) = v5 + 1;
      memcpy((v2 + 80 * v5 + 32), __src, 0x49uLL);
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C4812398()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459DF08();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &unk_1EDDDBAF0, 0x1E6966A80);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459DF08();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      v7 = *(v6 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v10 = sub_1C43FD7EC(v9, v18);
      v11(v10);
      v12 = sub_1C4433410();
      sub_1C44FDC24(v12, v13, v14, v15, v16);
      sub_1C440962C(&v18);
      sub_1C44160C0();
    }

    while (!v17);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C48124D4()
{
  sub_1C43FBD3C();
  sub_1C441AEC8();
  v2 = type metadata accessor for StaticKnowledgeTriple();
  v3 = sub_1C4403200(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v6 = sub_1C44057DC();
      sub_1C4471874(v6, v7);
      sub_1C440D464();
      if (v8)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      v9 = sub_1C445E5E8(&qword_1EC0BDB00, type metadata accessor for StaticKnowledgeTriple);
      v10 = sub_1C4414204(v9);
      sub_1C4471874(v0, v10);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v11);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812624()
{
  sub_1C43FBD3C();
  sub_1C441AEC8();
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v3 = sub_1C4403200(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v6 = sub_1C44057DC();
      sub_1C4471874(v6, v7);
      sub_1C440D464();
      if (v8)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      v9 = sub_1C445E5E8(&qword_1EC0BDB08, type metadata accessor for LiveGlobalKnowledgeTriple);
      v10 = sub_1C4414204(v9);
      sub_1C4471874(v0, v10);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v11);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812774()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v1 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v1)
  {
LABEL_14:
    sub_1C43FE9F0();
    return;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1C441CA38();
  sub_1C459E8F8();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v21;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        sub_1C444192C();
        v6 = v5;
      }

      else
      {
        v6 = *(v0 + 8 * v3 + 32);
      }

      v7 = type metadata accessor for EntityRelevanceEvaluationTaskManager();
      v19 = v7;
      v20 = &off_1F43E9010;
      v18[0] = v6;
      v21 = v4;
      v8 = *(v4 + 16);
      if (v8 >= *(v4 + 24) >> 1)
      {
        sub_1C459E8F8();
        v9 = v19;
        v10 = v20;
      }

      else
      {
        v9 = v7;
        v10 = &off_1F43E9010;
      }

      ++v3;
      sub_1C4418280(v18, v9);
      sub_1C43FCE64();
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v13);
      sub_1C43FBCC4();
      v16 = v15 - v14;
      (*(v17 + 16))(v15 - v14);
      sub_1C4813D24(v8, v16, &v21, v9, v10, sub_1C443FA18);
      sub_1C440962C(v18);
      v4 = v21;
    }

    while (v1 != v3);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1C4812934()
{
  sub_1C43FBD3C();
  v2 = v1;
  v26 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  sub_1C43FCDF8(v26);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C43FCDF8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C448F128();
  if (v0)
  {
    sub_1C4405C20();
    sub_1C459E938();
    v16 = v27;
    v17 = *(v4 + 80);
    sub_1C43FC354();
    v19 = v2 + v18;
    v20 = *(v4 + 72);
    do
    {
      sub_1C4460108(v19, v9, &qword_1EC0B9078, &unk_1C4F30C70);
      sub_1C4459B80();
      sub_1C44512F0();
      if (v21)
      {
        sub_1C459E938();
        v16 = v27;
      }

      *(v16 + 16) = v4;
      v22 = *(v12 + 80);
      sub_1C43FC354();
      v24 = sub_1C446240C(v23);
      sub_1C44CDA30(v24, v25, &qword_1EC0B89E8, &unk_1C4F3E630);
      v19 += v20;
      --v0;
    }

    while (v0);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812AF0()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for ConstructionGraphTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      v10 = sub_1C445E5E8(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple);
      v11 = sub_1C4414204(v10);
      sub_1C4471874(v0, v11);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v12);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812C40()
{
  sub_1C43FBD3C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C44F4214();
    v3 = v2 + 32;
    v4 = v19;
    do
    {
      sub_1C442E860(v3, &v15);
      sub_1C456902C(&qword_1EC0B9248, &unk_1C4F30C80);
      sub_1C442F680();
      swift_dynamicCast();
      v19 = v4;
      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_1C44F4214();
      }

      v6 = v17;
      v7 = v18;
      sub_1C4418280(v16, v17);
      sub_1C43FCE64();
      v9 = *(v8 + 64);
      MEMORY[0x1EEE9AC00](v10);
      sub_1C43FBCC4();
      v13 = v12 - v11;
      (*(v14 + 16))(v12 - v11);
      sub_1C44FDC24(v5, v13, &v19, v6, v7);
      sub_1C440962C(v16);
      v4 = v19;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16)
{
  sub_1C4404B14();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16;
    v30 = MEMORY[0x1E69E7CC0];
    v19 = sub_1C43FED38();
    sub_1C459EB08(v19, v20, v21);
    v22 = (v18 + 56);
    do
    {
      v26 = *(v22 - 3);
      v27 = *(v22 - 2);
      v28 = *(v22 - 1);
      v29 = *v22;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&qword_1EC0B8B10, &qword_1C4F0EF40);
      sub_1C456902C(&qword_1EC0B9278, &unk_1C4F0EDA0);
      swift_dynamicCast();
      v24 = *(v30 + 16);
      v23 = *(v30 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C459EB08((v23 > 1), v24 + 1, 1);
      }

      *(v30 + 16) = v24 + 1;
      v25 = (v30 + 48 * v24);
      v25[3] = a15;
      v25[4] = a16;
      v25[2] = a14;
      v22 += 4;
      --v17;
    }

    while (v17);
  }

  sub_1C440576C();
}

uint64_t sub_1C4812F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C459EB28();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1C4813DCC(__dst, &v7);
      v11 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1C459EB28();
        v2 = v11;
      }

      v8 = &type metadata for PersonalKnowledgeResult;
      v9 = sub_1C4813E28();
      sub_1C442A404();
      *&v7 = swift_allocObject();
      memcpy((v7 + 16), __dst, 0xB0uLL);
      *(v2 + 16) = v5 + 1;
      sub_1C441D670(&v7, v2 + 40 * v5 + 32);
      v4 += 176;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C4813030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C4404B14();
  a29 = v30;
  a30 = v32;
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = v31;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1C43FED38();
    sub_1C459DFC8();
    v35 = a18;
    v36 = v34 + 32;
    do
    {
      sub_1C442E860(v36, &a10);
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      sub_1C442F680();
      swift_dynamicCast();
      a18 = v35;
      v37 = *(v35 + 16);
      if (v37 >= *(v35 + 24) >> 1)
      {
        sub_1C459DFC8();
        v35 = a18;
      }

      *(v35 + 16) = v37 + 1;
      v38 = v35 + 40 * v37;
      v39 = a15;
      v40 = a16;
      *(v38 + 64) = a17;
      *(v38 + 32) = v39;
      *(v38 + 48) = v40;
      v36 += 40;
      --v33;
    }

    while (v33);
  }

  sub_1C440576C();
}

void sub_1C4813140()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459EC70();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EC0BDAE8, 0x1E6999048);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459EC70();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      v7 = *(v6 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v10 = sub_1C43FD7EC(v9, v19);
      v11(v10);
      v12 = sub_1C4433410();
      sub_1C4813D24(v12, v13, v14, v15, v16, v17);
      sub_1C440962C(&v19);
      sub_1C44160C0();
    }

    while (!v18);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C4813290()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459ECB0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EC0BDAE0, 0x1E6999060);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459ECB0();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      v7 = *(v6 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v10 = sub_1C43FD7EC(v9, v19);
      v11(v10);
      v12 = sub_1C4433410();
      sub_1C4813D24(v12, v13, v14, v15, v16, v17);
      sub_1C440962C(&v19);
      sub_1C44160C0();
    }

    while (!v18);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C48133E0()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459EEB0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EDDF0378, 0x1E69990C0);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459EEB0();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      v7 = *(v6 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v10 = sub_1C43FD7EC(v9, v19);
      v11(v10);
      v12 = sub_1C4433410();
      sub_1C4813D24(v12, v13, v14, v15, v16, v17);
      sub_1C440962C(&v19);
      sub_1C44160C0();
    }

    while (!v18);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C4813530()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for EventTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      sub_1C4441074();
      v11 = sub_1C445E5E8(&qword_1EDDFE2F0, v10);
      sub_1C4414204(v11);
      sub_1C4418AAC();
      sub_1C4471874(v0, v12);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v13);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t Fuser.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Fuser() + 20);
  sub_1C4408A90();
  return sub_1C4471874(v1 + v4, a1);
}

uint64_t Fuser.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fuser();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1C4813710(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for Source();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *a3;
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 1))(), LOBYTE(v30) = v13, (v15 = (*(v14 + 32))(a1, a2, &v30)) != 0))
  {
    v16 = v15;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDDFECB8);
    sub_1C4471874(a1, v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 134218242;
      *(v20 + 4) = *(v16 + 16);

      *(v20 + 12) = 2080;
      sub_1C4485614(v12, v10);
      v22 = *v10;
      v23 = v10[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4485404(v10, type metadata accessor for Source);
      v24 = sub_1C441D828(v22, v23, &v30);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_1C43F8000, v18, v19, "InternalPlugin: Fuser: loadInternalSourceChildren: loaded %ld children for %s", v20, 0x16u);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    else
    {

      sub_1C4485404(v12, type metadata accessor for Source);
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C43F8000, v26, v27, "InternalPlugin: Fuser: loadInternalSourceChildren: failed to load internal source children", v28, 2u);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_1C4813B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Fuser.execute()();
}

uint64_t sub_1C4813B9C(uint64_t a1)
{
  result = sub_1C445E5E8(&qword_1EC0BDAD0, type metadata accessor for Fuser);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4813C1C()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4813CC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4813CC0()
{
  if (!qword_1EDDF0688)
  {
    sub_1C4572308(&qword_1EC0B8CF0, &unk_1C4F30C40);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF0688);
    }
  }
}

uint64_t sub_1C4813D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  v11 = sub_1C4422F90(v14);
  (*(*(a4 - 8) + 32))(v11, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

unint64_t sub_1C4813E28()
{
  result = qword_1EC0BDAF0;
  if (!qword_1EC0BDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAF0);
  }

  return result;
}

uint64_t sub_1C4813E7C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  *(v3 + 72) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v17 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  *(v3 + 96) = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v20 = type metadata accessor for Configuration();
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 145) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C481400C, 0, 0);
}

uint64_t sub_1C481400C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 16);
  sub_1C4430C4C(v5, v1, type metadata accessor for Configuration);
  v6 = *(v5 + *(v4 + 24));
  type metadata accessor for FutureLifeEventProvider();
  swift_allocObject();

  v24 = sub_1C4814724(v1, v6, 0);
  v7 = *(v3 + 24);
  sub_1C4419780();
  sub_1C4430C4C(v5, v2 + v8, v9);
  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 145);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v25 = *(v0 + 80);
  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v16 = *(v0 + 16);
  v17 = sub_1C442B738(*(v0 + 48), qword_1EDDFD2A8);
  *(v0 + 128) = v17;
  sub_1C4430C4C(v17, v10, type metadata accessor for Source);
  *(v10 + v12[5]) = 2;
  *(v10 + v12[7]) = v24;
  v18 = v10 + v12[8];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4430C4C(v16, v13, type metadata accessor for PhaseStores);
  sub_1C4430C4C(v17, v14, type metadata accessor for Source);
  sub_1C4430C4C(v10, v11, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
  sub_1C4430C4C(v17, v15, type metadata accessor for Source);
  sub_1C4430C4C(v16, v25, type metadata accessor for PhaseStores);
  *(v0 + 144) = v26;
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_1C4814280;
  v20 = *(v0 + 80);
  v21 = *(v0 + 56);
  v22 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4814280()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C481437C, 0, 0);
}

uint64_t sub_1C481437C()
{
  v1 = *(v0 + 145);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v24 = *(v0 + 88);
  v5 = *(v0 + 80);
  v23 = *(v0 + 64);
  v6 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 120);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1C4430C4C(*(v0 + 128), *(v0 + 56), type metadata accessor for Source);
  sub_1C4419780();
  sub_1C4430C4C(v8, v5, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C448545C(v8, type metadata accessor for PhaseStores);
  sub_1C448545C(v2, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
  v10 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C481466C();
  v11 = sub_1C4422F90(v10);
  sub_1C48146C4(v3, v11, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
  sub_1C441FAC0();
  sub_1C48146C4(v23, v12, v13);
  sub_1C441FAC0();
  sub_1C48146C4(v24, v14, v15);
  sub_1C441FAC0();
  sub_1C48146C4(v25, v16, v17);
  sub_1C441FAC0();
  sub_1C48146C4(v6, v18, v19);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = v1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

uint64_t type metadata accessor for FutureLifeEventPhase()
{
  result = qword_1EDDE4630;
  if (!qword_1EDDE4630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C481466C()
{
  result = qword_1EDDDD2C0;
  if (!qword_1EDDDD2C0)
  {
    type metadata accessor for FutureLifeEventDeltaSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDD2C0);
  }

  return result;
}

uint64_t sub_1C48146C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4814724(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (!a3)
  {
    a3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4815FA8(a1, type metadata accessor for Configuration);
  *(v3 + 16) = a3;
  return v3;
}

uint64_t sub_1C481478C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v5 = sub_1C456902C(&qword_1EC0BDB38, &qword_1C4F30E08);
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v2 + 16);
  v30 = a1;
  v15 = sub_1C49C2D4C(sub_1C4815E20, v29, v14);
  v35 = v3;
  v34[0] = v15;
  v34[1] = sub_1C4814C88;
  v34[2] = 0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BDB40, &unk_1C4F30E20);
  sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  sub_1C4401CBC(qword_1EDDF3168, &qword_1EC0BDB40, &unk_1C4F30E20);
  sub_1C4F02848();
  sub_1C4815EE4(v13, v11);
  sub_1C456902C(&qword_1EC0BDB48, &unk_1C4F30E30);
  if (swift_dynamicCast())
  {
    sub_1C441D670(&v31, v34);
    sub_1C442E860(v34, &v31);
    v17 = v32;
    v16 = v33;
    v18 = sub_1C4409678(&v31, v32);
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x1EEE9AC00](v18);
    sub_1C43FBCC4();
    (*(v22 + 16))(v21 - v20);
    v23 = *(v16 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25 = v28;
    v28[3] = AssociatedTypeWitness;
    v25[4] = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v25);
    sub_1C4F019A8();

    sub_1C440962C(v34);
    sub_1C4420C3C(v13, &qword_1EC0BDB38, &qword_1C4F30E08);
    return sub_1C440962C(&v31);
  }

  else
  {
    sub_1C4815F54();
    swift_allocError();
    swift_willThrow();

    return sub_1C4420C3C(v13, &qword_1EC0BDB38, &qword_1C4F30E08);
  }
}

void sub_1C4814B0C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1C4AFCE44();
  if (v2)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AsyncSequence.toAnySessionAsyncSequence()(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), &v11);
    *a2 = v11;
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t sub_1C4814C88(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_1C4409678(a1, v12);
  (*(v13 + 16))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  sub_1C4409678(a2, v14);
  (*(v15 + 16))(v14, v15);
  LOBYTE(a1) = sub_1C4EF9C18();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t sub_1C4814E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4814E2C, 0, 0);
}

uint64_t sub_1C4814E2C()
{
  sub_1C43FBCD4();
  sub_1C4814E84(*(v0 + 24), *(v0 + 16));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4814E84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v74 = type metadata accessor for FutureActivityEventWithLocations(0);
  v3 = sub_1C43FBCE0(v74);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v76 = (v7 - v6);
  v73 = type metadata accessor for ActivityEventContent(0);
  v8 = sub_1C43FBCE0(v73);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v75 = v12 - v11;
  v13 = sub_1C456902C(&qword_1EC0BDB30, &unk_1C4F30DF8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v68 - v15;
  v17 = type metadata accessor for CommuteInference();
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v68 - v24;
  v26 = a1[3];
  v27 = a1[4];
  sub_1C4409678(a1, v26);
  v28 = *(v27 + 32);
  v79[3] = swift_getAssociatedTypeWitness();
  sub_1C4422F90(v79);
  v28(v26, v27);
  sub_1C442B870(v79, v78);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  sub_1C4406F30();
  sub_1C4815FA8(v25, v29);
  sub_1C442B870(v79, v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C440BAA8(v16, 1, 1, v17);
    sub_1C4420C3C(v16, &qword_1EC0BDB30, &unk_1C4F30DF8);
LABEL_7:
    v66 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
    v64 = v77;
    v65 = 1;
    goto LABEL_8;
  }

  sub_1C440BAA8(v16, 0, 1, v17);
  sub_1C4815DC0(v16, v23, type metadata accessor for CommuteInference);
  v30 = *v23;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v31 = sub_1C4EFF0C8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C4F0CE60;
  v72 = v35;
  v36 = v35 + v34;
  v37 = *(v32 + 16);
  v37(v36, v23 + v17[5], v31);
  v37(v36 + v33, v23 + v17[6], v31);
  v38 = (v23 + v17[7]);
  v39 = *v38;
  v40 = v38[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4406F30();
  sub_1C4815FA8(v23, v41);
  if (qword_1EDDE9268 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for SourceIdPrefix();
  v71 = sub_1C442B738(v42, qword_1EDE2CF78);
  v43 = *(v73 + 8);
  v73 = type metadata accessor for SourceIdPrefix;
  v44 = v75;
  sub_1C44EE4B4(v71, v75 + v43, type metadata accessor for SourceIdPrefix);
  memset(v78, 0, sizeof(v78));
  *(v44 + 40) = 0u;
  *(v44 + 24) = 0u;
  *v44 = -102;
  *(v44 + 8) = v30;
  *(v44 + 16) = 0;
  sub_1C4815D50(v78, v44 + 24);
  *(v44 + 56) = MEMORY[0x1E69E7CC0];
  *&v78[0] = v39;
  *(&v78[0] + 1) = v40;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x6E6974756D6D6F63, 0xE900000000000067);

  v69 = *(&v78[0] + 1);
  v70 = *&v78[0];
  sub_1C4400434();
  v45 = *(v30 + 16);
  v46 = v74;
  v47 = v76 + *(v74 + 24);
  v48 = sub_1C4402B58();
  v49(v48);
  sub_1C4400434();
  v50 = *(v30 + 24);
  v51 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v52 = &v47[*(v51 + 28)];
  v53 = sub_1C4402B58();
  v50(v53);
  sub_1C44EE4B4(v44, &v47[*(v51 + 32)], type metadata accessor for ActivityEventContent);
  v54 = v76;
  sub_1C44EE4B4(v71, v76 + *(v46 + 28), v73);
  v55 = v69;
  *v54 = v70;
  v54[1] = v55;
  v54[2] = v72;
  sub_1C4400434();
  v56 = *(v30 + 16);
  v57 = v77;
  v58 = sub_1C4402B58();
  v59(v58);
  sub_1C4400434();
  v60 = *(v30 + 24);
  v61 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  v62 = v57 + *(v61 + 28);
  v63 = sub_1C4402B58();
  v60(v63);
  sub_1C4815FA8(v44, type metadata accessor for ActivityEventContent);
  sub_1C4815DC0(v54, v57 + *(v61 + 32), type metadata accessor for FutureActivityEventWithLocations);
  v64 = v57;
  v65 = 0;
  v66 = v61;
LABEL_8:
  sub_1C440BAA8(v64, v65, 1, v66);
  return sub_1C440962C(v79);
}

unint64_t sub_1C48154D8()
{
  result = qword_1EC0BDB10;
  if (!qword_1EC0BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB10);
  }

  return result;
}

unint64_t sub_1C4815550(uint64_t a1)
{
  result = sub_1C4815578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4815578()
{
  result = qword_1EC0BDB20;
  if (!qword_1EC0BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB20);
  }

  return result;
}

unint64_t sub_1C48155D0()
{
  result = qword_1EC0BDB28;
  if (!qword_1EC0BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB28);
  }

  return result;
}

uint64_t sub_1C4815630(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4815650, 0, 0);
}

uint64_t sub_1C4815650()
{
  sub_1C43FCF70();
  v1 = v0[7];
  v2 = *(v1 + 32);
  sub_1C4418280(v1, *(v1 + 24));
  v0[8] = swift_getAssociatedTypeWitness();
  v3 = sub_1C4F01F48();
  v0[9] = v3;
  v4 = *(v3 - 8);
  v0[10] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1C4815790;

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1C4815790()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 96);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_1C48159F0;
  }

  else
  {
    v7 = sub_1C4815894;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4815894()
{
  sub_1C43FCF70();
  v1 = v0[11];
  v2 = v0[8];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    (*(v0[10] + 8))(v1, v0[9]);

    v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
    v5 = v3;
    v6 = 1;
  }

  else
  {
    v7 = v0[6];
    v0[5] = v2;
    v8 = sub_1C4422F90(v0 + 2);
    (*(*(v2 - 8) + 32))(v8, v1, v2);

    v9 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
    v6 = swift_dynamicCast() ^ 1;
    v5 = v7;
    v4 = v9;
  }

  sub_1C440BAA8(v5, v6, 1, v4);
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C48159F0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);

  sub_1C43FBDA0();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1C4815A4C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4815624(a1);

  return sub_1C4815CE8(v1);
}

uint64_t sub_1C4815A78()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C442E8C4;

  return sub_1C4815630(v2);
}

uint64_t sub_1C4815B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C4815BD8;

  return (sub_1C4981D60)(a1, a2, a3);
}

uint64_t sub_1C4815BD8()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1C4815D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4815DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4815E3C()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C442E8C4;

  return sub_1C4814E08(v5, v3, v0);
}

uint64_t sub_1C4815EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDB38, &qword_1C4F30E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4815F54()
{
  result = qword_1EC0BDB50;
  if (!qword_1EC0BDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB50);
  }

  return result;
}

uint64_t sub_1C4815FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FutureLifeEventProvider.FutureLifeEventProviderError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C48160BC(uint64_t a1)
{
  result = sub_1C48155D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C48160E8()
{
  result = qword_1EC0BDB58;
  if (!qword_1EC0BDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB58);
  }

  return result;
}

uint64_t type metadata accessor for FutureLifeEventDeltaSourceIngestor()
{
  result = qword_1EDDDD2A0;
  if (!qword_1EDDDD2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C48161B4()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FutureLifeEventProvider();
      if (v3 <= 0x3F)
      {
        result = sub_1C4EFD548();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4816270()
{
  sub_1C43FBCD4();
  v1[27] = v0;
  v2 = sub_1C4F00978();
  v1[28] = v2;
  sub_1C43FCF7C(v2);
  v1[29] = v3;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = *(*(sub_1C456902C(&qword_1EC0BDB60, &unk_1C4F31028) - 8) + 64);
  v1[33] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  v1[34] = v7;
  sub_1C43FCF7C(v7);
  v1[35] = v8;
  v10 = *(v9 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v11 = *(*(sub_1C456902C(&qword_1EC0BDB68, &unk_1C4F31038) - 8) + 64);
  v1[39] = sub_1C43FBE7C();
  v12 = sub_1C4EF9CD8();
  v1[40] = v12;
  sub_1C43FCF7C(v12);
  v1[41] = v13;
  v15 = *(v14 + 64);
  v1[42] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4816460, 0, 0);
}

uint64_t sub_1C4816460()
{
  v0[22] = 0;
  v0[23] = 0;
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[27];
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v0[43] = v6;
  (*(v2 + 8))(v1, v3);
  v7 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  v0[44] = v7;
  v8 = *(v5 + *(v7 + 28));
  v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C440BAA8(v4, 1, 1, v9);
  sub_1C481478C(v4, v0 + 2);
  sub_1C4420C3C(v0[39], &qword_1EC0BDB68, &unk_1C4F31038);
  sub_1C4815D18((v0 + 2), (v0 + 7));
  v0[45] = MEMORY[0x1E69E7CC0];
  v10 = v0[11];
  sub_1C4418280((v0 + 7), v0[10]);
  v0[46] = swift_getAssociatedTypeWitness();
  v11 = sub_1C4F01F48();
  v0[47] = v11;
  sub_1C43FCF7C(v11);
  v0[48] = v12;
  v14 = *(v13 + 64);
  v0[49] = sub_1C43FBE7C();
  v15 = *(MEMORY[0x1E69E85A8] + 4);
  v16 = swift_task_alloc();
  v0[50] = v16;
  *v16 = v0;
  v17 = sub_1C4419798(v16);

  return MEMORY[0x1EEE6D8C8](v17);
}

uint64_t sub_1C4816850()
{
  sub_1C43FBCD4();
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 360);

    v5 = sub_1C4817200;
  }

  else
  {
    v5 = sub_1C4816968;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4816968()
{
  v79 = v0;
  v1 = v0[49];
  v2 = v0[46];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = v0[33];
    v3 = v0[34];
    (*(v0[48] + 8))(v1, v0[47]);

    v5 = v4;
    v6 = 1;
    v7 = v3;
  }

  else
  {
    v9 = v0[33];
    v8 = v0[34];
    v0[15] = v2;
    v10 = sub_1C4422F90(v0 + 12);
    (*(*(v2 - 8) + 32))(v10, v1, v2);

    v6 = swift_dynamicCast() ^ 1;
    v5 = v9;
    v7 = v8;
  }

  sub_1C440BAA8(v5, v6, 1, v7);
  v11 = v0[33];
  if (sub_1C44157D4(v11, 1, v0[34]) == 1)
  {
    v12 = v0[51];
    v13 = v0[27];
    sub_1C4815CE8((v0 + 2));
    sub_1C4815CE8((v0 + 7));
    sub_1C4420C3C(v11, &qword_1EC0BDB60, &unk_1C4F31028);
    v14 = sub_1C48176EC(100);
    if (v12)
    {
      v15 = v0[30];
      sub_1C4F00198();
      v16 = v12;
      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CD8();

      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[29];
      v21 = v0[30];
      v22 = v0[28];
      if (v19)
      {
        v76 = v0[30];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v78[0] = v24;
        *v23 = 136315138;
        v0[26] = v12;
        v25 = v12;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v26 = sub_1C4F01198();
        v28 = sub_1C441D828(v26, v27, v78);

        *(v23 + 4) = v28;
        sub_1C4403218(&dword_1C43F8000, v29, v30, "Error getting future life events due to: %s");
        sub_1C440962C(v24);
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v20 + 8))(v76, v22);
      }

      else
      {

        (*(v20 + 8))(v21, v22);
      }
    }

    else
    {
      v47 = v0[32];
      v48 = v0[27];
      v49 = *(v14 + 16);
      v0[22] = v49;
      sub_1C49CCBC0();

      v0[23] = v49;
      sub_1C4F00198();
      v50 = sub_1C4F00968();
      v51 = sub_1C4F01CC8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134218240;
        *(v52 + 4) = v49;
        *(v52 + 12) = 2048;
        *(v52 + 14) = v49;
        _os_log_impl(&dword_1C43F8000, v50, v51, "Need to delete %ld, deleted %ld future life events", v52, 0x16u);
        sub_1C43FBE2C();
      }

      v53 = v0[32];
      v54 = v0[28];
      v55 = v0[29];

      (*(v55 + 8))(v53, v54);
    }

    v56 = v0[44];
    v57 = v0[45];
    v35 = v0[27];
    swift_beginAccess();
    v0[22] = 0;
    swift_beginAccess();
    v0[23] = 0;
    v58 = v35 + *(v56 + 24);
    v75 = *(v58 + *(type metadata accessor for PhaseStores() + 24));
    v77 = sub_1C4817AA8(v75);
    v59 = 0;
    v60 = 0;
    v61 = v57;
    v62 = *(v57 + 16);
    while (v62 != v59)
    {
      if (v59 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v63 = v0[27];
      sub_1C48188E4(v0[45] + ((*(v0[35] + 80) + 32) & ~*(v0[35] + 80)) + *(v0[35] + 72) * v59, v0[36]);
      sub_1C4ACF19C();
      v64 = v0[36];
      v0[22] = v59 + 1;
      LOBYTE(v78[0]) = 2;
      sub_1C4B04B28(v78, v77);
      v65 = v0[36];
      v35 = v75;
      sub_1C4B46D4C();

      v46 = sub_1C4420C3C(v65, &qword_1EC0B8D48, &qword_1C4F0E190);
      if (__OFADD__(v60++, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v46);
      }

      ++v59;
      v0[23] = v60;
    }

    v67 = v0[45];
    v68 = v0[43];
    v69 = v0[27];

    sub_1C464927C();
    sub_1C4400450();

    sub_1C43FC1B0();

    return v70();
  }

  else
  {
    v31 = v0[45];
    v33 = v0[37];
    v32 = v0[38];
    sub_1C4818954(v11, v32);
    sub_1C48188E4(v32, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v0[45];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_27:
      v72 = *(v35 + 16);
      sub_1C458C854();
      v35 = v73;
    }

    v36 = *(v35 + 16);
    if (v36 >= *(v35 + 24) >> 1)
    {
      sub_1C458C854();
      v35 = v74;
    }

    v37 = v0[37];
    v38 = v0[35];
    sub_1C4420C3C(v0[38], &qword_1EC0B8D48, &qword_1C4F0E190);
    *(v35 + 16) = v36 + 1;
    sub_1C4818954(v37, v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36);
    v0[45] = v35;
    v39 = v0[11];
    sub_1C4418280((v0 + 7), v0[10]);
    v0[46] = swift_getAssociatedTypeWitness();
    v40 = sub_1C4F01F48();
    v0[47] = v40;
    sub_1C43FCF7C(v40);
    v0[48] = v41;
    v43 = *(v42 + 64);
    v0[49] = sub_1C43FBE7C();
    v44 = *(MEMORY[0x1E69E85A8] + 4);
    v45 = swift_task_alloc();
    v0[50] = v45;
    *v45 = v0;
    v46 = sub_1C4419798();

    return MEMORY[0x1EEE6D8C8](v46);
  }
}

uint64_t sub_1C4817200()
{
  v24 = v0;
  v1 = v0[49];

  sub_1C4815CE8((v0 + 7));
  sub_1C4815CE8((v0 + 2));
  v2 = v0[51];
  v3 = v0[31];
  sub_1C4F00198();
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[31];
    v8 = v0[28];
    v7 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v0[24] = v2;
    v11 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v12 = sub_1C4F01198();
    v14 = sub_1C441D828(v12, v13, &v23);

    *(v9 + 4) = v14;
    sub_1C4403218(&dword_1C43F8000, v15, v16, "Error getting delta future life events due to: %s");
    sub_1C440962C(v10);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v17 = v0[31];
    v18 = v0[28];
    v19 = v0[29];

    (*(v19 + 8))(v17, v18);
  }

  sub_1C4400450();

  sub_1C43FC1B0();

  return v20();
}

uint64_t sub_1C4817420(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  sub_1C449EE88(a1 + *(v11 + 24), v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C449F1D4(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v13 = sub_1C4F01108();

  *(inited + 48) = v13;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  v14 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v15 = *a3;
  swift_beginAccess();
  result = v15 - *a2;
  if (__OFSUB__(v15, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C48176EC(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1C4EFD548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C467C860();
  if (v45)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v42[1] = v2;
  v11 = v44;
  sub_1C4EFCF18();
  v46 = sub_1C4EFD2F8();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v14 = swift_allocObject();
  v43 = xmmword_1C4F0D130;
  *(v14 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFED40 != -1)
  {
LABEL_25:
    swift_once();
  }

  v15 = type metadata accessor for Source();
  v16 = sub_1C442B738(v15, qword_1EDDFD2A8);
  v18 = *v16;
  v17 = v16[1];
  *(v14 + 32) = v18;
  *(v14 + 40) = v17;
  v44 = MEMORY[0x1E69E7CD0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v20 = v19;
  v21 = v3 + *(type metadata accessor for FutureLifeEventDeltaSourceIngestor() + 24);
  v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C456902C(&qword_1EC0BDB70, qword_1C4F31048);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    *(inited + 32) = v46;
    *(inited + 40) = v13;
    *(inited + 48) = 1;
    *(inited + 56) = 0;
    *(inited + 64) = v14;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D522D0(&unk_1F43D6E88);
    v25 = sub_1C48770F0(inited, v24, a1, &v44, v11, v20);
    v11 = v26;
    v3 = v25;

    swift_setDeallocating();
    sub_1C49E1700();
    v27 = *(v3 + 16);
    v28 = *(v10 + 16);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v29 > *(v10 + 24) >> 1)
    {
      if (v28 <= v29)
      {
        v31 = v28 + v27;
      }

      else
      {
        v31 = v28;
      }

      sub_1C44D45E4(isUniquelyReferenced_nonNull_native, v31, 1, v10);
      v10 = v32;
    }

    if (*(v3 + 16))
    {
      v33 = (*(v10 + 24) >> 1) - *(v10 + 16);
      v34 = *(sub_1C4EFF0C8() - 8);
      if (v33 < v27)
      {
        goto LABEL_23;
      }

      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = *(v34 + 72);
      swift_arrayInitWithCopy();

      if (v27)
      {
        v37 = *(v10 + 16);
        v38 = __OFADD__(v37, v27);
        v39 = v37 + v27;
        if (v38)
        {
          goto LABEL_24;
        }

        *(v10 + 16) = v39;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_22;
      }
    }

    v40 = *(v3 + 16);
  }

  while (v40 >= a1);

  swift_bridgeObjectRelease_n();

  return v10;
}

uint64_t sub_1C4817AA8(uint64_t a1)
{
  v2 = type metadata accessor for GraphTriple(0);
  v92 = *(v2 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v73 - v10;
  v11 = sub_1C4EFDE88();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v73 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v83 = &v73 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v73 - v21;
  v22 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v73 - v24;
  v26 = sub_1C4EFD548();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C4EFDE98();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFDCC8();
  (*(v27 + 8))(v30, v26);
  v36 = sub_1C4EFF8F8();
  sub_1C440BAA8(v25, 1, 1, v36);
  v37 = sub_1C498DB80();
  sub_1C4420C3C(v25, &qword_1EC0BAA00, &unk_1C4F17400);
  v38 = *(v32 + 8);
  v79 = v35;
  v80 = v32 + 8;
  v81 = v31;
  v78 = v38;
  v38(v35, v31);
  v39 = *(v37 + 16);
  v89 = a1;
  if (v39)
  {
    v93 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v40 = v93;
    v41 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v73 = v37;
    v42 = v37 + v41;
    v43 = *(v92 + 72);
    v45 = v74;
    v44 = v75;
    v46 = (v74 + 16);
    v91 = v74 + 32;
    v92 = v43;
    v48 = v76;
    v47 = v77;
    do
    {
      sub_1C449EE88(v42, v47, type metadata accessor for GraphTriple);
      (*v46)(v48, v47, v44);
      sub_1C449F1D4(v47, type metadata accessor for GraphTriple);
      v93 = v40;
      v49 = *(v40 + 16);
      if (v49 >= *(v40 + 24) >> 1)
      {
        sub_1C459D178();
        v47 = v77;
        v40 = v93;
      }

      *(v40 + 16) = v49 + 1;
      (*(v45 + 32))(v40 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v49, v48, v44);
      v42 += v92;
      --v39;
    }

    while (v39);
  }

  v93 = MEMORY[0x1E69E7CC8];
  sub_1C45972E0();
  v92 = v50;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v51 = *(sub_1C4EFEEF8() - 8);
  v52 = *(v51 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE558();
  sub_1C4D504A4();
  v55 = v54;
  v56 = *MEMORY[0x1E69A95C0];
  v58 = v86;
  v57 = v87;
  v59 = *(v86 + 104);
  v59(v90, v56, v87);
  v60 = v82;
  v59(v82, v56, v57);
  v61 = v83;
  v59(v83, v56, v57);
  v62 = v84;
  v59(v84, v56, v57);
  v63 = v85;
  v59(v85, v56, v57);
  v71 = v63;
  v72 = v55;
  v64 = v79;
  v65 = v90;
  sub_1C4EFDCD8();

  v66 = *(v58 + 8);
  v66(v63, v57);
  v66(v62, v57);
  v66(v61, v57);
  v66(v60, v57);
  v66(v65, v57);
  v67 = sub_1C4EFD678();
  v68 = v88;
  v69 = sub_1C440BAA8(v88, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C48687D0(v64, v68, sub_1C48189C4, (&v73 - 4));
  sub_1C4420C3C(v68, &unk_1EC0C07E0, &unk_1C4F168F0);
  v78(v64, v81);
  return v93;
}

uint64_t sub_1C481830C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFF0C8();
  v31[0] = *(v4 - 8);
  v5 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EF9D38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v31 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v31 - v21;
  v31[1] = a2;
  v23 = *a2;
  if (*(v23 + 16) && (sub_1C44E3664(), (v25 & 1) != 0))
  {
    (*(v9 + 16))(v22, *(v23 + 56) + *(v9 + 72) * v24, v8);
    sub_1C440BAA8(v22, 0, 1, v8);
    v26 = v22;
  }

  else
  {
    sub_1C440BAA8(v22, 1, 1, v8);
    sub_1C4420C3C(v22, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v27 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
    v28 = *v27;
    v29 = v27[1];
    sub_1C4EF9CE8();
    if (sub_1C44157D4(v20, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v20, v8);
      (*(v31[0] + 16))(v7, a1, v4);
      (*(v9 + 16))(v17, v12, v8);
      sub_1C440BAA8(v17, 0, 1, v8);
      sub_1C4C80CE8();
      (*(v9 + 8))(v12, v8);
      return 1;
    }

    v26 = v20;
  }

  sub_1C4420C3C(v26, &qword_1EC0B9DC8, &unk_1C4F124A0);
  return 1;
}

uint64_t sub_1C4818660()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C480BB30;

  return sub_1C4816270();
}

uint64_t sub_1C48186E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C4EFD548();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C48187D4(uint64_t a1)
{
  result = sub_1C48188A0(qword_1EDDDD2C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4818818(uint64_t a1)
{
  result = sub_1C48188A0(&qword_1EDDDD2B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C481885C(uint64_t a1)
{
  result = sub_1C48188A0(&qword_1EDDDD2B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48188A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FutureLifeEventDeltaSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C48188E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4818954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C48189CC(uint64_t a1)
{
  sub_1C443E52C(a1, v4);
  if (!v5)
  {
    return sub_1C4448244(v4);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = (sub_1C4818A70)();

    if (!v1)
    {
      return sub_1C4DDF8C4(v3);
    }
  }

  return result;
}

uint64_t type metadata accessor for GamingActivityEvent()
{
  result = qword_1EDDE5130;
  if (!qword_1EDDE5130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4818C28()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1C4818CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_1C4F02938();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_1C4818CF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4818DC8(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1C4818E04(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BDBA0, &qword_1C4F311B8);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4819B80();
  sub_1C4F02BF8();
  v13[15] = 0;
  sub_1C4F02798();
  if (!v1)
  {
    v13[14] = 1;
    sub_1C4F027B8();
  }

  return (*(v5 + 8))(v10, v3);
}

double sub_1C4818F74(uint64_t *a1)
{
  v4 = sub_1C456902C(&qword_1EC0BDB78, &qword_1C4F311A8);
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4819B80();
  sub_1C4F02BC8();
  if (!v1)
  {
    sub_1C4F02678();
    sub_1C4F02698();
    v2 = v10;
    v11 = sub_1C44069E0();
    v12(v11);
  }

  sub_1C440962C(a1);
  return v2;
}

uint64_t sub_1C4819130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4818CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4819158(uint64_t a1)
{
  v2 = sub_1C4819B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4819194(uint64_t a1)
{
  v2 = sub_1C4819B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C48191EC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C4818F74(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1C481921C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_1C4818E04(a1);
}

BOOL sub_1C481923C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GamingActivityEvent();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = a2 + v6;
  v11 = *(v10 + 16);
  v12 = v7 == *v10 && v8 == *(v10 + 8);
  return (v12 || (sub_1C4F02938() & 1) != 0) && v9 == v11;
}

uint64_t sub_1C48192D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974726174537369 && a2 == 0xEA0000000000676ELL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C48193F0(char a1)
{
  if (!a1)
  {
    return 0x6D617473656D6974;
  }

  if (a1 == 1)
  {
    return 0x6974726174537369;
  }

  return 0x746E65746E6F63;
}

uint64_t sub_1C4819450(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BDB88, &qword_1C4F311B0);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4819BD4();
  sub_1C4F02BF8();
  LOBYTE(v21) = 0;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80);
  sub_1C4F027E8();
  if (!v2)
  {
    v14 = type metadata accessor for GamingActivityEvent();
    v15 = *(v3 + *(v14 + 20));
    LOBYTE(v21) = 1;
    sub_1C4F027A8();
    v16 = (v3 + *(v14 + 24));
    v17 = v16[1];
    v18 = v16[2];
    v21 = *v16;
    v22 = v17;
    v23 = v18;
    v20[7] = 2;
    sub_1C4819C28();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4819638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BDBA8, &unk_1C4F311C0);
  v11 = sub_1C43FCDF8(v10);
  v32 = v12;
  v33 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for GamingActivityEvent();
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4819BD4();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v23 = v31;
  LOBYTE(v35) = 0;
  sub_1C4498DE4(&unk_1EDDFCD60);
  sub_1C4F026C8();
  (*(v23 + 32))(v21, v34, v4);
  LOBYTE(v35) = 1;
  v21[*(v16 + 20)] = sub_1C4F02688() & 1;
  v38 = 2;
  sub_1C4819C7C();
  sub_1C4F026C8();
  v24 = sub_1C4400480();
  v25(v24);
  v26 = v36;
  v27 = v37;
  v28 = &v21[*(v16 + 24)];
  *v28 = v35;
  *(v28 + 1) = v26;
  *(v28 + 2) = v27;
  sub_1C4819CD0(v21, v30);
  sub_1C440962C(a1);
  return sub_1C4819D34(v21);
}

uint64_t sub_1C4819978@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  (*(v13 + 32))(a5, a1);
  result = type metadata accessor for GamingActivityEvent();
  *(a5 + *(result + 20)) = a2;
  v15 = a5 + *(result + 24);
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a6;
  return result;
}

uint64_t sub_1C4819A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C48192D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4819A48(uint64_t a1)
{
  v2 = sub_1C4819BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4819A84(uint64_t a1)
{
  v2 = sub_1C4819BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4819AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t sub_1C4819B20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4819B80()
{
  result = qword_1EC0BDB80;
  if (!qword_1EC0BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB80);
  }

  return result;
}

unint64_t sub_1C4819BD4()
{
  result = qword_1EC0BDB90;
  if (!qword_1EC0BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB90);
  }

  return result;
}

unint64_t sub_1C4819C28()
{
  result = qword_1EC0BDB98;
  if (!qword_1EC0BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB98);
  }

  return result;
}

unint64_t sub_1C4819C7C()
{
  result = qword_1EC0BDBB0;
  if (!qword_1EC0BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBB0);
  }

  return result;
}

uint64_t sub_1C4819CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamingActivityEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4819D34(uint64_t a1)
{
  v2 = type metadata accessor for GamingActivityEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4819D90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v34 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v34);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C456902C(&qword_1EC0BDBB8, &unk_1C4F311D0);
  v9 = sub_1C43FCDF8(v8);
  v32 = v10;
  v33 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  v23 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v23);
  v25 = *(v24 + 16);
  v25(v22, a1, v23);
  sub_1C440BAA8(v22, 0, 1, v23);
  v26 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v25(v20, a1 + *(v26 + 36), v23);
  sub_1C440BAA8(v20, 0, 1, v23);
  v27 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v28 = sub_1C457A86C(v22, v20, 0, 0, 0);
  v29 = [a2 publisherWithOptions_];

  v30 = v29;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v31 = v36;
  sub_1C4EFFC38();
  if (v31)
  {
  }

  else
  {
    type metadata accessor for GamingActivityEvent();
    sub_1C481A478();
    sub_1C4F02848();

    (*(v32 + 32))(v35, v15, v33);
  }
}

uint64_t sub_1C481A090(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = *(*(sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[4] = v5;
  v2[5] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C481A140, 0, 0);
}

uint64_t sub_1C481A140()
{
  v1 = [*(v0 + 40) eventBody];
  if (!v1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDDFECB8);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C43F8000, v25, v26, "Unable to parse eventBody from read event in gaming activity model", v27, 2u);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    v28 = *(v0 + 16);

    v29 = type metadata accessor for GamingActivityEvent();
    v30 = v28;
    v31 = 1;
    v32 = 1;
    goto LABEL_15;
  }

  v2 = v1;
  v3 = *(v0 + 32);
  v4 = type metadata accessor for GamingActivityEvent();
  v5 = sub_1C440AB8C();
  sub_1C440BAA8(v5, v6, v7, v8);
  v9 = sub_1C4632064(v2);
  if (!v10)
  {
    v33 = *(v0 + 16);
    sub_1C481A4DC(*(v0 + 32));

    v30 = sub_1C440AB8C();
LABEL_15:
    sub_1C440BAA8(v30, v31, v32, v29);
    goto LABEL_19;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_opt_self();
  v14 = sub_1C4F01108();
  v15 = [v13 categoryForBundleId_];

  v16 = [v15 identifier];
  v17 = *MEMORY[0x1E6993AF0];
  v18 = sub_1C4F01138();
  v20 = v19;
  if (v18 == sub_1C4F01138() && v20 == v21)
  {

    goto LABEL_17;
  }

  v23 = sub_1C4F02938();

  if (v23)
  {
LABEL_17:
    v34 = *(v0 + 32);
    v35 = *(v0 + 24);
    [*(v0 + 40) timestamp];
    sub_1C4EF9AC8();
    v36 = [v2 starting];

    sub_1C481A4DC(v34);
    *(v35 + *(v4 + 20)) = v36;
    v37 = (v35 + *(v4 + 24));
    *v37 = v11;
    v37[1] = v12;
    v37[2] = 0x3FF0000000000000;
    sub_1C440BAA8(v35, 0, 1, v4);
    sub_1C481A544(v35, v34);
    goto LABEL_18;
  }

LABEL_18:
  sub_1C481A544(*(v0 + 32), *(v0 + 16));
LABEL_19:
  v39 = *(v0 + 24);
  v38 = *(v0 + 32);

  v40 = *(v0 + 8);

  return v40();
}

unint64_t sub_1C481A478()
{
  result = qword_1EDDEFF30;
  if (!qword_1EDDEFF30)
  {
    sub_1C4572308(&qword_1EC0B8600, &unk_1C4F0D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFF30);
  }

  return result;
}

uint64_t sub_1C481A4DC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C481A544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for GamingActivityEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GamingActivityContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C481A770()
{
  result = qword_1EC0BDBC8;
  if (!qword_1EC0BDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBC8);
  }

  return result;
}

unint64_t sub_1C481A7C8()
{
  result = qword_1EC0BDBD0;
  if (!qword_1EC0BDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBD0);
  }

  return result;
}

unint64_t sub_1C481A820()
{
  result = qword_1EC0BDBD8;
  if (!qword_1EC0BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBD8);
  }

  return result;
}

unint64_t sub_1C481A878()
{
  result = qword_1EC0BDBE0;
  if (!qword_1EC0BDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBE0);
  }

  return result;
}

unint64_t sub_1C481A8D0()
{
  result = qword_1EC0BDBE8;
  if (!qword_1EC0BDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBE8);
  }

  return result;
}

unint64_t sub_1C481A928()
{
  result = qword_1EC0BDBF0;
  if (!qword_1EC0BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBF0);
  }

  return result;
}

void sub_1C481A97C(uint64_t a1)
{
  v104 = a1;
  v94 = type metadata accessor for VirtualInteraction(0);
  v2 = sub_1C43FBCE0(v94);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v91 - v9;
  v10 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v91 - v15;
  v98 = type metadata accessor for VirtualInteractionContact(0);
  v17 = *(v98 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v20 = (&v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1C456902C(&qword_1EC0BDC00, &qword_1C4F31410);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v91 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v99 = v1;
  v100 = &v91 - v28;
  v29 = [v1 recipients];
  sub_1C481B61C();
  v30 = sub_1C4F01678();

  v31 = sub_1C4428DA0(v30);
  v95 = v6;
  v96 = v16;
  v92 = v25;
  v93 = v14;
  if (v31)
  {
    v32 = v31;
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C459D608();
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      v34 = v107;
      v102 = v30;
      v103 = v30 & 0xC000000000000001;
      v101 = v30 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v35 = v32;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v103)
        {
          v37 = MEMORY[0x1C6940F90](v33, v30);
        }

        else
        {
          if (v33 >= *(v101 + 16))
          {
            goto LABEL_28;
          }

          v37 = *(v30 + 8 * v33 + 32);
        }

        v38 = v37;
        v106 = v37;
        sub_1C481B21C(&v106, v104, v20);

        v107 = v34;
        v39 = *(v34 + 16);
        if (v39 >= *(v34 + 24) >> 1)
        {
          sub_1C459D608();
          v34 = v107;
        }

        *(v34 + 16) = v39 + 1;
        sub_1C481B660(v20, v34 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v39);
        ++v33;
        v40 = v36 == v35;
        v32 = v35;
        v30 = v102;
        if (v40)
        {

          v16 = v96;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v41 = v99;
    v42 = [v99 sender];
    if (!v42)
    {
      goto LABEL_17;
    }

    v43 = v42;
    v44 = [v42 handle];

    sub_1C4F01138();
    v45 = String.normalizedContactHandle()();
    countAndFlagsBits = v45.value._countAndFlagsBits;
    object = v45.value._object;

    if (!v45.value._object)
    {
LABEL_17:

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    v48 = v100;
    sub_1C465C894(countAndFlagsBits, object, v104);

    sub_1C440BAA8(v16, 1, 1, v98);
    v49 = [v41 sender];
    v50 = v16;
    if (v49)
    {
      v51 = v49;
      v52 = sub_1C481B784(v49);
      v103 = v53;
      v104 = v52;
      v54 = [v51 handle];
      v55 = sub_1C4F01138();
      v57 = v56;

      v58 = [v51 contactType];
      v59 = v91;
      sub_1C4460050(v48, v91, &qword_1EC0BDC00, &qword_1C4F31410);
      v60 = v48;
      v61 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
      if (sub_1C44157D4(v59, 1, v61) == 1)
      {
        sub_1C4420C3C(v59, &qword_1EC0BDC00, &qword_1C4F31410);
        v62 = sub_1C4EFF0C8();
        v63 = v97;
        v64 = 1;
      }

      else
      {
        v65 = sub_1C4EFF0C8();
        sub_1C43FBCE0(v65);
        v67 = v97;
        (*(v66 + 32))(v97, v59, v65);
        v63 = v67;
        v64 = 0;
        v62 = v65;
      }

      sub_1C440BAA8(v63, v64, 1, v62);
      v68 = v92;
      sub_1C4460050(v60, v92, &qword_1EC0BDC00, &qword_1C4F31410);
      if (sub_1C44157D4(v68, 1, v61) == 1)
      {
        sub_1C4420C3C(v68, &qword_1EC0BDC00, &qword_1C4F31410);
        v69 = 2;
      }

      else
      {
        v69 = *(v68 + *(v61 + 48));
        v70 = sub_1C4EFF0C8();
        sub_1C43FBCE0(v70);
        (*(v71 + 8))(v68);
      }

      v72 = [v51 participantStatus];

      v50 = v96;
      sub_1C4420C3C(v96, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      v73 = v103;
      v74 = v93;
      *v93 = v104;
      v74[1] = v73;
      v74[2] = v55;
      v74[3] = v57;
      v74[4] = v58;
      v75 = v98;
      sub_1C44CD9E0(v97, v74 + *(v98 + 28), &unk_1EC0BA0E0, &qword_1C4F105A0);
      *(v74 + *(v75 + 32)) = v69;
      *(v74 + *(v75 + 36)) = v72;
      sub_1C440BAA8(v74, 0, 1, v75);
      sub_1C44CD9E0(v74, v50, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      v41 = v99;
    }

    v76 = [v41 startDate];
    v77 = v95;
    sub_1C4EF9C78();

    v78 = [v41 endDate];
    v79 = v94;
    v80 = v77 + v94[5];
    sub_1C4EF9C78();

    v81 = [v41 mechanism];
    v82 = [v41 bundleId];
    v83 = sub_1C4F01138();
    v85 = v84;

    v86 = [v41 direction];
    sub_1C4460050(v50, v77 + v79[9], &qword_1EC0BDBF8, &unk_1C4F6DE80);
    v87 = [v41 selfParticipantStatus];
    *(v77 + v79[6]) = v81;
    v88 = (v77 + v79[7]);
    *v88 = v83;
    v88[1] = v85;
    *(v77 + v79[8]) = v86;
    *(v77 + v79[10]) = v34;
    *(v77 + v79[11]) = v87;
    v89 = type metadata accessor for VirtualInteractionEvent(0);
    v90 = objc_allocWithZone(v89);
    sub_1C481B6C4(v77, v90 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction);
    v105.receiver = v90;
    v105.super_class = v89;
    objc_msgSendSuper2(&v105, sel_init);
    sub_1C481B728(v77);
    sub_1C4420C3C(v50, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    sub_1C4420C3C(v100, &qword_1EC0BDC00, &qword_1C4F31410);
  }
}

uint64_t sub_1C481B21C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_1C456902C(&qword_1EC0BDC00, &qword_1C4F31410);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = *a1;
  v20 = [v19 handle];
  sub_1C4F01138();

  v21 = String.normalizedContactHandle()();

  if (v21.value._object)
  {
    countAndFlagsBits = v21.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v21.value._object)
  {
    object = v21.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_1C465C894(countAndFlagsBits, object, v45);

  v45 = v18;
  sub_1C4460050(v18, v16, &qword_1EC0BDC00, &qword_1C4F31410);
  v24 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  if (sub_1C44157D4(v16, 1, v24) == 1)
  {
    sub_1C4420C3C(v16, &qword_1EC0BDC00, &qword_1C4F31410);
    v25 = sub_1C4EFF0C8();
    v26 = v8;
    v27 = 1;
  }

  else
  {
    v28 = sub_1C4EFF0C8();
    (*(*(v28 - 8) + 32))(v8, v16, v28);
    v26 = v8;
    v27 = 0;
    v25 = v28;
  }

  sub_1C440BAA8(v26, v27, 1, v25);
  v29 = v8;
  sub_1C4460050(v45, v13, &qword_1EC0BDC00, &qword_1C4F31410);
  if (sub_1C44157D4(v13, 1, v24) == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0BDC00, &qword_1C4F31410);
    v44 = 2;
  }

  else
  {
    v44 = v13[*(v24 + 48)];
    v30 = sub_1C4EFF0C8();
    (*(*(v30 - 8) + 8))(v13, v30);
  }

  v31 = sub_1C481B784(v19);
  v42 = v32;
  v43 = v31;
  v33 = [v19 handle];
  v34 = sub_1C4F01138();
  v36 = v35;

  v37 = [v19 contactType];
  v38 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C4460050(v29, a3 + v38[7], &unk_1EC0BA0E0, &qword_1C4F105A0);
  v39 = [v19 participantStatus];
  sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
  result = sub_1C4420C3C(v45, &qword_1EC0BDC00, &qword_1C4F31410);
  v41 = v42;
  *a3 = v43;
  a3[1] = v41;
  a3[2] = v34;
  a3[3] = v36;
  a3[4] = v37;
  *(a3 + v38[8]) = v44;
  *(a3 + v38[9]) = v39;
  return result;
}

unint64_t sub_1C481B61C()
{
  result = qword_1EDDF0360;
  if (!qword_1EDDF0360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0360);
  }

  return result;
}

uint64_t sub_1C481B660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualInteractionContact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C481B6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C481B728(uint64_t a1)
{
  v2 = type metadata accessor for VirtualInteraction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C481B784(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t GDInteractionEnumeration.makeIterator()()
{
  v1 = v0;

  return sub_1C4EF97F8();
}

void __swiftcall GDInteractionEnumeration.GDInteractionIterator.next()(GDInteraction_optional *__return_ptr retstr)
{
  sub_1C4EF97D8();
  if (v2)
  {
    sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
    swift_dynamicCast();
  }

  else
  {
    sub_1C4448244(v1);
  }
}

unint64_t sub_1C481B8CC()
{
  result = qword_1EC0BDC08;
  if (!qword_1EC0BDC08)
  {
    type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC08);
  }

  return result;
}

uint64_t type metadata accessor for GDInteractionEnumeration.GDInteractionIterator()
{
  result = qword_1EDDFCE30;
  if (!qword_1EDDFCE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C481B970()
{
  v1 = *v0;
  GDInteractionEnumeration.makeIterator()();
}

uint64_t sub_1C481BAA8()
{
  result = sub_1C4EF97E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t GDTimeZone.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t GDTimeZone.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static GDTimeZone.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7138 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C3900;
  *a1 = qword_1EC0C38E8;
  *(a1 + 8) = unk_1EC0C38F0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t GDTimeZone.mapLocation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t GDTimeZone.basicProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall GDTimeZone.init(mapLocation:name:secondsFromGMT:abbreviation:)(IntelligencePlatformCore::GDTimeZone *__return_ptr retstr, Swift::String mapLocation, Swift::String name, Swift::String secondsFromGMT, Swift::String_optional abbreviation)
{
  object = abbreviation.value._object;
  countAndFlagsBits = abbreviation.value._countAndFlagsBits;
  v7 = secondsFromGMT._object;
  v8 = secondsFromGMT._countAndFlagsBits;
  v9 = name._object;
  v10 = name._countAndFlagsBits;
  v11 = mapLocation._object;
  v12 = mapLocation._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0CE60;
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 48) = v10;
  *(v14 + 56) = v9;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  *(v14 + 88) = 1;
  strcpy((v14 + 96), "secondsFromGMT");
  *(v14 + 111) = -18;
  *(v14 + 112) = v8;
  *(v14 + 120) = v7;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0;
  *(v14 + 128) = 0;
  *(v14 + 152) = 1;
  if (object)
  {
    sub_1C458A900();
    v14 = v15;
    *(v15 + 16) = 3;
    strcpy((v15 + 160), "abbreviation");
    *(v15 + 173) = 0;
    *(v15 + 174) = -5120;
    *(v15 + 176) = countAndFlagsBits;
    *(v15 + 184) = object;
    *(v15 + 200) = 0;
    *(v15 + 208) = 0;
    *(v15 + 192) = 0;
    *(v15 + 216) = 1;
  }

  retstr->identifier.value._countAndFlagsBits = 0;
  retstr->identifier.value._object = 0;
  retstr->mapLocation._countAndFlagsBits = v12;
  retstr->mapLocation._object = v11;
  retstr->basicProperties._rawValue = v14;
}

uint64_t sub_1C481BDE8(uint64_t a1)
{
  v2 = sub_1C481C33C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C481BE24(uint64_t a1)
{
  v2 = sub_1C481C33C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GDTimeZone.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BDC18, &unk_1C4F31508);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v19 = v1[4];
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C481C33C();
  sub_1C4F02BF8();
  v26 = 0;
  v15 = v22;
  sub_1C4F02738();
  if (!v15)
  {
    v16 = v19;
    v25 = 1;
    sub_1C4F02798();
    v23 = v16;
    v24 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t GDTimeZone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BDC28, &qword_1C4F31518);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C481C33C();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    v10 = sub_1C4F02618();
    v13 = v12;
    v20 = v10;
    v14 = sub_1C4F02678();
    v16 = v15;
    v19 = v14;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
    sub_1C4F026C8();
    v17 = sub_1C43FBF04();
    v18(v17);
    *a2 = v20;
    a2[1] = v13;
    a2[2] = v19;
    a2[3] = v16;
    a2[4] = v21;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(a1);
  }
}

unint64_t sub_1C481C33C()
{
  result = qword_1EC0BDC20;
  if (!qword_1EC0BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC20);
  }

  return result;
}

unint64_t sub_1C481C390(uint64_t a1)
{
  result = sub_1C481C3B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C481C3B8()
{
  result = qword_1EC0BDC30;
  if (!qword_1EC0BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC30);
  }

  return result;
}

unint64_t sub_1C481C40C(uint64_t a1)
{
  *(a1 + 8) = sub_1C481C43C();
  result = sub_1C481C490();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C481C43C()
{
  result = qword_1EC0BDC38;
  if (!qword_1EC0BDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC38);
  }

  return result;
}

unint64_t sub_1C481C490()
{
  result = qword_1EC0BDC40;
  if (!qword_1EC0BDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GDTimeZone.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C481C5D4()
{
  result = qword_1EC0BDC48;
  if (!qword_1EC0BDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC48);
  }

  return result;
}

unint64_t sub_1C481C62C()
{
  result = qword_1EC0BDC50;
  if (!qword_1EC0BDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC50);
  }

  return result;
}

unint64_t sub_1C481C684()
{
  result = qword_1EC0BDC58;
  if (!qword_1EC0BDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC58);
  }

  return result;
}

uint64_t sub_1C481C6D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BDC60, &qword_1C4F16C68);
    v3 = sub_1C4F02558();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C481D978(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C481C784()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_1C456902C(&qword_1EC0BDC70, &qword_1C4F31790);
  *v4 = v0;
  v4[1] = sub_1C481C88C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001C4F9C410, sub_1C481DBB4, v2, v5);
}