uint64_t sub_24AF2B548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 144) = v11;
  *(v8 + 96) = v10;
  *(v8 + 112) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x2822009F8](sub_24AF2B590, 0, 0);
}

id sub_24AF2B590()
{
  result = [*(v0 + 88) uniqueID];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 144);
    v6 = *(v0 + 56);
    v20 = *(v0 + 64);
    swift_getObjectType();
    v7 = sub_24AF353AC();
    v9 = v8;

    *(v0 + 40) = v7;
    *(v0 + 48) = v9;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    v10 = *(v20 + 24);
    v19 = v10 + *v10;
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    *v12 = v0;
    v12[1] = sub_24AF2B740;
    v13 = *(v0 + 128);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v22 = *(v0 + 64);

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AF2B740()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

void sub_24AF2B978(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v128 = a7;
  v129 = a6;
  v122 = a5;
  v126 = a1;
  v127 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C8, &qword_24AF3A958);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v119 - v15;
  v17 = type metadata accessor for MessageContext();
  v123 = *(v17 - 8);
  v18 = *(v123 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v124 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11D0, &qword_24AF3A970);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v119 - v24;
  v26 = sub_24AF3513C();
  v132 = *(v26 - 8);
  v133 = v26;
  v27 = *(v132 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v131 = &v119 - v30;
  v134 = v7;
  v31 = v7 + OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v130 = Strong;
    if (a2)
    {
      v121 = *(v31 + 1);
      sub_24AF324F4(a3, v25);
      v34 = v132;
      v33 = v133;
      if ((*(v132 + 48))(v25, 1, v133) == 1)
      {
        v35 = a2;
        sub_24AEE2E10(v25, &unk_27EFC11D0, &qword_24AF3A970);
        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v36 = sub_24AF3529C();
        __swift_project_value_buffer(v36, qword_27EFC4BE8);
        v37 = v134;
        v38 = sub_24AF3527C();
        v39 = sub_24AF3570C();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          *(v40 + 4) = v37;
          *v41 = v37;
          v42 = v37;
          _os_log_impl(&dword_24AECF000, v38, v39, "MessagingDelegateTrampoline: No resourceURL for %@", v40, 0xCu);
          sub_24AEE2E10(v41, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v41, -1, -1);
          MEMORY[0x24C236490](v40, -1, -1);
        }

        swift_unknownObjectRelease();
        return;
      }

      v120 = *(v34 + 32);
      v120(v131, v25, v33);
      if (v129)
      {
        if (v128)
        {
          if (v127)
          {
            if (v126)
            {
              v128 = v128;
              v57 = a2;

              v58 = [v126 serviceIdentifier];
              if (v58)
              {
                v59 = v58;
                v119 = sub_24AF353AC();
                v126 = v60;

                v134 = v128;
                sub_24AF280B4();
                v61 = v123;
                if ((*(v123 + 48))(v16, 1, v17) == 1)
                {
                  (*(v132 + 8))(v131, v133);

                  swift_unknownObjectRelease();
                  sub_24AEE2E10(v16, &qword_27EFC11C8, &qword_24AF3A958);
                }

                else
                {
                  v102 = v16;
                  v103 = v124;
                  sub_24AF2A3AC(v102, v124);
                  v104 = sub_24AF3557C();
                  (*(*(v104 - 8) + 56))(v125, 1, 1, v104);
                  v105 = v132;
                  (*(v132 + 16))(v29, v131, v133);
                  sub_24AF2985C(v103, v20);
                  v106 = v61;
                  v107 = (*(v105 + 80) + 72) & ~*(v105 + 80);
                  v108 = (v27 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
                  v110 = (*(v106 + 80) + v109 + 16) & ~*(v106 + 80);
                  v111 = swift_allocObject();
                  *(v111 + 2) = 0;
                  *(v111 + 3) = 0;
                  v112 = v121;
                  *(v111 + 4) = v130;
                  *(v111 + 5) = v112;
                  v113 = v126;
                  *(v111 + 6) = v119;
                  *(v111 + 7) = v113;
                  *(v111 + 8) = v57;
                  v114 = v29;
                  v115 = v133;
                  v120(&v111[v107], v114, v133);
                  *&v111[v108] = v127;
                  v116 = &v111[v109];
                  v117 = v129;
                  *v116 = v122;
                  *(v116 + 1) = v117;
                  sub_24AF2A3AC(v20, &v111[v110]);
                  v118 = v57;
                  swift_unknownObjectRetain();
                  sub_24AF08F10(0, 0, v125, &unk_24AF3A980, v111);

                  swift_unknownObjectRelease();

                  sub_24AF298C0(v124);
                  (*(v132 + 8))(v131, v115);
                }
              }

              else
              {
                v91 = v128;
                v92 = v57;

                if (qword_27EFC0720 != -1)
                {
                  swift_once();
                }

                v93 = sub_24AF3529C();
                __swift_project_value_buffer(v93, qword_27EFC4BE8);
                v94 = v134;
                v95 = sub_24AF3527C();
                v96 = sub_24AF3570C();

                v97 = os_log_type_enabled(v95, v96);
                v98 = v132;
                if (v97)
                {
                  v99 = swift_slowAlloc();
                  v100 = swift_slowAlloc();
                  *v99 = 138412290;
                  *(v99 + 4) = v94;
                  *v100 = v94;
                  v101 = v94;
                  _os_log_impl(&dword_24AECF000, v95, v96, "MessagingDelegateTrampoline: serviceIdentifier for %@", v99, 0xCu);
                  sub_24AEE2E10(v100, &qword_27EFC0D70, &qword_24AF37D20);
                  MEMORY[0x24C236490](v100, -1, -1);
                  MEMORY[0x24C236490](v99, -1, -1);

                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                  v95 = v91;
                }

                (*(v98 + 8))(v131, v133);
              }
            }

            else
            {
              __break(1u);
            }
          }

          else
          {
            v79 = qword_27EFC0720;
            v80 = v128;
            v81 = a2;
            if (v79 != -1)
            {
              swift_once();
            }

            v82 = sub_24AF3529C();
            __swift_project_value_buffer(v82, qword_27EFC4BE8);
            v83 = v134;
            v84 = sub_24AF3527C();
            v85 = sub_24AF3570C();

            v86 = os_log_type_enabled(v84, v85);
            v87 = v132;
            if (v86)
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              *v88 = 138412290;
              *(v88 + 4) = v83;
              *v89 = v83;
              v90 = v83;
              _os_log_impl(&dword_24AECF000, v84, v85, "MessagingDelegateTrampoline: No metadata for %@", v88, 0xCu);
              sub_24AEE2E10(v89, &qword_27EFC0D70, &qword_24AF37D20);
              MEMORY[0x24C236490](v89, -1, -1);
              MEMORY[0x24C236490](v88, -1, -1);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
              v84 = v80;
            }

            (*(v87 + 8))(v131, v133);
          }

          return;
        }

        v74 = qword_27EFC0720;
        v63 = a2;
        if (v74 != -1)
        {
          swift_once();
        }

        v75 = sub_24AF3529C();
        __swift_project_value_buffer(v75, qword_27EFC4BE8);
        v76 = v134;
        v66 = sub_24AF3527C();
        v67 = sub_24AF3570C();

        v77 = os_log_type_enabled(v66, v67);
        v69 = v132;
        if (v77)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          *(v70 + 4) = v76;
          *v71 = v76;
          v78 = v76;
          v73 = "MessagingDelegateTrampoline: No context for %@";
          goto LABEL_38;
        }
      }

      else
      {
        v62 = qword_27EFC0720;
        v63 = a2;
        if (v62 != -1)
        {
          swift_once();
        }

        v64 = sub_24AF3529C();
        __swift_project_value_buffer(v64, qword_27EFC4BE8);
        v65 = v134;
        v66 = sub_24AF3527C();
        v67 = sub_24AF3570C();

        v68 = os_log_type_enabled(v66, v67);
        v69 = v132;
        if (v68)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          *(v70 + 4) = v65;
          *v71 = v65;
          v72 = v65;
          v73 = "MessagingDelegateTrampoline: No fromID for %@";
LABEL_38:
          _os_log_impl(&dword_24AECF000, v66, v67, v73, v70, 0xCu);
          sub_24AEE2E10(v71, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v71, -1, -1);
          MEMORY[0x24C236490](v70, -1, -1);
          swift_unknownObjectRelease();

LABEL_40:
          (*(v69 + 8))(v131, v133);
          return;
        }
      }

      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v50 = sub_24AF3529C();
    __swift_project_value_buffer(v50, qword_27EFC4BE8);
    v51 = v134;
    v52 = sub_24AF3527C();
    v53 = sub_24AF3570C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_24AECF000, v52, v53, "MessagingDelegateTrampoline: No account for %@", v54, 0xCu);
      sub_24AEE2E10(v55, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v55, -1, -1);
      MEMORY[0x24C236490](v54, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v43 = sub_24AF3529C();
    __swift_project_value_buffer(v43, qword_27EFC4BE8);
    v44 = v134;
    v134 = sub_24AF3527C();
    v45 = sub_24AF3570C();

    if (os_log_type_enabled(v134, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v44;
      *v47 = v44;
      v48 = v44;
      _os_log_impl(&dword_24AECF000, v134, v45, "MessagingDelegateTrampoline: No delegate for %@", v46, 0xCu);
      sub_24AEE2E10(v47, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v47, -1, -1);
      MEMORY[0x24C236490](v46, -1, -1);
    }

    v49 = v134;
  }
}

uint64_t sub_24AF2C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24AF2C834, 0, 0);
}

char sub_24AF2C834()
{
  v1 = [*(v0 + 112) uniqueID];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = sub_24AF353AC();
    v8 = v7;

    *(v0 + 64) = v6;
    *(v0 + 72) = v8;
    *(v0 + 160) = sub_24AF00A78(v5);

    v9._countAndFlagsBits = v4;
    v9._object = v3;
    LOBYTE(v1) = Destination.init(stringRepresentation:)(v9);
    v10 = *(v0 + 32);
    if (v10)
    {
      v11 = *(v0 + 80);
      v24 = *(v0 + 88);
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      swift_getObjectType();
      *(v0 + 40) = v13;
      *(v0 + 48) = v12;
      *(v0 + 56) = v10;
      v14 = *(v24 + 32);
      v23 = v14 + *v14;
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 168) = v16;
      *v16 = v0;
      v16[1] = sub_24AF2CA0C;
      v17 = *(v0 + 152);
      v18 = *(v0 + 120);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v21 = *(v0 + 80);
      v26 = *(v0 + 88);

      __asm { BRAA            X8, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return v1;
}

uint64_t sub_24AF2CA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v8 = *v0;

  v4 = *(v1 + 56);

  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

void sub_24AF2CD44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a5;
  v83 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C8, &qword_24AF3A958);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v80 - v16;
  v18 = type metadata accessor for MessageContext();
  v84 = *(v18 - 8);
  v19 = *(v84 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  v87 = v6;
  v24 = v6 + OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v35 = sub_24AF3529C();
    __swift_project_value_buffer(v35, qword_27EFC4BE8);
    v36 = v87;
    v87 = sub_24AF3527C();
    v37 = sub_24AF3570C();

    if (os_log_type_enabled(v87, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v36;
      *v39 = v36;
      v40 = v36;
      _os_log_impl(&dword_24AECF000, v87, v37, "MessagingDelegateTrampoline: No delegate for %@", v38, 0xCu);
      sub_24AEE2E10(v39, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v39, -1, -1);
      MEMORY[0x24C236490](v38, -1, -1);
    }

    v41 = v87;
LABEL_15:

    return;
  }

  if (!a2)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v42 = sub_24AF3529C();
    __swift_project_value_buffer(v42, qword_27EFC4BE8);
    v43 = v87;
    v44 = sub_24AF3527C();
    v45 = sub_24AF3570C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&dword_24AECF000, v44, v45, "MessagingDelegateTrampoline: No account for %@", v46, 0xCu);
      sub_24AEE2E10(v47, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v47, -1, -1);
      MEMORY[0x24C236490](v46, -1, -1);
    }

    goto LABEL_37;
  }

  if (a3)
  {
    if (v86)
    {
      if (a6)
      {
        v82 = Strong;
        if (!a1)
        {
          __break(1u);
          return;
        }

        v80 = *(v24 + 1);
        v81 = a6;
        v26 = a2;

        v27 = [a1 serviceIdentifier];
        if (v27)
        {
          v28 = v26;
          v29 = v27;
          v87 = sub_24AF353AC();
          v31 = v30;

          v32 = sub_24AF00A84(a3);
          v33 = v81;
          sub_24AF280B4();
          v34 = v84;
          if ((*(v84 + 48))(v17, 1, v18) == 1)
          {

            swift_unknownObjectRelease();
            sub_24AEE2E10(v17, &qword_27EFC11C8, &qword_24AF3A958);
          }

          else
          {
            sub_24AF2A3AC(v17, v23);
            v74 = sub_24AF3557C();
            (*(*(v74 - 8) + 56))(v85, 1, 1, v74);
            sub_24AF2985C(v23, v21);
            v75 = (*(v34 + 80) + 96) & ~*(v34 + 80);
            v76 = swift_allocObject();
            v76[2] = 0;
            v76[3] = 0;
            v77 = v80;
            v76[4] = v82;
            v76[5] = v77;
            v76[6] = v87;
            v76[7] = v31;
            v76[8] = v28;
            v76[9] = v32;
            v78 = v86;
            v76[10] = v83;
            v76[11] = v78;
            sub_24AF2A3AC(v21, v76 + v75);
            v79 = v28;
            swift_unknownObjectRetain();
            sub_24AF08F10(0, 0, v85, &unk_24AF3A968, v76);

            swift_unknownObjectRelease();

            sub_24AF298C0(v23);
          }

          return;
        }

        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v67 = sub_24AF3529C();
        __swift_project_value_buffer(v67, qword_27EFC4BE8);
        v68 = v87;
        v69 = sub_24AF3527C();
        v70 = sub_24AF3570C();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v71 = 138412290;
          *(v71 + 4) = v68;
          *v72 = v68;
          v73 = v68;
          _os_log_impl(&dword_24AECF000, v69, v70, "MessagingDelegateTrampoline: serviceIdentifier for %@", v71, 0xCu);
          sub_24AEE2E10(v72, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v72, -1, -1);
          MEMORY[0x24C236490](v71, -1, -1);
        }

        swift_unknownObjectRelease();
        v41 = v81;
        goto LABEL_15;
      }

      v63 = qword_27EFC0720;
      v50 = a2;
      if (v63 != -1)
      {
        swift_once();
      }

      v64 = sub_24AF3529C();
      __swift_project_value_buffer(v64, qword_27EFC4BE8);
      v65 = v87;
      v53 = sub_24AF3527C();
      v54 = sub_24AF3570C();

      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_36;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v65;
      *v56 = v65;
      v66 = v65;
      v58 = "MessagingDelegateTrampoline: No context for %@";
    }

    else
    {
      v59 = qword_27EFC0720;
      v50 = a2;
      if (v59 != -1)
      {
        swift_once();
      }

      v60 = sub_24AF3529C();
      __swift_project_value_buffer(v60, qword_27EFC4BE8);
      v61 = v87;
      v53 = sub_24AF3527C();
      v54 = sub_24AF3570C();

      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_36;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v61;
      *v56 = v61;
      v62 = v61;
      v58 = "MessagingDelegateTrampoline: No fromID for %@";
    }
  }

  else
  {
    v49 = qword_27EFC0720;
    v50 = a2;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = sub_24AF3529C();
    __swift_project_value_buffer(v51, qword_27EFC4BE8);
    v52 = v87;
    v53 = sub_24AF3527C();
    v54 = sub_24AF3570C();

    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_36;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    *(v55 + 4) = v52;
    *v56 = v52;
    v57 = v52;
    v58 = "MessagingDelegateTrampoline: No message for %@";
  }

  _os_log_impl(&dword_24AECF000, v53, v54, v58, v55, 0xCu);
  sub_24AEE2E10(v56, &qword_27EFC0D70, &qword_24AF37D20);
  MEMORY[0x24C236490](v56, -1, -1);
  MEMORY[0x24C236490](v55, -1, -1);
LABEL_36:

LABEL_37:

  swift_unknownObjectRelease();
}

uint64_t sub_24AF2D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24AF2D7BC, 0, 0);
}

char sub_24AF2D7BC()
{
  v1 = [*(v0 + 112) uniqueID];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = sub_24AF353AC();
    v7 = v6;

    *(v0 + 64) = v5;
    *(v0 + 72) = v7;
    *(v0 + 152) = sub_24AEE2954(MEMORY[0x277D84F90]);

    v8._countAndFlagsBits = v4;
    v8._object = v3;
    LOBYTE(v1) = Destination.init(stringRepresentation:)(v8);
    v9 = *(v0 + 32);
    if (v9)
    {
      v10 = *(v0 + 80);
      v23 = *(v0 + 88);
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
      swift_getObjectType();
      *(v0 + 40) = v12;
      *(v0 + 48) = v11;
      *(v0 + 56) = v9;
      v13 = *(v23 + 40);
      v22 = v13 + *v13;
      v14 = v13[1];
      v15 = swift_task_alloc();
      *(v0 + 160) = v15;
      *v15 = v0;
      v15[1] = sub_24AF2D994;
      v16 = *(v0 + 144);
      v17 = *(v0 + 120);
      v19 = *(v0 + 96);
      v18 = *(v0 + 104);
      v20 = *(v0 + 80);
      v25 = *(v0 + 88);

      __asm { BRAA            X8, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return v1;
}

uint64_t sub_24AF2D994()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v8 = *v0;

  v4 = *(v1 + 56);

  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

void sub_24AF2DBEC(void *a1, void *a2, uint64_t a3, unint64_t a4, int a5, void *a6)
{
  v87 = a6;
  v88 = a3;
  v86 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v82 - v16;
  v18 = sub_24AF3521C();
  v90 = *(v18 - 8);
  isa = v90[8].isa;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v82 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v89 = &v82 - v22;
  v23 = &v6[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_27EFC4BE8);
    v37 = v6;
    v90 = sub_24AF3527C();
    v38 = sub_24AF3570C();

    if (os_log_type_enabled(v90, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&dword_24AECF000, v90, v38, "MessagingDelegateTrampoline: No delegate for %@", v39, 0xCu);
      sub_24AEE2E10(v40, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v40, -1, -1);
      MEMORY[0x24C236490](v39, -1, -1);
    }

    v42 = v90;

    return;
  }

  if (!a2)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v43 = sub_24AF3529C();
    __swift_project_value_buffer(v43, qword_27EFC4BE8);
    v44 = v6;
    v45 = sub_24AF3527C();
    v46 = sub_24AF3570C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&dword_24AECF000, v45, v46, "MessagingDelegateTrampoline: No account for %@", v47, 0xCu);
      sub_24AEE2E10(v48, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v48, -1, -1);
      MEMORY[0x24C236490](v47, -1, -1);
    }

    goto LABEL_26;
  }

  v85 = Strong;
  if (!a4)
  {
    v50 = qword_27EFC0720;
    v51 = a2;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = sub_24AF3529C();
    __swift_project_value_buffer(v52, qword_27EFC4BE8);
    v53 = v6;
    v54 = sub_24AF3527C();
    v55 = sub_24AF3570C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&dword_24AECF000, v54, v55, "MessagingDelegateTrampoline: No identifier for %@", v56, 0xCu);
      sub_24AEE2E10(v57, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v57, -1, -1);
      MEMORY[0x24C236490](v56, -1, -1);
    }

LABEL_26:

    goto LABEL_28;
  }

  v84 = *(v23 + 1);
  v25 = a2;
  sub_24AF351DC();
  v26 = v90;
  if ((v90[6].isa)(v17, 1, v18) == 1)
  {
    sub_24AEE2E10(v17, &qword_27EFC11C0, &qword_24AF38DC0);
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v27 = sub_24AF3529C();
    __swift_project_value_buffer(v27, qword_27EFC4BE8);
    v28 = v6;

    v29 = sub_24AF3527C();
    v30 = sub_24AF3570C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v25;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v91 = v34;
      *v31 = 136315394;
      *(v31 + 4) = sub_24AEF599C(v88, a4, &v91);
      *(v31 + 12) = 2112;
      *(v31 + 14) = v28;
      *v33 = v28;
      v35 = v28;
      _os_log_impl(&dword_24AECF000, v29, v30, "MessagingDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v31, 0x16u);
      sub_24AEE2E10(v33, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C236490](v34, -1, -1);
      MEMORY[0x24C236490](v31, -1, -1);
    }

    else
    {
    }

LABEL_28:
    swift_unknownObjectRelease();
    return;
  }

  v59 = v26[4].isa;
  v59(v89, v17, v18);
  if (a1)
  {
    v60 = [a1 serviceIdentifier];
    if (v60)
    {
      v61 = v60;
      v88 = sub_24AF353AC();
      v83 = v62;

      v63 = sub_24AF3557C();
      (*(*(v63 - 8) + 56))(v13, 1, 1, v63);
      v64 = v90;
      (v90[2].isa)(v21, v89, v18);
      v65 = (LOBYTE(v64[10].isa) + 72) & ~LOBYTE(v64[10].isa);
      v66 = isa + v65;
      v67 = (isa + v65) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      v69 = v84;
      *(v68 + 32) = v85;
      *(v68 + 40) = v69;
      v70 = v83;
      *(v68 + 48) = v88;
      *(v68 + 56) = v70;
      *(v68 + 64) = v25;
      v59((v68 + v65), v21, v18);
      v66[v68] = v86 & 1;
      v71 = v87;
      *(v68 + v67 + 8) = v87;
      v72 = v25;
      swift_unknownObjectRetain();
      v73 = v71;
      sub_24AF08F10(0, 0, v13, &unk_24AF3A950, v68);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v74 = sub_24AF3529C();
      __swift_project_value_buffer(v74, qword_27EFC4BE8);
      v75 = v6;
      v76 = sub_24AF3527C();
      v77 = sub_24AF3570C();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = v25;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        *(v79 + 4) = v75;
        *v80 = v75;
        v81 = v75;
        _os_log_impl(&dword_24AECF000, v76, v77, "MessagingDelegateTrampoline: serviceIdentifier for %@", v79, 0xCu);
        sub_24AEE2E10(v80, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v80, -1, -1);
        MEMORY[0x24C236490](v79, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    (v90[1].isa)(v89, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AF2E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v10;
  *(v8 + 80) = v12;
  *(v8 + 96) = v11;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  return MEMORY[0x2822009F8](sub_24AF2E64C, 0, 0);
}

id sub_24AF2E64C()
{
  result = [*(v0 + 64) uniqueID];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    v19 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v5 = sub_24AF353AC();
    v7 = v6;

    *(v0 + 16) = v5;
    *(v0 + 24) = v7;
    v8 = *(v19 + 8);
    v18 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_24AF2E7CC;
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = *(v0 + 56);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 48);

    return v18(v17, v14, v0 + 16, v12, v11, v13, ObjectType, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AF2E7CC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 24);

  v4 = *(v6 + 8);

  return v4();
}

void sub_24AF2E9B0(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v101 = a5;
  v102 = a6;
  v103 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v96 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v96 - v16;
  v105 = sub_24AF3521C();
  isa = v105[-1].isa;
  v19 = *(isa + 8);
  v20 = MEMORY[0x28223BE20](v105);
  v21 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = &v96 - v22;
  v23 = &v6[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_27EFC4BE8);
    v37 = v6;
    v105 = sub_24AF3527C();
    v38 = sub_24AF3570C();

    if (os_log_type_enabled(v105, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&dword_24AECF000, v105, v38, "MessagingDelegateTrampoline: No delegate for %@", v39, 0xCu);
      sub_24AEE2E10(v40, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v40, -1, -1);
      MEMORY[0x24C236490](v39, -1, -1);
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v42 = sub_24AF3529C();
    __swift_project_value_buffer(v42, qword_27EFC4BE8);
    v43 = v6;
    v44 = sub_24AF3527C();
    v45 = sub_24AF3570C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&dword_24AECF000, v44, v45, "MessagingDelegateTrampoline: No account for %@", v46, 0xCu);
      sub_24AEE2E10(v47, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v47, -1, -1);
      MEMORY[0x24C236490](v46, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v100 = Strong;
  if (!a4)
  {
    v49 = qword_27EFC0720;
    v105 = a2;
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_24AF3529C();
    __swift_project_value_buffer(v50, qword_27EFC4BE8);
    v51 = v6;
    v52 = sub_24AF3527C();
    v53 = sub_24AF3570C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_24AECF000, v52, v53, "MessagingDelegateTrampoline: No identifier for %@", v54, 0xCu);
      sub_24AEE2E10(v55, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v55, -1, -1);
      MEMORY[0x24C236490](v54, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_26:
    v57 = v105;

    return;
  }

  v98 = *(v23 + 1);
  v99 = a1;
  v25 = a2;
  sub_24AF351DC();
  v26 = isa;
  v27 = v105;
  if ((*(isa + 6))(v17, 1, v105) == 1)
  {
    sub_24AEE2E10(v17, &qword_27EFC11C0, &qword_24AF38DC0);
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v28 = sub_24AF3529C();
    __swift_project_value_buffer(v28, qword_27EFC4BE8);
    v29 = v6;

    v30 = sub_24AF3527C();
    v31 = sub_24AF3570C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v106 = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_24AEF599C(v103, a4, &v106);
      *(v32 + 12) = 2112;
      *(v32 + 14) = v29;
      *v33 = v29;
      v35 = v29;
      _os_log_impl(&dword_24AECF000, v30, v31, "MessagingDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v32, 0x16u);
      sub_24AEE2E10(v33, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C236490](v34, -1, -1);
      MEMORY[0x24C236490](v32, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v103 = v25;
  v97 = *(isa + 4);
  v97(v104, v17, v27);
  if (v102)
  {
    v58 = v102;
    v59 = v99;
    if (v99)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v74 = IDSCopyLocalDeviceUniqueID();
  v59 = v99;
  if (v74)
  {
    v75 = v74;
    v76 = sub_24AF353AC();
    v78 = v77;

    v106 = 0x3A656369766564;
    v107 = 0xE700000000000000;
    MEMORY[0x24C235440](v76, v78);
    v26 = isa;

    v58 = v107;
    v101 = v106;
    if (v59)
    {
LABEL_31:

      v60 = [v59 serviceIdentifier];
      if (v60)
      {
        v102 = v58;
        v61 = v60;
        v62 = sub_24AF353AC();
        v99 = v63;

        v64 = sub_24AF3557C();
        (*(*(v64 - 8) + 56))(v13, 1, 1, v64);
        v65 = v105;
        (*(v26 + 2))(v21, v104, v105);
        v66 = (*(v26 + 80) + 72) & ~*(v26 + 80);
        v67 = swift_allocObject();
        *(v67 + 2) = 0;
        *(v67 + 3) = 0;
        v69 = v98;
        v68 = v99;
        *(v67 + 4) = v100;
        *(v67 + 5) = v69;
        *(v67 + 6) = v62;
        *(v67 + 7) = v68;
        v70 = v103;
        *(v67 + 8) = v103;
        v97(&v67[v66], v21, v65);
        v71 = &v67[(v19 + v66 + 7) & 0xFFFFFFFFFFFFFFF8];
        v72 = v102;
        *v71 = v101;
        v71[1] = v72;
        v73 = v70;
        swift_unknownObjectRetain();
        sub_24AF08F10(0, 0, v13, &unk_24AF3A940, v67);
        swift_unknownObjectRelease();

        (*(v26 + 1))(v104, v65);
        return;
      }

      goto LABEL_36;
    }

LABEL_35:
    __break(1u);
LABEL_36:

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v79 = sub_24AF3529C();
    __swift_project_value_buffer(v79, qword_27EFC4BE8);
    v80 = v6;
    v81 = sub_24AF3527C();
    v82 = sub_24AF3570C();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v103;
    if (v83)
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      *(v85 + 4) = v80;
      *v86 = v80;
      v87 = v80;
      _os_log_impl(&dword_24AECF000, v81, v82, "MessagingDelegateTrampoline: serviceIdentifier for %@", v85, 0xCu);
      sub_24AEE2E10(v86, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v86, -1, -1);
      MEMORY[0x24C236490](v85, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v81 = v84;
    }

    v88 = v105;

    (*(v26 + 1))(v104, v88);
    return;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v89 = sub_24AF3529C();
  __swift_project_value_buffer(v89, qword_27EFC4BE8);
  v90 = sub_24AF3527C();
  v91 = sub_24AF3570C();
  v92 = os_log_type_enabled(v90, v91);
  v93 = v103;
  v94 = v105;
  if (v92)
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_24AECF000, v90, v91, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v95, 2u);
    MEMORY[0x24C236490](v95, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v26 + 1))(v104, v94);
}

uint64_t sub_24AF2F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24AF2F588, 0, 0);
}

char sub_24AF2F588()
{
  v1 = [*(v0 + 112) uniqueID];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = sub_24AF353AC();
  v7 = v6;

  *(v0 + 64) = v5;
  *(v0 + 72) = v7;

  v8._countAndFlagsBits = v4;
  v8._object = v3;
  LOBYTE(v1) = Destination.init(stringRepresentation:)(v8);
  v9 = *(v0 + 32);
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return v1;
  }

  v10 = *(v0 + 80);
  v24 = *(v0 + 88);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 40) = v12;
  *(v0 + 48) = v11;
  *(v0 + 56) = v9;
  v14 = *(v24 + 16);
  v23 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_24AF2F734;
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 96);

  LOBYTE(v1) = v23(v21, v18, v0 + 64, v17, v0 + 40, ObjectType, v19);
  return v1;
}

uint64_t sub_24AF2F734()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v7 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v1 + 72);

  v5 = *(v7 + 8);

  return v5();
}

void sub_24AF2F978(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - v7;
  v9 = &v2[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2 && (v12 = *(v9 + 1), sub_24AF2FEF8(a2), v13))
    {
      sub_24AF2A410(v13);
      v15 = sub_24AEF6FA0(v14);

      if (a1)
      {

        v16 = [a1 serviceIdentifier];
        if (v16)
        {
          v17 = v16;
          v18 = sub_24AF353AC();
          v20 = v19;

          v21 = sub_24AF3557C();
          (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
          v22 = swift_allocObject();
          v22[2] = 0;
          v22[3] = 0;
          v22[4] = v11;
          v22[5] = v12;
          v22[6] = v18;
          v22[7] = v20;
          v22[8] = v15;
          sub_24AF08F10(0, 0, v8, &unk_24AF3A920, v22);

          return;
        }

        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v39 = sub_24AF3529C();
        __swift_project_value_buffer(v39, qword_27EFC4BE8);
        v40 = v2;
        v24 = sub_24AF3527C();
        v41 = sub_24AF3570C();

        if (os_log_type_enabled(v24, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          *(v42 + 4) = v40;
          *v43 = v40;
          v44 = v40;
          _os_log_impl(&dword_24AECF000, v24, v41, "MessagingDelegateTrampoline: serviceIdentifier for %@", v42, 0xCu);
          sub_24AEE2E10(v43, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v43, -1, -1);
          MEMORY[0x24C236490](v42, -1, -1);
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v23 = sub_24AF3529C();
      __swift_project_value_buffer(v23, qword_27EFC4BE8);

      v24 = sub_24AF3527C();
      v25 = sub_24AF3570C();
      if (!os_log_type_enabled(v24, v25))
      {

LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 136315138;
      if (a2)
      {
        v28 = v27;

        v29 = sub_24AF3567C();
        v31 = sub_24AEF599C(v29, v30, &v47);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_24AECF000, v24, v25, "MessagingDelegateTrampoline: Unable to convert accounts to Set<IDSAccount> %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x24C236490](v28, -1, -1);
        MEMORY[0x24C236490](v26, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v32 = sub_24AF3529C();
  __swift_project_value_buffer(v32, qword_27EFC4BE8);
  v33 = v2;
  v46 = sub_24AF3527C();
  v34 = sub_24AF3570C();

  if (os_log_type_enabled(v46, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v33;
    *v36 = v33;
    v37 = v33;
    _os_log_impl(&dword_24AECF000, v46, v34, "MessagingDelegateTrampoline: No delegate for %@", v35, 0xCu);
    sub_24AEE2E10(v36, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v36, -1, -1);
    MEMORY[0x24C236490](v35, -1, -1);
  }

  v38 = v46;
}

void sub_24AF2FEF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11B0, &qword_24AF3A930);
    v2 = sub_24AF3590C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
  v31[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v28 = v27;
LABEL_31:
      sub_24AEE2A84(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v28 << 6)), v31);
      v29 = sub_24AF3589C();
      sub_24AEE2AE0(v31);
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_24AF317C8(v30);
      v27 = v28;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v28);
      ++v27;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_24AEE2A84(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v31);
      v14 = sub_24AF3589C();
      sub_24AEE2AE0(v31);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = *(v2 + 40);
      v18 = sub_24AF3577C();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24AF3021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v14 = *(a5 + 48);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_24AEF9DD0;

  return v18(a6, a7, a8, ObjectType, a5);
}

uint64_t sub_24AF303F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v14 = *(a5 + 56);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_24AEE555C;

  return v18(a6, a7, a8, ObjectType, a5);
}

uint64_t sub_24AF30568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v14 = *(a5 + 64);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_24AEF9DD0;

  return v18(a6, a7, a8, ObjectType, a5);
}

void sub_24AF306D8(void *a1, NSObject *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v105 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v95 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v19 = Strong;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (!v20)
  {
    swift_unknownObjectRelease();
LABEL_14:
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v32 = sub_24AF3529C();
    __swift_project_value_buffer(v32, qword_27EFC4BE8);
    v33 = v7;
    v105 = sub_24AF3527C();
    v34 = sub_24AF3570C();

    if (os_log_type_enabled(v105, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      _os_log_impl(&dword_24AECF000, v105, v34, "MessagingDelegateTrampoline: No delegate for %@", v35, 0xCu);
      sub_24AEE2E10(v36, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v36, -1, -1);
      MEMORY[0x24C236490](v35, -1, -1);
    }

    goto LABEL_36;
  }

  if (!v105)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v38 = sub_24AF3529C();
    __swift_project_value_buffer(v38, qword_27EFC4BE8);
    v39 = v7;
    v40 = sub_24AF3527C();
    v41 = sub_24AF3570C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_24AECF000, v40, v41, "MessagingServiceDelegateTrampoline: No account for %@", v42, 0xCu);
      sub_24AEE2E10(v43, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v43, -1, -1);
      MEMORY[0x24C236490](v42, -1, -1);
    }

    goto LABEL_22;
  }

  if (!a3)
  {
    v45 = qword_27EFC0720;
    v105 = v105;
    if (v45 != -1)
    {
      swift_once();
    }

    v46 = sub_24AF3529C();
    __swift_project_value_buffer(v46, qword_27EFC4BE8);
    v47 = v7;
    v48 = sub_24AF3527C();
    v49 = sub_24AF3570C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_24AECF000, v48, v49, "MessagingServiceDelegateTrampoline: No session for %@", v50, 0xCu);
      sub_24AEE2E10(v51, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v51, -1, -1);
      MEMORY[0x24C236490](v50, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  if (!a5)
  {
    v53 = v105;
    v54 = a3;
    goto LABEL_31;
  }

  v103 = v20;
  v104 = v105;
  v21 = a3;

  v22._countAndFlagsBits = a4;
  v22._object = a5;
  Destination.init(stringRepresentation:)(v22);
  v23 = v108;
  if (!v108)
  {
LABEL_31:
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v55 = sub_24AF3529C();
    __swift_project_value_buffer(v55, qword_27EFC4BE8);
    v56 = v7;
    v57 = sub_24AF3527C();
    v58 = sub_24AF3570C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v56;
      v61 = v56;
      _os_log_impl(&dword_24AECF000, v57, v58, "MessagingServiceDelegateTrampoline: No fromID for %@", v59, 0xCu);
      sub_24AEE2E10(v60, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v60, -1, -1);
      MEMORY[0x24C236490](v59, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_36:
    v31 = v105;
LABEL_37:

    return;
  }

  if (a7 >> 60 == 15)
  {

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v24 = sub_24AF3529C();
    __swift_project_value_buffer(v24, qword_27EFC4BE8);
    v25 = v7;
    v26 = sub_24AF3527C();
    v27 = sub_24AF3570C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_24AECF000, v26, v27, "MessagingServiceDelegateTrampoline: No context for %@", v28, 0xCu);
      sub_24AEE2E10(v29, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v29, -1, -1);
      MEMORY[0x24C236490](v28, -1, -1);
    }

    swift_unknownObjectRelease();
    v31 = v104;
    goto LABEL_37;
  }

  if (!a1)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v62 = *(&v107 + 1);
  v63 = v107;
  sub_24AEE5154(a6, a7);
  v64 = [a1 serviceIdentifier];
  if (v64)
  {
    v99 = v21;
    v100 = v63;
    v105 = v62;
    v65 = v64;
    v102 = sub_24AF353AC();
    v101 = v66;

    v67 = v104;
    v68 = a1;
    v69 = [v67 uniqueID];
    if (v69)
    {
      v70 = v69;
      v104 = sub_24AF353AC();
      v98 = v71;
      v97 = v67;

      v72 = v7[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_linkSelectionStrategy + 8];
      *&v107 = *&v7[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_linkSelectionStrategy];
      BYTE8(v107) = v72;
      v73 = type metadata accessor for IDSSessionWrapper(0);
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      v76 = v99;
      sub_24AF11EC4(a6, a7);
      v77 = v68;
      v78 = v76;
      v99 = v78;
      sub_24AF11EC4(a6, a7);
      v79 = v77;
      v80 = sub_24AF050A8(v79, v78, &v107);
      v81 = sub_24AF3557C();
      v96 = *(*(v81 - 8) + 56);
      v96(v17, 1, 1, v81);
      v82 = swift_allocObject();
      v82[2] = 0;
      v82[3] = 0;
      v82[4] = v80;

      sub_24AF08F10(0, 0, v17, &unk_24AF3A8F0, v82);

      sub_24AF11EB0(a6, a7);

      v83 = v99;
      *&v107 = v79;
      *(&v107 + 1) = v104;
      *&v108 = v98;
      BYTE8(v108) = v100;
      *(&v108 + 9) = v106[0];
      HIDWORD(v108) = *(v106 + 3);
      *&v109 = v105;
      *(&v109 + 1) = v23;
      *&v110 = a6;
      *(&v110 + 1) = a7;
      v111 = v80;
      v96(v17, 1, 1, v81);
      v84 = swift_allocObject();
      *(v84 + 16) = 0;
      *(v84 + 24) = 0;
      v85 = v103;
      *(v84 + 32) = v19;
      *(v84 + 40) = v85;
      v86 = v101;
      *(v84 + 48) = v102;
      *(v84 + 56) = v86;
      v87 = v110;
      *(v84 + 96) = v109;
      *(v84 + 112) = v87;
      *(v84 + 128) = v111;
      v88 = v108;
      *(v84 + 64) = v107;
      *(v84 + 80) = v88;
      swift_unknownObjectRetain();
      sub_24AEF7540(&v107, v106);
      sub_24AF08F10(0, 0, v17, &unk_24AF3A900, v84);

      sub_24AF11EB0(a6, a7);
      swift_unknownObjectRelease();
      sub_24AEF759C(&v107);

      return;
    }

    goto LABEL_50;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v89 = sub_24AF3529C();
  __swift_project_value_buffer(v89, qword_27EFC4BE8);
  v90 = v7;
  v40 = sub_24AF3527C();
  v91 = sub_24AF3570C();

  if (os_log_type_enabled(v40, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138412290;
    *(v92 + 4) = v90;
    *v93 = v90;
    v94 = v90;
    _os_log_impl(&dword_24AECF000, v40, v91, "MessagingDelegateTrampoline: serviceIdentifier for %@", v92, 0xCu);
    sub_24AEE2E10(v93, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v93, -1, -1);
    MEMORY[0x24C236490](v92, -1, -1);
  }

  sub_24AF11EB0(a6, a7);
LABEL_22:

  swift_unknownObjectRelease();
}

uint64_t sub_24AF31274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  *(v8 + 80) = *(a8 + 64);
  v14 = *(a8 + 48);
  *(v8 + 48) = *(a8 + 32);
  *(v8 + 64) = v14;
  v15 = *(a8 + 16);
  *(v8 + 16) = *a8;
  *(v8 + 32) = v15;
  v16 = *(a5 + 16);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 88) = v18;
  *v18 = v8;
  v18[1] = sub_24AF313DC;

  return v20(a6, a7, v8 + 16, ObjectType, a5);
}

uint64_t sub_24AF313DC()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AF3163C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEE555C;

  return sub_24AED579C(a1, v4, v5, v6);
}

uint64_t sub_24AF316F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AF31274(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

void sub_24AF317C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_24AF3577C();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_24AF3578C();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

id sub_24AF31908(int a1, uint64_t *a2, Class a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(a3);
  v9 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  *&v8[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v10 = &v8[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_linkSelectionStrategy];
  *v10 = v9;
  v10[8] = a2;
  v12.receiver = v8;
  v12.super_class = a3;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_24AF319B4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C2358C0](a1, a2, v7);
      sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
    if (sub_24AF3583C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24AF3584C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_24AF3577C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_24AF3578C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

char *sub_24AF31BD8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AF3585C())
  {
    v4 = 0;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = v4;
      if ((a1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = MEMORY[0x24C2359A0](v4++, a1);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_7:
      v7 = v6;
      sub_24AF329AC(v7, v24);

      v20 = v24[6];
      v21 = v24[7];
      v22 = v24[8];
      v23 = v24[9];
      v16 = v24[2];
      v17 = v24[3];
      v18 = v24[4];
      v19 = v24[5];
      v14 = v24[0];
      v15 = v24[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_24AEF543C(0, *(v13 + 2) + 1, 1, v13);
      }

      v10 = *(v13 + 2);
      v9 = *(v13 + 3);
      if (v10 >= v9 >> 1)
      {
        v13 = sub_24AEF543C((v9 > 1), v10 + 1, 1, v13);
      }

      *(v13 + 2) = v10 + 1;
      v11 = &v13[160 * v10];
      *(v11 + 2) = v14;
      *(v11 + 3) = v15;
      *(v11 + 6) = v18;
      *(v11 + 7) = v19;
      *(v11 + 4) = v16;
      *(v11 + 5) = v17;
      *(v11 + 10) = v22;
      *(v11 + 11) = v23;
      *(v11 + 8) = v20;
      *(v11 + 9) = v21;
      if (v4 == i)
      {
        return v13;
      }
    }

    if (v4 >= *(v2 + 16))
    {
      goto LABEL_18;
    }

    v6 = *(a1 + 8 * v4++ + 32);
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24AF31F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AEF9DD0;

  return sub_24AF30568(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AF32010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AEF9DD0;

  return sub_24AF3021C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AF320EC(uint64_t a1)
{
  v3 = *(sub_24AF3521C() - 8);
  v4 = v1[3];
  v15 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 72) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF2F54C(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24AF32250(uint64_t a1)
{
  v3 = *(sub_24AF3521C() - 8);
  v4 = ((*(v3 + 80) + 72) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = v1[3];
  v15 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + v4);
  v12 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF2E60C(a1, v15, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AF323B8(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageContext() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v15 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF2D780(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AF324F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11D0, &qword_24AF3A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF32564(uint64_t a1)
{
  v3 = *(sub_24AF3513C() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 72) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for MessageContext() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = v1[3];
  v20 = v1[2];
  v8 = v1[5];
  v18 = v1[4];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + v4);
  v13 = v1 + v5;
  v14 = *(v1 + v5);
  v15 = *(v13 + 1);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_24AEF9DD0;

  return sub_24AF2C7F4(a1, v20, v19, v18, v8, v9, v10, v11);
}

uint64_t sub_24AF32714(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for MessageContext() - 8);
  v18 = *(v1 + 24);
  v19 = *(v1 + 16);
  v16 = *(v1 + 40);
  v17 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  v13 = v1 + ((*(v4 + 80) + 112) & ~*(v4 + 80));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24AEF9DD0;

  return sub_24AF2B548(a1, v19, v18, v17, v16, v5, v6, v8);
}

uint64_t objectdestroy_10Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AF328D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AEF9DD0;

  return sub_24AF303F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_24AF329AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueID];
  if (v4)
  {

    v5 = [a1 uniqueIDOverride];
    if (v5)
    {

      v6 = [a1 modelIdentifier];
      if (v6)
      {

        v7 = [a1 productName];
        if (v7)
        {

          v8 = [a1 productVersion];
          if (v8)
          {

            v9 = [a1 productBuildVersion];
            if (v9)
            {

              v10 = [a1 name];
              if (v10)
              {

                v11 = [a1 service];
                if (v11)
                {

                  v12 = [a1 uniqueID];
                  if (v12)
                  {
                    v13 = v12;
                    v71 = sub_24AF353AC();
                    v70 = v14;
                  }

                  else
                  {
                    v71 = 0;
                    v70 = 0;
                  }

                  v19 = [a1 uniqueIDOverride];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = sub_24AF353AC();
                    v69 = v22;

                    v23 = [a1 modelIdentifier];
                    if (v23)
                    {
                      v24 = v23;
                      v25 = sub_24AF353AC();
                      v68 = v26;

                      v27 = [a1 productName];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = sub_24AF353AC();
                        v67 = v30;

                        v31 = [a1 productVersion];
                        if (v31)
                        {
                          v32 = v31;
                          v33 = sub_24AF353AC();
                          v66 = v34;

                          v35 = [a1 productBuildVersion];
                          if (v35)
                          {
                            v36 = v35;
                            v37 = sub_24AF353AC();
                            v65 = v38;

                            v39 = [a1 name];
                            if (v39)
                            {
                              v40 = v39;
                              v62 = v29;
                              v63 = v25;
                              v64 = v21;
                              v41 = sub_24AF353AC();
                              v60 = v42;
                              v61 = v41;

                              v43 = [a1 service];
                              if (v43)
                              {
                                v44 = v43;
                                v58 = v37;
                                v59 = v33;
                                v45 = sub_24AF353AC();
                                v56 = v46;
                                v57 = v45;

                                v55 = [a1 isLocallyPaired];
                                v47 = [a1 isActive];
                                v48 = [a1 isNearby];
                                v49 = [a1 isConnected];
                                v50 = IDSCopyIDForDevice();
                                if (v50)
                                {
                                  v51 = v50;
                                  v52 = sub_24AF353AC();
                                  v54 = v53;

                                  *a2 = v71;
                                  *(a2 + 8) = v70;
                                  *(a2 + 16) = v64;
                                  *(a2 + 24) = v69;
                                  *(a2 + 32) = v63;
                                  *(a2 + 40) = v68;
                                  *(a2 + 48) = v62;
                                  *(a2 + 56) = v67;
                                  *(a2 + 64) = v59;
                                  *(a2 + 72) = v66;
                                  *(a2 + 80) = v58;
                                  *(a2 + 88) = v65;
                                  *(a2 + 96) = v61;
                                  *(a2 + 104) = v60;
                                  *(a2 + 112) = v57;
                                  *(a2 + 120) = v56;
                                  *(a2 + 128) = v55;
                                  *(a2 + 129) = v47;
                                  *(a2 + 130) = v48;
                                  *(a2 + 131) = v49;
                                  *(a2 + 136) = 4;
                                  *(a2 + 144) = v52;
                                  *(a2 + 152) = v54;
                                  return;
                                }

                                goto LABEL_33;
                              }

LABEL_32:
                              __break(1u);
LABEL_33:
                              __break(1u);
                              return;
                            }

LABEL_31:
                            __break(1u);
                            goto LABEL_32;
                          }

LABEL_30:
                          __break(1u);
                          goto LABEL_31;
                        }

LABEL_29:
                        __break(1u);
                        goto LABEL_30;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_28;
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_27EFC0728 != -1)
  {
    swift_once();
  }

  v15 = sub_24AF3529C();
  __swift_project_value_buffer(v15, qword_27EFC4C00);
  v16 = sub_24AF3527C();
  v17 = sub_24AF3570C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24AECF000, v16, v17, "Some IDSDevice Properties are found nil", v18, 2u);
    MEMORY[0x24C236490](v18, -1, -1);
  }

  sub_24AF34F0C();
  swift_allocError();
  swift_willThrow();
}

uint64_t DeviceError.hashValue.getter()
{
  sub_24AF35D0C();
  MEMORY[0x24C235D70](0);
  return sub_24AF35D4C();
}

uint64_t Device.uniqueID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Device.uniqueIDOverride.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Device.modelIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Device.productName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Device.productVersion.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Device.productBuildVersion.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Device.name.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t Device.service.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t Device.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

unint64_t sub_24AF33090(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6564496C65646F6DLL;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x56746375646F7270;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x6C6C61636F4C7369;
      break;
    case 9:
      result = 0x6576697463417369;
      break;
    case 10:
      result = 0x79627261654E7369;
      break;
    case 11:
      result = 0x63656E6E6F437369;
      break;
    case 12:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24AF3322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AF34ACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AF33260(uint64_t a1)
{
  v2 = sub_24AF345F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF3329C(uint64_t a1)
{
  v2 = sub_24AF345F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11E0, &qword_24AF3A9A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v43 = v1[3];
  v44 = v10;
  v11 = v1[4];
  v41 = v1[5];
  v42 = v11;
  v12 = v1[6];
  v39 = v1[7];
  v40 = v12;
  v13 = v1[8];
  v37 = v1[9];
  v38 = v13;
  v14 = v1[11];
  v35 = v1[10];
  v36 = v14;
  v15 = v1[13];
  v33 = v1[12];
  v34 = v15;
  v16 = v1[15];
  v31 = v1[14];
  v32 = v16;
  v49 = *(v1 + 128);
  LODWORD(v13) = *(v1 + 129);
  v29 = *(v1 + 130);
  v30 = v13;
  v28 = *(v1 + 131);
  v26 = *(v1 + 136);
  v17 = v1[19];
  v27 = v1[18];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_24AF345F0();
  sub_24AF35D6C();
  v46 = 0;
  v23 = v45;
  sub_24AF35B6C();
  if (!v23)
  {
    v45 = v17;
    v46 = 1;
    sub_24AF35B9C();
    v46 = 2;
    sub_24AF35B9C();
    v46 = 3;
    sub_24AF35B9C();
    v46 = 4;
    sub_24AF35B9C();
    v46 = 5;
    sub_24AF35B9C();
    v46 = 6;
    sub_24AF35B9C();
    v46 = 7;
    sub_24AF35B9C();
    v46 = 8;
    sub_24AF35BAC();
    v46 = 9;
    sub_24AF35BAC();
    v46 = 10;
    sub_24AF35BAC();
    v46 = 11;
    sub_24AF35BAC();
    v46 = v26;
    v47 = v27;
    v48 = v45;
    v50 = 12;
    sub_24AF036CC();

    sub_24AF35BCC();
  }

  return (*(v4 + 8))(v7, v22);
}

uint64_t Device.hash(into:)()
{
  v11 = v0[3];
  v12 = v0[2];
  v13 = v0[5];
  v14 = v0[4];
  v15 = v0[7];
  v16 = v0[6];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[11];
  v20 = v0[10];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[15];
  v1 = *(v0 + 128);
  v2 = *(v0 + 130);
  v3 = *(v0 + 131);
  v4 = *(v0 + 136);
  v9 = v0[19];
  v10 = v0[18];
  if (v0[1])
  {
    v8 = v0[14];
    v5 = *(v0 + 129);
    v6 = *v0;
    sub_24AF35D2C();
    sub_24AF353DC();
  }

  else
  {
    sub_24AF35D2C();
  }

  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF35D2C();
  sub_24AF35D2C();
  sub_24AF35D2C();
  sub_24AF35D2C();
  MEMORY[0x24C235D70](v4);

  return sub_24AF353DC();
}

uint64_t Device.hashValue.getter()
{
  sub_24AF35D0C();
  Device.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t Device.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11E8, &qword_24AF3A9B0);
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v8 = &v33 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF345F0();
  sub_24AF35D5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v62[0]) = 0;
  v49 = sub_24AF35ACC();
  v51 = v11;
  LOBYTE(v62[0]) = 1;
  v12 = sub_24AF35AFC();
  v50 = v13;
  v41 = v12;
  LOBYTE(v62[0]) = 2;
  v14 = sub_24AF35AFC();
  v48 = a1;
  v40 = v14;
  v47 = v15;
  LOBYTE(v62[0]) = 3;
  v39 = sub_24AF35AFC();
  v46 = v16;
  LOBYTE(v62[0]) = 4;
  v38 = sub_24AF35AFC();
  v45 = v17;
  LOBYTE(v62[0]) = 5;
  v37 = sub_24AF35AFC();
  v44 = v18;
  LOBYTE(v62[0]) = 6;
  v36 = sub_24AF35AFC();
  v43 = v19;
  LOBYTE(v62[0]) = 7;
  v35 = sub_24AF35AFC();
  v42 = v20;
  LOBYTE(v62[0]) = 8;
  v34 = sub_24AF35B0C();
  LOBYTE(v62[0]) = 9;
  v21 = sub_24AF35B0C();
  LOBYTE(v62[0]) = 10;
  v22 = sub_24AF35B0C();
  LOBYTE(v62[0]) = 11;
  LODWORD(v48) = sub_24AF35B0C();
  v71 = 12;
  sub_24AF038A8();
  sub_24AF35B2C();
  v23 = v34 & 1;
  LOBYTE(v21) = v21 & 1;
  v22 &= 1u;
  v33 = v48 & 1;
  (*(v10 + 8))(v8, v75);
  v34 = v72;
  v48 = *(&v73 + 1);
  v75 = v73;
  *&v52 = v49;
  *(&v52 + 1) = v51;
  *&v53 = v41;
  *(&v53 + 1) = v50;
  v24 = v47;
  *&v54 = v40;
  *(&v54 + 1) = v47;
  *&v55 = v39;
  *(&v55 + 1) = v46;
  *&v56 = v38;
  *(&v56 + 1) = v45;
  *&v57 = v37;
  *(&v57 + 1) = v44;
  *&v58 = v36;
  *(&v58 + 1) = v43;
  *&v59 = v35;
  *(&v59 + 1) = v42;
  LOBYTE(v60) = v23;
  BYTE1(v60) = v21;
  BYTE2(v60) = v22;
  LOBYTE(v10) = v33;
  BYTE3(v60) = v33;
  BYTE8(v60) = v72;
  v61 = v73;
  v25 = v54;
  v26 = v55;
  v27 = v57;
  a2[4] = v56;
  a2[5] = v27;
  a2[2] = v25;
  a2[3] = v26;
  v28 = v53;
  *a2 = v52;
  a2[1] = v28;
  v29 = v58;
  v30 = v59;
  v31 = v61;
  a2[8] = v60;
  a2[9] = v31;
  a2[6] = v29;
  a2[7] = v30;
  sub_24AEF6984(&v52, v62);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v62[0] = v49;
  v62[1] = v51;
  v62[2] = v41;
  v62[3] = v50;
  v62[4] = v40;
  v62[5] = v24;
  v62[6] = v39;
  v62[7] = v46;
  v62[8] = v38;
  v62[9] = v45;
  v62[10] = v37;
  v62[11] = v44;
  v62[12] = v36;
  v62[13] = v43;
  v62[14] = v35;
  v62[15] = v42;
  v63 = v23;
  v64 = v21;
  v65 = v22;
  v66 = v10;
  v67 = v34;
  *v68 = v74[0];
  *&v68[3] = *(v74 + 3);
  v69 = v75;
  v70 = v48;
  return sub_24AF34644(v62);
}

uint64_t sub_24AF3404C()
{
  sub_24AF35D0C();
  Device.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t sub_24AF34090()
{
  sub_24AF35D0C();
  Device.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t Device.description.getter()
{
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v5 = *v0;
  v6 = v0[1];
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[9];
  sub_24AF34674();
  v3 = sub_24AF35BEC();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](8250, 0xE200000000000000);
  MEMORY[0x24C235440](v1, v2);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AF341BC()
{
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v5 = *v0;
  v6 = v0[1];
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[9];
  v3 = sub_24AF35BEC();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](8250, 0xE200000000000000);
  MEMORY[0x24C235440](v1, v2);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

BOOL _s15FindMyMessaging6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v75 = *(a1 + 72);
  v76 = *(a1 + 64);
  v72 = *(a1 + 80);
  v71 = *(a1 + 88);
  v10 = *(a1 + 112);
  v67 = *(a1 + 104);
  v68 = *(a1 + 96);
  v64 = *(a1 + 120);
  v11 = *(a1 + 128);
  v12 = *(a1 + 129);
  v61 = *(a1 + 130);
  v13 = *(a1 + 131);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v22 = *(a2 + 48);
  v23 = *(a2 + 56);
  v73 = *(a2 + 72);
  v74 = *(a2 + 64);
  v69 = *(a2 + 88);
  v70 = *(a2 + 80);
  v65 = *(a2 + 104);
  v66 = *(a2 + 96);
  v59 = *(a2 + 120);
  v60 = *(a2 + 112);
  v62 = *(a2 + 128);
  v63 = *(a2 + 129);
  v57 = *(a2 + 131);
  v58 = *(a2 + 130);
  v24 = *(a2 + 136);
  v25 = *(a2 + 144);
  v26 = *(a2 + 152);
  if (v3)
  {
    if (!v17)
    {
      return 0;
    }

    v53 = *(a1 + 144);
    v54 = *(a1 + 112);
    v48 = *(a2 + 136);
    v49 = *(a1 + 131);
    v55 = *(a1 + 128);
    v56 = *(a1 + 129);
    v47 = *(a2 + 152);
    v50 = *(a2 + 144);
    v51 = *(a1 + 136);
    v52 = *(a1 + 152);
    if (*a1 != *a2 || v3 != v17)
    {
      v45 = *(a1 + 32);
      v46 = *(a1 + 40);
      v27 = *(a2 + 56);
      v28 = *(a2 + 48);
      v29 = *(a1 + 56);
      v30 = *(a1 + 48);
      v31 = *(a2 + 40);
      v32 = sub_24AF35C4C();
      v21 = v31;
      v7 = v30;
      v9 = v29;
      v22 = v28;
      v23 = v27;
      v5 = v45;
      v8 = v46;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v53 = *(a1 + 144);
    v54 = *(a1 + 112);
    v48 = *(a2 + 136);
    v49 = *(a1 + 131);
    v55 = *(a1 + 128);
    v56 = *(a1 + 129);
    v47 = *(a2 + 152);
    v50 = *(a2 + 144);
    v51 = *(a1 + 136);
    v52 = *(a1 + 152);
    if (v17)
    {
      return 0;
    }
  }

  if (v4 != v18 || v6 != v19)
  {
    v33 = v7;
    v34 = v21;
    v35 = sub_24AF35C4C();
    v21 = v34;
    v7 = v33;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v20 || v8 != v21)
  {
    v36 = v7;
    v37 = sub_24AF35C4C();
    v7 = v36;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v7 != v22 || v9 != v23) && (sub_24AF35C4C() & 1) == 0 || (v76 != v74 || v75 != v73) && (sub_24AF35C4C() & 1) == 0 || (v72 != v70 || v71 != v69) && (sub_24AF35C4C() & 1) == 0 || (v68 != v66 || v67 != v65) && (sub_24AF35C4C() & 1) == 0)
  {
    return 0;
  }

  v38 = v61 ^ v58;
  if (v54 == v60 && v64 == v59)
  {
    result = 0;
    v40 = v52;
    v41 = v53;
    v42 = v51;
    v43 = v50;
    if ((v55 ^ v62 | v56 ^ v63 | v38) & 1) != 0 || ((v49 ^ v57))
    {
      return result;
    }

    return v42 == v48 && (v41 == v43 && v40 == v47 || (sub_24AF35C4C() & 1) != 0);
  }

  v44 = sub_24AF35C4C();
  result = 0;
  if (!((v55 ^ v62) & 1 | ((v44 & 1) == 0) | (v56 ^ v63 | v38) & 1))
  {
    v40 = v52;
    v41 = v53;
    v42 = v51;
    v43 = v50;
    if (((v49 ^ v57) & 1) == 0)
    {
      return v42 == v48 && (v41 == v43 && v40 == v47 || (sub_24AF35C4C() & 1) != 0);
    }
  }

  return result;
}

unint64_t sub_24AF345F0()
{
  result = qword_281392F68[0];
  if (!qword_281392F68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281392F68);
  }

  return result;
}

unint64_t sub_24AF34674()
{
  result = qword_281392F48;
  if (!qword_281392F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F48);
  }

  return result;
}

unint64_t sub_24AF346CC()
{
  result = qword_27EFC11F0;
  if (!qword_27EFC11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC11F0);
  }

  return result;
}

unint64_t sub_24AF34724()
{
  result = qword_281392F50;
  if (!qword_281392F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F50);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24AF347B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AF347FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AF349C8()
{
  result = qword_27EFC11F8;
  if (!qword_27EFC11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC11F8);
  }

  return result;
}

unint64_t sub_24AF34A20()
{
  result = qword_281392F58;
  if (!qword_281392F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F58);
  }

  return result;
}

unint64_t sub_24AF34A78()
{
  result = qword_281392F60;
  if (!qword_281392F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F60);
  }

  return result;
}

uint64_t sub_24AF34ACC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AF378C0 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746375646F7270 && a2 == 0xEE006E6F69737265 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF378E0 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C61636F4C7369 && a2 == 0xEF64657269615079 || (sub_24AF35C4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79627261654E7369 && a2 == 0xE800000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574 || (sub_24AF35C4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 12;
  }

  else
  {
    v6 = sub_24AF35C4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_24AF34F0C()
{
  result = qword_27EFC1200;
  if (!qword_27EFC1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1200);
  }

  return result;
}

uint64_t sub_24AF34F60()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4C00);
  __swift_project_value_buffer(v0, qword_27EFC4C00);
  return sub_24AF3528C();
}