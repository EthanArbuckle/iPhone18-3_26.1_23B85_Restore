unint64_t sub_1AB3CAE34()
{
  result = qword_1EB43C3E8;
  if (!qword_1EB43C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C3E8);
  }

  return result;
}

unint64_t sub_1AB3CAE88()
{
  result = qword_1EB435820;
  if (!qword_1EB435820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435820);
  }

  return result;
}

uint64_t sub_1AB3CAEDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_1AB3CAF30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t JetPackFileStreamSource.makeStream()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB840]);
  v1 = sub_1AB460514();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_1AB23337C();
    v2 = swift_allocError();
    v3 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  return v4;
}

uint64_t JetPackFileStreamSource.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1AB3CB0E0(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1ED4D0B80 != -1)
    {
      result = swift_once();
    }

    v6 = v3;
    v7 = v2;
    v4 = *(qword_1ED4D3EB0 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1AB233D50(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t sub_1AB3CB1B0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = sub_1AB248C34(v8, v3, v4);
  v6 = v8[0];
  v7 = v8[1];
  *a2 = result & 1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1AB3CB218@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1AB057310(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AB3CB268@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v4 = sub_1AB460514();
  v5 = [a1 objectForKeyedSubscript_];

  if (v5)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    v5 = swift_allocObject();
    result = sub_1AB014B78(v9, v5 + 1);
    v7 = &off_1F1FFB5A8;
    v8 = &type metadata for FoundationValue;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    result = sub_1AB014AC0(v9, &unk_1EB437E60);
    v8 = 0;
    v7 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v5;
  a2[3] = v8;
  a2[4] = v7;
  return result;
}

uint64_t sub_1AB3CB34C(void (*a1)(char *, uint64_t, uint64_t, uint64_t, __int128 *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v78 = a1;
  v79 = a2;
  v12 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = v67 - v13;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v75 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  v77 = a4;
  v74 = a5;
  v23 = a6;
  v24 = sub_1AB4602A4();
  v99 = v24;
  v80 = a3;
  v84 = sub_1AB461024();
  sub_1AB461034();
  v95 = v91;
  v96 = v92;
  v97 = v93;
  v98 = v94;
  if (*(&v92 + 1))
  {
    v67[0] = 0x80000001AB50D3A0;
    v72 = (v17 + 16);
    v73 = "ffer" & 0x2F00000000000000;
    v70 = (v14 + 56);
    v71 = (v14 + 16);
    v68 = (v17 + 8);
    v69 = (v14 + 8);
    v82 = xmmword_1AB4D4720;
    v67[1] = v23;
    v24 = v81;
    v85 = v22;
    while (1)
    {
      sub_1AB014B78(&v95, v90);
      sub_1AB014B78(&v97, v89);
      sub_1AB0165C4(v90, &v91);
      sub_1AB016760(0, &qword_1ED4D1040);
      if (swift_dynamicCast())
      {
        v25 = v87;
        sub_1AB0165C4(v89, &v87);
        *(&v92 + 1) = &type metadata for FoundationValue;
        *&v93 = &off_1F1FFB5A8;
        *&v91 = swift_allocObject();
        sub_1AB014B78(&v87, (v91 + 16));
        v26 = sub_1AB460544();
        v78(v22, v24, v26, v27, &v91);
        if (v7)
        {

          sub_1AB066D84(&v91);
          __swift_destroy_boxed_opaque_existential_1Tm(v89);
          __swift_destroy_boxed_opaque_existential_1Tm(v90);

          return v24;
        }

        v28 = v77;
        (*v72)(v75, v85, v77);
        v29 = *v71;
        v30 = v76;
        v83 = 0;
        v31 = v74;
        v29(v76, v24, v74);
        (*v70)(v30, 0, 1, v31);
        sub_1AB4603C4();
        v22 = v85;
        sub_1AB460424();

        v32 = v31;
        v7 = v83;
        (*v69)(v24, v32);
        (*v68)(v22, v28);
        sub_1AB066D84(&v91);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
      }

      else
      {
        if (qword_1EB435660 != -1)
        {
          swift_once();
        }

        v33 = qword_1EB435668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v34 = swift_allocObject();
        *(v34 + 16) = v82;
        v35 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
        v88 = MEMORY[0x1E69E6158];
        *&v87 = 0x697274532D6E6F4ELL;
        *(&v87 + 1) = 0xEF2079656B20676ELL;
        v91 = 0u;
        v92 = 0u;
        sub_1AB0169C4(&v87, &v91);
        LOBYTE(v93) = 0;
        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v38 = &v35[40 * v37];
        v39 = v91;
        v40 = v92;
        v38[64] = v93;
        *(v38 + 2) = v39;
        *(v38 + 3) = v40;
        sub_1AB0165C4(v90, &v87);
        sub_1AB014A58(&v87, v86, &unk_1EB437E60);
        v91 = 0u;
        v92 = 0u;
        sub_1AB0169C4(v86, &v91);
        LOBYTE(v93) = 0;
        v42 = *(v35 + 2);
        v41 = *(v35 + 3);
        if (v42 >= v41 >> 1)
        {
          v35 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v35);
        }

        sub_1AB014AC0(&v87, &unk_1EB437E60);
        *(v35 + 2) = v42 + 1;
        v43 = &v35[40 * v42];
        v44 = v93;
        v45 = v92;
        *(v43 + 2) = v91;
        *(v43 + 3) = v45;
        v43[64] = v44;
        if (v73 != 0x2000000000000000)
        {
          v88 = MEMORY[0x1E69E6158];
          *&v87 = 0xD00000000000001ALL;
          *(&v87 + 1) = v67[0];
          v91 = 0u;
          v92 = 0u;
          sub_1AB0169C4(&v87, &v91);
          LOBYTE(v93) = 0;
          v47 = *(v35 + 2);
          v46 = *(v35 + 3);
          if (v47 >= v46 >> 1)
          {
            v35 = sub_1AB0168A8((v46 > 1), v47 + 1, 1, v35);
          }

          *(v35 + 2) = v47 + 1;
          v48 = &v35[40 * v47];
          v49 = v91;
          v50 = v92;
          v48[64] = v93;
          *(v48 + 2) = v49;
          *(v48 + 3) = v50;
        }

        v88 = &type metadata for FoundationDictionary;
        v51 = v80;
        *&v87 = v80;
        sub_1AB014A58(&v87, v86, &unk_1EB437E60);
        v91 = 0u;
        v92 = 0u;
        v52 = v51;
        sub_1AB0169C4(v86, &v91);
        LOBYTE(v93) = 0;
        v54 = *(v35 + 2);
        v53 = *(v35 + 3);
        if (v54 >= v53 >> 1)
        {
          v35 = sub_1AB0168A8((v53 > 1), v54 + 1, 1, v35);
        }

        *(v35 + 2) = v54 + 1;
        v55 = &v35[40 * v54];
        v56 = v91;
        v57 = v92;
        v55[64] = v93;
        *(v55 + 2) = v56;
        *(v55 + 3) = v57;
        sub_1AB014AC0(&v87, &unk_1EB437E60);
        *(v34 + 32) = v35;
        v58 = sub_1AB461074();
        if (os_log_type_enabled(v33, v58))
        {
          if (qword_1EB4359F8 != -1)
          {
            swift_once();
          }

          v59 = off_1EB435A00;
          os_unfair_lock_lock(off_1EB435A00 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v59[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v59 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v61 = swift_allocObject();
          *(v61 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v91 = v34;
          *(&v91 + 1) = sub_1AB0223E4;
          *&v92 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
          sub_1AB016A34();
          v62 = sub_1AB460484();
          v64 = v63;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
          v65 = swift_allocObject();
          *(v65 + 16) = v82;
          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = sub_1AB016854();
          *(v65 + 32) = v62;
          *(v65 + 40) = v64;
          sub_1AB45FF14();

          v22 = v85;
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        v24 = v81;
      }

      sub_1AB461034();
      v95 = v91;
      v96 = v92;
      v97 = v93;
      v98 = v94;
      if (!*(&v92 + 1))
      {
        v24 = v99;
        break;
      }
    }
  }

  return v24;
}

void *sub_1AB3CBCAC(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v93 = a1;
  v94 = a2;
  v12 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v70 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = sub_1AB461354();
  *&v96 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v97 = &v70 - v14;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v70 - v22;
  v85 = a4;
  v86 = a5;
  v87 = a6;
  v23 = sub_1AB4602A4();
  v111 = v23;
  v24 = sub_1AB461024();
  sub_1AB461034();
  v107 = v103;
  v108 = v104;
  v109 = v105;
  v110 = v106;
  if (*(&v104 + 1))
  {
    v92 = "ffer" & 0x2F00000000000000;
    v89 = TupleTypeMetadata2 - 8;
    v78 = (v18 + 32);
    v79 = 0x80000001AB50D3A0;
    v76 = (v18 + 16);
    v77 = (v15 + 32);
    v74 = (v15 + 56);
    v75 = (v15 + 16);
    v72 = (v18 + 8);
    v73 = (v15 + 8);
    v71 = (v96 + 8);
    v96 = xmmword_1AB4D4720;
    v90 = v24;
    v91 = a3;
    while (1)
    {
      sub_1AB014B78(&v107, v102);
      sub_1AB014B78(&v109, v101);
      sub_1AB0165C4(v102, &v103);
      sub_1AB016760(0, &qword_1ED4D1040);
      if (swift_dynamicCast())
      {
        v23 = v99;
        sub_1AB0165C4(v101, &v99);
        *(&v104 + 1) = &type metadata for FoundationValue;
        *&v105 = &off_1F1FFB5A8;
        *&v103 = swift_allocObject();
        sub_1AB014B78(&v99, (v103 + 16));
        v25 = sub_1AB460544();
        v93(v25);
        if (v7)
        {

          sub_1AB066D84(&v103);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);

          return v23;
        }

        v26 = TupleTypeMetadata2;
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v97, 1, TupleTypeMetadata2) == 1)
        {

          sub_1AB066D84(&v103);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          (*v71)(v97, v83);
          goto LABEL_5;
        }

        v59 = *(v26 + 48);
        v60 = v80;
        v61 = v97;
        v62 = v85;
        (*v78)(v80, v97, v85);
        v63 = &v61[v59];
        v64 = v82;
        v65 = v86;
        (*v77)(v82, v63, v86);
        v66 = *v76;
        v88 = 0;
        v66(v81, v60, v62);
        v67 = v84;
        (*v75)(v84, v64, v65);
        (*v74)(v67, 0, 1, v65);
        sub_1AB4603C4();
        v7 = v88;
        sub_1AB460424();

        (*v73)(v64, v65);
        v68 = v60;
        a3 = v91;
        (*v72)(v68, v62);
        sub_1AB066D84(&v103);
      }

      else
      {
        if (qword_1EB435660 != -1)
        {
          swift_once();
        }

        v27 = qword_1EB435668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v28 = swift_allocObject();
        *(v28 + 16) = v96;
        v29 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
        v100 = MEMORY[0x1E69E6158];
        *&v99 = 0x697274532D6E6F4ELL;
        *(&v99 + 1) = 0xEF2079656B20676ELL;
        v103 = 0u;
        v104 = 0u;
        sub_1AB0169C4(&v99, &v103);
        LOBYTE(v105) = 0;
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[40 * v31];
        v33 = v103;
        v34 = v104;
        v32[64] = v105;
        *(v32 + 2) = v33;
        *(v32 + 3) = v34;
        sub_1AB0165C4(v102, &v99);
        sub_1AB014A58(&v99, v98, &unk_1EB437E60);
        v103 = 0u;
        v104 = 0u;
        sub_1AB0169C4(v98, &v103);
        LOBYTE(v105) = 0;
        v36 = *(v29 + 2);
        v35 = *(v29 + 3);
        if (v36 >= v35 >> 1)
        {
          v29 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v29);
        }

        sub_1AB014AC0(&v99, &unk_1EB437E60);
        *(v29 + 2) = v36 + 1;
        v37 = &v29[40 * v36];
        v38 = v105;
        v39 = v104;
        *(v37 + 2) = v103;
        *(v37 + 3) = v39;
        v37[64] = v38;
        if (v92 != 0x2000000000000000)
        {
          v100 = MEMORY[0x1E69E6158];
          *&v99 = 0xD00000000000001ALL;
          *(&v99 + 1) = v79;
          v103 = 0u;
          v104 = 0u;
          sub_1AB0169C4(&v99, &v103);
          LOBYTE(v105) = 0;
          v41 = *(v29 + 2);
          v40 = *(v29 + 3);
          if (v41 >= v40 >> 1)
          {
            v29 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v29);
          }

          *(v29 + 2) = v41 + 1;
          v42 = &v29[40 * v41];
          v43 = v103;
          v44 = v104;
          v42[64] = v105;
          *(v42 + 2) = v43;
          *(v42 + 3) = v44;
        }

        v100 = &type metadata for FoundationDictionary;
        *&v99 = a3;
        sub_1AB014A58(&v99, v98, &unk_1EB437E60);
        v103 = 0u;
        v104 = 0u;
        v45 = a3;
        sub_1AB0169C4(v98, &v103);
        LOBYTE(v105) = 0;
        v47 = *(v29 + 2);
        v46 = *(v29 + 3);
        if (v47 >= v46 >> 1)
        {
          v29 = sub_1AB0168A8((v46 > 1), v47 + 1, 1, v29);
        }

        *(v29 + 2) = v47 + 1;
        v48 = &v29[40 * v47];
        v49 = v103;
        v50 = v104;
        v48[64] = v105;
        *(v48 + 2) = v49;
        *(v48 + 3) = v50;
        sub_1AB014AC0(&v99, &unk_1EB437E60);
        *(v28 + 32) = v29;
        v51 = sub_1AB461074();
        if (os_log_type_enabled(v27, v51))
        {
          if (qword_1EB4359F8 != -1)
          {
            swift_once();
          }

          v52 = off_1EB435A00;
          os_unfair_lock_lock(off_1EB435A00 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v52[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v52 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v54 = swift_allocObject();
          *(v54 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v103 = v28;
          *(&v103 + 1) = sub_1AB01A8D8;
          *&v104 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
          sub_1AB016A34();
          v55 = sub_1AB460484();
          v57 = v56;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
          v58 = swift_allocObject();
          *(v58 + 16) = v96;
          *(v58 + 56) = MEMORY[0x1E69E6158];
          *(v58 + 64) = sub_1AB016854();
          *(v58 + 32) = v55;
          *(v58 + 40) = v57;
          sub_1AB45FF14();

          a3 = v91;
        }

        else
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
LABEL_5:
      sub_1AB461034();
      v107 = v103;
      v108 = v104;
      v109 = v105;
      v110 = v106;
      if (!*(&v104 + 1))
      {
        v23 = v111;
        break;
      }
    }
  }

  return v23;
}

char *sub_1AB3CC764(void *a1)
{
  v2 = sub_1AB45F5B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 keyEnumerator];
  sub_1AB461044();
  sub_1AB3CCA08();
  sub_1AB4613F4();
  if (v23)
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1AB014B78(&v22, &v19);
      if (swift_dynamicCast())
      {
        v10 = v21;
        if (v21)
        {
          v11 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = sub_1AB020904(0, *(v7 + 2) + 1, 1, v7);
          }

          v14 = *(v7 + 2);
          v13 = *(v7 + 3);
          v15 = v14 + 1;
          if (v14 >= v13 >> 1)
          {
            v17 = v14 + 1;
            v16 = sub_1AB020904((v13 > 1), v14 + 1, 1, v7);
            v15 = v17;
            v7 = v16;
          }

          *(v7 + 2) = v15;
          v9 = &v7[16 * v14];
          *(v9 + 4) = v18;
          *(v9 + 5) = v10;
        }
      }

      sub_1AB4613F4();
    }

    while (v23);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

unint64_t sub_1AB3CCA08()
{
  result = qword_1EB435608;
  if (!qword_1EB435608)
  {
    sub_1AB45F5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435608);
  }

  return result;
}

void sub_1AB3CCA60(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AB460514();
  v9 = [a3 valueForProperty_];

  if (v9)
  {
    if (sub_1AB356FBC() == 6)
    {
      sub_1AB0C3EF0();
      v10 = swift_allocError();
      v12 = v11;
      v13 = v9;
      JSError.init(badValue:expected:)(v13, 1313821514, 0xE400000000000000, v12);
      swift_willThrow();

      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v14 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1AB4D4720;
      v33 = sub_1AB0168A8(0, 37, 0, MEMORY[0x1E69E7CC0]);
      v16._object = 0x80000001AB50D3C0;
      v16._countAndFlagsBits = 0xD000000000000024;
      LogMessage.StringInterpolation.appendLiteral(_:)(v16);
      v32[3] = MEMORY[0x1E69E6158];
      v32[0] = a1;
      v32[1] = a2;
      sub_1AB014A58(v32, v28, &unk_1EB437E60);
      v29 = 0u;
      v30 = 0u;

      sub_1AB0169C4(v28, &v29);
      v31 = 0;
      v17 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
        v33 = v17;
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v20 = &v17[40 * v19];
      v21 = v29;
      v22 = v30;
      v20[64] = v31;
      *(v20 + 2) = v21;
      *(v20 + 3) = v22;
      v33 = v17;
      sub_1AB014AC0(v32, &unk_1EB437E60);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      *(v15 + 32) = v33;
      *&v29 = v14;
      LOBYTE(v32[0]) = 0;
      OSLogger.log(contentsOf:withLevel:)(v15, v32);

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      v24 = v9;
      v25 = sub_1AB1DF338(v24);
      v27 = v26;
      *(a4 + 24) = &type metadata for DirectValue;
      *(a4 + 32) = &off_1F1FFB710;

      *a4 = v25;
      *(a4 + 8) = v27;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB3CCD4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  swift_getTupleTypeMetadata2();
  v6[10] = sub_1AB3CDD70(sub_1AB3CE504, v6, a1);
  sub_1AB460A64();
  swift_getWitnessTable();
  return sub_1AB460364();
}

void sub_1AB3CD000(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v58 = a6;
  v11 = sub_1AB461354();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v12;
  v59 = a5;
  v57 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB461354();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[0] = a1;
  v66[1] = a2;

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v19 + 56))(v18, 1, 1, a4);
    (*(v16 + 8))(v18, v15);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1AB4615D4();

    v61 = 0x657079742079654BLL;
    v62 = 0xE900000000000020;
    v27 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v27);

    MEMORY[0x1AC59BA20](0xD00000000000001CLL, 0x80000001AB50D420);
    v28 = v61;
    v29 = v62;
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v61) = 1;
    LOBYTE(v65[0]) = 1;
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = 0;
    *(v30 + 24) = 1;
    *(v30 + 25) = v61;
    *(v30 + 28) = *(&v61 + 3);
    *(v30 + 32) = 0;
    *(v30 + 40) = 1;
    *(v30 + 41) = v65[0];
    *(v30 + 44) = *(v65 + 3);
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0u;
    *(v30 + 80) = 0u;
    *(v30 + 96) = 0;
    swift_willThrow();
    return;
  }

  (*(v19 + 56))(v18, 0, 1, a4);
  v51 = *(v19 + 32);
  v51(v22, v18, a4);
  v23 = sub_1AB460514();
  v24 = [a3 valueForProperty_];

  if (!v24)
  {
    (*(v19 + 8))(v22, a4);
    goto LABEL_7;
  }

  v52 = v22;
  v25 = sub_1AB356FBC();
  v26 = v60;
  if (v25 == 6)
  {
    (*(v19 + 8))(v52, a4);

LABEL_7:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v58, 1, 1, TupleTypeMetadata2);
    return;
  }

  sub_1AB0890D8(v24, v66);
  if (v26)
  {
    (*(v19 + 8))(v52, a4);
  }

  else
  {
    sub_1AB014A58(v66, &v61, &qword_1EB436BA0);
    v32 = v63;
    if (v63)
    {
      v33 = v64;
      __swift_project_boxed_opaque_existential_1Tm(&v61, v63);
      (*(v33 + 120))(v65, v32, v33);
      sub_1AB066D84(v66);
      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
    }

    else
    {
      sub_1AB066D84(v66);
      sub_1AB014AC0(&v61, &qword_1EB436BA0);
      memset(v65, 0, sizeof(v65));
    }

    v34 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
    v35 = v59;
    if (swift_dynamicCast())
    {

      v36 = v57;
      (*(v57 + 56))(v34, 0, 1, v35);
      v60 = *(v36 + 32);
      v37 = v53;
      v60(v53, v34, v35);
      v38 = v35;
      v39 = swift_getTupleTypeMetadata2();
      v40 = *(v39 + 48);
      v41 = v58;
      v51(v58, v52, a4);
      v60(&v41[v40], v37, v38);
      (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
    }

    else
    {
      (*(v57 + 56))(v34, 1, 1, v35);
      (*(v54 + 8))(v34, v55);
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1AB4615D4();

      v61 = 0x742064656C696146;
      v62 = 0xEF2074736163206FLL;
      v42 = [v24 description];
      v43 = sub_1AB460544();
      v45 = v44;

      MEMORY[0x1AC59BA20](v43, v45);

      MEMORY[0x1AC59BA20](544175136, 0xE400000000000000);
      v46 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v46);

      v47 = v61;
      v48 = v62;
      sub_1AB0C3EF0();
      swift_allocError();
      LOBYTE(v61) = 1;
      LOBYTE(v67[0]) = 1;
      *v49 = v47;
      *(v49 + 8) = v48;
      *(v49 + 16) = 0;
      *(v49 + 24) = 1;
      *(v49 + 25) = v61;
      *(v49 + 28) = *(&v61 + 3);
      *(v49 + 32) = 0;
      *(v49 + 40) = 1;
      *(v49 + 41) = v67[0];
      *(v49 + 44) = *(v67 + 3);
      *(v49 + 48) = 0u;
      *(v49 + 64) = 0u;
      *(v49 + 80) = 0u;
      *(v49 + 96) = 0;
      swift_willThrow();

      (*(v19 + 8))(v52, a4);
    }
  }
}

size_t sub_1AB3CD848(void *a1)
{
  v2 = v1;
  result = [a1 context];
  if (!result)
  {
    goto LABEL_29;
  }

  v5 = result;
  v6 = [result JSGlobalContextRef];

  v7 = JSObjectCopyPropertyNames(v6, [a1 JSValueRef]);
  result = JSPropertyNameArrayGetCount(v7);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v8 = result;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v9)
    {
      JSPropertyNameArrayRelease(v7);
      return v10;
    }

    if (v9 >= v8)
    {
      break;
    }

    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_27;
    }

    result = JSPropertyNameArrayGetNameAtIndex(v7, v9++);
    if (result)
    {
      v12 = result;
      CharactersPtr = JSStringGetCharactersPtr(result);
      if (CharactersPtr)
      {
        v14 = CharactersPtr;
        Length = JSStringGetLength(v12);
        if (Length)
        {
          v16 = Length;
          JSStringRetain(v12);
          v17 = v2;
          v18 = swift_allocObject();
          *(v18 + 16) = v12;
          v19 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
          v44 = sub_1AB3CE33C;
          v45 = v18;
          aBlock = MEMORY[0x1E69E9820];
          v41 = 1107296256;
          v42 = sub_1AB159114;
          v43 = &block_descriptor_46;
          v20 = _Block_copy(&aBlock);

          v21 = [v19 initWithCharactersNoCopy:v14 length:v16 deallocator:v20];
          v22 = v20;
          v2 = v17;
          _Block_release(v22);
          v23 = sub_1AB460544();
          v25 = v24;

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_22;
          }

LABEL_11:
          result = sub_1AB020904(0, *(v10 + 16) + 1, 1, v10);
          v10 = result;
          goto LABEL_22;
        }
      }

      else
      {
        if (qword_1EB435660 != -1)
        {
          swift_once();
        }

        v26 = qword_1EB435668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        v43 = MEMORY[0x1E69E6158];
        aBlock = 0xD000000000000026;
        v41 = 0x80000001AB4FF3D0;
        *(v28 + 48) = 0u;
        *(v28 + 32) = 0u;
        sub_1AB0169C4(&aBlock, v28 + 32);
        *(v28 + 64) = 0;
        *(v27 + 32) = v28;
        v29 = sub_1AB461094();
        if (os_log_type_enabled(v26, v29))
        {
          if (qword_1EB4359F8 != -1)
          {
            swift_once();
          }

          v30 = off_1EB435A00;
          os_unfair_lock_lock(off_1EB435A00 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v30 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v32 = swift_allocObject();
          *(v32 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          aBlock = v27;
          v41 = sub_1AB0223E4;
          v42 = v32;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
          sub_1AB016A34();
          v33 = sub_1AB460484();
          v35 = v34;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1AB4D4720;
          *(v36 + 56) = MEMORY[0x1E69E6158];
          *(v36 + 64) = sub_1AB016854();
          *(v36 + 32) = v33;
          *(v36 + 40) = v35;
          sub_1AB45FF14();
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = 0;
      v25 = 0xE000000000000000;
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      v38 = *(v10 + 16);
      v37 = *(v10 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_1AB020904((v37 > 1), v38 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v38 + 1;
      v39 = v10 + 16 * v38;
      *(v39 + 32) = v23;
      *(v39 + 40) = v25;
      v9 = v11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

size_t sub_1AB3CDD70(int a1, int a2, id a3)
{
  result = [a3 context];
  if (result)
  {
    v5 = result;
    v6 = [result JSGlobalContextRef];

    v7 = JSObjectCopyPropertyNames(v6, [a3 JSValueRef]);
    result = JSPropertyNameArrayGetCount(v7);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C3F0);
      sub_1AB3CE364();
      v8 = sub_1AB460814();
      JSPropertyNameArrayRelease(v7);
      return v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3CDEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *)@<X2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 + 48);
  sub_1AB3CCA60(a1, a2, a4, v14);
  a3(a5, a5 + v12, a1, a2, v14);
  result = sub_1AB066D84(v14);
  if (!v5)
  {
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 0, 1, TupleTypeMetadata2);
  }

  return result;
}

size_t sub_1AB3CDFC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11[7] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a1;
  v11[6] = a2;
  swift_getTupleTypeMetadata2();
  result = sub_1AB3CDD70(a7, v11, a3);
  if (!v7)
  {
    v11[9] = result;
    sub_1AB460A64();
    swift_getWitnessTable();
    return sub_1AB460364();
  }

  return result;
}

uint64_t sub_1AB3CE0B0@<X0>(JSPropertyNameArrayRef array@<X1>, size_t *a2@<X0>, void (*a3)(size_t, unint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  NameAtIndex = JSPropertyNameArrayGetNameAtIndex(array, *a2);
  if (!NameAtIndex)
  {
    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  v9 = sub_1AB158D50(NameAtIndex);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  a3(v9, v11);
}

id sub_1AB3CE17C()
{
  v1 = *v0;
  result = [*v0 context];
  if (result)
  {
    v3 = result;
    v4 = [result JSGlobalContextRef];

    v5 = JSObjectCopyPropertyNames(v4, [v1 JSValueRef]);
    Count = JSPropertyNameArrayGetCount(v5);
    JSPropertyNameArrayRelease(v5);
    return (Count == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AB3CE214()
{
  v1 = *v0;
  result = [*v0 context];
  if (result)
  {
    v3 = result;
    v4 = [result JSGlobalContextRef];

    v5 = JSObjectCopyPropertyNames(v4, [v1 JSValueRef]);
    Count = JSPropertyNameArrayGetCount(v5);
    JSPropertyNameArrayRelease(v5);
    return Count;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB3CE364()
{
  result = qword_1EB43C3F8;
  if (!qword_1EB43C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43C3F0);
    sub_1AB3CE3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C3F8);
  }

  return result;
}

unint64_t sub_1AB3CE3F0()
{
  result = qword_1EB43C400;
  if (!qword_1EB43C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C400);
  }

  return result;
}

uint64_t sub_1AB3CE454(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1AB3CCA60(a1, a2, *(v2 + 56), v7);
  v5(a1, a2, v7);
  return sub_1AB066D84(v7);
}

uint64_t ImpressionsTracking.ImpressionableItem.State.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t ImpressionsTracking.ImpressionableItem.__allocating_init(item:rect:visibleThreshold:overrideVisibleThresholdForContainer:)(__int128 *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v14 = swift_allocObject();
  v15 = *a1;
  *(v14 + 88) = a1[1];
  v16 = a1[3];
  *(v14 + 104) = a1[2];
  *(v14 + 120) = v16;
  *(v14 + 136) = a1[4];
  *(v14 + 168) = 0;
  *(v14 + 72) = v15;
  *(v14 + 161) = 1;
  *(v14 + 184) = a3;
  *(v14 + 192) = a4;
  *(v14 + 200) = a5;
  *(v14 + 208) = a6;
  *(v14 + 16) = a7;
  *(v14 + 24) = a2;
  v17 = a3;
  *&v15 = a4;
  *&v16 = a5;
  v18 = a6;
  v19 = CGRectGetWidth(*(&v15 - 8)) * a7;
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  v29 = CGRectGetHeight(v31) * a7;
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  MinY = CGRectGetMinY(v33);
  v21 = fabs(a7 + -0.5);
  if (v21 >= 0.01)
  {
    v34.origin.x = a3;
    v34.origin.y = a4;
    v28 = MinY;
    v34.size.width = a5;
    v34.size.height = a6;
    v27 = CGRectGetMaxX(v34) - v19 + 0.0;
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    v24 = CGRectGetMaxY(v35) - v29 + 0.0;
    v22 = a7 > 0.5;
    v25 = v29;
    v23 = v27;
    MinY = v28;
  }

  else
  {
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = v29;
  }

  *(v14 + 32) = v19 + MinX + 0.0;
  *(v14 + 40) = v25 + MinY + 0.0;
  *(v14 + 48) = v23;
  *(v14 + 56) = v24;
  *(v14 + 64) = v21 < 0.01;
  *(v14 + 65) = v22;
  *(v14 + 176) = 0;
  *(v14 + 152) = 0;
  *(v14 + 160) = 1;
  return v14;
}

uint64_t ImpressionsTracking.ImpressionableItem.init(item:rect:visibleThreshold:overrideVisibleThresholdForContainer:)(__int128 *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v13 = *a1;
  *(v7 + 88) = a1[1];
  v14 = a1[3];
  *(v7 + 104) = a1[2];
  *(v7 + 120) = v14;
  *(v7 + 136) = a1[4];
  *(v7 + 168) = 0;
  *(v7 + 72) = v13;
  *(v7 + 161) = 1;
  *(v7 + 184) = a3;
  *(v7 + 192) = a4;
  *(v7 + 200) = a5;
  *(v7 + 208) = a6;
  *(v7 + 16) = a7;
  *(v7 + 24) = a2;
  *&v13 = a4;
  *&v14 = a5;
  v15 = CGRectGetWidth(*&a3) * a7;
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  v25 = CGRectGetHeight(v27) * a7;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  MinY = CGRectGetMinY(v29);
  v17 = fabs(a7 + -0.5);
  if (v17 >= 0.01)
  {
    v30.origin.x = a3;
    v30.origin.y = a4;
    v24 = MinY;
    v30.size.width = a5;
    v30.size.height = a6;
    v23 = CGRectGetMaxX(v30) - v15 + 0.0;
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    v20 = CGRectGetMaxY(v31) - v25 + 0.0;
    v18 = a7 > 0.5;
    v21 = v25;
    v19 = v23;
    MinY = v24;
  }

  else
  {
    v18 = 0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = v25;
  }

  *(v7 + 32) = v15 + MinX + 0.0;
  *(v7 + 40) = v21 + MinY + 0.0;
  *(v7 + 48) = v19;
  *(v7 + 56) = v20;
  *(v7 + 64) = v17 < 0.01;
  *(v7 + 65) = v18;
  *(v7 + 176) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 1;
  return v7;
}

uint64_t ImpressionsTracking.ImpressionableItem.__allocating_init(item:rect:visibleThreshold:overrideVisibleThresholdForContainer:position:)(__int128 *a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v18 = swift_allocObject();
  v19 = *a1;
  *(v18 + 88) = a1[1];
  v20 = a1[3];
  *(v18 + 104) = a1[2];
  *(v18 + 120) = v20;
  *(v18 + 136) = a1[4];
  *(v18 + 168) = 0;
  *(v18 + 72) = v19;
  *(v18 + 161) = 1;
  *(v18 + 184) = a5;
  *(v18 + 192) = a6;
  *(v18 + 200) = a7;
  *(v18 + 208) = a8;
  *(v18 + 16) = a9;
  *(v18 + 24) = a2;
  v21 = a5;
  *&v19 = a6;
  *&v20 = a7;
  v22 = a8;
  v23 = CGRectGetWidth(*(&v19 - 8)) * a9;
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  v33 = CGRectGetHeight(v35) * a9;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  MinY = CGRectGetMinY(v37);
  v25 = fabs(a9 + -0.5);
  if (v25 >= 0.01)
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v32 = MinY;
    v38.size.width = a7;
    v38.size.height = a8;
    v31 = CGRectGetMaxX(v38) - v23 + 0.0;
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    v28 = CGRectGetMaxY(v39) - v33 + 0.0;
    v26 = a9 > 0.5;
    v29 = v33;
    v27 = v31;
    MinY = v32;
  }

  else
  {
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = v33;
  }

  *(v18 + 32) = v23 + MinX + 0.0;
  *(v18 + 40) = v29 + MinY + 0.0;
  *(v18 + 48) = v27;
  *(v18 + 56) = v28;
  *(v18 + 64) = v25 < 0.01;
  *(v18 + 65) = v26;
  *(v18 + 176) = 0;
  *(v18 + 152) = a3;
  *(v18 + 160) = a4 & 1;
  return v18;
}

uint64_t ImpressionsTracking.ImpressionableItem.init(item:rect:visibleThreshold:overrideVisibleThresholdForContainer:position:)(__int128 *a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v17 = *a1;
  *(v9 + 88) = a1[1];
  v18 = a1[3];
  *(v9 + 104) = a1[2];
  *(v9 + 120) = v18;
  *(v9 + 136) = a1[4];
  *(v9 + 168) = 0;
  *(v9 + 72) = v17;
  *(v9 + 161) = 1;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 200) = a7;
  *(v9 + 208) = a8;
  *(v9 + 16) = a9;
  *(v9 + 24) = a2;
  *&v17 = a6;
  *&v18 = a7;
  v19 = CGRectGetWidth(*&a5) * a9;
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  v29 = CGRectGetHeight(v31) * a9;
  v32.origin.x = a5;
  v32.origin.y = a6;
  v32.size.width = a7;
  v32.size.height = a8;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  MinY = CGRectGetMinY(v33);
  v21 = fabs(a9 + -0.5);
  if (v21 >= 0.01)
  {
    v34.origin.x = a5;
    v34.origin.y = a6;
    v28 = MinY;
    v34.size.width = a7;
    v34.size.height = a8;
    v27 = CGRectGetMaxX(v34) - v19 + 0.0;
    v35.origin.x = a5;
    v35.origin.y = a6;
    v35.size.width = a7;
    v35.size.height = a8;
    v24 = CGRectGetMaxY(v35) - v29 + 0.0;
    v22 = a9 > 0.5;
    v25 = v29;
    v23 = v27;
    MinY = v28;
  }

  else
  {
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = v29;
  }

  *(v9 + 32) = v19 + MinX + 0.0;
  *(v9 + 40) = v25 + MinY + 0.0;
  *(v9 + 48) = v23;
  *(v9 + 56) = v24;
  *(v9 + 64) = v21 < 0.01;
  *(v9 + 65) = v22;
  *(v9 + 176) = 0;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4 & 1;
  return v9;
}

uint64_t ImpressionsTracking.ImpressionableItem.__allocating_init(item:rect:visibleThreshold:)(__int128 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = swift_allocObject();
  ImpressionsTracking.ImpressionableItem.init(item:rect:visibleThreshold:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ImpressionsTracking.ImpressionableItem.init(item:rect:visibleThreshold:)(__int128 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = *a1;
  *(v6 + 88) = a1[1];
  v13 = a1[3];
  *(v6 + 104) = a1[2];
  *(v6 + 120) = v13;
  *(v6 + 136) = a1[4];
  *(v6 + 168) = 0;
  *(v6 + 72) = v12;
  *(v6 + 161) = 1;
  *(v6 + 184) = a2;
  *(v6 + 192) = a3;
  *(v6 + 200) = a4;
  *(v6 + 208) = a5;
  *(v6 + 16) = a6;
  *(v6 + 24) = 1;
  *&v12 = a3;
  *&v13 = a4;
  v14 = CGRectGetWidth(*&a2) * a6;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v24 = CGRectGetHeight(v26) * a6;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MinY = CGRectGetMinY(v28);
  v16 = fabs(a6 + -0.5);
  if (v16 >= 0.01)
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v23 = MinY;
    v29.size.width = a4;
    v29.size.height = a5;
    v22 = CGRectGetMaxX(v29) - v14 + 0.0;
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    v19 = CGRectGetMaxY(v30) - v24 + 0.0;
    v17 = a6 > 0.5;
    v20 = v24;
    v18 = v22;
    MinY = v23;
  }

  else
  {
    v17 = 0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = v24;
  }

  *(v6 + 32) = v14 + MinX + 0.0;
  *(v6 + 40) = v20 + MinY + 0.0;
  *(v6 + 48) = v18;
  *(v6 + 56) = v19;
  *(v6 + 64) = v16 < 0.01;
  *(v6 + 65) = v17;
  *(v6 + 176) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 1;
  return v6;
}

uint64_t ImpressionsTracking.ImpressionableItem.metrics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_1AB077170(v8, &v7);
}

uint64_t ImpressionsTracking.ImpressionableItem.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 161);
  return result;
}

uint64_t ImpressionsTracking.ImpressionableItem.state.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 161) = v2;
  return sub_1AB079D98();
}

uint64_t (*ImpressionsTracking.ImpressionableItem.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AB3CF0D0;
}

uint64_t sub_1AB3CF0D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1AB079D98();
  }

  return result;
}

uint64_t ImpressionsTracking.ImpressionableItem.childImpressionsCalculator.setter(uint64_t a1)
{
  sub_1AB07AD28(a1);
}

void ImpressionsTracking.ImpressionableItem.isContainer.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
  sub_1AB07AF14();
}

void (*ImpressionsTracking.ImpressionableItem.childImpressionsCalculator.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 168);

  return sub_1AB3CF24C;
}

void sub_1AB3CF24C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1AB07AD28(v4);
  }

  else
  {
    sub_1AB07AD28(v3);
  }

  free(v2);
}

uint64_t ImpressionsTracking.ImpressionableItem.childCalculator.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  if (v1)
  {
    type metadata accessor for Unstable.ImpressionsCalculator();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1AB3CF330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 168);
  if (v4)
  {
    type metadata accessor for Unstable.ImpressionsCalculator();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_1AB3CF3A4(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  sub_1AB07AD28(v1);
}

uint64_t ImpressionsTracking.ImpressionableItem.childCalculator.setter(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  sub_1AB07AD28(v1);
}

void (*ImpressionsTracking.ImpressionableItem.childCalculator.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 168);
  if (v5)
  {
    type metadata accessor for Unstable.ImpressionsCalculator();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 24) = v6;

  return sub_1AB3CF51C;
}

void sub_1AB3CF51C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0;
    }

    sub_1AB07AD28(v4);
  }

  else
  {
    if (v3)
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = 0;
    }

    sub_1AB07AD28(v5);
  }

  free(v2);
}

uint64_t (*ImpressionsTracking.ImpressionableItem.isContainer.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AB3CF664;
}

void sub_1AB3CF668(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1AB07AF14();
  }
}

__n128 sub_1AB3CF6D4(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *a1;
  *(v3 + 200) = a1[1];
  *(v3 + 184) = v4;
  sub_1AB07AF14();
  return result;
}

void ImpressionsTracking.ImpressionableItem.itemFrame.setter(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = a3;
  v4[26] = a4;
  sub_1AB07AF14();
}

uint64_t (*ImpressionsTracking.ImpressionableItem.itemFrame.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AB3CFC00;
}

uint64_t ImpressionsTracking.ImpressionableItem.deinit()
{

  return v0;
}

uint64_t ImpressionsTracking.ImpressionableItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB3CF8D4(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, double a9@<D4>)
{
  v33 = CGRectGetWidth(*&a5) * a9;
  v34.origin.x = a5;
  v34.origin.y = a6;
  v34.size.width = a7;
  v34.size.height = a8;
  v18 = CGRectGetHeight(v34) * a9;
  v19 = a1;
  v20 = a2;
  v21 = 0.0;
  if (a3)
  {
    v20 = 0.0;
  }

  v29 = v20;
  if (a3)
  {
    v19 = 0.0;
  }

  v31 = v18;
  v32 = v19;
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  MinX = CGRectGetMinX(v35);
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MinY = CGRectGetMinY(v36);
  v23 = fabs(a9 + -0.5);
  if (v23 >= 0.01)
  {
    v37.origin.x = a5;
    v37.origin.y = a6;
    v37.size.width = a7;
    v28 = MinY;
    v37.size.height = a8;
    v21 = v32 + CGRectGetMaxX(v37) - v33;
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    v25 = v29 + CGRectGetMaxY(v38) - v31;
    v24 = a9 > 0.5;
    v26 = v31;
    v27 = v29;
    MinY = v28;
  }

  else
  {
    v24 = 0;
    v25 = 0.0;
    v26 = v31;
    v27 = v29;
  }

  *a4 = v32 + v33 + MinX;
  *(a4 + 8) = v27 + v26 + MinY;
  *(a4 + 16) = v21;
  *(a4 + 24) = v25;
  *(a4 + 32) = v23 < 0.01;
  *(a4 + 33) = v24;
}

unint64_t sub_1AB3CFA80()
{
  result = qword_1EB43C408;
  if (!qword_1EB43C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C408);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AB3CFB50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AB3CFBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for FileArtifact()
{
  result = qword_1EB4358B0;
  if (!qword_1EB4358B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Bag.jsExport.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for JSBagObject();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v5, sel_init);
}

id Bag.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for JSBagObject();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  swift_unknownObjectRetain();
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = v4;
  a1[4] = &off_1F2015730;
  *a1 = result;
  return result;
}

id sub_1AB3CFD5C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for JSBagObject();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  swift_unknownObjectRetain();
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = v4;
  a1[4] = &off_1F2015730;
  *a1 = result;
  return result;
}

id sub_1AB3CFDE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (result)
  {
    v7 = result;
    v8 = [v5 doubleForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1AB07DCEC;
    v9[4] = 0;
    swift_unknownObjectRelease();
    result = sub_1AB163D2C(v9);
    if (v10)
    {
      result = [objc_opt_self() valueWithUndefinedInContext_];
      if (result)
      {
LABEL_6:
        v11 = result;

        return v11;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithDouble:a1 inContext:*&result];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AB3CFFB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (result)
  {
    v7 = result;
    v8 = [v5 integerForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1AB0D08A8;
    v9[4] = 0;
    swift_unknownObjectRelease();
    result = sub_1AB163D2C(v9);
    if (v10)
    {
      result = [objc_opt_self() valueWithUndefinedInContext_];
      if (result)
      {
LABEL_6:
        v11 = result;

        return v11;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithDouble:a1 inContext:result];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AB3D0188(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = [v5 arrayForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_1AB3E0724;
  v9[4] = 0;
  swift_unknownObjectRelease();
  if (sub_1AB0A332C(v9))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
    v10 = sub_1AB461F94();
    v11 = [objc_opt_self() valueWithObject:v10 inContext:a1];
    result = swift_unknownObjectRelease();
    if (v11)
    {

      return v11;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1AB3D0414()
{
  v35 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_1AB45F654();
  v32[0] = 0;
  v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v32];

  v4 = v32[0];
  if (v3 && (v5 = v32[0], v6 = [v0 defaultManager], v7 = sub_1AB45F654(), v32[0] = 0, v8 = objc_msgSend(v6, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v7, 1, 0, v32), v6, v7, v4 = v32[0], v8))
  {
    v9 = v32[0];
  }

  else
  {
    v10 = v4;
    v11 = sub_1AB45F594();

    swift_willThrow();
    if (qword_1EB432418 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v12 = v33;
    v13 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D4720;
    v26 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001AB50D650;
    v15._countAndFlagsBits = 0xD000000000000030;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    swift_getErrorValue();
    v31[3] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_0);
    sub_1AB01522C(v31, v27);
    v28 = 0u;
    v29 = 0u;
    sub_1AB0169C4(v27, &v28);
    v30 = 0;
    v17 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v28;
    v22 = v29;
    v20[64] = v30;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    sub_1AB014AC0(v31, &unk_1EB437E60);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v14 + 32) = v17;
    Logger.error(_:)(v14, v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_1AB3D1C50();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContainerLocationProtocol.prepare()()
{
  v3 = v1;
  v4 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = *(v3 + 16);
  v39 = v2;
  v38 = v4;
  v11(v4, v3);
  v12 = sub_1AB45F654();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v48[0] = 0;
  LODWORD(v4) = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v48];

  v14 = v48[0];
  if (v4 && (v15 = v48[0], v16 = [v9 defaultManager], (*(v3 + 24))(v38, v3), v17 = sub_1AB45F654(), v13(v8, v5), v48[0] = 0, v18 = objc_msgSend(v16, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v17, 1, 0, v48), v16, v17, v14 = v48[0], (v18 & 1) != 0))
  {
    v19 = v48[0];
  }

  else
  {
    v20 = v14;
    v21 = sub_1AB45F594();

    swift_willThrow();
    if (qword_1EB432418 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v22 = v49;
    v23 = v50;
    __swift_project_boxed_opaque_existential_1Tm(v48, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AB4D4720;
    v42 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
    v25._object = 0x80000001AB50D650;
    v25._countAndFlagsBits = 0xD000000000000030;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    swift_getErrorValue();
    v26 = v40;
    v27 = v41;
    v47[3] = v41;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v26, v27);
    sub_1AB01522C(v47, v43);
    v44 = 0u;
    v45 = 0u;
    sub_1AB0169C4(v43, &v44);
    v46 = 0;
    v29 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
      v42 = v29;
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v44;
    v34 = v45;
    v32[64] = v46;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v42 = v29;
    sub_1AB014AC0(v47, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v24 + 32) = v42;
    Logger.error(_:)(v24, v22, v23);

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    sub_1AB3D1C50();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
    swift_willThrow();
  }
}

unint64_t ContainerLocation.ContainerError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1AB4615D4();

    v7 = 0xD000000000000022;
    v3 = v2;
    v4 = v1;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1AB4615D4();

    v7 = 0xD00000000000001CLL;
    MEMORY[0x1AC59BA20](v2, v1);
    v3 = 41;
    v4 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1AC59BA20](v3, v4);
    return v7;
  }

  if (v2 <= 1)
  {
    if (v2 | v1)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v6 = 0xD000000000000023;
    if (!(v2 ^ 3 | v1))
    {
      v6 = 0xD000000000000025;
    }

    if (v2 ^ 2 | v1)
    {
      return v6;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }
}

uint64_t ContainerLocation.ContainerError.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1AB4F4478[*v0];
}

unint64_t ContainerLocation.ContainerError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v1;
  v2 = ContainerLocation.ContainerError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  v4 = 0x206E776F6E6B6E55;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xED0000726F727265;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(inited + 32, &qword_1EB439AA0);
  return v6;
}

uint64_t sub_1AB3D0FD0()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1AB4F4478[*v0];
}

uint64_t sub_1AB3D1008(uint64_t a1)
{
  v2 = sub_1AB3D250C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB3D1044(uint64_t a1)
{
  v2 = sub_1AB3D250C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t ContainerLocation.ContainerType.description.getter()
{
  if (!*(v0 + 16))
  {
    v1 = 0x286E6F6D656164;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 0x2861746144707061;
LABEL_5:
    v3 = v1;
    MEMORY[0x1AC59BA20](*v0, *(v0 + 8));
    MEMORY[0x1AC59BA20](41, 0xE100000000000000);
    return v3;
  }

  return 0x774F6E6F6D656164;
}

uint64_t sub_1AB3D114C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1AB45F764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ContainerLocation.__allocating_init(type:consumeSandboxToken:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  ContainerLocation.init(type:consumeSandboxToken:)(a1, a2);
  return v4;
}

char *ContainerLocation.init(type:consumeSandboxToken:)(uint64_t a1, char a2)
{
  v4 = v2;
  v57 = *v2;
  v58 = v3;
  v7 = sub_1AB45F604();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_1AB45F764();
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v41 - v18;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v22 = v58;
  sub_1AB3D1FEC(&v59, a2);
  v58 = v22;
  if (v22)
  {
    sub_1AB3D22B0(v19, v20, v21);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = v23;
    sub_1AB3D22B0(v19, v20, v21);
    v24 = v62;
    (*(v62 + 56))(v12, 1, 1, v13);
    sub_1AB460614();

    v25 = v54;
    sub_1AB45F6B4();
    sub_1AB014AC0(v12, &unk_1EB4395B0);

    v26 = OBJC_IVAR____TtC9JetEngine17ContainerLocation_containerDirectoryURL;
    v45 = OBJC_IVAR____TtC9JetEngine17ContainerLocation_containerDirectoryURL;
    v27 = *(v24 + 32);
    v51 = v24 + 32;
    v57 = v27;
    v27(&v4[OBJC_IVAR____TtC9JetEngine17ContainerLocation_containerDirectoryURL], v25, v13);
    v28 = v24;
    v29 = *(v24 + 16);
    v43 = v24 + 16;
    v44 = v29;
    v30 = &v4[v26];
    v31 = v52;
    v29(v52, v30, v13);
    v59 = 0x7972617262694CLL;
    v60 = 0xE700000000000000;
    v50 = *MEMORY[0x1E6968F70];
    v33 = v55;
    v32 = v56;
    v34 = *(v55 + 104);
    v47 = v55 + 104;
    v49 = v34;
    v34(v9);
    v48 = sub_1AB0273A8();
    v35 = v53;
    sub_1AB45F754();
    v55 = *(v33 + 8);
    (v55)(v9, v32);
    v36 = v28;
    v37 = v13;
    v38 = v9;
    v39 = *(v36 + 8);
    v62 = v36 + 8;
    v39(v31, v37);
    v42 = v39;
    v59 = 0x736568636143;
    v60 = 0xE600000000000000;
    v49(v38, v50, v32);
    sub_1AB45F754();
    (v55)(v38, v32);
    v39(v35, v37);
    v57(&v4[OBJC_IVAR____TtC9JetEngine17ContainerLocation_cacheDirectoryUrl], v25, v37);
    v44(v35, &v4[v45], v37);
    v59 = 7368052;
    v60 = 0xE300000000000000;
    v49(v38, v50, v32);
    sub_1AB45F754();
    (v55)(v38, v32);
    v42(v35, v37);
    v57(&v4[OBJC_IVAR____TtC9JetEngine17ContainerLocation_tmpDirectoryUrl], v25, v37);
    *&v4[OBJC_IVAR____TtC9JetEngine17ContainerLocation_sandboxTokenHandle] = v46;
  }

  return v4;
}

uint64_t ContainerLocation.deinit()
{
  ContainerLocation.release()();
  v1 = OBJC_IVAR____TtC9JetEngine17ContainerLocation_containerDirectoryURL;
  v2 = sub_1AB45F764();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9JetEngine17ContainerLocation_cacheDirectoryUrl, v2);
  v3(v0 + OBJC_IVAR____TtC9JetEngine17ContainerLocation_tmpDirectoryUrl, v2);
  return v0;
}

Swift::Void __swiftcall ContainerLocation.release()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine17ContainerLocation_sandboxTokenHandle);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (qword_1EB433A50 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v2 = v20;
    v3 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    v18 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v5._object = 0x80000001AB50D7B0;
    v5._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v17[3] = MEMORY[0x1E69E7360];
    v17[0] = v1;
    sub_1AB01522C(v17, v13);
    v14 = 0u;
    v15 = 0u;
    sub_1AB0169C4(v13, &v14);
    v16 = 0;
    v6 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[40 * v8];
    v10 = v14;
    v11 = v15;
    v9[64] = v16;
    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    v18 = v6;
    sub_1AB014AC0(v17, &unk_1EB437E60);
    v12._countAndFlagsBits = 0x657361656C657220;
    v12._object = 0xE900000000000064;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v4 + 32) = v18;
    Logger.info(_:)(v4, v2, v3);

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    sandbox_extension_release();
  }
}

uint64_t ContainerLocation.__deallocating_deinit()
{
  ContainerLocation.release()();
  v1 = OBJC_IVAR____TtC9JetEngine17ContainerLocation_containerDirectoryURL;
  v2 = sub_1AB45F764();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9JetEngine17ContainerLocation_cacheDirectoryUrl, v2);
  v3(v0 + OBJC_IVAR____TtC9JetEngine17ContainerLocation_tmpDirectoryUrl, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB3D1BB4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1AB45F764();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

unint64_t sub_1AB3D1C50()
{
  result = qword_1EB43C418;
  if (!qword_1EB43C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C418);
  }

  return result;
}

void *sub_1AB3D1CA4()
{
  v0 = container_copy_sandbox_token();
  if (v0)
  {
    v1 = v0;
    v2 = sandbox_extension_consume();
    if (v2 == -1)
    {
      if (qword_1EB432418 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v9 = v18;
      v3 = v19;
      __swift_project_boxed_opaque_existential_1Tm(v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AB4D4720;
      v16 = MEMORY[0x1E69E6158];
      v14 = 0xD000000000000025;
      v15 = 0x80000001AB50D8A0;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      sub_1AB0169C4(&v14, v11 + 32);
      *(v11 + 64) = 0;
      *(v10 + 32) = v11;
      Logger.error(_:)(v10, v9, v3);

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      sub_1AB3D1C50();
      swift_allocError();
      *v12 = xmmword_1AB4DCB20;
      *(v12 + 16) = 2;
      swift_willThrow();
      MEMORY[0x1AC59F020](v1, -1, -1);
    }

    else
    {
      v3 = v2;
      MEMORY[0x1AC59F020](v1, -1, -1);
    }
  }

  else
  {
    if (qword_1EB432418 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v4 = v18;
    v5 = v19;
    v3 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v16 = MEMORY[0x1E69E6158];
    v14 = 0xD00000000000001BLL;
    v15 = 0x80000001AB50D880;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_1AB0169C4(&v14, v7 + 32);
    *(v7 + 64) = 0;
    *(v6 + 32) = v7;
    Logger.error(_:)(v6, v4, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    sub_1AB3D1C50();
    swift_allocError();
    *v8 = xmmword_1AB4D6DD0;
    *(v8 + 16) = 2;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1AB3D1FEC(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (container_query_create())
  {
    sub_1AB460704();
    sub_1AB460614();

    container_query_set_persona_unique_string();

    container_query_set_class();
    container_query_operation_set_flags();
    if (v5 <= 1)
    {
      v6 = sub_1AB460614();
      xpc_string_create((v6 + 32));

      container_query_set_identifiers();
      swift_unknownObjectRelease();
    }

    if (container_query_get_single_result())
    {
      path = container_get_path();
      if (path)
      {
        v4 = path;
        if (strlen(path) >= 1)
        {
          if ((a2 & 1) == 0 || (sub_1AB3D1CA4(), !v2))
          {
            v4 = sub_1AB460704();
            container_query_free();
            return v4;
          }

          goto LABEL_24;
        }

        sub_1AB3D1C50();
        swift_allocError();
        *v18 = xmmword_1AB4D6DE0;
        v19 = 2;
      }

      else
      {
        if (container_query_get_last_error() && (v13 = container_error_copy_unlocalized_description()) != 0)
        {
          v14 = v13;
          v15 = sub_1AB460704();
          v4 = v16;
          MEMORY[0x1AC59F020](v14, -1, -1);
        }

        else
        {
          v15 = 0;
          v4 = 0xE000000000000000;
        }

        sub_1AB3D1C50();
        swift_allocError();
        *v18 = v15;
        *(v18 + 8) = v4;
        v19 = 1;
      }

      *(v18 + 16) = v19;
    }

    else
    {
      if (container_query_get_last_error() && (v9 = container_error_copy_unlocalized_description()) != 0)
      {
        v10 = v9;
        v11 = sub_1AB460704();
        v4 = v12;
        MEMORY[0x1AC59F020](v10, -1, -1);
      }

      else
      {
        v11 = 0;
        v4 = 0xE000000000000000;
      }

      sub_1AB3D1C50();
      swift_allocError();
      *v17 = v11;
      *(v17 + 8) = v4;
      *(v17 + 16) = 0;
    }

    swift_willThrow();
LABEL_24:
    container_query_free();
    return v4;
  }

  sub_1AB3D1C50();
  swift_allocError();
  *v8 = xmmword_1AB4CE300;
  *(v8 + 16) = 2;
  swift_willThrow();
  return v4;
}

uint64_t sub_1AB3D22B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ContainerLocation()
{
  result = qword_1EB43C428;
  if (!qword_1EB43C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB3D2380()
{
  result = sub_1AB45F764();
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

uint64_t sub_1AB3D2470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1AB3D24B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_1AB3D250C()
{
  result = qword_1EB43C438;
  if (!qword_1EB43C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C438);
  }

  return result;
}

JetEngine::JSArrayBuffer_optional __swiftcall JSArrayBuffer.init(_:)(JSValue a1)
{
  isa = a1.super.isa;
  v3 = v1;
  TypedArrayType = [(objc_class *)a1.super.isa context];
  if (TypedArrayType)
  {
    v6 = TypedArrayType;
    v7 = [TypedArrayType JSGlobalContextRef];

    TypedArrayType = JSValueGetTypedArrayType(v7, [(objc_class *)isa JSValueRef], 0);
    if (TypedArrayType != 9)
    {

      isa = 0;
    }

    *v3 = isa;
  }

  else
  {
    __break(1u);
  }

  result.value.value.super.isa = TypedArrayType;
  result.is_nil = v5;
  return result;
}

void JSArrayBuffer.init(bytesNoCopy:count:deallocator:in:)(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for JSBytesDeallocatorHolder();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v25[0] = 0;

  ArrayBufferWithBytesNoCopy = JSObjectMakeArrayBufferWithBytesNoCopy([a5 JSGlobalContextRef], a1, a2, sub_1AB30B9C8, v12, v25);
  if (ArrayBufferWithBytesNoCopy)
  {
    v14 = [objc_opt_self() valueWithJSValueRef:ArrayBufferWithBytesNoCopy inContext:a5];
    if (v14)
    {
      v15 = v14;

      *a6 = v15;
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16 = v25[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v18 = v17;
  v19 = [objc_opt_self() valueWithJSValueRef:v16 inContext:a5];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [a5 exceptionHandler];
  if (v21)
  {
    v22 = v21[2];
    v23 = v21;
    v24 = v20;
    v22(v23, a5, v24);
    _Block_release(v23);
  }

  JSError.init(_:)(v20, v18);
  swift_willThrow();
}

void JSArrayBuffer.init(data:in:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  exception[1] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a2);
LABEL_12:
      v10 = swift_slowAlloc();
      sub_1AB45F8B4();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (__OFSUB__(*(a1 + 24), *(a1 + 16)))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = swift_slowAlloc();
  sub_1AB45F8B4();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v9 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_9:
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v9 = HIDWORD(a1) - a1;
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
  }

LABEL_13:
  type metadata accessor for JSBytesDeallocatorHolder();
  v13 = swift_allocObject();
  v13[2] = sub_1AB3D2AD8;
  v13[3] = 0;
  exception[0] = 0;
  ArrayBufferWithBytesNoCopy = JSObjectMakeArrayBufferWithBytesNoCopy([a3 JSGlobalContextRef], v10, v9, sub_1AB30B9C8, v13, exception);
  if (ArrayBufferWithBytesNoCopy)
  {
    v15 = [objc_opt_self() valueWithJSValueRef:ArrayBufferWithBytesNoCopy inContext:a3];
    if (v15)
    {
      v16 = v15;
      sub_1AB017254(a1, a2);

      *a4 = v16;
      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  v17 = exception[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v19 = v18;
  v20 = [objc_opt_self() valueWithJSValueRef:v17 inContext:a3];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [a3 exceptionHandler];
  if (v22)
  {
    v23 = v19;
    v24 = v22[2];
    v25 = v22;
    v26 = v21;
    v24(v25, a3, v26);
    v19 = v23;
    _Block_release(v25);
  }

  JSError.init(_:)(v21, v19);
  swift_willThrow();
  sub_1AB017254(a1, a2);
}

uint64_t sub_1AB3D2AD8(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1AC59F020);
  }

  return result;
}

id JSArrayBuffer.data.getter()
{
  v1 = *v0;
  result = [*v0 context];
  if (!result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result JSGlobalContextRef];

  result = JSObjectGetArrayBufferBytesPtr(v4, [v1 JSValueRef], 0);
  if (result)
  {
    v5 = result;
    result = [v1 context];
    if (result)
    {
      v6 = result;
      v7 = [result JSGlobalContextRef];

      ArrayBufferByteLength = JSObjectGetArrayBufferByteLength(v7, [v1 JSValueRef], 0);
      return sub_1AB05AF50(v5, ArrayBufferByteLength);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t JSArrayBuffer.description.getter()
{
  v1 = [*v0 description];
  v2 = sub_1AB460544();

  return v2;
}

uint64_t sub_1AB3D2CC4()
{
  v1 = [*v0 description];
  v2 = sub_1AB460544();

  return v2;
}

id sub_1AB3D2D5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrappedMetricsPipeline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB3D2DA0(void *a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = 0x80000001AB50D920;
    sub_1AB0C3EF0();
    swift_allocError();
    *v11 = 0xD000000000000023;
    *(v11 + 8) = 0x80000001AB50D920;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    *(v11 + 32) = 0;
    *(v11 + 40) = 1;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0;
    swift_willThrow();
    return v8;
  }

  v10 = a3;
  result = sub_1AB4618F4();
  a3 = v10;
  if (result < 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1AC59C990](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a3 + 32);
  }

  v6 = v5;
  result = [a1 globalObject];
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1AB460514();
    [v7 setValue:v8 forProperty:v9];

    return v8;
  }

LABEL_13:
  __break(1u);
  return result;
}

double sub_1AB3D2F38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v14, &qword_1EB436BA0);
  v6 = v16;
  if (v16)
  {
    v7 = *(&v16 + 1);
    __swift_project_boxed_opaque_existential_1Tm(&v14, v16);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v13);
      v12 = a2;

      MetricsData.init(deserializing:using:)(v13, &v12, &v14);
      sub_1AB066D84(a1);

      v10 = v15;
      v11 = v17;
      *a3 = v14;
      *(a3 + 16) = v10;
      result = *&v16;
      *(a3 + 24) = v16;
      *(a3 + 40) = v11;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1AB3D31A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB014A58(a1, v27, &qword_1EB436BA0);
  v10 = v28;
  if (!v28)
  {

    sub_1AB014AC0(v27, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v11 = v29;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  v12 = (*(v11 + 128))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (v12)
  {

LABEL_5:
    result = sub_1AB066D84(a1);
    goto LABEL_6;
  }

  sub_1AB0B9254(a1, v27);
  sub_1AB014A58(v27, v24, &qword_1EB436BA0);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    v16 = (*(v15 + 24))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    if (v18)
    {

      sub_1AB066D84(a1);
      result = sub_1AB066D84(v27);
      *a5 = v16;
      a5[1] = v18;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v24, &qword_1EB436BA0);
  }

  sub_1AB163664();
  v19 = swift_allocError();
  v20 = MEMORY[0x1E69E7CC0];
  *v21 = a3;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  swift_willThrow();
  sub_1AB066D84(v27);
  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, v27);

  sub_1AB014A58(v27, v24, &qword_1EB436EC0);
  v22 = v25;
  if (v25)
  {
    v23 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    (*(v23 + 8))(a4, v19, v22, v23);

    sub_1AB066D84(a1);
    sub_1AB014AC0(v27, &qword_1EB436EC0);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {

    sub_1AB066D84(a1);
    sub_1AB014AC0(v27, &qword_1EB436EC0);
    result = sub_1AB014AC0(v24, &qword_1EB436EC0);
  }

LABEL_6:
  *a5 = 0;
  a5[1] = 0;
  return result;
}

double sub_1AB3D3474@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v13, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = *(&v15 + 1);
    __swift_project_boxed_opaque_existential_1Tm(&v13, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v12);
      v11 = a2;

      PageMetrics.Instruction.init(deserializing:using:)(v12, &v11, &v13);
      sub_1AB066D84(a1);

      v10 = v14;
      *a3 = v13;
      *(a3 + 16) = v10;
      *(a3 + 24) = v15;
      result = v16[0];
      *(a3 + 40) = *v16;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v13, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1AB3D36C0(uint64_t a1, uint64_t a2)
{
  sub_1AB014A58(a1, v10, &qword_1EB436BA0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v10);
      v9[0] = a2;

      v8 = sub_1AB1639A4(v10, v9);
      sub_1AB066D84(a1);

      return v8;
    }
  }

  else
  {

    sub_1AB014AC0(v10, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  return 0;
}

double sub_1AB3D38E0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v15, &qword_1EB436BA0);
  v6 = v16;
  if (v16)
  {
    v7 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v15);

      sub_1AB3DA1A8(v15, a2, &v12);
      sub_1AB066D84(a1);

      result = *&v12;
      v10 = v13;
      v11 = v14;
      *a3 = v12;
      *(a3 + 16) = v10;
      *(a3 + 24) = v11;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v15, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1AB3D3B18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1AB014A58(a1, v12, &qword_1EB436BA0);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v12);

      sub_1AB3DA480(v12, a2, v11);
      sub_1AB066D84(a1);

      v10 = v11[1];
      *a3 = v11[0];
      a3[1] = v10;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v12, &qword_1EB436BA0);
  }

  result = sub_1AB066D84(a1);
  *a3 = 0;
  a3[1] = 0;
  return result;
}

double sub_1AB3D3D44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1AB014A58(a1, &v17, &qword_1EB436BA0);
  v6 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v7 = v19;
    __swift_project_boxed_opaque_existential_1Tm(&v17, *(&v18 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v16);
      v15 = a2;

      Models.Menu.init(deserializing:using:)(v16, &v15, &v17);
      sub_1AB066D84(a1);

      v10 = v22;
      v11 = v23;
      a3[4] = v21;
      a3[5] = v10;
      v12 = v24;
      a3[6] = v11;
      a3[7] = v12;
      v13 = v18;
      *a3 = v17;
      a3[1] = v13;
      result = *&v19;
      v14 = v20;
      a3[2] = v19;
      a3[3] = v14;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v17, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

__n128 sub_1AB3D3FA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v17, &qword_1EB436BA0);
  v6 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v7 = v19;
    __swift_project_boxed_opaque_existential_1Tm(&v17, *(&v18 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v16);
      v15 = a2;

      Models.Menu.Child.init(deserializing:using:)(v16, &v15, &v17);
      sub_1AB066D84(a1);

      v10 = v24;
      v11 = v26;
      *(a3 + 128) = v25;
      *(a3 + 144) = v11;
      v12 = v22;
      v13 = v23;
      *(a3 + 64) = v21;
      *(a3 + 80) = v12;
      *(a3 + 160) = v27;
      *(a3 + 96) = v13;
      *(a3 + 112) = v10;
      v14 = v18;
      *a3 = v17;
      *(a3 + 16) = v14;
      result = v20;
      *(a3 + 32) = v19;
      *(a3 + 48) = result;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v17, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result.n128_u64[0] = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 160) = -256;
  return result;
}

__n128 sub_1AB3D4228@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v17, &qword_1EB436BA0);
  v6 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v7 = v19;
    __swift_project_boxed_opaque_existential_1Tm(&v17, *(&v18 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v16);
      v15 = a2;

      Models.Menu.Item.init(deserializing:using:)(v16, &v15, &v17);
      sub_1AB066D84(a1);

      v10 = v24;
      v11 = v26;
      *(a3 + 128) = v25;
      *(a3 + 144) = v11;
      v12 = v22;
      v13 = v23;
      *(a3 + 64) = v21;
      *(a3 + 80) = v12;
      *(a3 + 160) = v27;
      *(a3 + 96) = v13;
      *(a3 + 112) = v10;
      v14 = v18;
      *a3 = v17;
      *(a3 + 16) = v14;
      result = v20;
      *(a3 + 32) = v19;
      *(a3 + 48) = result;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v17, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 160) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1AB3D44E8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AB014A58(a1, v11, &qword_1EB436BA0);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v11);

      Models.HTTPTemplateAction.Parameter.init(deserializing:using:)(v11, v9);
      sub_1AB066D84(a1);

      v8 = v9[1];
      *a2 = v9[0];
      a2[1] = v8;
      a2[2] = v10[0];
      result = *(v10 + 9);
      *(a2 + 41) = *(v10 + 9);
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v11, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *(a2 + 41) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1AB3D4778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void *, void *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = a3(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  sub_1AB014A58(a1, v26, &qword_1EB436BA0);
  v16 = v27;
  if (v27)
  {
    v23 = a5;
    v24 = v6;
    v17 = a6;
    v18 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    v19 = (*(v18 + 128))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    if ((v19 & 1) == 0)
    {
      sub_1AB0B9254(a1, v26);
      v25[0] = a2;

      a4(v26, v25);
      sub_1AB066D84(a1);

      a6 = v17;
      sub_1AB3DEE78(v15, v17, v23);
      v20 = 0;
      return (*(v13 + 56))(a6, v20, 1, v12);
    }

    a6 = v17;
  }

  else
  {

    sub_1AB014AC0(v26, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  v20 = 1;
  return (*(v13 + 56))(a6, v20, 1, v12);
}

__n128 sub_1AB3D4A70@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v16, &qword_1EB436BA0);
  v6 = v17.n128_u64[1];
  if (v17.n128_u64[1])
  {
    v7 = v18;
    __swift_project_boxed_opaque_existential_1Tm(&v16, v17.n128_i64[1]);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v15);
      v14 = a2;

      Models.ToastAction.init(deserializing:using:)(v15, &v14, &v16);
      sub_1AB066D84(a1);

      v10 = v21;
      v11 = v23;
      v12 = v24;
      *(a3 + 96) = v22;
      *(a3 + 112) = v11;
      *(a3 + 128) = v12;
      v13 = v19;
      *(a3 + 32) = v18;
      *(a3 + 48) = v13;
      *(a3 + 64) = v20;
      *(a3 + 80) = v10;
      result = v17;
      *a3 = v16;
      *(a3 + 16) = result;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v16, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result.n128_u64[0] = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1AB3D4CD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v17, &qword_1EB436BA0);
  v6 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v7 = v19;
    __swift_project_boxed_opaque_existential_1Tm(&v17, *(&v18 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v16);
      v15 = a2;

      Models.AlertAction.init(deserializing:using:)(v16, &v15, &v17);
      sub_1AB066D84(a1);

      v10 = v24;
      v11 = v25;
      v12 = v22;
      *(a3 + 96) = v23;
      *(a3 + 112) = v10;
      *(a3 + 128) = v11;
      *(a3 + 144) = v26;
      v13 = v20;
      *(a3 + 32) = v19;
      *(a3 + 48) = v13;
      *(a3 + 64) = v21;
      *(a3 + 80) = v12;
      result = *&v17;
      v14 = v18;
      *a3 = v17;
      *(a3 + 16) = v14;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v17, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 144) = 0;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

__n128 sub_1AB3D4F54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v13, &qword_1EB436BA0);
  v6 = v14.n128_u64[1];
  if (v14.n128_u64[1])
  {
    v7 = v15;
    __swift_project_boxed_opaque_existential_1Tm(&v13, v14.n128_i64[1]);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v12);
      v11 = a2;

      Models.AlertAction.Button.init(deserializing:using:)(v12, &v11, &v13);
      sub_1AB066D84(a1);

      v10 = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = v10;
      *(a3 + 64) = v17;
      result = v14;
      *a3 = v13;
      *(a3 + 16) = result;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v13, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 64) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1AB3D5228@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v14);
      v13 = a2;

      sub_1AB22C864(v14, v11);
      sub_1AB066D84(a1);

      v10 = v11[1];
      *a3 = v11[0];
      *(a3 + 8) = v10;
      result = *&v12;
      *(a3 + 16) = v12;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1AB3D5464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v15, &qword_1EB436BA0);
  v6 = v16;
  if (v16)
  {
    v7 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v15);
      v14 = a2;

      sub_1AB250B54(v15, v12);
      sub_1AB066D84(a1);

      v10 = v12[1];
      v11 = v13;
      *a3 = v12[0];
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v15, &qword_1EB436BA0);
  }

  result = sub_1AB066D84(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1AB3D56A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_1AB014A58(a1, v25, &qword_1EB436BA0);
  v8 = v26;
  if (!v26)
  {

    sub_1AB014AC0(v25, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v9 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  v10 = (*(v9 + 128))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (v10)
  {

LABEL_5:
    result = sub_1AB066D84(a1);
    goto LABEL_6;
  }

  sub_1AB0B9254(a1, v25);
  sub_1AB014A58(v25, v22, &qword_1EB436BA0);
  v12 = v23;
  if (v23)
  {
    v13 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v14 = (*(v13 + 24))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (v16)
    {

      sub_1AB066D84(a1);
      result = sub_1AB066D84(v25);
      *a3 = v14;
      a3[1] = v16;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v22, &qword_1EB436BA0);
  }

  sub_1AB163664();
  v17 = swift_allocError();
  v18 = MEMORY[0x1E69E7CC0];
  *v19 = v4;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  swift_willThrow();
  sub_1AB066D84(v25);
  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, v25);

  sub_1AB014A58(v25, v22, &qword_1EB436EC0);
  v20 = v23;
  if (v23)
  {
    v21 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    (*(v21 + 8))(v4, v17, v20, v21);

    sub_1AB066D84(a1);
    sub_1AB014AC0(v25, &qword_1EB436EC0);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {

    sub_1AB066D84(a1);
    sub_1AB014AC0(v25, &qword_1EB436EC0);
    result = sub_1AB014AC0(v22, &qword_1EB436EC0);
  }

LABEL_6:
  *a3 = 0;
  a3[1] = 0;
  return result;
}

void *sub_1AB3D5970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB014A58(a1, __src, &qword_1EB436BA0);
  v4 = __src[3];
  if (!__src[3])
  {

    sub_1AB014AC0(__src, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v5 = __src[4];
  __swift_project_boxed_opaque_existential_1Tm(__src, __src[3]);
  v6 = (*(v5 + 128))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  if (v6)
  {

LABEL_5:
    sub_1AB066D84(a1);
    sub_1AB384B10(__src);
    return memcpy(a2, __src, 0x158uLL);
  }

  sub_1AB0B9254(a1, v8);
  JSNetworkPerformanceMetrics.init(deserializing:using:)(v8, __src);
  sub_1AB066D84(a1);
  memcpy(a2, __src, 0x158uLL);
  return nullsub_1(a2);
}

uint64_t sub_1AB3D5AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v14);
      v13 = a2;

      JSONBridgingConfiguration.PropertyDescriptor.init(deserializing:using:)(v14, &v11);
      sub_1AB066D84(a1);

      v10 = v12;
      *a3 = v11;
      goto LABEL_6;
    }
  }

  else
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
  }

  result = sub_1AB066D84(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  v10 = -1;
LABEL_6:
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_1AB3D5CE4(uint64_t a1, uint64_t a2)
{
  sub_1AB014A58(a1, v10, &qword_1EB436BA0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v10);
      v9[0] = a2;

      v8 = sub_1AB1639A4(v10, v9);
      sub_1AB066D84(a1);

      return v8;
    }
  }

  else
  {

    sub_1AB014AC0(v10, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  return 0;
}

uint64_t sub_1AB3D5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v14);
      v13 = a2;

      sub_1AB160D80(v14, &v13, v11);
      sub_1AB066D84(a1);

      v10 = v12;
      *a3 = v11[0];
      *(a3 + 8) = v10;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
  }

  result = sub_1AB066D84(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

double sub_1AB3D613C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v12, &qword_1EB436BA0);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v12);
      v11 = a2;

      LintedMetricsEvent.init(deserializing:using:)(v12, &v11, v10);
      sub_1AB066D84(a1);

      result = v10[0];
      *a3 = *v10;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v12, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1AB3D636C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1AB014A58(a1, v9, &qword_1EB436BA0);
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if ((v6 & 1) == 0)
    {
      sub_1AB066D84(a1);

      v8 = 0;
      goto LABEL_7;
    }
  }

  else
  {

    sub_1AB014AC0(v9, &qword_1EB436BA0);
  }

  result = sub_1AB066D84(a1);
  v8 = 1;
LABEL_7:
  *a2 = v8;
  return result;
}

__n128 sub_1AB3D6460@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v13, &qword_1EB436BA0);
  v6 = v14;
  if (v14)
  {
    v7 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v13);
      v11[0] = a2;

      ImpressionMetrics.init(deserializing:using:)(v13, v11, v12);
      sub_1AB066D84(a1);

      v10 = v12[3];
      *(a3 + 32) = v12[2];
      *(a3 + 48) = v10;
      *(a3 + 64) = v12[4];
      result = v12[1];
      *a3 = v12[0];
      *(a3 + 16) = result;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v13, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result.n128_u64[0] = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1AB3D66B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB014A58(a1, &v12, &qword_1EB436BA0);
  v4 = v14;
  if (v14)
  {
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(&v12, v14);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v11);

      ImpressionMetrics.ID.init(deserializing:using:)(v11, &v12);
      sub_1AB066D84(a1);

      v8 = v13;
      v9 = v14;
      v10 = v16;
      *a2 = v12;
      *(a2 + 16) = v8;
      *(a2 + 24) = v9;
      result = *&v15;
      *(a2 + 32) = v15;
      *(a2 + 48) = v10;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v12, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

double sub_1AB3D6908@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v14);
      v13 = a2;

      CompoundAction.init(deserializing:using:)(v14, &v13, &v11);
      sub_1AB066D84(a1);

      v10 = v12;
      result = *&v11;
      *a3 = v11;
      *(a3 + 16) = v10;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1AB3D6B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AB014A58(a1, v15, &qword_1EB436BA0);
  v6 = v16;
  if (!v16)
  {

    sub_1AB014AC0(v15, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  v8 = (*(v7 + 128))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v8)
  {

LABEL_5:
    result = sub_1AB066D84(a1);
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  sub_1AB0B9254(a1, v15);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v14);

  v10 = sub_1AB37F7F4(v14, a2);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v14);
  v12 = a2;
  ScalarDictionary.init(tryDeserializing:using:)(v14, &v12, &v13);
  sub_1AB066D84(a1);
  result = sub_1AB066D84(v15);
  v11 = v13;
  *a3 = v10;
  a3[1] = v11;
  return result;
}

double sub_1AB3D6CA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v14, &qword_1EB436BA0);
  v6 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v13);
      v12 = a2;

      MediaArtwork.init(deserializing:using:)(v13, &v12, &v14);
      sub_1AB066D84(a1);

      v10 = v17;
      *(a3 + 32) = v16;
      *(a3 + 48) = v10;
      *(a3 + 64) = v18;
      *(a3 + 80) = v19;
      result = *&v14;
      v11 = v15;
      *a3 = v14;
      *(a3 + 16) = v11;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1AB3D6F04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v14);
      v13 = a2;

      PageMetrics.init(deserializing:using:)(v14, &v13, v11);
      sub_1AB066D84(a1);

      v10 = v11[1];
      *a3 = v11[0];
      *(a3 + 8) = v10;
      result = *&v12;
      *(a3 + 16) = v12;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1AB3D7140@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v13, &qword_1EB436BA0);
  v6 = v15;
  if (v15)
  {
    v7 = *(&v15 + 1);
    __swift_project_boxed_opaque_existential_1Tm(&v13, v15);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v12);
      v11 = a2;

      PageMetrics.Instruction.init(deserializing:using:)(v12, &v11, &v13);
      sub_1AB066D84(a1);

      v10 = v14;
      *a3 = v13;
      *(a3 + 16) = v10;
      *(a3 + 24) = v15;
      result = v16[0];
      *(a3 + 40) = *v16;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v13, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1AB3D7394@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v14, &qword_1EB436BA0);
  v6 = v16;
  if (v16)
  {
    v7 = *(&v16 + 1);
    __swift_project_boxed_opaque_existential_1Tm(&v14, v16);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v13);
      v12 = a2;

      MetricsData.init(deserializing:using:)(v13, &v12, &v14);
      sub_1AB066D84(a1);

      v10 = v15;
      v11 = v17;
      *a3 = v14;
      *(a3 + 16) = v10;
      result = *&v16;
      *(a3 + 24) = v16;
      *(a3 + 40) = v11;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1AB3D75E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AB014A58(a1, v16, &qword_1EB436BA0);
  v6 = v17;
  if (!v17)
  {

    sub_1AB014AC0(v16, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v7 = v18;
  __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  v8 = (*(v7 + 128))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (v8)
  {

LABEL_5:
    result = sub_1AB066D84(a1);
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  sub_1AB0B9254(a1, v16);

  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v15);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v14);

  v10 = sub_1AB37F7F4(v14, a2);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v14);
  v12 = a2;
  ScalarDictionary.init(tryDeserializing:using:)(v14, &v12, &v13);
  sub_1AB066D84(v16);
  sub_1AB066D84(v15);
  v11 = v13;
  sub_1AB066D84(a1);

  *a3 = v10;
  a3[1] = v11;
  return result;
}

double sub_1AB3D7788@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v14, &qword_1EB436BA0);
  v6 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v13);

      sub_1AB3DA750(v13, a2, &v14);
      sub_1AB066D84(a1);

      result = *&v14;
      v10 = v15;
      v11 = v16;
      v12 = v17;
      *a3 = v14;
      *(a3 + 16) = v10;
      *(a3 + 32) = v11;
      *(a3 + 40) = v12;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v14, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1AB3D79C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB014A58(a1, &v12, &qword_1EB436BA0);
  v4 = v14;
  if (v14)
  {
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(&v12, v14);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v11);

      ImpressionMetrics.ID.init(deserializing:using:)(v11, &v12);
      sub_1AB066D84(a1);

      v8 = v13;
      v9 = v14;
      v10 = v16;
      *a2 = v12;
      *(a2 + 16) = v8;
      *(a2 + 24) = v9;
      result = *&v15;
      *(a2 + 32) = v15;
      *(a2 + 48) = v10;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v12, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1AB3D7C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NetRequest();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(a1, v17, &qword_1EB436BA0);
  v10 = v18;
  if (!v18)
  {
    sub_1AB066D84(a1);

    sub_1AB014AC0(v17, &qword_1EB436BA0);
    goto LABEL_6;
  }

  v11 = v19;
  __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  v12 = (*(v11 + 128))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (v12)
  {
    sub_1AB066D84(a1);

LABEL_6:
    v14 = 1;
    return (*(v7 + 56))(a3, v14, 1, v6);
  }

  sub_1AB0B9254(a1, v17);
  v16[0] = a2;

  NetRequest.init(deserializing:using:)(v17, v16, v9);
  sub_1AB066D84(a1);

  sub_1AB3DEE78(v9, a3, type metadata accessor for NetRequest);
  v14 = 0;
  return (*(v7 + 56))(a3, v14, 1, v6);
}

uint64_t sub_1AB3D7F00(uint64_t a1)
{
  sub_1AB014A58(a1, v7, &qword_1EB436BA0);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    v4 = (*(v3 + 128))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    if ((v4 & 1) == 0)
    {
      sub_1AB0B9254(a1, v7);

      v6 = sub_1AB0BA488(v7);
      sub_1AB066D84(a1);

      return v6;
    }
  }

  else
  {

    sub_1AB014AC0(v7, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  return 0;
}

unint64_t sub_1AB3D8128(uint64_t a1, void *a2)
{
  sub_1AB014A58(a1, v10, &qword_1EB436BA0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v10);
      v9 = a2;

      v8 = sub_1AB3DAA28(v10, &v9);
      sub_1AB066D84(a1);

      return v8;
    }
  }

  else
  {

    sub_1AB014AC0(v10, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  return 0;
}

__n128 sub_1AB3D8354@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, &v15, &qword_1EB436BA0);
  v6 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v7 = v17;
    __swift_project_boxed_opaque_existential_1Tm(&v15, *(&v16 + 1));
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v14);

      JSONObject.subscript.getter(0x6575676573, 0xE500000000000000, v12);
      v11 = a2;
      static AnyActionTypes.makeInstance(byDeserializing:using:)(v12, &v11, v13);
      sub_1AB066D84(v14);
      sub_1AB066D84(v12);

      sub_1AB0149B0(v13, &v15);
      sub_1AB066D84(a1);

      result = v15;
      v10 = v16;
      *a3 = v15;
      *(a3 + 16) = v10;
      *(a3 + 32) = v17;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(&v15, &qword_1EB436BA0);
  }

  sub_1AB066D84(a1);
  *(a3 + 32) = 0;
  result.n128_u64[0] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1AB3D85D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v8 = sub_1AB014DB4(a1, a2);
    if (v9)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v8, &v33);
      sub_1AB014B78(&v33, v37);
      sub_1AB0165C4(v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABE8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        sub_1AB0149B0(&v33, a4);
        return result;
      }

      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      sub_1AB014AC0(&v33, &qword_1EB436EC0);
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v11 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1AB4D47F0;
      v32 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v13._object = 0x80000001AB5023A0;
      v13._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABF0);
      v36[0] = a1;
      v36[1] = a2;
      sub_1AB014A58(v36, v31, &unk_1EB437E60);
      v33 = 0u;
      v34 = 0u;

      sub_1AB0169C4(v31, &v33);
      LOBYTE(v35) = 0;
      v14 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
        v32 = v14;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[40 * v16];
      v18 = v33;
      v19 = v34;
      v17[64] = v35;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
      v32 = v14;
      sub_1AB014AC0(v36, &unk_1EB437E60);
      v20._countAndFlagsBits = 96;
      v20._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      *(v12 + 32) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v22 = MEMORY[0x1E69E6158];
      *(&v34 + 1) = MEMORY[0x1E69E6158];
      *&v33 = 0xD000000000000027;
      *(&v33 + 1) = 0x80000001AB501060;
      *(v21 + 48) = 0u;
      *(v21 + 32) = 0u;
      sub_1AB0169C4(&v33, v21 + 32);
      *(v21 + 64) = 0;
      *(v12 + 40) = v21;
      v23 = sub_1AB461094();
      if (os_log_type_enabled(v11, v23))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v24 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v24[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v24 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v26 = swift_allocObject();
        *(v26 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v33 = v12;
        *(&v33 + 1) = sub_1AB0223E4;
        *&v34 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v27 = sub_1AB460484();
        v29 = v28;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1AB4D4720;
        *(v30 + 56) = v22;
        *(v30 + 64) = sub_1AB016854();
        *(v30 + 32) = v27;
        *(v30 + 40) = v29;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1AB3D8AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v9 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB5023A0;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43C558);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB014A58(v33, v29, &unk_1EB437E60);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 0;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 96;
      v18._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

uint64_t sub_1AB3D8F30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  if (*(a3 + 16) && (v7 = result, result = sub_1AB014DB4(result, a2), (v8 & 1) != 0))
  {
    sub_1AB0165C4(*(a3 + 56) + 32 * result, &v31);
    sub_1AB014B78(&v31, v37);
    sub_1AB0165C4(v37, &v31);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v9 = v34;
    }

    else
    {
      v34 = xmmword_1AB4F4550;
      sub_1AB350AAC(0, 0xF000000000000007);
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v10 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AB4D47F0;
      v36 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001AB5023A0;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C548);
      *&v34 = v7;
      *(&v34 + 1) = a2;
      sub_1AB014A58(&v34, v30, &unk_1EB437E60);
      v31 = 0u;
      v32 = 0u;

      sub_1AB0169C4(v30, &v31);
      v33 = 0;
      v13 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
        v36 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v31;
      v18 = v32;
      v16[64] = v33;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v36 = v13;
      sub_1AB014AC0(&v34, &unk_1EB437E60);
      v19._countAndFlagsBits = 96;
      v19._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v21 = MEMORY[0x1E69E6158];
      *(&v32 + 1) = MEMORY[0x1E69E6158];
      *&v31 = 0xD000000000000027;
      *(&v31 + 1) = 0x80000001AB501060;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1AB0169C4(&v31, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v22 = sub_1AB461094();
      if (os_log_type_enabled(v10, v22))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v23 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v23 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v25 = swift_allocObject();
        *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v31 = v11;
        *(&v31 + 1) = sub_1AB0223E4;
        *&v32 = v25;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v26 = sub_1AB460484();
        v28 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1AB4D4720;
        *(v29 + 56) = v21;
        *(v29 + 64) = sub_1AB016854();
        *(v29 + 32) = v26;
        *(v29 + 40) = v28;
        sub_1AB45FF14();
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v9 = xmmword_1AB4F4550;
    }
  }

  else
  {
    v9 = xmmword_1AB4F4550;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_1AB3D93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABC8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v9 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB5023A0;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABD0);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB014A58(v33, v29, &unk_1EB437E60);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 0;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 96;
      v18._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

uint64_t sub_1AB3D9870@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = result;
    result = sub_1AB014DB4(result, a2);
    if (v8)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * result, &v31);
      sub_1AB014B78(&v31, v38);
      sub_1AB0165C4(v38, &v31);
      if (swift_dynamicCast())
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v9 = v35;
        *a4 = v34;
        *(a4 + 16) = v9;
        return result;
      }

      v34 = 0uLL;
      v35 = 0;

      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v10 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AB4D47F0;
      v37 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001AB5023A0;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C550);
      *&v34 = v7;
      *(&v34 + 1) = a2;
      sub_1AB014A58(&v34, v30, &unk_1EB437E60);
      v31 = 0u;
      v32 = 0u;

      sub_1AB0169C4(v30, &v31);
      v33 = 0;
      v13 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
        v37 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v31;
      v18 = v32;
      v16[64] = v33;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v37 = v13;
      sub_1AB014AC0(&v34, &unk_1EB437E60);
      v19._countAndFlagsBits = 96;
      v19._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v21 = MEMORY[0x1E69E6158];
      *(&v32 + 1) = MEMORY[0x1E69E6158];
      *&v31 = 0xD000000000000027;
      *(&v31 + 1) = 0x80000001AB501060;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1AB0169C4(&v31, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v22 = sub_1AB461094();
      if (os_log_type_enabled(v10, v22))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v23 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v23 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v25 = swift_allocObject();
        *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v31 = v11;
        *(&v31 + 1) = sub_1AB0223E4;
        *&v32 = v25;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v26 = sub_1AB460484();
        v28 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1AB4D4720;
        *(v29 + 56) = v21;
        *(v29 + 64) = sub_1AB016854();
        *(v29 + 32) = v26;
        *(v29 + 40) = v28;
        sub_1AB45FF14();
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t sub_1AB3D9D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABD8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v9 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB5023A0;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABE0);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB014A58(v33, v29, &unk_1EB437E60);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 0;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 96;
      v18._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

void sub_1AB3DA1A8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1AB4616B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v23[0] = a2;
  v14 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v23);
  sub_1AB0B9254(a1, v23);
  v23[5] = v14;
  v23[6] = MEMORY[0x1E69E7CC0];
  v22[3] = &type metadata for _JSONObjectDecoder;
  v22[4] = sub_1AB0BB6F8();
  v22[0] = swift_allocObject();
  sub_1AB0BB74C(v23, v22[0] + 16);
  ShelfID.init(from:)(v22, &v24);
  if (v3)
  {
    sub_1AB0BCB6C(v23);
    v23[0] = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v10, v13, v7);
      sub_1AB163664();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      *(v18 + 32) = swift_allocError();
      (*(v8 + 16))(v19, v10, v7);
      *v17 = &type metadata for ShelfID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1AB066D84(a1);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1AB066D84(a1);
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB0BCB6C(v23);
    v20 = v25;
    v21 = v26;
    *a3 = v24;
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
  }
}

void sub_1AB3DA480(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1AB4616B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v22[0] = a2;
  v14 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v22);
  sub_1AB0B9254(a1, v22);
  v22[5] = v14;
  v22[6] = MEMORY[0x1E69E7CC0];
  v21[3] = &type metadata for _JSONObjectDecoder;
  v21[4] = sub_1AB0BB6F8();
  v21[0] = swift_allocObject();
  sub_1AB0BB74C(v22, v21[0] + 16);
  PageID.init(from:)(v21, v23);
  if (v3)
  {
    sub_1AB0BCB6C(v22);
    v22[0] = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v10, v13, v7);
      sub_1AB163664();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      *(v18 + 32) = swift_allocError();
      (*(v8 + 16))(v19, v10, v7);
      *v17 = &type metadata for PageID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1AB066D84(a1);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1AB066D84(a1);
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB0BCB6C(v22);
    v20 = v23[1];
    *a3 = v23[0];
    a3[1] = v20;
  }
}

void sub_1AB3DA750(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1AB4616B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v24[0] = a2;
  v14 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v24);
  sub_1AB0B9254(a1, v24);
  v24[5] = v14;
  v24[6] = MEMORY[0x1E69E7CC0];
  v23[3] = &type metadata for _JSONObjectDecoder;
  v23[4] = sub_1AB0BB6F8();
  v23[0] = swift_allocObject();
  sub_1AB0BB74C(v24, v23[0] + 16);
  ComponentID.init(from:)(v23, v25);
  if (v3)
  {
    sub_1AB0BCB6C(v24);
    v24[0] = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v10, v13, v7);
      sub_1AB163664();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      *(v18 + 32) = swift_allocError();
      (*(v8 + 16))(v19, v10, v7);
      *v17 = &type metadata for ComponentID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1AB066D84(a1);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1AB066D84(a1);
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB0BCB6C(v24);
    v20 = v25[1];
    v21 = v26;
    v22 = v27;
    *a3 = v25[0];
    *(a3 + 16) = v20;
    *(a3 + 32) = v21;
    *(a3 + 40) = v22;
  }
}

unint64_t sub_1AB3DAA28(uint64_t a1, id *a2)
{
  v5 = sub_1AB4616B4();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v24[0] = *a2;

  v11 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v24);
  sub_1AB0B9254(a1, v24);
  v24[5] = v11;
  v24[6] = MEMORY[0x1E69E7CC0];
  v23[3] = &type metadata for _JSONObjectDecoder;
  v23[4] = sub_1AB0BB6F8();
  v23[0] = swift_allocObject();
  sub_1AB0BB74C(v24, v23[0] + 16);

  v12 = sub_1AB192A44(v23);
  v24[8] = v13;
  if (v2)
  {
    sub_1AB0BCB6C(v24);

    v24[0] = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {

      v15 = v22;
      (*(v22 + 32))(v7, v10, v5);
      sub_1AB163664();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      *(v18 + 32) = swift_allocError();
      (*(v15 + 16))(v19, v7, v5);
      *v17 = &type metadata for Models.AdamID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();

      sub_1AB066D84(a1);
      (*(v15 + 8))(v7, v5);
    }

    else
    {

      sub_1AB066D84(a1);
    }
  }

  else
  {
    sub_1AB0BCB6C(v24);

    sub_1AB066D84(a1);
  }

  return v12;
}

uint64_t NetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v94 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v99 = &v86 - v3;
  v101 = sub_1AB45F764();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C448);
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v6 = &v86 - v5;
  v7 = type metadata accessor for NetRequest();
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[v8[7]];
  *v11 = 5522759;
  *(v11 + 1) = 0xE300000000000000;
  v96 = v8[8];
  *&v10[v96] = 0;
  v12 = v8[9];
  v13 = MEMORY[0x1E69E7CC0];
  *&v106 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  v95 = v12;
  *&v10[v12] = v106;
  v14 = v8[10];
  *&v10[v14] = 0x403E000000000000;
  v15 = &v10[v8[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v103 = v15;
  v15[16] = 0;
  v16 = &v10[v8[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v8[13];
  v105 = sub_1AB0BA124(v13);
  *&v10[v17] = v105;
  __swift_project_boxed_opaque_existential_1Tm(v107, v107[3]);
  sub_1AB3DE63C();
  v18 = v104;
  sub_1AB462224();
  if (v18)
  {
    v19 = v107;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  v92 = v11;
  v20 = v99;
  v104 = v10;
  v93 = v14;
  v90 = v16;
  v91 = v17;
  LOBYTE(v114) = 0;
  sub_1AB461A84();
  v21 = v20;
  sub_1AB45F714();

  v22 = v98;
  v23 = v101;
  if ((*(v98 + 48))(v21, 1, v101) == 1)
  {
    sub_1AB014AC0(v21, &unk_1EB4395B0);
    v24 = sub_1AB4616B4();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v26 = v23;
    v27 = v107;
    __swift_project_boxed_opaque_existential_1Tm(v107, v107[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v100 + 8))(v6, v102);
    v19 = v27;
    goto LABEL_5;
  }

  v29 = v97;
  (*(v22 + 32))(v97, v21, v23);
  (*(v22 + 16))(v104, v29, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
  LOBYTE(v113) = 2;
  v31 = sub_1AB37DF54();
  sub_1AB461AC4();
  v88 = v31;
  v32 = v115;
  v89 = v30;
  if (v115)
  {
    v33 = v92;
    *v92 = v114;
    *(v33 + 1) = v32;
    v99 = v32;
  }

  else
  {
    v99 = 0xE300000000000000;
  }

  v34 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C458);
  LOBYTE(v113) = 4;
  sub_1AB3DE744(&qword_1EB43C460, &qword_1EB43C458, &unk_1AB4F4568, sub_1AB3DE690);
  sub_1AB461AC4();
  v35 = v104;
  if (v115 != 1)
  {
    *&v104[v96] = v114;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C480);
  LOBYTE(v113) = 5;
  sub_1AB3DE744(&qword_1EB43C488, &qword_1EB43C480, &unk_1AB4F4578, sub_1AB3DE7C0);
  sub_1AB461A54();
  v36 = v107;
  v37 = v114;
  if (v114)
  {

    *(v35 + v95) = v37;
    *&v106 = v37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B28);
  LOBYTE(v113) = 3;
  sub_1AB3DE744(&qword_1EB438B30, &qword_1EB438B28, &unk_1AB4DFBD0, sub_1AB22CDD0);
  sub_1AB461AC4();
  if ((v115 & 1) == 0)
  {
    *(v34 + v35) = v114;
  }

  LOBYTE(v113) = 1;
  sub_1AB461A54();
  v38 = v115;
  if (v115 >= 2)
  {
    v39 = v90;
    *v90 = v114;
    *(v39 + 1) = v38;
  }

  __swift_project_boxed_opaque_existential_1Tm(v36, v36[3]);
  v40 = sub_1AB462214();
  JSONContext.init(userInfo:)(v40);
  v95 = v114;
  v96 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v114);
  v87 = v6;
  if (!v96)
  {

    if (qword_1EB435660 != -1)
    {
LABEL_48:
      swift_once();
    }

    v41 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v43 = swift_allocObject();
    v106 = xmmword_1AB4D4720;
    *(v43 + 16) = xmmword_1AB4D4720;
    v44 = MEMORY[0x1E69E6158];
    v117 = MEMORY[0x1E69E6158];
    v114 = 0xD000000000000032;
    v115 = 0x80000001AB50D980;
    *(v43 + 48) = 0u;
    *(v43 + 32) = 0u;
    sub_1AB0169C4(&v114, v43 + 32);
    *(v43 + 64) = 0;
    *(v42 + 32) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v106;
    v117 = v44;
    v114 = 0xD00000000000002ELL;
    v115 = 0x80000001AB50D9C0;
    *(v45 + 48) = 0u;
    *(v45 + 32) = 0u;
    sub_1AB0169C4(&v114, v45 + 32);
    *(v45 + 64) = 0;
    *(v42 + 40) = v45;
    v46 = sub_1AB461094();
    if (os_log_type_enabled(v41, v46))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v47 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v47[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v47 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v49 = swift_allocObject();
      *(v49 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v114 = v42;
      v115 = sub_1AB0223E4;
      v116 = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v50 = sub_1AB460484();
      v52 = v51;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v53 = swift_allocObject();
      *(v53 + 16) = v106;
      *(v53 + 56) = v44;
      *(v53 + 64) = sub_1AB016854();
      *(v53 + 32) = v50;
      *(v53 + 40) = v52;
      sub_1AB45FF14();

      v36 = v107;
    }

    else
    {
    }

    v85 = v100;
    (*(v98 + 8))(v97, v101);
    (*(v85 + 8))(v87, v102);
    v35 = v104;
    goto LABEL_44;
  }

  sub_1AB01494C(v36, &v113);
  JSONObject.init(from:)(&v113, &v114);
  v54 = *(v96 + 16);
  if (!v54)
  {
LABEL_43:

    sub_1AB066D84(&v114);
    (*(v98 + 8))(v97, v101);
    (*(v100 + 8))(v87, v102);
    v36 = v107;
LABEL_44:
    sub_1AB0B72A8(v35, v94);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    return sub_1AB0B730C(v35);
  }

  v36 = 0;
  v55 = (v96 + 40);
  v56 = v105;
  v93 = *(v96 + 16);
  while (1)
  {
    v105 = v56;
    if (v36 >= *(v96 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v61 = *(v55 - 1);
    v60 = *v55;
    v113 = v95;
    sub_1AB0BA900(&v114, &v113, v61, v60, v111);
    sub_1AB0BDBE4();
    v62 = v112;
    v63 = __swift_project_boxed_opaque_existential_1Tm(v111, v112);
    v110 = v62;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v109);
    (*(*(v62 - 8) + 16))(boxed_opaque_existential_0, v63, v62);
    sub_1AB014B78(&v109, v108);
    v65 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v35;
    v68 = isUniquelyReferenced_nonNull_native;
    v69 = v67;
    v70 = *(v67 + v65);
    v118 = v70;
    v72 = sub_1AB02B1D8(&v113);
    v73 = v70[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_46;
    }

    if (v70[3] < v75)
    {
      break;
    }

    if ((v68 & 1) == 0)
    {
      v83 = v72;
      v84 = v71;
      sub_1AB1D76C0();
      v71 = v84;
      v54 = v93;
      v72 = v83;
    }

    v35 = v69;
LABEL_38:
    v56 = v118;
    if (v71)
    {
      v57 = v118;
      v58 = v118[7] + 32 * v72;
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      v59 = v58;
      v56 = v57;
      sub_1AB014B78(v108, v59);
      sub_1AB02B2E4(&v113);
    }

    else
    {
      v79 = v72;
      v118[(v72 >> 6) + 8] |= 1 << v72;
      sub_1AB02B4BC(&v113, v56[6] + 40 * v72);
      sub_1AB014B78(v108, (v56[7] + 32 * v79));
      sub_1AB02B2E4(&v113);
      v80 = v56[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_47;
      }

      v56[2] = v82;
    }

    v36 = (v36 + 1);
    *(v35 + v91) = v56;
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v55 += 2;
    if (v54 == v36)
    {
      goto LABEL_43;
    }
  }

  v76 = v71;
  sub_1AB0C03C8(v75, v68);
  v77 = sub_1AB02B1D8(&v113);
  if ((v76 & 1) == (v78 & 1))
  {
    v72 = v77;
    v71 = v76;
    v35 = v69;
    v54 = v93;
    goto LABEL_38;
  }

  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t NetRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3DE63C();
  sub_1AB462274();
  LOBYTE(v33) = 0;
  sub_1AB45F764();
  sub_1AB3DE83C(&unk_1EB4343E8, MEMORY[0x1E6968FB0]);
  sub_1AB461BF4();
  if (!v2)
  {
    v9 = type metadata accessor for NetRequest();
    LOBYTE(v33) = 2;
    sub_1AB461BB4();
    *&v33 = *(v1 + v9[6]);
    LOBYTE(v36[0]) = 4;
    type metadata accessor for CachePolicy(0);
    sub_1AB3DE83C(qword_1EB43C4A0, type metadata accessor for CachePolicy);
    sub_1AB461BF4();
    *&v33 = *(v1 + v9[7]);
    LOBYTE(v36[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    sub_1AB3DE884();
    sub_1AB461BF4();
    LOBYTE(v33) = 3;
    sub_1AB461BD4();
    v33 = *(v1 + v9[10]);
    LOBYTE(v36[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    sub_1AB0C08E8(&qword_1EB438628);
    sub_1AB461BF4();
    v10 = a1[3];
    *&v31 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v10);
    v11 = sub_1AB462264();
    JSONContext.init(userInfo:)(v11);
    v12 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v33);

    if (v12)
    {
      v30 = *(v12 + 16);
      if (!v30)
      {
LABEL_19:

        return (*(v6 + 8))(v8, v5);
      }

      v13 = 0;
      *&v31 = *(v3 + v9[11]);
      v14 = (v12 + 40);
      v29 = v12;
      while (v13 < *(v12 + 16))
      {
        v9 = *(v14 - 1);
        v37 = *v14;
        sub_1AB0BDBE4();
        if (*(v31 + 16) && (v15 = sub_1AB02B1D8(&v33), (v16 & 1) != 0))
        {
          sub_1AB0165C4(*(v31 + 56) + 32 * v15, v32);
          sub_1AB02B2E4(&v33);
          sub_1AB014B78(v32, v36);
          sub_1AB2EAA60(v36, a1, v9, v37);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        else
        {
          sub_1AB02B2E4(&v33);
        }

        v12 = v29;
        ++v13;
        v14 += 2;
        if (v30 == v13)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v9 = 0xD00000000000001FLL;
      if (qword_1EB435660 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v17 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v18 = swift_allocObject();
    v31 = xmmword_1AB4D4720;
    *(v18 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v19 = swift_allocObject();
    *(v19 + 16) = v31;
    v35 = MEMORY[0x1E69E6158];
    *&v33 = v9 + 57;
    *(&v33 + 1) = 0x80000001AB50D9F0;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1AB0169C4(&v33, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    v20 = sub_1AB461094();
    if (os_log_type_enabled(v17, v20))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v21 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v21 + 5);
      v37 = v17;
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v33 = v18;
      *(&v33 + 1) = sub_1AB0223E4;
      v34 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v27 = swift_allocObject();
      *(v27 + 16) = v31;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1AB016854();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      sub_1AB45FF14();
    }

    goto LABEL_19;
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NetRequest.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v3 + *(type metadata accessor for NetRequest() + 44));

  return sub_1AB3DC710(v7, v6, a2, a3);
}

uint64_t sub_1AB3DC710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-v11 - 8];
  sub_1AB0BDBE4();
  if (*(a1 + 16) && (v13 = sub_1AB02B1D8(v19), (v14 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v13, v20);
    sub_1AB02B2E4(v19);
    sub_1AB0165C4(v20, v19);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v15 = *(AssociatedTypeWitness - 8);
      (*(v15 + 56))(v12, 0, 1, AssociatedTypeWitness);
      return (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
      result = (*(v10 + 8))(v12, v9);
      __break(1u);
    }
  }

  else
  {
    v17 = sub_1AB02B2E4(v19);
    MEMORY[0x1EEE9AC00](v17);
    *(&v18 - 2) = a2;
    *(&v18 - 1) = a3;
    if (qword_1EB435380 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    if (v19[0] == 1)
    {
      sub_1AB41C4F4("JetEngine/NetRequest.swift", 26, 2, 160, sub_1AB3DEEE0);
    }

    return (*(a3 + 16))(a2, a3);
  }

  return result;
}

uint64_t NetRequest.ScopeContainer.subscript.setter(uint64_t a1)
{
  sub_1AB3DEAF4(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

{
  sub_1AB3DEBBC(a1);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*NetRequest.ScopeContainer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  sub_1AB3DC710(*v5, a4, a5, v17);
  return sub_1AB3DCC04;
}

void sub_1AB3DCC04(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 56), v4, v5);
    sub_1AB3DEAF4(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1AB3DEAF4(*(*a1 + 64));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*NetRequest.ScopeContainer.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = MEMORY[0x1E69E77B0];
  v13 = *MEMORY[0x1E69E77B0];
  v10[4] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v11[6] = v15;
  v16 = *(v15 + 64);
  if (v9)
  {
    v11[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
    v13 = *v12;
  }

  else
  {
    v11[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v11[8] = v17;
  sub_1AB3DC710(*v4, *(*a2 + v13 + 8), a4, v17);
  return sub_1AB3DD038;
}

void sub_1AB3DD038(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 56), v4, v5);
    sub_1AB3DEAF4(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {

    sub_1AB3DEAF4(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetRequest();
  v5 = (a2 + v4[5]);
  *v5 = 5522759;
  v5[1] = 0xE300000000000000;
  *(a2 + v4[6]) = 0;
  v6 = v4[7];
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + v6) = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  *(a2 + v4[8]) = 0x403E000000000000;
  v8 = a2 + v4[9];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = (a2 + v4[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v4[11];
  *(a2 + v10) = sub_1AB0BA124(v7);
  v11 = sub_1AB45F764();
  v12 = *(*(v11 - 8) + 32);

  return v12(a2, a1, v11);
}

uint64_t NetRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NetRequest.url.setter(uint64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NetRequest.method.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetRequest() + 20));

  return v1;
}

uint64_t NetRequest.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetRequest() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetRequest.cache.setter(uint64_t a1)
{
  result = type metadata accessor for NetRequest();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t NetRequest.headers.getter()
{
  type metadata accessor for NetRequest();
}

uint64_t NetRequest.headers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetRequest() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NetRequest.timeout.setter(double a1)
{
  result = type metadata accessor for NetRequest();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NetRequest.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetRequest() + 40));

  return v1;
}

uint64_t NetRequest.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetRequest() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1AB3DD6D8()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

  MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

  return 0;
}

uint64_t NetRequest.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for NetRequest() + 44));

  return sub_1AB3DC710(v7, a1, a2, a3);
}

uint64_t NetRequest.subscript.setter(uint64_t a1)
{
  sub_1AB3DEBD0(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

{
  sub_1AB3DECA4(a1);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[7] = v15;
  v17 = type metadata accessor for NetRequest();
  sub_1AB3DC710(*(v4 + *(v17 + 44)), a3, a4, v16);
  return sub_1AB3DDA10;
}

void sub_1AB3DDA10(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1AB3DEBD0(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1AB3DEBD0(*(*a1 + 56));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*NetRequest.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v8[3] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[4] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[7] = v13;
  NetRequest.subscript.getter(a2, a3, v13);
  return sub_1AB3DDD68;
}

void sub_1AB3DDD68(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1AB3DEBD0(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {

    sub_1AB3DEBD0(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.subscript.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for NetRequest() + 44));
}

{
  *a1 = *(v1 + *(type metadata accessor for NetRequest() + 44));
}

uint64_t NetRequest.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = (*(a4 + 8))(a3, a4);
  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_25:
  }

  v10 = 0;
  v11 = v7 + 40;
  v12 = &unk_1EB437E60;
  v41 = v7;
  while (v10 < *(v8 + 16))
  {
    sub_1AB0BDBE4();
    sub_1AB02B4BC(v47, v46);
    v44[0] = v47[0];
    v44[1] = v47[1];
    v45 = v48;
    if (!*(v6 + 16))
    {
      goto LABEL_14;
    }

    v13 = sub_1AB02B1D8(v44);
    if ((v14 & 1) == 0)
    {

LABEL_14:
      sub_1AB02B2E4(v44);
      v28 = *(type metadata accessor for NetRequest() + 44);
      v29 = sub_1AB02B1D8(v46);
      if (v30)
      {
        v31 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v5 + v28);
        *&v42[0] = v33;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AB1D76C0();
          v33 = *&v42[0];
        }

        sub_1AB02B2E4(*(v33 + 48) + 40 * v31);
        sub_1AB014B78((*(v33 + 56) + 32 * v31), v43);
        sub_1AB18F78C(v31, v33);
        sub_1AB02B2E4(v46);
        *(v5 + v28) = v33;
      }

      else
      {
        sub_1AB02B2E4(v46);
        memset(v43, 0, sizeof(v43));
      }

      sub_1AB014AC0(v43, v12);
      goto LABEL_5;
    }

    v15 = v9;
    v16 = v12;
    sub_1AB0165C4(*(v6 + 56) + 32 * v13, v43);
    sub_1AB02B2E4(v44);

    v17 = *(type metadata accessor for NetRequest() + 44);
    sub_1AB014B78(v43, v42);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v5 + v17);
    v20 = sub_1AB02B1D8(v46);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_27;
    }

    v26 = v21;
    if (v19[3] < v25)
    {
      sub_1AB0C03C8(v25, v18);
      v20 = sub_1AB02B1D8(v46);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v34 = v19;
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (v18)
    {
      goto LABEL_19;
    }

    v36 = v20;
    sub_1AB1D76C0();
    v20 = v36;
    v34 = v19;
    if ((v26 & 1) == 0)
    {
LABEL_22:
      v34[(v20 >> 6) + 8] |= 1 << v20;
      v37 = v20;
      sub_1AB02B4BC(v46, v34[6] + 40 * v20);
      sub_1AB014B78(v42, (v34[7] + 32 * v37));
      sub_1AB02B2E4(v46);
      v38 = v34[2];
      v24 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v24)
      {
        goto LABEL_28;
      }

      v34[2] = v39;
      goto LABEL_24;
    }

LABEL_20:
    v35 = (v34[7] + 32 * v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_1AB014B78(v42, v35);
    sub_1AB02B2E4(v46);
LABEL_24:
    *(v5 + v17) = v34;
    v12 = v16;
    v9 = v15;
    v8 = v41;
LABEL_5:
    ++v10;
    v11 += 16;
    if (v9 == v10)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

{
  sub_1AB3DECB0(a1, a3, a4);
}

void (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = *(v4 + *(type metadata accessor for NetRequest() + 44));

  return sub_1AB3DE2B0;
}

void sub_1AB3DE2B0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {

    NetRequest.subscript.setter(&v6, v5, v4, v3);
  }

  else
  {
    NetRequest.subscript.setter(&v6, a2, v4, v3);
  }

  free(v2);
}

uint64_t (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a4;
  a1[3] = v4;
  a1[1] = a3;
  *a1 = *(v4 + *(type metadata accessor for NetRequest() + 44));

  return sub_1AB3DE420;
}

uint64_t sub_1AB3DE420(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {

    v7 = v3;
    NetRequest.subscript.setter(&v7, v5, v4, v2);
  }

  else
  {
    v7 = *a1;
    return NetRequest.subscript.setter(&v7, a2, v4, v2);
  }
}

uint64_t sub_1AB3DE4C8()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x74756F656D6974;
  v4 = 0x6568636163;
  if (v1 != 4)
  {
    v4 = 0x73726564616568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2036625250;
  if (v1 != 1)
  {
    v5 = 0x646F6874656DLL;
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

uint64_t sub_1AB3DE56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB3DE900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB3DE594(uint64_t a1)
{
  v2 = sub_1AB3DE63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3DE5D0(uint64_t a1)
{
  v2 = sub_1AB3DE63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB3DE63C()
{
  result = qword_1EB43C450;
  if (!qword_1EB43C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C450);
  }

  return result;
}

unint64_t sub_1AB3DE690()
{
  result = qword_1EB43C468;
  if (!qword_1EB43C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43C470);
    sub_1AB3DE83C(&qword_1EB43C478, type metadata accessor for CachePolicy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C468);
  }

  return result;
}

uint64_t sub_1AB3DE744(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB3DE7C0()
{
  result = qword_1EB43C490;
  if (!qword_1EB43C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C490);
  }

  return result;
}

uint64_t sub_1AB3DE83C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AB3DE884()
{
  result = qword_1EB4323E0;
  if (!qword_1EB4323E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323E0);
  }

  return result;
}

uint64_t sub_1AB3DE900(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6568636163 && a2 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AB3DEAF4(uint64_t a1)
{
  sub_1AB0BDBE4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_1AB1CDED8(v5, v6);
}

uint64_t sub_1AB3DEBD0(uint64_t a1)
{
  sub_1AB0BDBE4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  type metadata accessor for NetRequest();
  return sub_1AB1CDED8(v5, v6);
}

uint64_t sub_1AB3DED0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AB3DED74()
{
  result = qword_1EB43C528;
  if (!qword_1EB43C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C528);
  }

  return result;
}

unint64_t sub_1AB3DEDCC()
{
  result = qword_1EB43C530;
  if (!qword_1EB43C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C530);
  }

  return result;
}

unint64_t sub_1AB3DEE24()
{
  result = qword_1EB43C538;
  if (!qword_1EB43C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C538);
  }

  return result;
}

uint64_t sub_1AB3DEE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _CodeByKind_Many.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_Many.init(from:)(uint64_t a1, uint64_t a2)
{
  sub_1AB01494C(a1, v12);
  type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  v5 = sub_1AB460AA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v12[0] = v5;
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v7 = sub_1AB460A64();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    a2 = sub_1AB258C6C(sub_1AB3ABFEC, KeyPath, v7, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a2;
}

uint64_t _CodeByKind_Many.init(_partiallyFrom:)(uint64_t a1)
{
  sub_1AB01494C(a1, v9);
  type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  v9[0] = Array<A>.init(_partiallyFrom:)(v9);
  KeyPath = swift_getKeyPath();
  v3 = sub_1AB460A64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1AB258C6C(sub_1AB3AB18C, KeyPath, v3, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return v7;
}

uint64_t _CodeByKind_Many.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a2;
  v9[2] = a3;
  v9[3] = a4;
  swift_getAssociatedTypeWitness();
  v4 = sub_1AB460A64();
  v5 = type metadata accessor for CodeByKind();

  WitnessTable = swift_getWitnessTable();
  sub_1AB258C6C(sub_1AB3DF948, v9, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  swift_getWitnessTable();
  sub_1AB460A74();
}

uint64_t _CodeByKind_Many._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a2;
  v12[2] = a3;
  v12[3] = a4;
  swift_getAssociatedTypeWitness();
  v5 = sub_1AB460A64();
  v6 = type metadata accessor for CodeByKind();

  WitnessTable = swift_getWitnessTable();
  v9 = sub_1AB258C6C(sub_1AB3DF5DC, v12, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v10 = swift_getWitnessTable();
  Array<A>._partiallyEncode(to:)(a1, v9, v6, v10);
}

uint64_t sub_1AB3DF4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return CodeByKind.init(wrappedValue:)(v7, a2);
}

uint64_t sub_1AB3DF618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_Many.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1AB3DF64C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _CodeByKind_Many.init(_partiallyFrom:)(a1);
  *a2 = result;
  return result;
}

uint64_t static _CodeByKind_Many<>.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1AB460A94();
}

uint64_t _CodeByKind_Many<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1AB460A84();
}

uint64_t _CodeByKind_Many<>.hashValue.getter()
{
  sub_1AB4620A4();
  swift_getAssociatedTypeWitness();
  sub_1AB460A84();
  return sub_1AB462104();
}

uint64_t sub_1AB3DF854()
{
  sub_1AB4620A4();
  _CodeByKind_Many<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB3DF8F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id static TimeConversion.amsServerTime(from:)()
{
  v0 = objc_opt_self();
  v1 = sub_1AB45F914();
  v2 = [v0 serverTimeFromDate_];

  return v2;
}

id static TimeConversion.amsServerTime(fromTimeInterval:)(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval_];

  return v1;
}

uint64_t Bag.Value.currentOrNil()(uint64_t a1, uint64_t a2)
{
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3DFA48, 0, 0);
}

uint64_t sub_1AB3DFA48()
{
  v1 = *(v0 + 192);
  *(v0 + 208) = (*(**(v0 + 200) + 88))();
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *(v0 + 224) = *(v1 + 16);
  sub_1AB461354();
  v3 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_1AB3DFB5C;
  v5 = *(v0 + 184);

  return Future.result.getter(v5, v3, WitnessTable);
}

uint64_t sub_1AB3DFB5C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1AB3DFCD0;
  }

  else
  {
    v2 = sub_1AB3DFC70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3DFC70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3DFCD0()
{
  v19 = v0;

  swift_getErrorValue();
  if (sub_1AB044DF8(*(v0 + 128)))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    if (qword_1ED4D0488 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001AB4FFA50;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 80) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1AB01522C(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1AB0169C4(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = *(v0 + 232);
    *(v7 + 2) = v9 + 1;
    v11 = &v7[40 * v9];
    v12 = *(v0 + 16);
    v13 = *(v0 + 32);
    v11[64] = *(v0 + 48);
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    sub_1AB014AC0(v0 + 56, &unk_1EB437E60);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    v1 = v10;
  }

  (*(*(*(v0 + 224) - 8) + 56))(*(v0 + 184), 1, 1);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1AB3DFFE8()
{
  v19 = v0;

  swift_getErrorValue();
  if ((sub_1AB044DF8(*(v0 + 232)) & 1) == 0)
  {
    if (qword_1ED4D0488 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v2._object = 0x80000001AB4FFA50;
    v2._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v2);
    swift_getErrorValue();
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    *(v0 + 184) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
    sub_1AB01522C(v0 + 160, v0 + 192);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1AB0169C4(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v6 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[40 * v8];
    v10 = *(v0 + 80);
    v11 = *(v0 + 96);
    v9[64] = *(v0 + 112);
    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    sub_1AB014AC0(v0 + 160, &unk_1EB437E60);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v1 + 32) = v6;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v1, &v18);
  }

  v13 = *(v0 + 304);
  v14 = sub_1AB0BA124(MEMORY[0x1E69E7CC0]);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t Bag.Value.current(or:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[26] = *(a4 + 16);
  v6 = sub_1AB461354();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[29] = v7;
  v5[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AB074B94, 0, 0);
}

uint64_t sub_1AB3E0358()
{
  v19 = v0;
  swift_getErrorValue();
  v1 = sub_1AB044DF8(*(v0 + 128));
  if ((v1 & 1) == 0)
  {
    if (qword_1ED4D0488 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001AB4FFA50;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 80) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1AB01522C(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1AB0169C4(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    v10[64] = *(v0 + 48);
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    sub_1AB014AC0(v0 + 56, &unk_1EB437E60);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);
  }

  v14 = *(v0 + 264);
  (*(v0 + 192))(v1);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1AB3E06A8()
{
}

id sub_1AB3E06D8@<X0>(void *a1@<X0>, char a2@<W1>, double *a3@<X8>)
{
  result = [a1 doubleValue];
  if (a2)
  {
    v6 = v6 / 1000.0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AB3E0724@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *&v17 = 0;
  sub_1AB460944();
  if (qword_1ED4D0488 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED4D3EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v21 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB50DB70;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v20[3] = sub_1AB016760(0, &qword_1ED4D0BE0);
  v20[0] = a1;
  sub_1AB01522C(v20, v16);
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  sub_1AB0169C4(v16, &v17);
  v19 = 1;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1AB014AC0(v20, &unk_1EB437E60);
  v14._countAndFlagsBits = 0x796E415B206F7420;
  v14._object = 0xE90000000000005DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v21;
  *&v17 = v4;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v20);

  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

id sub_1AB3E095C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = sub_1AB016760(0, qword_1ED4D1BA0);
  *&v6 = a1;
  a2[3] = &type metadata for FoundationValue;
  a2[4] = &off_1F1FFB5A8;
  v3 = swift_allocObject();
  *a2 = v3;
  sub_1AB014B78(&v6, (v3 + 16));

  return a1;
}

uint64_t sub_1AB3E09FC()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1AB3E0A50()
{
  result = qword_1EB43C5E0[0];
  if (!qword_1EB43C5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB43C5E0);
  }

  return result;
}

uint64_t sub_1AB3E0AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for JSIntentRequest();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  v10 = type metadata accessor for JSIntentResponse();
  v11 = v10[9];
  v12 = sub_1AB45F244();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a4 + v11, a2, v12);
  sub_1AB08C08C(a3, a4 + v10[10]);
  v14 = MEMORY[0x1E69E7CC0];
  v20[0] = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v15 = sub_1AB07CA28(a3, v20);

  *(a4 + v10[11]) = v15;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB5043D0, v20);
  v16 = sub_1AB01B220(v14);
  v17 = sub_1AB07C9F8(v20, v16);
  sub_1AB3E1470(a3);
  (*(v13 + 8))(a2, v12);
  result = (*(v9 + 8))(a1, v8);
  *(a4 + v10[12]) = v17;
  return result;
}

uint64_t JSIntentResponse.intentRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSIntentRequest();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JSIntentResponse.requestDuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1AB45F244();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1AB3E0DA8()
{
  type metadata accessor for JSIntentRequest();
  if (v0 <= 0x3F)
  {
    sub_1AB45F244();
    if (v1 <= 0x3F)
    {
      sub_1AB0C7EA4(319, qword_1ED4D17D0, &type metadata for JSONObject, type metadata accessor for CoarselyTimed);
      if (v2 <= 0x3F)
      {
        sub_1AB0C7EA4(319, &qword_1EB435638, &type metadata for JSIncident, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1AB0C7EA4(319, &qword_1EB435630, &type metadata for JSNetworkPerformanceMetrics, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1AB3E0EE4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1AB45F244() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 9;
  v14 = v10 | 7;
  v15 = (v10 | 7) + v11;
  v16 = ((v10 + 40) & ~v10) + v11 + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((((v16 + ((v15 + (v13 & ~v10)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else
  {
    v27 = (a1 + v13) & ~v10;
    if (v9 == v12)
    {
      v28 = *(v8 + 48);

      return v28(v27);
    }

    else
    {
      v29 = *((v16 + ((v15 + v27) & ~v14)) & 0xFFFFFFFFFFFFFFF8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }
}

void sub_1AB3E1178(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1AB45F244() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 9;
  v16 = (v12 | 7) + v13;
  v17 = ((v12 + 40) & ~v12) + v13 + 7;
  v18 = ((((v17 + ((v16 + (v15 & ~v12)) & ~(v12 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v21 = 0;
    v22 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v17 + ((v16 + (v15 & ~v12)) & ~(v12 | 7))) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a3 - v14 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v25 = *(v29 + 56);

        v25(a1, a2, v9, v7);
      }

      else
      {
        v26 = (a1 + v15) & ~v12;
        if (v11 == v14)
        {
          v27 = *(v10 + 56);

          v27(v26, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *((v17 + ((v16 + v26) & ~(v12 | 7))) & 0xFFFFFFFFFFFFFFF8) = v28;
        }
      }

      return;
    }
  }

  if (((((v17 + ((v16 + (v15 & ~v12)) & ~(v12 | 7))) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (((((v17 + ((v16 + (v15 & ~v12)) & ~(v12 | 7))) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v24 = ~v14 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

uint64_t sub_1AB3E1470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Decoder.withUserInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  a4[3] = &type metadata for _Wrapped_Decoder;
  a4[4] = sub_1AB3E1B68();
  v9 = swift_allocObject();
  *a4 = v9;

  return sub_1AB3E1594(v11, a1, (v9 + 16));
}

uint64_t sub_1AB3E1594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = sub_1AB462214();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = v6;
  sub_1AB3E1E10(a2, sub_1AB3E1D60, 0, isUniquelyReferenced_nonNull_native, &v41);

  v8 = v41;
  sub_1AB01494C(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000);
  if (swift_dynamicCast())
  {
    v41 = v36;
    v42 = v37;
    v43 = v38;
    v44 = v39;
    *(&v37 + 1) = &type metadata for _JSONObjectDecoder;
    *&v38 = sub_1AB0BB6F8();
    v9 = swift_allocObject();
    *&v36 = v9;
    sub_1AB0B9254(&v41, v9 + 16);
    v10 = v44;
    *(v9 + 56) = v8;
    *(v9 + 64) = v10;

    sub_1AB0BCB6C(&v41);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    sub_1AB014AC0(&v36, &qword_1EB43A7D8);
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4190;
    v35 = sub_1AB0168A8(0, 60, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0xD000000000000028;
    v13._object = 0x80000001AB50DC00;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    *(&v37 + 1) = swift_getMetatypeMetadata();
    *&v36 = DynamicType;
    sub_1AB01522C(&v36, v40);
    v41 = 0u;
    v42 = 0u;
    sub_1AB0169C4(v40, &v41);
    LOBYTE(v43) = 0;
    v15 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v41;
    v20 = v42;
    v18[64] = v43;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    sub_1AB014AC0(&v36, &unk_1EB437E60);
    v21._object = 0x80000001AB50DC30;
    v21._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v12 + 32) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D4720;
    v23 = MEMORY[0x1E69E6158];
    *(&v42 + 1) = MEMORY[0x1E69E6158];
    *&v41 = 0xD000000000000057;
    *(&v41 + 1) = 0x80000001AB50DC50;
    *(v22 + 48) = 0u;
    *(v22 + 32) = 0u;
    sub_1AB0169C4(&v41, v22 + 32);
    *(v22 + 64) = 0;
    *(v12 + 40) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AB4D4720;
    *(&v42 + 1) = v23;
    *&v41 = 0xD000000000000026;
    *(&v41 + 1) = 0x80000001AB50DCB0;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1AB0169C4(&v41, v24 + 32);
    *(v24 + 64) = 0;
    *(v12 + 48) = v24;
    v25 = sub_1AB461094();
    if (os_log_type_enabled(v11, v25))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v26 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v41 = v12;
      *(&v41 + 1) = sub_1AB01A8D8;
      *&v42 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v29 = sub_1AB460484();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1AB4D4720;
      *(v32 + 56) = v23;
      *(v32 + 64) = sub_1AB016854();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1AB45FF14();
    }

    sub_1AB01494C(a1, &v36);
  }

  *(&v38 + 1) = v8;
  v33 = v37;
  *a3 = v36;
  a3[1] = v33;
  a3[2] = v38;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB3E1B68()
{
  result = qword_1EB43C668;
  if (!qword_1EB43C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C668);
  }

  return result;
}

uint64_t sub_1AB3E1CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v5);
  return a3(v5, v6);
}

uint64_t sub_1AB3E1D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438110) + 48);
  v6 = sub_1AB461864();
  (*(*(v6 - 8) + 16))(a2, a1, v6);

  return sub_1AB0165C4(a1 + v4, a2 + v5);
}

uint64_t sub_1AB3E1E10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = sub_1AB461864();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C670);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v41 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v42 = (v10 + 8);
  v43 = v10;

  v41[1] = a3;

  while (1)
  {
    sub_1AB35C628(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438110);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_1AB0309A4();
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_1AB014B78(&v15[v24], v44);
    v27 = *v52;
    v29 = sub_1AB0BB4FC(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1AB1D72A4();
      }
    }

    else
    {
      sub_1AB1D1804(v32, a4 & 1);
      v34 = sub_1AB0BB4FC(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {
      v9 = v26;
      (*v42)(v12, v26);
      v22 = (v36[7] + 32 * v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      sub_1AB014B78(v44, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v43 + 72) * v29), v12, v26);
      sub_1AB014B78(v44, (v36[7] + 32 * v29));
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t NativeIntentDispatcher.Configuration.init(cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB014A58(a1, &v7, &qword_1EB4389F0);
  if (v8)
  {
    sub_1AB014AC0(a1, &qword_1EB4389F0);
    sub_1AB0149B0(&v7, &v9);
  }

  else
  {
    v4 = type metadata accessor for NoOpIntentCache();
    v5 = swift_allocObject();
    v10 = v4;
    v11 = &off_1F1FFFC60;
    *&v9 = v5;
    sub_1AB014AC0(a1, &qword_1EB4389F0);
    if (v8)
    {
      sub_1AB014AC0(&v7, &qword_1EB4389F0);
    }
  }

  return sub_1AB0149B0(&v9, a2);
}

uint64_t NativeIntentDispatcher.init(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = (a2 + 40);
  sub_1AB014AC0(a2 + 40, &qword_1EB439168);
  *v4 = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *a2 = sub_1AB033DC8(MEMORY[0x1E69E7CC0]);
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  *(a2 + 32) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 8));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);

  return sub_1AB3E4790(a1);
}

uint64_t NativeIntentDispatcher.withNext(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB039F94(v2, a2);
  sub_1AB014A58(a1, v6, &qword_1EB439168);
  return sub_1AB017CC4(v6, a2 + 40, &qword_1EB439168);
}

uint64_t NativeIntentDispatcher.registering(contentsOf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB039F94(v2, a2);
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a2;
  sub_1AB03A194(v5, sub_1AB034068, 0, isUniquelyReferenced_nonNull_native, &v8);

  *a2 = v8;
  return result;
}

uint64_t NativeIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3E24C4, 0, 0);
}

uint64_t sub_1AB3E24C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v1[3] = &type metadata for NativeIntentDispatcher;
  v1[4] = &protocol witness table for NativeIntentDispatcher;
  v3 = swift_allocObject();
  *v1 = v3;
  sub_1AB039F94(v2, v3 + 16);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB3E255C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E25E4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = v6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  *(v7 + 57) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB3E2680, 0, 0);
}

uint64_t sub_1AB3E2680()
{
  v1 = *(v0 + 57);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1AB2196F0;
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(v6, v7, v4, v0 + 16, v5, v3);
}

uint64_t NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[51] = a6;
  v7[52] = v6;
  v7[49] = a4;
  v7[50] = a5;
  v7[47] = a2;
  v7[48] = a3;
  v7[46] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[53] = AssociatedTypeWitness;
  v9 = sub_1AB461354();
  v7[54] = v9;
  v7[55] = *(v9 - 8);
  v7[56] = swift_task_alloc();
  v10 = type metadata accessor for IntentOutcome();
  v7[57] = v10;
  v7[58] = *(v10 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = *(AssociatedTypeWitness - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3E28F4, 0, 0);
}

uint64_t sub_1AB3E28F4()
{
  sub_1AB0165C4(*(v0 + 416) + 8, v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748);
  if (!swift_dynamicCast())
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1AB014AC0(v0 + 56, &qword_1EB4389F0);
    sub_1AB428530("JetEngine/NativeIntentDispatcher.swift", 38, 2, 200);
    return sub_1AB461884();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  sub_1AB0149B0((v0 + 56), v0 + 16);
  v7 = *(v6 + 40);
  sub_1AB0699A0(v5, v4, v1);
  v8 = *(v2 + 48);
  *(v0 + 504) = v8;
  *(v0 + 512) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v1, 1, v3) == 1)
  {
    v9 = *(v0 + 392);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_1AB014A58(v9, v0 + 136, &qword_1EB4389F8);
    if (*(v0 + 160))
    {
      sub_1AB0149B0((v0 + 136), v0 + 96);
    }

    else
    {
      sub_1AB45051C(*(v0 + 400), *(v0 + 408), v0 + 96);
      if (*(v0 + 160))
      {
        sub_1AB014AC0(v0 + 136, &qword_1EB4389F8);
      }
    }

    sub_1AB014A58(v0 + 96, v0 + 216, &qword_1EB4389F8);
    if (!*(v0 + 240))
    {
      sub_1AB014AC0(v0 + 216, &qword_1EB4389F8);
LABEL_15:
      sub_1AB014A58(v0 + 96, v0 + 296, &qword_1EB4389F8);
      if (*(v0 + 320))
      {
        v16 = *(v0 + 416);
        v17 = *(v0 + 392);
        v36 = *(v0 + 400);
        v37 = *(v0 + 376);
        sub_1AB0149B0((v0 + 296), v0 + 256);
        v18 = *(v0 + 40);
        v19 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v18);
        v20 = swift_task_alloc();
        *(v0 + 536) = v20;
        *(v20 + 16) = v36;
        *(v20 + 32) = v16;
        *(v20 + 40) = v37;
        *(v20 + 56) = v17;
        v38 = (*(v19 + 16) + **(v19 + 16));
        v21 = swift_task_alloc();
        *(v0 + 544) = v21;
        *v21 = v0;
        v21[1] = sub_1AB3E3408;
        v22 = *(v0 + 424);
        v23 = *(v0 + 368);

        return v38(v23, v0 + 256, &unk_1AB4F4C98, v20, v22, v18, v19);
      }

      else
      {
        sub_1AB014AC0(v0 + 296, &qword_1EB4389F8);
        v29 = swift_task_alloc();
        *(v0 + 560) = v29;
        *v29 = v0;
        v29[1] = sub_1AB3E35F0;
        v30 = *(v0 + 408);
        v31 = *(v0 + 392);
        v32 = *(v0 + 400);
        v33 = *(v0 + 376);
        v34 = *(v0 + 384);
        v35 = *(v0 + 368);

        return sub_1AB3E39EC(v35, v33, v34, v31, v32, v30);
      }
    }

    sub_1AB0149B0((v0 + 216), v0 + 176);
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
      goto LABEL_15;
    }

    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v24);
    v39 = (*(v25 + 8) + **(v25 + 8));
    v26 = swift_task_alloc();
    *(v0 + 520) = v26;
    *v26 = v0;
    v26[1] = sub_1AB3E2F78;
    v27 = *(v0 + 448);
    v28 = *(v0 + 424);

    return v39(v27, v0 + 176, v28, v24, v25);
  }

  else
  {
    v11 = *(v0 + 496);
    v12 = *(v0 + 424);
    v13 = *(v0 + 368);
    v14 = *(*(v0 + 480) + 32);
    v14(v11, *(v0 + 472), v12);
    v14(v13, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1AB3E2F78()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1AB3E37B4;
  }

  else
  {
    v2 = sub_1AB3E308C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3E308C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  if (v1(v2, 1, v3) == 1)
  {
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    sub_1AB014A58(v0 + 96, v0 + 296, &qword_1EB4389F8);
    if (*(v0 + 320))
    {
      v4 = *(v0 + 416);
      v5 = *(v0 + 392);
      v27 = *(v0 + 400);
      v28 = *(v0 + 376);
      sub_1AB0149B0((v0 + 296), v0 + 256);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v6);
      v8 = swift_task_alloc();
      *(v0 + 536) = v8;
      *(v8 + 16) = v27;
      *(v8 + 32) = v4;
      *(v8 + 40) = v28;
      *(v8 + 56) = v5;
      v29 = (*(v7 + 16) + **(v7 + 16));
      v9 = swift_task_alloc();
      *(v0 + 544) = v9;
      *v9 = v0;
      v9[1] = sub_1AB3E3408;
      v10 = *(v0 + 424);
      v11 = *(v0 + 368);

      return v29(v11, v0 + 256, &unk_1AB4F4C98, v8, v10, v6, v7);
    }

    else
    {
      sub_1AB014AC0(v0 + 296, &qword_1EB4389F8);
      v20 = swift_task_alloc();
      *(v0 + 560) = v20;
      *v20 = v0;
      v20[1] = sub_1AB3E35F0;
      v21 = *(v0 + 408);
      v22 = *(v0 + 392);
      v23 = *(v0 + 400);
      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = *(v0 + 368);

      return sub_1AB3E39EC(v26, v24, v25, v22, v23, v21);
    }
  }

  else
  {
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v15 = *(v0 + 448);
    v16 = *(v0 + 424);
    v17 = *(v0 + 368);
    sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
    v18 = *(v14 + 32);
    v18(v13, v15, v16);
    v18(v17, v13, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1AB3E3408()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1AB3E392C;
  }

  else
  {
    v2 = sub_1AB3E3538;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3E3538()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E35F0()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_1AB3E3874;
  }

  else
  {
    v2 = sub_1AB3E3704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3E3704()
{
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E37B4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E3874()
{
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E392C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E39EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v7[10] = *(AssociatedTypeWitness - 8);
  v7[11] = swift_task_alloc();
  v13 = type metadata accessor for IntentOutcome();
  v7[12] = v13;
  v7[13] = *(v13 - 8);
  v14 = swift_task_alloc();
  v7[14] = v14;
  v15 = swift_task_alloc();
  v7[15] = v15;
  *v15 = v7;
  v15[1] = sub_1AB3E3BA0;

  return sub_1AB074B6C(v14, a2, a3, a5, a6);
}

uint64_t sub_1AB3E3BA0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1AB3E3FB0;
  }

  else
  {
    v2 = sub_1AB3E3CB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3E3CB4()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v1, v0[12]);
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1AB3E3E0C;
    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];

    return sub_1AB3E4228(v5, v9, v10, v7, v8, v6);
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1AB3E3E0C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AB3E4020;
  }

  else
  {
    v2 = sub_1AB3E3F20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3E3F20()
{
  (*(v0[10] + 32))(v0[2], v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB3E3FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E4020()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3E4090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1AB027460;

  return sub_1AB3E39EC(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1AB3E4170()
{
  (*(v0[55] + 8))(v0[56], v0[47]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB3E4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3E4254, 0, 0);
}

uint64_t sub_1AB3E4254()
{
  sub_1AB014A58(*(v0 + 144) + 40, v0 + 56, &qword_1EB439168);
  if (*(v0 + 80))
  {
    sub_1AB0149B0((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
    v13 = (*(v2 + 32) + **(v2 + 32));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_1AB3E4434;
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    return v13(v8, v9, v6, v7, v4, v5, v1, v2);
  }

  else
  {
    sub_1AB014AC0(v0 + 56, &qword_1EB439168);
    sub_1AB24F240();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}