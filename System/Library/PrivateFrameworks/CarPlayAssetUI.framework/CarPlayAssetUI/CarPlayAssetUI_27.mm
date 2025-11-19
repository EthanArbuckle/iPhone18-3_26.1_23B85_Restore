void sub_242E920E4(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 144) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
      ImageAsset.restore(from:)(a1);
    }
  }
}

uint64_t sub_242E92188()
{
  v1 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v1;
  v2 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 144);
  v15 = *(v0 + 16);
  v16 = v3;
  sub_242F06390();
  sub_242F04DD0();
  sub_242D65A9C(v7);
  if ((~v4 & 0xFELL) != 0)
  {
    v5 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = v5;
    v11 = *(v0 + 152);
    v12 = *(v0 + 168);
    v13 = *(v0 + 184);
    v14 = *(v0 + 200);
    v10 = v4;
    sub_242F063B0();
    sub_242D65A9C(v7);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063E0();
}

uint64_t sub_242E92280(uint64_t a1)
{
  v3 = ~*(v1 + 144);
  sub_242F04DD0();
  sub_242D65A9C(a1);
  if ((v3 & 0xFE) == 0)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  return sub_242D65A9C(a1);
}

uint64_t sub_242E9234C()
{
  v1 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v1;
  v2 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 144);
  v15 = *(v0 + 16);
  v16 = v3;
  sub_242F06390();
  sub_242F04DD0();
  sub_242D65A9C(v7);
  if ((~v4 & 0xFELL) != 0)
  {
    v5 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = v5;
    v11 = *(v0 + 152);
    v12 = *(v0 + 168);
    v13 = *(v0 + 184);
    v14 = *(v0 + 200);
    v10 = v4;
    sub_242F063B0();
    sub_242D65A9C(v7);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063E0();
}

uint64_t sub_242E92444()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6E65526C61636F6CLL;
  }
}

uint64_t sub_242E92488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65526C61636F6CLL && a2 == 0xED00007265726564;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242E92568(uint64_t a1)
{
  v2 = sub_242E946C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E925A4(uint64_t a1)
{
  v2 = sub_242E946C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E925E0(uint64_t a1)
{
  v2 = sub_242E94768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E9261C(uint64_t a1)
{
  v2 = sub_242E94768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E92658(uint64_t a1)
{
  v2 = sub_242E94714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E92694(uint64_t a1)
{
  v2 = sub_242E94714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.PopoverLocation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0C0);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0C8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0D0);
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E946C0();
  sub_242F064C0();
  v13 = v2[11];
  v51 = v2[10];
  v52 = v13;
  v53 = v2[12];
  v14 = v2[7];
  v47 = v2[6];
  v48 = v14;
  v15 = v2[9];
  v49 = v2[8];
  v50 = v15;
  v16 = v2[3];
  v43 = v2[2];
  v44 = v16;
  v17 = v2[5];
  v45 = v2[4];
  v46 = v17;
  v18 = v2[1];
  v41 = *v2;
  v42 = v18;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v41) == 1)
  {
    LOBYTE(v28) = 1;
    sub_242E94714();
    v19 = v27;
    sub_242F05E40();
    (*(v23 + 8))(v6, v24);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_242E94768();
    v19 = v27;
    sub_242F05E40();
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    sub_242E947BC();
    v21 = v26;
    sub_242F05F20();
    (*(v25 + 8))(v9, v21);
  }

  return (*(v10 + 8))(v12, v19);
}

uint64_t Instrument.PopoverLocation.hash(into:)(uint64_t a1)
{
  v3 = v1[11];
  v12 = v1[10];
  v13 = v3;
  v14 = v1[12];
  v4 = v1[7];
  v10[6] = v1[6];
  v10[7] = v4;
  v5 = v1[9];
  v10[8] = v1[8];
  v11 = v5;
  v6 = v1[3];
  v10[2] = v1[2];
  v10[3] = v6;
  v7 = v1[5];
  v10[4] = v1[4];
  v10[5] = v7;
  v8 = v1[1];
  v10[0] = *v1;
  v10[1] = v8;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v10) == 1)
  {
    return MEMORY[0x245D279A0](1);
  }

  MEMORY[0x245D279A0](0);
  sub_242F04DD0();
  sub_242D65A9C(a1);
  if ((~v11 & 0xFE) == 0)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  return sub_242D65A9C(a1);
}

uint64_t sub_242E92B6C()
{
  sub_242F06390();
  v1 = v0[11];
  v31 = v0[10];
  v32 = v1;
  v33 = v0[12];
  v2 = v0[7];
  v27 = v0[6];
  v28 = v2;
  v3 = v0[9];
  v29 = v0[8];
  v30 = v3;
  v4 = v0[3];
  v23 = v0[2];
  v24 = v4;
  v5 = v0[5];
  v25 = v0[4];
  v26 = v5;
  v6 = v0[1];
  v21 = *v0;
  v22 = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v21) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v15 = v22;
    v16 = v23;
    sub_242F04DD0();
    sub_242D65A9C(v8);
    if ((~v30 & 0xFE) != 0)
    {
      v11 = v30;
      v12 = v31;
      v13 = v32;
      v14 = v33;
      v9 = v28;
      v10 = v29;
      sub_242F063B0();
      sub_242D65A9C(v8);
    }

    else
    {
      sub_242F063B0();
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.PopoverLocation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0F8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB100);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB108);
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242E946C0();
  v14 = v40;
  sub_242F06480();
  if (!v14)
  {
    v40 = v7;
    v15 = v38;
    v16 = sub_242F05E10();
    v17 = (2 * *(v16 + 16)) | 1;
    v80 = v16;
    v81 = v16 + 32;
    v82 = 0;
    v83 = v17;
    v18 = sub_242C7FBE4();
    v19 = v10;
    v20 = v12;
    if (v18 == 2 || v82 != v83 >> 1)
    {
      v23 = sub_242F05B10();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v25 = &type metadata for Instrument.PopoverLocation;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v39 + 8))(v20, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v54) = 1;
        sub_242E94714();
        sub_242F05D10();
        v21 = v15;
        v22 = v39;
        (*(v37 + 1))(v6, v36);
        (*(v22 + 8))(v20, v10);
        swift_unknownObjectRelease();
        sub_242E13D54(&v67);
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_242E94768();
        sub_242F05D10();
        v27 = v39;
        v21 = v15;
        v37 = v20;
        sub_242E94810();
        v28 = v40;
        sub_242F05E00();
        (*(v35 + 8))(v9, v28);
        (*(v27 + 8))(v37, v19);
        swift_unknownObjectRelease();
        v51 = v64;
        v52 = v65;
        v53 = v66;
        v47 = v60;
        v48 = v61;
        v49 = v62;
        v50 = v63;
        v43 = v56;
        v44 = v57;
        v45 = v58;
        v46 = v59;
        v41 = v54;
        v42 = v55;
        nullsub_2(&v41);
        v77 = v51;
        v78 = v52;
        v79 = v53;
        v73 = v47;
        v74 = v48;
        v75 = v49;
        v76 = v50;
        v69 = v43;
        v70 = v44;
        v71 = v45;
        v72 = v46;
        v67 = v41;
        v68 = v42;
      }

      v29 = v78;
      v21[10] = v77;
      v21[11] = v29;
      v21[12] = v79;
      v30 = v74;
      v21[6] = v73;
      v21[7] = v30;
      v31 = v76;
      v21[8] = v75;
      v21[9] = v31;
      v32 = v70;
      v21[2] = v69;
      v21[3] = v32;
      v33 = v72;
      v21[4] = v71;
      v21[5] = v33;
      v34 = v68;
      *v21 = v67;
      v21[1] = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v84);
}

uint64_t sub_242E93248()
{
  v1 = v0[11];
  v8[10] = v0[10];
  v8[11] = v1;
  v8[12] = v0[12];
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[9];
  v8[8] = v0[8];
  v8[9] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = v0[5];
  v8[4] = v0[4];
  v8[5] = v5;
  v6 = v0[1];
  v8[0] = *v0;
  v8[1] = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v8) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return Instrument.PopoverLocation.LocalConfiguration.assets.getter();
  }
}

uint64_t sub_242E93348(uint64_t a1)
{
  v3 = v1[11];
  v12 = v1[10];
  v13 = v3;
  v14 = v1[12];
  v4 = v1[7];
  v10[6] = v1[6];
  v10[7] = v4;
  v5 = v1[9];
  v10[8] = v1[8];
  v11 = v5;
  v6 = v1[3];
  v10[2] = v1[2];
  v10[3] = v6;
  v7 = v1[5];
  v10[4] = v1[4];
  v10[5] = v7;
  v8 = v1[1];
  v10[0] = *v1;
  v10[1] = v8;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v10) == 1)
  {
    return MEMORY[0x245D279A0](1);
  }

  MEMORY[0x245D279A0](0);
  sub_242F04DD0();
  sub_242D65A9C(a1);
  if ((~v11 & 0xFE) == 0)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  return sub_242D65A9C(a1);
}

uint64_t sub_242E9345C()
{
  sub_242F06390();
  v1 = v0[11];
  v31 = v0[10];
  v32 = v1;
  v33 = v0[12];
  v2 = v0[7];
  v27 = v0[6];
  v28 = v2;
  v3 = v0[9];
  v29 = v0[8];
  v30 = v3;
  v4 = v0[3];
  v23 = v0[2];
  v24 = v4;
  v5 = v0[5];
  v25 = v0[4];
  v26 = v5;
  v6 = v0[1];
  v21 = *v0;
  v22 = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v21) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v15 = v22;
    v16 = v23;
    sub_242F04DD0();
    sub_242D65A9C(v8);
    if ((~v30 & 0xFE) != 0)
    {
      v11 = v30;
      v12 = v31;
      v13 = v32;
      v14 = v33;
      v9 = v28;
      v10 = v29;
      sub_242F063B0();
      sub_242D65A9C(v8);
    }

    else
    {
      sub_242F063B0();
    }
  }

  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI10InstrumentV15PopoverLocationO18LocalConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  v76 = a1[7];
  v73 = a1[8];
  v70 = a1[10];
  v71 = a1[9];
  v68 = a1[11];
  v66 = *(a1 + 96);
  v57 = a1[13];
  v11 = *(a1 + 8);
  v109 = *(a1 + 7);
  v110 = v11;
  v12 = *(a1 + 9);
  v13 = *(a1 + 10);
  v14 = *(a1 + 12);
  v113 = *(a1 + 11);
  v114 = v14;
  v111 = v12;
  v112 = v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2[5];
  v21 = *(a2 + 48);
  v75 = a2[7];
  v64 = a2[9];
  v65 = a2[8];
  v63 = a2[10];
  v61 = a2[11];
  v59 = *(a2 + 96);
  v55 = a2[13];
  v22 = *(a2 + 8);
  v115 = *(a2 + 7);
  v116 = v22;
  v23 = *(a2 + 9);
  v24 = *(a2 + 10);
  v25 = *(a2 + 12);
  *&v117[32] = *(a2 + 11);
  *&v117[48] = v25;
  *v117 = v23;
  *&v117[16] = v24;
  if (v4 == v15 && v5 == v16 || (v26 = sub_242F06110(), result = 0, (v26 & 1) != 0))
  {
    *&v96 = v6;
    *(&v96 + 1) = v7;
    *&v97 = v8;
    *(&v97 + 1) = v9;
    LOBYTE(v98) = v10;
    *&v84 = v17;
    *(&v84 + 1) = v18;
    *&v85 = v19;
    *(&v85 + 1) = v20;
    v86 = v21;
    sub_242C7F6C4(v6, v7, v8, v9, v10);
    sub_242C7F6C4(v17, v18, v19, v20, v21);
    v28 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v96, &v84);
    sub_242C7F724(v84, *(&v84 + 1), v85, *(&v85 + 1), v86);
    sub_242C7F724(v96, *(&v96 + 1), v97, *(&v97 + 1), v98);
    result = 0;
    if ((v28 & 1) != 0 && v76 == v75)
    {
      *&v96 = v73;
      *(&v96 + 1) = v71;
      *&v97 = v70;
      *(&v97 + 1) = v68;
      LOBYTE(v98) = v66;
      *&v84 = v65;
      *(&v84 + 1) = v64;
      *&v85 = v63;
      *(&v85 + 1) = v61;
      v86 = v59;
      sub_242C7F6C4(v73, v71, v70, v68, v66);
      sub_242C7F6C4(v65, v64, v63, v61, v59);
      v29 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v96, &v84);
      sub_242C7F724(v84, *(&v84 + 1), v85, *(&v85 + 1), v86);
      sub_242C7F724(v96, *(&v96 + 1), v97, *(&v97 + 1), v98);
      result = 0;
      if ((v29 & 1) != 0 && v57 == v55)
      {
        v30 = v109;
        v32 = *(&v110 + 1);
        v31 = v110;
        v33 = v111;
        v34 = *(&v111 + 1) | ((*(&v111 + 5) | (BYTE7(v111) << 16)) << 32);
        v35 = *(&v111 + 1);
        v108[0] = *(&v114 + 1);
        *(v108 + 3) = DWORD1(v114);
        v36 = v117[0];
        v37 = v117[0] & 0xFE;
        if (v111 <= 0xFDu)
        {
          if (v37 != 254)
          {
            v69 = v112;
            v74 = v113;
            v77 = v114;
            v72 = *(&v114 + 1);
            v96 = v115;
            v97 = v116;
            *v99 = *&v117[8];
            *&v99[16] = *&v117[24];
            *&v99[32] = *&v117[40];
            v98 = *v117;
            v50 = *&v117[56];
            v100 = *&v117[56];
            v60 = *(&v115 + 1);
            v62 = v115;
            v41 = v116;
            v56 = *&v117[16];
            v58 = *&v117[8];
            v53 = *&v117[32];
            v54 = *&v117[24];
            v52 = *&v117[40];
            v51 = v117[48];
            v81 = v109;
            v82 = v110;
            v83 = v111;
            v78 = v115;
            v79 = v116;
            v80 = v117[0];
            sub_242CA321C(&v109, &v84, &qword_27ECFB0A0);
            sub_242CA321C(&v115, &v84, &qword_27ECFB0A0);
            v67 = v31;
            sub_242C7F6C4(v30, *(&v30 + 1), v31, v32, v33);
            sub_242C7F6C4(v62, v60, v41, *(&v41 + 1), v36);
            v42 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v81, &v78);
            sub_242C7F724(v78, *(&v78 + 1), v79, *(&v79 + 1), v80);
            sub_242C7F724(v81, *(&v81 + 1), v82, *(&v82 + 1), v83);
            if ((v42 & 1) != 0 && v35 == v58)
            {
              v43 = *(&v69 + 1);
              v44 = v69;
              v84 = v69;
              v85 = v74;
              v86 = v77;
              *&v81 = v56;
              *(&v81 + 1) = v54;
              *&v82 = v53;
              *(&v82 + 1) = v52;
              v83 = v51;
              sub_242C7F6C4(v69, *(&v69 + 1), v74, *(&v74 + 1), v77);
              sub_242C7F6C4(v56, v54, v53, v52, v51);
              v45 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v84, &v81);
              sub_242C7F724(v81, *(&v81 + 1), v82, *(&v82 + 1), v83);
              sub_242C7F724(v84, *(&v84 + 1), v85, *(&v85 + 1), v86);
              sub_242C6D138(&v96, &qword_27ECFB0A0);
              v46 = *(&v74 + 1);
              v47 = v74;
              v48 = v77;
              v49 = v72;
              if ((v45 & 1) != 0 && v72 == v50)
              {
                v84 = v30;
                v85 = __PAIR128__(v32, v67);
                v86 = v33;
                v87 = v34;
                v89 = BYTE6(v34);
                v88 = WORD2(v34);
                v90 = v35;
                v91 = v69;
                v92 = v74;
                v93 = v77;
                *v94 = v108[0];
                *&v94[3] = *(v108 + 3);
                v95 = v72;
                v38 = &v84;
                goto LABEL_11;
              }
            }

            else
            {
              sub_242C6D138(&v96, &qword_27ECFB0A0);
              v49 = v72;
              v47 = v74;
              v48 = v77;
              v46 = *(&v74 + 1);
              v43 = *(&v69 + 1);
              v44 = v69;
            }

            v84 = v30;
            *&v85 = v67;
            *(&v85 + 1) = v32;
            v86 = v33;
            v87 = v34;
            v89 = BYTE6(v34);
            v88 = WORD2(v34);
            v90 = v35;
            *&v91 = v44;
            *(&v91 + 1) = v43;
            *&v92 = v47;
            *(&v92 + 1) = v46;
            v93 = v48;
            *v94 = v108[0];
            *&v94[3] = *(v108 + 3);
            v95 = v49;
            v39 = &qword_27ECFB0A0;
            v40 = &v84;
            goto LABEL_21;
          }
        }

        else if (v37 == 254)
        {
          v96 = v109;
          v97 = v110;
          LOBYTE(v98) = v111;
          *(&v98 + 1) = *(&v111 + 1);
          HIBYTE(v98) = (*(&v111 + 1) | ((*(&v111 + 5) | (BYTE7(v111) << 16)) << 32)) >> 48;
          *(&v98 + 5) = *(&v111 + 5);
          *v99 = *(&v111 + 1);
          *&v99[8] = v112;
          *&v99[24] = v113;
          v99[40] = v114;
          *&v99[41] = *(&v114 + 1);
          *&v99[44] = DWORD1(v114);
          v100 = *(&v114 + 1);
          sub_242CA321C(&v109, &v84, &qword_27ECFB0A0);
          sub_242CA321C(&v115, &v84, &qword_27ECFB0A0);
          v38 = &v96;
LABEL_11:
          sub_242C6D138(v38, &qword_27ECFB0A0);
          return 1;
        }

        v96 = v109;
        v97 = v110;
        LOBYTE(v98) = v111;
        *(&v98 + 1) = *(&v111 + 1);
        HIBYTE(v98) = (*(&v111 + 1) | ((*(&v111 + 5) | (BYTE7(v111) << 16)) << 32)) >> 48;
        *(&v98 + 5) = *(&v111 + 5);
        *v99 = *(&v111 + 1);
        *&v99[8] = v112;
        *&v99[24] = v113;
        v99[40] = v114;
        *&v99[41] = *(&v114 + 1);
        *&v99[44] = DWORD1(v114);
        v100 = *(&v114 + 1);
        v101 = v115;
        v102 = v116;
        v104 = *&v117[8];
        v105 = *&v117[24];
        v106 = *&v117[40];
        v103 = *v117;
        v107 = *&v117[56];
        sub_242CA321C(&v109, &v84, &qword_27ECFB0A0);
        sub_242CA321C(&v115, &v84, &qword_27ECFB0A0);
        v39 = &unk_27ECFB1A0;
        v40 = &v96;
LABEL_21:
        sub_242C6D138(v40, v39);
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV15PopoverLocationO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v66 = a1[10];
  v67 = v3;
  v4 = a1[11];
  v68 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v62 = a1[6];
  v63 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v64 = a1[8];
  v65 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v58 = a1[2];
  v59 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v60 = a1[4];
  v61 = v12;
  v13 = a1[1];
  v57[0] = *a1;
  v57[1] = v13;
  v14 = a2[9];
  v15 = a2[11];
  v79 = a2[10];
  v80 = v15;
  v16 = a2[11];
  v81 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v75 = a2[6];
  v76 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v78 = a2[9];
  v77 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v71 = a2[2];
  v72 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v74 = a2[5];
  v73 = v24;
  v27 = *a2;
  v28 = *a2;
  v70 = a2[1];
  v69 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v82[10] = a1[10];
  v82[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v82[6] = a1[6];
  v82[7] = v32;
  v33 = a1[8];
  v82[9] = v29;
  v82[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v82[2] = a1[2];
  v82[3] = v35;
  v36 = a1[4];
  v82[5] = v31;
  v82[4] = v36;
  v37 = *a1;
  v82[1] = v34;
  v82[0] = v37;
  v82[22] = v14;
  v82[23] = v79;
  v38 = a2[12];
  v82[24] = v16;
  v82[25] = v38;
  v82[18] = v17;
  v82[19] = v75;
  v82[20] = v20;
  v82[21] = v21;
  v82[14] = v22;
  v82[15] = v71;
  v82[16] = v25;
  v82[17] = v26;
  v82[12] = a1[12];
  v82[13] = v28;
  v93 = v66;
  v94 = v4;
  v95 = a1[12];
  v89 = v62;
  v90 = v7;
  v91 = v64;
  v92 = v2;
  v85 = v58;
  v86 = v11;
  v87 = v60;
  v88 = v5;
  v83 = v57[0];
  v84 = v9;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v83) != 1)
  {
    v54 = v79;
    v55 = v80;
    v56 = v81;
    v50 = v75;
    v51 = v76;
    v52 = v77;
    v53 = v78;
    v46 = v71;
    v47 = v72;
    v48 = v73;
    v49 = v74;
    v44 = v69;
    v45 = v70;
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v44) != 1)
    {
      v43[10] = v93;
      v43[11] = v94;
      v43[12] = v95;
      v43[6] = v89;
      v43[7] = v90;
      v43[8] = v91;
      v43[9] = v92;
      v43[2] = v85;
      v43[3] = v86;
      v43[4] = v87;
      v43[5] = v88;
      v43[0] = v83;
      v43[1] = v84;
      v42[10] = v54;
      v42[11] = v55;
      v42[12] = v56;
      v42[6] = v50;
      v42[7] = v51;
      v42[8] = v52;
      v42[9] = v53;
      v42[2] = v46;
      v42[3] = v47;
      v42[4] = v48;
      v42[5] = v49;
      v42[0] = v44;
      v42[1] = v45;
      sub_242E944A0(&v69, v41);
      sub_242E944A0(v57, v41);
      sub_242E944A0(v57, v41);
      sub_242E944A0(&v69, v41);
      v39 = _s14CarPlayAssetUI10InstrumentV15PopoverLocationO18LocalConfigurationV2eeoiySbAG_AGtFZ_0(v43, v42);
      sub_242C6D138(v82, &qword_27ECFB1A8);
      sub_242D906CC(&v69);
      sub_242D906CC(v57);
      return v39 & 1;
    }

    goto LABEL_5;
  }

  v54 = v79;
  v55 = v80;
  v56 = v81;
  v50 = v75;
  v51 = v76;
  v52 = v77;
  v53 = v78;
  v46 = v71;
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v44 = v69;
  v45 = v70;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v44) != 1)
  {
LABEL_5:
    sub_242E944A0(v57, &v44);
    sub_242E944A0(&v69, &v44);
    sub_242C6D138(v82, &qword_27ECFB1A8);
    v39 = 0;
    return v39 & 1;
  }

  sub_242C6D138(v82, &qword_27ECFB1A8);
  v39 = 1;
  return v39 & 1;
}

uint64_t _s14CarPlayAssetUI10InstrumentV20PopoverConfigurationV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v81 = a1[10];
  v82 = v3;
  v4 = a1[11];
  v83 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v77 = a1[6];
  v78 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v79 = a1[8];
  v80 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v73 = a1[2];
  v74 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v75 = a1[4];
  v76 = v12;
  v13 = a1[1];
  v71 = *a1;
  v72 = v13;
  v14 = a2[9];
  v15 = a2[11];
  v94 = a2[10];
  v95 = v15;
  v16 = a2[11];
  v96 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v90 = a2[6];
  v91 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v93 = a2[9];
  v92 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v86 = a2[2];
  v87 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v89 = a2[5];
  v88 = v24;
  v27 = *a2;
  v28 = *a2;
  v85 = a2[1];
  v84 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v97[10] = a1[10];
  v97[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v97[6] = a1[6];
  v97[7] = v32;
  v33 = a1[8];
  v97[9] = v29;
  v97[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v97[2] = a1[2];
  v97[3] = v35;
  v36 = a1[4];
  v97[5] = v31;
  v97[4] = v36;
  v37 = *a1;
  v97[1] = v34;
  v97[0] = v37;
  v97[22] = v14;
  v97[23] = v94;
  v38 = a2[12];
  v97[24] = v16;
  v97[25] = v38;
  v97[18] = v17;
  v97[19] = v90;
  v97[20] = v20;
  v97[21] = v21;
  v97[14] = v22;
  v97[15] = v86;
  v97[16] = v25;
  v97[17] = v26;
  v97[12] = a1[12];
  v97[13] = v28;
  v108 = v81;
  v109 = v4;
  v110 = a1[12];
  v104 = v77;
  v105 = v7;
  v106 = v79;
  v107 = v2;
  v100 = v73;
  v101 = v11;
  v102 = v75;
  v103 = v5;
  v98 = v71;
  v99 = v9;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v98) != 1)
  {
    v68 = v94;
    v69 = v95;
    v70 = v96;
    v64 = v90;
    v65 = v91;
    v66 = v92;
    v67 = v93;
    v60 = v86;
    v61 = v87;
    v62 = v88;
    v63 = v89;
    v58 = v84;
    v59 = v85;
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v58) != 1)
    {
      v55 = v108;
      v56 = v109;
      v57 = v110;
      v51 = v104;
      v52 = v105;
      v53 = v106;
      v54 = v107;
      v47 = v100;
      v48 = v101;
      v49 = v102;
      v50 = v103;
      v45 = v98;
      v46 = v99;
      v44[10] = v68;
      v44[11] = v69;
      v44[12] = v70;
      v44[6] = v64;
      v44[7] = v65;
      v44[8] = v66;
      v44[9] = v67;
      v44[2] = v60;
      v44[3] = v61;
      v44[4] = v62;
      v44[5] = v63;
      v44[0] = v58;
      v44[1] = v59;
      sub_242E944A0(&v84, v43);
      sub_242E944A0(&v71, v43);
      sub_242E944A0(&v71, v43);
      sub_242E944A0(&v84, v43);
      v39 = _s14CarPlayAssetUI10InstrumentV15PopoverLocationO18LocalConfigurationV2eeoiySbAG_AGtFZ_0(&v45, v44);
      sub_242C6D138(v97, &qword_27ECFB1A8);
      sub_242D906CC(&v84);
      sub_242D906CC(&v71);
      return v39 & 1;
    }

    v55 = v81;
    v56 = v82;
    v57 = v83;
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v54 = v80;
    v47 = v73;
    v48 = v74;
    v49 = v75;
    v50 = v76;
    v41 = v71;
    v40 = v72;
    goto LABEL_7;
  }

  v68 = v94;
  v69 = v95;
  v70 = v96;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v67 = v93;
  v60 = v86;
  v61 = v87;
  v62 = v88;
  v63 = v89;
  v58 = v84;
  v59 = v85;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v58) != 1)
  {
    v55 = v94;
    v56 = v95;
    v57 = v96;
    v51 = v90;
    v52 = v91;
    v53 = v92;
    v54 = v93;
    v47 = v86;
    v48 = v87;
    v49 = v88;
    v50 = v89;
    v40 = v85;
    v41 = v84;
LABEL_7:
    v45 = v41;
    v46 = v40;
    sub_242CA321C(&v45, v44, &qword_27ECFB098);
    sub_242C6D138(v97, &qword_27ECFB1A8);
    v39 = 0;
    return v39 & 1;
  }

  sub_242C6D138(v97, &qword_27ECFB1A8);
  v39 = 1;
  return v39 & 1;
}

unint64_t sub_242E94508()
{
  result = qword_27ECFB078;
  if (!qword_27ECFB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB078);
  }

  return result;
}

unint64_t sub_242E9455C()
{
  result = qword_27ECFB080;
  if (!qword_27ECFB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB080);
  }

  return result;
}

unint64_t sub_242E945B0()
{
  result = qword_27ECFB090;
  if (!qword_27ECFB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB090);
  }

  return result;
}

unint64_t sub_242E94634()
{
  result = qword_27ECFB0B0;
  if (!qword_27ECFB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0B0);
  }

  return result;
}

unint64_t sub_242E946C0()
{
  result = qword_27ECFB0D8;
  if (!qword_27ECFB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0D8);
  }

  return result;
}

unint64_t sub_242E94714()
{
  result = qword_27ECFB0E0;
  if (!qword_27ECFB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0E0);
  }

  return result;
}

unint64_t sub_242E94768()
{
  result = qword_27ECFB0E8;
  if (!qword_27ECFB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0E8);
  }

  return result;
}

unint64_t sub_242E947BC()
{
  result = qword_27ECFB0F0;
  if (!qword_27ECFB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0F0);
  }

  return result;
}

unint64_t sub_242E94810()
{
  result = qword_27ECFB110;
  if (!qword_27ECFB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB110);
  }

  return result;
}

unint64_t sub_242E94868()
{
  result = qword_27ECFB118;
  if (!qword_27ECFB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB118);
  }

  return result;
}

unint64_t sub_242E948C0()
{
  result = qword_27ECFB120;
  if (!qword_27ECFB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB120);
  }

  return result;
}

unint64_t sub_242E94918()
{
  result = qword_27ECFB128;
  if (!qword_27ECFB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB128);
  }

  return result;
}

uint64_t sub_242E9496C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
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

uint64_t sub_242E949C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_242E94A60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242E94AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_242E94B20(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 200) = 0;
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_242E94BEC()
{
  result = qword_27ECFB130;
  if (!qword_27ECFB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB130);
  }

  return result;
}

unint64_t sub_242E94C44()
{
  result = qword_27ECFB138;
  if (!qword_27ECFB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB138);
  }

  return result;
}

unint64_t sub_242E94C9C()
{
  result = qword_27ECFB140;
  if (!qword_27ECFB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB140);
  }

  return result;
}

unint64_t sub_242E94CF4()
{
  result = qword_27ECFB148;
  if (!qword_27ECFB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB148);
  }

  return result;
}

unint64_t sub_242E94D4C()
{
  result = qword_27ECFB150;
  if (!qword_27ECFB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB150);
  }

  return result;
}

unint64_t sub_242E94DA4()
{
  result = qword_27ECFB158;
  if (!qword_27ECFB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB158);
  }

  return result;
}

unint64_t sub_242E94DFC()
{
  result = qword_27ECFB160;
  if (!qword_27ECFB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB160);
  }

  return result;
}

unint64_t sub_242E94E54()
{
  result = qword_27ECFB168;
  if (!qword_27ECFB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB168);
  }

  return result;
}

unint64_t sub_242E94EAC()
{
  result = qword_27ECFB170;
  if (!qword_27ECFB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB170);
  }

  return result;
}

unint64_t sub_242E94F04()
{
  result = qword_27ECFB178;
  if (!qword_27ECFB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB178);
  }

  return result;
}

unint64_t sub_242E94F5C()
{
  result = qword_27ECFB180;
  if (!qword_27ECFB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB180);
  }

  return result;
}

unint64_t sub_242E94FB4()
{
  result = qword_27ECFB188;
  if (!qword_27ECFB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB188);
  }

  return result;
}

unint64_t sub_242E9500C()
{
  result = qword_27ECFB190;
  if (!qword_27ECFB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB190);
  }

  return result;
}

unint64_t sub_242E95064()
{
  result = qword_27ECFB198;
  if (!qword_27ECFB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB198);
  }

  return result;
}

uint64_t sub_242E950B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6165727473 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754265736F6C63 && a2 == 0xEB000000006E6F74 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5AC50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t TaggedValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if ((*(v6 + 48))(v10) == 1)
  {
    v13 = sub_242F05860();
    (*(*(v13 - 8) + 8))(a1, v13);
    v14 = type metadata accessor for TaggedValue();
    v15 = *(*(v14 - 8) + 56);

    return v15(a3, 1, 1, v14);
  }

  else
  {
    v17 = *(v6 + 32);
    v17(v12, a1, a2);
    v17(v8, v12, a2);
    v17(a3, v8, a2);
    v18 = type metadata accessor for TaggedValue();
    return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  }
}

uint64_t sub_242E95524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TaggedValue.init(rawValue:)(a1, a2, *(a2 + 24));
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_242E955D8@<X0>(uint64_t *a1@<X8>)
{
  result = _s14CarPlayAssetUI10EmptyArrayO7defaultSayxGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_242E95604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242F04C80();
  *a1 = result;
  return result;
}

uint64_t TaggedValue.description.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_242F04F90();
}

uint64_t TaggedValue.playgroundDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  a2[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, v3);
}

uint64_t sub_242E958CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(char *, uint64_t, uint64_t)@<X6>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness, v16);
  a4(v13, a2, a3);
  (*(v11 + 8))(a1, AssociatedTypeWitness);
  return (*(v14 + 32))(a5, v18, a2);
}

uint64_t TaggedValue<>.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v31 = a6;
  v32 = a5;
  v33 = a7;
  v34 = a2;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_242F05860();
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v29 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v29 - v22;
  (*(v10 + 16))(v12, a1, a4, v21);
  sub_242F05CF0();
  (*(v10 + 8))(a1, a4);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v13 + 8))(v15, v30);
    v24 = 1;
    v25 = v33;
  }

  else
  {
    v26 = *(v16 + 32);
    v26(v23, v15, a3);
    v26(v19, v23, a3);
    v25 = v33;
    v26(v33, v19, a3);
    v24 = 0;
  }

  v27 = type metadata accessor for TaggedValue();
  return (*(*(v27 - 8) + 56))(v25, v24, 1, v27);
}

uint64_t sub_242E95DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t TaggedValue<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v21 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaggedValue();
  v16 = *(v10 - 8);
  v17 = v10;
  MEMORY[0x28223BE20](v10);
  v15 = &v15 - v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06470();
  if (v3)
  {
    sub_242C6CF00(a1, v20);
    v12 = v21;
    sub_242F054A0();

    v13 = v15;
    (*(v18 + 32))(v15, v12, a2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_2Tm(v20, v20[3]);
    sub_242F06160();
    v13 = v15;
    (*(v18 + 32))(v15, v9, a2);
    __swift_destroy_boxed_opaque_existential_2Tm(v20);
  }

  (*(v16 + 32))(v19, v13, v17);
  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

void TaggedValue<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_242F061B0();
  __swift_destroy_boxed_opaque_existential_2Tm(v2);
  if (v1)
  {
    sub_242F04D70();
  }
}

uint64_t sub_242E96200(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v4);
}

uint64_t sub_242E9626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v6);
}

uint64_t sub_242E962E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v6);
}

uint64_t UUID.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_242F036E0();
  v5 = sub_242F03720();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v6 + 32))(a1, v4, v5);
  }

  return result;
}

uint64_t sub_242E9670C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_242F036E0();
  v7 = *(a1 - 8);
  result = (*(v7 + 48))(v6, 1, a1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v7 + 32))(a2, v6, a1);
  }

  return result;
}

uint64_t sub_242E9681C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double static PlatterShadowConfiguration.centerConsoleDefault.getter@<D0>(uint64_t a1@<X8>)
{
  sub_242F04730();
  v2 = sub_242F04770();

  *a1 = v2;
  result = 16.0;
  *(a1 + 8) = xmmword_242F2D200;
  return result;
}

uint64_t sub_242E9690C()
{
  v1 = sub_242F04000();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_242F05710();
    v6 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_242E96A54@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_242F04A30();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_242F04700();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242F03E30();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB268);
  MEMORY[0x28223BE20](v45);
  v10 = &v36 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB270);
  MEMORY[0x28223BE20](v44);
  v12 = &v36 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB278);
  MEMORY[0x28223BE20](v46);
  v14 = &v36 - v13;
  v15 = *(v1 + 40);
  v47 = v6;
  v16 = *(v6 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_242F04070();
  v19 = *(*(v18 - 8) + 104);
  v43 = v17;
  v19(&v8[v16], v17, v18);
  *v8 = v15;
  *(v8 + 1) = v15;
  if (sub_242E9690C())
  {
    (*(v38 + 104))(v37, *MEMORY[0x277CE0EE0], v39);
    v49 = sub_242F047A0();
  }

  else
  {
    v20 = type metadata accessor for PlatterView();
    (*(v41 + 16))(v40, v1 + *(v20 + 28), v42);
  }

  v21 = sub_242F03C80();
  sub_242E97644(v8, v10);
  *&v10[*(v45 + 36)] = v21;
  v22 = &v12[*(v44 + 36)];
  v19(&v22[*(v47 + 20)], v43, v18);
  *v22 = v15;
  *(v22 + 1) = v15;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB280) + 36)] = 256;
  sub_242CF6B3C(v10, v12, &qword_27ECFB268);
  v23 = (v1 + *(type metadata accessor for PlatterView() + 32));
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  sub_242CF6B3C(v12, v14, &qword_27ECFB270);
  v27 = &v14[*(v46 + 36)];
  *v27 = v24;
  *(v27 + 1) = v25;
  *(v27 + 2) = v26;

  v28 = sub_242F04A70();
  v30 = v29;
  sub_242E96F20(v1, &v49);
  v31 = v14;
  v33 = v48;
  v32 = v49;
  sub_242CF6B3C(v31, v48, &qword_27ECFB278);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB288);
  v35 = (v33 + *(result + 36));
  *v35 = v32;
  v35[1] = v28;
  v35[2] = v30;
  return result;
}

void sub_242E96F20(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {

    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242E976A8(v9, v8, 0);
    (*(v5 + 8))(v7, v4);
    if (v14[1])
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(a1 + 40);
  v11 = [objc_allocWithZone(MEMORY[0x277CD9E18]) init];
  v12 = sub_242F04F00();

  [v11 setIdentifier_];

  [v11 setCornerRadius_];
LABEL_6:
  *a2 = v11;
}

uint64_t EnvironmentValues.opaquePlatterOverride.getter()
{
  sub_242E97388();
  sub_242F04010();
  return v1;
}

uint64_t sub_242E97150@<X0>(_BYTE *a1@<X8>)
{
  sub_242E97388();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.opaquePlatterOverride.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_242E97388();
  sub_242F04010();
  *(a1 + 16) = *(a1 + 17);
  return sub_242E97290;
}

uint64_t PlatterShadowConfiguration.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PlatterShadowConfiguration.init(color:radius:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

unint64_t sub_242E97388()
{
  result = qword_27ECFB240;
  if (!qword_27ECFB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB240);
  }

  return result;
}

uint64_t type metadata accessor for PlatterView()
{
  result = qword_27ECFB248;
  if (!qword_27ECFB248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242E97460()
{
  sub_242E97564();
  if (v0 <= 0x3F)
  {
    sub_242E975C8(319, &qword_27ECF0CA8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_242F04A30();
      if (v2 <= 0x3F)
      {
        sub_242E975C8(319, &qword_27ECFA830, &type metadata for PlatterShadowConfiguration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E97564()
{
  if (!qword_27ECFB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB260);
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECFB258);
    }
  }
}

void sub_242E975C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_242E97644(uint64_t a1, uint64_t a2)
{
  v4 = sub_242F03E30();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E976A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_242E976B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_242E97714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_242E97778()
{
  result = qword_27ECFB290;
  if (!qword_27ECFB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB288);
    sub_242E97830();
    sub_242C7E000(&qword_27ECFB2C8, &qword_27ECFB2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB290);
  }

  return result;
}

unint64_t sub_242E97830()
{
  result = qword_27ECFB298;
  if (!qword_27ECFB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB278);
    sub_242E978BC();
    sub_242E97A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB298);
  }

  return result;
}

unint64_t sub_242E978BC()
{
  result = qword_27ECFB2A0;
  if (!qword_27ECFB2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB270);
    sub_242E97974();
    sub_242C7E000(&qword_27ECFB2B8, &qword_27ECFB280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2A0);
  }

  return result;
}

unint64_t sub_242E97974()
{
  result = qword_27ECFB2A8;
  if (!qword_27ECFB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB268);
    sub_242E97A2C();
    sub_242C7E000(&qword_27ECF0BF8, &qword_27ECF0C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2A8);
  }

  return result;
}

unint64_t sub_242E97A2C()
{
  result = qword_27ECFB2B0;
  if (!qword_27ECFB2B0)
  {
    sub_242F03E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2B0);
  }

  return result;
}

unint64_t sub_242E97A84()
{
  result = qword_27ECFB2C0;
  if (!qword_27ECFB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2C0);
  }

  return result;
}

uint64_t sub_242E97AF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2D8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *v1;
  if (*v1)
  {
    v11 = v1[1];
    v10 = v1[2];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E8);
    (*(*(v12 - 8) + 16))(v8, a1, v12);
    v13 = &v8[*(v6 + 36)];
    *v13 = v9;
    *(v13 + 1) = v11;
    *(v13 + 2) = 0;
    *(v13 + 3) = v10;
    sub_242E97E50(v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_242E97D98();
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8);

    sub_242F041C0();
    return sub_242E97EC0(v8);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E8);
    (*(*(v15 - 8) + 16))(v5, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_242E97D98();
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8);
    return sub_242F041C0();
  }
}

unint64_t sub_242E97D98()
{
  result = qword_27ECFB2F0;
  if (!qword_27ECFB2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB2E0);
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2F0);
  }

  return result;
}

uint64_t sub_242E97E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E97EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242E97F28()
{
  result = qword_27ECFB300;
  if (!qword_27ECFB300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB308);
    sub_242E97D98();
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB300);
  }

  return result;
}

uint64_t SystemUILayout.ContentArea.overrides.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void SystemUILayout.ContentArea.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t SystemUILayout.ContentArea.zones.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SystemUILayout.ContentArea.init(frame:zones:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = 0;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_242E980D8()
{
  v1 = 0x656D617266;
  if (*v0 != 1)
  {
    v1 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_242E98130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E99DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E98158(uint64_t a1)
{
  v2 = sub_242E98494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E98194(uint64_t a1)
{
  v2 = sub_242E98494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemUILayout.ContentArea.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v14 = *(v1 + 3);
  v15 = v9;
  v13 = v1[5];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E98494();

  sub_242F064C0();
  *&v16 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB320);
  sub_242C7E000(&qword_27ECFB328, &qword_27ECFB320);
  sub_242F05EB0();

  if (!v2)
  {
    v10 = v13;
    v16 = v15;
    v17 = v14;
    v18 = 1;
    type metadata accessor for CGRect(0);
    sub_242E988CC(&qword_27ECF2330, type metadata accessor for CGRect);
    sub_242F05F20();
    *&v16 = v10;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680);
    sub_242E98830(&qword_27ECF4688, &qword_27ECF2578);
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242E98494()
{
  result = qword_27ECFB318;
  if (!qword_27ECFB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB318);
  }

  return result;
}

uint64_t SystemUILayout.ContentArea.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E98494();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB320);
    v17 = 0;
    sub_242C7E000(&qword_27ECFB338, &qword_27ECFB320);
    sub_242F05D90();
    v9 = v15;

    type metadata accessor for CGRect(0);
    v17 = 1;
    sub_242E988CC(&qword_27ECF23A0, type metadata accessor for CGRect);
    sub_242F05E00();
    v13 = v16;
    v14 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680);
    v17 = 2;
    sub_242E98830(&qword_27ECF46D8, &qword_27ECF2570);
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    v12 = v14;
    *(a2 + 24) = v13;
    *(a2 + 8) = v12;
    *(a2 + 40) = v11;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242E98830(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4680);
    sub_242E988CC(a2, type metadata accessor for Zone);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242E988CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SystemUILayout.primaryContentArea.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

__n128 SystemUILayout.primaryContentArea.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[5];

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 24) = *(a1 + 3);
  *(v1 + 8) = result;
  *(v1 + 40) = v4;
  return result;
}

uint64_t SystemUILayout.secondaryContentArea.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_242E98A38(v2);
}

uint64_t sub_242E98A38(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 SystemUILayout.secondaryContentArea.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242E98AC8(*(v1 + 48));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t sub_242E98AC8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void SystemUILayout.persistentElements.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

uint64_t SystemUILayout.persistentElements.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 104) = *result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t SystemUILayout.dualStatusBarSecondaryMaterial.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

__n128 SystemUILayout.init(primaryContentArea:secondaryContentArea:hasDualStatusBar:dualStatusBarSecondaryMaterial:hasPhysicalControlBars:hasTopStatusBar:persistentElements:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *(a1 + 40);
  v21 = a2[1];
  v22 = *a2;
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = *a8;
  v19 = *(a8 + 8);
  *a9 = *a1;
  *(a9 + 8) = *(a1 + 8);
  *(a9 + 24) = *(a1 + 24);
  *(a9 + 40) = v15;
  sub_242E98AC8(1);
  result = v21;
  *(a9 + 48) = v22;
  *(a9 + 64) = v21;
  *(a9 + 80) = v16;
  *(a9 + 88) = v17;
  *(a9 + 96) = a3;
  *(a9 + 120) = a4;
  *(a9 + 128) = a5 & 1;
  *(a9 + 97) = a6;
  *(a9 + 98) = a7;
  *(a9 + 104) = v18;
  *(a9 + 112) = v19;
  return result;
}

unint64_t sub_242E98D18()
{
  v1 = *v0;
  v2 = 0x7453706F54736168;
  v3 = 0xD00000000000001ELL;
  if (v1 == 5)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  v5 = 0xD000000000000014;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242E98E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E99EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E98E30(uint64_t a1)
{
  v2 = sub_242E99238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E98E6C(uint64_t a1)
{
  v2 = sub_242E99238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemUILayout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB340);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *v2;
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = *(v2 + 64);
  v27 = *(v2 + 56);
  v28 = v9;
  v12 = *(v2 + 80);
  v25 = *(v2 + 72);
  v26 = v11;
  v23 = *(v2 + 88);
  v24 = v12;
  v34 = *(v2 + 96);
  LODWORD(v9) = *(v2 + 97);
  v21 = *(v2 + 98);
  v22 = v9;
  v17 = *(v2 + 104);
  v18 = *(v2 + 112);
  v19 = *(v2 + 120);
  v20 = *(v2 + 128);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E99238();

  sub_242F064C0();
  v30 = v8;
  v13 = *(v2 + 8);
  v32 = *(v2 + 24);
  v31 = v13;
  v33 = v10;
  v35 = 0;
  sub_242E9928C();
  v14 = v29;
  sub_242F05F20();
  if (v14)
  {
  }

  else
  {
    v15 = v21;

    v30 = v28;
    *&v31 = v27;
    *(&v31 + 1) = v26;
    *&v32 = v25;
    *(&v32 + 1) = v24;
    v33 = v23;
    v35 = 1;
    sub_242E98A38(v28);
    sub_242F05EB0();
    sub_242E98AC8(v30);
    LOBYTE(v30) = 2;
    sub_242F05ED0();
    LOBYTE(v30) = 3;
    sub_242F05ED0();
    LOBYTE(v30) = v15;
    v35 = 4;
    sub_242F05F20();
    v35 = 5;
    if ((v18 & 1) == 0)
    {
      v30 = v17;
      sub_242E992E0();
      sub_242F05F20();
    }

    LOBYTE(v30) = 6;
    sub_242F05EA0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242E99238()
{
  result = qword_27ECFB348;
  if (!qword_27ECFB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB348);
  }

  return result;
}

unint64_t sub_242E9928C()
{
  result = qword_27ECFB350;
  if (!qword_27ECFB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB350);
  }

  return result;
}

unint64_t sub_242E992E0()
{
  result = qword_27ECFB358;
  if (!qword_27ECFB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB358);
  }

  return result;
}

uint64_t SystemUILayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB360);
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v32 - v5;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E99238();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    return sub_242E98AC8(1);
  }

  else
  {
    v44 = a1;
    v7 = v4;
    v8 = v45;
    LOBYTE(v47) = 0;
    sub_242E998C0();
    v9 = v46;
    v10 = v6;
    sub_242F05E00();
    v12 = v57;
    v13 = v58;
    v14 = v59;
    v15 = v60;
    v40 = v56;
    v41 = v61;
    LOBYTE(v47) = 1;
    sub_242F05D90();
    v16 = v44;
    v17 = v56;
    v42 = v57;
    v43 = v58;
    v38 = v60;
    v39 = v59;
    v37 = v61;
    sub_242E98AC8(1);
    LOBYTE(v56) = 2;
    v18 = sub_242F05DB0();
    LOBYTE(v56) = 3;
    v35 = sub_242F05DB0();
    v36 = v18;
    LOBYTE(v56) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400);
    sub_242C7E000(&qword_27ECF1408, &qword_27ECF1400);
    sub_242F05D90();
    v34 = v47;
    LOBYTE(v47) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB370);
    sub_242C7E000(&qword_27ECFB378, &qword_27ECFB370);
    sub_242F05D90();
    v33 = v56;
    LODWORD(v32) = BYTE1(v57);
    v76 = (BYTE1(v57) | v57) & 1;
    v77 = 6;
    v19 = sub_242F05D80();
    v21 = v20;
    v35 &= 1u;
    v36 &= 1u;
    v34 &= 1u;
    v22 = v33;
    if (v32)
    {
      v22 = 0;
    }

    v32 = v19;
    v33 = v22;
    (*(v7 + 8))(v10, v9);
    v75 = v21 & 1;
    *&v47 = v40;
    *(&v47 + 1) = v12;
    *&v48 = v13;
    *(&v48 + 1) = v14;
    *&v49 = v15;
    *(&v49 + 1) = v41;
    *&v50 = v17;
    v23 = v17;
    *(&v50 + 1) = v42;
    *&v51 = v43;
    v25 = v38;
    v24 = v39;
    *(&v51 + 1) = v39;
    *&v52 = v38;
    v26 = v37;
    *(&v52 + 1) = v37;
    LOBYTE(v53) = v36;
    BYTE1(v53) = v35;
    BYTE2(v53) = v34;
    *(&v53 + 1) = v33;
    LODWORD(v46) = v76;
    LOBYTE(v54) = v76;
    *(&v54 + 1) = v32;
    v27 = v75;
    v55 = v75;
    v28 = v52;
    *(v8 + 64) = v51;
    *(v8 + 80) = v28;
    v29 = v50;
    *(v8 + 32) = v49;
    *(v8 + 48) = v29;
    v30 = v48;
    *v8 = v47;
    *(v8 + 16) = v30;
    *(v8 + 128) = v27;
    v31 = v54;
    *(v8 + 96) = v53;
    *(v8 + 112) = v31;
    sub_242E0EBBC(&v47, &v56);
    __swift_destroy_boxed_opaque_existential_2Tm(v16);
    v56 = v40;
    v57 = v12;
    v58 = v13;
    v59 = v14;
    v60 = v15;
    v61 = v41;
    v62 = v23;
    v63 = v42;
    v64 = v43;
    v65 = v24;
    v66 = v25;
    v67 = v26;
    v68 = v36;
    v69 = v35;
    v70 = v34;
    v71 = v33;
    v72 = v46;
    v73 = v32;
    v74 = v27;
    return sub_242E0EC18(&v56);
  }
}

unint64_t sub_242E998C0()
{
  result = qword_27ECFB368;
  if (!qword_27ECFB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB368);
  }

  return result;
}

unint64_t sub_242E99914(uint64_t a1)
{
  *(a1 + 16) = sub_242E998C0();
  result = sub_242E9928C();
  *(a1 + 24) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI14SystemUILayoutV11ContentAreaVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
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

uint64_t sub_242E999CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
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

uint64_t sub_242E99A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_242E99AB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_242E99B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_242E99BA0()
{
  result = qword_27ECFB380;
  if (!qword_27ECFB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB380);
  }

  return result;
}

unint64_t sub_242E99BF8()
{
  result = qword_27ECFB388;
  if (!qword_27ECFB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB388);
  }

  return result;
}

unint64_t sub_242E99C50()
{
  result = qword_27ECFB390;
  if (!qword_27ECFB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB390);
  }

  return result;
}

unint64_t sub_242E99CA8()
{
  result = qword_27ECFB398;
  if (!qword_27ECFB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB398);
  }

  return result;
}

unint64_t sub_242E99D00()
{
  result = qword_27ECFB3A0;
  if (!qword_27ECFB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB3A0);
  }

  return result;
}

unint64_t sub_242E99D58()
{
  result = qword_27ECFB3A8;
  if (!qword_27ECFB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB3A8);
  }

  return result;
}

uint64_t sub_242E99DAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE900000000000073;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E99EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5CE60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5CE80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5CEA0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CEC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7453706F54736168 && a2 == 0xEF72614273757461 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5CEE0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000242F5CF00 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__C::CGRect __swiftcall CGRect.rounded()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  v8 = round(CGRectGetMinX(*&v0));
  v15.origin.x = v7;
  v15.origin.y = v6;
  v15.size.width = v5;
  v15.size.height = v4;
  v9 = round(CGRectGetMinY(v15));
  v16.origin.x = v7;
  v16.origin.y = v6;
  v16.size.width = v5;
  v16.size.height = v4;
  v10 = round(CGRectGetWidth(v16));
  v17.origin.x = v7;
  v17.origin.y = v6;
  v17.size.width = v5;
  v17.size.height = v4;
  v11 = round(CGRectGetHeight(v17));
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

double CGRect.inset(from:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v19 = MinY - CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxX(v27);
  return v19;
}

CGFloat CGRect.inset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15.origin.x = a5;
  v15.origin.y = a6;
  v15.size.width = a7;
  v15.size.height = a8;
  v13 = CGRectGetMinX(v15) + a2;
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  CGRectGetMinY(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  CGRectGetWidth(v17);
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  CGRectGetHeight(v18);
  return v13;
}

__C::CGRect __swiftcall CGRect.init(size:)(CGSize size)
{
  height = size.height;
  width = size.width;
  v3 = 0.0;
  v4 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

double CGSize.minSide.getter(double a1, double a2)
{
  v2 = fabs(a2);
  result = fabs(a1);
  if (result >= v2)
  {
    return v2;
  }

  return result;
}

__C::CGRect __swiftcall CGSize.centered(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MinX = CGRectGetMinX(in);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = MinX + (CGRectGetWidth(v16) - v4) * 0.5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinY = CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = MinY + (CGRectGetHeight(v18) - v3) * 0.5;
  v13 = v10;
  v14 = v4;
  v15 = v3;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

__C::CGRect __swiftcall CGSize.centeredX(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MinX = CGRectGetMinX(in);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = MinX + (CGRectGetWidth(v15) - v4) * 0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v12 = v10;
  v13 = v4;
  v14 = v3;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = MinY;
  result.origin.x = v12;
  return result;
}

__C::CGRect __swiftcall CGSize.centeredY(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MinX = CGRectGetMinX(in);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MinY = CGRectGetMinY(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v11 = MinY + (CGRectGetHeight(v16) - v3) * 0.5;
  v12 = MinX;
  v13 = v4;
  v14 = v3;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t sub_242E9A648()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFB3B0 = v16;
  *(&xmmword_27ECFB3B0 + 1) = v15;
  qword_27ECFB3C0 = v14;
  unk_27ECFB3C8 = v7;
  *&xmmword_27ECFB3D0 = v8;
  *(&xmmword_27ECFB3D0 + 1) = v9;
  qword_27ECFB3E0 = v10;
  unk_27ECFB3E8 = v11;
  qword_27ECFB3F0 = result;
  return result;
}

uint64_t static Color.Ticks.orange.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFB3E0;
  v8[2] = xmmword_27ECFB3D0;
  v8[3] = *&qword_27ECFB3E0;
  v9 = qword_27ECFB3F0;
  v3 = qword_27ECFB3F0;
  v4 = *&qword_27ECFB3C0;
  v8[0] = xmmword_27ECFB3B0;
  v5 = xmmword_27ECFB3B0;
  v8[1] = *&qword_27ECFB3C0;
  *(a1 + 32) = xmmword_27ECFB3D0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.orange.setter(uint64_t a1)
{
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFB3D0;
  v5[3] = *&qword_27ECFB3E0;
  v6 = qword_27ECFB3F0;
  v5[0] = xmmword_27ECFB3B0;
  v5[1] = *&qword_27ECFB3C0;
  v2 = *(a1 + 48);
  xmmword_27ECFB3D0 = *(a1 + 32);
  *&qword_27ECFB3E0 = v2;
  qword_27ECFB3F0 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFB3B0 = *a1;
  *&qword_27ECFB3C0 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.orange.modify())()
{
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9AB10()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFB3F8 = v16;
  *(&xmmword_27ECFB3F8 + 1) = v15;
  qword_27ECFB408 = v14;
  unk_27ECFB410 = v7;
  *&xmmword_27ECFB418 = v8;
  *(&xmmword_27ECFB418 + 1) = v9;
  qword_27ECFB428 = v10;
  unk_27ECFB430 = v11;
  qword_27ECFB438 = result;
  return result;
}

uint64_t static Color.ProgressBars.orange.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFB428;
  v8[2] = xmmword_27ECFB418;
  v8[3] = *&qword_27ECFB428;
  v9 = qword_27ECFB438;
  v3 = qword_27ECFB438;
  v4 = *&qword_27ECFB408;
  v8[0] = xmmword_27ECFB3F8;
  v5 = xmmword_27ECFB3F8;
  v8[1] = *&qword_27ECFB408;
  *(a1 + 32) = xmmword_27ECFB418;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.orange.setter(uint64_t a1)
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFB418;
  v5[3] = *&qword_27ECFB428;
  v6 = qword_27ECFB438;
  v5[0] = xmmword_27ECFB3F8;
  v5[1] = *&qword_27ECFB408;
  v2 = *(a1 + 48);
  xmmword_27ECFB418 = *(a1 + 32);
  *&qword_27ECFB428 = v2;
  qword_27ECFB438 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFB3F8 = *a1;
  *&qword_27ECFB408 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.orange.modify())()
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9B014()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECFB440 = result;
  return result;
}

uint64_t static Color.Modular.orange.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECFB440;
}

uint64_t static Color.Modular.orange.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECFB440 = v1;
}

uint64_t (*static Color.Modular.orange.modify())()
{
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9B280()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFB448 = v14;
  *(&xmmword_27ECFB448 + 1) = v7;
  qword_27ECFB458 = v8;
  unk_27ECFB460 = v9;
  *&xmmword_27ECFB468 = v10;
  *(&xmmword_27ECFB468 + 1) = v11;
  qword_27ECFB478 = result;
  return result;
}

uint64_t static Color.ACC.orange.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECFB448 + 1);
  v3 = qword_27ECFB458;
  v4 = unk_27ECFB460;
  v5 = xmmword_27ECFB468;
  v6 = qword_27ECFB478;
  *a1 = xmmword_27ECFB448;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.orange.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFB448 = v5;
  *&qword_27ECFB458 = v4;
  xmmword_27ECFB468 = v3;
  qword_27ECFB478 = v1;
}

uint64_t (*static Color.ACC.orange.modify())()
{
  if (qword_27ECEF7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9B754()
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECFB418;
  v37 = *&qword_27ECFB428;
  v38 = qword_27ECFB438;
  v34 = xmmword_27ECFB3F8;
  v35 = *&qword_27ECFB408;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECFB3D0;
  v42 = *&qword_27ECFB3E0;
  v43 = qword_27ECFB3F0;
  v39 = xmmword_27ECFB3B0;
  v40 = *&qword_27ECFB3C0;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF7A0;
  v28 = qword_27ECFB440;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECFB448 + 1);
  v2 = qword_27ECFB458;
  v3 = unk_27ECFB460;
  v4 = xmmword_27ECFB468;
  v5 = qword_27ECFB478;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECFB448;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFB4A0 = v36;
  unk_27ECFB4B0 = v37;
  xmmword_27ECFB480 = v34;
  *algn_27ECFB490 = v35;
  unk_27ECFB4C8 = v39;
  unk_27ECFB4F8 = v42;
  qword_27ECFB4C0 = v38;
  unk_27ECFB4E8 = v41;
  unk_27ECFB4D8 = v40;
  qword_27ECFB508 = v43;
  unk_27ECFB510 = v28;
  qword_27ECFB518 = v23;
  unk_27ECFB520 = v22;
  qword_27ECFB528 = v21;
  unk_27ECFB530 = v27;
  qword_27ECFB538 = v26;
  qword_27ECFB540 = v25;
  unk_27ECFB548 = v3;
  xmmword_27ECFB550 = v4;
  qword_27ECFB560 = v24;
  unk_27ECFB568 = v20;
  qword_27ECFB570 = v19;
  qword_27ECFB578 = v11;
  unk_27ECFB580 = v12;
  qword_27ECFB588 = v13;
  unk_27ECFB590 = v14;
  qword_27ECFB598 = v15;
  unk_27ECFB5A0 = v16;
  xmmword_27ECFB5C8 = v32;
  unk_27ECFB5D8 = v33;
  xmmword_27ECFB5A8 = v30;
  unk_27ECFB5B8 = v31;
  xmmword_27ECFB5E8 = xmmword_27ECF3708;
  qword_27ECFB5F8 = qword_27ECF3718;
  unk_27ECFB600 = unk_27ECF3720;
  xmmword_27ECFB608 = xmmword_27ECF3728;
  qword_27ECFB618 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.orange.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF7A8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECFB480, sizeof(__dst));
  memcpy(a1, &xmmword_27ECFB480, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242E9BCCC()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760);
  result = swift_arrayDestroy();
  qword_27ECFB620 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightOrange.modify())()
{
  if (qword_27ECEF7B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E9C180()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFB628 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightOrange.modify())()
{
  if (qword_27ECEF7B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9C278()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F2FF90;
  v25 = inited + 32;
  *(inited + 48) = 1;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F2FFA0;
  *(inited + 80) = 1;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760);
  result = swift_arrayDestroy();
  qword_27ECFB630 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightOrange.modify())()
{
  if (qword_27ECEF7C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242E9C794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_242E9C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_242E9C88C()
{
  swift_getWitnessTable();
  sub_242F04170();
  __break(1u);
}

uint64_t WrapViewController.init(_:updater:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_242E9C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_242E9CA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_242E9CAC4()
{
  swift_getWitnessTable();
  sub_242F04330();
  __break(1u);
}

void *sub_242E9CB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a3;
  result[4] = a4;
  a7[2] = a6;
  a7[3] = result;
  return result;
}

uint64_t sub_242E9CBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = a3;
  a5[2] = a4;
  a5[3] = result;
  return result;
}

uint64_t sub_242E9CC50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_242E9CCA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RequestTemporaryContentModel.displayPanelIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RequestTemporaryContentModel.contentURL.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t (*RequestTemporaryContentModel.dismissHandler.getter())()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242D5A674;
}

uint64_t RequestTemporaryContentModel.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 40) = sub_242D5A6E0;
  *(v2 + 48) = v5;
  return result;
}

uint64_t (*RequestTemporaryContentModel.dismissHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242D5D194;
  a1[1] = v5;

  return sub_242E9CEDC;
}

uint64_t sub_242E9CEDC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 40) = sub_242D5D19C;
    *(v4 + 48) = v5;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    *(v4 + 40) = sub_242D5D19C;
    *(v4 + 48) = v7;
  }

  return result;
}

uint64_t RequestTemporaryContentModel.init(displayPanelIdentifier:displayZoneIdentifier:on:userDismissible:contentURL:dismissHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  result = swift_allocObject();
  *(result + 16) = a8;
  *(result + 24) = a10;
  *(a9 + 40) = sub_242D5D19C;
  *(a9 + 48) = result;
  return result;
}

uint64_t RequestTemporaryContentModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  v4 = *(v0 + 18);
  v5 = v0[3];
  v6 = v0[4];
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001ALL, 0x8000000242F5CF20);
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](0x2D20656E6F7A202CLL, 0xE900000000000020);
  sub_242F05C20();
  MEMORY[0x245D26660](0x202D206E6F20, 0xE600000000000000);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x245D26660](v7, v8);

  MEMORY[0x245D26660](0xD000000000000015, 0x8000000242F5CF40);
  if (v4)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x245D26660](v9, v10);

  MEMORY[0x245D26660](0xD000000000000010, 0x8000000242F5CF60);
  MEMORY[0x245D26660](v5, v6);
  return 0;
}

uint64_t _s14CarPlayAssetUI28RequestTemporaryContentModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v12 = sub_242F06110(), result = 0, (v12 & 1) != 0))
  {
    if (v2)
    {
      v14 = 0x32656E6F7ALL;
    }

    else
    {
      v14 = 0x31656E6F7ALL;
    }

    if (v7)
    {
      v15 = 0x32656E6F7ALL;
    }

    else
    {
      v15 = 0x31656E6F7ALL;
    }

    if (v14 == v15)
    {
      swift_bridgeObjectRelease_n();
      result = 0;
      if (v3 != v8)
      {
        return result;
      }
    }

    else
    {
      v16 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      result = 0;
      if (v16 & 1) == 0 || ((v3 ^ v8))
      {
        return result;
      }
    }

    if (((v4 ^ v9) & 1) == 0)
    {
      if (v5 == v10 && v6 == v11)
      {
        return 1;
      }

      else
      {

        return sub_242F06110();
      }
    }
  }

  return result;
}

_BYTE *PowermeterDataIdentifiers.init(powerDataIdentifier:powerMaxDataIdentifier:powerMinDataIdentifier:powerMarkerAvailableMaxDataIdentifier:powerMarkerAvailableMinDataIdentifier:uiSceneStateDataIdentifier:powerStateDataIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, _BYTE *a8@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  *a8 = *result;
  a8[1] = v8;
  a8[2] = v9;
  a8[3] = v10;
  a8[4] = v11;
  a8[5] = v12;
  a8[6] = v13;
  return result;
}

CarPlayAssetUI::LineCap_optional __swiftcall LineCap.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 DigiBarRadialStyle.angleConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

__n128 DigiBarRadialStyle.angleConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 24);
  *(v1 + 24) = result;
  return result;
}

uint64_t DigiBarRadialStyle.init(angleConfiguration:trackWidth:trackInset:trackLineCap:platterInset:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v6 = *(result + 16);
  v7 = *a2;
  *a3 = *result;
  *(a3 + 16) = v6;
  *(a3 + 24) = *(result + 24);
  *(a3 + 40) = a4;
  *(a3 + 44) = a5;
  *(a3 + 48) = a6;
  *(a3 + 52) = v7;
  return result;
}

unint64_t sub_242E9D5EC()
{
  v1 = *v0;
  v2 = 0x6469576B63617274;
  v3 = 0x736E496B63617274;
  v4 = 0x4972657474616C70;
  if (v1 != 3)
  {
    v4 = 0x6E694C6B63617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_242E9D6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAA320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E9D6C8(uint64_t a1)
{
  v2 = sub_242EA77A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E9D704(uint64_t a1)
{
  v2 = sub_242EA77A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBarRadialStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v15 = *(v1 + 52);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77A8();
  sub_242F064C0();
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v16 = 0;
  sub_242CCED74();
  sub_242F05F20();
  if (!v2)
  {
    v13 = v15;
    LOBYTE(v17) = 1;
    sub_242F05EF0();
    LOBYTE(v17) = 2;
    sub_242F05EF0();
    LOBYTE(v17) = 3;
    sub_242F05EF0();
    LOBYTE(v17) = v13;
    v16 = 4;
    sub_242CD0B40();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DigiBarRadialStyle.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 52);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x245D279D0](*&v6);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  return MEMORY[0x245D279A0](v5);
}

uint64_t DigiBarRadialStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 52);
  sub_242F06390();
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x245D279D0](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v5);
  return sub_242F063E0();
}

uint64_t DigiBarRadialStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77A8();
  sub_242F06480();
  if (!v2)
  {
    HIBYTE(v22) = 0;
    sub_242CCEE1C();
    sub_242F05E00();
    v9 = v23;
    v10 = v24;
    v11 = v25;
    v12 = v26;
    v13 = v27;
    LOBYTE(v23) = 1;
    sub_242F05DD0();
    v15 = v14;
    LOBYTE(v23) = 2;
    sub_242F05DD0();
    v17 = v16;
    LOBYTE(v23) = 3;
    sub_242F05DD0();
    v20 = v19;
    HIBYTE(v22) = 4;
    sub_242CD0A98();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v21 = v23;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    *(a2 + 44) = v17;
    *(a2 + 48) = v20;
    *(a2 + 52) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E9DE64()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 52);
  sub_242F06390();
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x245D279D0](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v5);
  return sub_242F063E0();
}

void __swiftcall DigiBarLinearStyle.init(trackWidth:leftInset:rightInset:centerOffset:isRTL:)(CarPlayAssetUI::DigiBarLinearStyle *__return_ptr retstr, Swift::Float trackWidth, Swift::Float leftInset, Swift::Float rightInset, Swift::Float centerOffset, Swift::Bool isRTL)
{
  retstr->trackWidth = trackWidth;
  retstr->leftInset = leftInset;
  retstr->rightInset = rightInset;
  retstr->centerOffset = centerOffset;
  retstr->isRTL = isRTL;
}

uint64_t sub_242E9E070()
{
  v1 = *v0;
  v2 = 0x6469576B63617274;
  v3 = 0x736E497468676972;
  v4 = 0x664F7265746E6563;
  if (v1 != 3)
  {
    v4 = 0x4C54527369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65736E497466656CLL;
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

uint64_t sub_242E9E118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAA4F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E9E140(uint64_t a1)
{
  v2 = sub_242EA77FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E9E17C(uint64_t a1)
{
  v2 = sub_242EA77FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBarLinearStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77FC();
  sub_242F064C0();
  v13 = 0;
  sub_242F05EF0();
  if (!v1)
  {
    v12 = 1;
    sub_242F05EF0();
    v11 = 2;
    sub_242F05EF0();
    v10 = 3;
    sub_242F05EF0();
    v9 = 4;
    sub_242F05ED0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DigiBarLinearStyle.hash(into:)()
{
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  return sub_242F063B0();
}

uint64_t DigiBarLinearStyle.hashValue.getter()
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t DigiBarLinearStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77FC();
  sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242F05DD0();
    v10 = v9;
    v23 = 1;
    sub_242F05DD0();
    v12 = v11;
    v22 = 2;
    sub_242F05DD0();
    v14 = v13;
    v21 = 3;
    sub_242F05DD0();
    v17 = v16;
    v20 = 4;
    v18 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 4) = v12;
    *(a2 + 8) = v14;
    *(a2 + 12) = v17;
    *(a2 + 16) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E9E758()
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::CornerCurve_optional __swiftcall CornerCurve.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DigiBarRectangularStyle.progressLimit.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t DigiBarRectangularStyle.blurConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return sub_242DE5018(v2, v3, v4, v5);
}

__n128 DigiBarRectangularStyle.blurConfiguration.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_242D3CBDC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

__n128 DigiBarRectangularStyle.init(cornerRadius:cornerCurve:isRTL:roundedProgress:progressLimit:blurConfiguration:)@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>, float a7@<S0>)
{
  v8 = *a1;
  v12 = *a5;
  v9 = a5[1].n128_u64[0];
  v10 = a5[1].n128_u8[8];
  a6->n128_f32[0] = a7;
  a6->n128_u8[4] = v8;
  a6->n128_u8[5] = a2;
  a6->n128_u8[6] = a3;
  a6->n128_u32[2] = a4;
  a6->n128_u8[12] = BYTE4(a4) & 1;
  sub_242D3CBDC(0, 0, 0, 255);
  result = v12;
  a6[1] = v12;
  a6[2].n128_u64[0] = v9;
  a6[2].n128_u8[8] = v10;
  return result;
}

uint64_t sub_242E9EB28()
{
  v1 = *v0;
  v2 = 0x615272656E726F63;
  v3 = 0x506465646E756F72;
  v4 = 0x73736572676F7270;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x754372656E726F63;
  if (v1 != 1)
  {
    v5 = 0x4C54527369;
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

uint64_t sub_242E9EC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAA6B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E9EC34(uint64_t a1)
{
  v2 = sub_242EA7850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E9EC70(uint64_t a1)
{
  v2 = sub_242EA7850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBarRectangularStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 4);
  v22 = *(v1 + 5);
  v23 = v8;
  v21 = *(v1 + 6);
  v18 = *(v1 + 8);
  v19 = *(v1 + 12);
  v9 = *(v1 + 24);
  v20 = *(v1 + 16);
  v10 = *(v1 + 32);
  v16 = v9;
  v17 = v10;
  v11 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7850();
  sub_242F064C0();
  LOBYTE(v24) = 0;
  sub_242F05EF0();
  if (!v2)
  {
    v12 = v19;
    HIDWORD(v15) = v11;
    v13 = v20;
    LOBYTE(v24) = v23;
    v28 = 1;
    sub_242EA78A4();
    sub_242F05F20();
    LOBYTE(v24) = 2;
    sub_242F05ED0();
    LOBYTE(v24) = 3;
    sub_242F05ED0();
    LOBYTE(v24) = 4;
    v28 = v12;
    sub_242F05E80();
    v24 = v13;
    v25 = v16;
    v26 = v17;
    v27 = BYTE4(v15);
    v28 = 5;
    sub_242DE5018(v13, v16, v17, SBYTE4(v15));
    sub_242E874A8();
    sub_242F05EB0();
    sub_242D3CBDC(v24, v25, v26, v27);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DigiBarRectangularStyle.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[12];
  v3 = v0[40];
  sub_242F063C0();
  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  sub_242F063B0();
  if (v2 != 1)
  {
    sub_242F063B0();
    sub_242F063C0();
    if (v3 != 255)
    {
      goto LABEL_3;
    }

    return sub_242F063B0();
  }

  sub_242F063B0();
  if (v3 == 255)
  {
    return sub_242F063B0();
  }

LABEL_3:
  sub_242F063B0();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();
}

uint64_t DigiBarRectangularStyle.hashValue.getter()
{
  sub_242F06390();
  DigiBarRectangularStyle.hash(into:)();
  return sub_242F063E0();
}

uint64_t DigiBarRectangularStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7850();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    return sub_242D3CBDC(0, 0, 0, 255);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_242F05DD0();
    v10 = v9;
    LOBYTE(v28) = 1;
    sub_242EA78F8();
    sub_242F05E00();
    v11 = v30;
    LOBYTE(v30) = 2;
    v12 = sub_242F05DB0();
    LOBYTE(v30) = 3;
    v27 = sub_242F05DB0();
    LOBYTE(v30) = 4;
    v26 = sub_242F05D60();
    v45 = BYTE4(v26) & 1;
    v40 = 5;
    sub_242E87550();
    sub_242F05D90();
    v13 = v12 & 1;
    v25 = v12 & 1;
    v27 &= 1u;
    v14 = v27;
    (*(v6 + 8))(v8, v5);
    v15 = v41;
    v16 = v42;
    v23 = v43;
    v17 = v44;
    sub_242D3CBDC(0, 0, 0, 255);
    LODWORD(v28) = v10;
    BYTE4(v28) = v11;
    BYTE5(v28) = v13;
    BYTE6(v28) = v14;
    v18 = v26;
    DWORD2(v28) = v26;
    v24 = v45;
    BYTE12(v28) = v45;
    *v29 = v15;
    *&v29[8] = v16;
    v19 = v23;
    *&v29[16] = v23;
    v29[24] = v17;
    v20 = *&v29[9];
    v21 = *v29;
    *a2 = v28;
    a2[1] = v21;
    *(a2 + 25) = v20;
    sub_242EA794C(&v28, &v30);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v30 = v10;
    v31 = v11;
    v32 = v25;
    v33 = v27;
    v34 = v18;
    v35 = v24;
    v36 = v15;
    v37 = v16;
    v38 = v19;
    v39 = v17;
    return sub_242EA7984(&v30);
  }
}

uint64_t sub_242E9F488()
{
  sub_242F06390();
  DigiBarRectangularStyle.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E9F4CC()
{
  sub_242F06390();
  DigiBarRectangularStyle.hash(into:)();
  return sub_242F063E0();
}

double sub_242E9F694()
{
  *&result = 926627351;
  dword_27ECFB738 = 926627351;
  word_27ECFB73C = 20536;
  byte_27ECFB73E = 8;
  return result;
}

uint64_t static PowermeterDataIdentifiers.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7C8 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_27ECFB73C;
  v2 = byte_27ECFB73E;
  *a1 = dword_27ECFB738;
  *(a1 + 4) = v1;
  *(a1 + 6) = v2;
  return result;
}

unint64_t sub_242E9F730()
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 5)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v2 = 0xD000000000000025;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242E9F7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAA8CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E9F814(uint64_t a1)
{
  v2 = sub_242EA79B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E9F850(uint64_t a1)
{
  v2 = sub_242EA79B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PowermeterDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v10 = v1[3];
  v20 = v1[4];
  v21 = v10;
  v11 = v1[5];
  v18 = v1[6];
  v19 = v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA79B4();
  v12 = v4;
  sub_242F064C0();
  v37 = v8;
  v36 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v21;
  v14 = v22;
  v15 = v19;
  v16 = v20;
  v35 = v23;
  v34 = 1;
  sub_242F05F20();
  v33 = v14;
  v32 = 2;
  sub_242F05F20();
  v31 = v13;
  v30 = 3;
  sub_242F05F20();
  v29 = v16;
  v28 = 4;
  sub_242F05F20();
  v27 = v15;
  v26 = 5;
  sub_242F05F20();
  v25 = v18;
  v24 = 6;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v12);
}

uint64_t PowermeterDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t PowermeterDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t PowermeterDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA79B4();
  sub_242F06480();
  if (!v2)
  {
    v36 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v37;
    v34 = 1;
    sub_242F05E00();
    v23 = v9;
    v10 = v35;
    v32 = 2;
    sub_242F05E00();
    v22 = v10;
    v11 = v33;
    v30 = 3;
    sub_242F05E00();
    v21 = v11;
    v12 = v31;
    v28 = 4;
    sub_242F05E00();
    v19 = v29;
    v20 = v12;
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20);
    sub_242EA8308(&qword_27ECF4C28, &qword_27ECF4C20);
    sub_242F05D90();
    v18 = v26;
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB828);
    sub_242EA8308(&qword_27ECFB830, &qword_27ECFB828);
    sub_242F05D90();
    if (v18 == 86)
    {
      v14 = 80;
    }

    else
    {
      v14 = v18;
    }

    (*(v6 + 8))(v8, v5);
    v15 = v24;
    if (v24 == 86)
    {
      v15 = 8;
    }

    v16 = v22;
    *a2 = v23;
    a2[1] = v16;
    v17 = v20;
    a2[2] = v21;
    a2[3] = v17;
    a2[4] = v19;
    a2[5] = v14;
    a2[6] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242EA0140()
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242EA01A0()
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242EA01F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7C8 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_27ECFB73C;
  v2 = byte_27ECFB73E;
  *a1 = dword_27ECFB738;
  *(a1 + 4) = v1;
  *(a1 + 6) = v2;
  return result;
}

_BYTE *PowermeterPowerLevelDataIdentifiers.init(powerLevelDataIdentifier:powerLevelMarkerAvailableMaxDataIdentifier:powerLevelMarkerAvailableMinDataIdentifier:uiSceneStateDataIdentifier:powerLevelStateDataIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, _BYTE *a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  *a6 = *result;
  a6[1] = v6;
  a6[2] = v7;
  a6[3] = v8;
  a6[4] = v9;
  return result;
}

double sub_242EA03B0()
{
  *&result = 1345992984;
  dword_27ECFB73F = 1345992984;
  byte_27ECFB743 = 7;
  return result;
}

uint64_t static PowermeterPowerLevelDataIdentifiers.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_27ECFB743;
  *a1 = dword_27ECFB73F;
  *(a1 + 4) = v1;
  return result;
}

unint64_t sub_242EA0440()
{
  v1 = 0xD00000000000002ALL;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2 == 2)
  {
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_242EA04CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAAB14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EA04F4(uint64_t a1)
{
  v2 = sub_242EA7DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA0530(uint64_t a1)
{
  v2 = sub_242EA7DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PowermeterPowerLevelDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB838);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v18 = v1[2];
  v19 = v9;
  v10 = v1[3];
  v16 = v1[4];
  v17 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7DC8();
  sub_242F064C0();
  v29 = v8;
  v28 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v17;
  v11 = v18;
  v13 = v16;
  v27 = v19;
  v26 = 1;
  sub_242F05F20();
  v25 = v11;
  v24 = 2;
  sub_242F05F20();
  v23 = v12;
  v22 = 3;
  sub_242F05F20();
  v21 = v13;
  v20 = 4;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PowermeterPowerLevelDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t PowermeterPowerLevelDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t PowermeterPowerLevelDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7DC8();
  sub_242F06480();
  if (!v2)
  {
    v28 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v29;
    v26 = 1;
    sub_242F05E00();
    v19 = v9;
    v10 = v27;
    v24 = 2;
    sub_242F05E00();
    v17 = v10;
    v18 = v25;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20);
    sub_242EA8308(&qword_27ECF4C28, &qword_27ECF4C20);
    sub_242F05D90();
    v11 = v18;
    v16 = v22;
    v20 = 4;
    sub_242F05E00();
    if (v16 == 86)
    {
      v13 = 80;
    }

    else
    {
      v13 = v16;
    }

    (*(v6 + 8))(v8, v5);
    v14 = v21;
    *a2 = v19;
    a2[1] = v17;
    a2[2] = v11;
    a2[3] = v13;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242EA0D64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_27ECFB743;
  *a1 = dword_27ECFB73F;
  *(a1 + 4) = v1;
  return result;
}

uint64_t sub_242EA0DD0()
{
  v1 = 0x7261656E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x75676E6174636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6169646172;
  }
}

uint64_t sub_242EA0E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAACC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EA0E54(uint64_t a1)
{
  v2 = sub_242EA7E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA0E90(uint64_t a1)
{
  v2 = sub_242EA7E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EA0ECC(uint64_t a1)
{
  v2 = sub_242EA7F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA0F08(uint64_t a1)
{
  v2 = sub_242EA7F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EA0F44(uint64_t a1)
{
  v2 = sub_242EA7F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA0F80(uint64_t a1)
{
  v2 = sub_242EA7F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EA0FBC(uint64_t a1)
{
  v2 = sub_242EA7E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA0FF8(uint64_t a1)
{
  v2 = sub_242EA7E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB850);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB858);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB860);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB868);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v46 = v1[2];
  v47 = v12;
  v16 = v1[4];
  v15 = v1[5];
  v43 = v14;
  v44 = v16;
  v45 = v15;
  v17 = *(v1 + 52);
  v18 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7E1C();
  sub_242F064C0();
  if (v17 >> 6)
  {
    if (v17 >> 6 == 1)
    {
      v19 = v47;
      v20 = HIDWORD(v47);
      LOBYTE(v50) = 1;
      sub_242EA7F18();
      v21 = v37;
      v22 = v49;
      sub_242F05E40();
      v50 = v13;
      v51 = __PAIR64__(v20, v19);
      LOBYTE(v52) = v46 & 1;
      sub_242E871B4();
      v23 = v39;
      sub_242F05F20();
      (*(v38 + 8))(v21, v23);
      return (*(v48 + 8))(v11, v22);
    }

    else
    {
      v31 = v47;
      v59 = BYTE4(v47) & 1;
      LOBYTE(v50) = 2;
      sub_242EA7E70();
      v32 = v40;
      v33 = v49;
      sub_242F05E40();
      LODWORD(v50) = v13;
      BYTE4(v50) = BYTE4(v13) & 1;
      BYTE5(v50) = BYTE5(v13) & 1;
      BYTE6(v50) = BYTE6(v13) & 1;
      LODWORD(v51) = v31;
      BYTE4(v51) = v59;
      v52 = v46;
      v53 = v43;
      v54 = v44;
      LOBYTE(v55) = v45;
      sub_242EA7EC4();
      v34 = v42;
      sub_242F05F20();
      (*(v41 + 8))(v32, v34);
      return (*(v48 + 8))(v11, v33);
    }
  }

  else
  {
    v25 = v18 & 0xFFFFFF00FFFFFFFFLL | (v17 << 32);
    v26 = v45;
    v27 = HIDWORD(v45);
    v42 = HIDWORD(v25);
    v28 = v46 & 1;
    LOBYTE(v50) = 0;
    sub_242EA7F6C();
    v29 = v49;
    sub_242F05E40();
    v50 = v13;
    v51 = v47;
    LOBYTE(v52) = v28;
    v53 = v43;
    v54 = v44;
    v55 = v26;
    v56 = v27;
    v57 = v25;
    v58 = v42;
    sub_242E8725C();
    v30 = v36;
    sub_242F05F20();
    (*(v35 + 8))(v8, v30);
    return (*(v48 + 8))(v11, v29);
  }
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = v0[4];
  v4 = *(v0 + 52) >> 6;
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x245D279A0](1);
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      return sub_242F063B0();
    }

    else
    {
      MEMORY[0x245D279A0](2);
      return DigiBarRectangularStyle.hash(into:)();
    }
  }

  else
  {
    v6 = *(v0 + 12) | (*(v0 + 52) << 32);
    v7 = v0[3];
    MEMORY[0x245D279A0](0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0.0;
    }

    MEMORY[0x245D279D0](*&v8);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v1;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x245D279D0](v9);
    sub_242F063B0();
    sub_242C9457C(v7, v3);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    return MEMORY[0x245D279A0](HIDWORD(v6));
  }
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB898);
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v41 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8A0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8A8);
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8B0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v15);
  sub_242EA7E1C();
  v16 = v43;
  sub_242F06480();
  if (!v16)
  {
    v43 = v12;
    v18 = v41;
    v17 = v42;
    v19 = sub_242F05E10();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = sub_242C7FBE8();
    if (v21 == 3 || v52 != v53 >> 1)
    {
      v24 = sub_242F05B10();
      swift_allocError();
      v25 = v14;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v27 = &type metadata for Instrument.GaugeStyle.DigiBarConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v43 + 8))(v25, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        if (v21 == 1)
        {
          LOBYTE(v44) = 1;
          sub_242EA7F18();
          sub_242F05D10();
          v22 = v43;
          sub_242E87304();
          v23 = v38;
          sub_242F05E00();
          (*(v39 + 8))(v7, v23);
          (*(v22 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = v44;
          v34 = v45;
          v35 = 0x4000000000;
        }

        else
        {
          LOBYTE(v44) = 2;
          sub_242EA7E70();
          sub_242F05D10();
          v29 = v43;
          sub_242EA7FC0();
          v30 = v36;
          sub_242F05E00();
          (*(v40 + 8))(v18, v30);
          (*(v29 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v33 = v44;
          v34 = v45;
          v31 = v46;
          v35 = 0x8000000000;
          v32 = v47;
        }
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_242EA7F6C();
        sub_242F05D10();
        sub_242E87358();
        sub_242F05E00();
        (*(v37 + 8))(v10, v8);
        (*(v43 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v33 = v44;
        v34 = v45;
        v31 = v46;
        v32 = v47;
        v35 = (v48 | (v49 << 32)) & 0x3FFFFFFFFLL;
      }

      *v17 = v33;
      *(v17 + 16) = v34;
      *(v17 + 32) = v31;
      *(v17 + 40) = v32;
      *(v17 + 48) = v35;
      *(v17 + 52) = BYTE4(v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v54);
}

uint64_t sub_242EA1E9C()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242EA1F04()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.colorsConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_242DC83D4(v2);
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.colorsConfiguration.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1->n128_i64[1];

  sub_242C6CEC0(v4);
  result = v6;
  *v1 = v6;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 84);
  v9 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v8 = *(v1 + 80);
  v7 = v1 + 80;
  sub_242D3CBB8(*(v7 - 48), *(v7 - 40), *(v7 - 32), *(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | (*(v7 + 4) << 32));
  result = *a1;
  v10 = *(a1 + 16);
  *(v7 - 48) = *a1;
  *(v7 - 32) = v10;
  *(v7 - 16) = v3;
  *(v7 - 8) = v4;
  *(v7 + 4) = v6;
  *v7 = v5;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.redlineConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v9 = *(v1 + 128);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 157);
  v3 = *(v10 + 13);
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242CA321C(v8, v7, &qword_27ECFB8C0);
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.redlineConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v7[2] = *(v1 + 128);
  v8[0] = v3;
  *(v8 + 13) = *(v1 + 157);
  v4 = *(v1 + 112);
  v7[0] = *(v1 + 96);
  v7[1] = v4;
  sub_242C6D138(v7, &qword_27ECFB8C0);
  v5 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v5;
  *(v1 + 157) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = result;
  return result;
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.init(colorsConfiguration:style:trackLimitGap:redlineConfiguration:minDotThreshold:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 48);
  v12 = *(a2 + 52);
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  v13 = *(a2 + 16);
  *(a4 + 32) = *a2;
  *(a4 + 48) = v13;
  *(a4 + 64) = *(a2 + 32);
  *(a4 + 84) = v12;
  *(a4 + 80) = v11;
  *(a4 + 88) = a5;
  memset(v16, 0, 69);
  sub_242C6D138(v16, &qword_27ECFB8C0);
  v14 = *(a3 + 48);
  *(a4 + 128) = *(a3 + 32);
  *(a4 + 144) = v14;
  *(a4 + 157) = *(a3 + 61);
  result = *(a3 + 16);
  *(a4 + 96) = *a3;
  *(a4 + 112) = result;
  *(a4 + 168) = a6;
  return result;
}

unint64_t sub_242EA230C()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 0x6D694C6B63617274;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x6854746F446E696DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_242EA23C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAADDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EA23EC(uint64_t a1)
{
  v2 = sub_242EA8014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA2428(uint64_t a1)
{
  v2 = sub_242EA8014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8C8);
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v31 = *(v1 + 24);
  v9 = v1[5];
  v30 = v1[4];
  v29 = v9;
  v10 = v1[7];
  v28 = v1[6];
  v27 = v10;
  v11 = v1[9];
  v26 = v1[8];
  v25 = v11;
  v24 = *(v1 + 84);
  v23 = *(v1 + 20);
  v12 = *(v1 + 9);
  v44 = *(v1 + 8);
  *v45 = v12;
  *&v45[13] = *(v1 + 157);
  v13 = *(v1 + 7);
  v42 = *(v1 + 6);
  v43 = v13;
  v14 = *(v1 + 42);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);

  sub_242DC83D4(v7);
  sub_242EA8014();
  sub_242F064C0();
  *&v38 = v6;
  *(&v38 + 1) = v7;
  v15 = v3;
  *&v39 = v8;
  BYTE8(v39) = v31;
  LOBYTE(v35[0]) = 0;
  sub_242DC861C();
  v16 = v32;
  sub_242F05F20();
  if (v16)
  {
    v17 = *(&v38 + 1);

    sub_242C6CEC0(v17);
    return (*(v46 + 8))(v5, v3);
  }

  else
  {
    v19 = v46;
    v20 = v23 | (v24 << 32);
    v21 = *(&v38 + 1);

    sub_242C6CEC0(v21);
    *&v38 = v30;
    *(&v38 + 1) = v29;
    *&v39 = v28;
    *(&v39 + 1) = v27;
    *&v40 = v26;
    *(&v40 + 1) = v25;
    v41[4] = BYTE4(v20);
    *v41 = v20;
    LOBYTE(v35[0]) = 1;
    sub_242DE4FF4(v30, v29, v28, v27, v26, v25, v20);
    sub_242DE50C4();
    sub_242F05F20();
    sub_242D3CBB8(v38, *(&v38 + 1), v39, *(&v39 + 1), v40, SBYTE8(v40), *v41 | (v41[4] << 32));
    LOBYTE(v38) = 2;
    sub_242F05EF0();
    *v41 = *v45;
    *&v41[13] = *&v45[13];
    v39 = v43;
    v40 = v44;
    v38 = v42;
    v37 = 3;
    sub_242CA321C(&v42, v35, &qword_27ECFB8C0);
    sub_242EA8068();
    sub_242F05EB0();
    v35[2] = v40;
    *v36 = *v41;
    *&v36[13] = *&v41[13];
    v35[1] = v39;
    v35[0] = v38;
    sub_242C6D138(v35, &qword_27ECFB8C0);
    v34 = v14;
    v33 = 4;
    sub_242F05F20();
    return (*(v19 + 8))(0, v15);
  }
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v8 = *(v1 + 128);
  *v9 = v3;
  *&v9[13] = *(v1 + 157);
  v4 = *(v1 + 112);
  v6 = *(v1 + 96);
  v7 = v4;
  Instrument.GaugeStyle.DigiBarColorsConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  sub_242F063C0();
  if (v6)
  {
    sub_242F063B0();

    sub_242DE4FF4(v7, *(&v7 + 1), v8, *(&v8 + 1), *v9, v9[8], *&v9[16] | (v9[20] << 32));
    sub_242C79508(a1, v6);
    sub_242F063B0();
    if (*(&v6 + 1))
    {
      sub_242C79508(a1, *(&v6 + 1));
    }

    Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
    sub_242C6D138(&v6, &qword_27ECFB8C0);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063C0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v91 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242EA8014();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v91);
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    LODWORD(v61) = 0;
    BYTE4(v61) = 0;
    return sub_242C6D138(&v57, &qword_27ECFB8C0);
  }

  else
  {
    v46 = v6;
    LOBYTE(v47) = 0;
    sub_242DC85C4();
    sub_242F05E00();
    v44 = v57;
    v45 = v58;
    v11 = BYTE8(v58);
    LOBYTE(v47) = 1;
    sub_242DE516C();
    sub_242F05E00();
    v36 = v57;
    v37 = v58;
    v38 = *(&v59 + 1);
    v35 = v59;
    v33 = 0;
    v34 = v60 | (BYTE4(v60) << 32);
    LOBYTE(v57) = 2;
    sub_242F05DD0();
    v13 = v12;
    v80[71] = 3;
    sub_242EA80BC();
    sub_242F05D90();
    v31 = v11;
    v30 = a2;
    v32 = v81;
    v42 = v84;
    v43 = v82;
    v40 = v83;
    v41 = v85;
    v39 = v86;
    v14 = v87;
    v15 = v88;
    v16 = v89 | (v90 << 32);
    memset(v80, 0, 69);
    sub_242C6D138(v80, &qword_27ECFB8C0);
    v79 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D78);
    sub_242EA8308(&qword_27ECF8D80, &qword_27ECF8D78);
    sub_242F05D90();
    (*(v46 + 8))(v8, v5);
    if (v78)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v77;
    }

    v47 = v44;
    *&v48 = v45;
    BYTE8(v48) = v31;
    v49 = v36;
    v50 = v37;
    v18 = v34;
    v19 = v39;
    *&v51 = v35;
    *(&v51 + 1) = v38;
    v46 = HIDWORD(v34);
    BYTE4(v52) = BYTE4(v34);
    LODWORD(v52) = v34;
    DWORD2(v52) = v13;
    v20 = v32;
    *&v53 = v32;
    *(&v53 + 1) = v43;
    v21 = v40;
    *&v54 = v40;
    *(&v54 + 1) = v42;
    *&v55 = v41;
    *(&v55 + 1) = v39;
    *&v56[0] = v14;
    *(&v56[0] + 1) = v15;
    v33 = HIDWORD(v16);
    BYTE4(v56[1]) = BYTE4(v16);
    LODWORD(v56[1]) = v16;
    *(&v56[1] + 2) = v17;
    v22 = v56[0];
    v23 = v30;
    v30[8] = v55;
    v23[9] = v22;
    v24 = v48;
    *v23 = v47;
    v23[1] = v24;
    v25 = v49;
    v26 = v50;
    v27 = v54;
    v23[6] = v53;
    v23[7] = v27;
    v28 = v52;
    v23[4] = v51;
    v23[5] = v28;
    v23[2] = v25;
    v23[3] = v26;
    *(v23 + 156) = *(v56 + 12);
    sub_242E50D10(&v47, &v57);
    __swift_destroy_boxed_opaque_existential_2Tm(v91);
    v57 = v44;
    *&v58 = v45;
    BYTE8(v58) = v31;
    v59 = v36;
    v60 = v37;
    v61 = v35;
    v62 = v38;
    v64 = v46;
    v63 = v18;
    v65 = v13;
    v66 = v20;
    v67 = v43;
    v68 = v21;
    v69 = v42;
    v70 = v41;
    v71 = v19;
    v72 = v14;
    v73 = v15;
    v75 = v33;
    v74 = v16;
    v76 = v17;
    return sub_242E50D6C(&v57);
  }
}

uint64_t sub_242EA31EC()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EA3230()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t DigiBarMaskConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 52);
  v9 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 DigiBarMaskConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  sub_242D3CBB8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48) | (*(v1 + 52) << 32));
  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 52) = v6;
  *(v1 + 48) = v5;
  return result;
}

__n128 DigiBarMaskConfiguration.init(style:widthExtension:blendMode:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 52);
  v11 = *a2;
  swift_beginAccess();
  *(a3 + 56) = a4;
  result = *a1;
  v13 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v13;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 52) = v10;
  *(a3 + 48) = v9;
  *(a3 + 60) = v11;
  return result;
}

uint64_t sub_242EA3448()
{
  v1 = 0x7478456874646977;
  if (*v0 != 1)
  {
    v1 = 0x646F4D646E656C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_242EA34B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAAFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EA34DC(uint64_t a1)
{
  v2 = sub_242EA82B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA3518(uint64_t a1)
{
  v2 = sub_242EA82B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBarMaskConfiguration.encode(to:)(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8F0);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v20 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v25 = *(v1 + 52);
  v26 = v11;
  v22 = v11 | (v25 << 32);
  v23 = v7;
  v21 = *(v1 + 60);
  v12 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  v13 = v23;
  sub_242DE4FF4(v5, v6, v8, v23, v10, v9, v22);
  sub_242EA82B4();
  v14 = v27;
  sub_242F064C0();
  v31 = v5;
  v32 = v6;
  v33 = v8;
  v34 = v13;
  v35 = v10;
  v36 = v9;
  v38 = v25;
  v37 = v26;
  v30 = 0;
  sub_242DE50C4();
  v15 = v4;
  v16 = v28;
  sub_242F05F20();
  sub_242D3CBB8(v31, v32, v33, v34, v35, v36, v37 | (v38 << 32));
  if (v16)
  {
    return (*(v29 + 8))(v4, v14);
  }

  v18 = v21;
  v19 = v29;
  LOBYTE(v31) = 1;
  sub_242F05EF0();
  LOBYTE(v31) = v18;
  v30 = 2;
  sub_242D8EEE0();
  sub_242F05F20();
  return (*(v19 + 8))(v15, v14);
}

uint64_t DigiBarMaskConfiguration.hash(into:)()
{
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  sub_242F063C0();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();
}

uint64_t DigiBarMaskConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  sub_242F063C0();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t DigiBarMaskConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB900);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA82B4();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v30) = 0;
  sub_242DE516C();
  sub_242F05E00();
  v25 = v33;
  v28 = v34;
  v29 = v35;
  v26 = v36;
  v11 = v37;
  v10 = v38;
  v27 = v39 | (v40 << 32);
  LOBYTE(v33) = 1;
  sub_242F05DD0();
  *&v24 = v11;
  *(&v24 + 1) = v10;
  v13 = v12;
  v43 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB908);
  sub_242EA8308(&qword_27ECFB910, &qword_27ECFB908);
  sub_242F05D90();
  if (v33 == 23)
  {
    HIDWORD(v23) = byte_27ECF4CA0;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    HIDWORD(v23) = v33;
  }

  v14 = *(&v24 + 1);
  v15 = v24;
  v16 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v28;
  v17 = v26;
  *&v31 = v29;
  *(&v31 + 1) = v26;
  *v32 = v24;
  v18 = v27;
  *&v32[16] = v27;
  v19 = HIDWORD(v27);
  v32[20] = BYTE4(v27);
  *&v32[24] = v13;
  v20 = BYTE4(v23);
  v32[28] = BYTE4(v23);
  v21 = v31;
  *a2 = v30;
  a2[1] = v21;
  a2[2] = *v32;
  *(a2 + 45) = *&v32[13];
  v22 = v14;
  sub_242EA835C(&v30, &v33);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v33 = v16;
  v34 = v28;
  v35 = v29;
  v36 = v17;
  v37 = v15;
  v38 = v22;
  v40 = v19;
  v39 = v18;
  v41 = v13;
  v42 = v20;
  return sub_242EA8394(&v33);
}

uint64_t sub_242EA3D64()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  sub_242F063C0();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t DigiBarRedlineConfiguration.colorIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DigiBarRedlineConfiguration.crossedColorIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DigiBarRedlineConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 68);
  v9 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 DigiBarRedlineConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v8 = *(v1 + 64);
  v7 = v1 + 64;
  sub_242D3CBB8(*(v7 - 48), *(v7 - 40), *(v7 - 32), *(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | (*(v7 + 4) << 32));
  result = *a1;
  v10 = *(a1 + 16);
  *(v7 - 48) = *a1;
  *(v7 - 32) = v10;
  *(v7 - 16) = v3;
  *(v7 - 8) = v4;
  *(v7 + 4) = v6;
  *v7 = v5;
  return result;
}

__n128 DigiBarRedlineConfiguration.init(colorIDs:crossedColorIDs:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 48);
  v5 = *(a3 + 52);
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  result = *(a3 + 32);
  *(a4 + 48) = result;
  *(a4 + 68) = v5;
  *(a4 + 64) = v4;
  return result;
}

uint64_t sub_242EA3FBC()
{
  v1 = 0x43646573736F7263;
  if (*v0 != 1)
  {
    v1 = 0x656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x734449726F6C6F63;
  }
}

uint64_t sub_242EA4020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAB0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EA4048(uint64_t a1)
{
  v2 = sub_242EA83C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA4084(uint64_t a1)
{
  v2 = sub_242EA83C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBarRedlineConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB918);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v23 = *(v1 + 16);
  v24 = v8;
  v11 = *(v1 + 40);
  v21 = *(v1 + 32);
  v22 = v10;
  v12 = *(v1 + 56);
  v19 = *(v1 + 48);
  v20 = v11;
  v17 = *(v1 + 68);
  v18 = v12;
  v16 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA83C4();

  sub_242F064C0();
  v25 = v9;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0);
  sub_242F05F20();

  if (!v2)
  {
    v14 = v22;
    v13 = v23;
    v25 = v24;
    v33 = 1;
    sub_242F05EB0();
    v25 = v13;
    v26 = v14;
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = v18;
    v32 = (v16 | (v17 << 32)) >> 32;
    v31 = v16;
    v33 = 2;
    sub_242DE4FF4(v13, v14, v21, v20, v19, v18, v16 | (v17 << 32));
    sub_242DE50C4();
    sub_242F05F20();
    sub_242D3CBB8(v25, v26, v27, v28, v29, v30, v31 | (v32 << 32));
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DigiBarRedlineConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  sub_242C79508(a1, *v1);
  sub_242F063B0();
  if (v3)
  {
    sub_242C79508(a1, v3);
  }

  return Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
}

uint64_t DigiBarRedlineConfiguration.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_242F06390();
  sub_242C79508(v4, v2);
  sub_242F063B0();
  if (v1)
  {
    sub_242C79508(v4, v1);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  return sub_242F063E0();
}

uint64_t DigiBarRedlineConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB928);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA83C4();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  LOBYTE(v26[0]) = 0;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC);
  sub_242F05E00();
  v25 = v28[0];
  LOBYTE(v26[0]) = 1;
  sub_242F05D90();
  v10 = v28[0];
  v39 = 2;
  sub_242DE516C();
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v23 = *(&v34 + 1);
  v24 = v34;
  v11 = v35;
  v22 = *(&v36 + 1);
  v12 = v36;
  v21 = v37;
  v13 = v38;
  v14 = v25;
  *&v26[0] = v25;
  *(&v26[0] + 1) = v10;
  v26[1] = v34;
  v26[2] = v35;
  *v27 = v36;
  v27[20] = v38;
  *&v27[16] = v37;
  v15 = v26[0];
  v16 = v34;
  v17 = v35;
  v18 = v36;
  *(v9 + 61) = *&v27[13];
  *(v9 + 32) = v17;
  *(v9 + 48) = v18;
  *v9 = v15;
  *(v9 + 16) = v16;
  sub_242EA8418(v26, v28);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v28[0] = v14;
  v28[1] = v10;
  v28[2] = v24;
  v28[3] = v23;
  v29 = v11;
  v30 = v12;
  v31 = v22;
  v33 = v13;
  v32 = v21;
  return sub_242EA8450(v28);
}

uint64_t sub_242EA48A8(uint64_t a1)
{
  v3 = v1[1];
  sub_242C79508(a1, *v1);
  sub_242F063B0();
  if (v3)
  {
    sub_242C79508(a1, v3);
  }

  return Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
}

uint64_t sub_242EA4954()
{
  v2 = *v0;
  v1 = v0[1];
  sub_242F06390();
  sub_242C79508(v4, v2);
  sub_242F063B0();
  if (v1)
  {
    sub_242C79508(v4, v1);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)();
  return sub_242F063E0();
}

uint64_t DigiBandGradientProgressConfiguration.colorIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 DigiBandGradientProgressConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 53);
  return result;
}

__n128 DigiBandGradientProgressConfiguration.style.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  *(v1 + 53) = *(a1 + 45);
  return result;
}

__n128 DigiBandGradientProgressConfiguration.init(colorIDs:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 53) = *(a2 + 45);
  return result;
}

BOOL static DigiBandGradientProgressConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_242C75A30(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11[0] = *(a1 + 40);
    *(v11 + 13) = *(a1 + 53);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9[0] = *(a2 + 40);
    *(v9 + 13) = *(a2 + 53);
    return _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(v10, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242EA4B74()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x734449726F6C6F63;
  }
}

uint64_t sub_242EA4BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242EA4C84(uint64_t a1)
{
  v2 = sub_242EA8480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA4CC0(uint64_t a1)
{
  v2 = sub_242EA8480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBandGradientProgressConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *v3;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA8480();

  sub_242F064C0();
  *&v12[0] = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0);
  sub_242F05F20();

  if (!v2)
  {
    v10 = *(v3 + 3);
    v12[0] = *(v3 + 1);
    v12[1] = v10;
    v13[0] = *(v3 + 5);
    *(v13 + 13) = *(v3 + 53);
    v14 = 1;
    sub_242E8725C();
    sub_242F05F20();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DigiBandGradientProgressConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 60);
  sub_242C79508(a1, *v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  sub_242C9457C(v4, v5);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  return MEMORY[0x245D279A0](v6);
}

uint64_t DigiBandGradientProgressConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 60);
  sub_242F06390();
  sub_242C79508(v10, v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  sub_242C9457C(v4, v5);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v6);
  return sub_242F063E0();
}

uint64_t DigiBandGradientProgressConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA8480();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  LOBYTE(v15[0]) = 0;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC);
  sub_242F05E00();
  v9 = v16;
  v20 = 1;
  sub_242E87358();
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v24 = v21;
  v25 = v22;
  v26[0] = *v23;
  *(v26 + 13) = *&v23[13];
  *&v15[0] = v9;
  *(v15 + 8) = v21;
  *(&v15[1] + 8) = v22;
  *(&v15[2] + 8) = *v23;
  *(&v15[3] + 5) = *&v23[13];
  v10 = v15[0];
  v11 = v15[1];
  v12 = v15[2];
  *(a2 + 45) = *(&v15[2] + 13);
  a2[1] = v11;
  a2[2] = v12;
  *a2 = v10;
  sub_242EA84D4(v15, &v16);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v16 = v9;
  v17 = v24;
  v18 = v25;
  *v19 = v26[0];
  *&v19[13] = *(v26 + 13);
  return sub_242EA850C(&v16);
}

uint64_t sub_242EA544C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 60);
  sub_242F06390();
  sub_242C79508(v10, v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  sub_242C9457C(v4, v5);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v6);
  return sub_242F063E0();
}

BOOL sub_242EA5564(uint64_t a1, uint64_t a2)
{
  if (sub_242C75A30(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11[0] = *(a1 + 40);
    *(v11 + 13) = *(a1 + 53);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9[0] = *(a2 + 40);
    *(v9 + 13) = *(a2 + 53);
    return _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(v10, v8);
  }

  else
  {
    return 0;
  }
}

double sub_242EA55F0()
{
  if (qword_27ECEF780 != -1)
  {
    swift_once();
  }

  xmmword_27ECFB748 = xmmword_27ECFAF30;
  qword_27ECFB758 = byte_27ECFAF40;
  unk_27ECFB760 = *dbl_27ECFAF48;
  result = 8192.00201;
  qword_27ECFB770 = 0x40C0000041F00000;
  dword_27ECFB778 = 0;
  byte_27ECFB77C = 0;
  return result;
}

uint64_t static Instrument.GaugeStyle.DigiBarConfiguration.Style.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v2 = xmmword_27ECFB748;
  v3 = qword_27ECFB758;
  v4 = unk_27ECFB760;
  v5 = qword_27ECFB768;
  v6 = qword_27ECFB770;
  v7 = byte_27ECFB77C;
  v8 = dword_27ECFB778;
  v9 = dword_27ECFB778 | (byte_27ECFB77C << 32);
  *a1 = xmmword_27ECFB748;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 52) = v7;
  *(a1 + 48) = v8;

  return sub_242DE4FF4(v2, *(&v2 + 1), v3, v4, v5, v6, v9);
}

uint64_t sub_242EA5708@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v2 = xmmword_27ECFB748;
  v3 = qword_27ECFB758;
  v4 = unk_27ECFB760;
  v5 = qword_27ECFB768;
  v6 = qword_27ECFB770;
  v7 = byte_27ECFB77C;
  v8 = dword_27ECFB778;
  v9 = dword_27ECFB778 | (byte_27ECFB77C << 32);
  *a1 = xmmword_27ECFB748;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 52) = v7;
  *(a1 + 48) = v8;

  return sub_242DE4FF4(v2, *(&v2 + 1), v3, v4, v5, v6, v9);
}

double sub_242EA57A0()
{
  if (qword_27ECEF780 != -1)
  {
    swift_once();
  }

  xmmword_27ECFB780 = xmmword_27ECFAF30;
  byte_27ECFB790 = byte_27ECFAF40;
  *&algn_27ECFB791[7] = *dbl_27ECFAF48;
  result = 8192.00201;
  qword_27ECFB7A8 = 0x40C0000041F00000;
  dword_27ECFB7B0 = 0;
  byte_27ECFB7B4 = 0;
  return result;
}

double static DigiBarRadialStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_27ECFB790;
  *a1 = xmmword_27ECFB780;
  *(a1 + 16) = v1;
  result = dbl_27ECFB7A0;
  *(a1 + 32) = *&dbl_27ECFB7A0;
  *(a1 + 45) = *(&qword_27ECFB7A8 + 5);
  return result;
}

double sub_242EA5898@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_27ECFB790;
  *a1 = xmmword_27ECFB780;
  *(a1 + 16) = v1;
  result = dbl_27ECFB7A0;
  *(a1 + 32) = *&dbl_27ECFB7A0;
  *(a1 + 45) = *(&qword_27ECFB7A8 + 5);
  return result;
}

CarPlayAssetUI::DigiBarCruiseControlConfiguration::BarType_optional __swiftcall DigiBarCruiseControlConfiguration.BarType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DigiBarCruiseControlConfiguration.cruiseControlBarConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 12) = *(v1 + 156);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 156) = *(v1 + 156);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_242E50D10(v18, &v17);
}

__n128 DigiBarCruiseControlConfiguration.cruiseControlBarConfiguration.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 156);
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_242E50D6C(v13);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  *(v1 + 156) = *(a1 + 156);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t DigiBarCruiseControlConfiguration.trackConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[20];
  v25 = v1[19];
  v26[0] = v3;
  v4 = v1[14];
  v5 = v1[16];
  v21 = v1[15];
  v6 = v21;
  v22 = v5;
  v7 = v1[16];
  v8 = v1[18];
  v23 = v1[17];
  v9 = v23;
  v24 = v8;
  v10 = v1[12];
  v18[0] = v1[11];
  v18[1] = v10;
  v11 = v1[14];
  v13 = v1[11];
  v12 = v1[12];
  v19 = v1[13];
  v14 = v19;
  v20 = v11;
  *(v26 + 12) = *(v1 + 332);
  v15 = v1[20];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 156) = *(v1 + 332);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_242E50D10(v18, &v17);
}

__n128 DigiBarCruiseControlConfiguration.trackConfiguration.setter(uint64_t a1)
{
  v3 = v1[20];
  v13[8] = v1[19];
  v14[0] = v3;
  v4 = v1[16];
  v13[4] = v1[15];
  v13[5] = v4;
  v5 = v1[18];
  v13[6] = v1[17];
  v13[7] = v5;
  v6 = v1[12];
  v13[0] = v1[11];
  v13[1] = v6;
  v7 = v1[14];
  v13[2] = v1[13];
  v13[3] = v7;
  *(v14 + 12) = *(v1 + 332);
  sub_242E50D6C(v13);
  v8 = *(a1 + 144);
  v1[19] = *(a1 + 128);
  v1[20] = v8;
  *(v1 + 332) = *(a1 + 156);
  v9 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v9;
  v10 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v10;
  v11 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v11;
  result = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = result;
  return result;
}

__n128 DigiBarCruiseControlConfiguration.init(cruiseControlBarConfiguration:trackConfiguration:type:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = a1[9];
  *(a4 + 128) = a1[8];
  *(a4 + 144) = v5;
  *(a4 + 156) = *(a1 + 156);
  v6 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v6;
  v7 = a1[7];
  *(a4 + 96) = a1[6];
  *(a4 + 112) = v7;
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v9;
  v10 = *(a2 + 144);
  *(a4 + 304) = *(a2 + 128);
  *(a4 + 320) = v10;
  *(a4 + 332) = *(a2 + 156);
  v11 = *(a2 + 80);
  *(a4 + 240) = *(a2 + 64);
  *(a4 + 256) = v11;
  v12 = *(a2 + 112);
  *(a4 + 272) = *(a2 + 96);
  *(a4 + 288) = v12;
  v13 = *(a2 + 16);
  *(a4 + 176) = *a2;
  *(a4 + 192) = v13;
  result = *(a2 + 48);
  *(a4 + 208) = *(a2 + 32);
  *(a4 + 224) = result;
  *(a4 + 348) = v4;
  return result;
}

unint64_t sub_242EA5D54()
{
  v1 = 1701869940;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_242EA5DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAB1E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EA5DDC(uint64_t a1)
{
  v2 = sub_242EA853C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EA5E18(uint64_t a1)
{
  v2 = sub_242EA853C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigiBarCruiseControlConfiguration.encode(to:)(void *a1)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB948);
  v24 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v4 = &v22 - v3;
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[6];
  v68 = v1[7];
  v69 = v5;
  v70[0] = v6;
  *(v70 + 12) = *(v1 + 156);
  v8 = v1[5];
  v65 = v1[4];
  v66 = v8;
  v67 = v7;
  v9 = v1[1];
  v61 = *v1;
  v62 = v9;
  v10 = v1[3];
  v63 = v1[2];
  v64 = v10;
  v11 = v1[19];
  v12 = v1[20];
  v13 = v1[17];
  v78 = v1[18];
  v79 = v11;
  v80[0] = v12;
  *(v80 + 12) = *(v1 + 332);
  v14 = v1[16];
  v75 = v1[15];
  v76 = v14;
  v77 = v13;
  v15 = v1[12];
  v71 = v1[11];
  v72 = v15;
  v16 = v1[14];
  v73 = v1[13];
  v74 = v16;
  HIDWORD(v22) = *(v1 + 348);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E50D10(&v61, &v51);
  sub_242EA853C();
  sub_242F064C0();
  v58 = v68;
  v59 = v69;
  v60[0] = v70[0];
  *(v60 + 12) = *(v70 + 12);
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v50 = 0;
  sub_242E509CC();
  v17 = v4;
  v18 = v23;
  sub_242F05F20();
  if (v18)
  {
    v48 = v59;
    *v49 = v60[0];
    *&v49[12] = *(v60 + 12);
    v44 = v55;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    sub_242E50D6C(&v40);
    return (*(v24 + 8))(v4, v81);
  }

  else
  {
    v20 = BYTE4(v22);
    v47 = v58;
    v48 = v59;
    *v49 = v60[0];
    *&v49[12] = *(v60 + 12);
    v44 = v55;
    v45 = v56;
    v46 = v57;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    sub_242E50D6C(&v40);
    v37 = v78;
    v38 = v79;
    v39[0] = v80[0];
    *(v39 + 12) = *(v80 + 12);
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v30 = v71;
    v31 = v72;
    v32 = v73;
    v33 = v74;
    v29 = 1;
    sub_242E50D10(&v71, v27);
    v21 = v81;
    sub_242F05F20();
    v27[8] = v38;
    *v28 = v39[0];
    *&v28[12] = *(v39 + 12);
    v27[4] = v34;
    v27[5] = v35;
    v27[6] = v36;
    v27[7] = v37;
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    sub_242E50D6C(v27);
    v26 = v20;
    v25 = 2;
    sub_242EA8590();
    sub_242F05F20();
    return (*(v24 + 8))(v17, v21);
  }
}

uint64_t DigiBarCruiseControlConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 348);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  return MEMORY[0x245D279A0](v3 + 1);
}

uint64_t DigiBarCruiseControlConfiguration.hashValue.getter()
{
  v1 = *(v0 + 348);
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

uint64_t DigiBarCruiseControlConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB960);
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v12[-v6];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA853C();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v8 = v5;
  v26 = 0;
  sub_242E50AD0();
  v9 = v38;
  sub_242F05E00();
  v37[8] = v35;
  v37[9] = v36[0];
  *(&v37[9] + 12) = *(v36 + 12);
  v37[4] = v31;
  v37[5] = v32;
  v37[7] = v34;
  v37[6] = v33;
  v37[0] = v27;
  v37[1] = v28;
  v37[3] = v30;
  v37[2] = v29;
  v15 = 1;
  sub_242F05E00();
  *(&v37[20] + 12) = *&v25[12];
  v37[19] = v24;
  v37[20] = *v25;
  v37[15] = v20;
  v37[16] = v21;
  v37[18] = v23;
  v37[17] = v22;
  v37[11] = v16;
  v37[12] = v17;
  v37[14] = v19;
  v37[13] = v18;
  v13[349] = 2;
  sub_242EA85E4();
  sub_242F05E00();
  (*(v8 + 8))(v7, v9);
  v10 = v14;
  memcpy(v12, v37, 0x15CuLL);
  v12[348] = v14;
  memcpy(a2, v12, 0x15DuLL);
  sub_242EA8638(v12, v13);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  memcpy(v13, v37, 0x15CuLL);
  v13[348] = v10;
  return sub_242EA8670(v13);
}

uint64_t sub_242EA66FC()
{
  v1 = *(v0 + 348);
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

uint64_t sub_242EA6758(uint64_t a1)
{
  v3 = *(v1 + 348);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  return MEMORY[0x245D279A0](v3 + 1);
}

uint64_t sub_242EA67A0()
{
  v1 = *(v0 + 348);
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

BOOL _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24))))))
  {
    v5 = *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48);
    if (!v5 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
    {
      return *(a1 + 52) == *(a2 + 52);
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI18DigiBarLinearStyleV2eeoiySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  if (vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))))
  {
    return (a2[1].u8[0] ^ a1[1].u8[0] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL _s14CarPlayAssetUI23DigiBarRectangularStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0 && ((*(a1 + 6) ^ *(a2 + 6)) & 1) == 0)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (*(a1 + 12))
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) == *(a2 + 8))
      {
        v12 = *(a2 + 12);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (v7 == 255)
    {
      sub_242DE5018(v5, v4, v6, 255);
      if (v11 == 255)
      {
        sub_242DE5018(v9, v8, v10, 255);
        sub_242D3CBDC(v5, v4, v6, 255);
        return 1;
      }

      sub_242DE5018(v9, v8, v10, v11);
    }

    else
    {
      if (v11 != 255)
      {
        sub_242DE5018(v5, v4, v6, v7);
        sub_242DE5018(v9, v8, v10, v11);
        sub_242DE5018(v5, v4, v6, v7);
        if (*&v5 == *&v9)
        {
          v13 = sub_242E83E70();
          sub_242D3CBDC(v9, v8, v10, v11);
          sub_242C7CEB0(v4, v6, v7);
          sub_242D3CBDC(v5, v4, v6, v7);
          return (v13 & 1) != 0;
        }

        sub_242D3CBDC(v9, v8, v10, v11);
        sub_242C7CEB0(v4, v6, v7);
        v14 = v5;
        v15 = v4;
        v16 = v6;
        v17 = v7;
        goto LABEL_22;
      }

      sub_242DE5018(v5, v4, v6, v7);
      sub_242DE5018(v9, v8, v10, 255);
      sub_242DE5018(v5, v4, v6, v7);
      sub_242C7CEB0(v4, v6, v7);
    }

    sub_242D3CBDC(v5, v4, v6, v7);
    v14 = v9;
    v15 = v8;
    v16 = v10;
    v17 = v11;
LABEL_22:
    sub_242D3CBDC(v14, v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v73 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48) | (*(a1 + 52) << 32);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 48) | (*(a2 + 52) << 32);
  v13 = *(a1 + 52) >> 6;
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  if (!v13)
  {
    v70 = *(a1 + 8);
    v71 = *a1;
    if (((v12 >> 38) & 3) == 0)
    {
      v68 = *(a2 + 24);
      v63 = *(a2 + 16);
      v65 = *(a1 + 40);
      v54 = HIDWORD(v6);
      v59 = HIDWORD(v14);
      v56 = v10 & 1;
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a2 + 40);
      v27 = *(a2 + 8);
      v28 = *(a2 + 32);
      sub_242D3CBB8(v71, v70, v73, v4, v5, v6, v7);
      sub_242D3CBB8(v9, v27, v63, v68, v28, v26, v12);
      v84 = v71;
      v85 = v70;
      LOBYTE(v86) = v73 & 1;
      v87 = v24;
      v88 = v25;
      v89 = __PAIR64__(v54, v65);
      v90 = v7;
      v91 = BYTE4(v7);
      v74 = v9;
      v75 = v27;
      LOBYTE(v76) = v56;
      v77 = v68;
      v78 = v28;
      v79 = v26;
      v80 = v59;
      v81 = v12;
      v82 = BYTE4(v12);
      v23 = _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(&v84, &v74);
      return v23 & 1;
    }

LABEL_18:
    v69 = v11;
    v45 = v4;
    v46 = v11;
    v47 = v7;
    v48 = v5;
    v49 = v6;
    v50 = v14;
    v51 = v8;
    v52 = v15;
    sub_242DE4FF4(v9, v8, v10, v46, v15, v14, v12);
    sub_242D3CBB8(v71, v70, v73, v45, v48, v49, v47);
    sub_242D3CBB8(v9, v51, v10, v69, v52, v50, v12);
    v23 = 0;
    return v23 & 1;
  }

  if (v13 != 1)
  {
    v92 = BYTE4(v2) & 1;
    v67 = v4;
    if (((v12 >> 38) & 3) == 2)
    {
      v83 = BYTE4(v8) & 1;
      LODWORD(v84) = v3;
      BYTE4(v84) = BYTE4(v3) & 1;
      BYTE5(v84) = BYTE5(v3) & 1;
      BYTE6(v84) = BYTE6(v3) & 1;
      LODWORD(v85) = v2;
      BYTE4(v85) = v92;
      v86 = v73;
      v87 = v4;
      v88 = v5;
      LOBYTE(v89) = v6;
      LODWORD(v74) = v9;
      BYTE4(v74) = BYTE4(v9) & 1;
      BYTE5(v74) = BYTE5(v9) & 1;
      BYTE6(v74) = BYTE6(v9) & 1;
      LODWORD(v75) = v8;
      BYTE4(v75) = BYTE4(v8) & 1;
      v62 = v8;
      v64 = v10;
      v76 = v10;
      v77 = v11;
      v78 = v15;
      LOBYTE(v79) = v14;
      v60 = v5;
      v61 = v9;
      v29 = v9;
      v30 = v8;
      v31 = v10;
      v32 = v4;
      v33 = v5;
      v34 = v6;
      v72 = v14;
      v35 = v15;
      v57 = v15;
      sub_242DE4FF4(v29, v8, v31, v11, v15, v14, v12);
      v66 = v34;
      sub_242DE4FF4(v3, v2, v73, v32, v33, v34, v7);
      sub_242DE4FF4(v61, v30, v64, v11, v35, v72, v12);
      sub_242DE4FF4(v3, v2, v73, v67, v60, v34, v7);
      v23 = _s14CarPlayAssetUI23DigiBarRectangularStyleV2eeoiySbAC_ACtFZ_0(&v84, &v74);
      sub_242D3CBB8(v3, v2, v73, v67, v60, v66, v7);
      sub_242D3CBB8(v61, v62, v64, v11, v57, v72, v12);
      sub_242D3CBB8(v61, v62, v64, v11, v57, v72, v12);
      sub_242D3CBB8(v3, v2, v73, v67, v60, v66, v7);
      return v23 & 1;
    }

    v70 = v2;
    v71 = v3;
    v84 = v3;
    v85 = v2;
    v86 = v73;
    v87 = v4;
    v88 = v5;
    v89 = v6;
    v90 = v7;
    v91 = BYTE4(v7) & 0x3F;
    v36 = v10;
    v37 = v11;
    v38 = v6;
    v39 = v14;
    v40 = v8;
    v41 = v7;
    v42 = v12;
    v43 = v5;
    v44 = v15;
    sub_242CA321C(&v84, &v74, &qword_27ECFBB60);
    v15 = v44;
    v4 = v67;
    v5 = v43;
    v12 = v42;
    v7 = v41;
    v8 = v40;
    LOBYTE(v14) = v39;
    LOBYTE(v6) = v38;
    v11 = v37;
    v10 = v36;
    goto LABEL_18;
  }

  v70 = *(a1 + 8);
  v71 = *a1;
  if (((v12 >> 38) & 3) != 1)
  {
    goto LABEL_18;
  }

  v58 = HIDWORD(v9);
  v55 = HIDWORD(v8);
  v16 = *a2;
  v17 = *(a2 + 40);
  v18 = *(a2 + 8);
  v19 = *(a2 + 32);
  sub_242D3CBB8(v71, v2, v73, v4, v5, v6, *(a1 + 48) | (*(a1 + 52) << 32));
  sub_242D3CBB8(v16, v18, v10, v11, v19, v17, v12);
  v21 = *(&v71 + 1) == *&v58 && *&v71 == *&v16;
  v22 = v21 && *&v2 == *&v18;
  if (*(&v2 + 1) != *&v55)
  {
    v22 = 0;
  }

  v23 = v22 & (v10 ^ v73 ^ 1);
  return v23 & 1;
}

uint64_t _s14CarPlayAssetUI27DigiBarRedlineConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v21 = *(a1 + 56);
  v22 = *(a1 + 48);
  v7 = *(a1 + 68);
  v8 = *(a1 + 64);
  v9 = *(a2 + 8);
  v19 = *(a2 + 24);
  v20 = *(a2 + 16);
  v17 = *(a2 + 40);
  v18 = *(a2 + 32);
  v15 = *(a2 + 56);
  v16 = *(a2 + 48);
  v10 = *(a2 + 68);
  v11 = *(a2 + 64);
  if ((sub_242C75A30(*a1, *a2) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    if (v9)
    {

      v12 = sub_242C75A30(v2, v9);

      if (v12)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v22;
  v36 = v21;
  v37 = v8;
  v38 = (v8 | (v7 << 32)) >> 32;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  v30 = (v11 | (v10 << 32)) >> 32;
  v29 = v11;
  sub_242DE4FF4(v3, v4, v5, v6, v22, v21, v8 | (v7 << 32));
  sub_242DE4FF4(v20, v19, v18, v17, v16, v15, v11 | (v10 << 32));
  v13 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(&v31, &v23);
  sub_242D3CBB8(v23, v24, v25, v26, v27, v28, v29 | (v30 << 32));
  sub_242D3CBB8(v31, v32, v33, v34, v35, v36, v37 | (v38 << 32));
  return v13 & 1;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v40 = v2[4];
  v39 = v2[5];
  v38 = v2[6];
  v37 = v2[7];
  v36 = v2[8];
  v35 = v2[9];
  v33 = *(v2 + 84);
  v32 = *(v2 + 20);
  v7 = *(v2 + 22);
  v8 = *(v2 + 9);
  *&v61[32] = *(v2 + 8);
  *&v61[48] = v8;
  *&v61[61] = *(v2 + 157);
  v9 = *(v2 + 7);
  *v61 = *(v2 + 6);
  *&v61[16] = v9;
  v10 = *(v2 + 42);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  LOBYTE(v2) = *(a2 + 24);
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a2[9];
  v34 = a2[8];
  v31 = *(a2 + 84);
  v30 = *(a2 + 20);
  v19 = *(a2 + 22);
  v20 = *(a2 + 9);
  *&v62[32] = *(a2 + 8);
  *&v62[48] = v20;
  *&v62[61] = *(a2 + 157);
  v21 = *(a2 + 7);
  *v62 = *(a2 + 6);
  *&v62[16] = v21;
  v22 = *(a2 + 42);
  *v50 = v3;
  *&v50[8] = v4;
  *&v50[16] = v5;
  v50[24] = v6;
  *&v46 = v11;
  *(&v46 + 1) = v12;
  *&v47 = v13;
  BYTE8(v47) = v2;

  sub_242DC83D4(v4);

  sub_242DC83D4(v12);
  LOBYTE(v13) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO26DigiBarColorsConfigurationV2eeoiySbAG_AGtFZ_0(v50, &v46);
  v23 = *(&v46 + 1);

  sub_242C6CEC0(v23);
  v24 = *&v50[8];

  sub_242C6CEC0(v24);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  *v50 = v40;
  *&v50[8] = v39;
  *&v50[16] = v38;
  *&v50[24] = v37;
  *&v50[32] = v36;
  *&v50[40] = v35;
  *&v50[48] = v32;
  v50[52] = (v32 | (v33 << 32)) >> 32;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  *&v47 = v16;
  *(&v47 + 1) = v17;
  *&v48 = v34;
  *(&v48 + 1) = v18;
  BYTE4(v49[0]) = (v30 | (v31 << 32)) >> 32;
  LODWORD(v49[0]) = v30;
  sub_242DE4FF4(v40, v39, v38, v37, v36, v35, v32 | (v33 << 32));
  sub_242DE4FF4(v14, v15, v16, v17, v34, v18, v30 | (v31 << 32));
  v25 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(v50, &v46);
  sub_242D3CBB8(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, SBYTE8(v48), LODWORD(v49[0]) | (BYTE4(v49[0]) << 32));
  sub_242D3CBB8(*v50, *&v50[8], *&v50[16], *&v50[24], *&v50[32], v50[40], *&v50[48] | (v50[52] << 32));
  result = 0;
  if ((v25 & 1) != 0 && v7 == v19)
  {
    v27 = *v61;
    v58 = *&v61[8];
    v59 = *&v61[24];
    v60[0] = *&v61[40];
    *(v60 + 13) = *&v61[53];
    v28 = *v62;
    v55 = *&v62[8];
    v56 = *&v62[24];
    v57[0] = *&v62[40];
    *(v57 + 13) = *&v62[53];
    if (*v61)
    {
      *v50 = *v61;
      *&v50[24] = *&v61[24];
      *&v50[8] = *&v61[8];
      *&v50[40] = *&v61[40];
      *&v50[53] = *&v61[53];
      v48 = *&v50[32];
      v49[0] = *&v50[48];
      *(v49 + 13) = *&v61[61];
      v46 = *v50;
      v47 = *&v50[16];
      if (*v62)
      {
        *&v45[8] = *&v62[8];
        *&v45[24] = *&v62[24];
        *&v45[40] = *&v62[40];
        *&v45[53] = *&v62[53];
        *v45 = *v62;
        sub_242CA321C(v61, v43, &qword_27ECFB8C0);
        sub_242CA321C(v62, v43, &qword_27ECFB8C0);
        sub_242CA321C(v50, v43, &qword_27ECFB8C0);
        v29 = _s14CarPlayAssetUI27DigiBarRedlineConfigurationV2eeoiySbAC_ACtFZ_0(&v46, v45);
        v41[2] = *&v45[32];
        v42[0] = *&v45[48];
        *(v42 + 13) = *&v45[61];
        v41[0] = *v45;
        v41[1] = *&v45[16];
        sub_242EA8450(v41);
        v43[2] = v48;
        v44[0] = v49[0];
        *(v44 + 13) = *(v49 + 13);
        v43[0] = v46;
        v43[1] = v47;
        sub_242EA8450(v43);
        *v45 = v27;
        *&v45[8] = v58;
        *&v45[24] = v59;
        *&v45[40] = v60[0];
        *&v45[53] = *(v60 + 13);
        sub_242C6D138(v45, &qword_27ECFB8C0);
        if ((v29 & 1) == 0)
        {
          return 0;
        }

        return v10 == v22;
      }

      *&v45[32] = *&v50[32];
      *&v45[48] = *&v50[48];
      *&v45[61] = *&v50[61];
      *v45 = *v50;
      *&v45[16] = *&v50[16];
      sub_242CA321C(v61, v43, &qword_27ECFB8C0);
      sub_242CA321C(v62, v43, &qword_27ECFB8C0);
      sub_242CA321C(v50, v43, &qword_27ECFB8C0);
      sub_242EA8450(v45);
    }

    else
    {
      if (!*v62)
      {
        *v50 = 0;
        *&v50[8] = *&v61[8];
        *&v50[24] = *&v61[24];
        *&v50[40] = *&v61[40];
        *&v50[53] = *&v61[53];
        sub_242CA321C(v61, &v46, &qword_27ECFB8C0);
        sub_242CA321C(v62, &v46, &qword_27ECFB8C0);
        sub_242C6D138(v50, &qword_27ECFB8C0);
        return v10 == v22;
      }

      sub_242CA321C(v61, v50, &qword_27ECFB8C0);
      sub_242CA321C(v62, v50, &qword_27ECFB8C0);
    }

    *&v50[8] = v58;
    *&v50[24] = v59;
    *&v50[40] = v60[0];
    *&v50[53] = *(v60 + 13);
    *v50 = v27;
    v51 = v28;
    v52 = v55;
    v53 = v56;
    v54[0] = v57[0];
    *(v54 + 13) = *(v57 + 13);
    sub_242C6D138(v50, &qword_27ECFBB58);
    return 0;
  }

  return result;
}

unint64_t sub_242EA77A8()
{
  result = qword_27ECFB7C0;
  if (!qword_27ECFB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7C0);
  }

  return result;
}

unint64_t sub_242EA77FC()
{
  result = qword_27ECFB7D8;
  if (!qword_27ECFB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7D8);
  }

  return result;
}

unint64_t sub_242EA7850()
{
  result = qword_27ECFB7F0;
  if (!qword_27ECFB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7F0);
  }

  return result;
}

unint64_t sub_242EA78A4()
{
  result = qword_27ECFB7F8;
  if (!qword_27ECFB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7F8);
  }

  return result;
}

unint64_t sub_242EA78F8()
{
  result = qword_27ECFB808;
  if (!qword_27ECFB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB808);
  }

  return result;
}

unint64_t sub_242EA79B4()
{
  result = qword_27ECFB818;
  if (!qword_27ECFB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB818);
  }

  return result;
}

BOOL _s14CarPlayAssetUI33DigiBarCruiseControlConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v89 = a1[8];
  v90[0] = v3;
  *(v90 + 12) = *(a1 + 156);
  v4 = a1[3];
  v5 = a1[5];
  v85 = a1[4];
  v86 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v87 = a1[6];
  v88 = v7;
  v8 = a1[1];
  v82[0] = *a1;
  v82[1] = v8;
  v9 = a1[3];
  v10 = *a1;
  v11 = a1[1];
  v83 = a1[2];
  v84 = v9;
  v12 = a1[20];
  v99 = a1[19];
  v100[0] = v12;
  *(v100 + 12) = *(a1 + 332);
  v13 = a1[16];
  v95 = a1[15];
  v96 = v13;
  v14 = a1[17];
  v98 = a1[18];
  v97 = v14;
  v15 = a1[12];
  v91 = a1[11];
  v92 = v15;
  v16 = a1[13];
  v94 = a1[14];
  v93 = v16;
  v17 = a2[7];
  v18 = a2[9];
  v106 = a2[8];
  v107[0] = v18;
  *(v107 + 12) = *(a2 + 156);
  v19 = a2[3];
  v20 = a2[5];
  v102 = a2[4];
  v103 = v20;
  v22 = a2[5];
  v21 = a2[6];
  v23 = v21;
  v105 = a2[7];
  v104 = v21;
  v24 = a2[1];
  v101[0] = *a2;
  v101[1] = v24;
  v25 = a2[2];
  v27 = *a2;
  v26 = a2[1];
  v28 = v25;
  v101[3] = a2[3];
  v101[2] = v25;
  v29 = a2[20];
  v116 = a2[19];
  v117[0] = v29;
  *(v117 + 12) = *(a2 + 332);
  v30 = a2[16];
  v112 = a2[15];
  v113 = v30;
  v31 = a2[17];
  v115 = a2[18];
  v114 = v31;
  v32 = a2[12];
  v108 = a2[11];
  v109 = v32;
  v33 = a2[13];
  v111 = a2[14];
  v110 = v33;
  v34 = a1[9];
  v80 = v89;
  v81[0] = v34;
  *(v81 + 12) = *(a1 + 156);
  v76 = v85;
  v77 = v6;
  v78 = v87;
  v79 = v2;
  v72 = v10;
  v73 = v11;
  v74 = v83;
  v75 = v4;
  v35 = a2[9];
  v70 = v106;
  v71[0] = v35;
  *(v71 + 12) = *(a2 + 156);
  v66 = v102;
  v67 = v22;
  v68 = v23;
  v69 = v17;
  v62 = v27;
  v63 = v26;
  v36 = *(a1 + 348);
  v37 = *(a2 + 348);
  v64 = v28;
  v65 = v19;
  sub_242E50D10(v82, v120);
  sub_242E50D10(v101, v120);
  v38 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v72, &v62);
  v118[8] = v70;
  v119[0] = v71[0];
  *(v119 + 12) = *(v71 + 12);
  v118[4] = v66;
  v118[5] = v67;
  v118[7] = v69;
  v118[6] = v68;
  v118[0] = v62;
  v118[1] = v63;
  v118[3] = v65;
  v118[2] = v64;
  sub_242E50D6C(v118);
  v120[8] = v80;
  v121[0] = v81[0];
  *(v121 + 12) = *(v81 + 12);
  v120[4] = v76;
  v120[5] = v77;
  v120[6] = v78;
  v120[7] = v79;
  v120[0] = v72;
  v120[1] = v73;
  v120[2] = v74;
  v120[3] = v75;
  sub_242E50D6C(v120);
  if (v38 && (v60 = v99, v61[0] = v100[0], *(v61 + 12) = *(v100 + 12), v56 = v95, v57 = v96, v58 = v97, v59 = v98, v52 = v91, v53 = v92, v54 = v93, v55 = v94, v50 = v116, v51[0] = v117[0], *(v51 + 12) = *(v117 + 12), v46 = v112, v47 = v113, v48 = v114, v49 = v115, v42 = v108, v43 = v109, v44 = v110, v45 = v111, sub_242E50D10(&v91, v41), sub_242E50D10(&v108, v41), v39 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v52, &v42), v70 = v50, v71[0] = v51[0], *(v71 + 12) = *(v51 + 12), v66 = v46, v67 = v47, v68 = v48, v69 = v49, v62 = v42, v63 = v43, v64 = v44, v65 = v45, sub_242E50D6C(&v62), v80 = v60, v81[0] = v61[0], *(v81 + 12) = *(v61 + 12), v76 = v56, v77 = v57, v78 = v58, v79 = v59, v72 = v52, v73 = v53, v74 = v54, v75 = v55, sub_242E50D6C(&v72), v39))
  {
    return v36 == v37;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_242EA7DC8()
{
  result = qword_27ECFB840;
  if (!qword_27ECFB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB840);
  }

  return result;
}

unint64_t sub_242EA7E1C()
{
  result = qword_27ECFB870;
  if (!qword_27ECFB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB870);
  }

  return result;
}

unint64_t sub_242EA7E70()
{
  result = qword_27ECFB878;
  if (!qword_27ECFB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB878);
  }

  return result;
}

unint64_t sub_242EA7EC4()
{
  result = qword_27ECFB880;
  if (!qword_27ECFB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB880);
  }

  return result;
}

unint64_t sub_242EA7F18()
{
  result = qword_27ECFB888;
  if (!qword_27ECFB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB888);
  }

  return result;
}

unint64_t sub_242EA7F6C()
{
  result = qword_27ECFB890;
  if (!qword_27ECFB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB890);
  }

  return result;
}

unint64_t sub_242EA7FC0()
{
  result = qword_27ECFB8B8;
  if (!qword_27ECFB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB8B8);
  }

  return result;
}

unint64_t sub_242EA8014()
{
  result = qword_27ECFB8D0;
  if (!qword_27ECFB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB8D0);
  }

  return result;
}

unint64_t sub_242EA8068()
{
  result = qword_27ECFB8D8;
  if (!qword_27ECFB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB8D8);
  }

  return result;
}

unint64_t sub_242EA80BC()
{
  result = qword_27ECFB8E8;
  if (!qword_27ECFB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB8E8);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI24DigiBarMaskConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 52);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 60);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 52);
  v18 = *(a2 + 48);
  v19 = v18 | (v17 << 32);
  v20 = *(a2 + 56);
  v21 = *(a2 + 60);
  v36 = *a1;
  v37 = v2;
  v38 = v3;
  v39 = v4;
  v40 = v5;
  v41 = v6;
  v43 = v7;
  v42 = v8;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v35 = v17;
  v34 = v18;
  sub_242DE4FF4(v36, v2, v3, v4, v5, v6, v8 | (v7 << 32));
  sub_242DE4FF4(v11, v12, v13, v14, v15, v16, v19);
  LOBYTE(v11) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(&v36, &v28);
  sub_242D3CBB8(v28, v29, v30, v31, v32, v33, v34 | (v35 << 32));
  sub_242D3CBB8(v36, v37, v38, v39, v40, v41, v42 | (v43 << 32));
  v22 = 0;
  if ((v11 & 1) != 0 && v9 == v20)
  {
    LOBYTE(v36) = v10;
    LOBYTE(v28) = v21;
    v23 = Instrument.Configuration.BlendMode.rawValue.getter();
    v25 = v24;
    if (v23 == Instrument.Configuration.BlendMode.rawValue.getter() && v25 == v26)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_242F06110();
    }
  }

  return v22 & 1;
}

unint64_t sub_242EA82B4()
{
  result = qword_27ECFB8F8;
  if (!qword_27ECFB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB8F8);
  }

  return result;
}

uint64_t sub_242EA8308(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_242EA83C4()
{
  result = qword_27ECFB920;
  if (!qword_27ECFB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB920);
  }

  return result;
}

unint64_t sub_242EA8480()
{
  result = qword_27ECFB938;
  if (!qword_27ECFB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB938);
  }

  return result;
}

unint64_t sub_242EA853C()
{
  result = qword_27ECFB950;
  if (!qword_27ECFB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB950);
  }

  return result;
}

unint64_t sub_242EA8590()
{
  result = qword_27ECFB958;
  if (!qword_27ECFB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB958);
  }

  return result;
}

unint64_t sub_242EA85E4()
{
  result = qword_27ECFB968;
  if (!qword_27ECFB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB968);
  }

  return result;
}

unint64_t sub_242EA86A0()
{
  result = qword_27ECFB970;
  if (!qword_27ECFB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB970);
  }

  return result;
}

unint64_t sub_242EA86FC()
{
  result = qword_27ECFB978;
  if (!qword_27ECFB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB978);
  }

  return result;
}

unint64_t sub_242EA8754()
{
  result = qword_27ECFB980;
  if (!qword_27ECFB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB980);
  }

  return result;
}

unint64_t sub_242EA87A8()
{
  result = qword_27ECFB988;
  if (!qword_27ECFB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB988);
  }

  return result;
}

unint64_t sub_242EA8808()
{
  result = qword_27ECFB990;
  if (!qword_27ECFB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB990);
  }

  return result;
}

unint64_t sub_242EA885C()
{
  result = qword_27ECFB998;
  if (!qword_27ECFB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB998);
  }

  return result;
}

unint64_t sub_242EA88B8()
{
  result = qword_27ECFB9A0;
  if (!qword_27ECFB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9A0);
  }

  return result;
}

unint64_t sub_242EA8910()
{
  result = qword_27ECFB9A8;
  if (!qword_27ECFB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9A8);
  }

  return result;
}

unint64_t sub_242EA8968()
{
  result = qword_27ECFB9B0;
  if (!qword_27ECFB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9B0);
  }

  return result;
}

unint64_t sub_242EA89BC()
{
  result = qword_27ECFB9B8;
  if (!qword_27ECFB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9B8);
  }

  return result;
}

unint64_t sub_242EA8A14()
{
  result = qword_27ECFB9C0;
  if (!qword_27ECFB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9C0);
  }

  return result;
}

unint64_t sub_242EA8A6C()
{
  result = qword_27ECFB9C8;
  if (!qword_27ECFB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9C8);
  }

  return result;
}

unint64_t sub_242EA8AC4()
{
  result = qword_27ECFB9D0;
  if (!qword_27ECFB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9D0);
  }

  return result;
}

unint64_t sub_242EA8B1C()
{
  result = qword_27ECFB9D8;
  if (!qword_27ECFB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9D8);
  }

  return result;
}

unint64_t sub_242EA8B84()
{
  result = qword_27ECFB9E0;
  if (!qword_27ECFB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9E0);
  }

  return result;
}

unint64_t sub_242EA8BDC()
{
  result = qword_27ECFB9E8;
  if (!qword_27ECFB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9E8);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242EA8C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242EA8CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_242EA8D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242EA8D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}