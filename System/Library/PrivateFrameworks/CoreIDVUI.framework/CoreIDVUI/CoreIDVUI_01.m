uint64_t sub_2457864CC()
{
  v2 = v0;
  v3 = sub_2459107E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245910814();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590BE04();
  swift_allocObject();
  sub_24590BDF4();
  sub_24590C384();
  sub_24579004C(&qword_27EE28EF8, MEMORY[0x277CFF2E0]);
  v9 = sub_24590BDE4();
  if (!v1)
  {
    v22 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
    v11 = v9;
    v12 = v10;
    v13 = swift_allocObject();
    v13[2] = v2;
    v13[3] = v11;
    v20 = v12;
    v21 = v11;
    v13[4] = v12;
    aBlock[4] = sub_24578FEE4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_147;
    v19 = _Block_copy(aBlock);

    sub_24578FB80(v11, v12);
    sub_245910804();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198]);
    v18 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
    v14 = v24;
    sub_2459113A4();
    v15 = v19;
    MEMORY[0x245D76690](0, v8, v14, v19);
    _Block_release(v15);

    sub_24578FC28(v21, v20);
    (*(v4 + 8))(v14, v3);
    (*(v23 + 8))(v8, v18);
  }
}

uint64_t sub_245786868(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v36 = sub_2459107E4();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_245910814();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - v12;
  v14 = a4[5];
  v45 = a4[4];
  v46 = v14;
  v47 = a4[6];
  v48 = *(a4 + 112);
  v15 = a4[1];
  v41 = *a4;
  v42 = v15;
  v16 = a4[3];
  v43 = a4[2];
  v44 = v16;
  v17 = v30;
  v34 = *(v30 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  sub_245778F2C(v31, &v30 - v12, &qword_27EE28EF0);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v32;
  v22 = v33;
  v20[2] = v17;
  v20[3] = v21;
  v20[4] = v22;
  sub_24578FD78(v13, v20 + v18);
  v23 = v20 + v19;
  v24 = v46;
  *(v23 + 4) = v45;
  *(v23 + 5) = v24;
  *(v23 + 6) = v47;
  v23[112] = v48;
  v25 = v42;
  *v23 = v41;
  *(v23 + 1) = v25;
  v26 = v44;
  *(v23 + 2) = v43;
  *(v23 + 3) = v26;
  v40[4] = sub_24578FDE8;
  v40[5] = v20;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  v40[2] = sub_2458935A8;
  v40[3] = &block_descriptor_141;
  v27 = _Block_copy(v40);

  sub_24578FE88(&v41, v39);
  sub_245910804();
  v39[0] = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
  v28 = v36;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v8, v6, v27);
  _Block_release(v27);
  (*(v38 + 8))(v6, v28);
  (*(v35 + 8))(v8, v37);
}

void sub_245786C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a4;
  v89 = a2;
  v8 = sub_24590C6A4();
  v91 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v76 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v83 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v76 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v79 = &v76 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v77 = &v76 - v22;
  MEMORY[0x28223BE20](v21);
  v87 = (&v76 - v23);
  v24 = sub_24590D1B4();
  v90 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v82 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v80 = &v76 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v78 = &v76 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v76 = &v76 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v76 - v36;
  *(a1 + 40) = v89;
  *(a1 + 48) = a3;

  v38 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
  v39 = sub_24590D9E4();

  if (v39 >> 62)
  {
    v40 = sub_245911424();
    if (v40)
    {
LABEL_3:
      v41 = __OFSUB__(v40, 1);
      v42 = v40 - 1;
      if (v41)
      {
        __break(1u);
      }

      else
      {
        v89 = a1;
        v84 = a5;
        if ((v39 & 0xC000000000000001) == 0)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v42 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v43 = *(v39 + 8 * v42 + 32);
LABEL_8:
            v85 = v43;

            sub_245778F2C(v88, v37, &qword_27EE28EF0);
            v44 = sub_24590EAF4();
            v45 = *(v44 - 8);
            if ((*(v45 + 48))(v37, 1, v44) == 1)
            {
              sub_245778F94(v37, &qword_27EE28EF0);
            }

            else
            {
              sub_24590EAD4();
              (*(v45 + 8))(v37, v44);
            }

            sub_24590CBA4();
            v46 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
            v47 = v89;
            swift_beginAccess();
            v88 = v46;
            v48 = v47 + v46;
            v49 = v87;
            sub_245778F2C(v48, v87, &qword_27EE28ED0);
            v50 = v90;
            v51 = *(v90 + 48);
            if (v51(v49, 1, v24) == 1)
            {
              (*(v50 + 16))(v34, v47 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v24);
              if (v51(v49, 1, v24) != 1)
              {
                sub_245778F94(v49, &qword_27EE28ED0);
              }
            }

            else
            {
              (*(v50 + 32))(v34, v49, v24);
            }

            sub_24590D154();
            v87 = *(v50 + 8);
            (v87)(v34, v24);
            sub_24590C624();
            v86 = sub_24579004C(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
            v52 = sub_245911364();
            v53 = v91 + 8;
            v54 = *(v91 + 8);
            v54(v11, v8);
            v91 = v53;
            v54(v13, v8);
            if ((v52 & 1) != 0 && (*(v84 + 112) & 1) == 0)
            {
              sub_24590CBC4();
            }

            v55 = v89;
            v56 = v77;
            sub_245778F2C(v89 + v88, v77, &qword_27EE28ED0);
            if (v51(v56, 1, v24) == 1)
            {
              v57 = v55 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v58 = v76;
              (*(v90 + 16))(v76, v57, v24);
              if (v51(v56, 1, v24) != 1)
              {
                sub_245778F94(v56, &qword_27EE28ED0);
              }
            }

            else
            {
              v58 = v76;
              (*(v90 + 32))(v76, v56, v24);
            }

            sub_24590D154();
            (v87)(v58, v24);
            sub_24590C634();
            v59 = sub_245911364();
            v54(v11, v8);
            v54(v13, v8);
            if (v59)
            {
              sub_24590CBE4();
            }

            v60 = v89;
            v61 = v79;
            sub_245778F2C(v89 + v88, v79, &qword_27EE28ED0);
            if (v51(v61, 1, v24) == 1)
            {
              v62 = v60 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v63 = v78;
              (*(v90 + 16))(v78, v62, v24);
              if (v51(v61, 1, v24) != 1)
              {
                sub_245778F94(v61, &qword_27EE28ED0);
              }
            }

            else
            {
              v63 = v78;
              (*(v90 + 32))(v78, v61, v24);
            }

            sub_24590D154();
            (v87)(v63, v24);
            sub_24590C644();
            v64 = sub_245911364();
            v54(v11, v8);
            v54(v13, v8);
            if (v64)
            {
              sub_24590CBF4();
            }

            v65 = v89;
            v66 = v81;
            sub_245778F2C(v89 + v88, v81, &qword_27EE28ED0);
            if (v51(v66, 1, v24) == 1)
            {
              v67 = v65 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v68 = v80;
              (*(v90 + 16))(v80, v67, v24);
              if (v51(v66, 1, v24) != 1)
              {
                sub_245778F94(v66, &qword_27EE28ED0);
              }
            }

            else
            {
              v68 = v80;
              (*(v90 + 32))(v80, v66, v24);
            }

            sub_24590D154();
            (v87)(v68, v24);
            sub_24590C664();
            v69 = sub_245911364();
            v54(v11, v8);
            v54(v13, v8);
            if (v69)
            {
              sub_24590CC94();
            }

            v70 = v89;
            v71 = v83;
            sub_245778F2C(v89 + v88, v83, &qword_27EE28ED0);
            if (v51(v71, 1, v24) == 1)
            {
              v72 = v70 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v73 = v82;
              (*(v90 + 16))(v82, v72, v24);
              if (v51(v71, 1, v24) != 1)
              {
                sub_245778F94(v71, &qword_27EE28ED0);
              }
            }

            else
            {
              v73 = v82;
              (*(v90 + 32))(v82, v71, v24);
            }

            sub_24590D154();
            (v87)(v73, v24);
            sub_24590C674();
            v74 = sub_245911364();
            v54(v11, v8);
            v54(v13, v8);
            if (v74)
            {
              v75 = v85;
              sub_24590CCD4();
            }

            else
            {
            }

            return;
          }

          __break(1u);
          return;
        }
      }

      v43 = MEMORY[0x245D76B30](v42, v39);
      goto LABEL_8;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_24578789C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2459107E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245910814();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24578FD6C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_135;
  v16 = _Block_copy(aBlock);

  sub_24578FB6C(a2, a3);
  sub_245910804();
  v20 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_245787B84(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  a1[7] = a2;

  v7 = a1[8];
  v8 = a1[9];
  a1[8] = a3;
  a1[9] = a4;
  sub_24578FB6C(a3, a4);

  return sub_245771C44(v7, v8);
}

uint64_t sub_245787C00@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24590F354();
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  if (a2 >> 60 == 15)
  {
    v8 = sub_24590D1B4();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {
    sub_24590BDD4();
    swift_allocObject();
    sub_24578FB80(a1, a2);
    sub_24590BDC4();
    v11 = sub_24590D1B4();
    sub_24579004C(&qword_27EE28EE8, MEMORY[0x277CFF450]);
    sub_24590BDB4();
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);

    return sub_245771C44(a1, a2);
  }
}

uint64_t sub_245788060@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v83 = a2;
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v76 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  sub_24590C714();

  v17 = sub_24590F344();
  v18 = sub_245910F54();

  v19 = os_log_type_enabled(v17, v18);
  v82 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v77 = a3;
    v21 = v20;
    v81 = swift_slowAlloc();
    v84 = v81;
    *v21 = 136315138;
    sub_24578FBD4();
    v22 = sub_245910E94();
    v24 = sub_2458CC378(v22, v23, &v84);

    *(v21 + 4) = v24;
    v4 = v3;
    a1 = v82;
    _os_log_impl(&dword_245767000, v17, v18, "Retrieving ProofingDocuments: %s", v21, 0xCu);
    v25 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x245D77B40](v25, -1, -1);
    v26 = v21;
    a3 = v77;
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  v81 = *(v8 + 8);
  v81(v16, v7);
  v27 = sub_245788774(0, a1);
  v28 = v83;
  if (v27)
  {
    v29 = v83[2];
    v30 = v29;
    sub_24578F7FC(v29);
    v32 = v31;

    if (v32 >> 60 == 15)
    {
      v33 = v80;
      sub_24590C714();
      v34 = sub_24590F344();
      v35 = sub_245910F64();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_245767000, v34, v35, "Failed to convert idFront to jpeg data", v36, 2u);
        MEMORY[0x245D77B40](v36, -1, -1);
      }

LABEL_15:
      v49 = v33;
      v50 = v7;
LABEL_23:
      v81(v49, v50);
      result = 0;
      goto LABEL_29;
    }

    v37 = v28[10];
    v38 = v28[12];
    v39 = objc_allocWithZone(sub_24590C914());
    v40 = v37;
    v41 = v38;
    v28 = v83;
    v80 = sub_24590C904();
    a1 = v82;
  }

  else
  {
    v80 = 0;
  }

  if (sub_245788774(1u, a1))
  {
    v42 = v28[3];
    v43 = v42;
    sub_24578F7FC(v42);
    v45 = v44;

    if (v45 >> 60 == 15)
    {
      v33 = v79;
      sub_24590C714();
      v46 = sub_24590F344();
      v47 = sub_245910F64();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_245767000, v46, v47, "Failed to convert idBack to jpeg data", v48, 2u);
        MEMORY[0x245D77B40](v48, -1, -1);
      }

      goto LABEL_15;
    }

    v79 = v7;
    v52 = v28[11];
    v53 = v28[13];
    v54 = v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data;
    v77 = v4;
    v55 = *(v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
    v56 = *(v54 + 1);
    v57 = objc_allocWithZone(sub_24590C914());
    v58 = v52;
    v59 = v53;
    sub_24578FB6C(v55, v56);
    v28 = v83;
    v51 = sub_24590C904();
    a1 = v82;
  }

  else
  {
    v79 = v7;
    v51 = 0;
  }

  if (sub_245788774(2u, a1))
  {
    v60 = v28[4];
    v61 = v60;
    sub_24578F7FC(v60);
    v63 = v62;

    if (v63 >> 60 == 15)
    {
      v64 = v78;
      sub_24590C714();
      v65 = sub_24590F344();
      v66 = sub_245910F64();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_245767000, v65, v66, "Failed to convert selfie to jpeg data", v67, 2u);
        MEMORY[0x245D77B40](v67, -1, -1);
      }

      v49 = v64;
      v50 = v79;
      goto LABEL_23;
    }

    v69 = v28[14];
    v70 = objc_allocWithZone(sub_24590C914());
    v71 = v69;
    v28 = v83;
    sub_24590C904();
    a1 = v82;
  }

  if (sub_245788774(3u, a1))
  {
    v72 = *(v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
    objc_allocWithZone(sub_24590C914());
    v73 = v72;
    sub_24590C904();
  }

  v74 = *(v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness);
  objc_allocWithZone(sub_24590D7A4());
  v75 = v74;
  result = sub_24590D784();
LABEL_29:
  *a3 = result;
  return result;
}

BOOL sub_245788774(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_245911824();
  MEMORY[0x245D76E70](v3);
  v4 = sub_245911864();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_245788840(uint64_t a1, uint64_t a2)
{
  v3 = sub_24590E9D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_24579004C(&qword_27EE28EB8, MEMORY[0x277CFF850]), v7 = sub_245910904(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_24579004C(&unk_27EE29C00, MEMORY[0x277CFF850]);
      v15 = sub_245910934();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_245788A58@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = a2[2];
    }

    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v11 = a2[4];
LABEL_7:
    *a3 = v11;
    return v11;
  }

  v13 = v8;
  sub_24590C714();
  v14 = sub_24590F344();
  v15 = sub_245910F64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2458CC378(0x74726F7073736150, 0xE800000000000000, &v19);
    _os_log_impl(&dword_245767000, v14, v15, "Unable to retrieve image for type: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245D77B40](v17, -1, -1);
    MEMORY[0x245D77B40](v16, -1, -1);
  }

  result = (*(v7 + 8))(v10, v13);
  *a3 = 0;
  return result;
}

uint64_t sub_245788C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v89 = sub_24590C6A4();
  MEMORY[0x28223BE20](v89);
  v88 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590D124();
  MEMORY[0x28223BE20](v5 - 8);
  v87 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590F354();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24590EA74();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v80 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v90 = v75 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v91 = v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v75 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v75 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v75 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v75 - v29;
  v31 = sub_24590C474();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v32 + 16);
  v79 = a1;
  v35(v34, a1, v31);
  v84 = v34;
  v85 = v32;
  v36 = *(v32 + 88);
  v86 = v31;
  v37 = v36(v34, v31);
  if (v37 == *MEMORY[0x277CFF340])
  {
    v38 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v38, v30, &qword_27EE28ED0);
    v39 = sub_24590D1B4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (v41(v30, 1, v39) != 1)
    {
      return (*(v40 + 32))(v92, v30, v39);
    }

    (*(v40 + 16))(v92, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings, v39);
    result = (v41)(v30, 1, v39);
    if (result != 1)
    {
      return sub_245778F94(v30, &qword_27EE28ED0);
    }

    return result;
  }

  if (v37 == *MEMORY[0x277CFF328])
  {
    v43 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v43, v28, &qword_27EE28ED0);
    v44 = sub_24590D1B4();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v28, 1, v44) == 1)
    {
      v47 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings;
      goto LABEL_8;
    }

    return (*(v45 + 32))(v92, v28, v44);
  }

  if (v37 == *MEMORY[0x277CFF318])
  {
    v48 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v48, v25, &qword_27EE28ED0);
    v49 = sub_24590D1B4();
    v50 = *(v49 - 8);
    v51 = *(v50 + 48);
    if (v51(v25, 1, v49) == 1)
    {
      (*(v50 + 16))(v92, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings, v49);
      result = v51(v25, 1, v49);
      if (result != 1)
      {
        return sub_245778F94(v25, &qword_27EE28ED0);
      }
    }

    else
    {
      return (*(v50 + 32))(v92, v25, v49);
    }
  }

  else if (v37 == *MEMORY[0x277CFF308])
  {
    v52 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v52, v22, &qword_27EE28ED0);
    v53 = sub_24590D1B4();
    v54 = *(v53 - 8);
    v55 = *(v54 + 48);
    if (v55(v22, 1, v53) == 1)
    {
      v56 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings;
      swift_beginAccess();
      (*(v54 + 16))(v92, v2 + v56, v53);
      result = v55(v22, 1, v53);
      if (result != 1)
      {
        return sub_245778F94(v22, &qword_27EE28ED0);
      }
    }

    else
    {
      return (*(v54 + 32))(v92, v22, v53);
    }
  }

  else if (v37 == *MEMORY[0x277CFF310])
  {
    v57 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v57, v19, &qword_27EE28ED0);
    v58 = sub_24590D1B4();
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v19, 1, v58) == 1)
    {
      (*(v59 + 16))(v92, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings, v58);
      result = v60(v19, 1, v58);
      if (result != 1)
      {
        return sub_245778F94(v19, &qword_27EE28ED0);
      }
    }

    else
    {
      return (*(v59 + 32))(v92, v19, v58);
    }
  }

  else
  {
    if (v37 == *MEMORY[0x277CFF330])
    {
      v61 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings;
      swift_beginAccess();
      v28 = v91;
      sub_245778F2C(v2 + v61, v91, &qword_27EE28ED0);
      v44 = sub_24590D1B4();
      v45 = *(v44 - 8);
      v46 = *(v45 + 48);
      if (v46(v28, 1, v44) == 1)
      {
        v47 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings;
LABEL_8:
        (*(v45 + 16))(v92, v2 + v47, v44);
        result = (v46)(v28, 1, v44);
        if (result != 1)
        {
          return sub_245778F94(v28, &qword_27EE28ED0);
        }

        return result;
      }

      return (*(v45 + 32))(v92, v28, v44);
    }

    if (v37 == *MEMORY[0x277CFF320])
    {
      v62 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings;
      swift_beginAccess();
      v63 = v90;
      sub_245778F2C(v2 + v62, v90, &qword_27EE28ED0);
      v64 = sub_24590D1B4();
      v65 = *(v64 - 8);
      v66 = *(v65 + 48);
      if (v66(v63, 1, v64) == 1)
      {
        (*(v65 + 16))(v92, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings, v64);
        result = v66(v63, 1, v64);
        if (result != 1)
        {
          return sub_245778F94(v63, &qword_27EE28ED0);
        }
      }

      else
      {
        return (*(v65 + 32))(v92, v63, v64);
      }
    }

    else if (v37 == *MEMORY[0x277CFF338])
    {
      v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
      swift_beginAccess();
      v68 = v76;
      sub_245778F2C(v2 + v67, v76, &qword_27EE28ED0);
      v69 = sub_24590D1B4();
      v70 = *(v69 - 8);
      v71 = *(v70 + 48);
      if (v71(v68, 1, v69) == 1)
      {
        (*(v70 + 16))(v92, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v69);
        result = v71(v68, 1, v69);
        if (result != 1)
        {
          return sub_245778F94(v68, &qword_27EE28ED0);
        }
      }

      else
      {
        return (*(v70 + 32))(v92, v68, v69);
      }
    }

    else
    {
      v93 = 0;
      v94 = 0xE000000000000000;
      sub_2459114D4();
      MEMORY[0x245D76160](0xD000000000000034, 0x8000000245924390);
      v72 = sub_24590C464();
      MEMORY[0x245D76160](v72);

      (*(v77 + 104))(v80, *MEMORY[0x277CFF9C0], v78);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v73 = swift_allocError();
      sub_24590EA94();
      v74 = v81;
      sub_24590C714();
      sub_24590C724();
      (*(v82 + 8))(v74, v83);

      v90 = 0x100000000;
      v91 = 0x100000000;
      v82 = 0x100000000;
      v83 = 0x100000000;
      v80 = 0x100000000;
      v81 = 0x100000000;
      v78 = 0x100000000;
      v79 = 0x100000000;
      v77 = 0x100000000;
      v76 = 0x100000000;
      v75[5] = 0x100000000;
      v75[4] = 0x100000000;
      v75[3] = 0x100000000;
      v75[2] = 0x100000000;
      v75[1] = 0x100000000;
      LOBYTE(v93) = 1;
      sub_24590D044();
      v93 = MEMORY[0x277D84F90];
      sub_24579004C(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98);
      sub_24578FCA0(&qword_27EE28EA0, &qword_27EE28E98);
      sub_2459113A4();
      sub_24590D164();
      return (*(v85 + 8))(v84, v86);
    }
  }

  return result;
}

uint64_t sub_245789E8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24590F354();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C384();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data + 8);
  if (v14 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_7;
  }

  v36 = a2;
  v32 = v11;
  v16 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
  v17 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v18 = v15;
  v37 = v16;
  sub_24578FB6C(v16, v14);
  v19 = [v17 initWithImage_];
  if (!v19)
  {

    sub_245771C44(v37, v14);
    a2 = v36;
LABEL_7:
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0) + 48);
    *a2 = 0;
    v27 = sub_24590C934();
    return (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
  }

  v34 = v19;
  v35 = v18;
  sub_24590BDD4();
  swift_allocObject();
  v20 = sub_24590BDC4();
  sub_24579004C(&qword_27EE28EC8, MEMORY[0x277CFF2E0]);
  v33 = v20;
  v21 = v39;
  sub_24590BDB4();
  v22 = v36;
  if (v21)
  {
    sub_24590C714();
    sub_24590C3F4();
    sub_245771C44(v37, v14);

    (*(v38 + 8))(v6, v4);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0) + 48);
    *v22 = 0;
    v24 = sub_24590C934();
    return (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
  }

  else
  {
    v28 = v32;
    (*(v32 + 32))(v13, v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0);
    v29 = v34;
    *v22 = v34;
    v30 = v29;
    sub_24590C374();
    sub_245771C44(v37, v14);

    return (*(v28 + 8))(v13, v7);
  }
}

uint64_t sub_24578A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_24590D124();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v82 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = v74 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v80 = v74 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v74 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v78 = v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v74 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v74 - v24;
  v26 = sub_24590D1B4();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v84 = v74 - v30;
  v32 = v31;
  v34 = v33;
  sub_245778F2C(a1, v25, &qword_27EE28ED0);
  if ((*(v34 + 48))(v25, 1, v32) == 1)
  {
    sub_245778F94(v25, &qword_27EE28ED0);
    return (*(v34 + 16))(v83, v77 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings, v32);
  }

  v36 = *(v34 + 32);
  v74[1] = v34 + 32;
  v75 = v13;
  v37 = v3;
  v38 = v84;
  v74[0] = v36;
  v36(v84, v25, v32);
  (*(v34 + 16))(v29, v38, v32);
  sub_24590D184();
  sub_24590CF94();
  v77 = v32;
  v39 = *(v4 + 8);
  v39(v22, v37);
  v40 = sub_24590D174();
  v76 = v34;
  v41 = v40;
  sub_24590CFA4();
  v41(&v85, 0);
  sub_24590D184();
  sub_24590CF74();
  v39(v20, v37);
  v42 = sub_24590D174();
  sub_24590CF84();
  v42(&v85, 0);
  v43 = v78;
  sub_24590D184();
  sub_24590CF34();
  v44 = v37;
  v39(v43, v37);
  v45 = sub_24590D174();
  v86 = 0;
  sub_24590CF44();
  v45(&v85, 0);
  v46 = v79;
  sub_24590D184();
  sub_24590CF14();
  v39(v46, v37);
  v47 = v29;
  v48 = sub_24590D174();
  v86 = 0;
  sub_24590CF24();
  v48(&v85, 0);
  v49 = v75;
  sub_24590D184();
  sub_24590D004();
  v39(v49, v44);
  v50 = sub_24590D174();
  v86 = 0;
  sub_24590D014();
  v50(&v85, 0);
  v51 = v80;
  sub_24590D184();
  sub_24590D024();
  v39(v51, v44);
  v52 = sub_24590D174();
  v86 = 0;
  sub_24590D034();
  v52(&v85, 0);
  v53 = v81;
  sub_24590D184();
  sub_24590CF54();
  v39(v53, v44);
  v54 = sub_24590D174();
  v86 = 0;
  sub_24590CF64();
  v54(&v85, 0);
  v55 = v82;
  sub_24590D184();
  sub_24590CFE4();
  v39(v55, v44);
  v56 = v47;
  v57 = sub_24590D174();
  v86 = 0;
  sub_24590CFF4();
  v57(&v85, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EA8);
  v58 = sub_24590E9E4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_245916990;
  v63 = *(v59 + 104);
  v63(v62 + v61, *MEMORY[0x277CFF8B0], v58);
  v63(v62 + v61 + v60, *MEMORY[0x277CFF888], v58);
  v63(v62 + v61 + 2 * v60, *MEMORY[0x277CFF8C0], v58);
  v63(v62 + v61 + 3 * v60, *MEMORY[0x277CFF870], v58);
  v63(v62 + v61 + 4 * v60, *MEMORY[0x277CFF8A8], v58);
  v63(v62 + v61 + 5 * v60, *MEMORY[0x277CFF8B8], v58);
  v64 = sub_24580DC48(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v65 = sub_24590D1A4();
  LOBYTE(v62) = sub_24578E270(v65, v64);

  if ((v62 & 1) == 0)
  {
    goto LABEL_7;
  }

  v67 = v76;
  v66 = v77;
  v68 = *(v64 + 16);
  v69 = v84;
  if (!v68)
  {

    v70 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v70 = sub_24578E174(*(v64 + 16), 0);
  v71 = sub_24578E54C(&v85, (v70 + v61), v68, v64);
  sub_24578FD64();
  if (v71 == v68)
  {
LABEL_9:
    v73 = sub_24590D194();
    sub_24581A314(0, 0, v70);

    v73(&v85, 0);
    v72 = v66;
    (*(v67 + 8))(v69, v66);
    return (v74[0])(v83, v56, v72);
  }

  __break(1u);
LABEL_7:
  v72 = v77;
  (*(v76 + 8))(v84, v77);

  return (v74[0])(v83, v56, v72);
}

uint64_t sub_24578AD00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2459107E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245910814();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24578FC7C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  sub_245771BB4(a1);
  sub_245910804();
  v18 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_24578AFDC(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v46[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v46 - v6;
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "Clearing DocumentsRepository data", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v15 = a1[2];
  a1[2] = 0;

  v16 = a1[3];
  a1[3] = 0;

  v17 = a1[4];
  a1[4] = 0;

  v18 = sub_24590DA04();
  v19 = [objc_allocWithZone(v18) init];
  v20 = a1[12];
  a1[12] = v19;

  v21 = [objc_allocWithZone(v18) init];
  v22 = a1[13];
  a1[13] = v21;

  v23 = [objc_allocWithZone(v18) init];
  v24 = a1[14];
  a1[14] = v23;

  v25 = [objc_allocWithZone(v18) init];
  v26 = a1[15];
  a1[15] = v25;

  v27 = [objc_allocWithZone(v18) init];
  v28 = a1[16];
  a1[16] = v27;

  v29 = sub_24590D1B4();
  v30 = *(*(v29 - 8) + 56);
  v30(v7, 1, 1, v29);
  v31 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v31);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v32 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v32);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v33 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v33);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v34 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v34);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v35 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v35);
  swift_endAccess();
  v36 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
  v37 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data + 8);
  v47 = xmmword_2459169A0;
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data) = xmmword_2459169A0;
  sub_245771C44(v36, v37);
  v38 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness);
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness) = 0;

  a1[5] = 0;
  a1[6] = 0;

  a1[7] = 0;

  v39 = a1[8];
  v40 = a1[9];
  *(a1 + 4) = v47;
  sub_245771C44(v39, v40);
  v41 = [objc_allocWithZone(v18) init];
  v42 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics) = v41;

  v30(v7, 1, 1, v29);
  v43 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v43);
  result = swift_endAccess();
  v45 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
  *v45 = 0;
  v45[8] = 1;
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_24578B4D4()
{

  sub_245771C44(*(v0 + 64), *(v0 + 72));

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings, &qword_27EE28ED0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings, &qword_27EE28ED0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings, &qword_27EE28ED0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings, &qword_27EE28ED0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings, &qword_27EE28ED0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings, &qword_27EE28ED0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings, &qword_27EE28ED0);

  sub_245771C44(*(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data), *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data + 8));
  v1 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings;
  v2 = sub_24590D1B4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings, v2);

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings, &qword_27EE28ED0);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v2);
  return v0;
}

uint64_t sub_24578B7D4()
{
  sub_24578B4D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DocumentsRepository()
{
  result = qword_27EE28E60;
  if (!qword_27EE28E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24578B880()
{
  sub_24578BA2C();
  if (v0 <= 0x3F)
  {
    sub_24590D1B4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24578BA2C()
{
  if (!qword_27EE28E70)
  {
    sub_24590D1B4();
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE28E70);
    }
  }
}

uint64_t sub_24578BA84()
{
  v1 = v0;
  v82 = sub_24590C6A4();
  MEMORY[0x28223BE20](v82);
  v81 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24590D124();
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245911024();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245910FF4();
  MEMORY[0x28223BE20](v7);
  v76 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245910814();
  MEMORY[0x28223BE20](v9 - 8);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xF000000000000000;
  v10 = sub_24590DA04();
  v71 = v10;
  *(v0 + 80) = [objc_allocWithZone(v10) init];
  *(v0 + 88) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 96) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 104) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 112) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 120) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 128) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  v11 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings;
  v12 = sub_24590D1B4();
  v69 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v68 = v14;
  v70 = v13 + 56;
  v14(v0 + v11, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration) = 0;
  v15 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idScanFrameRate;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_videoFrameRate;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel;
  *v19 = 0;
  *(v19 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data) = xmmword_2459169A0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness) = 0;
  v75 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue;
  sub_2457809BC();
  sub_245910804();
  v83 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE28E78, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E80);
  sub_24578FCA0(&qword_27EE28E88, &qword_27EE28E80);
  sub_2459113A4();
  (*(v78 + 104))(v77, *MEMORY[0x277D85260], v79);
  *(v0 + v75) = sub_245911064();
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_imageCompressionQuality) = 0x3FEFAE147AE147AELL;
  v78 = 0x100000000;
  v79 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings;
  v77 = 0x100000000;
  v74 = 0x100000000;
  v75 = 0x100000000;
  v72 = 0x100000000;
  v73 = 0x100000000;
  v67 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  v79 = sub_24579004C(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98);
  v77 = sub_24578FCA0(&qword_27EE28EA0, &qword_27EE28E98);
  sub_2459113A4();
  sub_24590D164();
  v75 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v72 = 0x100000000;
  v67 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v75 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v72 = 0x100000000;
  v67 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings;
  v75 = 0x100000000;
  v76 = 0x100000000;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v72 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EA8);
  v20 = sub_24590E9E4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  v24 = (v23 + 32) & ~v23;
  v72 = v24;
  v73 = 2 * v22;
  v74 = v23;
  v76 = 3 * v22;
  v25 = swift_allocObject();
  v66 = xmmword_2459169B0;
  *(v25 + 16) = xmmword_2459169B0;
  v26 = v25 + v24;
  v27 = *(v21 + 104);
  (v27)(v25 + v24, *MEMORY[0x277CFF880], v20);
  (v27)(v26 + v22, *MEMORY[0x277CFF890], v20);
  (v27)(v26 + 2 * v22, *MEMORY[0x277CFF878], v20);
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings;
  v64 = 0x100000000;
  v65 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  v52 = 0x100000000;
  v51 = 0x100000000;
  v50 = 0x100000000;
  v49 = 0x100000000;
  v48 = 0x100000000;
  v47 = 0x100000000;
  v46 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v28 = v72;
  v29 = swift_allocObject();
  *(v29 + 16) = v66;
  v30 = v29 + v28;
  LODWORD(v66) = *MEMORY[0x277CFF8B0];
  v27(v30);
  (v27)(v30 + v22, *MEMORY[0x277CFF8A0], v20);
  (v27)(v30 + v73, *MEMORY[0x277CFF898], v20);
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings;
  v64 = 0x100000000;
  v65 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 1045220557;
  v56 = 1065353216;
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  v52 = 0x100000000;
  v51 = 0x100000000;
  v50 = 0x100000000;
  v49 = 0x100000000;
  v48 = 0x100000000;
  v47 = 0x100000000;
  v46 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v31 = v72;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_245916990;
  v33 = v32 + v31;
  (v27)(v33, v66, v20);
  (v27)(v33 + v22, *MEMORY[0x277CFF888], v20);
  (v27)(v33 + v73, *MEMORY[0x277CFF8C0], v20);
  (v27)(v33 + v76, *MEMORY[0x277CFF870], v20);
  (v27)(v33 + 4 * v22, *MEMORY[0x277CFF8A8], v20);
  (v27)(v33 + 5 * v22, *MEMORY[0x277CFF8B8], v20);
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v34 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackDimensions;
  v35 = sub_24590D404();
  v36 = objc_allocWithZone(v35);
  *(v1 + v34) = sub_24590D3E4();
  v37 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackDimensions;
  v38 = objc_allocWithZone(v35);
  *(v1 + v37) = sub_24590D3E4();
  v39 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackDimensions;
  v40 = objc_allocWithZone(v35);
  *(v1 + v39) = sub_24590D3E4();
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackBufferSize) = 3;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackStableWindow) = 5;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackFrameRate) = 5;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackMaxRectTravel) = 1036831949;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxNumMetrics) = 5;
  v41 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor;
  *(v1 + v41) = [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
  v42 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics;
  *(v1 + v42) = [objc_allocWithZone(v71) init];
  (v68)(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings, 1, 1, v69);
  v43 = v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportTimeout;
  *v44 = 0;
  *(v44 + 8) = 1;
  v75 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v71 = 0x100000000;
  v72 = 0x100000000;
  v69 = 0x100000000;
  v70 = 0x100000000;
  v67 = 0x100000000;
  v68 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackTimeout) = 300;
  return v1;
}

size_t sub_24578E174(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EA8);
  v4 = *(sub_24590E9E4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24578E270(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590E9E4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_24579004C(&qword_27EE28ED8, MEMORY[0x277CFF8C8]);
      v16 = sub_245910904();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_24579004C(&qword_27EE28EE0, MEMORY[0x277CFF8C8]);
    v20 = sub_245910934();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t sub_24578E54C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24590E9E4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_24578E7F0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_24578E800(void *a1, uint64_t a2, int a3)
{
  v71 = a3;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v68 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v68 - v11;
  v13 = sub_24590D3D4();
  v14 = sub_24590D3F4();
  [a1 extent];
  Height = CGRectGetHeight(v75);
  [a1 extent];
  v16 = Height / CGRectGetWidth(v76);
  v17 = sub_24590D3F4();
  if (v16 != v17 / sub_24590D3D4())
  {
    v72 = v13;
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F64();
    if (os_log_type_enabled(v18, v19))
    {
      v69 = v5;
      v70 = v4;
      v20 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      v21 = v71;
      *v20 = 136315138;
      v22 = 0xE800000000000000;
      v23 = 0xE600000000000000;
      v24 = 0x6569666C6553;
      if (v21 != 2)
      {
        v24 = 0x74726F7073736150;
        v23 = 0xE800000000000000;
      }

      v25 = 0x6B636142204449;
      if (v21)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v25 = 0x746E6F7246204449;
      }

      if (v21 <= 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (v21 <= 1)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      v28 = sub_2458CC378(v26, v27, aBlock);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_245767000, v18, v19, "Invalid resize dimensions, using fallback dimensions for %s", v20, 0xCu);
      v29 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x245D77B40](v29, -1, -1);
      MEMORY[0x245D77B40](v20, -1, -1);

      v5 = v69;
      v4 = v70;
    }

    else
    {
    }

    (*(v5 + 8))(v12, v4);
    v13 = v72;
  }

  v30 = v13;
  v31 = v14;
  v32 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
  v33 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  v34 = sub_24590D3C4();
  if ((v35 & 1) == 0)
  {
    v36 = v34;
    v37 = *&v34;
    sub_24590C714();
    v38 = sub_24590F344();
    v39 = sub_245910F54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v5;
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v36;
      _os_log_impl(&dword_245767000, v38, v39, "Resizing using scale = %f", v41, 0xCu);
      v42 = v41;
      v5 = v40;
      MEMORY[0x245D77B40](v42, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    [v33 setScale_];
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v33 format:{v30, v31}];
  v44 = swift_allocObject();
  *(v44 + 16) = v32;
  *(v44 + 24) = v30;
  *(v44 + 32) = v31;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_245790284;
  *(v45 + 24) = v44;
  aBlock[4] = sub_24577F688;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245817924;
  aBlock[3] = &block_descriptor_198;
  v46 = _Block_copy(aBlock);
  v47 = v32;

  v48 = [v43 imageWithActions_];
  _Block_release(v46);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
  }

  else
  {
    v72 = v33;
    v50 = v73;
    sub_24590C714();
    v51 = v48;
    v52 = a1;
    v53 = sub_24590F344();
    v54 = sub_245910F54();

    if (os_log_type_enabled(v53, v54))
    {
      v68 = v47;
      v69 = v5;
      v70 = v4;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      v57 = v71;
      *v55 = 136316418;
      v58 = 0xE800000000000000;
      v59 = 0xE600000000000000;
      v60 = 0x6569666C6553;
      if (v57 != 2)
      {
        v60 = 0x74726F7073736150;
        v59 = 0xE800000000000000;
      }

      v61 = 0x6B636142204449;
      if (v57)
      {
        v58 = 0xE700000000000000;
      }

      else
      {
        v61 = 0x746E6F7246204449;
      }

      if (v57 <= 1)
      {
        v62 = v61;
      }

      else
      {
        v62 = v60;
      }

      if (v57 <= 1)
      {
        v63 = v58;
      }

      else
      {
        v63 = v59;
      }

      v64 = sub_2458CC378(v62, v63, aBlock);

      *(v55 + 4) = v64;
      *(v55 + 12) = 2048;
      [v52 extent];
      *(v55 + 14) = CGRectGetHeight(v77);
      *(v55 + 22) = 2048;
      [v52 extent];
      *(v55 + 24) = CGRectGetWidth(v78);
      *(v55 + 32) = 2048;
      [v51 size];
      *(v55 + 34) = v65;
      *(v55 + 42) = 2048;
      [v51 size];
      *(v55 + 44) = v66;
      *(v55 + 52) = 2048;
      [v51 scale];
      *(v55 + 54) = v67;
      _os_log_impl(&dword_245767000, v53, v54, "Resized %s image from %fx%f to %fx%f (%fx)", v55, 0x3Eu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x245D77B40](v56, -1, -1);
      MEMORY[0x245D77B40](v55, -1, -1);

      (*(v69 + 8))(v73, v70);
    }

    else
    {

      (*(v5 + 8))(v50, v4);
    }

    return v51;
  }

  return result;
}

uint64_t sub_24578EFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v11 = MEMORY[0x277D84F90];
  sub_24577CC64(0, v1, 0);
  v2 = v11;
  for (i = a1 + 32; ; i += 8)
  {

    v5 = sub_2459108E4();
    CMTimeMakeFromDictionary(&v10, v5);
    value = v10.value;

    if (value < 0)
    {
      break;
    }

    v11 = v2;
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_24577CC64((v8 > 1), v9 + 1, 1);
      v2 = v11;
    }

    *(v2 + 16) = v9 + 1;
    *(v2 + 8 * v9 + 32) = value;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

void sub_24578F0C4(uint64_t a1, void *a2)
{
  v16 = *(a1 + 16);
  if (v16)
  {
    v2 = a2;
    v3 = 0;
    v15 = a1 + 32;
    while (1)
    {
      v4 = *(v15 + 8 * v3);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_11:
      v12 = objc_allocWithZone(sub_24590C974());
      v13 = sub_24590C964();
      MEMORY[0x245D76260]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245910C74();
      }

      ++v3;
      sub_245910CA4();

      if (v3 == v16)
      {
        return;
      }
    }

    v18 = MEMORY[0x277D84F90];

    sub_24577CC64(0, v5, 0);
    v6 = v18;
    v7 = v4 + 32;
    while (1)
    {

      v8 = sub_2459108E4();
      CMTimeMakeFromDictionary(&v17, v8);
      value = v17.value;

      if (value < 0)
      {
        break;
      }

      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24577CC64((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = value;
      v7 += 8;
      if (!--v5)
      {
        v2 = a2;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24578F2D4(uint64_t a1)
{
  v2 = sub_24590E9D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24579004C(&qword_27EE28EB8, MEMORY[0x277CFF850]);
  result = MEMORY[0x245D764C0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_2458AE758(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24578F470(uint64_t a1, unint64_t a2)
{
  v4 = sub_24590F354();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24590EA74();
  MEMORY[0x28223BE20](v5);
  if (a2 >> 60 == 15)
  {
    v6 = MEMORY[0x277D84F90];

    return sub_24578F2D4(v6);
  }

  else
  {
    sub_24590BDD4();
    swift_allocObject();
    sub_24578FB80(a1, a2);
    sub_24590BDC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F08);
    sub_24578FF98();
    sub_24590BDB4();

    v8 = sub_24578F2D4(v9);

    sub_245771C44(a1, a2);
    return v8;
  }
}

uint64_t sub_24578F7FC(void *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_24590EA74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    v14 = UIImageJPEGRepresentation(v13, 0.99);
    if (v14)
    {
      v15 = v14;
      v16 = sub_24590C154();

      return v16;
    }

    (*(v10 + 104))(v12, *MEMORY[0x277CFFA30], v9);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v21 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v18, v19, "Failed to create jpeg, image doesn't exist", v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_24578FB6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24578FB80(a1, a2);
  }

  return a1;
}

uint64_t sub_24578FB80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24578FBD4()
{
  result = qword_27EE28EB0;
  if (!qword_27EE28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28EB0);
  }

  return result;
}

uint64_t sub_24578FC28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24578FCA0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24578FCF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24578FD78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24578FDE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_245786C78(v3, v4, v5, v0 + v2, v6);
}

uint64_t sub_24578FEE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_24578FB80(v1, v2);

  return sub_245771C44(v4, v5);
}

unint64_t sub_24578FF44()
{
  result = qword_27EE28F00;
  if (!qword_27EE28F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28F00);
  }

  return result;
}

unint64_t sub_24578FF98()
{
  result = qword_27EE28F10;
  if (!qword_27EE28F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28F08);
    sub_24579004C(&qword_27EE28F18, MEMORY[0x277CFF850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28F10);
  }

  return result;
}

uint64_t sub_24579004C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2457900A8()
{
  v1 = *(sub_24590C474() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24578366C(v0 + v2, v3);
}

void sub_24579014C()
{
  v1 = *(sub_24590C474() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_245782C60(v0 + v2, v4, v6, v7);
}

void sub_2457901EC()
{
  v1 = *(sub_24590EEB4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_245782568(v0 + v2, v3);
}

uint64_t getEnumTagSinglePayload for IdentityProofingImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityProofingImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2457903F4()
{
  result = qword_27EE28F20;
  if (!qword_27EE28F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28F20);
  }

  return result;
}

void sub_2457904A0(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [v1 viewControllers];
  sub_245790840();
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    v4 = sub_245911424();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 2)
  {
LABEL_21:

    return;
  }

  v5 = [v1 viewControllers];
  v6 = sub_245910C44();

  if (v6 >> 62)
  {
    v7 = sub_245911424();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v7 - 2;
  if (__OFSUB__(v7, 2))
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = [v1 viewControllers];
  v7 = sub_245910C44();

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v10 = MEMORY[0x245D76B30](v8, v7);
LABEL_14:
    v11 = v10;

    type metadata accessor for IdentityProofingProgressViewController();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for IdentityProofingAuthCodeViewController();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for IdentityProofingPendingViewController();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for IdentityProofingWaitingForWifiViewController();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for IdentityProofingReviewSubmissionViewController();
            if (!swift_dynamicCastClass())
            {
              type metadata accessor for IdentityProofingViewController();
              swift_dynamicCastClass();
            }
          }
        }
      }
    }

    v1 = v11;
    goto LABEL_21;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v8 + 32);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2457906C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 viewControllers];
  sub_245790840();
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    v4 = sub_245911424();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    goto LABEL_15;
  }

  v5 = [v1 viewControllers];
  v6 = sub_245910C44();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  result = sub_245911424();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x245D76B30](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:
    v9 = v8;

    type metadata accessor for RGBCaptureViewController();
    v10 = swift_dynamicCastClass() != 0;
    v1 = v9;
LABEL_16:

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_245790840()
{
  result = qword_27EE28F28;
  if (!qword_27EE28F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE28F28);
  }

  return result;
}

uint64_t sub_24579088C(uint64_t result)
{
  if (result)
  {
    v1 = [result viewControllers];
    sub_245790840();
    v2 = sub_245910C44();

    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x245D76B30](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        type metadata accessor for IdentityProofingAuthCodeViewController();
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_2457909BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v43 = v0;
  v15 = *(v0 + 24);
  if (v15 && *(v15 + 16))
  {

    v16 = sub_24588C5BC(0xD000000000000010, 0x8000000245924720);
    if (v17)
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = sub_24590E544();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v14, v19 + *(v21 + 72) * v18, v20);

      (*(v21 + 56))(v14, 0, 1, v20);
      goto LABEL_7;
    }
  }

  v20 = sub_24590E544();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
LABEL_7:
  sub_2457934F4(v14, v12);
  sub_24590E544();
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v12, 1, v20);
  v47 = v14;
  if (v24 == 1)
  {
    sub_245793564(v12);
    v44 = 0;
    v45 = 0;
    goto LABEL_15;
  }

  sub_24590E504();
  v26 = v25;
  (*(v22 + 8))(v12, v20);
  if (!v26)
  {
    goto LABEL_13;
  }

  if (!*(v43 + 32))
  {

LABEL_13:
    v44 = 0;
    v45 = 0;
    goto LABEL_14;
  }

  v27 = sub_24590E664();
  v44 = v28;
  v45 = v27;

LABEL_14:
  v14 = v47;
LABEL_15:
  sub_2457934F4(v14, v9);
  if (v23(v9, 1, v20) == 1)
  {
    sub_245793564(v9);
LABEL_24:
    v30 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_25;
  }

  v29 = sub_24590E534();
  (*(v22 + 8))(v9, v20);
  if (!v29)
  {
    goto LABEL_24;
  }

  if (!*(v29 + 16) || (, , !*(v43 + 32)))
  {

    goto LABEL_24;
  }

  v30 = sub_24590E664();
  v32 = v31;

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v30 = 0;
    v33 = 0xE000000000000000;
  }

LABEL_25:
  sub_2457934F4(v47, v6);
  v34 = v23(v6, 1, v20);
  v35 = v46;
  if (v34 == 1)
  {
    sub_245793564(v6);
  }

  else
  {
    v36 = sub_24590E514();
    (*(v22 + 8))(v6, v20);
    if (v36)
    {
      if (*(v36 + 16))
      {

        if (*(v43 + 32))
        {

          sub_24590E664();
        }

        v35 = v46;
      }

      else
      {
      }
    }
  }

  sub_2457934F4(v47, v35);
  if (v23(v35, 1, v20) == 1)
  {
    sub_245793564(v35);
  }

  else
  {
    v37 = sub_24590E514();
    (*(v22 + 8))(v35, v20);
    if (v37)
    {
      if (*(v37 + 16) >= 2uLL && (, , *(v43 + 32)))
      {

        sub_24590E664();
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_245916930;
  *(v38 + 32) = v30;
  *(v38 + 40) = v33;
  v39 = objc_allocWithZone(sub_24590D664());
  v40 = sub_24590D5C4();
  sub_245793564(v47);
  return v40;
}

uint64_t sub_24579109C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v49 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v55 = v0;
  v56 = &v49 - v15;
  v17 = *(v0 + 24);
  if (v17 && *(v17 + 16))
  {

    v18 = sub_24588C5BC(0xD00000000000001ELL, 0x8000000245924700);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = sub_24590E544();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v20;
      v16 = v56;
      (*(v23 + 16))(v56, v25, v22);

      (*(v24 + 56))(v16, 0, 1, v22);
      goto LABEL_7;
    }
  }

  v22 = sub_24590E544();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
LABEL_7:
  sub_2457934F4(v16, v14);
  sub_24590E544();
  v26 = *(v22 - 8);
  v27 = *(v26 + 48);
  if (v27(v14, 1, v22) == 1)
  {
    sub_245793564(v14);
    v52 = 0;
    v53 = 0;
    goto LABEL_15;
  }

  sub_24590E504();
  v29 = v28;
  (*(v26 + 8))(v14, v22);
  if (!v29)
  {
    goto LABEL_13;
  }

  if (!*(v55 + 32))
  {

LABEL_13:
    v52 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v30 = sub_24590E664();
  v52 = v31;
  v53 = v30;

LABEL_14:
  v16 = v56;
LABEL_15:
  sub_2457934F4(v16, v11);
  if (v27(v11, 1, v22) == 1)
  {
    sub_245793564(v11);
LABEL_27:
    v50 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_28;
  }

  v32 = sub_24590E534();
  (*(v26 + 8))(v11, v22);
  if (!v32)
  {
    goto LABEL_27;
  }

  if (!*(v32 + 16) || (, , !*(v55 + 32)))
  {

    goto LABEL_27;
  }

  v33 = sub_24590E664();
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  v50 = v36;
  v16 = v56;
  v37 = 0xE000000000000000;
  if (v35)
  {
    v37 = v35;
  }

LABEL_28:
  v49 = v37;
  sub_2457934F4(v16, v8);
  if (v27(v8, 1, v22) == 1)
  {
    sub_245793564(v8);
  }

  else
  {
    v38 = sub_24590E514();
    (*(v26 + 8))(v8, v22);
    if (v38)
    {
      if (*(v38 + 16) && (, , *(v55 + 32)))
      {

        sub_24590E664();

        v16 = v56;
      }

      else
      {
      }
    }
  }

  v39 = v51;
  sub_2457934F4(v16, v51);
  if (v27(v39, 1, v22) == 1)
  {
    sub_245793564(v39);
  }

  else
  {
    v40 = sub_24590E514();
    (*(v26 + 8))(v39, v22);
    if (v40)
    {
      if (*(v40 + 16) < 2uLL)
      {
      }

      else
      {

        if (*(v55 + 32))
        {

          sub_24590E664();
        }

        v16 = v56;
      }
    }
  }

  v41 = v16;
  v42 = v54;
  sub_2457934F4(v41, v54);
  if (v27(v42, 1, v22) == 1)
  {
    sub_245793564(v42);
  }

  else
  {
    v43 = sub_24590E514();
    (*(v26 + 8))(v42, v22);
    if (v43)
    {
      if (*(v43 + 16) >= 3uLL && (, , *(v55 + 32)))
      {

        sub_24590E664();
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_245916930;
  v45 = v49;
  *(v44 + 32) = v50;
  *(v44 + 40) = v45;
  v46 = objc_allocWithZone(sub_24590D664());
  v47 = sub_24590D5C4();
  sub_245793564(v56);
  return v47;
}

uint64_t sub_2457918A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v49 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v55 = v0;
  v56 = &v49 - v15;
  v17 = *(v0 + 24);
  if (v17 && *(v17 + 16))
  {

    v18 = sub_24588C5BC(0xD000000000000021, 0x80000002459246D0);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = sub_24590E544();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v20;
      v16 = v56;
      (*(v23 + 16))(v56, v25, v22);

      (*(v24 + 56))(v16, 0, 1, v22);
      goto LABEL_7;
    }
  }

  v22 = sub_24590E544();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
LABEL_7:
  sub_2457934F4(v16, v14);
  sub_24590E544();
  v26 = *(v22 - 8);
  v27 = *(v26 + 48);
  if (v27(v14, 1, v22) == 1)
  {
    sub_245793564(v14);
    v52 = 0;
    v53 = 0;
    goto LABEL_15;
  }

  sub_24590E504();
  v29 = v28;
  (*(v26 + 8))(v14, v22);
  if (!v29)
  {
    goto LABEL_13;
  }

  if (!*(v55 + 32))
  {

LABEL_13:
    v52 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v30 = sub_24590E664();
  v52 = v31;
  v53 = v30;

LABEL_14:
  v16 = v56;
LABEL_15:
  sub_2457934F4(v16, v11);
  if (v27(v11, 1, v22) == 1)
  {
    sub_245793564(v11);
LABEL_27:
    v50 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_28;
  }

  v32 = sub_24590E534();
  (*(v26 + 8))(v11, v22);
  if (!v32)
  {
    goto LABEL_27;
  }

  if (!*(v32 + 16) || (, , !*(v55 + 32)))
  {

    goto LABEL_27;
  }

  v33 = sub_24590E664();
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  v50 = v36;
  v16 = v56;
  v37 = 0xE000000000000000;
  if (v35)
  {
    v37 = v35;
  }

LABEL_28:
  v49 = v37;
  sub_2457934F4(v16, v8);
  if (v27(v8, 1, v22) == 1)
  {
    sub_245793564(v8);
  }

  else
  {
    v38 = sub_24590E514();
    (*(v26 + 8))(v8, v22);
    if (v38)
    {
      if (*(v38 + 16) && (, , *(v55 + 32)))
      {

        sub_24590E664();

        v16 = v56;
      }

      else
      {
      }
    }
  }

  v39 = v51;
  sub_2457934F4(v16, v51);
  if (v27(v39, 1, v22) == 1)
  {
    sub_245793564(v39);
  }

  else
  {
    v40 = sub_24590E514();
    (*(v26 + 8))(v39, v22);
    if (v40)
    {
      if (*(v40 + 16) < 2uLL)
      {
      }

      else
      {

        if (*(v55 + 32))
        {

          sub_24590E664();
        }

        v16 = v56;
      }
    }
  }

  v41 = v16;
  v42 = v54;
  sub_2457934F4(v41, v54);
  if (v27(v42, 1, v22) == 1)
  {
    sub_245793564(v42);
  }

  else
  {
    v43 = sub_24590E514();
    (*(v26 + 8))(v42, v22);
    if (v43)
    {
      if (*(v43 + 16) >= 3uLL && (, , *(v55 + 32)))
      {

        sub_24590E664();
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_245916930;
  v45 = v49;
  *(v44 + 32) = v50;
  *(v44 + 40) = v45;
  v46 = objc_allocWithZone(sub_24590D664());
  v47 = sub_24590D5C4();
  sub_245793564(v56);
  return v47;
}

uint64_t sub_2457920AC()
{
  v1 = sub_24590C234();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2459109B4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v51 = v15;
  v52 = v0;
  v16 = *(v0 + 24);
  v58 = &v49 - v13;
  if (v16 && *(v16 + 16))
  {

    v17 = sub_24588C5BC(0xD000000000000018, 0x8000000245924650);
    if (v18)
    {
      v19 = v17;
      v20 = *(v16 + 56);
      v21 = sub_24590E544();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v58, v20 + *(v22 + 72) * v19, v21);

      (*(v22 + 56))(v58, 0, 1, v21);
      v14 = v58;
      goto LABEL_7;
    }
  }

  v21 = sub_24590E544();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
LABEL_7:
  sub_2457934F4(v14, v12);
  sub_24590E544();
  v23 = *(v21 - 8);
  v59 = *(v23 + 48);
  if (v59(v12, 1, v21) == 1)
  {
    sub_245793564(v12);
  }

  else
  {
    sub_24590E504();
    v25 = v24;
    (*(v23 + 8))(v12, v21);
    if (v25)
    {
      if (*(v52 + 32))
      {

        v26 = sub_24590E664();
        v54 = v27;
        v55 = v26;

        goto LABEL_14;
      }
    }
  }

  v54 = 0;
  v55 = 0;
LABEL_14:
  sub_2457934F4(v14, v9);
  if (v59(v9, 1, v21) == 1)
  {
    sub_245793564(v9);
LABEL_25:
    v29 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_26;
  }

  v28 = sub_24590E534();
  (*(v23 + 8))(v9, v21);
  if (!v28)
  {
    goto LABEL_25;
  }

  if (!*(v28 + 16) || (, , !*(v52 + 32)))
  {

    goto LABEL_25;
  }

  v29 = sub_24590E664();
  v31 = v30;

  if (!v31)
  {
    v29 = 0;
  }

  v32 = 0xE000000000000000;
  if (v31)
  {
    v32 = v31;
  }

LABEL_26:
  v53 = v32;
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v33 = qword_27EE32B38;
  sub_24590C224();
  v57 = sub_245910A54();
  if (sub_2457C1E4C())
  {

    sub_245910944();
    v34 = v33;
    sub_24590C224();
    v57 = sub_245910A54();
  }

  else
  {
    v35 = v51;
    sub_2457934F4(v58, v51);
    if (v59(v35, 1, v21) == 1)
    {
      sub_245793564(v35);
    }

    else
    {
      v50 = v29;
      v36 = sub_24590E514();
      (*(v23 + 8))(v35, v21);
      if (v36)
      {
        if (*(v36 + 16))
        {

          if (!*(v36 + 16))
          {
            goto LABEL_52;
          }

          v57 = *(v36 + 32);

          if (*(v52 + 32))
          {

            v57 = sub_24590E664();
            v39 = v38;

            v40 = v57;
            if (!v39)
            {
              v40 = 0;
            }

            v57 = v40;
          }

          else
          {

            v57 = 0;
          }
        }

        else
        {
        }
      }

      v29 = v50;
    }
  }

  sub_245910944();
  v41 = v33;
  sub_24590C224();
  sub_245910A54();
  v42 = v58;
  v43 = v56;
  sub_2457934F4(v58, v56);
  if (v59(v43, 1, v21) == 1)
  {
    sub_245793564(v43);
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_245916930;
    v46 = v53;
    *(v45 + 32) = v29;
    *(v45 + 40) = v46;
    v47 = objc_allocWithZone(sub_24590D664());
    v48 = sub_24590D5C4();
    sub_245793564(v42);
    return v48;
  }

  v44 = sub_24590E514();
  (*(v23 + 8))(v43, v21);
  if (!v44)
  {
    goto LABEL_50;
  }

  if (*(v44 + 16) < 2uLL)
  {
LABEL_49:

    goto LABEL_50;
  }

  if (*(v44 + 16) >= 2uLL)
  {

    if (*(v52 + 32))
    {

      sub_24590E664();

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_2457929C8()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = *(v0 + 24);
  if (v12 && *(v12 + 16))
  {

    v13 = sub_24588C5BC(0xD000000000000019, 0x8000000245924610);
    if (v14)
    {
      v15 = v13;
      v31 = v3;
      v16 = *(v12 + 56);
      v17 = sub_24590E544();
      v18 = *(v17 - 8);
      v32 = v2;
      v19 = v1;
      v20 = v18;
      v21 = v16 + *(v18 + 72) * v15;
      v3 = v31;
      (*(v18 + 16))(v11, v21, v17);

      (*(v20 + 56))(v11, 0, 1, v17);
      v1 = v19;
      v2 = v32;
      goto LABEL_7;
    }
  }

  v17 = sub_24590E544();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
LABEL_7:
  sub_2457934F4(v11, v9);
  sub_24590E544();
  v22 = *(v17 - 8);
  if ((*(v22 + 48))(v9, 1, v17) == 1)
  {
    sub_245793564(v9);
LABEL_19:
    v29 = objc_allocWithZone(sub_24590D664());
    v30 = sub_24590D5C4();
    sub_245793564(v11);
    return v30;
  }

  v23 = sub_24590E514();
  (*(v22 + 8))(v9, v17);
  if (!v23)
  {
    goto LABEL_19;
  }

  if (!*(v23 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F54();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_245767000, v24, v25, "actions exist for terms and conditions tool bar", v26, 2u);
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  v28 = *(v23 + 16);
  if (v28)
  {
    if (*(v1 + 32))
    {

      sub_24590E664();

      if (*(v23 + 16) >= 2uLL)
      {
        goto LABEL_16;
      }
    }

    else if (v28 >= 2)
    {
LABEL_16:

      if (*(v1 + 32))
      {

        sub_24590E664();

        goto LABEL_19;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_245792F14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = *(v0 + 24);
  if (v16 && *(v16 + 16))
  {

    v17 = sub_24588C5BC(0xD000000000000016, 0x80000002459245F0);
    if (v18)
    {
      v19 = v17;
      v38 = *(v16 + 56);
      v20 = sub_24590E544();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v15, v38 + *(v21 + 72) * v19, v20);

      (*(v21 + 56))(v15, 0, 1, v20);
      goto LABEL_7;
    }
  }

  v20 = sub_24590E544();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
LABEL_7:
  sub_2457934F4(v15, v13);
  sub_24590E544();
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v13, 1, v20);
  v38 = v22;
  if (v24 == 1)
  {
    sub_245793564(v13);
    v37 = 0;
  }

  else
  {
    sub_24590E504();
    v36 = v10;
    v25 = v15;
    v26 = v7;
    v27 = v4;
    v29 = v28;
    (*(v22 + 8))(v13, v20);
    v37 = v29;
    v4 = v27;
    v7 = v26;
    v15 = v25;
    v10 = v36;
  }

  sub_2457934F4(v15, v10);
  if (v23(v10, 1, v20) == 1)
  {
    sub_245793564(v10);
  }

  else
  {
    v30 = sub_24590E534();
    (*(v38 + 8))(v10, v20);
    if (v30)
    {
      if (*(v30 + 16))
      {
        v36 = *(v30 + 32);

        goto LABEL_17;
      }
    }
  }

  v36 = 0;
LABEL_17:
  sub_2457934F4(v15, v7);
  if (v23(v7, 1, v20) == 1)
  {
    sub_245793564(v7);
  }

  else
  {
    v31 = sub_24590E514();
    (*(v38 + 8))(v7, v20);
    if (v31)
    {
      if (*(v31 + 16))
      {
      }
    }
  }

  sub_2457934F4(v15, v4);
  if (v23(v4, 1, v20) == 1)
  {
    sub_245793564(v4);
  }

  else
  {
    sub_24590E524();
    (*(v38 + 8))(v4, v20);
  }

  v32 = objc_allocWithZone(sub_24590D664());
  v33 = sub_24590D5C4();
  sub_245793564(v15);
  return v33;
}

uint64_t sub_245793478()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2457934F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245793564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2457935E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_245793630(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_245793694(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  if ((result & 0x100000000) != 0)
  {

    *v1 = MEMORY[0x277D84F90];
    v10 = v2;
    v11 = 1;
    return v10 | (v11 << 32);
  }

  v4 = *(v3 + 2);
  if (v4 != *(v1 + 8))
  {
LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_24580A074(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_24580A074((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[4 * v6 + 32] = v2;
    *v1 = v3;
    v7 = *(v3 + 2);
    if (!v7)
    {
      v10 = 0;
LABEL_20:
      v11 = v7 == 0;
      return v10 | (v11 << 32);
    }

    if (v7 >= 8)
    {
      v8 = v7 & 0x7FFFFFFFFFFFFFF8;
      v12 = v3 + 48;
      v9 = 0.0;
      v13 = v7 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v9 = (((((((v9 + COERCE_FLOAT(*(v12 - 1))) + COERCE_FLOAT(HIDWORD(*(v12 - 2)))) + COERCE_FLOAT(*(v12 - 1))) + COERCE_FLOAT(HIDWORD(*(v12 - 1)))) + COERCE_FLOAT(*v12)) + COERCE_FLOAT(HIDWORD(*v12))) + COERCE_FLOAT(*(v12 + 1))) + COERCE_FLOAT(HIDWORD(*v12));
        v12 += 32;
        v13 -= 8;
      }

      while (v13);
      if (v7 == v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
    }

    v14 = v7 - v8;
    v15 = &v3[4 * v8 + 32];
    do
    {
      v16 = *v15++;
      v9 = v9 + v16;
      --v14;
    }

    while (v14);
LABEL_19:
    v10 = COERCE_UNSIGNED_INT(v9 / v7);
    goto LABEL_20;
  }

  if (v4)
  {
    sub_24581A490(0, 1);
    v3 = *v1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_245793848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 0)
  {
    sub_24590C714();
    v9 = sub_24590F344();
    v10 = sub_245910F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245767000, v9, v10, "Buffer capacity must be > 0, defaulting to 1", v11, 2u);
      MEMORY[0x245D77B40](v11, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    a1 = 1;
  }

  v12 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = a1;
  a2[2] = v12;
  a2[3] = a1;
  a2[4] = v12;
  a2[5] = a1;
  a2[6] = v12;
  a2[7] = a1;
  a2[8] = v12;
  a2[9] = a1;
  return result;
}

uint64_t sub_2457939B4(uint64_t a1)
{
  v2 = sub_24590CC34();
  sub_245793694(v2 | ((HIDWORD(v2) & 1) << 32));
  sub_24590CC44();
  v3 = sub_24590CC14();
  sub_245793694(v3 | ((HIDWORD(v3) & 1) << 32));
  sub_24590CC24();
  v4 = sub_24590CCB4();
  sub_245793694(v4 | ((HIDWORD(v4) & 1) << 32));
  sub_24590CCC4();
  v5 = sub_24590CC54();
  sub_245793694(v5 | ((HIDWORD(v5) & 1) << 32));
  sub_24590CC64();
  v6 = sub_24590CC74();
  sub_245793694(v6 | ((HIDWORD(v6) & 1) << 32));
  sub_24590CC84();
  return a1;
}

uint64_t sub_245793ACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_245793B14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_245793B60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F78);
  sub_24590C6A4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_245916930;
  sub_24590C654();
  *&v14[0] = v5;
  sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98);
  sub_24579B6F0();
  sub_2459113A4();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v6 = 5;
  if (!*(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow + 8))
  {
    v6 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow);
  }

  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_stableWindow) = v6;
  v7 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel);
  if (*(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel + 4))
  {
    v7 = 0.1;
  }

  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_maxRectTravel) = v7;
  v8 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_previousCorners) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_rectDistances) = v8;
  if (*(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize + 8))
  {
    v9 = 3;
  }

  else
  {
    v9 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize);
  }

  sub_245793848(v9, v14);
  v10 = (v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_selfieConfidences);
  v11 = v14[3];
  v10[2] = v14[2];
  v10[3] = v11;
  v10[4] = v14[4];
  v12 = v14[1];
  *v10 = v14[0];
  v10[1] = v12;
  return v2;
}

uint64_t sub_245793D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v225 = a6;
  v241 = a4;
  v256 = a3;
  v264 = a2;
  v240 = a1;
  v248 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v9 - 8);
  v212 = &v212 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v11 - 8);
  v224 = &v212 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88);
  MEMORY[0x28223BE20](v13 - 8);
  v244 = &v212 - v14;
  v262 = sub_24590F354();
  v261 = *(v262 - 8);
  v15 = MEMORY[0x28223BE20](v262);
  v259 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v215 = &v212 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F80);
  MEMORY[0x28223BE20](v18 - 8);
  v218 = &v212 - v19;
  v220 = sub_24590C934();
  v219 = *(v220 - 8);
  v20 = MEMORY[0x28223BE20](v220);
  v214 = &v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v217 = &v212 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FD0);
  MEMORY[0x28223BE20](v23 - 8);
  v221 = &v212 - v24;
  v222 = sub_24590C384();
  v258 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v260 = &v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90);
  MEMORY[0x28223BE20](v26 - 8);
  v239 = &v212 - v27;
  v235 = sub_24590D284();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v233 = &v212 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_24590D2C4();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v236 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_24590D4B4();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v273 = &v212 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24590C8E4();
  v32 = *(v31 - 8);
  v290 = v31;
  v291 = v32;
  MEMORY[0x28223BE20](v31);
  v289 = &v212 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_24590C5D4();
  v268 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v267 = &v212 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24590C474();
  v285 = *(v35 - 8);
  v286 = v35;
  v36 = MEMORY[0x28223BE20](v35);
  v213 = &v212 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v216 = &v212 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v243 = &v212 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v242 = &v212 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v231 = &v212 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v265 = &v212 - v47;
  MEMORY[0x28223BE20](v46);
  v280 = &v212 - v48;
  v49 = sub_24590D124();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x28223BE20](v49);
  v230 = &v212 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v229 = &v212 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v228 = &v212 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v227 = &v212 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v255 = &v212 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v254 = &v212 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v253 = &v212 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v252 = &v212 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v212 - v67;
  v287 = sub_24590C6A4();
  v276 = *(v287 - 8);
  v69 = MEMORY[0x28223BE20](v287);
  v275 = &v212 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v288 = &v212 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v251 = &v212 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v77 = &v212 - v76;
  MEMORY[0x28223BE20](v75);
  v79 = &v212 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8);
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v212 - v81;
  v223 = sub_24590D2F4();
  v247 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v84 = &v212 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_24590D1B4();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v86 = &v212 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = v7;

  sub_245788C40(a5, v86);

  sub_24590D184();
  (*(v50 + 56))(v82, 0, 1, v49);
  v266 = v84;
  v87 = v285;
  sub_24590D2E4();
  sub_24590D184();
  v274 = v79;
  sub_24590D104();
  v88 = *(v50 + 8);
  v226 = v68;
  v272 = v49;
  v271 = v50 + 8;
  v270 = v88;
  v88(v68, v49);
  v89 = v280;
  v278 = v77;
  v284 = v86;
  sub_24590D154();
  v90 = *(v87 + 104);
  v263 = *MEMORY[0x277CFF308];
  v283 = v87 + 104;
  v282 = v90;
  v90(v89);
  v91 = sub_24579BD68(&qword_27EE28FD8, MEMORY[0x277CFF348]);
  v277 = a5;
  sub_245910BF4();
  v281 = v91;
  v92 = 1;
  sub_245910BF4();
  if (v294 != v292)
  {
    v92 = sub_245911714();
  }

  v94 = *(v87 + 8);
  v93 = v87 + 8;
  v280 = v94;
  (v94)(v89, v286);

  v95 = v287;
  v96 = v276;
  v97 = v251;
  if (v92)
  {
    v98 = v288;
    sub_24590C5F4();
    sub_2457963A4(v97, v98);
    v99 = *(v96 + 8);
    v99(v98, v287);
    v99(v97, v287);
    sub_24590C614();
    sub_2457963A4(v97, v98);
    v99(v98, v287);
    v99(v97, v287);
    sub_24590C604();
    sub_2457963A4(v97, v98);
    v99(v98, v287);
    v99(v97, v287);
    v95 = v287;
  }

  v100 = v265;
  v257 = *MEMORY[0x277CFF310];
  v282(v265);
  sub_245910BF4();
  sub_245910BF4();
  if (v294 == v292)
  {
    (v280)(v100, v286);

    v101 = v278;
  }

  else
  {
    v102 = sub_245911714();
    (v280)(v100, v286);

    v101 = v278;
    if ((v102 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v103 = v288;
  sub_24590C694();
  sub_2457963A4(v97, v103);
  v104 = *(v96 + 8);
  v104(v103, v95);
  v104(v97, v95);
LABEL_9:
  v105 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28FB0, MEMORY[0x277CFF3A8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v105);
  sub_2459118C4();
  v106 = *(v96 + 16);
  v265 = (v96 + 16);
  v232 = v106;
  v106(v97, v101, v95);
  sub_24579BD68(&qword_27EE28E90, v105);
  sub_245911384();
  v107 = v252;
  sub_24590D184();
  v251 = sub_24590D0C4();
  v108 = v107;
  v109 = v272;
  v110 = v270;
  v270(v108, v272);
  v111 = v253;
  sub_24590D184();
  v252 = sub_24590D0B4();
  v110(v111, v109);
  v112 = v254;
  sub_24590D184();
  v253 = sub_24590CFB4();
  v110(v112, v109);
  v113 = v255;
  sub_24590D184();
  v114 = sub_24590D114();
  result = (v110)(v113, v109);
  v285 = v93;
  if (!v114)
  {
LABEL_21:
    v128 = v226;
    sub_24590D184();
    sub_24590CFC4();
    v129 = v272;
    v130 = v270;
    v270(v128, v272);
    v131 = v227;
    sub_24590D184();
    v291 = sub_24590D074();
    LODWORD(v290) = v132;
    v130(v131, v129);
    v133 = v228;
    sub_24590D184();
    v289 = sub_24590D0A4();
    v130(v133, v129);
    v134 = v229;
    sub_24590D184();
    v288 = sub_24590D084();
    v130(v134, v129);
    v135 = v230;
    sub_24590D184();
    sub_24590D0E4();
    v130(v135, v129);
    v296 = 1;
    v294 = 0u;
    v295 = 0u;
    v136 = v267;
    sub_24590C5C4();
    v137 = *(*(v279 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor);
    (*(v234 + 104))(v233, *MEMORY[0x277CFF478], v235);
    v138 = v137;
    v139 = v236;
    sub_24590D2B4();
    v140 = v268;
    v141 = v239;
    v142 = v269;
    (*(v268 + 16))(v239, v136, v269);
    (*(v140 + 56))(v141, 0, 1, v142);
    sub_24590D294();
    sub_245778F94(v141, &qword_27EE28F90);
    (*(v237 + 8))(v139, v238);
    v143 = v231;
    v144 = v286;
    (v282)(v231, v263, v286);
    sub_245910BF4();
    sub_245910BF4();
    if (v292 == v293)
    {
      (v280)(v143, v144);

      v145 = v276;
      v146 = v258;
      v147 = v260;
    }

    else
    {
      v148 = sub_245911714();
      (v280)(v143, v144);

      v145 = v276;
      v146 = v258;
      v147 = v260;
      if ((v148 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v149 = v221;
    sub_24590D474();
    v150 = v222;
    if ((*(v146 + 48))(v149, 1, v222) == 1)
    {
      sub_245778F94(v149, &qword_27EE28FD0);
    }

    else
    {
      (*(v146 + 32))(v147, v149, v150);
      v151 = v218;
      sub_24590C374();
      v152 = v151;
      v153 = v219;
      v154 = v220;
      if ((*(v219 + 48))(v152, 1, v220) == 1)
      {
        (*(v146 + 8))(v147, v150);
        sub_245778F94(v152, &qword_27EE28F80);
      }

      else
      {
        v155 = v217;
        (*(v153 + 32))(v217, v152, v154);

        sub_2457864CC();

        v156 = v215;
        sub_24590C714();
        v157 = v214;
        (*(v153 + 16))(v214, v155, v154);
        v158 = v153;
        v159 = sub_24590F344();
        v160 = sub_245910F54();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = v157;
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          *&v292 = v163;
          *v162 = 136315138;
          v164 = sub_24590C924();
          v165 = v154;
          v166 = v164;
          v168 = v167;
          v169 = *(v158 + 8);
          v169(v161, v165);
          v170 = sub_2458CC378(v166, v168, &v292);
          v144 = v286;

          *(v162 + 4) = v170;
          _os_log_impl(&dword_245767000, v159, v160, "The documentTypeString from PDF417 parsing is %s", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v163);
          MEMORY[0x245D77B40](v163, -1, -1);
          MEMORY[0x245D77B40](v162, -1, -1);

          (*(v261 + 8))(v215, v262);
        }

        else
        {

          v169 = *(v158 + 8);
          v169(v157, v154);
          (*(v261 + 8))(v156, v262);
        }

        v171 = v217;
        sub_24590C924();
        v172 = sub_245910A84();
        v174 = v173;

        v175 = MEMORY[0x245D723D0](v172, v174);
        sub_24587954C(v175);

        v169(v171, v220);
        (*(v258 + 8))(v260, v222);
      }
    }

LABEL_32:
    v176 = v242;
    (v282)(v242, v257, v144);
    sub_245910BF4();
    sub_245910BF4();
    if (v292 == v293)
    {
      (v280)(v176, v144);
    }

    else
    {
      v177 = sub_245911714();
      (v280)(v176, v144);

      if ((v177 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v178 = sub_24590D494();
    swift_beginAccess();
    v179 = sub_2457939B4(v178);
    swift_endAccess();
    v180 = v179;

    sub_24590D4A4();
LABEL_36:
    v181 = sub_24590D494();
    v182 = v244;
    v183 = v287;
    v184 = v232;
    v232(v244, v274, v287);
    v291 = *(v145 + 56);
    (v291)(v182, 0, 1, v183);
    v185 = sub_24590CD14();

    sub_245778F94(v182, &qword_27EE28F88);
    v186 = v185;
    sub_24590D1A4();
    sub_24590D2D4();
    v290 = v186;

    v187 = sub_24590D494();
    v188 = v278;
    v184(v182, v278, v183);
    (v291)(v182, 0, 1, v183);
    v189 = sub_24590CD14();

    sub_245778F94(v182, &qword_27EE28F88);
    sub_24590E9B4();
    sub_24590CBD4();
    sub_24590D134();
    sub_24590CBB4();
    sub_24590CB84();
    v190 = v243;
    v191 = v286;
    (v282)(v243, *MEMORY[0x277CFF318], v286);
    v192 = v277;
    sub_245910BF4();
    sub_245910BF4();
    if (v292 == v293)
    {
      (v280)(v190, v191);

      v193 = v225;
      v194 = v224;
    }

    else
    {
      v195 = sub_245911714();
      (v280)(v190, v191);

      v193 = v225;
      v194 = v224;
      if ((v195 & 1) == 0)
      {
        v196 = v216;
        (v282)(v216, v263, v191);
        sub_245910BF4();
        sub_245910BF4();
        if (v292 == v293)
        {
          (v280)(v196, v191);
        }

        else
        {
          v197 = sub_245911714();
          (v280)(v196, v191);

          if ((v197 & 1) == 0)
          {
            v207 = v213;
            (v282)(v213, v257, v191);
            sub_245910BF4();
            sub_245910BF4();
            if (v292 == v293)
            {
              (v280)(v207, v191);

              v200 = v276;
              v201 = v223;
              v202 = v290;
            }

            else
            {
              v208 = sub_245911714();
              (v280)(v207, v191);

              v200 = v276;
              v201 = v223;
              v202 = v290;
              if ((v208 & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            v209 = v212;
            sub_245778F2C(v256, v212, &qword_27EE28F98);
            v210 = sub_24590C814();
            v211 = *(v210 - 8);
            if ((*(v211 + 48))(v209, 1, v210) == 1)
            {
              sub_245778F94(v209, &qword_27EE28F98);
            }

            else
            {
              v291 = sub_24590C7D4();
              (*(v211 + 8))(v209, v210);
            }

            v188 = v278;
LABEL_46:
            sub_24590CB94();
LABEL_47:

            sub_245782894(v189, v192, v193 & 1);

            v203 = v259;
            v204 = sub_24590C714();
            MEMORY[0x28223BE20](v204);
            sub_24590F334();

            (*(v261 + 8))(v203, v262);
            (*(v249 + 8))(v273, v250);
            (*(v268 + 8))(v267, v269);
            v205 = *(v200 + 8);
            v206 = v287;
            v205(v275, v287);
            v205(v188, v206);
            v205(v274, v206);
            (*(v247 + 8))(v266, v201);
            return (*(v245 + 8))(v284, v246);
          }
        }
      }
    }

    sub_245778F2C(v264, v194, &qword_27EE28FA0);
    v198 = sub_24590C454();
    v199 = *(v198 - 8);
    if ((*(v199 + 48))(v194, 1, v198) == 1)
    {
      sub_245778F94(v194, &qword_27EE28FA0);
    }

    else
    {
      sub_24590C424();
      (*(v199 + 8))(v194, v198);
    }

    v200 = v276;
    v188 = v278;
    v201 = v223;
    v202 = v290;
    goto LABEL_46;
  }

  v116 = *(v114 + 16);
  if (!v116)
  {
LABEL_20:

    goto LABEL_21;
  }

  v117 = 0;
  v288 = (v291 + 16);
  v118 = MEMORY[0x277D84F90];
  while (v117 < *(v114 + 16))
  {
    v119 = v290;
    v120 = v291;
    v121 = v289;
    (*(v291 + 16))(v289, v114 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v117, v290);
    v122 = sub_24590C8D4();
    v124 = v123;
    (*(v120 + 8))(v121, v119);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24580A178(0, *(v118 + 16) + 1, 1, v118);
      v118 = result;
    }

    v126 = *(v118 + 16);
    v125 = *(v118 + 24);
    if (v126 >= v125 >> 1)
    {
      result = sub_24580A178((v125 > 1), v126 + 1, 1, v118);
      v118 = result;
    }

    ++v117;
    *(v118 + 16) = v126 + 1;
    v127 = v118 + 16 * v126;
    *(v127 + 32) = v122;
    *(v127 + 40) = v124;
    if (v116 == v117)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2457963A4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FC0);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_24590C6A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CFF3A8];
  v25 = sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
  sub_245911374();
  v17 = v16;
  v18 = v28;
  sub_24579BD68(&qword_27EE28FC8, v17);
  v26 = a2;
  v19 = sub_245910934();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_245911384();
  }

  v22 = v29;
  sub_24577ABC4(v7, v29, &qword_27EE28FC0);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_2457966A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a4;
  v101 = a3;
  v86 = a2;
  v88 = a1;
  v91 = a5;
  v6 = sub_24590F354();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v69 - v15;
  v76 = sub_24590D284();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24590D2C4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_24590D4B4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v99 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24590D124();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24590C6A4();
  v102 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v97 = &v69 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v103 = &v69 - v30;
  MEMORY[0x28223BE20](v29);
  v104 = &v69 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v69 - v33;
  v85 = sub_24590D2F4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v100 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24590D1B4();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v5;

  sub_245788C40(v101, v37);

  sub_24590D184();
  (*(v20 + 56))(v34, 0, 1, v19);
  sub_24590D2E4();
  v98 = v37;
  sub_24590D184();
  sub_24590D104();
  (*(v20 + 8))(v22, v19);
  v38 = v103;
  sub_24590D154();
  v39 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28FB0, MEMORY[0x277CFF3A8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v39);
  sub_2459118C4();
  v71 = v102[2];
  v96 = v102 + 2;
  v71(v26, v38, v23);
  sub_24579BD68(&qword_27EE28E90, v39);
  sub_245911384();
  v40 = *(*(v5 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor);
  (*(v75 + 104))(v74, *MEMORY[0x277CFF478], v76);
  v41 = v40;
  v42 = v73;
  sub_24590D2B4();
  v43 = sub_24590C454();
  v44 = v77;
  (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
  v45 = sub_24590C814();
  v46 = *(v45 - 8);
  v47 = v78;
  (*(v46 + 16))(v78, v86, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v48 = sub_24590C5D4();
  v49 = v81;
  (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
  sub_24590D294();
  sub_245778F94(v49, &qword_27EE28F90);
  sub_245778F94(v47, &qword_27EE28F98);
  sub_245778F94(v44, &qword_27EE28FA0);
  (*(v79 + 8))(v42, v80);
  v50 = sub_24590D494();
  v51 = v87;
  v52 = v23;
  v70 = v23;
  v53 = v23;
  v54 = v71;
  v71(v87, v104, v53);
  v55 = v102[7];
  v55(v51, 0, 1, v52);
  v56 = sub_24590CD14();

  sub_245778F94(v51, &qword_27EE28F88);
  v57 = v56;
  sub_24590D1A4();
  sub_24590D2D4();

  v58 = sub_24590D494();
  v59 = v51;
  v60 = v51;
  v61 = v70;
  v54(v60, v103, v70);
  v55(v59, 0, 1, v61);
  v62 = sub_24590CD14();

  sub_245778F94(v59, &qword_27EE28F88);
  sub_24590E9B4();
  sub_24590CBD4();
  v63 = v98;
  sub_24590D134();
  sub_24590CBB4();
  sub_24590CB84();

  v64 = v101;
  v65 = v93;
  sub_24578329C(v62, v101, v93);

  v66 = v92;
  sub_24590C714();
  v105 = v64;
  v106 = v65;
  v107 = v62;
  sub_24590F334();

  (*(v94 + 8))(v66, v95);
  (*(v89 + 8))(v99, v90);
  v67 = v102[1];
  v67(v97, v61);
  v67(v103, v61);
  v67(v104, v61);
  (*(v84 + 8))(v100, v85);
  return (*(v82 + 8))(v63, v83);
}

uint64_t sub_245797370(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2459114D4();
  v4 = sub_24590C464();

  MEMORY[0x245D76160](0xD00000000000001ALL, 0x80000002459249D0);
  v5 = sub_2459116E4();
  MEMORY[0x245D76160](v5);

  MEMORY[0x245D76160](2618, 0xE200000000000000);
  v6 = [a3 debugDescription];
  v7 = sub_245910A04();
  v9 = v8;

  MEMORY[0x245D76160](v7, v9);

  return v4;
}

uint64_t sub_24579748C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = sub_24590F354();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v37 = sub_24590D2F4();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24590D1B4();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v38 = a1;
  sub_245788C40(a1, v14);

  sub_24590D184();
  v15 = sub_24590D124();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_24590D2E4();
  v16 = [objc_allocWithZone(sub_24590CD34()) init];
  if (sub_24590C7C4())
  {
  }

  sub_24590CCF4();
  v17 = sub_24590C7C4();
  if (v17)
  {
    if (*(v17 + 16))
    {

      sub_24590C804();
      if ((v43 & 1) == 0)
      {
        v57.origin.x = 0.0;
        v57.origin.y = 0.0;
        v57.size.width = 0.0;
        v57.size.height = 0.0;
        if (!CGRectEqualToRect(v42, v57))
        {
          sub_245911184();
          sub_245911184();
          LOBYTE(v44) = 0;
          sub_24590CB64();
        }
      }
    }

    else
    {
    }
  }

  sub_24590C804();
  if ((v48 & 1) == 0)
  {
    v19 = v44;
    v18 = v45;
    v20 = v46;
    v21 = v47;
    v22 = sub_24590C7C4();
    if (v22)
    {
      if (*(v22 + 2))
      {
        v24 = v22[4];
        v23 = v22[5];
        v25 = v22[6];
        v34 = v22[7];

        v49.origin.x = v19;
        v49.origin.y = v18;
        v49.size.width = v20;
        v49.size.height = v21;
        CGRectGetMinX(v49);
        v33 = v19;
        v50.origin.x = v24;
        v35 = v24;
        v50.origin.y = v23;
        v50.size.width = v25;
        v26 = v25;
        v27 = v34;
        v50.size.height = v34;
        CGRectGetMinX(v50);
        v41 = 0;
        sub_24590CD24();
        v51.origin.x = v24;
        v51.origin.y = v23;
        v28 = v23;
        v51.size.width = v26;
        v51.size.height = v27;
        CGRectGetMaxX(v51);
        v29 = v33;
        v52.origin.x = v33;
        v52.origin.y = v18;
        v52.size.width = v20;
        v52.size.height = v21;
        CGRectGetMaxX(v52);
        v41 = 0;
        sub_24590CB74();
        v53.origin.x = v35;
        v53.origin.y = v28;
        v53.size.width = v26;
        v53.size.height = v27;
        CGRectGetMaxY(v53);
        v54.origin.x = v29;
        v54.origin.y = v18;
        v54.size.width = v20;
        v54.size.height = v21;
        CGRectGetMaxY(v54);
        v41 = 0;
        sub_24590CCE4();
        v55.origin.x = v29;
        v55.origin.y = v18;
        v55.size.width = v20;
        v55.size.height = v21;
        CGRectGetMinY(v55);
        v56.origin.x = v35;
        v56.origin.y = v28;
        v56.size.width = v26;
        v56.size.height = v34;
        CGRectGetMinY(v56);
        v41 = 0;
        sub_24590CD04();
      }

      else
      {
      }
    }
  }

  v30 = sub_24590C714();
  MEMORY[0x28223BE20](v30);
  *(&v33 - 2) = v38;
  *(&v33 - 1) = v16;
  sub_24590F334();
  (*(v3 + 8))(v5, v39);
  v31 = v16;
  sub_24590D1A4();
  sub_24590D2D4();

  (*(v9 + 8))(v11, v37);
  return (*(v12 + 8))(v14, v36);
}

uint64_t sub_245797AC4(uint64_t a1, void *a2)
{
  sub_2459114D4();
  v3 = sub_24590C464();

  MEMORY[0x245D76160](0xD000000000000016, 0x80000002459249B0);
  v4 = [a2 debugDescription];
  v5 = sub_245910A04();
  v7 = v6;

  MEMORY[0x245D76160](v5, v7);

  return v3;
}

uint64_t sub_245797B94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v140 = a3;
  v116 = a2;
  v132 = a1;
  v123 = a4;
  v130 = sub_24590F354();
  v139 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24590E9D4();
  v126 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v133 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = v100 - v9;
  v125 = sub_24590D2F4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v131 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = v100 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90);
  MEMORY[0x28223BE20](v13 - 8);
  v113 = v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v15 - 8);
  v110 = v100 - v16;
  v108 = sub_24590D284();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24590D2C4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v105 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_24590D4B4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v138 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24590D124();
  v104 = *(v137 - 8);
  v20 = v104;
  v21 = MEMORY[0x28223BE20](v137);
  v101 = v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v100 - v23;
  v25 = sub_24590C6A4();
  v103 = *(v25 - 8);
  v26 = v103;
  v27 = MEMORY[0x28223BE20](v25);
  v115 = (v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v109 = v100 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v134 = v100 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v100 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v100 - v36;
  v119 = sub_24590D1B4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v39 = v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_245788C40(v140, v39);

  v129 = v39;
  sub_24590D184();
  v136 = v37;
  sub_24590D104();
  v40 = *(v20 + 8);
  v100[1] = v20 + 8;
  v100[0] = v40;
  v40(v24, v137);
  v135 = v35;
  sub_24590D154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F78);
  v41 = *(v26 + 72);
  v42 = v103;
  v43 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_245916CE0;
  v45 = v44 + v43;
  v46 = v42[2];
  v46(v45, v35, v25);
  v127 = v5;
  v46(v45 + v41, (v5 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_detectCornersFlags), v25);
  v143 = v44;
  v47 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98);
  sub_24579B6F0();
  v48 = v109;
  sub_2459113A4();
  sub_24579BD68(&qword_27EE28FB0, v47);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v47);
  sub_2459118C4();
  v102 = v42 + 2;
  v46(v115, v48, v25);
  sub_245911384();
  v49 = v42[1];
  v109 = (v42 + 1);
  v115 = v49;
  v49(v48, v25);
  v50 = *(*(v5 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor);
  (*(v107 + 104))(v106, *MEMORY[0x277CFF478], v108);
  v51 = v50;
  v52 = v105;
  sub_24590D2B4();
  v53 = sub_24590C814();
  v54 = v110;
  (*(*(v53 - 8) + 56))(v110, 1, 1, v53);
  v55 = sub_24590C5D4();
  v56 = v113;
  (*(*(v55 - 8) + 56))(v113, 1, 1, v55);
  sub_24590D294();
  sub_245778F94(v56, &qword_27EE28F90);
  sub_245778F94(v54, &qword_27EE28F98);
  (*(v111 + 8))(v52, v112);
  v57 = sub_24590D494();
  v58 = v114;
  v46(v114, v135, v25);
  v59 = v46;
  v60 = v42[7];
  v60(v58, 0, 1, v25);
  v61 = sub_24590CD14();

  sub_245778F94(v58, &qword_27EE28F88);
  v62 = sub_24590D494();
  v59(v58, v136, v25);
  v63 = v131;
  v60(v58, 0, 1, v25);
  v64 = v63;
  v65 = sub_24590CD14();

  v66 = v129;
  sub_245778F94(v58, &qword_27EE28F88);
  v67 = v117;
  sub_24590D184();
  (*(v104 + 56))(v67, 0, 1, v137);
  sub_24590D2E4();
  v68 = v65;
  sub_24590D1A4();
  v69 = v133;
  sub_24590D2D4();

  v70 = v69;

  sub_24590E9B4();
  sub_24590CBD4();
  sub_24590D134();
  sub_24590CBB4();
  sub_24590CB84();

  v71 = v140;
  sub_245782894(v61, v140, 1);

  v72 = v128;
  sub_24590C714();
  v141 = v71;
  v142 = v61;
  sub_24590F334();
  v73 = *(v139 + 8);
  v139 += 8;
  v73(v72, v130);
  v74 = v138;
  v75 = sub_24590D494();
  v76 = sub_24590CC04();

  if (!v76)
  {

    (*(v124 + 8))(v64, v125);
    (*(v120 + 8))(v74, v121);
    v97 = v115;
    v115(v134, v25);
    v97(v135, v25);
    v97(v136, v25);
    (*(v118 + 8))(v66, v119);
    v98 = type metadata accessor for IDCornersResult(0);
    v99 = v123;
    result = (*(v126 + 32))(v123 + *(v98 + 20), v70, v122);
    *v99 = MEMORY[0x277D84F90];
    *(v99 + *(v98 + 24)) = 0;
    return result;
  }

  v117 = v68;
  v77 = [objc_opt_self() sharedInstance];
  v78 = v123;
  if (v77)
  {
    v79 = v77;
    v80 = [v77 voiceOverEnabled];

    if (v80)
    {
      if (v76 >> 62)
      {
        if (!sub_245911424())
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        sub_24579B754(v133);
      }
    }
  }

LABEL_7:
  v81 = v128;
  v82 = sub_24590C714();
  MEMORY[0x28223BE20](v82);
  v100[-2] = v140;
  v100[-1] = v76;
  sub_24590F334();
  v73(v81, v130);
  [v132 extent];
  v87 = sub_24579B944(v76, v83, v84, v85, v86);
  v88 = v101;
  v89 = v129;
  sub_24590D184();
  v90 = sub_24590D094();
  (v100[0])(v88, v137);
  if (v90 == 2 || (v90 & 1) == 0)
  {
    v94 = sub_24579B294(v76);

    (*(v124 + 8))(v131, v125);
    (*(v120 + 8))(v138, v121);
    v95 = v115;
    v115(v134, v25);
    v95(v135, v25);
    v95(v136, v25);
    (*(v118 + 8))(v89, v119);
    v96 = type metadata accessor for IDCornersResult(0);
    result = (*(v126 + 32))(&v78[*(v96 + 20)], v133, v122);
    *v78 = v87;
    v78[*(v96 + 24)] = v94 & 1;
  }

  else
  {

    (*(v124 + 8))(v131, v125);
    (*(v120 + 8))(v138, v121);
    v91 = v115;
    v115(v134, v25);
    v91(v135, v25);
    v91(v136, v25);
    (*(v118 + 8))(v89, v119);
    v92 = type metadata accessor for IDCornersResult(0);
    result = (*(v126 + 32))(&v78[*(v92 + 20)], v133, v122);
    *v78 = v87;
    v78[*(v92 + 24)] = 1;
  }

  return result;
}

uint64_t sub_245798D64(uint64_t a1, void *a2)
{
  sub_24590C474();
  sub_2459115C4();
  MEMORY[0x245D76160](0x7363697274656D20, 0xEB000000000A203ALL);
  v3 = [a2 debugDescription];
  v4 = sub_245910A04();
  v6 = v5;

  MEMORY[0x245D76160](v4, v6);

  return 0;
}

uint64_t sub_245798E34(uint64_t a1, uint64_t a2)
{
  sub_2459114D4();
  sub_24590C474();
  sub_2459115C4();
  MEMORY[0x245D76160](0xD000000000000013, 0x8000000245924990);
  v3 = sub_24590EA14();
  v4 = MEMORY[0x245D762C0](a2, v3);
  MEMORY[0x245D76160](v4);

  return 0;
}

char *sub_245798EF8(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, uint64_t), uint64_t a3)
{
  v130 = a3;
  v136 = a2;
  v141 = a1;
  v146 = sub_24590F354();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88);
  MEMORY[0x28223BE20](v4 - 8);
  v140 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v8 - 8);
  v132 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v104 - v11;
  v128 = sub_24590D284();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24590D2C4();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_24590D4B4();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v158 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590C5D4();
  v152 = *(v15 - 8);
  v153 = v15;
  MEMORY[0x28223BE20](v15);
  v151 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_24590D124();
  v17 = *(v147 - 1);
  v18 = MEMORY[0x28223BE20](v147);
  v115 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v114 = &v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v113 = &v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v112 = &v104 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v111 = &v104 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v104 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v104 - v30;
  v148 = sub_24590C6A4();
  v149 = *(v148 - 8);
  v32 = MEMORY[0x28223BE20](v148);
  v155 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v150 = &v104 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v107 = &v104 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v156 = &v104 - v39;
  MEMORY[0x28223BE20](v38);
  v157 = &v104 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v104 - v42;
  v139 = sub_24590D2F4();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v154 = &v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24590C474();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_24590D1B4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v50 = &v104 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *MEMORY[0x277CFF338];
  v51 = *(v46 + 104);
  v121 = v46 + 104;
  v122 = v51;
  v117 = v45;
  v51(v48);

  v116 = v48;
  sub_245788C40(v48, v50);

  v52 = *(v46 + 8);
  v118 = v46 + 8;
  v119 = v52;
  v52(v48, v45);
  sub_24590D184();
  v53 = v147;
  (*(v17 + 56))(v43, 0, 1, v147);
  sub_24590D2E4();
  v105 = v31;
  sub_24590D184();
  sub_24590D104();
  v54 = *(v17 + 8);
  v106 = v17 + 8;
  v54(v31, v53);
  v55 = v156;
  sub_24590D154();
  v56 = v150;
  sub_24590C684();
  v57 = v107;
  sub_2457963A4(v107, v56);
  v58 = v149;
  v59 = v149[1];
  v123 = v59;
  v124 = (v149 + 1);
  v60 = v56;
  v61 = v148;
  v59(v60, v148);
  v59(v57, v61);
  v62 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28FB0, MEMORY[0x277CFF3A8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v62);
  sub_2459118C4();
  v110 = v58[2];
  v150 = (v58 + 2);
  v110(v57, v55, v61);
  sub_24579BD68(&qword_27EE28E90, v62);
  sub_245911384();
  v63 = v105;
  sub_24590D184();
  v107 = sub_24590D0C4();
  v64 = v147;
  v54(v63, v147);
  v65 = v109;
  sub_24590D184();
  sub_24590D0B4();
  v54(v65, v64);
  v66 = v111;
  sub_24590D184();
  sub_24590CFC4();
  v54(v66, v64);
  v67 = v112;
  sub_24590D184();
  v111 = sub_24590D074();
  LODWORD(v109) = v68;
  v54(v67, v64);
  v69 = v113;
  sub_24590D184();
  v112 = sub_24590D0A4();
  v54(v69, v64);
  v70 = v114;
  v108 = v50;
  sub_24590D184();
  v113 = sub_24590D084();
  v54(v70, v64);
  v71 = v115;
  sub_24590D184();
  sub_24590D0E4();
  v54(v71, v64);
  v72 = v151;
  sub_24590C5C4();
  v73 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v147 = [v73 initWithCVPixelBuffer_];
  (*(v127 + 104))(v126, *MEMORY[0x277CFF478], v128);
  [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
  v74 = v125;
  sub_24590D2B4();
  v75 = sub_24590C454();
  v76 = v129;
  (*(*(v75 - 8) + 56))(v129, 1, 1, v75);
  v77 = sub_24590C814();
  v78 = v132;
  (*(*(v77 - 8) + 56))(v132, 1, 1, v77);
  v79 = v152;
  v80 = v137;
  v81 = v72;
  v82 = v153;
  (*(v152 + 16))(v137, v81, v153);
  (*(v79 + 56))(v80, 0, 1, v82);
  sub_24590D294();
  sub_245778F94(v80, &qword_27EE28F90);
  sub_245778F94(v78, &qword_27EE28F98);
  sub_245778F94(v76, &qword_27EE28FA0);
  (*(v131 + 8))(v74, v133);
  v83 = sub_24590D484();
  v84 = MEMORY[0x277D84F90];
  if (v83)
  {
    v84 = v83;
  }

  v137 = v84;
  v85 = sub_24590D494();
  v86 = v140;
  v87 = v148;
  v88 = v110;
  v110(v140, v157, v148);
  v136 = v149[7];
  v136(v86, 0, 1, v87);
  v89 = sub_24590CD14();

  sub_245778F94(v86, &qword_27EE28F88);
  v90 = v89;
  v149 = v90;
  v91 = v108;
  sub_24590D1A4();
  sub_24590D2D4();

  v92 = sub_24590D494();
  v88(v86, v156, v87);
  v136(v86, 0, 1, v87);
  v93 = sub_24590CD14();

  sub_245778F94(v86, &qword_27EE28F88);
  sub_24590E9B4();
  sub_24590CBD4();
  sub_24590D134();
  sub_24590CBB4();
  sub_24590CB84();
  v94 = v116;
  v95 = v117;
  v122(v116, v120, v117);

  sub_245782894(v93, v94, 0);

  v119(v94, v95);
  v96 = v144;
  sub_24590C714();
  v97 = v137;
  v160 = v137;
  sub_24590F334();
  v98 = *(v145 + 8);
  v99 = v146;
  v98(v96, v146);
  sub_24590C714();
  v159 = v93;
  sub_24590F334();

  v98(v96, v99);
  (*(v142 + 8))(v158, v143);
  (*(v152 + 8))(v151, v153);
  v100 = v87;
  v101 = v87;
  v102 = v123;
  v123(v155, v101);
  v102(v156, v100);
  v102(v157, v100);
  (*(v138 + 8))(v154, v139);
  (*(v134 + 8))(v91, v135);
  return v97;
}

unint64_t sub_24579A248(uint64_t a1)
{
  sub_2459114D4();

  v2 = sub_24590CA04();
  v3 = MEMORY[0x245D762C0](a1, v2);
  MEMORY[0x245D76160](v3);

  return 0xD000000000000010;
}

unint64_t sub_24579A2D4(void *a1)
{
  sub_2459114D4();

  v2 = [a1 debugDescription];
  v3 = sub_245910A04();
  v5 = v4;

  MEMORY[0x245D76160](v3, v5);

  return 0xD000000000000012;
}

uint64_t sub_24579A384()
{
  v1 = sub_24590F354();
  v68 = *(v1 - 8);
  v69 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v66 = &v52 - v4;
  v55 = sub_24590D284();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590D2C4();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590C934();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0);
  MEMORY[0x28223BE20](v63);
  v62 = (&v52 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v52 - v14;
  v15 = sub_24590C474();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24590D1B4();
  v19 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24590C6A4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - v27;
  v65 = v0;
  (*(v16 + 104))(v18, *MEMORY[0x277CFF308], v15);

  sub_245788C40(v18, v21);

  (*(v16 + 8))(v18, v15);
  sub_24590D154();
  (*(v19 + 8))(v21, v71);
  sub_24590C5E4();
  sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8]);
  v70 = v28;
  v29 = sub_245911364();
  v30 = *(v23 + 8);
  v31 = v22;
  v71 = v23 + 8;
  v30(v26, v22);
  if (v29)
  {

    v33 = v62;
    v32 = v63;
    sub_245911044();

    v34 = *v33;
    v35 = v67;
    sub_24577ABC4(v33 + *(v32 + 48), v67, &qword_27EE28F80);
    v37 = v68;
    v36 = v69;
    v38 = v66;
    if (v34)
    {
      v39 = v59;
      sub_245778F2C(v35, v59, &qword_27EE28F80);
      v40 = v60;
      v41 = v61;
      if ((*(v60 + 48))(v39, 1, v61) != 1)
      {
        v47 = v54;
        (*(v40 + 32))(v54, v39, v41);
        (*(v53 + 104))(v56, *MEMORY[0x277CFF478], v55);
        [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
        v48 = v52;
        sub_24590D2B4();
        v49 = v40;
        v50 = sub_24590D2A4();
        (*(v57 + 8))(v48, v58);

        sub_245783DDC(v50);

        (*(v49 + 8))(v47, v41);
        v45 = v67;
LABEL_10:
        sub_245778F94(v45, &qword_27EE28F80);
        return (v30)(v70, v31);
      }

      sub_245778F94(v39, &qword_27EE28F80);
      v35 = v67;
    }

    sub_24590C714();
    v42 = sub_24590F344();
    v43 = sub_245910F54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_245767000, v42, v43, "Could not perform fuzzy matching, repository did not contain fuzzy match items", v44, 2u);
      MEMORY[0x245D77B40](v44, -1, -1);
    }

    (*(v37 + 8))(v38, v36);
    v45 = v35;
    goto LABEL_10;
  }

  v46 = v64;
  sub_24590C714();
  sub_24590F334();
  (*(v68 + 8))(v46, v69);
  return (v30)(v70, v31);
}

uint64_t sub_24579AC34(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_24590EA74();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0xD000000000000021;
  v29 = 0x8000000245924820;
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277CFF340])
  {
    v12 = 0x616353746E6F7266;
    v13 = 0xEA00000000002E6ELL;
    goto LABEL_11;
  }

  if (v11 == *MEMORY[0x277CFF328])
  {
    v12 = 0x6E6163536B636162;
LABEL_5:
    v13 = 0xE90000000000002ELL;
    goto LABEL_11;
  }

  if (v11 == *MEMORY[0x277CFF318])
  {
    v12 = 0x2E4449746E6F7266;
    v13 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (v11 == *MEMORY[0x277CFF308])
  {
    v14 = 0x44496B636162;
LABEL_10:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
    v13 = 0xE700000000000000;
    goto LABEL_11;
  }

  if (v11 != *MEMORY[0x277CFF310])
  {
    if (v11 == *MEMORY[0x277CFF330] || v11 == *MEMORY[0x277CFF320])
    {
      v12 = 0x7373656E6576696CLL;
    }

    else
    {
      if (v11 != *MEMORY[0x277CFF338])
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_2459114D4();
        MEMORY[0x245D76160](0xD000000000000032, 0x8000000245924850);
        sub_2459115C4();
        v23[1] = v26;
        v18 = v30;
        (*(v24 + 104))(v30, *MEMORY[0x277CFF9C0], v25);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_24579BD68(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();
        (*(v8 + 8))(v10, v7);
        return v18;
      }

      v12 = 0x74726F7073736170;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    v14 = 0x6569666C6573;
    goto LABEL_10;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_2459114D4();

  v12 = 0x632E6569666C6573;
  v13 = 0xEF2E6D7269666E6FLL;
LABEL_11:
  v26 = v12;
  v27 = v13;
  v15 = sub_24590E9B4();
  MEMORY[0x245D76160](v15);

  MEMORY[0x245D76160](v26, v27);

  v17 = v28;
  v16 = v29;

  v18 = sub_24586C880(v17, v16);
  v20 = v19;

  if (v20)
  {
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2459114D4();
    MEMORY[0x245D76160](0xD000000000000031, 0x80000002459248E0);
    MEMORY[0x245D76160](v17, v16);

    v18 = v26;
    (*(v24 + 104))(v30, *MEMORY[0x277CFF988], v25);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579BD68(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_24579B294(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (sub_245911424() != 4)
  {
    return 0;
  }

LABEL_3:
  v3 = OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_previousCorners;
  v4 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_previousCorners);

  v5 = sub_24579BB50(a1, v4);

  v6 = OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_rectDistances;
  v7 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_rectDistances);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24580A074(0, *(v7 + 2) + 1, 1, v7);
    *(v1 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24580A074((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  *&v7[4 * v10 + 32] = v5;
  *(v1 + v6) = v7;
  *(v1 + v3) = a1;

  result = *(v1 + v6);
  v12 = *(result + 16);
  v13 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_stableWindow);
  v14 = v12 - v13;
  if (v12 < v13)
  {
    return 0;
  }

  if (__OFSUB__(v12, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v12 >= v14)
      {
        sub_24581A490(0, v14);
        result = *(v1 + v6);
        goto LABEL_14;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  v15 = sub_24579B450(result);
  v16 = *&v15;
  if ((v15 & 0x100000000) != 0)
  {
    v16 = 1.0;
  }

  return v16 <= *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_maxRectTravel);
}

unint64_t sub_24579B450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_24579B4A8()
{

  v1 = OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_detectCornersFlags;
  v2 = sub_24590C6A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageQualityManager()
{
  result = qword_27EE28F68;
  if (!qword_27EE28F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24579B61C()
{
  result = sub_24590C6A4();
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

unint64_t sub_24579B6F0()
{
  result = qword_27EE28EA0;
  if (!qword_27EE28EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28EA0);
  }

  return result;
}

void sub_24579B754(uint64_t a1)
{
  v2 = sub_24590E9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277CFF848])
  {
    if (v6 != *MEMORY[0x277CFF7E0] && v6 != *MEMORY[0x277CFF7F0] && v6 != *MEMORY[0x277CFF800] && v6 != *MEMORY[0x277CFF818] && v6 != *MEMORY[0x277CFF7D8] && v6 != *MEMORY[0x277CFF7F8])
    {
      (*(v3 + 8))(v5, v2);
      return;
    }

    v14 = [objc_opt_self() sharedManager];
    if (v14)
    {
      v8 = v14;
      [v14 playHapticFeedbackForType_];
      goto LABEL_23;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = [objc_opt_self() sharedManager];
  if (!v7)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  [v7 playHapticFeedbackForType_];
LABEL_23:
}

_OWORD *sub_24579B944(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 >> 62)
  {
    v10 = sub_245911424();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v10 == 4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_24577CC94(0, 4, 0);
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x245D76B30](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      sub_24590EA04();
      v26 = v15;
      v28.origin.x = a2;
      v28.origin.y = a3;
      v28.size.width = a4;
      v28.size.height = a5;
      Width = CGRectGetWidth(v28);
      sub_24590E9F4();
      v24 = v16;
      v29.origin.x = a2;
      v29.origin.y = a3;
      v29.size.width = a4;
      v29.size.height = a5;
      Height = CGRectGetHeight(v29);

      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24577CC94((v17 > 1), v18 + 1, 1);
      }

      ++v12;
      v19.f64[0] = Width;
      *(v27 + 16) = v18 + 1;
      v19.f64[1] = Height;
      *(v27 + 16 * v18 + 32) = vmulq_f64(v19, vcvtq_f64_f32(__PAIR64__(v24, v26)));
    }

    while (v12 != 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C68);
    result = swift_allocObject();
    result[1] = xmmword_245916CF0;
    if (v18)
    {
      result[2] = *(v27 + 48);
      if (v18 != 1)
      {
        result[3] = *(v27 + 64);
        if (v18 >= 3)
        {
          result[4] = *(v27 + 80);
          v20 = *(v27 + 32);
          v21 = *(v27 + 40);
          v22 = result;

          result = v22;
          *(v22 + 10) = v20;
          *(v22 + 11) = v21;
          return result;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

float sub_24579BB50(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 1.0;
  if (v4 == 4)
  {
    if (a2 >> 62)
    {
      if (sub_245911424() == 4)
      {
        goto LABEL_6;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
LABEL_6:
      v6 = a1 & 0xC000000000000001;
      v7 = a2 & 0xC000000000000001;
      v5 = 0.0;
      for (i = 4; i != 8; ++i)
      {
        v14 = i - 4;
        if (v6)
        {
          v15 = MEMORY[0x245D76B30](i - 4, a1);
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v4 = sub_245911424();
            goto LABEL_3;
          }

          v15 = *(a1 + 8 * i);
        }

        v16 = v15;
        sub_24590E9F4();
        v18 = v17;

        if (v7)
        {
          v19 = MEMORY[0x245D76B30](i - 4, a2);
        }

        else
        {
          if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v19 = *(a2 + 8 * i);
        }

        v20 = v19;
        sub_24590E9F4();
        v22 = v21;

        if (v6)
        {
          v23 = MEMORY[0x245D76B30](i - 4, a1);
        }

        else
        {
          v23 = *(a1 + 8 * i);
        }

        v24 = v23;
        sub_24590EA04();
        v26 = v25;

        if (v7)
        {
          v9 = MEMORY[0x245D76B30](i - 4, a2);
        }

        else
        {
          v9 = *(a2 + 8 * i);
        }

        v10 = v9;
        v11 = v18 - v22;
        sub_24590EA04();
        v13 = v12;

        v5 = v5 + sqrtf((v11 * v11) + ((v26 - v13) * (v26 - v13)));
      }
    }
  }

  return v5;
}

uint64_t sub_24579BD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24579BDD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 328) = a3;
  *(v4 + 144) = a1;
  v5 = sub_24590EA84();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  v6 = sub_24590EA74();
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  v7 = sub_24590F354();
  *(v4 + 216) = v7;
  *(v4 + 224) = *(v7 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24579BFA4, v3, 0);
}

uint64_t sub_24579BFA4()
{
  v81 = v0;
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {
    (*(*(v0 + 200) + 104))(*(v0 + 208), *MEMORY[0x277CFFC70], *(v0 + 192));
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
LABEL_18:

    v53 = *(v0 + 8);
LABEL_19:

    return v53();
  }

  v2 = *(v0 + 144);
  sub_24578FB80(v2, *(v0 + 152));
  sub_24590C714();
  sub_24578FB80(v2, v1);
  v3 = sub_24590F344();
  v4 = sub_245910F54();
  sub_245771C44(v2, v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v80 = v10;
    *v9 = 136315138;
    v11 = sub_24590C0D4();
    v13 = sub_2458CC378(v11, v12, &v80);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v3, v4, "PassProvisioningManager calling provision precursor with data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  *(v0 + 296) = v14;
  sub_24579D5E0(0, &qword_27EE28FE0);
  sub_24579D5E0(0, &qword_27EE28FE8);
  v15 = sub_245910FE4();
  *(v0 + 304) = v15;
  v16 = v15;
  if (!v15)
  {
    goto LABEL_14;
  }

  v17 = [v15 passTypeIdentifier];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = sub_245910A04();
  v21 = v20;
  v22 = [v16 passSerialNumber];
  if (!v22)
  {

LABEL_14:
    v77 = v16;
    sub_24590C714();
    v43 = sub_24590F344();
    v44 = sub_245910F64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245767000, v43, v44, "PassProvisioningManager Failed to provision precursor pass; missing passType or serial number", v45, 2u);
      MEMORY[0x245D77B40](v45, -1, -1);
    }

    v46 = *(v0 + 240);
    v47 = *(v0 + 216);
    v48 = *(v0 + 200);
    v49 = *(v0 + 208);
    v50 = *(v0 + 192);
    v73 = *(v0 + 144);
    v75 = *(v0 + 152);

    v14(v46, v47);
    (*(v48 + 104))(v49, *MEMORY[0x277CFFC70], v50);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v51 = v73;
    v52 = v75;
    goto LABEL_17;
  }

  v23 = v22;
  v79 = v21;
  v72 = sub_245910A04();
  v74 = v24;
  sub_24590C714();
  v25 = sub_24590F344();
  v26 = sub_245910F54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_245767000, v25, v26, "PassProvisioningManager Checking if pass library has existing pass provisioned", v27, 2u);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  v28 = *(v0 + 280);
  v29 = *(v0 + 216);
  v30 = *(v0 + 328);

  v14(v28, v29);
  v31 = sub_24579D218(v19, v79, v72, v74, v30);

  if (v31)
  {

    sub_24590C714();
    v32 = sub_24590F344();
    v33 = sub_245910F84();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 248);
    v36 = *(v0 + 216);
    v37 = *(v0 + 144);
    v38 = *(v0 + 152);
    if (v34)
    {
      v39 = *(v0 + 216);
      v40 = *(v0 + 248);
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_245767000, v32, v33, "PassProvisioningManager Precursor pass is already provisioned for specified device; skipping", v41, 2u);
      v42 = v41;
      v35 = v40;
      v36 = v39;
      MEMORY[0x245D77B40](v42, -1, -1);

      sub_245771C44(v37, v38);
    }

    else
    {
      sub_245771C44(*(v0 + 144), *(v0 + 152));
    }

    v14(v35, v36);

    v53 = *(v0 + 8);
    goto LABEL_19;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277D38210]) initWithPassTypeIdentifier:v18 passSerialNumber:v23];
  *(v0 + 312) = v55;

  if (!v55)
  {
    sub_24590C714();
    v64 = sub_24590F344();
    v65 = sub_245910F64();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_245767000, v64, v65, "PassProvisioningManager Failed to provision precursor pass; could not create precursor pass credential object", v66, 2u);
      MEMORY[0x245D77B40](v66, -1, -1);
    }

    v67 = *(v0 + 256);
    v68 = *(v0 + 216);
    v70 = *(v0 + 200);
    v69 = *(v0 + 208);
    v71 = *(v0 + 192);
    v78 = *(v0 + 152);
    v76 = *(v0 + 144);

    v14(v67, v68);
    (*(v70 + 104))(v69, *MEMORY[0x277CFFB60], v71);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v51 = v76;
    v52 = v78;
LABEL_17:
    sub_245771C44(v51, v52);
    goto LABEL_18;
  }

  [v55 setCardType_];
  sub_24590C714();
  v56 = sub_24590F344();
  v57 = sub_245910F54();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_245767000, v56, v57, "PassProvisioningManager Attempting to provisioning precursor pass...", v58, 2u);
    MEMORY[0x245D77B40](v58, -1, -1);
  }

  v59 = *(v0 + 272);
  v60 = *(v0 + 216);
  v61 = *(v0 + 328);

  v14(v59, v60);
  v62 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24579CA78;
  v63 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24579D0B4;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v63;
  [v62 provisionPaymentCredential:v55 forPairedWatch:v61 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24579CA78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_24579CD80;
  }

  else
  {
    v4 = sub_24579CB98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24579CB98()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[39];
  v18 = v0[38];
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[27];
  v9 = v0[18];
  v8 = v0[19];
  if (v3)
  {
    v17 = v0[39];
    v10 = v0[27];
    v11 = v0[33];
    v12 = v0[37];
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassProvisioningManager successfully provisioned precursor pass!", v13, 2u);
    v14 = v13;
    v5 = v12;
    v6 = v11;
    v7 = v10;
    MEMORY[0x245D77B40](v14, -1, -1);

    sub_245771C44(v9, v8);
  }

  else
  {
    sub_245771C44(v0[18], v0[19]);
  }

  v5(v6, v7);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24579CD80()
{
  v1 = v0[40];
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[40];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_245767000, v3, v4, "PassProvisioningManager Failed to provision precursor pass; underlying PKPaymentService error: %@", v6, 0xCu);
    sub_24579D578(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  v10 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v11 = v3;
  v12 = v0[37];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[27];
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[22];
  v23 = v0[23];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[19];

  v12(v13, v15);
  (*(v16 + 104))(v14, *MEMORY[0x277CFFB60], v17);
  v19 = v10;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_24579D1C0();
  swift_allocError();
  (*(v18 + 16))(v20, v23, v24);
  swift_willThrow();

  sub_245771C44(v25, v26);
  (*(v18 + 8))(v23, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_24579D0B4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24579D160()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24579D1C0()
{
  result = qword_27EE2BC40;
  if (!qword_27EE2BC40)
  {
    sub_24590EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BC40);
  }

  return result;
}

uint64_t sub_24579D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v7 = v6;
  if (a5)
  {
    v8 = [v6 remoteSecureElementPasses];
    sub_24579D5E0(0, &qword_27EE29000);
    v9 = sub_245910C44();

    if (v9 >> 62)
    {
      goto LABEL_30;
    }

    sub_245911724();
    sub_24579D5E0(0, &qword_27EE28FF8);
  }

  else
  {
    v10 = [v6 passesOfType_];
    sub_24579D5E0(0, &qword_27EE28FF8);
    v9 = sub_245910C44();

    if (v9 >> 62)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      break;
    }

LABEL_6:
    v28 = v7;
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245D76B30](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v14 = *(v9 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v14 passTypeIdentifier];
      v17 = sub_245910A04();
      v19 = v18;

      if (v17 == a1 && v19 == a2)
      {
      }

      else
      {
        v21 = sub_245911714();

        if ((v21 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      v22 = [v7 serialNumber];
      v23 = sub_245910A04();
      v25 = v24;

      if (v23 == a3 && v25 == a4)
      {

        v11 = 1;
        goto LABEL_27;
      }

      v13 = sub_245911714();

      if (v13)
      {
        v11 = 1;
        goto LABEL_26;
      }

LABEL_8:
      ++v12;
      if (v15 == v11)
      {
        v11 = 0;
LABEL_26:
        v7 = v28;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_24579D5E0(0, &qword_27EE28FF8);

    v27 = sub_2459115E4();
    swift_bridgeObjectRelease_n();
    v9 = v27;
    if (v27 >> 62)
    {
LABEL_31:
      v11 = sub_245911424();
      if (!v11)
      {
        break;
      }

      goto LABEL_6;
    }
  }

LABEL_27:

  return v11;
}

uint64_t sub_24579D578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24579D5E0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24579D628(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_24579D64C, 0, 0);
}

uint64_t sub_24579D64C()
{
  v1 = v0[20];
  v2 = *(*(v1 + 32) + 112);
  v0[21] = v2;
  swift_unknownObjectRetain();
  v3 = sub_24590C144();
  v0[22] = v3;
  LOBYTE(v1) = ~(*(**(v1 + 24) + 104))();
  v0[2] = v0;
  v0[3] = sub_24579D7C8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_20;
  v0[14] = v4;
  [v2 setGlobalBoundACLWithData:v3 type:v1 & 1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579D7C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_24579D940;
  }

  else
  {
    v2 = sub_24579D8D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579D8D8()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24579D940()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24579D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_24579D9E4, 0, 0);
}

uint64_t sub_24579D9E4()
{
  v1 = *(*(v0[23] + 32) + 112);
  v0[24] = v1;
  swift_unknownObjectRetain();
  v2 = sub_24590C144();
  v0[25] = v2;
  v3 = sub_24590C144();
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24579DB5C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29028);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579DD74;
  v0[13] = &block_descriptor_16;
  v0[14] = v4;
  [v1 setModifiedGlobalBoundACLWithData:v2 externalizedLAContext:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579DB5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_24579DCEC;
  }

  else
  {
    v2 = sub_24579DC6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579DC6C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24579DCEC()
{
  v1 = v0[26];
  v2 = v0[25];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24579DD74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_24590C1F4();
    **(*(v4 + 64) + 40) = sub_245910C44();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_24579DE54()
{
  v1[38] = v0;
  v2 = sub_24590F354();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24579DF2C, 0, 0);
}

uint64_t sub_24579DF2C()
{
  v1 = *(v0[38] + 24);
  if ((*(*v1 + 104))())
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "Using bio binding unbound acl", v4, 2u);
      MEMORY[0x245D77B40](v4, -1, -1);
    }

    v5 = v0 + 10;
    v6 = v0[43];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];

    (*(v8 + 8))(v6, v7);
    v0[44] = *(*(v9 + 32) + 112);
    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_24579E3B4;
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29020);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_24579E694;
    v0[29] = &block_descriptor_13;
    v0[30] = v10;
    [swift_unknownObjectRetain() retrieveBioBindingUnboundACLWithCompletionHandler_];
LABEL_9:

    return MEMORY[0x282200938](v5);
  }

  if ((*(*v1 + 96))())
  {
    sub_24590C714();
    v11 = sub_24590F344();
    v12 = sub_245910F54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245767000, v11, v12, "Using passcode binding unbound acl", v13, 2u);
      MEMORY[0x245D77B40](v13, -1, -1);
    }

    v5 = v0 + 2;
    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[38];

    (*(v16 + 8))(v14, v15);
    v0[45] = *(*(v17 + 32) + 112);
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_24579E524;
    v18 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29020);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24579E694;
    v0[21] = &block_descriptor_10;
    v0[22] = v18;
    [swift_unknownObjectRetain() retrievePasscodeBindingUnboundACLWithCompletionHandler_];
    goto LABEL_9;
  }

  sub_24590C714();
  v19 = sub_24590F344();
  v20 = sub_245910F64();
  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[40];
  v22 = v0[41];
  v24 = v0[39];
  if (v21)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_245767000, v19, v20, "Ineligible to perform binding: biometrics or AX settings not set.", v25, 2u);
    MEMORY[0x245D77B40](v25, -1, -1);
  }

  (*(v23 + 8))(v22, v24);

  v26 = v0[1];

  return v26(0, 0xF000000000000000);
}

uint64_t sub_24579E3B4()
{

  return MEMORY[0x2822009F8](sub_24579E494, 0, 0);
}

uint64_t sub_24579E494()
{
  v2 = v0[36];
  v1 = v0[37];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_24579E524()
{

  return MEMORY[0x2822009F8](sub_24579E604, 0, 0);
}

uint64_t sub_24579E604()
{
  v2 = v0[34];
  v1 = v0[35];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_24579E694(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_24590C154();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_24579E744()
{
  v0[19] = *(*(v0[18] + 32) + 112);
  v0[2] = v0;
  v0[3] = sub_24579E868;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_32;
  v0[14] = v1;
  [swift_unknownObjectRetain() deleteBoundACLWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579E868()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24579E9DC;
  }

  else
  {
    v2 = sub_24579E978;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579E978()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24579E9DC()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24579EA70()
{
  v0[20] = *(*(v0[19] + 32) + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24579EB9C;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29038);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579ED8C;
  v0[13] = &block_descriptor_28;
  v0[14] = v1;
  [swift_unknownObjectRetain() fetchBioBindingDetailsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579EB9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_24579ED18;
  }

  else
  {
    v2 = sub_24579ECAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579ECAC()
{
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24579ED18()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24579ED8C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
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

    return MEMORY[0x282200950](v5);
  }
}

void sub_24579EE64(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, void, void), uint64_t a4, uint64_t a5, char a6)
{
  v68 = a3;
  v69 = a4;
  v9 = sub_24590EA74();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2459107E4();
  v66 = *(v12 - 1);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245910814();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24590F354();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  if (!a2)
  {
    if (a1)
    {
      v34 = SecAccessControlCopyData();
      if (v34)
      {
        v35 = v34;
        sub_24590C6C4();
        v67 = v35;
        v36 = sub_24590C154();
        v38 = v37;

        v68(v36, v38, a6 & 1, 0);
        sub_24578FC28(v36, v38);
        v39 = v67;
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  v58 = v20;
  v59 = v11;
  v60 = a2;
  v23 = sub_24590BF94();
  sub_24590C714();
  v24 = v23;
  v25 = sub_24590F344();
  v26 = sub_245910F64();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_245767000, v25, v26, "Biometric binding failed with error: %@", v27, 0xCu);
    sub_245778F94(v28, &qword_27EE297C0);
    MEMORY[0x245D77B40](v28, -1, -1);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  v57 = *(v18 + 8);
  v57(v22, v17);
  v30 = [v24 domain];
  v31 = sub_245910A04();
  v33 = v32;

  if (v31 == 0xD00000000000001DLL && 0x8000000245924C90 == v33)
  {

    goto LABEL_13;
  }

  v40 = sub_245911714();

  if (v40)
  {
LABEL_13:
    if ([v24 code] == -8)
    {
      sub_2457809BC();
      v41 = sub_245911034();
      v42 = swift_allocObject();
      v43 = v69;
      v42[2] = v68;
      v42[3] = v43;
      v44 = v60;
      v42[4] = v60;
      aBlock[4] = sub_24579FE44;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2458935A8;
      aBlock[3] = &block_descriptor_5;
      v45 = _Block_copy(aBlock);

      v46 = v44;

      sub_245910804();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24579FE68(&qword_27EE2A980, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
      sub_245780AA8();
      v47 = v63;
      v48 = v67;
      sub_2459113A4();
      MEMORY[0x245D76690](0, v16, v47, v45);
      _Block_release(v45);

      (*(v66 + 8))(v47, v48);
      (*(v64 + 8))(v16, v65);
      return;
    }
  }

  v49 = [v24 domain];
  v50 = sub_245910A04();
  v52 = v51;

  if (v50 == 0xD00000000000001DLL && 0x8000000245924C90 == v52)
  {
  }

  else
  {
    v53 = sub_245911714();

    if ((v53 & 1) == 0)
    {
LABEL_20:

      return;
    }
  }

  if ([v24 code] != -1)
  {
    goto LABEL_20;
  }

  (*(v61 + 104))(v59, *MEMORY[0x277CFFB48], v62);
  v54 = v60;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579FE68(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v55 = swift_allocError();
  sub_24590EA94();
  v56 = v58;
  sub_24590C714();
  sub_24590C724();

  v57(v56, v17);
}

void sub_24579F6AC(void (*a1)(void, unint64_t, uint64_t, void *), uint64_t a2, void *a3)
{
  v5 = sub_24590EA74();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 104))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CFF9B0]);
  v8 = a3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579FE68(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v9 = swift_allocError();
  sub_24590EA94();
  a1(0, 0xF000000000000000, 2, v9);
}

uint64_t sub_24579F894(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_2459108F4();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24579F9B0()
{
  v0[22] = *(*(v0[21] + 32) + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24579FADC;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29030);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579FCE0;
  v0[13] = &block_descriptor_24;
  v0[14] = v1;
  [swift_unknownObjectRetain() globalAuthACLInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579FADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_24579FC6C;
  }

  else
  {
    v2 = sub_24579FBEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579FBEC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[20];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v2, v1, v3);
}

uint64_t sub_24579FC6C()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24579FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    sub_24590C1F4();
    v12 = sub_245910C44();
    v13 = *(*(v8 + 64) + 40);
    *v13 = v12;
    v13[1] = a3;
    v13[2] = a4;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24579FDD8()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24579FE68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24579FEB0()
{
  sub_24590C234();
  v0[32] = swift_task_alloc();
  sub_2459109B4();
  v0[33] = swift_task_alloc();
  v1 = sub_24590F354();
  v0[34] = v1;
  v0[35] = *(v1 - 8);
  v0[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24579FFC4, 0, 0);
}

uint64_t sub_24579FFC4()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Managing bio lockout", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);

  (*(v5 + 8))(v4, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v0 + 296) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916930;
  *(v0 + 320) = 1030;
  sub_245911484();
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE32B38;
  sub_24590C224();
  v10 = sub_245910A54();
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  sub_2458B86D0(inited);
  swift_setDeallocating();
  sub_245778F94(inited + 32, &qword_27EE29010);
  v12 = sub_2459108E4();
  *(v0 + 304) = v12;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = sub_2457A02FC;
  v13 = swift_continuation_init();
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29018);
  *(v0 + 184) = MEMORY[0x277D85DD0];
  *(v0 + 192) = 1107296256;
  *(v0 + 200) = sub_24579F894;
  *(v0 + 208) = &block_descriptor_6_0;
  *(v0 + 216) = v13;
  [v7 evaluatePolicy:2 options:v12 reply:v0 + 184];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2457A02FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_2457A04B0;
  }

  else
  {
    v2 = sub_2457A040C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A040C()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457A04B0()
{
  v1 = v0[38];
  v2 = v0[37];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_2457816F0(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_2457A05A4(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2457AA3F0(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_2458B7848(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_245778F94(a1, &unk_27EE292B0);
    v7 = sub_24588C7B4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24580C8E4();
        v11 = v13;
      }

      sub_2457AA3F0((*(v11 + 56) + 32 * v9), v14);
      sub_2457A94E4(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_245778F94(v14, &unk_27EE292B0);
  }

  return result;
}

uint64_t sub_2457A06A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2457AA3F0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_2458B7C8C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_245778F94(a1, &unk_27EE292B0);
    sub_2457A9440(a2, a3, v9);

    return sub_245778F94(v9, &unk_27EE292B0);
  }

  return result;
}

uint64_t sub_2457A0778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_2458B7F54(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_24588C5BC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_24580D364();
        v16 = v18;
      }

      result = sub_2457A9808(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_2457A0880(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29060);
    v2 = sub_245911624();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_2457816F0(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_2457AA3F0((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2457AA3F0(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2457AA3F0(v29, v30);
    result = sub_245911464();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2457AA3F0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2457A0B5C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457AA4A4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29078);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457AA4A0;
  v0[13] = &block_descriptor_81;
  v0[14] = v2;
  [v1 getGlobalProgenitorKeyAttestation_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A0C9C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457AA4A4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29078);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457AA4A0;
  v0[13] = &block_descriptor_77;
  v0[14] = v2;
  [v1 getGlobalThirdPartyProgenitorKeyAttestation_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A0DDC()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457A0EF8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29070);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A1038;
  v0[13] = &block_descriptor_73;
  v0[14] = v2;
  [v1 bioBindingUnboundACL_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A0EF8()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(v1 + 144);
    v6 = *(v1 + 152);
    v7 = *(v2 + 8);

    return v7(v5, v6);
  }
}

uint64_t sub_2457A1038(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_24590C154();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2457A1144()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457AA494;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29070);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A1038;
  v0[13] = &block_descriptor_69;
  v0[14] = v2;
  [v1 passcodeBindingUnboundACL_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A1260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a1;
  v4[19] = a2;
  v5 = *v3;
  v4[20] = a3;
  v4[21] = v5;
  return MEMORY[0x2822009F8](sub_2457A1288, 0, 0);
}

uint64_t sub_2457A1288()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_24590C144();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_2457A13BC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_65;
  v0[14] = v4;
  [v2 setGlobalAuthACL:v3 ofType:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A13BC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  if (*(v1 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2457A1500()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457A161C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29068);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457AA4A0;
  v0[13] = &block_descriptor_61;
  v0[14] = v2;
  [v1 globalAuthACLWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A161C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 144);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t sub_2457A175C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2457A182C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2457A18F4;

  return (sub_2457A99B8)(a1, a2, a3);
}

uint64_t sub_2457A18F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2457A19E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457A1AA4;

  return sub_2457A9C18(a1, a2);
}

uint64_t sub_2457A1AA4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2457A1BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2457AA4A8;

  return (sub_2457A9EE4)(a1, a2, a3);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2457A1CA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_2457A1CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2457A1D5C@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  result = sub_2457AA400();
  a1[3] = result;
  a1[4] = &off_285884750;
  *a1 = v2;
  return result;
}

uint64_t sub_2457A1DB0()
{
  v1[2] = v0;
  v2 = sub_24590EA74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24590C544();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_24590C4E4();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_24590F354();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A1FC0, 0, 0);
}

uint64_t sub_2457A1FC0()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Enrolling in biometric binding", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[14];

  v7 = *(v6 + 8);
  v0[20] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_2457A20F4;

  return sub_2457A44D0();
}

uint64_t sub_2457A20F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;
  *(v6 + 377) = a4;
  *(v6 + 192) = a3;
  *(v6 + 200) = v4;

  if (v4)
  {
    v7 = sub_2457A3B00;
  }

  else
  {
    v7 = sub_2457A2210;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2457A2210()
{
  v1 = v0[23];
  if (v1 >> 60 == 15)
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "enroll: fetching unbound ACL", v4, 2u);
      MEMORY[0x245D77B40](v4, -1, -1);
    }

    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[13];

    v5(v6, v7);
    v8 = swift_task_alloc();
    v0[29] = v8;
    *v8 = v0;
    v8[1] = sub_2457A2D9C;

    return sub_2457A4984();
  }

  else
  {
    v10 = v0[2];
    sub_24578FB6C(v0[22], v1);
    v11 = swift_task_alloc();
    v0[26] = v11;
    *(v11 + 16) = v10;
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_2457A242C;
    v13 = MEMORY[0x277D839B0];
    v14 = MEMORY[0x277D839B0];
    v15 = MEMORY[0x277D839B0];

    return MEMORY[0x282200740](v0 + 47, v13, v14, 0, 0, &unk_245917048, v11, v15);
  }
}

uint64_t sub_2457A242C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_2457A2B98;
  }

  else
  {

    v2 = sub_2457A2548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A2548()
{
  v45 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  if (*(v0 + 376) == 1)
  {
    sub_24590C714();
    sub_24578FB6C(v2, v1);
    v3 = sub_24590F344();
    v4 = sub_245910F44();
    sub_245771C44(v2, v1);
    if (os_log_type_enabled(v3, v4))
    {
      v43 = *(v0 + 160);
      v5 = *(v0 + 144);
      v6 = *(v0 + 104);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v44 = v8;
      *v7 = 136315138;
      v9 = sub_24590C0D4();
      v11 = sub_2458CC378(v9, v10, &v44);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_245767000, v3, v4, "enroll: existing bound ACL is being used, stripping bound ACL = %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245D77B40](v8, -1, -1);
      MEMORY[0x245D77B40](v7, -1, -1);

      v43(v5, v6);
    }

    else
    {
      v20 = *(v0 + 160);
      v21 = *(v0 + 144);
      v22 = *(v0 + 104);

      v20(v21, v22);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 104), *(*(v0 + 16) + 128));
    if (sub_24590DB14())
    {
      v23 = *(v0 + 224);
      sub_24590C844();
      swift_allocObject();
      sub_24590C834();
      v24 = sub_24590C824();
      v26 = v25;
      v28 = *(v0 + 176);
      v27 = *(v0 + 184);
      if (v23)
      {
        v29 = *(v0 + 184);
        sub_245771C44(*(v0 + 176), v27);
        sub_245771C44(v28, v29);

        (*(*(v0 + 32) + 104))(*(v0 + 40), *MEMORY[0x277CFF920], *(v0 + 24));
        v30 = v23;
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();

        v31 = *(v0 + 8);

        return v31();
      }

      v32 = v24;
      sub_245771C44(*(v0 + 176), v27);
    }

    else
    {
      v32 = *(v0 + 176);
      v26 = *(v0 + 184);
    }

    if (*(v0 + 377))
    {
      v33 = 1;
    }

    else
    {
      v33 = *(v0 + 192);
    }

    *(v0 + 280) = v32;
    *(v0 + 288) = v26;
    *(v0 + 378) = 0;
    *(v0 + 272) = v33;
    sub_24590C6C4();
    v34 = sub_2457AF7E0();
    sub_2457AFA74();
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v37 = sub_2457AF608();
        v38 = v41;
        v35 = 0;
        v36 = 0;
      }
    }

    else
    {
      v37 = sub_2457AF608();
      v38 = v39;
      v35 = sub_2457AF608();
      v36 = v40;
    }

    *(v0 + 296) = v36;
    *(v0 + 304) = v38;
    v42 = swift_task_alloc();
    *(v0 + 312) = v42;
    *v42 = v0;
    v42[1] = sub_2457A305C;

    return sub_2457A5284(v32, v26, v37, v38, v35, v36);
  }

  else
  {
    sub_245771C44(*(v0 + 176), *(v0 + 184));
    sub_24590C714();
    v12 = sub_24590F344();
    v13 = sub_245910F44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_245767000, v12, v13, "enroll: fetching unbound ACL", v14, 2u);
      MEMORY[0x245D77B40](v14, -1, -1);
    }

    v15 = *(v0 + 160);
    v16 = *(v0 + 136);
    v17 = *(v0 + 104);

    v15(v16, v17);
    v18 = swift_task_alloc();
    *(v0 + 232) = v18;
    *v18 = v0;
    v18[1] = sub_2457A2D9C;

    return sub_2457A4984();
  }
}

uint64_t sub_2457A2B98()
{
  v1 = v0[22];
  v2 = v0[23];

  sub_245771C44(v1, v2);
  sub_245771C44(v1, v2);
  v3 = v0[28];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v4 = v3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2457A2D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 240) = v3;

  if (v3)
  {
    v9 = sub_2457A3CE0;
  }

  else
  {
    v8[31] = a3;
    v8[32] = a2;
    v8[33] = a1;
    v9 = sub_2457A2ED8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2457A2ED8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  *(v0 + 280) = v2;
  *(v0 + 288) = v1;
  *(v0 + 378) = 1;
  *(v0 + 272) = v3;
  sub_24590C6C4();
  v4 = sub_2457AF7E0();
  sub_2457AFA74();
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = sub_2457AF608();
      v8 = v11;
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v7 = sub_2457AF608();
    v8 = v9;
    v5 = sub_2457AF608();
    v6 = v10;
  }

  *(v0 + 296) = v6;
  *(v0 + 304) = v8;
  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  *v12 = v0;
  v12[1] = sub_2457A305C;

  return sub_2457A5284(v2, v1, v7, v8, v5, v6);
}

uint64_t sub_2457A305C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[40] = a1;
  v4[41] = a2;
  v4[42] = v2;

  if (v2)
  {
    v5 = sub_2457A3EC8;
  }

  else
  {
    v5 = sub_2457A31B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2457A31B8()
{
  if (*(v0 + 378) == 1)
  {
    sub_24590C714();
    v1 = sub_24590F344();
    v2 = sub_245910F44();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_245767000, v1, v2, "enroll: setting new bound ACL", v3, 2u);
      MEMORY[0x245D77B40](v3, -1, -1);
    }

    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 16);

    v4(v5, v6);
    v8 = v7[4];
    v9 = v7[5];
    __swift_project_boxed_opaque_existential_1(v7 + 1, v8);
    v28 = (*(v9 + 40) + **(v9 + 40));
    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_2457A3550;
    v11 = *(v0 + 328);
    v12 = *(v0 + 272);
    v13 = *(v0 + 320);
    v14 = v8;
    v15 = v9;
    v16 = v28;
  }

  else
  {
    sub_24590C714();
    v17 = sub_24590F344();
    v18 = sub_245910F44();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245767000, v17, v18, "enroll: reusing ACL", v19, 2u);
      MEMORY[0x245D77B40](v19, -1, -1);
    }

    v20 = *(v0 + 160);
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);
    v23 = *(v0 + 16);

    v20(v21, v22);
    v24 = v23[4];
    v25 = v23[5];
    __swift_project_boxed_opaque_existential_1(v23 + 1, v24);
    v29 = (*(v25 + 56) + **(v25 + 56));
    v26 = swift_task_alloc();
    *(v0 + 360) = v26;
    *v26 = v0;
    v26[1] = sub_2457A3828;
    v13 = 0;
    v11 = 0xF000000000000000;
    v12 = 1;
    v14 = v24;
    v15 = v25;
    v16 = v29;
  }

  return v16(v13, v11, v12, v14, v15);
}

uint64_t sub_2457A3550()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_2457A40C0;
  }

  else
  {
    v2 = sub_2457A3664;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A3664()
{
  v1 = v0[10];
  v2 = sub_2457AF7E0();
  v4 = v0[40];
  v3 = v0[41];
  v13 = v0[35];
  v14 = v0[36];
  v15 = v0[22];
  v16 = v0[23];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  (*(v1 + 104))(v5, **(&unk_278E874F8 + v2), v6);
  sub_24590C594();
  (*(v9 + 104))(v8, *MEMORY[0x277CFF378], v10);
  sub_24590C584();
  sub_24578FC28(v4, v3);
  sub_24578FC28(v13, v14);
  sub_245771C44(v15, v16);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2457A3828()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_2457A42C8;
  }

  else
  {
    v2 = sub_2457A393C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A393C()
{
  v1 = v0[10];
  v2 = sub_2457AF7E0();
  v4 = v0[40];
  v3 = v0[41];
  v13 = v0[35];
  v14 = v0[36];
  v15 = v0[22];
  v16 = v0[23];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  (*(v1 + 104))(v5, **(&unk_278E874F8 + v2), v6);
  sub_24590C594();
  (*(v9 + 104))(v8, *MEMORY[0x277CFF370], v10);
  sub_24590C584();
  sub_24578FC28(v4, v3);
  sub_24578FC28(v13, v14);
  sub_245771C44(v15, v16);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2457A3B00()
{
  v1 = v0[25];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v2 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2457A3CE0()
{
  sub_245771C44(v0[22], v0[23]);
  v1 = v0[30];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v2 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2457A3EC8()
{
  v1 = v0[35];
  v2 = v0[36];
  sub_245771C44(v0[22], v0[23]);
  sub_24578FC28(v1, v2);
  v3 = v0[42];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v4 = v3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2457A40C0()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  sub_245771C44(v0[22], v0[23]);
  sub_24578FC28(v1, v2);
  sub_24578FC28(v4, v3);
  v5 = v0[44];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v6 = v5;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2457A42C8()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  sub_245771C44(v0[22], v0[23]);
  sub_24578FC28(v1, v2);
  sub_24578FC28(v4, v3);
  v5 = v0[46];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v6 = v5;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2457A44D0()
{
  v1[2] = v0;
  v2 = sub_24590F354();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A4590, 0, 0);
}

uint64_t sub_2457A4590()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Fetching GlobalAuthACL", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  v8 = v7[4];
  v9 = v7[5];
  __swift_project_boxed_opaque_existential_1(v7 + 1, v8);
  v12 = (*(v9 + 48) + **(v9 + 48));
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_2457A4754;

  return v12(v8, v9);
}