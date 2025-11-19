void sub_24AB70BA8(uint64_t a1, int a2)
{
  v3 = v2;
  v133 = a2;
  v139 = *MEMORY[0x277D85DE8];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95410, &qword_24ABAD6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v134 = &v121 - v6;
  v123 = sub_24ABABB1C();
  v122 = *(v123 - 8);
  v7 = *(v122 + 64);
  (MEMORY[0x28223BE20])();
  v125 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABABC0C();
  v128 = *(v9 - 8);
  v10 = *(v128 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v124 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v121 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v135 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = &v121 - v19;
  v136 = sub_24ABABCBC();
  v132 = *(v136 - 8);
  v20 = *(v132 + 64);
  v21 = MEMORY[0x28223BE20](v136);
  v130 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v131 = &v121 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v121 - v25;
  v27 = *(a1 + 4);
  v28 = *(a1 + 16);
  if (v27)
  {
    if ((v27 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v29 = sub_24ABABD8C();
    __swift_project_value_buffer(v29, qword_27EF95FD8);
    v30 = sub_24ABABD6C();
    v31 = sub_24ABAC0FC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24AB6F000, v30, v31, "Using default name", v32, 2u);
      MEMORY[0x24C229EC0](v32, -1, -1);
    }

    if ((v27 & 8) != 0)
    {
LABEL_3:
      if ((v27 & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v33 = sub_24ABABD8C();
  __swift_project_value_buffer(v33, qword_27EF95FD8);
  v34 = sub_24ABABD6C();
  v35 = sub_24ABAC0FC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_24AB6F000, v34, v35, "Using default object type", v36, 2u);
    MEMORY[0x24C229EC0](v36, -1, -1);
  }

  if ((v27 & 0x200) != 0)
  {
LABEL_4:
    if ((v27 & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_19:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v37 = sub_24ABABD8C();
  __swift_project_value_buffer(v37, qword_27EF95FD8);
  v38 = sub_24ABABD6C();
  v39 = sub_24ABAC0FC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_24AB6F000, v38, v39, "Using default creation date", v40, 2u);
    MEMORY[0x24C229EC0](v40, -1, -1);
  }

  if ((v27 & 0x400) != 0)
  {
LABEL_5:
    if ((v27 & 0x8000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_24:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v41 = sub_24ABABD8C();
  __swift_project_value_buffer(v41, qword_27EF95FD8);
  v42 = sub_24ABABD6C();
  v43 = sub_24ABAC0FC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24AB6F000, v42, v43, "Using default modification date", v44, 2u);
    MEMORY[0x24C229EC0](v44, -1, -1);
  }

  if ((v27 & 0x8000) != 0)
  {
LABEL_6:
    if ((v27 & 0x2000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_29:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v45 = sub_24ABABD8C();
  __swift_project_value_buffer(v45, qword_27EF95FD8);
  v46 = sub_24ABABD6C();
  v47 = sub_24ABAC0FC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24AB6F000, v46, v47, "Using default owner ID", v48, 2u);
    MEMORY[0x24C229EC0](v48, -1, -1);
  }

  if ((v27 & 0x2000000) != 0)
  {
LABEL_7:
    if ((v27 & 0x4000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_34:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v49 = sub_24ABABD8C();
  __swift_project_value_buffer(v49, qword_27EF95FD8);
  v50 = sub_24ABABD6C();
  v51 = sub_24ABAC0FC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_24AB6F000, v50, v51, "Using default fileID", v52, 2u);
    MEMORY[0x24C229EC0](v52, -1, -1);
  }

  if ((v27 & 0x4000000) == 0)
  {
LABEL_39:
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v53 = sub_24ABABD8C();
    __swift_project_value_buffer(v53, qword_27EF95FD8);
    v54 = sub_24ABABD6C();
    v55 = sub_24ABAC0FC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_24AB6F000, v54, v55, "Using default parent ID", v56, 2u);
      MEMORY[0x24C229EC0](v56, -1, -1);
    }
  }

LABEL_44:
  v126 = v14;
  v57 = v135;
  if ((v28 & 0x200) == 0)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v58 = sub_24ABABD8C();
    __swift_project_value_buffer(v58, qword_27EF95FD8);
    v59 = sub_24ABABD6C();
    v60 = sub_24ABAC0FC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_24AB6F000, v59, v60, "Using default logical size", v61, 2u);
      MEMORY[0x24C229EC0](v61, -1, -1);
    }
  }

  v62 = *(a1 + 24);
  v63 = sub_24ABABF3C();
  v65 = v64;
  v66 = *(v3 + 16);

  *(v3 + 8) = v63;
  *(v3 + 16) = v65;
  v67 = *(a1 + 32);
  v68 = sub_24ABAAED0(v67);
  if (v68 == 11)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v69 = sub_24ABABD8C();
    __swift_project_value_buffer(v69, qword_27EF95FD8);
    v70 = sub_24ABABD6C();
    v71 = sub_24ABAC0FC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 67109120;
      *(v72 + 4) = v67;
      _os_log_impl(&dword_24AB6F000, v70, v71, "Invalid object type %u", v72, 8u);
      MEMORY[0x24C229EC0](v72, -1, -1);
    }

    v68 = 8;
  }

  *(v3 + 48) = v68;
  v73 = *(a1 + 36);
  v74 = *(a1 + 44);
  v129 = v9;
  if (v73 | v74)
  {
    sub_24ABABC8C();
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v75 = sub_24ABABD8C();
    __swift_project_value_buffer(v75, qword_27EF95FD8);
    v76 = sub_24ABABD6C();
    v77 = sub_24ABAC0FC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 134218240;
      *(v78 + 4) = 0;
      *(v78 + 12) = 2048;
      *(v78 + 14) = 0;
      _os_log_impl(&dword_24AB6F000, v76, v77, "Invalid creation timespec (%ld, %ld)", v78, 0x16u);
      MEMORY[0x24C229EC0](v78, -1, -1);
    }

    v26 = v131;
    sub_24ABABCAC();
  }

  v79 = type metadata accessor for FileMetadata();
  v80 = *(v132 + 40);
  v80(v3 + v79[9], v26, v136);
  if (*(a1 + 52) == 0)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v81 = sub_24ABABD8C();
    __swift_project_value_buffer(v81, qword_27EF95FD8);
    v82 = sub_24ABABD6C();
    v83 = sub_24ABAC0FC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134218240;
      *(v84 + 4) = v73;
      *(v84 + 12) = 2048;
      *(v84 + 14) = v74;
      _os_log_impl(&dword_24AB6F000, v82, v83, "Invalid modification timespec (%ld, %ld)", v84, 0x16u);
      MEMORY[0x24C229EC0](v84, -1, -1);
    }

    v85 = v131;
    sub_24ABABCAC();
    v57 = v135;
  }

  else
  {
    v85 = v130;
    sub_24ABABC8C();
  }

  v80(v3 + v79[10], v85, v136);
  v86 = *(a1 + 72);
  *v3 = v86;
  *(v3 + 24) = *(a1 + 80);
  *(v3 + v79[14]) = *(a1 + 88) / 1000000.0;
  v87 = (v3 + v79[19]);
  v88 = v87[1];

  *v87 = 0xD000000000000023;
  v87[1] = 0x800000024ABAF7E0;
  v138 = 0;
  v89 = fpfs_fsgetpath();
  v90 = v134;
  if (v89 || (v96 = v138) == 0)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v91 = sub_24ABABD8C();
    __swift_project_value_buffer(v91, qword_27EF95FD8);
    v92 = sub_24ABABD6C();
    v93 = sub_24ABAC11C();
    if (!os_log_type_enabled(v92, v93))
    {
      goto LABEL_76;
    }

    v94 = swift_slowAlloc();
    *v94 = 134217984;
    *(v94 + 4) = v86;
    _os_log_impl(&dword_24AB6F000, v92, v93, "Failed to get path for %llu", v94, 0xCu);
    goto LABEL_75;
  }

  v97 = [objc_opt_self() defaultManager];
  v98 = [v97 stringWithFileSystemRepresentation:v96 length:strlen(v96)];

  v99 = sub_24ABABEBC();
  v101 = v100;

  v102 = v127;
  sub_24ABABB8C();
  v103 = v128;
  v104 = v129;
  (*(v128 + 56))(v102, 0, 1, v129);
  v105 = v79[21];
  sub_24AB779B0(v102, v3 + v105, &qword_27EF95B00, &qword_24ABAED70);
  sub_24AB778E0(v3 + v105, v57);
  if ((*(v103 + 48))(v57, 1, v104) == 1)
  {
    sub_24AB7C4A4(v57, &qword_27EF95B00, &qword_24ABAED70);
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v106 = sub_24ABABD8C();
    __swift_project_value_buffer(v106, qword_27EF95FD8);

    v92 = sub_24ABABD6C();
    v107 = sub_24ABAC11C();

    if (!os_log_type_enabled(v92, v107))
    {

      goto LABEL_76;
    }

    v94 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v137 = v108;
    *v94 = 136315138;
    v109 = sub_24AB760CC(v99, v101, &v137);

    *(v94 + 4) = v109;
    _os_log_impl(&dword_24AB6F000, v92, v107, "Failed to parse content URL from %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x24C229EC0](v108, -1, -1);
LABEL_75:
    MEMORY[0x24C229EC0](v94, -1, -1);
LABEL_76:

    goto LABEL_77;
  }

  v110 = v126;
  (*(v103 + 32))(v126, v57, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95400, &qword_24ABAD6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ABAD4A0;
  v112 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v113 = v112;
  sub_24AB76854(inited);
  swift_setDeallocating();
  sub_24AB7786C(inited + 32, type metadata accessor for URLResourceKey);
  v114 = v125;
  sub_24ABABB7C();

  sub_24ABABAFC();
  v115 = sub_24ABABD4C();
  v116 = *(v115 - 8);
  if ((*(v116 + 48))(v90, 1, v115) == 1)
  {
    (*(v122 + 8))(v114, v123);
    (*(v103 + 8))(v110, v104);
    sub_24AB7C4A4(v90, &unk_27EF95410, &qword_24ABAD6C0);
  }

  else
  {
    v117 = sub_24ABABD2C();
    v119 = v118;
    (*(v122 + 8))(v114, v123);
    (*(v103 + 8))(v110, v104);
    (*(v116 + 8))(v90, v115);
    v120 = *(v3 + 40);

    *(v3 + 32) = v117;
    *(v3 + 40) = v119;
  }

LABEL_77:
  free(v138);
  v95 = *MEMORY[0x277D85DE8];
}

void sub_24AB7201C(uint64_t a1@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v25[0] = 0;
  v9 = FPFileMetadataCopyLastUsedDate();
  v10 = v25[0];
  if (v9)
  {
    v11 = v9;
    sub_24ABABC9C();
    v12 = v10;

    v13 = sub_24ABABCBC();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v14 = sub_24ABABCBC();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = v10;
  }

  sub_24AB77A18(v6, v8);
  if (v10)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v16 = sub_24ABABD8C();
    __swift_project_value_buffer(v16, qword_27EF95FD8);
    v17 = v10;
    v18 = sub_24ABABD6C();
    v19 = sub_24ABAC11C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v17 fp_prettyDescription];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_24AB6F000, v18, v19, "failed to copy last used date: %@", v20, 0xCu);
      sub_24AB7C4A4(v21, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v21, -1, -1);
      MEMORY[0x24C229EC0](v20, -1, -1);
    }

    else
    {
    }

    sub_24AB7C4A4(v8, &qword_27EF95428, &qword_24ABAD6D0);
    v23 = sub_24ABABCBC();
    (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  else
  {
    sub_24AB77A18(v8, a1);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24AB72368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_24ABABC0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FileMetadata();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_slowAlloc();
  sub_24ABAAC34(v14);
  sub_24ABA4B04(a2, a1, v15, v14);
  v21 = v15;
  sub_24AB70BA8(v15, a2);
  v16 = *(v10 + 84);
  if (!(*(v6 + 48))(&v14[v16], 1, v5))
  {
    (*(v6 + 16))(v9, &v14[v16], v5);
    sub_24ABABBEC();
    (*(v6 + 8))(v9, v5);
    v17 = sub_24AB77504();

    v14[*(v10 + 60)] = v17 & 1;
  }

  v18 = v22;
  sub_24AB7C43C(v14, v22, type metadata accessor for FileMetadata);
  (*(v11 + 56))(v18, 0, 1, v10);
  sub_24AB7786C(v14, type metadata accessor for FileMetadata);
  return MEMORY[0x24C229EC0](v21, -1, -1);
}

uint64_t sub_24AB7274C(int a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  swift_beginAccess();
  LODWORD(a2) = fgetattrlist(a1, &unk_27EF952F0, a2, 0x362uLL, 8u);
  swift_endAccess();
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = sub_24AB76F44();
  v12 = v11;
  v13 = type metadata accessor for FileMetadata();
  v14 = a3 + v13[13];
  *v14 = v10;
  *(v14 + 8) = v12 & 1;
  v15 = sub_24AB77158();
  v16 = v13[12];
  v17 = *(a3 + v16);
  *(a3 + v16) = v15;

  sub_24AB7201C(v9);
  sub_24AB779B0(v9, a3 + v13[11], &qword_27EF95428, &qword_24ABAD6D0);
  return 0;
}

id sub_24AB728A4()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_24ABABE8C();
  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_24AB72928()
{
  sub_24ABAC2FC();

  v0 = sub_24ABAC56C();
  MEMORY[0x24C228EB0](v0);

  MEMORY[0x24C228EB0](0x4449656C6966202CLL, 0xEA0000000000203ALL);
  v1 = sub_24ABAC56C();
  MEMORY[0x24C228EB0](v1);

  MEMORY[0x24C228EB0](0x203A736F70202CLL, 0xE700000000000000);
  v2 = sub_24ABAC56C();
  MEMORY[0x24C228EB0](v2);

  return 0x203A4449766564;
}

uint64_t sub_24AB72A64(const char *a1, void *a2, void *a3, size_t a4)
{
  result = getattrlist(a1, a2, a3, a4, 0x21u);
  if ((result & 0x80000000) != 0)
  {
    type metadata accessor for PageCookie.Error(0);
    sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error);
    swift_allocError();
    MEMORY[0x24C228D50]();
    result = sub_24ABABDAC();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_24ABABA2C();
      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
      sub_24ABABB3C();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_24AB72BA4(uint64_t a1, uint64_t a2, void *a3, void *a4, size_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_24ABAC2EC();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v8 = a1;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    result = getattrlist(v8, a3, a4, a5, 0x21u);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    type metadata accessor for PageCookie.Error(0);
    sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error);
    swift_allocError();
    MEMORY[0x24C228D50]();
    result = sub_24ABABDAC();
    if ((result & 0x100000000) == 0)
    {
      v7 = result;
      sub_24ABABA2C();
      v10 = v7;
      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_24ABAC2EC();
  }

  result = getattrlist(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), a3, a4, a5, 0x21u);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  type metadata accessor for PageCookie.Error(0);
  sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error);
  swift_allocError();
  MEMORY[0x24C228D50]();
  result = sub_24ABABDAC();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v6 = result;
  sub_24ABABA2C();
  *v8 = v6;
  sub_24ABA5504(MEMORY[0x277D84F90]);
  sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
LABEL_10:
  sub_24ABABB3C();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24AB72E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = 0x208000200000005;

  v11 = swift_slowAlloc();
  sub_24AB72BA4(a1, a2, v20, v11, 0x14uLL);

  if (!v5)
  {
    v14 = *(v11 + 4);
    v13 = *(v11 + 8);
    v15 = *(v11 + 12);
    result = MEMORY[0x24C229EC0](v11, -1, -1);
    if (v14 == a3)
    {
      if (v15 == a4)
      {
        if (v13 == a5)
        {
          goto LABEL_10;
        }

        type metadata accessor for PageCookie.Error(0);
        sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error);
        swift_allocError();
        *v16 = a5;
        v16[1] = v13;
      }

      else
      {
        type metadata accessor for PageCookie.Error(0);
        sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error);
        swift_allocError();
        *v18 = a4;
        v18[1] = v15;
      }
    }

    else
    {
      type metadata accessor for PageCookie.Error(0);
      sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error);
      swift_allocError();
      *v17 = a3;
      v17[1] = v14;
    }

    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    goto LABEL_10;
  }

  result = MEMORY[0x24C229EC0](v11, -1, -1);
LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB73120()
{
  v1 = 0x4449766564;
  v2 = 0x69746172656E6567;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697469736F70;
  }

  if (*v0)
  {
    v1 = 0x4449656C6966;
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

uint64_t sub_24AB731A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AB77D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AB731E0(uint64_t a1)
{
  v2 = sub_24AB7C3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB7321C(uint64_t a1)
{
  v2 = sub_24AB7C3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95670, &qword_24ABAE330);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7C3E8();
  sub_24ABAC67C();
  v18 = 0;
  sub_24ABAC53C();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v17 = 1;
  sub_24ABAC55C();
  v16 = 2;
  sub_24ABAC54C();
  v15 = 3;
  sub_24ABAC51C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_24AB7342C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  return sub_24AB72928();
}

uint64_t sub_24AB73480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24AB77EBC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_24AB734E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954D0, &qword_24ABAD718);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954D8, &qword_24ABAD720);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954E0, &qword_24ABAD728);
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954E8, &qword_24ABAD730);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB787E4();
  sub_24ABAC67C();
  v20 = *v2;
  v19 = v2[1];
  v22 = v2[2];
  v21 = v2[3];
  if (v2[4])
  {
    if (v22 | v19 | v20 | v21)
    {
      LOBYTE(v39) = 2;
      sub_24AB78838();
      v23 = v33;
      sub_24ABAC4DC();
      v25 = v34;
      v24 = v35;
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_24AB78934();
      v23 = v30;
      sub_24ABAC4DC();
      v25 = v31;
      v24 = v32;
    }

    (*(v25 + 8))(v23, v24);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    LOBYTE(v39) = 1;
    sub_24AB7888C();
    v26 = v36;
    sub_24ABAC4DC();
    v39 = v20;
    v40 = v19;
    v41 = v22;
    v42 = v21;
    sub_24AB78988();
    v27 = v38;
    sub_24ABAC52C();
    (*(v37 + 8))(v26, v27);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_24AB738DC()
{
  v1 = 0x676E697473696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6570;
  }
}

uint64_t sub_24AB7393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AB780A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AB73970(uint64_t a1)
{
  v2 = sub_24AB787E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB739AC(uint64_t a1)
{
  v2 = sub_24AB787E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB739F4(uint64_t a1)
{
  v2 = sub_24AB78838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB73A30(uint64_t a1)
{
  v2 = sub_24AB78838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73A74()
{
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](0);
  return sub_24ABAC64C();
}

uint64_t sub_24AB73AE0()
{
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](0);
  return sub_24ABAC64C();
}

uint64_t sub_24AB73B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24ABAC58C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AB73BC4(uint64_t a1)
{
  v2 = sub_24AB7888C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB73C00(uint64_t a1)
{
  v2 = sub_24AB7888C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73C3C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24AB73C6C(uint64_t a1)
{
  v2 = sub_24AB78934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB73CA8(uint64_t a1)
{
  v2 = sub_24AB78934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73CE4()
{
  if (*(v0 + 32) == 1)
  {
    if ((*v0 | *(v0 + 16)) == 0)
    {
      return 0x676E69646E6570;
    }

    else
    {
      return 0x6574656C706D6F63;
    }
  }

  else
  {
    v2 = sub_24AB72928();
    MEMORY[0x24C228EB0](v2);

    MEMORY[0x24C228EB0](41, 0xE100000000000000);
    return 0x676E697473696C2ELL;
  }
}

BOOL sub_24AB73DAC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_24AB76EA4(v5, v7);
}

double sub_24AB73DF8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AB781C8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_24AB73E58()
{
  MEMORY[0x24C228EB0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x24C228EB0](0x7375746174732027, 0xEA0000000000203ALL);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    v4 = (v1 | *(v0 + 48) | v2 | v3) == 0;
    if (v1 | *(v0 + 48) | v2 | v3)
    {
      v5 = 0x6574656C706D6F63;
    }

    else
    {
      v5 = 0x676E69646E6570;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v7 = sub_24AB72928();
    MEMORY[0x24C228EB0](v7);

    MEMORY[0x24C228EB0](41, 0xE100000000000000);
    v5 = 0x676E697473696C2ELL;
    v6 = 0xE900000000000028;
  }

  MEMORY[0x24C228EB0](v5, v6);

  return 39;
}

uint64_t sub_24AB73F7C(uint64_t a1)
{
  v3 = v1;
  v37 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v33 = *(a1 + 24);
  v8 = sub_24ABABA2C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v34[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 40);
  v15 = v1 + 40;
  v14 = v16;
  v17 = *(v15 - 8);
  v18 = *(v15 + 8);
  v19 = *(v15 + 16);
  if (*(v15 + 24) == 1)
  {
    if (!(v18 | v14 | v17 | v19))
    {
      v25 = *(v3 + 16);
      v24 = *(v3 + 24);
      if (*(a1 + 32))
      {
        v34[1] = 0;
        v34[2] = 0;
        v34[0] = 0x208000200000005;

        v26 = swift_slowAlloc();
        sub_24AB72BA4(v25, v24, v34, v26, 0x14uLL);

        if (v2)
        {
          result = MEMORY[0x24C229EC0](v26, -1, -1);
          goto LABEL_5;
        }

        v5 = *(v26 + 4);
        v7 = *(v26 + 8);
        v6 = *(v26 + 12);
        MEMORY[0x24C229EC0](v26, -1, -1);
        v31 = 0;
      }

      else
      {
        result = sub_24AB72E4C(*(v3 + 16), *(v3 + 24), v5, v6, v7);
        if (v2)
        {
          goto LABEL_5;
        }

        v31 = v33;
      }

      *(v3 + 32) = v5;
      *(v3 + 40) = v6;
      *(v3 + 48) = v7;
      *(v3 + 56) = v31;
      *(v3 + 64) = 0;
      memset(v35, 0, sizeof(v35));
      v36 = 1;
      result = sub_24AB73F7C(v35);
      goto LABEL_5;
    }

    result = MEMORY[0x277D84F90];
LABEL_5:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v21 = v11;
  v22 = v10;
  result = sub_24AB72E4C(*(v3 + 16), *(v3 + 24), v17, v14, v18);
  if (v2)
  {
    goto LABEL_5;
  }

  sub_24ABABECC();
  v27 = sub_24ABABDBC();

  if ((v27 & 0x80000000) == 0)
  {
    v29 = sub_24AB78ACC(v27, v19, *(v3 + 80), *(v3 + 72), *(v3 + 88), *(v3 + 96));
    v32 = v30;
    if (v29)
    {
      *(v3 + 32) = 1;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *v15 = 0;
      *(v3 + 64) = 1;
    }

    close(v27);
    result = v32;
    goto LABEL_5;
  }

  MEMORY[0x24C228D50](v28);
  result = sub_24ABABDAC();
  if ((result & 0x100000000) == 0)
  {
    LODWORD(v34[0]) = result;
    sub_24ABA5504(MEMORY[0x277D84F90]);
    sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
    sub_24ABABB3C();
    sub_24ABABA1C();
    (*(v21 + 8))(v13, v22);
    result = swift_willThrow();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AB74310()
{
  v1 = *v0;
  v2 = 1752457584;
  v3 = 0x746E756F4378616DLL;
  v4 = 0x4449656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
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

uint64_t sub_24AB743A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AB79658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AB743D8(uint64_t a1)
{
  v2 = sub_24AB77B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB74414(uint64_t a1)
{
  v2 = sub_24AB77B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB74450()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_24AB744B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95518, &unk_24ABAD740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77B80();
  sub_24ABAC67C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v21) = 0;
  sub_24ABAC50C();
  if (!v2)
  {
    v13 = *(v3 + 64);
    v14 = *(v3 + 48);
    v21 = *(v3 + 32);
    v22 = v14;
    v23 = v13;
    v20[15] = 1;
    sub_24AB78A78();
    sub_24ABAC52C();
    v15 = *(v3 + 72);
    LOBYTE(v21) = 2;
    sub_24ABAC51C();
    v16 = *(v3 + 80);
    LOBYTE(v21) = 3;
    sub_24ABAC53C();
    v17 = *(v3 + 88);
    v18 = *(v3 + 96);
    LOBYTE(v21) = 4;
    sub_24ABAC4EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24AB746B0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95438, &qword_24ABAD6D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77B80();
  sub_24ABAC66C();
  if (v2)
  {
    type metadata accessor for DirectoryLister();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    *(v1 + 16) = sub_24ABAC46C();
    *(v1 + 24) = v11;
    v20 = 1;
    sub_24AB77C20();
    sub_24ABAC48C();
    v12 = v19;
    v13 = v18[1];
    *(v1 + 32) = v18[0];
    *(v1 + 48) = v13;
    *(v1 + 64) = v12;
    LOBYTE(v18[0]) = 2;
    *(v1 + 72) = sub_24ABAC47C();
    LOBYTE(v18[0]) = 3;
    *(v1 + 80) = sub_24ABAC49C();
    LOBYTE(v18[0]) = 4;
    v15 = sub_24ABAC44C();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *(v3 + 88) = v15;
    *(v3 + 96) = v17;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_24AB74944@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DirectoryLister();
  v5 = swift_allocObject();
  result = sub_24AB746B0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24AB749C0()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_24AB767F0();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_24ABAC3DC();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_24AB76760(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_24AB76760(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_24ABAC3DC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_24AB74A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v32 = *(v4 + v8);
    }

    result = sub_24ABAC3DC();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  v11 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_24:

    v12 = MEMORY[0x24C229290](v11, v9);

    goto LABEL_8;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = *(v9 + 8 * v11 + 32);

LABEL_8:
  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(v12 + 64) != 1)
  {
    v17 = *(v12 + 56);
    v15 = __OFADD__(v17, v16);
    v18 = v17 + v16;
    if (!v15)
    {
      v19 = *(v12 + 48);
      *(v12 + 32) = *(v12 + 32);
      *(v12 + 48) = v19;
      *(v12 + 56) = v18;
      *(v12 + 64) = 0;
      goto LABEL_12;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_12:

LABEL_13:
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID;
    v22 = *(sub_24ABABC0C() - 8);
    v23 = a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    do
    {
      v25 = sub_24ABABBEC();
      v27 = v26;
      v28 = *(v4 + v21);
      type metadata accessor for DirectoryLister();
      v29 = swift_allocObject();
      *(v29 + 16) = v25;
      *(v29 + 24) = v27;
      *(v29 + 72) = 64;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0u;
      *(v29 + 64) = 1;
      *(v29 + 80) = v28;
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      swift_beginAccess();

      MEMORY[0x24C228F60](v30);
      if (*((*(v4 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((*(v4 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ABAC01C();
      }

      sub_24ABAC02C();
      swift_endAccess();

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_24AB74CE8()
{
  v1 = *v0;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v1);
  return sub_24ABAC64C();
}

uint64_t sub_24AB74D30()
{
  v1 = *v0;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v1);
  return sub_24ABAC64C();
}

uint64_t sub_24AB74D74()
{
  v1 = 0x4C5255746F6F72;
  v2 = 0x726F746365726964;
  if (*v0 != 2)
  {
    v2 = 0x4449656369766564;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_24AB74DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AB7C280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AB74E18(uint64_t a1)
{
  v2 = sub_24AB77C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB74E54(uint64_t a1)
{
  v2 = sub_24AB77C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB74E90()
{
  v1 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL;
  v2 = sub_24ABABC0C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url, v2);
  v4 = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_24AB74F94()
{
  result = sub_24ABABC0C();
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

uint64_t sub_24AB75040(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954F8, &qword_24ABAD738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77C74();
  sub_24ABAC67C();
  v16 = 0;
  sub_24ABABC0C();
  sub_24AB77CC8(&qword_27EF95500, 255, MEMORY[0x277CC9260]);
  sub_24ABAC52C();
  if (!v2)
  {
    v16 = 1;
    sub_24ABAC52C();
    v12 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    swift_beginAccess();
    v15 = *(v3 + v12);
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95468, &qword_24ABAD6E8);
    sub_24AB789DC(&qword_27EF95508, &qword_27EF95510);
    sub_24ABAC52C();
    v13 = *(v3 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID);
    LOBYTE(v15) = 3;
    sub_24ABAC53C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t initializeBufferWithCopyOfBuffer for ListerStatus(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ListerStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ListerStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t sub_24AB753B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AB753D4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_24AB75418(uint64_t *a1)
{
  v3 = sub_24ABABC0C();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95450, &qword_24ABAD6E0);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = v27 - v11;
  v13 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
  v33 = v1;
  v34 = a1;
  *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories) = MEMORY[0x277D84F90];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77C74();
  v15 = v32;
  sub_24ABAC66C();
  if (v15)
  {
    v16 = v33;
    v23 = *(v33 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories);

    type metadata accessor for TreeLister(0);
    v24 = *(*v16 + 48);
    v25 = *(*v16 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v13;
    v32 = v9;
    v35 = 0;
    sub_24AB77CC8(&qword_27EF95460, 255, MEMORY[0x277CC9260]);
    v17 = v30;
    sub_24ABAC48C();
    v18 = *(v29 + 32);
    v16 = v33;
    v27[1] = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL;
    v19 = v31;
    v31 = v18;
    (v18)(v33 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL, v19, v3);
    v35 = 1;
    sub_24ABAC48C();
    (v31)(v16 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url, v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95468, &qword_24ABAD6E8);
    v35 = 2;
    sub_24AB789DC(&qword_27EF95470, &qword_27EF95478);
    sub_24ABAC48C();
    v20 = v36;
    v21 = v28;
    swift_beginAccess();
    v22 = *(v16 + v21);
    *(v16 + v21) = v20;

    LOBYTE(v36) = 3;
    LODWORD(v21) = sub_24ABAC49C();
    (*(v32 + 8))(v12, v17);
    *(v16 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID) = v21;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  return v16;
}

uint64_t sub_24AB758F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TreeLister(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_24AB75418(a1);
  if (!v2)
  {
    *a2 = v8;
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

BOOL sub_24AB759F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_24AB75A4C(uint64_t a1, id *a2)
{
  result = sub_24ABABE9C();
  *a2 = 0;
  return result;
}

uint64_t sub_24AB75AC4(uint64_t a1, id *a2)
{
  v3 = sub_24ABABEAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24AB75B44@<X0>(uint64_t *a1@<X8>)
{
  sub_24ABABEBC();
  v2 = sub_24ABABE8C();

  *a1 = v2;
  return result;
}

uint64_t sub_24AB75B9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24ABABEBC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24AB75BC8(uint64_t a1)
{
  v2 = sub_24AB77CC8(&qword_27EF956A0, 255, type metadata accessor for URLResourceKey);
  v3 = sub_24AB77CC8(&qword_27EF956A8, 255, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AB75C8C(uint64_t a1)
{
  v2 = sub_24AB77CC8(&qword_27EF95678, 255, type metadata accessor for NSFileProviderDomainIdentifier);
  v3 = sub_24AB77CC8(&qword_27EF95680, 255, type metadata accessor for NSFileProviderDomainIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AB75D50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24ABABE8C();

  *a2 = v5;
  return result;
}

uint64_t sub_24AB75D98(uint64_t a1)
{
  v2 = sub_24AB77CC8(&qword_27EF95690, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_24AB77CC8(&qword_27EF95698, 255, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AB75E5C()
{
  v1 = *v0;
  v2 = sub_24ABABEBC();
  v3 = MEMORY[0x24C228F30](v2);

  return v3;
}

uint64_t sub_24AB75E98()
{
  v1 = *v0;
  sub_24ABABEBC();
  sub_24ABABEFC();
}

uint64_t sub_24AB75EEC()
{
  v1 = *v0;
  sub_24ABABEBC();
  sub_24ABAC62C();
  sub_24ABABEFC();
  v2 = sub_24ABAC64C();

  return v2;
}

uint64_t sub_24AB75F60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24ABABEBC();
  v6 = v5;
  if (v4 == sub_24ABABEBC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24ABAC58C();
  }

  return v9 & 1;
}

uint64_t sub_24AB75FE8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_24AB76070(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24AB760CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24AB760CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AB76198(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_24AB77950(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_24AB76198(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AB762A4(a5, a6);
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
    result = sub_24ABAC34C();
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

uint64_t sub_24AB762A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AB762F0(a1, a2);
  sub_24AB76420(&unk_285E1BCE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AB762F0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AB7650C(v5, 0);
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

  result = sub_24ABAC34C();
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
        v10 = sub_24ABABF4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AB7650C(v10, 0);
        result = sub_24ABAC2DC();
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

uint64_t sub_24AB76420(uint64_t result)
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

  result = sub_24AB76580(result, v12, 1, v3);
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

void *sub_24AB7650C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95420, &qword_24ABAD6C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AB76580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95420, &qword_24ABAD6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24AB76674@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_24AB766A4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AB76760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24ABA2238(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24AB767F0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_24ABA2238(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AB76854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95408, &qword_24ABAD6B8);
    v3 = sub_24ABAC2CC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_24ABABEBC();
      sub_24ABAC62C();
      v29 = v7;
      sub_24ABABEFC();
      v9 = sub_24ABAC64C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_24ABABEBC();
        v20 = v19;
        if (v18 == sub_24ABABEBC() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_24ABAC58C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24AB76A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ABABA2C();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - v8;
  v9 = type metadata accessor for PageCookie.Error(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v40 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v40 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95688, &qword_24ABAE338);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v40 - v25;
  v27 = &v40 + *(v24 + 56) - v25;
  sub_24AB7C43C(a1, &v40 - v25, type metadata accessor for PageCookie.Error);
  sub_24AB7C43C(a2, v27, type metadata accessor for PageCookie.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24AB7C43C(v26, v16, type metadata accessor for PageCookie.Error);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      v29 = *v16 == *v27 && v16[1] == *(v27 + 1);
      goto LABEL_17;
    }

    sub_24AB7C43C(v26, v13, type metadata accessor for PageCookie.Error);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_21;
    }

    v31 = *v13;
    v30 = v13[1];
LABEL_14:
    v29 = v31 == *v27 && v30 == *(v27 + 1);
LABEL_17:
    v32 = v29;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    sub_24AB7C43C(v26, v19, type metadata accessor for PageCookie.Error);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_21;
    }

    v31 = *v19;
    v30 = v19[1];
    goto LABEL_14;
  }

  sub_24AB7C43C(v26, v21, type metadata accessor for PageCookie.Error);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v42 + 8))(v21, v43);
LABEL_21:
    sub_24AB7C4A4(v26, &qword_27EF95688, &qword_24ABAE338);
    v32 = 0;
    return v32 & 1;
  }

  v35 = v42;
  v34 = v43;
  v36 = *(v42 + 32);
  v37 = v40;
  v36(v40, v21, v43);
  v38 = v41;
  v36(v41, v27, v34);
  sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
  v32 = sub_24ABABB2C();
  v39 = *(v35 + 8);
  v39(v38, v34);
  v39(v37, v34);
LABEL_20:
  sub_24AB7786C(v26, type metadata accessor for PageCookie.Error);
  return v32 & 1;
}

BOOL sub_24AB76EA4(uint64_t *a1, int8x16_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a1[4])
  {
    if (v5 | v3 | v2 | v4)
    {
      if (a2[2].i8[0])
      {
        v6 = vorrq_s8(*a2, a2[1]);
        return vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) != 0;
      }
    }

    else if (a2[2].i8[0])
    {
      v11 = vorrq_s8(*a2, a2[1]);
      return vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) == 0;
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  return v2 == a2->i64[0] && v3 == a2->i64[1] && v5 == a2[1].i64[0] && v4 == a2[1].i64[1];
}

id sub_24AB76F44()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = FPFileMetadataCopyFavoriteRank();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_24AB77158()
{
  v32 = *MEMORY[0x277D85DE8];
  v0 = FPFileMetadataCopyTagData();
  v1 = 0;
  v2 = v1;
  if (!v0)
  {
    v3 = 0;
    if (!v1)
    {
      goto LABEL_25;
    }

    v5 = 0xF000000000000000;
    goto LABEL_18;
  }

  v3 = sub_24ABABC4C();
  v5 = v4;

  if (v2)
  {
LABEL_18:
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v20 = sub_24ABABD8C();
    __swift_project_value_buffer(v20, qword_27EF95FD8);
    v21 = v2;
    v22 = sub_24ABABD6C();
    v23 = sub_24ABAC11C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = [v21 fp_prettyDescription];
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_24AB6F000, v22, v23, "failed to copy tagData: %@", v24, 0xCu);
      sub_24AB7C4A4(v25, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v25, -1, -1);
      MEMORY[0x24C229EC0](v24, -1, -1);

      sub_24AB77A88(v3, v5);
    }

    else
    {
      sub_24AB77A88(v3, v5);
    }

    goto LABEL_24;
  }

  if (v5 >> 60 == 15)
  {
LABEL_24:
    v3 = 0;
    goto LABEL_25;
  }

  v6 = sub_24ABABC3C();
  v7 = FPGetTagsFromTagsData();

  if (!v7)
  {
    sub_24AB77A88(v3, v5);
    goto LABEL_24;
  }

  sub_24AB77AF0();
  v8 = sub_24ABABFFC();

  if (v8 >> 62)
  {
    v9 = sub_24ABAC3DC();
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_28:

    sub_24AB77A88(v3, v5);
    v3 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_7:
  v29 = v5;
  v30 = v3;
  v31 = MEMORY[0x277D84F90];
  sub_24ABA18BC(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
  }

  v10 = 0;
  v3 = v31;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C229290](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 label];
    v14 = sub_24ABABEBC();
    v16 = v15;

    v18 = *(v31 + 16);
    v17 = *(v31 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_24ABA18BC((v17 > 1), v18 + 1, 1);
    }

    ++v10;
    *(v31 + 16) = v18 + 1;
    v19 = v31 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v9 != v10);
  sub_24AB77A88(v30, v29);

LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_24AB77504()
{
  v0 = sub_24ABABB1C();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24ABABB6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_24ABABC0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 56))(v12, 1, 1, v13);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);

  sub_24ABABBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95400, &qword_24ABAD6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ABAD4A0;
  v19 = *MEMORY[0x277CBE888];
  *(inited + 32) = *MEMORY[0x277CBE888];
  v20 = v19;
  sub_24AB76854(inited);
  swift_setDeallocating();
  sub_24AB7786C(inited + 32, type metadata accessor for URLResourceKey);
  sub_24ABABB7C();

  LOBYTE(inited) = sub_24ABABB0C();
  (*(v22 + 8))(v3, v23);
  (*(v14 + 8))(v17, v13);
  return inited & 1;
}

uint64_t sub_24AB7786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AB778E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB77950(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AB779B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AB77A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB77A88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AB77A9C(a1, a2);
  }

  return a1;
}

uint64_t sub_24AB77A9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24AB77AF0()
{
  result = qword_27EF95430;
  if (!qword_27EF95430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF95430);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AB77B80()
{
  result = qword_27EF95440;
  if (!qword_27EF95440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95440);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_24AB77C20()
{
  result = qword_27EF95448;
  if (!qword_27EF95448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95448);
  }

  return result;
}

unint64_t sub_24AB77C74()
{
  result = qword_27EF95458;
  if (!qword_27EF95458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95458);
  }

  return result;
}

uint64_t sub_24AB77CC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AB77D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449766564 && a2 == 0xE500000000000000;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C6966 && a2 == 0xE600000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEF746E756F436E6FLL || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

uint64_t sub_24AB77EBC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95660, &qword_24ABAE328);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7C3E8();
  sub_24ABAC66C();
  v14 = 0;
  v8 = sub_24ABAC49C();
  v13 = 1;
  sub_24ABAC4BC();
  v12 = 2;
  sub_24ABAC4AC();
  v11 = 3;
  sub_24ABAC47C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_24AB780A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697473696CLL && a2 == 0xE700000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

uint64_t sub_24AB781C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95480, &qword_24ABAD6F0);
  v56 = *(v53 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95488, &qword_24ABAD6F8);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95490, &qword_24ABAD700);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95498, &qword_24ABAD708);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24AB787E4();
  v21 = v57;
  sub_24ABAC66C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }

  v48 = v9;
  v49 = v18;
  v23 = v55;
  v22 = v56;
  v57 = v15;
  v24 = sub_24ABAC4CC();
  v25 = *(v24 + 16);
  if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
  {
    v28 = sub_24ABAC33C();
    swift_allocError();
    v29 = v14;
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954A8, &qword_24ABAD710) + 48);
    *v31 = &type metadata for ListerStatus;
    v33 = v49;
    sub_24ABAC43C();
    sub_24ABAC32C();
    (*(*(v28 - 8) + 104))(v31, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v57 + 8))(v33, v29);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }

  if (!*(v24 + 32))
  {
    LOBYTE(v58) = 0;
    sub_24AB78934();
    v37 = v49;
    sub_24ABAC42C();
    (*(v50 + 8))(v13, v10);
    (*(v57 + 8))(v37, v14);
    swift_unknownObjectRelease();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
LABEL_15:
    v42 = 1;
    goto LABEL_16;
  }

  if (v26 != 1)
  {
    LOBYTE(v58) = 2;
    sub_24AB78838();
    v38 = v49;
    sub_24ABAC42C();
    v39 = v57;
    (*(v22 + 8))(v23, v53);
    (*(v39 + 8))(v38, v14);
    swift_unknownObjectRelease();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 1;
    goto LABEL_15;
  }

  LOBYTE(v58) = 1;
  sub_24AB7888C();
  v34 = v48;
  v35 = v49;
  sub_24ABAC42C();
  v36 = v57;
  sub_24AB788E0();
  v41 = v51;
  sub_24ABAC48C();
  (*(v52 + 8))(v34, v41);
  (*(v36 + 8))(v35, v14);
  swift_unknownObjectRelease();
  v42 = 0;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
LABEL_16:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v62);
  v47 = v54;
  *v54 = v43;
  v47[1] = v44;
  v47[2] = v45;
  v47[3] = v46;
  *(v47 + 32) = v42;
  return result;
}

unint64_t sub_24AB787E4()
{
  result = qword_27EF954A0;
  if (!qword_27EF954A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954A0);
  }

  return result;
}

unint64_t sub_24AB78838()
{
  result = qword_27EF954B0;
  if (!qword_27EF954B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954B0);
  }

  return result;
}

unint64_t sub_24AB7888C()
{
  result = qword_27EF954B8;
  if (!qword_27EF954B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954B8);
  }

  return result;
}

unint64_t sub_24AB788E0()
{
  result = qword_27EF954C0;
  if (!qword_27EF954C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954C0);
  }

  return result;
}

unint64_t sub_24AB78934()
{
  result = qword_27EF954C8;
  if (!qword_27EF954C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954C8);
  }

  return result;
}

unint64_t sub_24AB78988()
{
  result = qword_27EF954F0;
  if (!qword_27EF954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954F0);
  }

  return result;
}

uint64_t sub_24AB789DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95468, &qword_24ABAD6E8);
    sub_24AB77CC8(a2, v5, type metadata accessor for DirectoryLister);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AB78A78()
{
  result = qword_27EF95520;
  if (!qword_27EF95520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95520);
  }

  return result;
}

uint64_t sub_24AB78ACC(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v93 = a6;
  v91 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v76 - v11;
  v13 = sub_24ABABC0C();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = &v76 - v19;
  v83 = type metadata accessor for FileMetadata();
  v89 = *(v83 - 8);
  v20 = *(v89 + 64);
  v21 = MEMORY[0x28223BE20](v83);
  v96 = (&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v24 = &v76 - v23;
  v25 = sub_24ABABA2C();
  v77 = *(v25 - 8);
  v26 = *(v77 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = MEMORY[0x28223BE20](v27);
  v78 = &v76 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v33 = &v76 - v32;
  v34 = 866 * a4;
  if ((a4 * 866) >> 64 == (866 * a4) >> 63)
  {
    v87 = v13;
    v88 = v12;
    v76 = v31;
    v79 = v30;
    v13 = swift_slowAlloc();
    a4 = &unk_27EF952F0;
    swift_beginAccess();
    v12 = 0;
    do
    {
      v35 = __OFSUB__(a2, v12);
      a2 -= v12;
      if (v35)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v36 = getattrlistbulk(a1, &unk_27EF952F0, v13, v34, 8uLL);
      if (v36 < 0)
      {
        v59 = swift_endAccess();
        if (MEMORY[0x24C228D50](v59) == 4 || MEMORY[0x24C228D50]() == 35)
        {
          v98 = MEMORY[0x277D84F90];
          LOBYTE(v33) = 1;
          goto LABEL_34;
        }

        MEMORY[0x24C228D50]();
        result = sub_24ABABDAC();
        if ((result & 0x100000000) == 0)
        {
          LODWORD(v97) = result;
          sub_24ABA5504(MEMORY[0x277D84F90]);
          sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
          v74 = v79;
          sub_24ABABB3C();
          sub_24ABABA1C();
          (*(v77 + 8))(v33, v74);
          swift_willThrow();
          goto LABEL_34;
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v12 = v36;
      if (!v36)
      {
        swift_endAccess();
        v98 = MEMORY[0x277D84F90];
        LOBYTE(v33) = 1;
        goto LABEL_34;
      }
    }

    while (a2 >= v36);
    swift_endAccess();
    v37 = v12 - a2;
    if (__OFSUB__(v12, a2))
    {
      goto LABEL_42;
    }

    v38 = v13;
    if (a2 >= 1)
    {
      v39 = a2 + 1;
      v38 = v13;
      do
      {
        v38 = (v38 + *v38);
        --v39;
      }

      while (v39 > 1);
    }

    if ((v37 & 0x8000000000000000) == 0)
    {
      if (!v37)
      {
        LOBYTE(v33) = 0;
        v98 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }

      v12 = 0;
      v84 = (v14 + 48);
      v80 = (v14 + 8);
      v81 = (v14 + 32);
      v98 = MEMORY[0x277D84F90];
      v40 = v83;
      v85 = v37;
      v86 = v13;
      while (!__OFADD__(v12, 1))
      {
        v95 = v12 + 1;
        v94 = *v38;
        sub_24ABAAC34(v24);
        sub_24AB70BA8(v38, v91);
        v41 = &v24[v40[19]];
        v42 = *(v41 + 1);
        v43 = v93;
        *v41 = v92;
        *(v41 + 1) = v43;

        a4 = *(v24 + 1);
        v13 = *(v24 + 2);
        sub_24ABABECC();
        v34 = sub_24ABABDDC();

        if ((v34 & 0x80000000) != 0)
        {
          MEMORY[0x24C228D50](v44);
          result = sub_24ABABDAC();
          if ((result & 0x100000000) != 0)
          {
            __break(1u);
            goto LABEL_46;
          }

          v61 = result;

          LODWORD(v97) = v61;
          sub_24ABA5504(MEMORY[0x277D84F90]);
          sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658]);
          v34 = v78;
          v12 = v79;
          sub_24ABABB3C();
          if (qword_27EF95308 != -1)
          {
            goto LABEL_44;
          }

          goto LABEL_32;
        }

        v45 = sub_24AB76F44();
        v46 = &v24[v40[13]];
        *v46 = v45;
        v46[8] = v47 & 1;
        v48 = sub_24AB77158();
        v49 = v40[12];
        v50 = *&v24[v49];

        *&v24[v49] = v48;
        v51 = v90;
        sub_24AB7201C(v90);
        sub_24AB779B0(v51, &v24[v40[11]], &qword_27EF95428, &qword_24ABAD6D0);
        v52 = v88;
        sub_24AB778E0(&v24[v40[21]], v88);
        v53 = v87;
        if ((*v84)(v52, 1, v87) == 1)
        {
          sub_24AB7C4A4(v52, &qword_27EF95B00, &qword_24ABAED70);
          v24[v40[15]] = 0;
        }

        else
        {
          v54 = v82;
          (*v81)(v82, v52, v53);
          sub_24ABABBEC();
          v55 = sub_24AB77504();

          v56 = v54;
          v40 = v83;
          (*v80)(v56, v53);
          v24[v40[15]] = v55 & 1;
        }

        v13 = v86;
        sub_24AB7C43C(v24, v96, type metadata accessor for FileMetadata);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_24ABA13B8(0, v98[2] + 1, 1, v98);
        }

        a4 = v98[2];
        v57 = v98[3];
        if (a4 >= v57 >> 1)
        {
          v98 = sub_24ABA13B8(v57 > 1, a4 + 1, 1, v98);
        }

        v58 = v98;
        v98[2] = a4 + 1;
        sub_24AB795F4(v96, v58 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * a4);
        v38 = (v38 + v94);
        close(v34);
        sub_24AB7786C(v24, type metadata accessor for FileMetadata);
        ++v12;
        if (v95 == v85)
        {
          LOBYTE(v33) = 0;
          goto LABEL_34;
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_32:
  v62 = sub_24ABABD8C();
  __swift_project_value_buffer(v62, qword_27EF95FD8);
  v63 = v77;
  v64 = v76;
  (*(v77 + 16))(v76, v34, v12);
  v65 = sub_24ABABD6C();
  v66 = sub_24ABAC11C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v97 = v98;
    *v67 = 136315394;

    v68 = sub_24AB760CC(a4, v13, &v97);

    *(v67 + 4) = v68;
    *(v67 + 12) = 2112;
    sub_24ABABA1C();
    v69 = _swift_stdlib_bridgeErrorToNSError();
    v70 = *(v63 + 8);
    v70(v64, v79);
    *(v67 + 14) = v69;
    v71 = v96;
    *v96 = v69;
    _os_log_impl(&dword_24AB6F000, v65, v66, "failed to open %s, %@", v67, 0x16u);
    sub_24AB7C4A4(v71, &unk_27EF953F0, &unk_24ABAD6A0);
    MEMORY[0x24C229EC0](v71, -1, -1);
    v72 = v98;
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    MEMORY[0x24C229EC0](v72, -1, -1);
    v73 = v67;
    v12 = v79;
    MEMORY[0x24C229EC0](v73, -1, -1);
  }

  else
  {

    v70 = *(v63 + 8);
    v70(v64, v12);
  }

  v75 = v78;
  LOBYTE(v33) = sub_24ABABA1C();
  swift_willThrow();
  v70(v75, v12);
  sub_24AB7786C(v24, type metadata accessor for FileMetadata);
  v13 = v86;
LABEL_34:
  MEMORY[0x24C229EC0](v13, -1, -1);
  return v33 & 1;
}

uint64_t sub_24AB795BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AB795F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB79658(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024ABAF8A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

BOOL sub_24AB7980C()
{
  v0 = sub_24ABABB9C();
  v1 = sub_24ABABB9C();
  v2 = [v0 fp:v1 relativePathWithRealpath:?];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 pathComponents];
  v4 = sub_24ABABFFC();

  v5 = *(v4 + 16);

  if (v5 != 1)
  {
    goto LABEL_11;
  }

  v6 = [v2 pathComponents];
  v7 = sub_24ABABFFC();

  if (!v7[2])
  {

LABEL_11:

    return 0;
  }

  v9 = v7[4];
  v8 = v7[5];

  if (v9 != 0x68736172542ELL || v8 != 0xE600000000000000)
  {
    v11 = sub_24ABAC58C();

    return (v11 & 1) != 0;
  }

  return 1;
}

void sub_24AB7997C(uint64_t a1, uint64_t a2)
{
  v213 = a2;
  v206 = sub_24ABABB6C();
  v204 = *(v206 - 8);
  v4 = *(v204 + 64);
  MEMORY[0x28223BE20](v206);
  v207 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v205 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v190 - v10;
  v215 = sub_24ABABC0C();
  v208 = *(v215 - 8);
  v12 = *(v208 + 64);
  v13 = MEMORY[0x28223BE20](v215);
  v199 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v200 = &v190 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v201 = &v190 - v18;
  MEMORY[0x28223BE20](v17);
  v211 = &v190 - v19;
  v218 = type metadata accessor for FileMetadata();
  v212 = *(v218 - 1);
  v20 = *(v212 + 64);
  v21 = MEMORY[0x28223BE20](v218);
  v216 = &v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v217 = (&v190 - v23);
  v209 = type metadata accessor for PageCookie.Error(0);
  v24 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v210 = (&v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
  v220 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url;
  swift_beginAccess();
  v27 = 0x27EF95000;
  *&v28 = 136315394;
  v219 = v28;
  v221 = v11;
  v222 = a1;
  while (1)
  {
    v33 = *(a1 + v26);
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v58 = *(a1 + v26);
      }

      v34 = sub_24ABAC3DC();
      if (!v34)
      {
LABEL_51:
        if (*(v27 + 776) != -1)
        {
          swift_once();
        }

        v80 = sub_24ABABD8C();
        __swift_project_value_buffer(v80, qword_27EF95FD8);

        v81 = sub_24ABABD6C();
        v82 = sub_24ABAC10C();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v225 = v84;
          *v83 = 136315138;
          v85 = sub_24ABABB9C();
          v86 = [v85 fp_shortDescription];

          v87 = sub_24ABABEBC();
          v89 = v88;

          v90 = sub_24AB760CC(v87, v89, &v225);

          *(v83 + 4) = v90;
          _os_log_impl(&dword_24AB6F000, v81, v82, "%s | listing step: no more dirs to process", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          MEMORY[0x24C229EC0](v84, -1, -1);
          MEMORY[0x24C229EC0](v83, -1, -1);
        }

        return;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_51;
      }
    }

    v35 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      break;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {

      v2 = MEMORY[0x24C229290](v35, v33);
    }

    else
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v2 = *(v33 + 8 * v35 + 32);
    }

    if (*(v2 + 64) != 1 || !(*(v2 + 48) | *(v2 + 56) | *(v2 + 32) | *(v2 + 40)))
    {
      if (*(v27 + 776) == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_126;
    }

    if (*(v27 + 776) != -1)
    {
      swift_once();
    }

    v36 = sub_24ABABD8C();
    __swift_project_value_buffer(v36, qword_27EF95FD8);

    v37 = sub_24ABABD6C();
    v38 = sub_24ABAC10C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v229 = v40;
      *v39 = v219;
      v41 = sub_24ABABB9C();
      v42 = [v41 fp_shortDescription];

      v43 = sub_24ABABEBC();
      v45 = v44;

      v46 = sub_24AB760CC(v43, v45, &v229);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      v225 = 39;
      v226 = 0xE100000000000000;
      v47 = *(v2 + 16);
      v48 = *(v2 + 24);

      MEMORY[0x24C228EB0](v47, v48);
      MEMORY[0x24C228EB0](0x7375746174732027, 0xEA0000000000203ALL);
      v49 = *(v2 + 32);
      v50 = *(v2 + 40);
      v51 = *(v2 + 56);
      if (*(v2 + 64) == 1)
      {
        v52 = (v49 | *(v2 + 48) | v50 | v51) == 0;
        if (v49 | *(v2 + 48) | v50 | v51)
        {
          v53 = 0x6574656C706D6F63;
        }

        else
        {
          v53 = 0x676E69646E6570;
        }

        if (v52)
        {
          v54 = 0xE700000000000000;
        }

        else
        {
          v54 = 0xE900000000000064;
        }
      }

      else
      {
        v223 = 0x676E697473696C2ELL;
        v224 = 0xE900000000000028;
        v55 = sub_24AB72928();
        MEMORY[0x24C228EB0](v55);

        MEMORY[0x24C228EB0](41, 0xE100000000000000);
        v53 = v223;
        v54 = v224;
      }

      MEMORY[0x24C228EB0](v53, v54);

      v56 = sub_24AB760CC(v225, v226, &v229);

      *(v39 + 14) = v56;
      _os_log_impl(&dword_24AB6F000, v37, v38, "%s | listing step: completed dir %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C229EC0](v40, -1, -1);
      MEMORY[0x24C229EC0](v39, -1, -1);

      v11 = v221;
      a1 = v222;
      v27 = 0x27EF95000uLL;
    }

    else
    {
    }

    swift_beginAccess();
    v29 = *(a1 + v26);
    if (v29 >> 62)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        v59 = *(a1 + v26);
      }

      if (!sub_24ABAC3DC())
      {
        goto LABEL_5;
      }
    }

    else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + v26) = v29;
    if (v29 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v29 = sub_24ABA2238(v29);
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_124;
    }

    v31 = v30 - 1;
    v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20);
    *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) = v31;
    *(a1 + v26) = v29;

LABEL_5:
    swift_endAccess();
  }

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
  swift_once();
LABEL_43:
  v60 = sub_24ABABD8C();
  v61 = __swift_project_value_buffer(v60, qword_27EF95FD8);

  v198 = v61;
  v62 = sub_24ABABD6C();
  v63 = sub_24ABAC10C();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v229 = v65;
    *v64 = v219;
    v66 = sub_24ABABB9C();
    v67 = [v66 fp_shortDescription];

    v68 = sub_24ABABEBC();
    v70 = v69;

    v71 = sub_24AB760CC(v68, v70, &v229);

    *(v64 + 4) = v71;
    *(v64 + 12) = 2080;
    v225 = 39;
    v226 = 0xE100000000000000;
    v72 = *(v2 + 16);
    v73 = *(v2 + 24);

    MEMORY[0x24C228EB0](v72, v73);
    MEMORY[0x24C228EB0](0x7375746174732027, 0xEA0000000000203ALL);
    v74 = *(v2 + 32);
    v75 = *(v2 + 40);
    v76 = *(v2 + 56);
    if (*(v2 + 64) == 1)
    {
      v77 = (v74 | *(v2 + 48) | v75 | v76) == 0;
      if (v74 | *(v2 + 48) | v75 | v76)
      {
        v78 = 0x6574656C706D6F63;
      }

      else
      {
        v78 = 0x676E69646E6570;
      }

      if (v77)
      {
        v79 = 0xE700000000000000;
      }

      else
      {
        v79 = 0xE900000000000064;
      }
    }

    else
    {
      v223 = 0x676E697473696C2ELL;
      v224 = 0xE900000000000028;
      v91 = sub_24AB72928();
      MEMORY[0x24C228EB0](v91);

      MEMORY[0x24C228EB0](41, 0xE100000000000000);
      v78 = v223;
      v79 = v224;
    }

    MEMORY[0x24C228EB0](v78, v79);

    v92 = sub_24AB760CC(v225, v226, &v229);

    *(v64 + 14) = v92;
    _os_log_impl(&dword_24AB6F000, v62, v63, "%s | listing step: processing dir %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C229EC0](v65, -1, -1);
    MEMORY[0x24C229EC0](v64, -1, -1);

    v11 = v221;
  }

  else
  {
  }

  memset(v227, 0, sizeof(v227));
  v228 = 1;

  v93 = v214;
  v94 = sub_24AB73F7C(v227);
  if (v93)
  {

    v223 = v93;
    v95 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C50, &qword_24ABAF140);
    v96 = v210;
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {

        v97 = sub_24ABABD6C();
        v98 = sub_24ABAC11C();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v225 = v100;
          *v99 = 136315138;
          v101 = *(v2 + 16);
          v102 = *(v2 + 24);
          v103 = sub_24ABABE8C();
          v104 = [v103 fp_prettyPath];

          v105 = sub_24ABABEBC();
          v107 = v106;

          v108 = sub_24AB760CC(v105, v107, &v225);

          *(v99 + 4) = v108;
          _os_log_impl(&dword_24AB6F000, v97, v98, "Generation count changed while listing %s, restarting its listing", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          MEMORY[0x24C229EC0](v100, -1, -1);
          MEMORY[0x24C229EC0](v99, -1, -1);
        }

        swift_beginAccess();
        sub_24AB749C0();
        swift_endAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95540, &qword_24ABAD750);
        v109 = v208;
        v110 = *(v208 + 72);
        v111 = (*(v208 + 80) + 32) & ~*(v208 + 80);
        *(swift_allocObject() + 16) = xmmword_24ABAD4A0;
        v112 = *(v2 + 16);
        v113 = *(v2 + 24);
        (*(v204 + 104))(v207, *MEMORY[0x277CC91C0], v206);
        (*(v109 + 56))(v205, 1, 1, v215);

        sub_24ABABBFC();

        v214 = 0;
        return;
      }

      v214 = v93;

      sub_24AB7786C(v96, type metadata accessor for PageCookie.Error);
    }

    else
    {
      v214 = v93;
    }

    return;
  }

  v214 = 0;
  v114 = v94;

  v116 = v114;
  v117 = *(v114 + 16);
  if (v117)
  {
    v118 = 0;
    v210 = (v208 + 48);
    v203 = (v208 + 32);
    v202 = (v208 + 8);
    v195 = (v208 + 16);
    v209 = v117;
    v196 = v117 - 1;
    *&v115 = 136315138;
    v194 = v115;
    v220 = MEMORY[0x277D84F90];
    v197 = MEMORY[0x277D84F90];
    v119 = v217;
    *&v219 = v114;
LABEL_67:
    v120 = v118;
    while (1)
    {
      if (v120 >= *(v116 + 16))
      {
        goto LABEL_125;
      }

      v121 = (*(v212 + 80) + 32) & ~*(v212 + 80);
      v122 = v119;
      v123 = *(v212 + 72);
      sub_24AB7C43C(v116 + v121 + v123 * v120, v122, type metadata accessor for FileMetadata);
      if (sub_24AB87A7C())
      {

        v161 = sub_24ABABD6C();
        v162 = sub_24ABAC0FC();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v225 = v164;
          *v163 = v194;
          v165 = *(v2 + 16);
          v166 = *(v2 + 24);
          v167 = sub_24ABABE8C();
          v168 = [v167 fp_prettyPath];

          v169 = sub_24ABABEBC();
          v171 = v170;

          v172 = sub_24AB760CC(v169, v171, &v225);

          *(v163 + 4) = v172;
          _os_log_impl(&dword_24AB6F000, v161, v162, "%s: force stopping mid-step", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v164);
          MEMORY[0x24C229EC0](v164, -1, -1);
          MEMORY[0x24C229EC0](v163, -1, -1);
        }

        else
        {
        }

        sub_24AB7786C(v217, type metadata accessor for FileMetadata);
        return;
      }

      sub_24AB778E0(v122 + v218[21], v11);
      v124 = v215;
      if ((*v210)(v11, 1, v215) == 1)
      {
        sub_24AB7C4A4(v11, &qword_27EF95B00, &qword_24ABAED70);
        v125 = v220;
      }

      else
      {
        v126 = *v203;
        (*v203)(v211, v11, v124);
        if (sub_24AB7980C())
        {

          v173 = *v217;
          v174 = v197;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v174 = sub_24ABA1408(0, *(v174 + 2) + 1, 1, v174);
          }

          v175 = v201;
          v176 = v211;
          v197 = v174;
          v178 = *(v174 + 2);
          v177 = *(v174 + 3);
          if (v178 >= v177 >> 1)
          {
            v197 = sub_24ABA1408((v177 > 1), v178 + 1, 1, v197);
          }

          v179 = v197;
          *(v197 + 2) = v178 + 1;
          *&v179[8 * v178 + 32] = v173;
          (*v195)(v175, v176, v215);
          v180 = sub_24ABA13E0(0, 1, 1, MEMORY[0x277D84F90]);
          v182 = *(v180 + 2);
          v181 = *(v180 + 3);
          if (v182 >= v181 >> 1)
          {
            v180 = sub_24ABA13E0(v181 > 1, v182 + 1, 1, v180);
          }

          v183 = v208;
          v184 = v215;
          (*(v208 + 8))(v176, v215);
          *(v180 + 2) = v182 + 1;
          v126(&v180[((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v182], v175, v184);
          sub_24AB7786C(v217, type metadata accessor for FileMetadata);
          return;
        }

        if (sub_24AB82004())
        {
          *(v217 + v218[16]) = 1;
        }

        v127 = v211;
        sub_24ABABBEC();
        sub_24AB821B8();
        v129 = v128;

        v125 = v220;
        if (v129)
        {
          v146 = v200;
          v147 = v215;
          (*v195)(v200, v127, v215);
          v148 = sub_24ABABD6C();
          v149 = sub_24ABAC10C();
          v150 = os_log_type_enabled(v148, v149);
          v11 = v221;
          if (v150)
          {
            v151 = swift_slowAlloc();
            v191 = v151;
            v193 = swift_slowAlloc();
            v225 = v193;
            *v151 = v194;
            v192 = v148;
            v190 = sub_24ABABBEC();
            v153 = v152;
            v154 = *v202;
            (*v202)(v146, v147);
            v155 = sub_24AB760CC(v190, v153, &v225);

            v156 = v191;
            *(v191 + 1) = v155;
            v157 = v192;
            _os_log_impl(&dword_24AB6F000, v192, v149, "found ignored path while listing, %s", v156, 0xCu);
            v158 = v193;
            __swift_destroy_boxed_opaque_existential_0Tm(v193);
            MEMORY[0x24C229EC0](v158, -1, -1);
            MEMORY[0x24C229EC0](v156, -1, -1);
          }

          else
          {

            v154 = *v202;
            (*v202)(v146, v147);
          }

          v142 = *v217;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v197 = sub_24ABA1408(0, *(v197 + 2) + 1, 1, v197);
          }

          v144 = *(v197 + 2);
          v159 = *(v197 + 3);
          v145 = v144 + 1;
          if (v144 >= v159 >> 1)
          {
            v197 = sub_24ABA1408((v159 > 1), v144 + 1, 1, v197);
          }

          (v154)(v211);
LABEL_100:
          v160 = v197;
          *(v197 + 2) = v145;
          *&v160[8 * v144 + 32] = v142;
          v119 = v217;
          sub_24AB7786C(v217, type metadata accessor for FileMetadata);
          v118 = v120 + 1;
          v116 = v219;
          if (v196 != v120)
          {
            goto LABEL_67;
          }

          goto LABEL_106;
        }

        (*v202)(v127, v215);
        v11 = v221;
      }

      if (*(v217 + v218[15]) == 1)
      {
        v142 = *v217;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = sub_24ABA1408(0, *(v197 + 2) + 1, 1, v197);
        }

        v144 = *(v197 + 2);
        v143 = *(v197 + 3);
        v145 = v144 + 1;
        if (v144 >= v143 >> 1)
        {
          v197 = sub_24ABA1408((v143 > 1), v144 + 1, 1, v197);
        }

        goto LABEL_100;
      }

      sub_24AB7C43C(v217, v216, type metadata accessor for FileMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_24ABA13B8(0, v125[2] + 1, 1, v125);
      }

      v131 = v125[2];
      v130 = v125[3];
      if (v131 >= v130 >> 1)
      {
        v125 = sub_24ABA13B8(v130 > 1, v131 + 1, 1, v125);
      }

      v125[2] = v131 + 1;
      sub_24AB795F4(v216, v125 + v121 + v131 * v123);
      v119 = v217;
      if (*(v217 + 48) == 2)
      {
        v133 = *(v2 + 16);
        v132 = *(v2 + 24);

        v134 = sub_24ABABE8C();

        v135 = *(v119 + 8);
        v136 = *(v119 + 16);
        v137 = sub_24ABABE8C();
        v138 = [v134 stringByAppendingPathComponent_];

        v139 = sub_24ABABEBC();
        v141 = v140;

        if ((*(v119 + v218[16]) & 1) == 0 && (sub_24AB825B4(v139, v141) & 1) == 0)
        {

          (*(v204 + 104))(v207, *MEMORY[0x277CC91C0], v206);
          (*(v208 + 56))(v205, 1, 1, v215);
          v185 = v199;
          sub_24ABABBFC();
          v186 = sub_24ABA13E0(0, 1, 1, MEMORY[0x277D84F90]);
          v188 = v186[2];
          v187 = v186[3];
          if (v188 >= v187 >> 1)
          {
            v186 = sub_24ABA13E0(v187 > 1, v188 + 1, 1, v186);
          }

          v189 = v186;

          v189[2] = v188 + 1;
          (*(v208 + 32))(v189 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v188, v185, v215);
          sub_24AB7786C(v217, type metadata accessor for FileMetadata);
          return;
        }
      }

      v220 = v125;
      ++v120;
      sub_24AB7786C(v119, type metadata accessor for FileMetadata);
      v116 = v219;
      if (v209 == v120)
      {
        goto LABEL_106;
      }
    }
  }

  v197 = MEMORY[0x277D84F90];
  v220 = MEMORY[0x277D84F90];
LABEL_106:
}

void sub_24AB7B44C()
{
  sub_24AB7B518();
  if (v0 <= 0x3F)
  {
    sub_24AB7B560(319, &qword_27EF95568);
    if (v1 <= 0x3F)
    {
      sub_24AB7B560(319, &qword_27EF95570);
      if (v2 <= 0x3F)
      {
        sub_24AB7B560(319, &unk_27EF95578);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24AB7B518()
{
  if (!qword_27EF95560)
  {
    v0 = sub_24ABABA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95560);
    }
  }
}

void sub_24AB7B560(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_24AB7B5CC(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ListerStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListerStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListerStatus.ListingCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ListerStatus.ListingCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectoryLister.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DirectoryLister.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AB7B9F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AB7BA18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_24AB7BB3C()
{
  result = qword_27EF955B0;
  if (!qword_27EF955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955B0);
  }

  return result;
}

unint64_t sub_24AB7BB94()
{
  result = qword_27EF955B8;
  if (!qword_27EF955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955B8);
  }

  return result;
}

unint64_t sub_24AB7BBEC()
{
  result = qword_27EF955C0;
  if (!qword_27EF955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955C0);
  }

  return result;
}

unint64_t sub_24AB7BC44()
{
  result = qword_27EF955C8;
  if (!qword_27EF955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955C8);
  }

  return result;
}

unint64_t sub_24AB7BE64()
{
  result = qword_27EF95600;
  if (!qword_27EF95600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95600);
  }

  return result;
}

unint64_t sub_24AB7BEBC()
{
  result = qword_27EF95608;
  if (!qword_27EF95608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95608);
  }

  return result;
}

unint64_t sub_24AB7BF14()
{
  result = qword_27EF95610;
  if (!qword_27EF95610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95610);
  }

  return result;
}

unint64_t sub_24AB7BF6C()
{
  result = qword_27EF95618;
  if (!qword_27EF95618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95618);
  }

  return result;
}

unint64_t sub_24AB7BFC4()
{
  result = qword_27EF95620;
  if (!qword_27EF95620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95620);
  }

  return result;
}

unint64_t sub_24AB7C01C()
{
  result = qword_27EF95628;
  if (!qword_27EF95628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95628);
  }

  return result;
}

unint64_t sub_24AB7C074()
{
  result = qword_27EF95630;
  if (!qword_27EF95630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95630);
  }

  return result;
}

unint64_t sub_24AB7C0CC()
{
  result = qword_27EF95638;
  if (!qword_27EF95638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95638);
  }

  return result;
}

unint64_t sub_24AB7C124()
{
  result = qword_27EF95640;
  if (!qword_27EF95640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95640);
  }

  return result;
}

unint64_t sub_24AB7C17C()
{
  result = qword_27EF95648;
  if (!qword_27EF95648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95648);
  }

  return result;
}

unint64_t sub_24AB7C1D4()
{
  result = qword_27EF95650;
  if (!qword_27EF95650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95650);
  }

  return result;
}

unint64_t sub_24AB7C22C()
{
  result = qword_27EF95658;
  if (!qword_27EF95658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95658);
  }

  return result;
}

uint64_t sub_24AB7C280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255746F6F72 && a2 == 0xE700000000000000;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xEB00000000736569 || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

unint64_t sub_24AB7C3E8()
{
  result = qword_27EF95668;
  if (!qword_27EF95668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95668);
  }

  return result;
}

uint64_t sub_24AB7C43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB7C4A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for FIRoot.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FIRoot.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AB7C660()
{
  result = qword_27EF956B0;
  if (!qword_27EF956B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF956B0);
  }

  return result;
}

unint64_t sub_24AB7C6B8()
{
  result = qword_27EF956B8;
  if (!qword_27EF956B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF956B8);
  }

  return result;
}

unint64_t sub_24AB7C710()
{
  result = qword_27EF956C0;
  if (!qword_27EF956C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF956C0);
  }

  return result;
}

uint64_t sub_24AB7C7D4(char *a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24ABABC0C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_url;
  v52 = v9;
  v53 = v8;
  v10 = *(v9 + 16);
  v54 = v1;
  v10(v1 + OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_url, a1);
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_24ABABBEC();
  v13 = sub_24ABABE8C();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
LABEL_4:
    sub_24ABABBAC();
    v20 = [v11 defaultManager];
    sub_24ABABBEC();
    v21 = sub_24ABABE8C();

    v22 = [v20 fileExistsAtPath_];

    if (v22)
    {
      v23 = v51;
      v24 = sub_24AB7CD08();
      v25 = v23;
      if (v23)
      {
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v26 = sub_24ABABD8C();
        __swift_project_value_buffer(v26, qword_27EF95FD8);
        v27 = v23;
        v28 = sub_24ABABD6C();
        v29 = sub_24ABAC11C();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          v32 = v23;
          v33 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v33;
          *v31 = v33;
          _os_log_impl(&dword_24AB6F000, v28, v29, "Failed to load indexing state from disk: %@", v30, 0xCu);
          sub_24AB7C4A4(v31, &unk_27EF953F0, &unk_24ABAD6A0);
          MEMORY[0x24C229EC0](v31, -1, -1);
          v34 = v30;
          v25 = v23;
          MEMORY[0x24C229EC0](v34, -1, -1);
        }

        v35 = sub_24AB7F7A0(MEMORY[0x277D84F90]);
        v36 = a1;
        goto LABEL_15;
      }

      v35 = v24;
    }

    else
    {
      v37 = [v11 defaultManager];
      sub_24ABABBEC();
      v38 = sub_24ABABE8C();

      [v37 createFileAtPath:v38 contents:0 attributes:0];

      v35 = sub_24AB7F7A0(MEMORY[0x277D84F90]);
    }

    v36 = a1;
LABEL_15:
    v48 = v53;
    v49 = *(v52 + 8);
    v49(v36, v53);
    v49(v6, v48);
    result = v54;
    *(v54 + OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state) = v35;
    goto LABEL_16;
  }

  v15 = [v11 defaultManager];
  v16 = sub_24ABABB9C();
  v55[0] = 0;
  v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v55];

  v18 = a1;
  if (v17)
  {
    v19 = v55[0];
    goto LABEL_4;
  }

  v39 = v55[0];
  sub_24ABABB5C();

  swift_willThrow();
  v40 = *(v52 + 8);
  v41 = v18;
  v42 = v53;
  v40(v41, v53);
  v43 = (v54 + v7);
  v44 = v54;
  v40(v43, v42);
  type metadata accessor for DiskIndexingStateHandler(0);
  v45 = *(*v44 + 48);
  v46 = *(*v44 + 52);
  swift_deallocPartialClassInstance();
  result = v44;
LABEL_16:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_24AB7CD08()
{
  v1 = [objc_opt_self() defaultManager];
  sub_24ABABBEC();
  v2 = sub_24ABABE8C();

  v3 = [v1 contentsAtPath_];

  if (v3)
  {
    v4 = sub_24ABABC4C();
    v6 = v5;

    v7 = sub_24ABABA5C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_24ABABA4C();
    sub_24AB80230();
    sub_24ABABA3C();
    sub_24AB77A9C(v4, v6);

    if (!v0)
    {
      return v15;
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v11 = sub_24ABABD8C();
    __swift_project_value_buffer(v11, qword_27EF95FD8);
    v12 = sub_24ABABD6C();
    v13 = sub_24ABAC11C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AB6F000, v12, v13, "Loading indexing state from disk failed, empty load result", v14, 2u);
      MEMORY[0x24C229EC0](v14, -1, -1);
    }

    return sub_24AB7F7A0(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_24AB7CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v10 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state;
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_7;
  }

  v20 = sub_24AB7E4CC(a2, a3);
  if ((v21 & 1) == 0)
  {

LABEL_7:
    v22 = 1;
    goto LABEL_8;
  }

  sub_24AB7FBF4(*(v19 + 56) + *(v11 + 72) * v20, v15, type metadata accessor for IndexingStateHandlerState.StatePair);

  sub_24AB8064C(v15, v17, type metadata accessor for IndexingStateHandlerState.StatePair);
  if ((sub_24AB7FA30(v26, v27, *v17, *(v17 + 1)) & 1) == 0)
  {
    sub_24AB7FB98(v17);
    goto LABEL_7;
  }

  sub_24AB7FBF4(&v17[*(v10 + 20)], a6, type metadata accessor for IndexingState);
  sub_24AB7FB98(v17);
  v22 = 0;
LABEL_8:
  v23 = type metadata accessor for IndexingState();
  return (*(*(v23 - 8) + 56))(a6, v22, 1, v23);
}

uint64_t sub_24AB7D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v39 = sub_24ABABC0C();
  v35 = *(v39 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v39);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957F0, &unk_24ABAE558);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v34 - v17);
  v37 = v6;
  v36 = v6;
  sub_24ABABD1C();
  v19 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  sub_24AB7FBF4(a3, v18 + *(v19 + 20), type metadata accessor for IndexingState);
  *v18 = a4;
  v18[1] = a5;
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v20 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state;
  swift_beginAccess();

  sub_24AB7FC5C(a4, a5);
  sub_24AB7D588(v18, a1, a2);
  swift_endAccess();
  sub_24ABABBAC();
  v21 = sub_24ABABA8C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_24ABABA7C();
  v38 = *(v6 + v20);
  sub_24AB80178();

  v24 = v34;
  v25 = sub_24ABABA6C();
  if (v24)
  {

    v27 = (*(v35 + 8))(v14, v39);
  }

  else
  {
    v28 = v25;
    v29 = v26;
    v30 = v35;
    v31 = v39;

    sub_24ABABC5C();
    (*(v30 + 8))(v14, v31);
    v27 = sub_24AB77A9C(v28, v29);
  }

  v32 = MEMORY[0x28223BE20](v27);
  *(&v34 - 2) = v6;
  MEMORY[0x28223BE20](v32);
  *(&v34 - 2) = v6;
  return sub_24ABABD1C();
}

uint64_t sub_24AB7D588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957F0, &unk_24ABAE558);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24AB7C4A4(a1, &qword_27EF957F0, &unk_24ABAE558);
    sub_24AB7EC60(a2, a3, v10);

    return sub_24AB7C4A4(v10, &qword_27EF957F0, &unk_24ABAE558);
  }

  else
  {
    sub_24AB8064C(a1, v14, type metadata accessor for IndexingStateHandlerState.StatePair);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AB7F330(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24AB7D75C()
{
  v1 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_url;
  v2 = sub_24ABABC0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24AB7D830()
{
  result = sub_24ABABC0C();
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

uint64_t sub_24AB7D8DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95850, &qword_24ABAE6E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB805A4();
  sub_24ABAC67C();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_24AB7FC5C(v15, v11);
  sub_24AB806B4();
  sub_24ABAC52C();
  sub_24AB77A9C(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for IndexingStateHandlerState.StatePair(0) + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for IndexingState();
    sub_24AB80080(&qword_27EF95860, type metadata accessor for IndexingState);
    sub_24ABAC52C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24AB7DAB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for IndexingState();
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95830, &qword_24ABAE6D8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB805A4();
  sub_24ABAC66C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v20 = v10;
  v15 = v22;
  v16 = v13;
  v26 = 0;
  sub_24AB805F8();
  v17 = v24;
  sub_24ABAC48C();
  *v16 = v25;
  LOBYTE(v25) = 1;
  sub_24AB80080(&qword_27EF95848, type metadata accessor for IndexingState);
  sub_24ABAC48C();
  (*(v15 + 8))(v9, v17);
  sub_24AB8064C(v6, v16 + *(v20 + 20), type metadata accessor for IndexingState);
  sub_24AB7FBF4(v16, v21, type metadata accessor for IndexingStateHandlerState.StatePair);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_24AB7FB98(v16);
}

uint64_t sub_24AB7DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *v5;
  sub_24ABABD1C();
  v13 = sub_24AB7CEEC(v12, a1, a2, a3, a4, a5);
  if (v6)
  {

    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);
    result = sub_24ABABD1C();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);
    return sub_24ABABD1C();
  }

  return result;
}

uint64_t sub_24AB7DFF4()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_24AB7E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24ABAC58C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ABAC58C();

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

uint64_t sub_24AB7E11C(uint64_t a1)
{
  v2 = sub_24AB805A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB7E158(uint64_t a1)
{
  v2 = sub_24AB805A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB7E1C4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D8, &qword_24ABAE550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7FE44();
  sub_24ABAC67C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957B0, &qword_24ABAE538);
  sub_24AB7FFC4();
  sub_24ABAC52C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24AB7E33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D656C646E7562 && a2 == 0xE900000000000070)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24ABAC58C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AB7E3CC(uint64_t a1)
{
  v2 = sub_24AB7FE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB7E408(uint64_t a1)
{
  v2 = sub_24AB7FE44();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24AB7E444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_24AB7FCB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_24AB7E4CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24ABAC62C();
  sub_24ABABEFC();
  v6 = sub_24ABAC64C();

  return sub_24AB7E61C(a1, a2, v6);
}

unint64_t sub_24AB7E544(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24ABABEBC();
  sub_24ABAC62C();
  sub_24ABABEFC();
  v4 = sub_24ABAC64C();

  return sub_24AB7E6D4(a1, v4);
}

unint64_t sub_24AB7E5D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24ABAC2AC();

  return sub_24AB7E7D8(a1, v5);
}

unint64_t sub_24AB7E61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24ABAC58C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AB7E6D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24ABABEBC();
      v9 = v8;
      if (v7 == sub_24ABABEBC() && v9 == v10)
      {
        break;
      }

      v12 = sub_24ABAC58C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24AB7E7D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24AB800C8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C229240](v9, a1);
      sub_24AB80124(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_24AB7E8A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24ABABAAC();
    if (v10)
    {
      v11 = sub_24ABABACC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24ABABABC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24ABABAAC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24ABABACC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24ABABABC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24AB7EAD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24AB7F978(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24AB77A9C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_24AB7E8A0(v14, a3, a4, &v13);
  v10 = v4;
  sub_24AB77A9C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_24AB7EC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24AB7E4CC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AB7F540();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
    v22 = *(v15 - 8);
    sub_24AB8064C(v14 + *(v22 + 72) * v9, a3, type metadata accessor for IndexingStateHandlerState.StatePair);
    sub_24AB7F144(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24AB7EDCC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D0, &qword_24ABAE548);
  v44 = a2;
  result = sub_24ABAC3FC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24AB8064C(v31, v45, type metadata accessor for IndexingStateHandlerState.StatePair);
      }

      else
      {
        sub_24AB7FBF4(v31, v45, type metadata accessor for IndexingStateHandlerState.StatePair);
      }

      v32 = *(v12 + 40);
      sub_24ABAC62C();
      sub_24ABABEFC();
      result = sub_24ABAC64C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24AB8064C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for IndexingStateHandlerState.StatePair);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_24AB7F144(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24ABAC29C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24ABAC62C();

      sub_24ABABEFC();
      v13 = sub_24ABAC64C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for IndexingStateHandlerState.StatePair(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AB7F330(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24AB7E4CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24AB7F540();
      goto LABEL_7;
    }

    sub_24AB7EDCC(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_24AB7E4CC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24ABAC5BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for IndexingStateHandlerState.StatePair(0) - 8) + 72) * v12;

    return sub_24AB801CC(a1, v20);
  }

LABEL_13:
  sub_24AB7F494(v12, a2, a3, a1, v18);
}

uint64_t sub_24AB7F494(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  result = sub_24AB8064C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for IndexingStateHandlerState.StatePair);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_24AB7F540()
{
  v1 = v0;
  v2 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D0, &qword_24ABAE548);
  v5 = *v0;
  v6 = sub_24ABAC3EC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_24AB7FBF4(v22 + v28, v33, type metadata accessor for IndexingStateHandlerState.StatePair);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_24AB8064C(v27, *(v29 + 56) + v28, type metadata accessor for IndexingStateHandlerState.StatePair);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_24AB7F7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957C8, &qword_24ABAE540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D0, &qword_24ABAE548);
    v8 = sub_24ABAC40C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AB7FF54(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_24AB7E4CC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
      result = sub_24AB8064C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for IndexingStateHandlerState.StatePair);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AB7F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24ABABAAC();
  v11 = result;
  if (result)
  {
    result = sub_24ABABACC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24ABABABC();
  sub_24AB7E8A0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24AB7FA30(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24AB7FC5C(a3, a4);
          return sub_24AB7EAD0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24AB7FB98(uint64_t a1)
{
  v2 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AB7FBF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB7FC5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_24AB7FCB0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957A0, &qword_24ABAE530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_24AB7F7A0(MEMORY[0x277D84F90]);

  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7FE44();
  sub_24ABAC66C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957B0, &qword_24ABAE538);
    sub_24AB7FE98();
    sub_24ABAC48C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

unint64_t sub_24AB7FE44()
{
  result = qword_27EF957A8;
  if (!qword_27EF957A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957A8);
  }

  return result;
}

unint64_t sub_24AB7FE98()
{
  result = qword_27EF957B8;
  if (!qword_27EF957B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF957B0, &qword_24ABAE538);
    sub_24AB80080(&qword_27EF957C0, type metadata accessor for IndexingStateHandlerState.StatePair);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957B8);
  }

  return result;
}

uint64_t sub_24AB7FF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957C8, &qword_24ABAE540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AB7FFC4()
{
  result = qword_27EF957E0;
  if (!qword_27EF957E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF957B0, &qword_24ABAE538);
    sub_24AB80080(&qword_27EF957E8, type metadata accessor for IndexingStateHandlerState.StatePair);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957E0);
  }

  return result;
}

uint64_t sub_24AB80080(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AB80178()
{
  result = qword_27EF957F8;
  if (!qword_27EF957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957F8);
  }

  return result;
}

uint64_t sub_24AB801CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AB80230()
{
  result = qword_27EF95800;
  if (!qword_27EF95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95800);
  }

  return result;
}

uint64_t sub_24AB802A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for IndexingState();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AB80374(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for IndexingState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AB80420()
{
  result = type metadata accessor for IndexingState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24AB804A0()
{
  result = qword_27EF95818;
  if (!qword_27EF95818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95818);
  }

  return result;
}

unint64_t sub_24AB804F8()
{
  result = qword_27EF95820;
  if (!qword_27EF95820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95820);
  }

  return result;
}

unint64_t sub_24AB80550()
{
  result = qword_27EF95828;
  if (!qword_27EF95828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95828);
  }

  return result;
}

unint64_t sub_24AB805A4()
{
  result = qword_27EF95838;
  if (!qword_27EF95838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95838);
  }

  return result;
}

unint64_t sub_24AB805F8()
{
  result = qword_27EF95840;
  if (!qword_27EF95840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95840);
  }

  return result;
}

uint64_t sub_24AB8064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24AB806B4()
{
  result = qword_27EF95858;
  if (!qword_27EF95858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IndexingStateHandlerState.StatePair.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IndexingStateHandlerState.StatePair.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AB80868()
{
  result = qword_27EF95868;
  if (!qword_27EF95868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95868);
  }

  return result;
}

unint64_t sub_24AB808C0()
{
  result = qword_27EF95870;
  if (!qword_27EF95870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95870);
  }

  return result;
}

unint64_t sub_24AB80918()
{
  result = qword_27EF95878;
  if (!qword_27EF95878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95878);
  }

  return result;
}

void sub_24AB809F8(id a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v10 = sub_24ABABD8C();
    __swift_project_value_buffer(v10, qword_27EF95FD8);
    v11 = a1;
    v12 = sub_24ABABD6C();
    v13 = sub_24ABAC11C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_getErrorValue();
      v16 = sub_24ABAC5CC();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_24AB6F000, v12, v13, "Error donating items: %@", v14, 0xCu);
      sub_24AB7C4A4(v15, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v15, -1, -1);
      MEMORY[0x24C229EC0](v14, -1, -1);
    }

    a2();
  }

  else
  {
    v20 = *(a4 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler + 24);
    v21 = *(a4 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler + 32);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler), v20);
    v22 = (*(v21 + 16))(0xD000000000000023, 0x800000024ABAF7E0, a5, a6, a7, v20, v21);
    (a2)(v22);
  }
}

id sub_24AB80F9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileIndexerSpotlightDaemonClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AB81074()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_24ABA5734();
  if ((v0 & 1) == 0)
  {
    fpfs_fsgetpath();
    free(0);
  }

  result = 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB8118C(uint64_t a1, char *a2, void (**a3)(void))
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B60, "\b.");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v63 - v8;
  v75 = type metadata accessor for FileMetadata();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v75);
  v74 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v73 = &v63 - v14;
  v15 = sub_24ABABD0C();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IndexingState();
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v68 = v21;
  v69 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = &v63 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  v24 = *(a1 + 16);
  v76 = a2;
  v77 = v23;
  v63 = a3;
  if (v24)
  {
    v25 = &a2[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_metadataHandler];
    v72 = OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher;
    _Block_copy(a3);
    v71 = v10;
    v26 = (v10 + 48);
    v27 = (a1 + 40);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = *(v27 - 1);
      v30 = *v27;

      v31 = sub_24ABA5734();
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        v34 = *(v25 + 3);
        v35 = *(v25 + 4);
        __swift_project_boxed_opaque_existential_1(v25, v34);
        (*(v35 + 8))(v31, *(*&v76[v72] + 16), v34, v35);
        if ((*v26)(v9, 1, v75) == 1)
        {
          sub_24AB7C4A4(v9, &qword_27EF95B60, "\b.");
        }

        else
        {
          v36 = v73;
          sub_24AB81E6C(v9, v73, type metadata accessor for FileMetadata);
          sub_24AB81ED4(v36, v74, type metadata accessor for FileMetadata);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24ABA13B8(0, v28[2] + 1, 1, v28);
          }

          v38 = v28[2];
          v37 = v28[3];
          if (v38 >= v37 >> 1)
          {
            v28 = sub_24ABA13B8(v37 > 1, v38 + 1, 1, v28);
          }

          sub_24AB81F3C(v73, type metadata accessor for FileMetadata);
          v28[2] = v38 + 1;
          sub_24AB81E6C(v74, v28 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v38, type metadata accessor for FileMetadata);
        }
      }

      v27 += 2;
      --v24;
    }

    while (v24);
  }

  else
  {
    _Block_copy(a3);
    v28 = MEMORY[0x277D84F90];
  }

  if (v28[2])
  {
    v39 = v76;
    v40 = *&v76[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher] + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState;
    v41 = *v40;
    v42 = *(v40 + 8);

    v44 = v70;
    v41(v43);

    v45 = v64;
    sub_24ABABCFC();
    v46 = sub_24ABABCEC();
    v48 = v47;
    (*(v65 + 8))(v45, v66);
    v78[0] = v46;
    v78[1] = v48;
    v49 = sub_24AB82948(v78, &v79);
    v51 = v50;
    v52 = *&v39[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler + 32];
    v75 = *&v39[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler + 24];
    v74 = __swift_project_boxed_opaque_existential_1(&v39[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler], v75);
    v53 = v69;
    sub_24AB81ED4(v44, v69, type metadata accessor for IndexingState);
    v54 = (*(v67 + 80) + 40) & ~*(v67 + 80);
    v55 = (v68 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v77;
    v56[2] = sub_24AB81C44;
    v56[3] = v57;
    v56[4] = v39;
    sub_24AB81E6C(v53, v56 + v54, type metadata accessor for IndexingState);
    v58 = (v56 + v55);
    *v58 = v49;
    v58[1] = v51;
    v59 = *(v52 + 8);

    v60 = v39;
    sub_24AB7FC5C(v49, v51);
    v59(v28, MEMORY[0x277D84F90], v49, v51, sub_24AB81DC4, v56, v75, v52);

    sub_24AB77A9C(v49, v51);
    sub_24AB81F3C(v70, type metadata accessor for IndexingState);
  }

  else
  {

    v63[2]();
  }

  v62 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB81820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = sub_24ABABC0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(a3 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher) + 16);
  sub_24AB81074();
  if (v24)
  {
    sub_24ABABB8C();

    (*(v19 + 16))(v17, v22, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_24AB778E0(v17, v15);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_24ABABB9C();
      (*(v19 + 8))(v15, v18);
    }

    (*(v32 + 16))(v32, v25, 0);

    sub_24AB7C4A4(v17, &qword_27EF95B00, &qword_24ABAED70);
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    (*(v19 + 56))(v12, 1, 1, v18);
    sub_24AB81BB8();
    v26 = swift_allocError();
    *v27 = 1;
    sub_24AB778E0(v12, v9);
    v28 = 0;
    if ((*(v19 + 48))(v9, 1, v18) != 1)
    {
      v28 = sub_24ABABB9C();
      (*(v19 + 8))(v9, v18);
    }

    v29 = sub_24ABABB4C();
    (*(v32 + 16))(v32, v28, v29);

    return sub_24AB7C4A4(v12, &qword_27EF95B00, &qword_24ABAED70);
  }
}

unint64_t sub_24AB81BB8()
{
  result = qword_27EF95908;
  if (!qword_27EF95908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95908);
  }

  return result;
}

uint64_t sub_24AB81C0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB81C54()
{
  v1 = *(type metadata accessor for IndexingState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = type metadata accessor for FIRoot.State(0);
  v8 = v7[5];
  v9 = sub_24ABABD0C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v6 + v7[6]);

  v13 = *(v6 + v7[7]);

  sub_24AB77A9C(*(v0 + v11), *(v0 + v11 + 8));

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

void sub_24AB81DC4(void *a1)
{
  v3 = *(type metadata accessor for IndexingState() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  sub_24AB809F8(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_24AB81E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB81ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB81F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AB81FB0()
{
  result = qword_27EF95910;
  if (!qword_27EF95910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95910);
  }

  return result;
}

uint64_t sub_24AB82004()
{
  v0 = sub_24ABABB9C();
  v1 = sub_24ABABB9C();
  v2 = [v0 fp:v1 relativePathWithRealpath:?];

  if (v2)
  {
    v3 = [v2 pathComponents];
    v4 = sub_24ABABFFC();

    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = [v2 pathComponents];
      v7 = sub_24ABABFFC();

      if (v7[2])
      {
        v9 = v7[4];
        v8 = v7[5];

        v10 = [v2 pathComponents];
        v11 = sub_24ABABFFC();

        v12 = *(v11 + 16);

        if (v12 >= 2)
        {
          if (v9 == 0x68736172542ELL && v8 == 0xE600000000000000)
          {

            v13 = 1;
          }

          else
          {
            v13 = sub_24ABAC58C();
          }

          goto LABEL_11;
        }
      }
    }

    v13 = 0;
LABEL_11:

    return v13 & 1;
  }

  v13 = 0;
  return v13 & 1;
}

void sub_24AB821B8()
{
  v0 = sub_24ABABB6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_24ABABC0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);

  sub_24ABABBFC();
  v14 = sub_24ABABB9C();
  v15 = sub_24ABABB9C();
  v16 = [v14 fp:v15 relativePathWithRealpath:?];

  if (v16)
  {
    v17 = [v16 pathComponents];
    v18 = sub_24ABABFFC();

    v19 = *(v18 + 16);

    if (v19)
    {
      v20 = [v16 pathComponents];
      v21 = sub_24ABABFFC();

      v22 = v21[2];
      if (v22)
      {
        v24 = v21[4];
        v23 = v21[5];
        v25 = v24 == 0x68736172542ELL && v23 == 0xE600000000000000;
        if (v25 || (v26 = v21[4], v27 = v21[5], (sub_24ABAC58C())) && (v22 == 1 || v22 >= 3))
        {
          (*(v10 + 8))(v13, v9);
        }

        else
        {

          if (v24 == 0x786F626E49 && v23 == 0xE500000000000000)
          {

            (*(v10 + 8))(v13, v9);
          }

          else
          {
            sub_24ABAC58C();

            (*(v10 + 8))(v13, v9);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    (*(v10 + 8))(v13, v9);
  }
}

id sub_24AB825B4(uint64_t a1, unint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24ABABC0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABABB8C();
  v9 = sub_24ABABB9C();
  (*(v5 + 8))(v8, v4);
  v10 = *MEMORY[0x277CBE890];
  v29 = 0;
  v30[0] = 0;
  LODWORD(v4) = [v9 getResourceValue:v30 forKey:v10 error:&v29];
  v11 = v30[0];
  v12 = v29;
  if (!v4)
  {
    v16 = v12;
    swift_unknownObjectRetain();
    v17 = sub_24ABABB5C();

    swift_willThrow();
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v18 = sub_24ABABD8C();
    __swift_project_value_buffer(v18, qword_27EF95FD8);

    v19 = v17;
    v20 = sub_24ABABD6C();
    v21 = sub_24ABAC11C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_24AB760CC(a1, a2, v30);
      *(v22 + 12) = 2112;
      v25 = v17;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_24AB6F000, v20, v21, "isPackage(%s) failed %@", v22, 0x16u);
      sub_24AB7C4A4(v23, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x24C229EC0](v24, -1, -1);
      MEMORY[0x24C229EC0](v22, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    goto LABEL_12;
  }

  if (!v11)
  {

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  swift_unknownObjectRetain_n();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    swift_unknownObjectRelease_n();
    goto LABEL_12;
  }

  v14 = [v13 BOOLValue];
  swift_unknownObjectRelease_n();

  result = v14;
LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_24AB82948(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_24AB90AE4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_24AB90C28(v3, v4);
    }

    else
    {
      v6 = sub_24AB90BA4(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_24AB82A04@<X0>(dev_t a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = FSEventsCopyUUIDForDevice(a1);
  if (v8)
  {
    v9 = v8;
    v10 = CFUUIDCreateString(0, v8);
    if (v10)
    {
      v11 = v10;
      sub_24ABABEBC();
      sub_24ABABCCC();

      v12 = sub_24ABABD0C();
      v13 = *(v12 - 8);
      result = (*(v13 + 48))(v7, 1, v12);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {

        (*(v13 + 32))(a2, v7, v12);
        return (*(v13 + 56))(a2, 0, 1, v12);
      }

      return result;
    }

    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v19 = sub_24ABABD8C();
    __swift_project_value_buffer(v19, qword_27EF95FD8);
    v20 = sub_24ABABD6C();
    v21 = sub_24ABAC11C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = a1;
      _os_log_impl(&dword_24AB6F000, v20, v21, "failed to get UUID string for device %d", v22, 8u);
      MEMORY[0x24C229EC0](v22, -1, -1);
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v15 = sub_24ABABD8C();
    __swift_project_value_buffer(v15, qword_27EF95FD8);
    v16 = sub_24ABABD6C();
    v17 = sub_24ABAC11C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1;
      _os_log_impl(&dword_24AB6F000, v16, v17, "failed to get stream UUID for device %d", v18, 8u);
      MEMORY[0x24C229EC0](v18, -1, -1);
    }
  }

  v23 = sub_24ABABD0C();
  v24 = *(*(v23 - 8) + 56);

  return v24(a2, 1, 1, v23);
}

uint64_t sub_24AB82D58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_24ABABF9C() & 1) == 0)
  {
    return 0;
  }

  if (sub_24AB825B4(a3, a4))
  {

    return a3;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3;
  }

  v9 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = v9 | (v8 << 16);

  sub_24AB90CA4(v10, a1, a2);

  v11 = sub_24ABAC21C();

  v12 = [v11 pathComponents];

  v13 = sub_24ABABFFC();
  v14 = *(v13 + 16);

  v16 = (v13 + 40);
  v17 = -v14;
  v18 = -1;
  while (1)
  {
    if (v17 + v18 == -1)
    {

      return 0;
    }

    if (++v18 >= *(v13 + 16))
    {
      break;
    }

    v19 = v16 + 2;
    v21 = *(v16 - 1);
    v20 = *v16;

    v22 = sub_24ABABE8C();

    v23 = sub_24ABABE8C();

    v24 = [v22 stringByAppendingPathComponent_];

    a3 = sub_24ABABEBC();
    v26 = v25;

    result = sub_24AB825B4(a3, v26);
    v16 = v19;
    if (result)
    {

      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AB82F80()
{
  v1 = v0;
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABABD8C();
  __swift_project_value_buffer(v2, qword_27EF95FD8);

  v3 = sub_24ABABD6C();
  v4 = sub_24ABAC0FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = v1[4];
    v8 = v1[5];

    v9 = sub_24AB760CC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1[3];

    _os_log_impl(&dword_24AB6F000, v3, v4, "begin transaction %s) count %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C229EC0](v6, -1, -1);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  else
  {
  }

  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_24ABABD1C();
  v12 = sub_24AB832C0(v1);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  return sub_24ABABD1C();
}

uint64_t sub_24AB832C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (!v2)
  {
    sub_24ABAC2FC();

    v3 = v1[4];
    v4 = v1[5];

    MEMORY[0x24C228EB0](v3, v4);

    sub_24ABABECC();

    v5 = os_transaction_create();

    v6 = v1[2];
    v1[2] = v5;
    result = swift_unknownObjectRelease();
    v2 = v1[3];
  }

  v7 = __OFADD__(v2, 1);
  v8 = v2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v1[3] = v8;
  }

  return result;
}

uint64_t sub_24AB833A8()
{
  v1 = v0;
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABABD8C();
  __swift_project_value_buffer(v2, qword_27EF95FD8);

  v3 = sub_24ABABD6C();
  v4 = sub_24ABAC0FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = v1[4];
    v8 = v1[5];

    v9 = sub_24AB760CC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1[3];

    _os_log_impl(&dword_24AB6F000, v3, v4, "end transaction %s count %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C229EC0](v6, -1, -1);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  else
  {
  }

  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_24ABABD1C();
  v12 = sub_24AB836E8(v1);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  return sub_24ABABD1C();
}

uint64_t sub_24AB836E8(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    result = sub_24ABABD1C();
    v2 = *(v1 + 24);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 24) = v4;
      if (!v4)
      {
        v5 = *(v1 + 16);
        *(v1 + 16) = 0;
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24AB837A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t ScanStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C616974696E69;
    }

    if (a1 == 1)
    {
      return 0x646575657571;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696E6E7572;
      case 3:
        return 0x646570706F7473;
      case 4:
        return 0x6574656C706D6F63;
    }
  }

  result = sub_24ABAC59C();
  __break(1u);
  return result;
}

uint64_t sub_24AB838EC()
{
  v1 = *v0;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v1);
  return sub_24ABAC64C();
}

uint64_t sub_24AB83960()
{
  v1 = *v0;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v1);
  return sub_24ABAC64C();
}

unint64_t sub_24AB839A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24AB90CF0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24AB839D8()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    switch(v1)
    {
      case 2:
        return 0x676E696E6E7572;
      case 3:
        return 0x646570706F7473;
      case 4:
        return 0x6574656C706D6F63;
    }

    goto LABEL_13;
  }

  if (!v1)
  {
    return 0x6C616974696E69;
  }

  if (v1 != 1)
  {
LABEL_13:
    v3 = *v0;
    result = sub_24ABAC59C();
    __break(1u);
    return result;
  }

  return 0x646575657571;
}

uint64_t RootInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ABABC0C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RootInfo.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for RootInfo(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RootInfo.init(url:bundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24ABABC0C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for RootInfo(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static RootInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_24ABABBBC())
  {
    v4 = *(type metadata accessor for RootInfo(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_24ABAC58C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24AB83C60()
{
  if (*v0)
  {
    result = 0x4449656C646E7562;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_24AB83C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_24ABAC58C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ABAC58C();

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

uint64_t sub_24AB83D70(uint64_t a1)
{
  v2 = sub_24AB90D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB83DAC(uint64_t a1)
{
  v2 = sub_24AB90D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RootInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95920, &qword_24ABAE950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB90D20();
  sub_24ABAC67C();
  v15[15] = 0;
  sub_24ABABC0C();
  sub_24AB90D74(&qword_27EF95500, MEMORY[0x277CC9260]);
  sub_24ABAC52C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for RootInfo(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_24ABAC4EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RootInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_24ABABC0C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95938, &qword_24ABAE958);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RootInfo(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB90D20();
  sub_24ABAC66C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_24AB90D74(&qword_27EF95460, MEMORY[0x277CC9260]);
  v18 = v30;
  sub_24ABAC48C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_24ABAC44C();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_24AB919A0(v23, v22, type metadata accessor for RootInfo);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_24AB91A08(v23, type metadata accessor for RootInfo);
}

uint64_t sub_24AB842FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_24ABABBBC())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_24ABAC58C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24AB843B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AB8, &unk_24ABAED60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB918B0();
  sub_24ABAC67C();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_24ABAC55C();
  if (!v2)
  {
    v12 = type metadata accessor for FIRoot.State(0);
    v13 = v12[5];
    LOBYTE(v16) = 1;
    sub_24ABABD0C();
    sub_24AB90D74(&qword_27EF95AC0, MEMORY[0x277CC95F0]);
    sub_24ABAC4FC();
    v16 = *(v3 + v12[6]);
    HIBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A88, &qword_24ABAED50);
    sub_24AB91A68(&qword_27EF95AC8, &qword_27EF95AD0);
    sub_24ABAC52C();
    v16 = *(v3 + v12[7]);
    HIBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AA0, &qword_24ABAED58);
    sub_24AB91904(&qword_27EF95AD8, &unk_27EF95AE0);
    sub_24ABAC52C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24AB8468C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A70, &qword_24ABAED48);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for FIRoot.State(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v14;
  v17 = *(v14 + 20);
  v18 = sub_24ABABD0C();
  v19 = *(*(v18 - 8) + 56);
  v32 = v17;
  v19(v16 + v17, 1, 1, v18);
  v21 = a1[3];
  v20 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24AB918B0();
  sub_24ABAC66C();
  if (v2)
  {
    v23 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    return sub_24AB7C4A4(v16 + v23, &unk_27EF95A20, &unk_24ABAF3F0);
  }

  else
  {
    LOBYTE(v35) = 0;
    v22 = v30;
    *v16 = sub_24ABAC4BC();
    LOBYTE(v35) = 1;
    sub_24AB90D74(&qword_27EF95A80, MEMORY[0x277CC95F0]);
    sub_24ABAC45C();
    v24 = v31;
    sub_24AB779B0(v7, v16 + v32, &unk_27EF95A20, &unk_24ABAF3F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A88, &qword_24ABAED50);
    v34 = 2;
    sub_24AB91A68(&qword_27EF95A90, &qword_27EF95A98);
    sub_24ABAC48C();
    v25 = v29;
    *(v16 + *(v24 + 24)) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AA0, &qword_24ABAED58);
    v34 = 3;
    sub_24AB91904(&qword_27EF95AA8, &qword_27EF95AB0);
    sub_24ABAC48C();
    (*(v25 + 8))(v11, v22);
    *(v16 + *(v24 + 28)) = v35;
    sub_24AB919A0(v16, v28, type metadata accessor for FIRoot.State);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    return sub_24AB91A08(v16, type metadata accessor for FIRoot.State);
  }
}

uint64_t sub_24AB84B84()
{
  v1 = 0x6E6576457473616CLL;
  v2 = 0x736E616373;
  if (*v0 != 2)
  {
    v2 = 0x73746F6F72;
  }

  if (*v0)
  {
    v1 = 0x55556D6165727473;
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

uint64_t sub_24AB84C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AB91D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AB84C2C(uint64_t a1)
{
  v2 = sub_24AB918B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB84C68(uint64_t a1)
{
  v2 = sub_24AB918B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB84CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for RootInfo(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABABC0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FIRoot.State(0);
  v15 = *(a1 + *(result + 28));
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v24 = a2;
    v25 = v2;
    v29 = MEMORY[0x277D84F90];
    sub_24ABA18DC(0, v16, 0);
    v17 = v29;
    v18 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v19 = *(v6 + 72);
    v26 = v10 + 32;
    v27 = v19;
    do
    {
      v20 = v28;
      sub_24AB919A0(v18, v28, type metadata accessor for RootInfo);
      (*(v10 + 16))(v13, v20, v9);
      sub_24AB91A08(v20, type metadata accessor for RootInfo);
      v29 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_24ABA18DC(v21 > 1, v22 + 1, 1);
        v17 = v29;
      }

      *(v17 + 16) = v22 + 1;
      result = (*(v10 + 32))(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v13, v9);
      v18 += v27;
      --v16;
    }

    while (v16);
    a2 = v24;
  }

  *a2 = v17;
  return result;
}

uint64_t sub_24AB84F5C@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for FIRoot.State(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v3 + 56))(&v18 - v12, 1, 1, v2);
  sub_24AB94828(v13, v11, &qword_27EF95B70, &qword_24ABAF540);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_24AB7C4A4(v11, &qword_27EF95B70, &qword_24ABAF540);
    v14 = v2[5];
    v15 = sub_24ABABD0C();
    (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
    result = sub_24AB7C4A4(v13, &qword_27EF95B70, &qword_24ABAF540);
    *a1 = -1;
    v17 = MEMORY[0x277D84F90];
    *&a1[v2[6]] = MEMORY[0x277D84F90];
    *&a1[v2[7]] = v17;
  }

  else
  {
    sub_24AB7C4A4(v13, &qword_27EF95B70, &qword_24ABAF540);
    sub_24AB91CDC(v11, v6, type metadata accessor for FIRoot.State);
    return sub_24AB91CDC(v6, a1, type metadata accessor for FIRoot.State);
  }

  return result;
}

uint64_t sub_24AB851C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B50, &qword_24ABAEDB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30[-v18];
  v20 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
  swift_beginAccess();
  if (!(*(v16 + 48))(v1 + v20, 1, v15))
  {
    (*(v16 + 16))(v19, v1 + v20, v15);
    v31 = MEMORY[0x277D84F90];
    sub_24ABAC06C();
    (*(v16 + 8))(v19, v15);
  }

  (*(v16 + 56))(v14, 1, 1, v15);
  swift_beginAccess();
  sub_24AB779B0(v14, v1 + v20, &qword_27EF95B50, &qword_24ABAEDB8);
  swift_endAccess();
  v21 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
  swift_beginAccess();
  if (!(*(v7 + 48))(v1 + v21, 1, v6))
  {
    (*(v7 + 16))(v10, v1 + v21, v6);
    v30[8] = 0;
    sub_24ABAC06C();
    (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 56))(v5, 1, 1, v6);
  swift_beginAccess();
  sub_24AB779B0(v5, v1 + v21, &unk_27EF95B30, &unk_24ABAEDA0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 64));

  v22 = *(v1 + 112);

  sub_24AB7C4A4(v1 + v20, &qword_27EF95B50, &qword_24ABAEDB8);
  v23 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction);

  v24 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction);

  v25 = v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  sub_24AB91A08(v25 + *(v26 + 28), type metadata accessor for FIRoot.State);

  sub_24AB7C4A4(v1 + v21, &unk_27EF95B30, &unk_24ABAEDA0);
  v27 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState + 8);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler));
  v28 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning + 8);

  return v1;
}

uint64_t sub_24AB856A8()
{
  sub_24AB851C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_24AB85700(uint64_t a1)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for RootInfo(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  v12 = (v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v48 = v12;
  v14 = (&v12->_os_unfair_lock_opaque + v13);
  sub_24AB919A0(a1, v11, type metadata accessor for RootInfo);
  v15 = type metadata accessor for FIRoot.State(0);
  v16 = *(v15 + 28);
  v17 = *(v14 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v14;
  *(v14 + v16) = v17;
  v45 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_24ABA150C(0, v17[2] + 1, 1, v17);
    *(v49 + v16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_24ABA150C(v19 > 1, v20 + 1, 1, v17);
    *(v49 + v45) = v17;
  }

  v17[2] = v20 + 1;
  sub_24AB91CDC(v11, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, type metadata accessor for RootInfo);
  v47 = *(v50 + 104);
  sub_24ABABBEC();
  v21 = sub_24ABABE8C();

  v22 = v49;
  v46 = *v49;
  sub_24AB94828(v49 + *(v15 + 20), v6, &unk_27EF95A20, &unk_24ABAF3F0);
  v23 = sub_24ABABD0C();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v6, 1, v23) != 1)
  {
    v25 = sub_24ABABCDC();
    (*(v24 + 8))(v6, v23);
  }

  v51[0] = 0x692073746E657665;
  v51[1] = 0xEA0000000000206ELL;
  v26 = a1;
  v27 = sub_24ABABB9C();
  v28 = [v27 fp_shortDescription];

  v29 = sub_24ABABEBC();
  v31 = v30;

  MEMORY[0x24C228EB0](v29, v31);

  v32 = sub_24ABABE8C();

  v33 = [v47 subscribeToEventsAtPath:v21 fd:0xFFFFFFFFLL sinceEventID:v46 streamUUID:v25 ignoreOwnEvents:0 delegate:v50 purpose:v32];

  v34 = v48;
  os_unfair_lock_unlock(v48);
  v51[0] = 0;
  if ([v33 activateWithError_])
  {
    v35 = v51[0];
  }

  else
  {
    v36 = v51[0];
    sub_24ABABB5C();

    swift_willThrow();
    os_unfair_lock_lock(v34);
    MEMORY[0x28223BE20](v37);
    v43 = v26;
    v38 = v45;
    v39 = sub_24ABA1D7C(sub_24AB91D58, (&v44 - 4));
    v40 = *(*(v22 + v38) + 16);
    if (v40 < v39)
    {
      __break(1u);
    }

    sub_24ABA2430(v39, v40);
    os_unfair_lock_unlock(v34);
    swift_willThrow();
  }

  v41 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_24AB85C00(uint64_t a1, uint64_t a2)
{
  if (sub_24ABABBBC())
  {
    v4 = *(type metadata accessor for RootInfo(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_24ABAC58C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24AB85C90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RootInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v18 = v7;
    v19 = a2;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    while (1)
    {
      sub_24AB919A0(v11, v9, type metadata accessor for RootInfo);
      v13 = sub_24ABABB9C();
      v14 = sub_24ABABB9C();
      v15 = [v13 fp:v14 relativePathWithRealpath:?];

      if (v15)
      {
        break;
      }

      sub_24AB91A08(v9, type metadata accessor for RootInfo);
      v11 += v12;
      if (!--v10)
      {
        v16 = 1;
        a2 = v19;
        goto LABEL_8;
      }
    }

    a2 = v19;
    sub_24AB91CDC(v9, v19, type metadata accessor for RootInfo);
    v16 = 0;
LABEL_8:
    v7 = v18;
  }

  else
  {
    v16 = 1;
  }

  return (*(v5 + 56))(a2, v16, 1, v7);
}

void sub_24AB85E60(_DWORD *a1)
{
  v153 = a1;
  v2 = sub_24ABABDFC();
  v144 = *(v2 - 8);
  v145 = v2;
  v3 = *(v144 + 64);
  MEMORY[0x28223BE20](v2);
  v142 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_24ABABE1C();
  v141 = *(v143 - 8);
  v5 = *(v141 + 64);
  MEMORY[0x28223BE20](v143);
  v140 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v147 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v150 = &v130 - v11;
  v12 = sub_24ABABC0C();
  v154 = *(v12 - 8);
  v13 = v154[8];
  v14 = MEMORY[0x28223BE20](v12);
  v148 = (&v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v146 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v130 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v152 = &v130 - v21;
  MEMORY[0x28223BE20](v20);
  v149 = &v130 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C40, &qword_24ABAF110);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v130 - v25;
  v27 = type metadata accessor for RootInfo(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  MEMORY[0x28223BE20](v27);
  v31 = (&v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_24ABABE2C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = (&v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v38 = v37;
  LOBYTE(v37) = sub_24ABABE3C();
  (*(v33 + 8))(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v44 = sub_24ABABD8C();
    __swift_project_value_buffer(v44, qword_27EF95FD8);
    v45 = v148;
    (v31[2])(v148, v28, v12);
    v46 = sub_24ABABD6C();
    v47 = sub_24ABAC11C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136315138;
      sub_24AB90D74(&qword_27EF95B40, MEMORY[0x277CC9260]);
      v50 = sub_24ABAC56C();
      v52 = v51;
      (v31[1])(v45, v12);
      v53 = sub_24AB760CC(v50, v52, aBlock);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_24AB6F000, v46, v47, "can't scan a url not in one of our roots: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x24C229EC0](v49, -1, -1);
      MEMORY[0x24C229EC0](v48, -1, -1);
    }

    else
    {

      (v31[1])(v45, v12);
    }

    return;
  }

  v39 = (v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  type metadata accessor for FIRoot(0);
  v41 = type metadata accessor for FIRoot.State(0);
  v42 = v153;
  sub_24AB85C90(*&v40[*(v41 + 28)], v26);
  os_unfair_lock_unlock(v39);
  v43 = (*(v28 + 6))(v26, 1, v27);
  v28 = v42;
  if (v43 == 1)
  {
    sub_24AB7C4A4(v26, &qword_27EF95C40, &qword_24ABAF110);
    v31 = v154;
    if (qword_27EF95308 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v134 = v41;
  v135 = v40;
  sub_24AB91CDC(v26, v31, type metadata accessor for RootInfo);
  v136 = v39;
  os_unfair_lock_lock(v39);
  v54 = v12;
  v55 = v154;
  v56 = v154 + 2;
  v57 = v154[2];
  v58 = v149;
  v57(v149, v28, v54);
  v59 = v150;
  v57(v150, v31, v54);
  (v55[7])(v59, 0, 1, v54);
  v139 = v1;
  v133 = *(v1 + 16);
  v60 = *(v27 + 20);
  v148 = v31;
  v61 = (v31 + v60);
  v62 = v61[1];
  v132 = *v61;
  v138 = v56;
  v137 = v57;
  v57(v152, v58, v54);
  v63 = v147;
  sub_24AB94828(v59, v147, &qword_27EF95B00, &qword_24ABAED70);
  if ((v55[6])(v63, 1, v54) == 1)
  {
    __break(1u);
  }

  else
  {
    v131 = v55[4];
    v131(v151, v63, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B48, &qword_24ABAEDB0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_24ABAE940;

    v65 = v58;
    v66 = sub_24ABABBEC();
    v68 = v67;
    type metadata accessor for DirectoryLister();
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    *(v69 + 24) = v68;
    *(v69 + 72) = 64;
    *(v69 + 32) = 0u;
    *(v69 + 48) = 0u;
    *(v69 + 64) = 1;
    v70 = v133;
    *(v69 + 80) = v133;
    *(v69 + 88) = v132;
    *(v69 + 96) = v62;
    *(v64 + 32) = v69;
    v71 = type metadata accessor for TreeLister(0);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    v74 = swift_allocObject();
    v75 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    sub_24AB7C4A4(v59, &qword_27EF95B00, &qword_24ABAED70);
    v76 = v55[1];
    v154 = v55 + 1;
    v150 = v76;
    (v76)(v65, v54);
    *(v74 + v75) = MEMORY[0x277D84F90];
    v77 = v131;
    v131((v74 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url), v152, v54);
    v77(v74 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL, v151, v54);
    v78 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    v79 = swift_beginAccess();
    *(v74 + v78) = v64;
    *(v74 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID) = v70;
    v80 = *(v134 + 24);
    v81 = v135;
    MEMORY[0x24C228F60](v79);
    v82 = v54;
    if (*((*&v81[v80] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v81[v80] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v128 = *((*&v81[v80] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ABAC01C();
    }

    sub_24ABAC02C();
    v83 = *&v81[v80];
    if (v83 >> 62)
    {
      if (v83 < 0)
      {
        v129 = *&v81[v80];
      }

      v84 = sub_24ABAC3DC();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v153;
    v86 = v137;
    os_unfair_lock_unlock(v136);
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v87 = sub_24ABABD8C();
    __swift_project_value_buffer(v87, qword_27EF95FD8);
    v88 = v146;
    v86(v146, v85, v54);
    v89 = sub_24ABABD6C();
    v90 = sub_24ABAC0FC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v153 = v91;
      v154 = swift_slowAlloc();
      aBlock[0] = v154;
      *v91 = 136315138;
      v92 = sub_24ABABB9C();
      v93 = v84;
      v94 = v88;
      v95 = [v92 fp_shortDescription];

      v96 = sub_24ABABEBC();
      v97 = v82;
      v99 = v98;

      v100 = v94;
      v84 = v93;
      (v150)(v100, v97);
      v101 = sub_24AB760CC(v96, v99, aBlock);

      v102 = v153;
      *(v153 + 1) = v101;
      v103 = v102;
      _os_log_impl(&dword_24AB6F000, v89, v90, "Added scan for %s", v102, 0xCu);
      v104 = v154;
      __swift_destroy_boxed_opaque_existential_0Tm(v154);
      MEMORY[0x24C229EC0](v104, -1, -1);
      MEMORY[0x24C229EC0](v103, -1, -1);
    }

    else
    {

      (v150)(v88, v82);
    }

    v105 = v139;
    v106 = sub_24ABABBBC();
    if (v106)
    {
      v107 = [*(v105 + 104) delegationQueue];
      aBlock[4] = sub_24AB91D44;
      aBlock[5] = v105;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24AB9AA08;
      aBlock[3] = &block_descriptor_153;
      v108 = _Block_copy(aBlock);

      v109 = v140;
      sub_24ABABE0C();
      v155 = MEMORY[0x277D84F90];
      sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
      sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
      v110 = v142;
      v111 = v145;
      sub_24ABAC28C();
      MEMORY[0x24C229110](0, v109, v110, v108);
      _Block_release(v108);

      (*(v144 + 8))(v110, v111);
      (*(v141 + 8))(v109, v143);
    }

    if (v84 == 1)
    {
      goto LABEL_20;
    }

    v115 = MEMORY[0x28223BE20](v106);
    *(&v130 - 2) = v105;
    MEMORY[0x28223BE20](v115);
    *(&v130 - 2) = v105;
    v116 = sub_24ABABD1C();
    v117 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
    v118 = *(v105 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
    v119 = MEMORY[0x28223BE20](v116);
    *(&v130 - 2) = v105;
    MEMORY[0x28223BE20](v119);
    *(&v130 - 2) = v105;
    v120 = sub_24ABABD1C();
    if (v118 != 2)
    {
      v121 = MEMORY[0x28223BE20](v120);
      *(&v130 - 2) = v105;
      MEMORY[0x28223BE20](v121);
      *(&v130 - 2) = v105;
      v122 = sub_24ABABD1C();
      v123 = *(v105 + v117);
      v124 = MEMORY[0x28223BE20](v122);
      *(&v130 - 2) = v105;
      MEMORY[0x28223BE20](v124);
      *(&v130 - 2) = v105;
      v106 = sub_24ABABD1C();
      if (v123 != 3)
      {
LABEL_20:
        v112 = MEMORY[0x28223BE20](v106);
        *(&v130 - 2) = v105;
        MEMORY[0x28223BE20](v112);
        *(&v130 - 2) = v105;
        v113 = sub_24ABABD1C();
        *(v105 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 1;
        v114 = MEMORY[0x28223BE20](v113);
        *(&v130 - 2) = v105;
        MEMORY[0x28223BE20](v114);
        *(&v130 - 2) = v105;
        sub_24ABABD1C();
      }
    }

    v125 = *(v105 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning);
    v126 = *(v105 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning + 8);

    v125(v127);

    sub_24AB91A08(v148, type metadata accessor for RootInfo);
  }
}