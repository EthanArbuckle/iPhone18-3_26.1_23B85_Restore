uint64_t sub_252C883BC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for HomeStore();
  v1 = static HomeStore.shared.getter();
  v2 = sub_2529D9114();

  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v3 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = static HomeStore.shared.getter();
  v6 = sub_2529D8DC0();

  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 == 1)
  {
    v8 = static HomeStore.shared.getter();
    v9 = sub_2529D8DC0();

    if (v9 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_9;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v9 = sub_2529F846C(0, *(v9 + 16) + 1, 1, v9);
          goto LABEL_42;
        }

        v10 = *(v9 + 32);
      }

      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E08);
      sub_252E379F4();

      v34[0] = 0xD000000000000013;
      v34[1] = 0x8000000252E8F770;
      v12 = sub_2529E8734();
      MEMORY[0x2530AD570](v12);

      sub_252CC3D90(0xD000000000000013, 0x8000000252E8F770, 0xD00000000000008BLL, 0x8000000252E8F6C0);

      v4 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v3 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      goto LABEL_23;
    }
  }

  v13 = static HomeStore.shared.getter();
  memcpy(v34, __dst, sizeof(v34));
  v14 = sub_252BAC7E4();
  v15 = sub_2529F744C(v14);

  if (v15)
  {
    v16 = [*&v15[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] home];
    if (v16)
    {
      v17 = v16;

      v18 = type metadata accessor for Home();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_2529E65BC(v17);

      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544E08);
      v34[0] = 0;
      v34[1] = 0xE000000000000000;
      sub_252E379F4();

      v34[0] = 0xD000000000000017;
      v34[1] = 0x8000000252E8F750;
      v23 = (v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v24 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v25 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v24, v25);

      sub_252CC3D90(v34[0], v34[1], 0xD00000000000008BLL, 0x8000000252E8F6C0);

      v4 = *v23;
      v3 = v23[1];
LABEL_23:

LABEL_35:
      v9 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }
  }

  memcpy(v34, __dst, sizeof(v34));
  if ((sub_252C880F8(v34) & 1) == 0)
  {
    goto LABEL_35;
  }

  memcpy(v34, __dst, sizeof(v34));
  v26 = sub_252A0F454();
  if (!v26)
  {
    goto LABEL_35;
  }

  v27 = v26;
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (sub_252E378C4() == 1)
    {
      goto LABEL_29;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (*(v26 + 16) != 1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v28 = sub_252DA089C(v27);

  if (!v28)
  {
    goto LABEL_35;
  }

  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544E08);
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_252E379F4();

  v34[0] = 0xD00000000000002BLL;
  v34[1] = 0x8000000252E8F690;
  v30 = sub_2529E8734();
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(v34[0], v34[1], 0xD00000000000008BLL, 0x8000000252E8F6C0);

  v4 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v3 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v9 = &unk_2864A7610;
LABEL_36:
  if (!v2)
  {
    return v4;
  }

  if (!v3 || (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) != v4 || v3 != *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8)) && (sub_252E37DB4() & 1) == 0)
  {

    return v4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_42:
  v32 = *(v9 + 16);
  v31 = *(v9 + 24);
  if (v32 >= v31 >> 1)
  {
    v9 = sub_2529F846C((v31 > 1), v32 + 1, 1, v9);
  }

  *(v9 + 16) = v32 + 1;
  *(v9 + v32 + 32) = 0;
  return v4;
}

uint64_t sub_252C88A4C()
{
  v18 = v0;
  memcpy(__dst, *(v0 + 40), sizeof(__dst));
  v1 = sub_252C883BC(__dst);
  v4 = v3;
  if (v2)
  {
    v5 = v1;
    v6 = v2;
    v7 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C290;
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(__dst, v7, sizeof(__dst));

    sub_252E1EBE8(__dst);

    if (!v4)
    {
      v4 = MEMORY[0x277D84F90];
    }

    v9 = sub_252E1F258(v4);

    swift_beginAccess();
    v10 = *(v9 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 64) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2529F7A80(0, *(v10 + 2) + 1, 1, v10);
      *(v9 + 64) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2529F7A80((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[16 * v13];
    *(v14 + 4) = v5;
    *(v14 + 5) = v6;
    *(v9 + 64) = v10;
    swift_endAccess();
    sub_252E1E4F8(v8 + 32);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v15 = *(v0 + 8);

  return v15(v8);
}

BOOL sub_252C88C68(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 80);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 63;
  }

  while (!*(v4 + 16));
  return v3 == 0;
}

void *sub_252C88C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v104 - v9;
  v10 = sub_252E32EE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E32F04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540730, &qword_252E3D920);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v104 - v22;
  if (a4)
  {

    v108 = sub_252A6608C();
  }

  else
  {
    v108 = 0;
  }

  switch(a1)
  {
    case 1:

      v110 = 0x6C7562746867696CLL;
      if (v108)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    case 2:

      v110 = 0xD00000000000001ALL;
      if (v108)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    case 4:

      if (a4 && (, v48 = sub_252A66478(), , (v48 & 1) != 0))
      {
        v49 = 0xD000000000000012;
      }

      else
      {
        v49 = 0xD000000000000010;
      }

      goto LABEL_95;
    case 5:
      goto LABEL_65;
    case 6:
      goto LABEL_33;
    case 7:

      if (a4 && (, v36 = sub_252A66208(), , (v36 & 1) != 0))
      {
        v110 = 0x6C69662E6B636F6CLL;
      }

      else
      {
        v110 = 0x65706F2E6B636F6CLL;
      }

      goto LABEL_96;
    case 19:
      v110 = 0xD000000000000011;

      if (a4)
      {

        sub_252A666E8();
      }

      goto LABEL_96;
    case 23:

      if (a4 && (, v50 = sub_252A66478(), , (v50 & 1) != 0))
      {
        v110 = 0xD000000000000013;
      }

      else
      {
        v110 = 0xD000000000000011;
      }

      goto LABEL_96;
    case 27:

      if (a4)
      {

        v52 = sub_252A66478();

        if (v52)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_94;
    case 28:

      if (a4 && (, v51 = sub_252A66478(), , (v51 & 1) != 0))
      {
LABEL_84:
        v49 = 0xD000000000000016;
      }

      else
      {
LABEL_94:
        v49 = 0xD000000000000014;
      }

LABEL_95:
      v110 = v49;
      goto LABEL_96;
    case 29:
      v110 = 0x69662E6573756F68;
      if (!a3)
      {
        goto LABEL_96;
      }

      type metadata accessor for HomeStore();
      v26 = static HomeStore.shared.getter();
      v19 = sub_2529D9D50();

      v14 = 0xEA00000000006C6CLL;
      if (v19 >> 62)
      {
        v27 = sub_252E378C4();
        v10 = v107;
        if (!v27)
        {
LABEL_161:

          goto LABEL_96;
        }
      }

      else
      {
        v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = v107;
        if (!v27)
        {
          goto LABEL_161;
        }
      }

      v23 = 0;
      v105 = v27;
      v106 = v19 & 0xC000000000000001;
      v11 = v19 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v106)
        {
          v15 = MEMORY[0x2530ADF00](v23, v19);
          v16 = v23 + 1;
          if (!__OFADD__(v23, 1))
          {
            goto LABEL_18;
          }

LABEL_32:
          __break(1u);
LABEL_33:

          sub_252E32EC4();
          sub_252E32EF4();
          (*(v16 + 8))(v19, v15);
          sub_252E32ED4();
          (*(v11 + 8))(v14, v10);
          v34 = sub_252E32EB4();
          v35 = *(v34 - 8);
          if ((*(v35 + 48))(v23, 1, v34) == 1)
          {
            sub_25293847C(v23, &qword_27F540730, &qword_252E3D920);
            goto LABEL_106;
          }

          v10 = sub_252E32EA4();
          v26 = v66;
          (*(v35 + 8))(v23, v34);
          if (v10 == 21825 && v26 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v10 == 23118 && v26 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v10 == 21058 && v26 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v10 == 20035 && v26 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v10 == 19272 && v26 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0)
          {
            goto LABEL_105;
          }

          goto LABEL_154;
        }

        if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          if ((v10 != 20554 || v26 != 0xE200000000000000) && (sub_252E37DB4() & 1) == 0 && (v10 != 21067 || v26 != 0xE200000000000000) && (sub_252E37DB4() & 1) == 0 && (v10 != 19285 || v26 != 0xE200000000000000) && (sub_252E37DB4() & 1) == 0 && (v10 != 21333 || v26 != 0xE200000000000000))
          {
            sub_252E37DB4();

LABEL_106:
            v110 = 0xD00000000000001ELL;
            if ((v108 & 1) == 0)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          }

LABEL_105:

          goto LABEL_106;
        }

        v15 = *(v19 + 8 * v23 + 32);

        v16 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_32;
        }

LABEL_18:
        v28 = sub_252E32E24();
        v26 = v29;
        if (v28 != v10 || v29 != a3)
        {
          v31 = sub_252E37DB4();

          if (v31)
          {
            goto LABEL_111;
          }

          v32 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          v10 = v107;
          if (v32)
          {
            v33 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v107 && v32 == a3;
            if (v33 || (sub_252E37DB4() & 1) != 0)
            {
              goto LABEL_111;
            }
          }

          ++v23;
          if (v16 == v105)
          {
            goto LABEL_161;
          }

          continue;
        }

        break;
      }

LABEL_111:

      v67 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
      v68 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
      v69 = [v68 categoryType];

      v70 = sub_252E36F34();
      v72 = v71;

      v73 = *MEMORY[0x277CCE840];
      if (v70 == sub_252E36F34() && v72 == v74)
      {

        goto LABEL_120;
      }

      v76 = sub_252E37DB4();

      if (v76)
      {
LABEL_120:

        v84 = 0xD00000000000001DLL;
LABEL_121:
        v110 = v84;
        goto LABEL_133;
      }

      v77 = [*(v15 + v67) category];
      v78 = [v77 categoryType];

      v79 = sub_252E36F34();
      v81 = v80;

      v82 = *MEMORY[0x277CCE850];
      if (v79 == sub_252E36F34() && v81 == v83)
      {

        goto LABEL_136;
      }

      v102 = sub_252E37DB4();

      if (v102)
      {
LABEL_136:

        v84 = 0xD000000000000014;
        goto LABEL_121;
      }

LABEL_139:

LABEL_96:
      if (v108)
      {
LABEL_97:
      }

LABEL_98:
      v53 = type metadata accessor for HomeAutomationAccessoryIcon.Builder(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      v56 = swift_allocObject();
      v57 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_name;
      v58 = sub_252E36324();
      v59 = *(*(v58 - 8) + 56);
      v59(v56 + v57, 1, 1, v58);
      v60 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_color;
      v59(v56 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_color, 1, 1, v58);
      v61 = v109;
      sub_252E362F4();
      v59(v61, 0, 1, v58);
      swift_beginAccess();
      sub_252956C98(v61, v56 + v57);
      swift_endAccess();
      sub_252E362F4();
      v59(v61, 0, 1, v58);
      swift_beginAccess();
      sub_252956C98(v61, v56 + v60);
      swift_endAccess();
      v62 = type metadata accessor for HomeAutomationAccessoryIcon(0);
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      return sub_252986A24(v56);
    case 30:
      v110 = 0x69662E6573756F68;
      if (!a3)
      {
        goto LABEL_96;
      }

      type metadata accessor for HomeStore();
      v26 = static HomeStore.shared.getter();
      v37 = sub_2529D9D50();

      if (v37 >> 62)
      {
        v38 = sub_252E378C4();
        v10 = v107;
        if (!v38)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = v107;
        if (!v38)
        {
          goto LABEL_161;
        }
      }

      v39 = 0;
      v105 = v38;
      v106 = v37 & 0xC000000000000001;
      while (2)
      {
        if (v106)
        {
          v40 = MEMORY[0x2530ADF00](v39, v37);
          v41 = v39 + 1;
          if (!__OFADD__(v39, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_153;
          }

          v40 = *(v37 + 8 * v39 + 32);

          v41 = v39 + 1;
          if (!__OFADD__(v39, 1))
          {
LABEL_50:
            v42 = sub_252E32E24();
            v26 = v43;
            if (v42 == v10 && v43 == a3)
            {
            }

            else
            {
              v45 = sub_252E37DB4();

              if ((v45 & 1) == 0)
              {
                v46 = *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
                v10 = v107;
                if (!v46 || (*(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v107 ? (v47 = v46 == a3) : (v47 = 0), !v47 && (sub_252E37DB4() & 1) == 0))
                {

                  ++v39;
                  if (v41 == v105)
                  {
                    goto LABEL_161;
                  }

                  continue;
                }
              }
            }

            v85 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
            v86 = [*(v40 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
            v87 = [v86 categoryType];

            v88 = sub_252E36F34();
            v90 = v89;

            v91 = *MEMORY[0x277CCE858];
            if (v88 == sub_252E36F34() && v90 == v92)
            {
            }

            else
            {
              v94 = sub_252E37DB4();

              if ((v94 & 1) == 0)
              {
                v95 = [*(v40 + v85) category];
                v96 = [v95 categoryType];

                v97 = sub_252E36F34();
                v99 = v98;

                v100 = *MEMORY[0x277CCE848];
                if (v97 == sub_252E36F34() && v99 == v101)
                {
                }

                else
                {
                  v103 = sub_252E37DB4();

                  if ((v103 & 1) == 0)
                  {
                    goto LABEL_139;
                  }
                }

                v110 = 0xD000000000000011;

                goto LABEL_133;
              }
            }

            v110 = 0x69666964696D7568;

LABEL_133:
            if (v108)
            {
              goto LABEL_97;
            }

            goto LABEL_98;
          }
        }

        break;
      }

      __break(1u);
LABEL_65:

      v110 = 0x6564616C626E6166;
      if (v108)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    case 32:

      v110 = 0x656C6B6E69727073;
      if ((v108 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    case 34:

      v24 = v108;
      v25 = 0x746563756166;
      goto LABEL_76;
    case 35:

      v24 = v108;
      v25 = 0x7265776F6873;
LABEL_76:
      v110 = v25 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
      if ((v24 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    case 36:

      v110 = 0x6C6C69662E7674;
      goto LABEL_96;
    case 39:
      v110 = 0xD000000000000011;

      if ((v108 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    case 41:

      v110 = 0x2E7674656C707061;
      goto LABEL_96;
    case 45:

      v110 = 0x6C69662E6B6E6973;
      if ((v108 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    default:
      v110 = 0x69662E6573756F68;

      goto LABEL_96;
  }
}

unint64_t sub_252C8A3B8()
{
  result = qword_27F544880;
  if (!qword_27F544880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544888, qword_252E58630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544880);
  }

  return result;
}

unint64_t sub_252C8A430()
{
  result = qword_27F544890;
  if (!qword_27F544890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544890);
  }

  return result;
}

uint64_t AccessoryTypeSemantic.rawValue.getter()
{
  result = 0x6C7562746867696CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6B636F4C726F6F64;
      break;
    case 2:
      result = 0x6172656D61437069;
      break;
    case 3:
      result = 0x65526172656D6163;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x74656C74756FLL;
      break;
    case 7:
      result = 0x686374697773;
      break;
    case 8:
      result = 0x74736F6D72656874;
      break;
    case 9:
      result = 0x616C6C69746E6576;
      break;
    case 0xA:
      result = 0x73646E696C62;
      break;
    case 0xB:
      result = 0x53636972656E6567;
      break;
    case 0xC:
      result = 0x65536E6F69746F6DLL;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0x79746964696D7568;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    case 0x12:
      v2 = 0x53656B6F6D73;
      goto LABEL_41;
    case 0x13:
      result = 0x53746361746E6F63;
      break;
    case 0x14:
    case 0x15:
      result = 0x657A69726F746F6DLL;
      break;
    case 0x16:
      v2 = 0x53746867696CLL;
LABEL_41:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x17:
      result = 0x636E61707563636FLL;
      break;
    case 0x18:
      result = 0x736E65536B61656CLL;
      break;
    case 0x19:
      result = 0x79726574746162;
      break;
    case 0x1A:
      result = 0x6C6C6542726F6F64;
      break;
    case 0x1B:
      result = 0x6669727550726961;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0x726574616568;
      break;
    case 0x1E:
      result = 0x72656C6F6F63;
      break;
    case 0x1F:
      result = 1952541811;
      break;
    case 0x20:
      result = 0x7974697275636573;
      break;
    case 0x21:
      result = 0x69666964696D7568;
      break;
    case 0x22:
      result = 0x6964696D75686564;
      break;
    case 0x23:
      result = 0xD000000000000011;
      break;
    case 0x24:
      result = 0x5F79616C70726961;
      break;
    case 0x25:
      result = 0x76745F656C707061;
      break;
    case 0x26:
      result = 0x5F74726F70726961;
      break;
    case 0x27:
      result = 0x646F70656D6F68;
      break;
    case 0x28:
      result = 0x5F646F70656D6F68;
      break;
    case 0x29:
      result = 1684099177;
      break;
    case 0x2A:
      result = 0x656E6F685069;
      break;
    case 0x2B:
      result = 0x72656B61657073;
      break;
    case 0x2C:
      result = 0x69736976656C6574;
      break;
    case 0x2D:
      result = 0x6974616769727269;
      break;
    case 0x2E:
      result = 0x654A7265776F6873;
      break;
    case 0x2F:
      result = 0x7265776F6873;
      break;
    case 0x30:
      result = 1802398067;
      break;
    case 0x31:
      result = 0x656C6B6E69727073;
      break;
    case 0x32:
      result = 0xD000000000000012;
      break;
    case 0x33:
      result = 0x706F4D746F626F72;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationInternal::AccessoryTypeSemantic_optional __swiftcall AccessoryTypeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 34;
  switch(v3)
  {
    case 0:
      goto LABEL_50;
    case 1:
      v5 = 1;
      goto LABEL_50;
    case 2:
      v5 = 2;
      goto LABEL_50;
    case 3:
      v5 = 3;
      goto LABEL_50;
    case 4:
      v5 = 4;
      goto LABEL_50;
    case 5:
      v5 = 5;
      goto LABEL_50;
    case 6:
      v5 = 6;
      goto LABEL_50;
    case 7:
      v5 = 7;
      goto LABEL_50;
    case 8:
      v5 = 8;
      goto LABEL_50;
    case 9:
      v5 = 9;
      goto LABEL_50;
    case 10:
      v5 = 10;
      goto LABEL_50;
    case 11:
      v5 = 11;
      goto LABEL_50;
    case 12:
      v5 = 12;
      goto LABEL_50;
    case 13:
      v5 = 13;
      goto LABEL_50;
    case 14:
      v5 = 14;
      goto LABEL_50;
    case 15:
      v5 = 15;
      goto LABEL_50;
    case 16:
      v5 = 16;
      goto LABEL_50;
    case 17:
      v5 = 17;
      goto LABEL_50;
    case 18:
      v5 = 18;
      goto LABEL_50;
    case 19:
      v5 = 19;
      goto LABEL_50;
    case 20:
      v5 = 20;
      goto LABEL_50;
    case 21:
      v5 = 21;
      goto LABEL_50;
    case 22:
      v5 = 22;
      goto LABEL_50;
    case 23:
      v5 = 23;
      goto LABEL_50;
    case 24:
      v5 = 24;
      goto LABEL_50;
    case 25:
      v5 = 25;
      goto LABEL_50;
    case 26:
      v5 = 26;
      goto LABEL_50;
    case 27:
      v5 = 27;
      goto LABEL_50;
    case 28:
      v5 = 28;
      goto LABEL_50;
    case 29:
      v5 = 29;
      goto LABEL_50;
    case 30:
      v5 = 30;
      goto LABEL_50;
    case 31:
      v5 = 31;
      goto LABEL_50;
    case 32:
      v5 = 32;
      goto LABEL_50;
    case 33:
      v5 = 33;
LABEL_50:
      v6 = v5;
      break;
    case 34:
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    default:
      v6 = 52;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static AccessoryTypeSemantic.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = AccessoryTypeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AccessoryTypeSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252C8ACE0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AccessoryTypeSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == AccessoryTypeSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252C8AD7C()
{
  v1 = *v0;
  sub_252E37EC4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C8ADE4()
{
  v2 = *v0;
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252C8AE48()
{
  v1 = *v0;
  sub_252E37EC4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C8AEB8@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryTypeSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C8AEE0(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = AccessoryTypeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AccessoryTypeSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252C8AF7C(char *a1, char *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = AccessoryTypeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AccessoryTypeSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252C8B02C(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = AccessoryTypeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AccessoryTypeSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252C8B0DC(char *a1, char *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = AccessoryTypeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AccessoryTypeSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252C8B238(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C8B514();
  v5 = sub_252C8B568();
  v6 = sub_252C8B5BC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252C8B2AC()
{
  result = qword_27F544898;
  if (!qword_27F544898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544898);
  }

  return result;
}

unint64_t sub_252C8B304()
{
  result = qword_27F5448A0;
  if (!qword_27F5448A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540998, &qword_252E3DF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5448A0);
  }

  return result;
}

unint64_t sub_252C8B36C()
{
  result = qword_27F5448A8;
  if (!qword_27F5448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5448A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryTypeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryTypeSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252C8B514()
{
  result = qword_27F5448B0;
  if (!qword_27F5448B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5448B0);
  }

  return result;
}

unint64_t sub_252C8B568()
{
  result = qword_27F5448B8;
  if (!qword_27F5448B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5448B8);
  }

  return result;
}

unint64_t sub_252C8B5BC()
{
  result = qword_27F5448C0;
  if (!qword_27F5448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5448C0);
  }

  return result;
}

uint64_t sub_252C8B614(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E34014();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C8B6D8, 0, 0);
}

uint64_t sub_252C8B6D8()
{
  v1 = v0[3];
  v0[8] = sub_252B4F670();
  v2 = sub_252C2C068();
  v3 = v2;
  v22 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
LABEL_4:
  v0[9] = v7;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = sub_252DA124C(0);

    ++v6;
    if (v11)
    {
      MEMORY[0x2530AD700]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v7 = v22;
      v6 = v10;
      goto LABEL_4;
    }
  }

  v13 = v0[7];
  v14 = v0[4];

  v15 = *(v14 + 48);
  __swift_project_boxed_opaque_existential_1((v14 + 24), v15);
  v16 = swift_task_alloc();
  v0[10] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v7;
  sub_252AD7CC4();
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_252C8B920;
  v18 = v0[7];
  v19 = v0[2];

  return sub_252BDB88C(v19, &unk_252E58A08, v16, v18, 0, 0, 0, v15);
}

uint64_t sub_252C8B920()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = sub_252C8BB34;
  }

  else
  {
    v10 = *(v2 + 80);

    v9 = sub_252C8BAC8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252C8BAC8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C8BB34()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3();
}

uint64_t sub_252C8BBAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C8BBCC, 0, 0);
}

uint64_t sub_252C8BBCC()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25299F248;
  v4 = v0[3];

  return sub_252C0FFE0(0, v2, v4);
}

void *sub_252C8BCC4@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncInProgressResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

uint64_t sub_252C8BD04(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C8B614(a1, a2);
}

BOOL sub_252C8BDB0()
{
  v0 = sub_252B4F670();
  v1 = sub_252C285CC();
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v3 = sub_252C285CC();
    v4 = v3;
    v22 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      break;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }

LABEL_5:
    v21 = i;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (sub_252DA5218())
      {
        sub_252E37A94();
        v10 = *(v22 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v6;
      if (v9 == v5)
      {
        i = v21;
        v11 = v22;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = sub_252E378C4();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_20:
  v11 = MEMORY[0x277D84F90];
LABEL_21:

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  v13 = sub_252C285CC();
  if (v13 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = sub_252C2C068();
  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = sub_252C2F554();
  if (v17 >> 62)
  {
    v18 = sub_252E378C4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = 0;
  if (!v18 && i)
  {
    return !v12 && v14 == v16;
  }

  return result;
}

uint64_t sub_252C8C044()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C8BBAC(v2, v3);
}

void sub_252C8C0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[5];
  v3[4] = a1;
  v3[5] = a2;

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v5)
  {
    v6 = v5;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E8FC60);
    MEMORY[0x2530AD570](v3[2], v3[3]);
    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E8FB90);

    v8 = v6;
    v10 = sub_252E36F04();
    CFNotificationCenterAddObserver(v8, v3, sub_252C8C31C, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D60);
    sub_252CC4050(0xD000000000000032, 0x8000000252E8FC00, 0xD00000000000006FLL, 0x8000000252E8FB90, 0xD000000000000012, 0x8000000252E8FC40, 28);
  }
}

void sub_252C8C31C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_252C8C588(a2, a3);
}

uint64_t sub_252C8C39C()
{
  v1 = v0;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    v3 = v2;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E8FB50);
    MEMORY[0x2530AD570](v0[2], v0[3]);
    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E8FB90);

    v5 = v3;
    v6 = sub_252E36F04();
    CFNotificationCenterRemoveObserver(v5, v1, v6, 0);
  }

  v7 = v1[5];
  v1[4] = GEOLocationCoordinate2DMake;
  v1[5] = 0;
}

uint64_t sub_252C8C524()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_252C8C588(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D60);
    v11 = 0xD00000000000004ALL;
    v12 = 0x8000000252E8FCA0;
    v13 = 34;
    goto LABEL_14;
  }

  if (!a2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);
    v11 = 0xD000000000000054;
    v12 = 0x8000000252E8FCF0;
    v13 = 38;
LABEL_14:
    sub_252CC4050(v11, v12, 0xD00000000000006FLL, 0x8000000252E8FB90, 0xD000000000000012, 0x8000000252E8FC40, v13);
    return;
  }

  v3 = qword_27F53F4E8;
  v4 = a2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E8FD50);
  v6 = sub_252E36F34();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E8FB90);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v9);
}

uint64_t HomeAttributeStateType.description.getter(uint64_t a1)
{
  result = 0x646570706F7473;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      return result;
    case 2:
      result = 0x676E696E6E7572;
      break;
    case 3:
      result = 0x646573756170;
      break;
    case 4:
      result = 0x43676E696B656573;
      break;
    case 5:
      result = 0x676E696772616863;
      break;
    case 6:
      result = 0x64656B636F64;
      break;
    case 7:
      result = 0x726F727265;
      break;
    case 8:
      result = 0x6B63757473;
      break;
    case 9:
      result = 0x6574746142776F6CLL;
      break;
    case 10:
      result = 0x4D6E694274737564;
      break;
    case 11:
      result = 0x466E694274737564;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E61547265746177;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x64656D75736572;
      break;
    default:
      result = sub_252E37DF4();
      __break(1u);
      break;
  }

  return result;
}

void *sub_252C8CA50()
{
  result = sub_252CC7570(&unk_2864AEA80);
  off_27F5448C8 = result;
  return result;
}

uint64_t sub_252C8CA78(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438) - 8) + 64) + 15;
  v2[93] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B0, &qword_252E4E440);
  v2[94] = v4;
  v5 = *(v4 - 8);
  v2[95] = v5;
  v6 = *(v5 + 64) + 15;
  v2[96] = swift_task_alloc();
  v7 = sub_252E33DE4();
  v2[97] = v7;
  v8 = *(v7 - 8);
  v2[98] = v8;
  v9 = *(v8 + 64) + 15;
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C8CBE8, 0, 0);
}

uint64_t sub_252C8CBE8()
{
  v96 = v0;
  v1 = *(v0 + 736);
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state;
  if (!*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state))
  {
    sub_252B680FC();
    v8 = sub_252B64884();

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();
    *(v0 + 688) = 0;
    *(v0 + 696) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E8FF80);
    *(v0 + 808) = v8;
    sub_252E37AE4();
    sub_252CC3D90(*(v0 + 688), *(v0 + 696), 0xD00000000000007ELL, 0x8000000252E8FE30);

    if (v8 == 6)
    {
      v10 = *(v0 + 728);
    }

    else
    {
      v13 = *(v0 + 736);
      v14 = *(v13 + 16);
      v15 = sub_252C8E160(v14, v8);

      v16 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent);
      *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent) = v15;
      v17 = v15;

      if (v15)
      {
        v18 = *(v0 + 736);
        sub_252CC3D90(0xD000000000000023, 0x8000000252E8FFA0, 0xD00000000000007ELL, 0x8000000252E8FE30);
        *(v1 + v2) = 1;
        if (*(v18 + 408) == 22)
        {
          v89 = 0;
        }

        else
        {
          LOBYTE(__src[0]) = *(v18 + 408);
          v89 = sub_252AB54DC();
        }

        v72 = *(v0 + 736);
        v94 = *(v0 + 728);
        v73 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        swift_beginAccess();
        v74 = *(v73 + 22);

        v75 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v75 + 136), v0 + 520);

        v76 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

        v77 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
        *(v0 + 584) = v77;
        *(v0 + 592) = &off_2864BA730;
        *(v0 + 560) = v76;
        type metadata accessor for ControlHomePromptForConfirmationStrategy();
        v78 = swift_allocObject();
        v79 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 560, v77);
        v80 = *(v77 - 8);
        v81 = *(v80 + 64) + 15;
        v82 = swift_task_alloc();
        (*(v80 + 16))(v82, v79, v77);
        v83 = *v82;
        v78[12] = v77;
        v78[13] = &off_2864BA730;
        v78[8] = 0;
        v78[9] = v83;
        v78[14] = v89;
        v78[2] = v74;
        sub_252927BEC((v0 + 520), (v78 + 3));
        __swift_destroy_boxed_opaque_existential_1((v0 + 560));

        v84 = v17;

        v85 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v85 + 96), v0 + 600);

        *(v0 + 712) = v84;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5448F8, &unk_252E58BB0);
        v87 = *(v86 + 48);
        v88 = *(v86 + 52);
        swift_allocObject();
        sub_252C8F4F8(&qword_27F540418, type metadata accessor for ControlHomePromptForConfirmationStrategy);
        *(v0 + 720) = sub_252E333C4();
        sub_252C8F548();

        sub_252E33AC4();

        goto LABEL_32;
      }

      v60 = *(v0 + 728);
      sub_252E379F4();

      __src[0] = 0xD000000000000029;
      __src[1] = 0x8000000252E8FEE0;
      v61 = *(v13 + 16);
      v62 = [v61 description];
      v63 = sub_252E36F34();
      v65 = v64;

      MEMORY[0x2530AD570](v63, v65);

      sub_252CC4050(0xD000000000000029, 0x8000000252E8FEE0, 0xD00000000000007ELL, 0x8000000252E8FE30, 0x2865747563657865, 0xE900000000000029, 82);
    }

    goto LABEL_31;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state) != 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 728);
    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8FE10, 0xD00000000000007ELL, 0x8000000252E8FE30);
    goto LABEL_31;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    *(v6 + 32) = 25705;
    v7 = v6 + 32;
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    sub_252CC630C(v6);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v90 = v2;
  v91 = v1;
  v19 = [objc_opt_self() sharedAnalytics];
  if (v19)
  {
    v20 = v19;

    sub_252CC1408(v21);

    v22 = sub_252E36E24();

    [v20 logEventWithType:6503 context:v22];
  }

  v23 = *(v0 + 800);
  v24 = *(v0 + 792);
  v25 = *(v0 + 784);
  v26 = *(v0 + 776);
  v27 = *(v0 + 736);
  v28 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
  swift_beginAccess();
  v93 = *(v25 + 16);
  v93(v23, v27 + v28, v26);
  (*(v25 + 104))(v24, *MEMORY[0x277D5BED8], v26);
  v29 = sub_252E33DD4();
  v30 = *(v25 + 8);
  v30(v24, v26);
  v30(v23, v26);
  if ((v29 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 800);
    v50 = *(v0 + 776);
    v92 = *(v0 + 728);
    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544DA8);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8FEB0);
    v93(v49, v27 + v28, v50);
    sub_252C8F4F8(&qword_27F5448F0, MEMORY[0x277D5BEE0]);
    v52 = sub_252E37D94();
    MEMORY[0x2530AD570](v52);

    v30(v49, v50);
    MEMORY[0x2530AD570](0x6E6974697865202CLL, 0xEE00776F6C662067);
    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E8FE30);

    goto LABEL_31;
  }

  v31 = *(v0 + 736);
  v32 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent);
  if (!v32)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
      v31 = *(v0 + 736);
    }

    v53 = *(v0 + 728);
    v54 = sub_252E36AD4();
    __swift_project_value_buffer(v54, qword_27F544DA8);
    sub_252E379F4();

    __src[0] = 0xD000000000000029;
    __src[1] = 0x8000000252E8FEE0;
    v55 = *(v31 + 16);
    v56 = [v55 description];
    v57 = sub_252E36F34();
    v59 = v58;

    MEMORY[0x2530AD570](v57, v59);

    sub_252CC4050(0xD000000000000029, 0x8000000252E8FEE0, 0xD00000000000007ELL, 0x8000000252E8FE30, 0x2865747563657865, 0xE900000000000029, 101);

LABEL_31:
    sub_252E33B24();
    goto LABEL_32;
  }

  _s7BuilderCMa_1();
  swift_allocObject();
  *(sub_252E1E238() + 25) = 0;
  v33 = v32;
  sub_252E1E4F8(__src);

  memcpy((v0 + 16), __src, 0x1F8uLL);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 768);
  v35 = *(v0 + 744);
  v36 = sub_252E36AD4();
  __swift_project_value_buffer(v36, qword_27F544DA8);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E8FF10);
  v37 = [v33 description];
  v38 = sub_252E36F34();
  v40 = v39;

  MEMORY[0x2530AD570](v38, v40);

  sub_252CC3D90(__src[0], __src[1], 0xD00000000000007ELL, 0x8000000252E8FE30);

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();

  memcpy(__src, (v0 + 16), 0x1F8uLL);
  v41 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v41);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E8FF50, 0xD00000000000007ELL, 0x8000000252E8FE30);

  *(v91 + v90) = 2;
  type metadata accessor for ControlHomeRCHStrategyAsync();
  *(v0 + 704) = swift_allocObject();
  sub_252B79980((v0 + 16), v35);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437D0, &qword_252E4E458);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_252E335D4();
  sub_252C8F4F8(&qword_27F5437D8, type metadata accessor for ControlHomeRCHStrategyAsync);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 768);
  v46 = *(v0 + 760);
  v47 = *(v0 + 752);
  v48 = *(v0 + 728);
  sub_252E33A34();
  (*(v46 + 8))(v45, v47);
  sub_252E33B14();

  sub_252935408(v0 + 16);

LABEL_32:
  v66 = *(v0 + 800);
  v67 = *(v0 + 792);
  v68 = *(v0 + 768);
  v69 = *(v0 + 744);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_252C8DA30(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_252E33DE4();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544908, &unk_252E58BC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540410, qword_252E54EA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v12 + 88))(v15, v11) != *MEMORY[0x277D5BC38])
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v12 + 96))(v15, v11);
  (*(v17 + 32))(v20, v15, v16);
  sub_252E33D94();
  (*(v17 + 8))(v20, v16);
  v21 = v27;
  if ((*(v27 + 48))(v6, 1, v7) == 1)
  {
    return sub_25293847C(v6, &qword_27F540780, &unk_252E50210);
  }

  (*(v21 + 32))(v10, v6, v7);
  v23 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
  v24 = v26;
  swift_beginAccess();
  (*(v21 + 24))(v24 + v23, v10, v7);
  swift_endAccess();
  return (*(v21 + 8))(v10, v7);
}

uint64_t sub_252C8DDD4()
{
  memcpy(v8, v0 + 3, 0x1F8uLL);
  sub_252935408(v8);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
  v4 = sub_252E33DE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlHomeFollowUpFlow()
{
  result = qword_27F5448D8;
  if (!qword_27F5448D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252C8DF30()
{
  result = sub_252E34104();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_252E33DE4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_252C8E034()
{
  result = qword_27F5448E8;
  if (!qword_27F5448E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5448E8);
  }

  return result;
}

uint64_t sub_252C8E088(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C8CA78(a1);
}

uint64_t sub_252C8E124()
{
  type metadata accessor for ControlHomeFollowUpFlow();

  return sub_252E33644();
}

uint64_t sub_252C8E160(unint64_t a1, char a2)
{
  LOBYTE(v138) = a2;
  if (qword_27F53F500 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DA8);
    sub_252E379F4();

    v143[0] = 0xD000000000000010;
    v143[1] = 0x8000000252E8FFD0;
    v4 = [a1 description];
    v5 = sub_252E36F34();
    v7 = v6;

    MEMORY[0x2530AD570](v5, v7);

    sub_252CC4050(0xD000000000000010, 0x8000000252E8FFD0, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, 142);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AD8, &unk_252E58BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E53770;
    *(inited + 32) = 0;
    v9 = type metadata accessor for HomeAttributeValue();
    v10 = objc_allocWithZone(v9);
    v11 = sub_252E36F04();
    v12 = [v10 initWithIdentifier:0 displayString:v11];

    v13 = v12;
    [v13 setBoolValue_];
    [v13 setType_];

    *(inited + 40) = v13;
    *(inited + 48) = 1;
    v14 = objc_allocWithZone(v9);
    v15 = sub_252E36F04();
    v16 = [v14 initWithIdentifier:0 displayString:v15];

    v17 = v16;
    [v17 setBoolValue_];
    [v17 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 56) = v17;
    *(inited + 64) = 46;
    *(inited + 72) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
    *(inited + 80) = 49;
    *(inited + 88) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
    *(inited + 96) = 47;
    *(inited + 104) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
    *(inited + 112) = 48;
    *(inited + 120) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
    *(inited + 128) = 50;
    *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
    *(inited + 144) = 5;
    v18 = objc_allocWithZone(v9);
    v19 = sub_252E36F04();
    v20 = [v18 initWithIdentifier:0 displayString:v19];

    v21 = v20;
    [v21 setBoolValue_];
    [v21 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 152) = v21;
    *(inited + 160) = 6;
    v22 = objc_allocWithZone(v9);
    v23 = sub_252E36F04();
    v24 = [v22 initWithIdentifier:0 displayString:v23];

    v25 = v24;
    [v25 setBoolValue_];
    [v25 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 168) = v25;
    *(inited + 176) = 9;
    v26 = objc_allocWithZone(v9);
    v27 = sub_252E36F04();
    v28 = [v26 initWithIdentifier:0 displayString:v27];

    v29 = v28;
    [v29 setBoolValue_];
    [v29 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 184) = v29;
    *(inited + 192) = 10;
    v30 = objc_allocWithZone(v9);
    v31 = sub_252E36F04();
    v32 = [v30 initWithIdentifier:0 displayString:v31];

    v33 = v32;
    [v33 setBoolValue_];
    [v33 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 200) = v33;
    v140 = sub_252CC5AB4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE0, &qword_252E419E8);
    swift_arrayDestroy();
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_252E3C3C0;
    *(v34 + 32) = 9;
    v35 = objc_allocWithZone(v9);
    v36 = sub_252E36F04();
    v37 = [v35 initWithIdentifier:0 displayString:v36];

    v38 = v37;
    [v38 setIntegerValue_];
    [v38 setUnit_];
    [v38 &:4 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(v34 + 40) = v38;
    *(v34 + 48) = 10;
    v39 = objc_allocWithZone(v9);
    v40 = sub_252E36F04();
    v41 = [v39 initWithIdentifier:0 displayString:v40];

    v42 = v41;
    v43 = a1;
    [v42 setIntegerValue_];
    [v42 setUnit_];
    [v42 &:4 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(v34 + 56) = v42;
    v44 = sub_252CC5AB4(v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    v45 = MEMORY[0x277D84F90];
    v144 = MEMORY[0x277D84F90];
    v46 = [a1 filters];
    if (!v46)
    {

      goto LABEL_13;
    }

    v47 = v46;
    type metadata accessor for HomeFilter();
    v48 = sub_252E37264();

    v139 = [a1 userTask];
    if (!v139)
    {

      goto LABEL_13;
    }

    switch(v138)
    {
      case 3u:

        sub_252B680FC();
        sub_252B65874(v143);

        v63 = LOBYTE(v143[0]);
        if (LOBYTE(v143[0]) == 77)
        {

          v64 = 0xD000000000000037;
          v65 = 0x8000000252E90010;
          v66 = 173;
LABEL_89:
          sub_252CC4050(v64, v65, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, v66);

          return 0;
        }

        v98 = sub_252B680FC();
        swift_beginAccess();
        v99 = *(v98 + 32);
        if (!(v99 >> 62))
        {
          result = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_55;
          }

LABEL_88:

          v64 = 0xD000000000000029;
          v65 = 0x8000000252E90110;
          v66 = 178;
          goto LABEL_89;
        }

        if (v99 < 0)
        {
          v137 = *(v98 + 32);
        }

        result = sub_252E378C4();
        if (!result)
        {
          goto LABEL_88;
        }

LABEL_55:
        v100 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
        }

        else if ((v99 & 0xC000000000000001) == 0)
        {
          if ((v100 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v100 < *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v101 = *(v99 + 8 * v100 + 32);

            goto LABEL_60;
          }

          __break(1u);
          return result;
        }

        v101 = MEMORY[0x2530ADF00](v100, v99);

LABEL_60:
        v102 = sub_252C32060();
        if (v102)
        {
          v103 = v102;
          v104 = [v43 userTask];
          if (v104)
          {
            v105 = v104;
            v106 = [v104 attribute];

            if (v106 == 9)
            {
              if (*(v44 + 16))
              {
                v107 = sub_252A4509C(v63);
                if (v108)
                {
                  v109 = v107;

                  v110 = v109;
LABEL_72:
                  v117 = *(*(v44 + 56) + 8 * v110);

                  type metadata accessor for ControlHomeIntent.Builder();
                  swift_allocObject();
                  v118 = v117;
                  v119 = ControlHomeIntent.Builder.init()();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544910, &unk_252E58BE0);
                  v120 = swift_allocObject();
                  *(v120 + 16) = xmmword_252E3C290;
                  *(v120 + 32) = v103;
                  v121 = *(*v119 + 208);
                  v122 = v103;
                  v123 = v121(v120);

                  v124 = (*(*v123 + 192))(1, v106, v117);

                  v43 = (*(*v124 + 224))(v125);

                  return v43;
                }
              }
            }

            if (*(v140 + 16))
            {
              v110 = sub_252A4509C(v63);
              if (v116)
              {
                v44 = v140;
                goto LABEL_72;
              }
            }

            v126 = 0xD00000000000002CLL;
            v127 = 0x8000000252E900A0;
            v128 = 201;
          }

          else
          {

            v126 = 0xD000000000000033;
            v127 = 0x8000000252E900D0;
            v128 = 188;
          }

          sub_252CC4050(v126, v127, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, v128);

          return 0;
        }

        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E90050);
        v112 = [v101 description];
        v113 = sub_252E36F34();
        v115 = v114;

        MEMORY[0x2530AD570](v113, v115);

        sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, 183);

LABEL_13:

        return 0;
      case 4u:

        v62 = a1;
        return v43;
      case 5u:

        if (sub_252C6E240(a1) == 2)
        {
          v49 = 70.0;
        }

        else
        {
          v49 = 21.0;
        }

        v50 = sub_252C6E240(a1);
        v51 = objc_allocWithZone(v9);
        v52 = sub_252E36F04();
        v53 = [v51 initWithIdentifier:0 displayString:v52];

        v54 = v53;
        [v54 setDoubleValue_];
        [v54 setUnit_];
        [v54 setType_];

        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v55 = ControlHomeIntent.Builder.init()();
        v56 = sub_252B4EEFC(v48);

        v57 = (*(*v55 + 208))(v56);

        v58 = *(*v57 + 192);
        v59 = v54;
        v60 = v58(1, 6, v54);

        v43 = (*(*v60 + 224))();
        goto LABEL_84;
    }

    v143[0] = v45;
    if (v48 >> 62)
    {
      goto LABEL_81;
    }

    v67 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v67)
    {
      break;
    }

LABEL_21:
    a1 = 0;
    v142 = v48 & 0xC000000000000001;
    v141 = v67;
    while (1)
    {
      if (v142)
      {
        v68 = MEMORY[0x2530ADF00](a1, v48);
      }

      else
      {
        if (a1 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v68 = *(v48 + 8 * a1 + 32);
      }

      v69 = v68;
      v70 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v71 = [v68 isExcludeFilter];
      sub_252956D08();
      v72 = sub_252E37674();
      v73 = v72;
      if (v71)
      {
        v74 = sub_252E37694();

        if (v74)
        {
          sub_252E37A94();
          v75 = *(v143[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v67 = v141;
      }

      else
      {
      }

      ++a1;
      if (v70 == v67)
      {
        v76 = 0;
        v138 = v143[0];
        v77 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v142)
          {
            v78 = MEMORY[0x2530ADF00](v76, v48);
          }

          else
          {
            if (v76 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v78 = *(v48 + 8 * v76 + 32);
          }

          v79 = v78;
          v80 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            v67 = sub_252E378C4();
            if (!v67)
            {
              goto LABEL_82;
            }

            goto LABEL_21;
          }

          v81 = [v78 isExcludeFilter];
          v82 = sub_252E37674();
          v83 = v82;
          if (!v81)
          {
            break;
          }

          v84 = sub_252E37694();

          if ((v84 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_36:
          ++v76;
          if (v80 == v141)
          {
            v111 = v138;
            goto LABEL_83;
          }
        }

LABEL_46:
        if (qword_27F53F478 != -1)
        {
          swift_once();
        }

        v85 = off_27F5448C8;
        v86 = [v139 attribute];
        if (!v85[2] || (v87 = sub_252A488EC(v86), (v88 & 1) == 0))
        {

          return 0;
        }

        v89 = *(v85[7] + 8 * v87);
        type metadata accessor for HomeFilter.Builder();
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        *(v90 + 32) = 0;
        *(v90 + 40) = 7;
        *(v90 + 48) = 0u;
        *(v90 + 64) = 0u;
        *(v90 + 80) = 0u;
        *(v90 + 96) = 0u;
        *(v90 + 112) = 0u;
        *(v90 + 128) = 0u;
        *(v90 + 144) = 0u;
        *(v90 + 160) = 0u;
        *(v90 + 175) = 0;
        v91 = v79;
        v92 = sub_252B72040(v79);

        v93 = (*(*v92 + 624))(v89);

        v95 = (*(*v93 + 760))(v94);

        v96 = v95;
        MEMORY[0x2530AD700]();
        if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v97 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v77 = v144;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_82:
  v111 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
LABEL_83:

  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v129 = ControlHomeIntent.Builder.init()();
  v143[0] = v77;
  sub_25297A8D8(v111);
  v130 = sub_252B4EEFC(v77);

  v131 = (*(*v129 + 208))(v130);

  v132 = objc_allocWithZone(v9);
  v133 = sub_252E36F04();
  v134 = [v132 initWithIdentifier:0 displayString:v133];

  v135 = v134;
  [v135 setBoolValue_];
  [v135 setType_];

  v136 = (*(*v131 + 192))(1, 27, v135);

  v43 = (*(*v136 + 224))();
LABEL_84:

  return v43;
}

uint64_t sub_252C8F4F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252C8F548()
{
  result = qword_27F544900;
  if (!qword_27F544900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5448F8, &unk_252E58BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544900);
  }

  return result;
}

unint64_t sub_252C8F5AC(uint64_t a1)
{
  v2 = v1;
  if ([v1 taskType] != 1)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544CB8);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E90140);
    [v1 taskType];
    sub_252E37AE4();
    goto LABEL_36;
  }

  v4 = [v1 attribute];
  if (v4 > 19)
  {
    if (v4 != 20 && v4 != 47)
    {
LABEL_22:
      result = sub_252C8FB10(a1, v1);
      if (result)
      {
        v21 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        result = swift_allocObject();
        *(result + 16) = xmmword_252E3C130;
        *(result + 32) = v21;
      }

      return result;
    }

    v30 = MEMORY[0x277D84F90];
    v13 = sub_252C8FB10(a1, v1);
    if (v13)
    {
      v14 = v13;
      v15 = sub_252C9045C(a1);
      if (v15)
      {
LABEL_26:
        v23 = v15;
        v24 = v14;
        MEMORY[0x2530AD700]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v25 = v23;
        MEMORY[0x2530AD700]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        return v30;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    v31 = 0xD000000000000011;
    v32 = 0x8000000252E901F0;
    v17 = HomeAttributeType.description.getter([v2 attribute]);
    MEMORY[0x2530AD570](v17);

    v18 = "Unable to obtain ";
    v19 = 0xD00000000000001DLL;
    goto LABEL_35;
  }

  if (v4 == 2)
  {
    v30 = MEMORY[0x277D84F90];
    v22 = sub_252C8FB10(a1, v1);
    if (v22)
    {
      v14 = v22;
      v15 = sub_252C9016C(a1);
      if (v15)
      {
        goto LABEL_26;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544CB8);
    sub_252E379F4();

    v31 = 0xD000000000000011;
    v32 = 0x8000000252E901F0;
    v27 = HomeAttributeType.description.getter([v2 attribute]);
    MEMORY[0x2530AD570](v27);

    v18 = " and active actions from task";
    v19 = 0xD00000000000001CLL;
LABEL_35:
    MEMORY[0x2530AD570](v19, v18 | 0x8000000000000000);
LABEL_36:
    sub_252CC3D90(v31, v32, 0xD00000000000007BLL, 0x8000000252E90170);

    return 0;
  }

  if (v4 != 5)
  {
    goto LABEL_22;
  }

  sub_252B680FC();
  sub_252B66D6C(&v31);

  if (v31 == 709 || (v5 = sub_252C56114(), !v6) || (v7 = COERCE_DOUBLE(sub_252C5C088(v5, v6)), (v10 & 1) != 0))
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000023, 0x8000000252E90250, 0xD00000000000007BLL, 0x8000000252E90170);
    return 0;
  }

  return sub_252D3AEFC(a1, v7, v8, v9);
}

id sub_252C8FB10(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = sub_252DE8C4C(a2, a1);
  if (!v5)
  {
LABEL_18:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544CB8);
    sub_252E379F4();

    v21 = [v2 description];
    v22 = sub_252E36F34();
    v24 = v23;

    MEMORY[0x2530AD570](v22, v24);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E902F0, 0xD00000000000007BLL, 0x8000000252E90170);
    goto LABEL_46;
  }

  v6 = v4;
  v7 = v5;
  v8 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v9 = sub_252E37264();

  v36 = v2;
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_43:

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E90320);
    v35 = sub_252CDBB90();
    MEMORY[0x2530AD570](v35);

    MEMORY[0x2530AD570](0x7974206874697720, 0xEC000000203A6570);
    MEMORY[0x2530AD570](v6, v7);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E90170);
LABEL_46:

    return 0;
  }

LABEL_4:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2530ADF00](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_42:
        v10 = sub_252E378C4();
        if (!v10)
        {
          goto LABEL_43;
        }

        goto LABEL_4;
      }

      v12 = *(v9 + 8 * v11 + 32);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }
    }

    v14 = v12;
    v15 = [v12 characteristicType];
    v16 = sub_252E36F34();
    v18 = v17;

    if (v16 == v6 && v7 == v18)
    {

      goto LABEL_23;
    }

    v2 = sub_252E37DB4();

    if (v2)
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_43;
    }
  }

LABEL_23:

  sub_252DE6090(v36, &v38);
  if (!*(&v39 + 1))
  {
    sub_252982F10(&v38);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543558, &unk_252E4D230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v40 = 0;
    goto LABEL_29;
  }

  v25 = v40;
  if (v40)
  {
    goto LABEL_37;
  }

LABEL_29:
  v26 = [v36 value];
  if (!v26)
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_35;
  }

  v27 = v26;
  sub_252D09214(&v38);

  if (!*(&v39 + 1))
  {
LABEL_35:
    sub_252982F10(&v38);
    v29 = 0;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543558, &unk_252E4D230);
  v28 = swift_dynamicCast();
  v29 = v37;
  if (!v28)
  {
    v29 = 0;
  }

LABEL_36:
  v40 = v29;
  swift_unknownObjectRelease();
  v25 = v40;
  if (v40)
  {
LABEL_37:
    v30 = [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v14 targetValue:v25];

    swift_unknownObjectRelease();
    return v30;
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544CB8);
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_252E379F4();

  strcpy(&v38, "Unable to map ");
  HIBYTE(v38) = -18;
  [v36 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v33 = sub_252E36F94();
  MEMORY[0x2530AD570](v33);

  MEMORY[0x2530AD570](0x20776172206F7420, 0xEE002E65756C6176);
  sub_252CC3D90(v38, *(&v38 + 1), 0xD00000000000007BLL, 0x8000000252E90170);

  swift_unknownObjectRelease();
  return 0;
}

id sub_252C9016C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = *MEMORY[0x277CCF9F0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (v10 == sub_252E36F34() && v12 == v13)
      {

LABEL_17:

        v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v17 = [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v7 targetValue:v16];

        return v17;
      }

      v15 = sub_252E37DB4();

      if (v15)
      {
        goto LABEL_17;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CB8);
  sub_252E379F4();

  v20 = sub_252CDBB90();
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(0xD000000000000030, 0x8000000252E90280, 0xD00000000000007BLL, 0x8000000252E90170);

  return 0;
}

id sub_252C9045C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = *MEMORY[0x277CCF748];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (v10 == sub_252E36F34() && v12 == v13)
      {

LABEL_17:

        v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v17 = [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v7 targetValue:v16];

        return v17;
      }

      v15 = sub_252E37DB4();

      if (v15)
      {
        goto LABEL_17;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CB8);
  sub_252E379F4();

  v20 = sub_252CDBB90();
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E902C0, 0xD00000000000007BLL, 0x8000000252E90170);

  return 0;
}

void *sub_252C907E8()
{
  type metadata accessor for HomeFilter();
  v0 = sub_252E36BD4();
  if (v0)
  {
    v1 = qword_27F53F4E8;
    v2 = v0;
    v3 = v0;
    if (v1 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_3;
  }

  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 288), &v46);

  v8 = v48;
  v9 = v49;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v10 = (*(v9 + 88))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_252E36C14();
  v11 = sub_252E359F4();

  if (!*(v11 + 16) || (v12 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v13 & 1) == 0))
  {
LABEL_31:

LABEL_32:
    sub_252E36C14();
    v32 = sub_252E359F4();

    if (!*(v32 + 16) || (v33 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v34 & 1) == 0))
    {

      v14 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v14 = *(*(v32 + 56) + 8 * v33);

    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_58;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v14 + 32);

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_60;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (v14 >> 62)
  {
LABEL_60:
    v15 = sub_252E378C4();
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_61:
    v2 = MEMORY[0x277D84F90];
LABEL_62:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417F8, &qword_252E40A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = v2;
    v44 = inited + 32;
    v14 = sub_252A491E4(inited, MEMORY[0x277D84F90], 0, 0);
    swift_setDeallocating();
    sub_25293847C(v44, &qword_27F541800, &unk_252E58C50);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544D60);
    sub_252CC3D90(0xD000000000000036, 0x8000000252E90630, 0xD00000000000007ALL, 0x8000000252E90370);
    if (*(v14 + 16))
    {
      while (1)
      {
LABEL_40:
        v20 = sub_252B0AB50();

        if (v20 >> 62)
        {
LABEL_54:
          if (!sub_252E378C4())
          {
            goto LABEL_65;
          }
        }

        else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v20 + 32);

          goto LABEL_45;
        }

        __break(1u);
LABEL_58:
        MEMORY[0x2530ADF00](0, v14);
LABEL_37:

        v14 = sub_252E358F4();

        if (!*(v14 + 16))
        {
          goto LABEL_65;
        }
      }

      MEMORY[0x2530ADF00](0, v20);
LABEL_45:

      v37 = sub_252968368();
      v38 = qword_27F53F4E8;
      v39 = v37;
      v40 = v37;
      if (v38 != -1)
      {
        swift_once();
      }

      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544D60);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E905F0);
      v50 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A0, &unk_252E3DC50);
      v42 = sub_252E36F94();
      MEMORY[0x2530AD570](v42);

      sub_252CC3D90(v46, v47, 0xD00000000000007ALL, 0x8000000252E90370);

      return v39;
    }

LABEL_65:

    return 0;
  }

LABEL_9:
  v16 = 0;
  v2 = MEMORY[0x277D84F90];
  while ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v16, v14);
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v19 = sub_252E35914();

    v20 = *(v19 + 16);
    v21 = v2[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= v2[3] >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v2 = sub_2529F85F4(isUniquelyReferenced_nonNull_native, v24, 1, v2);
      if (!*(v19 + 16))
      {
LABEL_10:

        if (v20)
        {
          goto LABEL_50;
        }

        goto LABEL_11;
      }
    }

    v25 = (v2[3] >> 1) - v2[2];
    v26 = *(sub_252E34724() - 8);
    if (v25 < v20)
    {
      goto LABEL_51;
    }

    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = *(v26 + 72);
    swift_arrayInitWithCopy();

    if (v20)
    {
      v29 = v2[2];
      v30 = __OFADD__(v29, v20);
      v31 = v29 + v20;
      if (v30)
      {
        __break(1u);
        goto LABEL_54;
      }

      v2[2] = v31;
    }

LABEL_11:
    ++v16;
    if (v18 == v15)
    {
      goto LABEL_62;
    }
  }

  if (v16 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v14 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_3:
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D60);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_252E379F4();

  v46 = 0xD000000000000028;
  v47 = 0x8000000252E90670;
  v50 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A0, &unk_252E3DC50);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(v46, v47, 0xD00000000000007ALL, 0x8000000252E90370);

  return v2;
}

uint64_t sub_252C91044(unint64_t a1, int a2)
{
  v63 = a2;
  v62 = sub_252E32E84();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_252E36C24();
  v48 = *(v55 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x28223BE20](v55);
  v54 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544918, &unk_252E58C40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v60 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v46 - v16;
  v18 = sub_252E36BA4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  result = sub_252E36B94();
  v50 = result;
  if (!(a1 >> 62))
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_21:

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v22 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v22 < 1)
  {
    __break(1u);
  }

  else
  {
    v23 = 0;
    v66 = a1 & 0xC000000000000001;
    v56 = "getReferencedHomeFilter(for:)";
    v57 = (v3 + 8);
    v53 = "com.apple.SiriHomeAutomation";
    v52 = "Unexpected reference type: ";
    v51 = "Error creating RREntity: ";
    v47 = (v48 + 16);
    v46[1] = v48 + 8;
    v46[0] = v48 + 32;
    v64 = MEMORY[0x277D84F90];
    v24 = &unk_252E58C40;
    v68 = v17;
    v58 = v22;
    v59 = a1;
    do
    {
      if (v66)
      {
        v25 = MEMORY[0x2530ADF00](v23, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = sub_252B09EF8(v25, 1);
      v29 = MEMORY[0x2530AB270](v27, v28);

      v69 = v29;
      if (v29)
      {
        v67 = v23;
        v30 = sub_252E36B64();
        v31 = *(*(v30 - 8) + 56);
        v31(v17, 1, 1, v30);
        if (v63)
        {
          v32 = v49;
          sub_252E36B84();
          sub_25293847C(v68, &qword_27F544918, v24);
          v31(v32, 0, 1, v30);
          v33 = v32;
          v17 = v68;
          sub_252C930B8(v33, v68);
        }

        v34 = v61;
        sub_252E32E74();
        sub_252E32E24();
        (*v57)(v34, v62);
        v35 = v24;
        sub_252938414(v17, v60, &qword_27F544918, v24);
        type metadata accessor for HomeFilter();

        v36 = v26;
        v37 = v65;
        sub_252E36BE4();
        (*v47)(v54, v37, v55);
        v38 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_2529F8214(0, v38[2] + 1, 1, v38);
        }

        v17 = v68;
        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          v64 = sub_2529F8214(v40 > 1, v41 + 1, 1, v38);
        }

        else
        {
          v64 = v38;
        }

        v42 = v48;
        v43 = v55;
        (*(v48 + 8))(v65, v55);
        sub_25293847C(v17, &qword_27F544918, v35);
        v44 = v64;
        *(v64 + 16) = v41 + 1;
        v45 = v43;
        v24 = v35;
        (*(v42 + 32))(v44 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41, v54, v45);
        v22 = v58;
        v23 = v67;
      }

      else
      {
      }

      ++v23;
    }

    while (v22 != v23);

    return v64;
  }

  return result;
}

uint64_t sub_252C9178C(char *a1)
{
  v107 = a1;
  v1 = sub_252E36C24();
  v113 = *(v1 - 8);
  v2 = *(v113 + 8);
  v3 = MEMORY[0x28223BE20](v1);
  v115 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v110 = v95 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v112 = v95 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v95 - v9;
  v114 = sub_252E36B34();
  v101 = *(v114 - 8);
  v11 = *(v101 + 64);
  v12 = MEMORY[0x28223BE20](v114);
  v111 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = v95 - v14;
  v15 = sub_252E36C44();
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v97 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = v95 - v19;
  v20 = sub_252E36BC4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C00, &unk_252E41DD0);
  v25 = *(*(v106 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v106);
  v105 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v109 = v95 - v28;
  v29 = sub_252E36AB4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_252E345A4();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_252E34594();
  v108 = MEMORY[0x2530AB270]();
  if (v108)
  {
    v95[0] = v10;
    v116 = v1;
    v95[1] = v37;
    v100 = v30;
    v96 = v29;
    if (qword_27F53F600 != -1)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v38 = qword_27F544F88;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      v99 = v33;
      v40 = *(v107 + 3);
      v39 = *(v107 + 4);
      __swift_project_boxed_opaque_existential_1(v107, v40);
      *v24 = v108;
      (*(v21 + 104))(v24, *MEMORY[0x277D5FEA8], v20);
      v41 = *(v39 + 8);

      v42 = v109;
      v43 = v40;
      v44 = v99;
      v41(v24, v43, v39);
      (*(v21 + 8))(v24, v20);
      sub_252E375C4();
      sub_252E36A74();
      v45 = v105;
      sub_252938414(v42, v105, &qword_27F541C00, &unk_252E41DD0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_25293847C(v45, &qword_27F541C00, &unk_252E41DD0);
        v46 = v96;
        v47 = v100;
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v48 = sub_252E36AD4();
        __swift_project_value_buffer(v48, qword_27F544D60);
        sub_252CC4050(0xD00000000000001BLL, 0x8000000252E90570, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000003DLL, 0x8000000252E90500, 165);

        sub_25293847C(v109, &qword_27F541C00, &unk_252E41DD0);
        (*(v47 + 8))(v44, v46);
        return MEMORY[0x277D84F90];
      }

      v24 = 0xD00000000000007ALL;
      v53 = v102;
      v52 = v103;
      v54 = v104;
      (*(v103 + 32))(v102, v45, v104);
      v55 = v97;
      (*(v52 + 16))(v97, v53, v54);
      v56 = (*(v52 + 88))(v55, v54);
      v57 = v100;
      if (v56 == *MEMORY[0x277D5FEC0])
      {
        (*(v52 + 96))(v55, v54);
        v58 = v114;
        (*(v101 + 32))(v98, v55, v114);
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v59 = sub_252E36AD4();
        __swift_project_value_buffer(v59, qword_27F544D60);
        v117 = 0;
        v118 = 0xE000000000000000;
        sub_252E379F4();

        v117 = 0xD000000000000021;
        v118 = 0x8000000252E905C0;
        sub_252C93128(&qword_27F541C10, MEMORY[0x277D5FE08]);
        v60 = sub_252E37D94();
        MEMORY[0x2530AD570](v60);

        sub_252CC3D90(v117, v118, 0xD00000000000007ALL, 0x8000000252E90370);
        v61 = v98;

        v62 = v95[0];
        sub_252E36B24();
        v63 = sub_252C907E8();
        v64 = v113;
        (*(v113 + 1))(v62, v116);
        if (v63)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540270, &qword_252E3C0A0);
          v65 = *(v64 + 9);
          v66 = (v64[80] + 32) & ~v64[80];
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_252E3C290;
          sub_252E36B24();
        }

        else
        {
          v50 = MEMORY[0x277D84F90];
        }

        v82 = v96;

        (*(v101 + 8))(v61, v58);
        (*(v52 + 8))(v53, v54);
        sub_25293847C(v109, &qword_27F541C00, &unk_252E41DD0);
        (*(v57 + 8))(v44, v82);
        return v50;
      }

      v20 = v114;
      if (v56 != *MEMORY[0x277D5FED0] && v56 != *MEMORY[0x277D5FEC8])
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v67 = sub_252E36AD4();
        __swift_project_value_buffer(v67, qword_27F544D60);
        v117 = 0;
        v118 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E72E30);
        sub_252C93128(&qword_27F541C08, MEMORY[0x277D5FEE8]);
        v68 = sub_252E37D94();
        MEMORY[0x2530AD570](v68);

        sub_252CC4050(v117, v118, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000003DLL, 0x8000000252E90500, 161);

        v69 = *(v52 + 8);
        v69(v53, v54);
        sub_25293847C(v109, &qword_27F541C00, &unk_252E41DD0);
        (*(v57 + 8))(v44, v96);
        v69(v55, v54);
        return MEMORY[0x277D84F90];
      }

      (*(v52 + 96))(v55, v54);
      v70 = *v55;
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v71 = sub_252E36AD4();
      __swift_project_value_buffer(v71, qword_27F544D60);
      v117 = 0;
      v118 = 0xE000000000000000;
      sub_252E379F4();

      v117 = 0xD000000000000021;
      v118 = 0x8000000252E90590;
      v72 = MEMORY[0x2530AD730](v70, v20);
      MEMORY[0x2530AD570](v72);

      sub_252CC3D90(v117, v118, 0xD00000000000007ALL, 0x8000000252E90370);

      v73 = *(v70 + 16);
      v33 = v113;
      if (v73)
      {
        v74 = *(v101 + 16);
        v75 = *(v101 + 80);
        v105 = v70;
        v76 = v70 + ((v75 + 32) & ~v75);
        v106 = *(v101 + 72);
        v107 = v74;
        v77 = (v101 + 8);
        v78 = MEMORY[0x277D84F90];
        do
        {
          v79 = v111;
          v80 = v114;
          (v107)(v111, v76, v114);
          sub_252E36B24();
          (*v77)(v79, v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_2529F8214(0, *(v78 + 2) + 1, 1, v78);
          }

          v20 = *(v78 + 2);
          v81 = *(v78 + 3);
          if (v20 >= v81 >> 1)
          {
            v78 = sub_2529F8214(v81 > 1, v20 + 1, 1, v78);
          }

          *(v78 + 2) = v20 + 1;
          (*(v33 + 4))(&v78[((v33[80] + 32) & ~v33[80]) + *(v33 + 9) * v20], v112, v116);
          v76 += v106;
          --v73;
        }

        while (v73);

        v24 = 0xD00000000000007ALL;
      }

      else
      {

        v78 = MEMORY[0x277D84F90];
      }

      v83 = v116;
      v84 = v110;
      v114 = *(v78 + 2);
      if (!v114)
      {
        v50 = MEMORY[0x277D84F90];
LABEL_53:

        (*(v103 + 8))(v102, v104);
        sub_25293847C(v109, &qword_27F541C00, &unk_252E41DD0);
        (*(v100 + 8))(v99, v96);
        return v50;
      }

      v21 = 0;
      v112 = v33 + 16;
      v106 = (v33 + 8);
      v107 = 0x8000000252E90480;
      v85 = (v33 + 32);
      v50 = MEMORY[0x277D84F90];
      v111 = 0xD000000000000023;
      while (v21 < *(v78 + 2))
      {
        v20 = (v33[80] + 32) & ~v33[80];
        v86 = v33;
        v87 = *(v33 + 9);
        v86[2](v84, &v78[v20 + v87 * v21], v83);
        v88 = sub_252C907E8();
        if (v88)
        {

LABEL_44:
          v24 = *v85;
          (*v85)(v115, v84, v83);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117 = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA620(0, *(v50 + 16) + 1, 1);
            v50 = v117;
          }

          v93 = *(v50 + 16);
          v92 = *(v50 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_2529AA620(v92 > 1, v93 + 1, 1);
            v50 = v117;
          }

          *(v50 + 16) = v93 + 1;
          v94 = v50 + v20 + v93 * v87;
          v83 = v116;
          (v24)(v94, v115, v116);
          v84 = v110;
          goto LABEL_49;
        }

        if (sub_252E36BF4() == v111 && v107 == v89)
        {

          goto LABEL_44;
        }

        v24 = v89;
        v90 = sub_252E37DB4();

        if (v90)
        {
          goto LABEL_44;
        }

        (*v106)(v84, v83);
LABEL_49:
        ++v21;
        v33 = v113;
        if (v114 == v21)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      swift_once();
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v49 = sub_252E36AD4();
  __swift_project_value_buffer(v49, qword_27F544D60);
  sub_252CC4050(0xD00000000000004ALL, 0x8000000252E904B0, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000003DLL, 0x8000000252E90500, 140);

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C92828(char *a1)
{
  v28 = sub_252E36C24();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E35074();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_252E35064();
  v15 = sub_252E352F4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_252E352E4();
  (*(v7 + 104))(v10, *MEMORY[0x277D5EA58], v6);
  sub_252E352D4();
  (*(v7 + 8))(v10, v6);

  sub_252E34E14();

  v18 = MEMORY[0x2530AB270](v14);

  if (v18)
  {
    v27[1] = v18;
    result = sub_252C9178C(a1);
    v20 = result;
    v21 = 0;
    v22 = *(result + 16);
    v27[2] = v2 + 16;
    v23 = (v2 + 8);
    while (1)
    {
      v25 = v22 != v21;
      if (v22 == v21)
      {
        goto LABEL_9;
      }

      if (v21 >= *(v20 + 16))
      {
        break;
      }

      (*(v2 + 16))(v5, v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v28);
      if (sub_252E36BF4() == 0xD000000000000023 && 0x8000000252E90480 == v26)
      {

        (*v23)(v5, v28);
LABEL_9:

        return v25;
      }

      ++v21;
      v24 = sub_252E37DB4();

      result = (*v23)(v5, v28);
      if (v24)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t _s22HomeAutomationInternal24ReferenceResolutionUtilsO013getReferencedA7Filters17referenceResolverSayAA0A6FilterCGAA0dK8Protocol_p_tFZ_0(char *a1)
{
  v2 = sub_252E36C24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252C9178C(a1);
  v22 = MEMORY[0x277D84F90];
  v8 = *(v7 + 16);
  if (v8)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v20[2] = v7;
    v21 = v10;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v21(v6, v11, v2);
      v14 = sub_252C907E8();
      v15 = (*(v9 - 8))(v6, v2);
      if (v14)
      {
        MEMORY[0x2530AD700](v15);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20[1] = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v13 = v22;
      }

      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D60);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_252E379F4();

  v22 = 0xD000000000000016;
  v23 = 0x8000000252E906A0;
  v17 = type metadata accessor for HomeFilter();
  v18 = MEMORY[0x2530AD730](v13, v17);
  MEMORY[0x2530AD570](v18);

  sub_252CC3D90(v22, v23, 0xD00000000000007ALL, 0x8000000252E90370);

  return v13;
}

uint64_t sub_252C92E6C(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D60);
    sub_252E379F4();

    v13[0] = 0xD00000000000001BLL;
    v13[1] = 0x8000000252E90350;
    v13[5] = v1;
    v14 = 1;
    v3 = sub_252E36F94();
    MEMORY[0x2530AD570](v3);

    sub_252CC4050(0xD00000000000001BLL, 0x8000000252E90350, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000001DLL, 0x8000000252E903F0, 172);
    goto LABEL_26;
  }

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 368), v13);

  v5 = _s22HomeAutomationInternal24ReferenceResolutionUtilsO013getReferencedA7Filters17referenceResolverSayAA0A6FilterCGAA0dK8Protocol_p_tFZ_0(v13);
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v5 >> 62)
  {
    result = sub_252E378C4();
    v7 = result - 1;
    if (result != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result - 1;
    if (result != 1)
    {
      goto LABEL_12;
    }
  }

  if (v1 == -100)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = 0;
LABEL_30:
      v10 = MEMORY[0x2530ADF00](v12, v5);
      goto LABEL_25;
    }

    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      v9 = *(v5 + 32);
LABEL_24:
      v10 = v9;
LABEL_25:
      v11 = v10;

      return v11;
    }

    __break(1u);
LABEL_29:
    v12 = v8;
    goto LABEL_30;
  }

LABEL_12:
  if (v1 < 0)
  {
    v8 = result + v1;
    if (__OFADD__(result, v1))
    {
      goto LABEL_32;
    }

    if (v8 < 0)
    {
LABEL_26:

      return 0;
    }
  }

  else
  {
    v8 = v7 >> 1;
    if ((result & 0x8000000000000001) != 1)
    {
      v8 = v1;
    }

    if (v1 != 50)
    {
      v8 = v1;
    }
  }

  if (v8 >= result)
  {
    goto LABEL_26;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v5 + 8 * v8 + 32);
    goto LABEL_24;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C930B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544918, &unk_252E58C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252C93128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252C93170(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, a1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = [v6 entity];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 entityIdentifier];

        if (v10)
        {
          break;
        }
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v11 = sub_252E36F34();
    v13 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2529F7A80(0, *(v21 + 2) + 1, 1, v21);
    }

    v16 = *(v21 + 2);
    v15 = *(v21 + 3);
    if (v16 >= v15 >> 1)
    {
      v21 = sub_2529F7A80((v15 > 1), v16 + 1, 1, v21);
    }

    *(v21 + 2) = v16 + 1;
    v17 = &v21[16 * v16];
    *(v17 + 4) = v11;
    *(v17 + 5) = v13;
  }

  while (v4 != v3);
LABEL_24:
  v18 = sub_252C75848(v21);

  v19 = *(v18 + 16);

  return v19;
}

uint64_t sub_252C93358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[277] = v3;
  v4[276] = a3;
  v4[275] = a2;
  v4[274] = a1;
  v5 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  v4[278] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[279] = swift_task_alloc();
  v7 = sub_252E34014();
  v4[280] = v7;
  v8 = *(v7 - 8);
  v4[281] = v8;
  v9 = *(v8 + 64) + 15;
  v4[282] = swift_task_alloc();
  v4[283] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C93460, 0, 0);
}

uint64_t sub_252C93460()
{
  v134 = v0;
  v2 = v0[276];
  if (!v2)
  {
    sub_2529318DC();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    goto LABEL_136;
  }

  v3 = v2;
  v4 = [v3 entityResponses];
  if (!v4)
  {
    goto LABEL_132;
  }

  v5 = v4;
  type metadata accessor for HomeEntityResponse();
  v6 = sub_252E37264();

  v128 = v3;
  v130 = v0;
  if (v6 >> 62)
  {
LABEL_130:
    p_isa = sub_252E378C4();
    if (p_isa)
    {
      goto LABEL_5;
    }

LABEL_131:

    v3 = v128;
    v0 = v130;
    goto LABEL_132;
  }

  p_isa = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!p_isa)
  {
    goto LABEL_131;
  }

LABEL_5:
  v8 = 0;
  v3 = (v6 & 0xC000000000000001);
  v9 = &off_279711000;
  while (1)
  {
    if (v3)
    {
      v10 = MEMORY[0x2530ADF00](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v1 = v10;
    v0 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v11 = [v10 entity];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 type];

      if (v13 == 5)
      {
        break;
      }
    }

    ++v8;
    if (v0 == p_isa)
    {
      goto LABEL_131;
    }
  }

  v15 = [v1 entity];

  v3 = v128;
  v0 = v130;
  if (!v15 || (v16 = [v15 entityIdentifier], v15, !v16))
  {
LABEL_132:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v116 = sub_252E36AD4();
    __swift_project_value_buffer(v116, qword_27F544D18);
    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E90710, 0xD00000000000009ALL, 0x8000000252E90740, 0xD00000000000004ALL, 0x8000000252E907E0, 58);
    sub_2529318DC();
    swift_allocError();
    v30 = 9;
    goto LABEL_135;
  }

  v17 = sub_252E36F34();
  v1 = v18;

  type metadata accessor for HomeStore();
  v19 = static HomeStore.shared.getter();
  v20 = sub_2529F53FC(v17, v1);
  v22 = v21;

  v130[284] = v20;
  if (v22)
  {
    sub_252956C8C(v20, 1);
    goto LABEL_28;
  }

  if (!v20)
  {
LABEL_28:
    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_29;
  }

  if (!sub_252C96BE8())
  {
    v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v31 + 16), (v130 + 254));

    v32 = v130[258];
    __swift_project_boxed_opaque_existential_1(v130 + 254, v130[257]);
    v33 = sub_252E338C4();
    __swift_destroy_boxed_opaque_existential_1(v130 + 254);
    if (v33)
    {
      if (qword_27F53F4D0 != -1)
      {
        goto LABEL_153;
      }

      goto LABEL_32;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544D18);
    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E90860, 0xD00000000000009ALL, 0x8000000252E90740);
    sub_25293DEE0((v130 + 2));
    type metadata accessor for SceneEnabledResponseHandler();
    swift_allocObject();
    memcpy(__dst, v130 + 2, sizeof(__dst));
    v130[300] = sub_252BE97AC(__dst);
    v126 = sub_252DF54B8;
    v54 = v128;
    v36 = swift_task_alloc();
    v130[301] = v36;
    *v36 = v130;
    v37 = sub_252C95030;
LABEL_69:
    v36[1] = v37;
    v55 = v0[276];
    v56 = v0[275];
    v57 = v0[274];
    v58 = v126;

    return v58(v57, v56, v55);
  }

  sub_252956C8C(v20, 0);
  v23 = sub_252B2F470();
  if (v23 >> 62)
  {
LABEL_149:
    v24 = sub_252E378C4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = sub_252C285CC();
  if (v25 >> 62)
  {
    v26 = sub_252E378C4();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 == v26)
  {
    v27 = sub_252C285CC();
  }

  else
  {
    v27 = sub_252C2A5D8();
  }

  v9 = v27;
  __dst[0] = MEMORY[0x277D84F90];
  v38 = (v27 >> 62);
  if (v27 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = v20;
  v1 = MEMORY[0x277D84F90];
  if (v17)
  {
    v128 = v38;
    v1 = 0;
    v22 = v9 & 0xC000000000000001;
    p_isa = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v22)
      {
        v39 = MEMORY[0x2530ADF00](v1, v9);
      }

      else
      {
        if (v1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v39 = *(v9 + 32 + 8 * v1);
      }

      v40 = v39;
      v41 = __OFADD__(v1++, 1);
      if (v41)
      {
        break;
      }

      v42 = [(__objc2_class *)v39 entity];
      if (!v42 || (v43 = v42, v3 = [v42 deviceTypes], v43, !v3))
      {
LABEL_38:

        goto LABEL_39;
      }

      v6 = sub_252E37264();

      if (*(v6 + 16))
      {
        v3 = *(v6 + 32);

        if (qword_27F53F410 != -1)
        {
          swift_once();
        }

        v44 = 0;
        v45 = -1 << *(qword_27F575A48 + 32);
        if (-v45 < 64)
        {
          v46 = ~(-1 << -v45);
        }

        else
        {
          v46 = -1;
        }

        v47 = v46 & *(qword_27F575A48 + 56);
        v48 = (63 - v45) >> 6;
LABEL_53:
        if (v47)
        {
          v49 = v44;
          goto LABEL_59;
        }

        while (1)
        {
          v49 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v49 >= v48)
          {
            goto LABEL_38;
          }

          v47 = *(qword_27F575A48 + 56 + 8 * v49);
          ++v44;
          if (v47)
          {
            v44 = v49;
LABEL_59:
            v50 = __clz(__rbit64(v47));
            v47 &= v47 - 1;
            if (*(*(qword_27F575A48 + 48) + ((v49 << 9) | (8 * v50))) == v3)
            {
              sub_252E37A94();
              v3 = *(__dst[0] + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_39;
            }

            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_95:
        v63 = 0;
        goto LABEL_96;
      }

LABEL_39:
      if (v1 == v17)
      {
        v1 = __dst[0];
        v38 = v128;
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    swift_once();
LABEL_29:
    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000029;
    __dst[1] = 0x8000000252E90830;
    MEMORY[0x2530AD570](v17, v1);

    sub_252CC4050(__dst[0], __dst[1], 0xD00000000000009ALL, 0x8000000252E90740, 0xD00000000000004ALL, 0x8000000252E907E0, 65);

    sub_2529318DC();
    swift_allocError();
    v30 = 7;
LABEL_135:
    *v29 = v30;
    swift_willThrow();

LABEL_136:
    v117 = v0[283];
    v118 = v0[282];
    v119 = v0[279];

    v120 = v0[1];

    return v120();
  }

LABEL_64:
  v51 = static HomeStore.shared.getter();
  v6 = sub_2529D9884();

  if (v38)
  {
    v52 = sub_252E378C4();
  }

  else
  {
    v52 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v52 != 1 || !v17)
  {

LABEL_83:
    v65 = 0;
    goto LABEL_84;
  }

  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v9 + 32);
      goto LABEL_78;
    }

    __break(1u);
LABEL_156:
    v97 = sub_252E378C4();
    if (!v97)
    {
      goto LABEL_157;
    }

    goto LABEL_101;
  }

  v60 = MEMORY[0x2530ADF00](0, v9);
LABEL_78:
  p_isa = &v60->isa;
  v61 = [(__objc2_class *)v60 entity];
  if (!v61)
  {
LABEL_93:
    v63 = 0;
    goto LABEL_97;
  }

  v62 = v61;
  v63 = [v61 deviceTypes];

  if (v63)
  {
    v64 = sub_252E37264();

    if (!*(v64 + 16))
    {
      goto LABEL_95;
    }

    v63 = *(v64 + 32);
LABEL_96:
  }

LABEL_97:
  v95 = sub_252E25FC4(v63);
  if (v96)
  {

    goto LABEL_83;
  }

  v22 = v95;
  v124 = v1;
  v1 = v9;
  v128 = p_isa;
  if (v6 >> 62)
  {
    goto LABEL_156;
  }

  v97 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v97)
  {
LABEL_157:

    v65 = 0;
    v0 = v130;
    v9 = v1;
    v1 = v124;
    goto LABEL_84;
  }

LABEL_101:
  v98 = 0;
  v20 = 0;
  v0 = (v6 & 0xC000000000000001);
  while (2)
  {
    if (v0)
    {
      v3 = MEMORY[0x2530ADF00](v98, v6);
      v99 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      goto LABEL_105;
    }

    if (v98 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_149;
    }

    v3 = *(v6 + 8 * v98 + 32);

    v99 = v98 + 1;
    if (!__OFADD__(v98, 1))
    {
LABEL_105:
      __dst[0] = v3;
      if (sub_252C9543C(__dst, v128))
      {
        goto LABEL_111;
      }

      ++v98;
      if (v99 == v97)
      {
        goto LABEL_157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_111:

  v6 = v3;
  v100 = sub_2529A2A0C();
  v133 = MEMORY[0x277D84F90];
  if (v100 >> 62)
  {
    v6 = v100;
    v101 = sub_252E378C4();
    v100 = v6;
  }

  else
  {
    v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0 = v130;
  v9 = v1;
  if (v101)
  {
    v102 = 0;
    v127 = v100 & 0xC000000000000001;
    v103 = v100 & 0xFFFFFFFFFFFFFF8;
    v123 = v100;
    v104 = v100 + 32;
    while (1)
    {
      if (v127)
      {
        v106 = MEMORY[0x2530ADF00](v102, v123);
        v41 = __OFADD__(v102++, 1);
        if (v41)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }
      }

      else
      {
        if (v102 >= *(v103 + 16))
        {
          __break(1u);
LABEL_153:
          swift_once();
LABEL_32:
          v34 = sub_252E36AD4();
          __swift_project_value_buffer(v34, qword_27F544D18);
          sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E908A0, 0xD00000000000009ALL, 0x8000000252E90740);
          sub_25293DEE0((v0 + 65));
          type metadata accessor for WatchPostExecutionResponseHandler();
          swift_allocObject();
          memcpy(__dst, v0 + 65, sizeof(__dst));
          v0[297] = sub_252BE97AC(__dst);
          v126 = sub_252DF44A4;
          v35 = v3;
          v36 = swift_task_alloc();
          v0[298] = v36;
          *v36 = v0;
          v37 = sub_252C94E34;
          goto LABEL_69;
        }

        v106 = *(v104 + 8 * v102);

        v41 = __OFADD__(v102++, 1);
        if (v41)
        {
          goto LABEL_129;
        }
      }

      v107 = v101;
      v6 = v106;
      v108 = (*(*v106 + 272))();
      v109 = v108;
      if (*(v108 + 16) && (v110 = *(v108 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v22), v6 = __dst, v111 = sub_252E37F14(), v112 = -1 << *(v109 + 32), v113 = v111 & ~v112, ((*(v109 + 56 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) != 0))
      {
        v114 = ~v112;
        while (*(*(v109 + 48) + 8 * v113) != v22)
        {
          v113 = (v113 + 1) & v114;
          if (((*(v109 + 56 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
          {
            goto LABEL_115;
          }
        }

        v6 = &v133;
        sub_252E37A94();
        v115 = *(v133 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
LABEL_115:
      }

      v101 = v107;
      v105 = v102 == v107;
      v0 = v130;
      if (v105)
      {
        v9 = v1;
        v121 = v133;
        goto LABEL_141;
      }
    }
  }

  v121 = MEMORY[0x277D84F90];
LABEL_141:

  v1 = v124;
  if (v121 < 0 || (v121 & 0x4000000000000000) != 0)
  {
    v122 = sub_252E378C4();
  }

  else
  {
    v122 = *(v121 + 16);
  }

  v65 = v122 == 1;
LABEL_84:
  v66 = v0[277];
  v67 = swift_allocObject();
  v0[285] = v67;
  *(v67 + 16) = v66;
  *(v67 + 24) = v65;
  *(v67 + 32) = v9;
  *(v67 + 40) = v1;

  v68 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v68 + 288), (v0 + 259));

  v69 = v0[262];
  v70 = v0[263];
  __swift_project_boxed_opaque_existential_1(v0 + 259, v69);
  LOBYTE(v66) = (*(v70 + 120))(v69, v70);
  __swift_destroy_boxed_opaque_existential_1(v0 + 259);
  if ((v66 & 1) == 0)
  {
    v82 = v0[279];
    v83 = v0[278];
    sub_252929E74(v0[277] + 24, (v0 + 264));
    v84 = __swift_project_boxed_opaque_existential_1(v0 + 264, v0[267]);
    v85 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v85 + 16), (v0 + 269));

    v86 = v0[273];
    __swift_project_boxed_opaque_existential_1(v0 + 269, v0[272]);
    v87 = sub_252E33914();
    v131 = *v84;
    v88 = sub_252E36324();
    v89 = v1;
    v90 = v9;
    v91 = *(*(v88 - 8) + 56);
    v91(v82, 1, 1, v88);
    v91(v82 + v83[10], 1, 1, v88);
    *(v82 + v83[5]) = 0;
    *(v82 + v83[6]) = 0;
    *(v82 + v83[7]) = v65;
    *(v82 + v83[8]) = v87 & 1;
    *(v82 + v83[9]) = 0;
    sub_252C96490(v82, v90, v89);

    v92 = sub_252C08850();
    v0[290] = v92;
    v93 = *(MEMORY[0x277D55BE8] + 4);
    v129 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v94 = swift_task_alloc();
    v0[291] = v94;
    *v94 = v0;
    v94[1] = sub_252C948F4;
    v56 = 0x8000000252E908F0;
    v57 = 0xD000000000000022;
    v55 = v92;
    v58 = v129;

    return v58(v57, v56, v55);
  }

  v71 = v0[283];
  v72 = v0[277];
  v73 = v0[275];

  memcpy(v0 + 128, v72 + 14, 0x1F8uLL);
  memcpy(__dst, v72 + 14, sizeof(__dst));
  sub_252938414((v0 + 128), (v0 + 191), &qword_27F5404C8, &unk_252E3FD60);
  v74 = v73;
  v75 = sub_252953488(v73, __dst, 0);
  v0[286] = v75;

  v76 = v72[12];
  v77 = v72[13];
  __swift_project_boxed_opaque_existential_1(v72 + 9, v76);
  v78 = swift_task_alloc();
  v0[287] = v78;
  v78[2] = v74;
  v78[3] = v75;
  v78[4] = v125;
  sub_252B03B94();
  v79 = swift_task_alloc();
  v0[288] = v79;
  *v79 = v0;
  v79[1] = sub_252C946EC;
  v80 = v0[283];
  v81 = v0[274];
  v138 = v76;
  v139 = v77;
  v137 = 512;
  v136 = 0;

  return sub_252A199A8(v81, &unk_252E58CD0, v67, &unk_252E58CF8, v78, v80, 0, 0);
}

uint64_t sub_252C946EC()
{
  v2 = *v1;
  v3 = *(*v1 + 2304);
  v7 = *v1;
  *(*v1 + 2312) = v0;

  if (v0)
  {
    (*(v2[281] + 8))(v2[283], v2[280]);
    v4 = sub_252C9518C;
  }

  else
  {
    v5 = v2[287];
    (*(v2[281] + 8))(v2[283], v2[280]);

    v4 = sub_252C94844;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C94844()
{
  v1 = v0[286];
  v2 = v0[285];
  v3 = v0[284];
  v4 = v0[276];

  sub_252956C8C(v3, 0);

  v5 = v0[283];
  v6 = v0[282];
  v7 = v0[279];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C948F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2328);
  v6 = *v2;
  *(v4 + 2336) = a1;
  *(v4 + 2344) = v1;

  v7 = *(v3 + 2320);

  if (v1)
  {
    v8 = sub_252C94CC4;
  }

  else
  {
    v8 = sub_252C94A34;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C94A34()
{
  v1 = v0[292];
  v2 = v0[282];
  v3 = v0[277];
  sub_252C96D94(v0[279]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 269);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  v4 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1((v3 + 72), v4);
  v5 = swift_task_alloc();
  v0[294] = v5;
  *(v5 + 16) = v1;
  sub_252AD7CC4();
  v6 = swift_task_alloc();
  v0[295] = v6;
  *v6 = v0;
  v6[1] = sub_252C94B6C;
  v7 = v0[282];
  v8 = v0[274];

  return sub_252BDB88C(v8, &unk_252E58CE0, v5, v7, 0, 0, 0, v4);
}

uint64_t sub_252C94B6C()
{
  v2 = *v1;
  v3 = *(*v1 + 2360);
  v7 = *v1;
  *(*v1 + 2368) = v0;

  if (v0)
  {
    (*(v2[281] + 8))(v2[282], v2[280]);
    v4 = sub_252C95248;
  }

  else
  {
    v5 = v2[294];
    (*(v2[281] + 8))(v2[282], v2[280]);

    v4 = sub_252C94D84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C94CC4()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[276];
  sub_252C96D94(v0[279]);

  sub_252956C8C(v2, 0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 269);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);

  v4 = v0[293];
  v5 = v0[283];
  v6 = v0[282];
  v7 = v0[279];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C94D84()
{
  v1 = *(v0 + 2280);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2208);

  sub_252956C8C(v2, 0);

  v4 = *(v0 + 2264);
  v5 = *(v0 + 2256);
  v6 = *(v0 + 2232);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252C94E34()
{
  v2 = *v1;
  v3 = *(*v1 + 2384);
  v4 = *v1;
  *(v2 + 2392) = v0;

  v5 = *(v2 + 2376);
  if (v0)
  {
    v6 = *(v2 + 2208);
    sub_252956C8C(*(v2 + 2272), 0);

    v7 = sub_252C95304;
  }

  else
  {
    v8 = *(v2 + 2208);

    v7 = sub_252C94F90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C94F90()
{
  v1 = v0[284];
  v2 = v0[276];
  sub_252956C8C(v1, 0);
  sub_252956C8C(v1, 0);

  v3 = v0[283];
  v4 = v0[282];
  v5 = v0[279];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252C95030()
{
  v2 = *v1;
  v3 = *(*v1 + 2408);
  v4 = *v1;
  *(v2 + 2416) = v0;

  v5 = *(v2 + 2400);
  if (v0)
  {
    v6 = *(v2 + 2208);
    sub_252956C8C(*(v2 + 2272), 0);

    v7 = sub_252C953A0;
  }

  else
  {
    v8 = *(v2 + 2208);

    v7 = sub_252C94F90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C9518C()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[276];

  sub_252956C8C(v4, 0);

  v6 = v0[289];
  v7 = v0[283];
  v8 = v0[282];
  v9 = v0[279];

  v10 = v0[1];

  return v10();
}

uint64_t sub_252C95248()
{
  v1 = *(v0 + 2352);
  v2 = *(v0 + 2280);
  v3 = *(v0 + 2272);
  v4 = *(v0 + 2208);

  sub_252956C8C(v3, 0);

  v5 = *(v0 + 2368);
  v6 = *(v0 + 2264);
  v7 = *(v0 + 2256);
  v8 = *(v0 + 2232);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252C95304()
{
  v1 = *(v0 + 2272);

  sub_252956C8C(v1, 0);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2232);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252C953A0()
{
  v1 = *(v0 + 2272);

  sub_252956C8C(v1, 0);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2232);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252C9543C(uint64_t *a1, void *a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v64 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v69 = &v61[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v71 = &v61[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v72 = &v61[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v61[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v61[-v27];
  v66 = *a1;
  v29 = *(v66 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v30 = *(v66 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  sub_252E37024();
  v73 = v5;
  v31 = *(v5 + 56);
  v32 = 1;
  v33 = v4;
  v75 = v5 + 56;
  v74 = v31;
  v31(v28, 0, 1, v4);
  v67 = a2;
  v34 = [a2 entity];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 room];

    if (v36)
    {
      sub_252E36F34();

      sub_252E37024();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }
  }

  v74(v26, v32, 1, v4);
  v68 = v8;
  v37 = *(v8 + 48);
  sub_252938414(v28, v13, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v26, &v13[v37], &qword_27F540298, &unk_252E3C270);
  v38 = *(v73 + 48);
  if (v38(v13, 1, v33) == 1)
  {
    sub_25293847C(v26, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
    if (v38(&v13[v37], 1, v33) != 1)
    {
      goto LABEL_23;
    }

    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v39 = v72;
    sub_252938414(v13, v72, &qword_27F540298, &unk_252E3C270);
    if (v38(&v13[v37], 1, v33) == 1)
    {
      sub_25293847C(v26, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
      (*(v73 + 8))(v39, v33);
      goto LABEL_23;
    }

    v63 = v38;
    v40 = v73;
    v41 = v65;
    (*(v73 + 32))(v65, &v13[v37], v33);
    sub_252B3DE3C();
    v62 = sub_252E36EF4();
    v42 = *(v40 + 8);
    v42(v41, v33);
    sub_25293847C(v26, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
    v42(v72, v33);
    v38 = v63;
    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    if ((v62 & 1) == 0)
    {
LABEL_24:
      v54 = 0;
      return v54 & 1;
    }
  }

  v43 = sub_2529A2E84();
  if (v43)
  {
    v44 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v45 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v46 = v71;
    sub_252E37024();

    v47 = 0;
    v13 = v70;
  }

  else
  {
    v47 = 1;
    v13 = v70;
    v46 = v71;
  }

  v48 = v69;
  v49 = 1;
  v74(v46, v47, 1, v33);
  v50 = [v67 entity];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 home];

    if (v52)
    {
      sub_252E36F34();

      sub_252E37024();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }
  }

  v74(v48, v49, 1, v33);
  v53 = *(v68 + 48);
  sub_252938414(v46, v13, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v48, &v13[v53], &qword_27F540298, &unk_252E3C270);
  if (v38(v13, 1, v33) != 1)
  {
    v55 = v64;
    sub_252938414(v13, v64, &qword_27F540298, &unk_252E3C270);
    if (v38(&v13[v53], 1, v33) != 1)
    {
      v57 = v73;
      v58 = v65;
      (*(v73 + 32))(v65, &v13[v53], v33);
      sub_252B3DE3C();
      v59 = v55;
      v54 = sub_252E36EF4();
      v60 = *(v57 + 8);
      v60(v58, v33);
      sub_25293847C(v48, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v71, &qword_27F540298, &unk_252E3C270);
      v60(v59, v33);
      sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
      return v54 & 1;
    }

    sub_25293847C(v48, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v46, &qword_27F540298, &unk_252E3C270);
    (*(v73 + 8))(v55, v33);
    goto LABEL_23;
  }

  sub_25293847C(v48, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v46, &qword_27F540298, &unk_252E3C270);
  if (v38(&v13[v53], 1, v33) != 1)
  {
LABEL_23:
    sub_25293847C(v13, &qword_27F540758, &unk_252E4D160);
    goto LABEL_24;
  }

  sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  v54 = 1;
  return v54 & 1;
}

uint64_t sub_252C95CFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 128) = a2;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](sub_252C95D24, 0, 0);
}

uint64_t sub_252C95D24()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = *(*(v0 + 56) + 64);

  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v0 + 16);

  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v38 = sub_252E33914();
  v40 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_34:
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    if (*(v0 + 64) < 0)
    {
      v35 = *(v0 + 64);
    }

    v5 = sub_252E378C4();
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v8 = *(v0 + 64) + 32;
  v1 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x2530ADF00](v6, *(v0 + 64));
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v8 + 8 * v6);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = sub_252DA124C(0);

    ++v6;
    if (v12)
    {
      MEMORY[0x2530AD700]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v1 = v40;
      v6 = v11;
    }
  }

  v14 = *(v0 + 72);
  v37 = type metadata accessor for HomeAutomationEntityResponses();
  v15 = swift_allocObject();
  *(v0 + 88) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = v1;
  v36 = v15;
  v40 = MEMORY[0x277D84F90];
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
    v17 = sub_252E378C4();
    v18 = *(v0 + 72);
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v14;
  }

  v19 = 0;
  v20 = v14 & 0xC000000000000001;
  v1 = v18 + 32;
  v21 = MEMORY[0x277D84F90];
  while (v17 != v19)
  {
    if (v20)
    {
      v22 = MEMORY[0x2530ADF00](v19, *(v0 + 72));
    }

    else
    {
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_33;
      }

      v22 = *(v1 + 8 * v19);
    }

    v23 = v22;
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_32;
    }

    v25 = sub_252DA124C(0);

    ++v19;
    if (v25)
    {
      MEMORY[0x2530AD700]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v21 = v40;
      v19 = v24;
    }
  }

  v27 = *(v0 + 128);
  v28 = swift_allocObject();
  *(v0 + 96) = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v29 = swift_allocObject();
  *(v0 + 104) = v29;
  *(v29 + 16) = xmmword_252E3EF80;
  v30 = MEMORY[0x277D839B0];
  *(v29 + 32) = 0x786F567369;
  *(v29 + 40) = 0xE500000000000000;
  *(v29 + 48) = v38 & 1;
  *(v29 + 72) = v30;
  *(v29 + 80) = 0xD000000000000018;
  *(v29 + 88) = 0x8000000252E8A350;
  *(v29 + 96) = v27;
  *(v29 + 120) = v30;
  *(v29 + 128) = 0xD000000000000010;
  *(v29 + 136) = 0x8000000252E8A020;
  *(v29 + 144) = v36;
  *(v29 + 168) = v37;
  *(v29 + 176) = 0xD000000000000016;
  v31 = MEMORY[0x277D55C70];
  *(v29 + 216) = v37;
  v32 = v31[1];
  v39 = (v31 + *v31);
  *(v29 + 184) = 0x8000000252E8A370;
  *(v29 + 192) = v28;

  v33 = swift_task_alloc();
  *(v0 + 112) = v33;
  *v33 = v0;
  v33[1] = sub_252C96184;

  return v39(0xD000000000000022, 0x8000000252E908F0, v29);
}

uint64_t sub_252C96184(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[14];
  v6 = *v2;
  (*v2)[15] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C96310, 0, 0);
  }

  else
  {
    v8 = v4[12];
    v7 = v4[13];
    v10 = v4[10];
    v9 = v4[11];

    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v11 = v6[1];

    return v11(a1);
  }
}

uint64_t sub_252C96310()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_252C963A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_252C236AC;

  return sub_252A26640(v9, a2, a3, 0, 0, a4);
}

uint64_t sub_252C96490(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v61 = a1;
  v62[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v57 - v9;
  v62[0] = MEMORY[0x277D84F90];
  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_41:
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v57 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2530ADF00](v12, a2);
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_38;
      }

      v14 = *(a2 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v17 = sub_252DA124C(0);

    ++v12;
    if (v17)
    {
      MEMORY[0x2530AD700](v18);
      if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v13 = v62[0];
      v12 = v16;
    }
  }

  type metadata accessor for HomeAutomationEntityResponses();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v13;
  v21 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  v22 = *(v21 + 24);
  v23 = v61;
  v24 = *(v61 + v22);

  *(v23 + v22) = v20;
  v62[0] = MEMORY[0x277D84F90];
  v58 = v21;
  v10 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    v25 = sub_252E378C4();
  }

  else
  {
    v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  a2 = MEMORY[0x277D84F90];
  while (v25 != v26)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x2530ADF00](v26, a3);
    }

    else
    {
      if (v26 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v27 = *(a3 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_39;
    }

    v30 = sub_252DA124C(0);

    ++v26;
    if (v30)
    {
      MEMORY[0x2530AD700](v31);
      if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      a2 = v62[0];
      v26 = v29;
    }
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = a2;
  v34 = v58;
  v35 = *(v58 + 36);
  v36 = v61;
  v37 = *(v61 + v35);

  *(v36 + v35) = v33;
  v38 = sub_25294833C(1u, 0, 0);
  if (!v38)
  {
    v49 = sub_252E36324();
    v50 = *(*(v49 - 8) + 56);
    v41 = v60;
LABEL_35:
    v50(v41, 1, 1, v49);
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v38 dictionary];
  v41 = v60;
  if (!v40)
  {

LABEL_34:
    v49 = sub_252E36324();
    v50 = *(*(v49 - 8) + 56);
    goto LABEL_35;
  }

  v42 = v40;
  v43 = objc_opt_self();
  v62[0] = 0;
  v44 = [v43 dataWithPropertyList:v42 format:200 options:0 error:v62];
  v45 = v62[0];
  if (!v44)
  {
    v51 = v45;
    v52 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_34;
  }

  v46 = sub_252E32D34();
  v48 = v47;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v46, v48);
  v49 = sub_252E36324();
  (*(*(v49 - 8) + 56))(v41, 0, 1, v49);
LABEL_36:
  v53 = v59;
  v54 = v61;
  sub_252956C98(v41, v61 + *(v34 + 40));
  sub_252E37024();
  sub_252E36324();
  (*(*(v49 - 8) + 56))(v53, 0, 1, v49);
  result = sub_252956C98(v53, v54);
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252C96A2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = sub_252C2F554();
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();

      if (v4)
      {
LABEL_4:
        if (sub_252C2AC20())
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          LOBYTE(v4) = sub_252C316BC();
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        goto LABEL_4;
      }
    }

    return v4 & 1;
  }

  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_252C96ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C93358(a1, a2, a3);
}

void *sub_252C96B84@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ScenePartialFailureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252C96BE8()
{
  if ((sub_252C304C4() & 1) == 0)
  {
    return 1;
  }

  v0 = sub_252B2F470();
  v1 = sub_252C75958(v0);

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v3 = sub_252C2A5D8();
  if (v3 >> 62)
  {
    v6 = sub_252E378C4();

    if (v6)
    {
      return 1;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
      return 1;
    }
  }

  v7 = sub_252C285CC();
  v8 = sub_252C93170(v7);

  return v8 == v2;
}

uint64_t sub_252C96CE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252C95CFC(v2, v3, v5, v4);
}

uint64_t sub_252C96D94(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C96DF0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252C96E84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252C963A0(a1, v4, v5, v6);
}

uint64_t sub_252C96F38(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 == 2)
    {
      v4 = "WEATHER_QUERY_GENERIC_LOCATIONS";
    }

    else
    {
      v4 = "led for the key ";
    }

    v2 = 0xE600000000000000;
    v1 = 0x6E6F6D6D6F43;
  }

  else
  {
    v1 = 0x656D614E707041;
    v2 = 0xE700000000000000;
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = "LINK_HOME_HUB_SUPPORT";
    }

    else
    {
      v4 = "GOTO_APPLE_SUPPORT";
    }
  }

  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 16), v8);

  v6 = sub_252C97064(v3, v4 | 0x8000000000000000, v1, v2, v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_252C97064(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v87 = a4;
  v89 = a1;
  v8 = sub_252E32F04();
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v90 = v8;
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v84 = sub_252E36F04();
  v83 = sub_252E36F04();
  v15 = sub_252E36F04();
  v16 = [objc_opt_self() 0x1FB4263F8];
  v86 = a2;
  v17 = v16;

  v85 = a3;
  v18 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_252E33844();
  v19 = sub_252E32E94();
  v21 = v20;
  v80 = *(v88 + 8);
  v81 = v88 + 8;
  v80(v11, v90);
  v94[0] = v19;
  v94[1] = v21;
  v93[0] = 45;
  v93[1] = 0xE100000000000000;
  v91 = 95;
  v92 = 0xE100000000000000;
  sub_252947DBC();
  sub_252E377B4();

  v22 = sub_252E36F04();

  v24 = v83;
  v23 = v84;
  v25 = [v14 localizedStringForKey:v84 table:v83 bundle:v17 languageCode:v22];

  a2 = v86;
  if (v25)
  {
    v26 = sub_252E36F34();
    v28 = v27;

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544D60);
    sub_252929E74(a5, v94);

    v30 = sub_252E36AC4();
    v31 = sub_252E374C4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_252BE2CE0(v26, v28, v93);
      *(v32 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      sub_252E33844();
      v34 = sub_252E32E94();
      v36 = v35;
      v80(v11, v90);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v37 = sub_252BE2CE0(v34, v36, v93);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_252917000, v30, v31, "Get localized string with label: %s for locale %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v33, -1, -1);
      v38 = v32;
      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
LABEL_7:
    v82 = a5;
    v39 = [v12 sharedInstance];
    if (v39)
    {
      v40 = v39;
      v41 = v89;
      v42 = sub_252E36F04();
      v43 = a2;
      v44 = sub_252E36F04();
      v45 = sub_252E36F04();
      v46 = [objc_opt_self() bundleWithIdentifier_];

      v47 = sub_252E36F04();
      v48 = [v40 localizedStringForKey:v42 table:v44 bundle:v46 languageCode:v47];

      a2 = v43;
      if (v48)
      {
        v26 = sub_252E36F34();
        v50 = v49;

        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v51 = sub_252E36AD4();
        __swift_project_value_buffer(v51, qword_27F544D60);
        sub_252929E74(v82, v94);

        v52 = sub_252E36AC4();
        v53 = sub_252E374D4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          LODWORD(v86) = v53;
          v55 = a2;
          v56 = v54;
          v87 = swift_slowAlloc();
          v93[0] = v87;
          *v56 = 136315394;
          *(v56 + 4) = sub_252BE2CE0(v41, v55, v93);
          *(v56 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          v57 = v11;
          sub_252E33844();
          v58 = sub_252E32E94();
          v60 = v59;
          (*(v88 + 8))(v57, v90);
          __swift_destroy_boxed_opaque_existential_1(v94);
          v61 = sub_252BE2CE0(v58, v60, v93);

          *(v56 + 14) = v61;
          _os_log_impl(&dword_252917000, v52, v86, "Unable to get localized string for %s label for locale: %s", v56, 0x16u);
          v62 = v87;
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v62, -1, -1);
          MEMORY[0x2530AED00](v56, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v94);
        }

        v30 = sub_252E36AC4();
        v75 = sub_252E374D4();

        if (!os_log_type_enabled(v30, v75))
        {
          goto LABEL_24;
        }

        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v94[0] = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_252BE2CE0(v26, v50, v94);
        _os_log_impl(&dword_252917000, v30, v75, "Use fallback en_US label: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x2530AED00](v77, -1, -1);
        v38 = v76;
LABEL_23:
        MEMORY[0x2530AED00](v38, -1, -1);
LABEL_24:

        return v26;
      }
    }

    v63 = v90;
    v64 = v88;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v65 = sub_252E36AD4();
    __swift_project_value_buffer(v65, qword_27F544D60);
    sub_252929E74(v82, v94);

    v66 = sub_252E36AC4();
    v67 = sub_252E374D4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = a2;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v93[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = sub_252BE2CE0(v89, v68, v93);
      *(v69 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      sub_252E33844();
      v71 = sub_252E32E94();
      v73 = v72;
      (*(v64 + 8))(v11, v63);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v74 = sub_252BE2CE0(v71, v73, v93);

      *(v69 + 14) = v74;
      _os_log_impl(&dword_252917000, v66, v67, "Unable to get localized string for %s label for locale: %s and en_US", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v70, -1, -1);
      MEMORY[0x2530AED00](v69, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v94);
    }

    return 0;
  }

  return v26;
}

unint64_t VerbSemantic.rawValue.getter()
{
  result = 0x746174735F746573;
  switch(*v0)
  {
    case 1:
      result = 0x746174735F746567;
      break;
    case 2:
      result = 0x6174735F646C6F68;
      break;
    case 3:
      result = 0x656C67676F74;
      break;
    case 4:
      result = 2003789939;
      break;
    case 5:
      result = 0x746E756F63;
      break;
    case 6:
      result = 0x657461657263;
      break;
    case 7:
      result = 0x6574656C6564;
      break;
    case 8:
      result = 6579297;
      break;
    case 9:
      result = 0x65766F6D6572;
      break;
    case 0xA:
      result = 0x656D616E6572;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0x6E6F5F6863696877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static VerbSemantic.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = VerbSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == VerbSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

HomeAutomationInternal::VerbSemantic_optional __swiftcall VerbSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252C97CB0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VerbSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == VerbSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252C97D4C()
{
  v1 = *v0;
  sub_252E37EC4();
  VerbSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C97DB4()
{
  v2 = *v0;
  VerbSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252C97E18()
{
  v1 = *v0;
  sub_252E37EC4();
  VerbSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252C97E88@<X0>(unint64_t *a1@<X8>)
{
  result = VerbSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C97EB0(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = VerbSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == VerbSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252C97F4C(char *a1, char *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = VerbSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == VerbSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252C97FFC(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = VerbSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == VerbSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252C980AC(char *a1, char *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = VerbSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == VerbSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252C98158(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C98488();
  v5 = sub_252C984DC();
  v6 = sub_252C98530();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252C981CC()
{
  result = qword_27F544920;
  if (!qword_27F544920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544920);
  }

  return result;
}

unint64_t sub_252C98224()
{
  result = qword_27F544928;
  if (!qword_27F544928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544928);
  }

  return result;
}

unint64_t sub_252C9827C()
{
  result = qword_27F544930;
  if (!qword_27F544930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544938, &qword_252E58E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544930);
  }

  return result;
}

unint64_t sub_252C982E4()
{
  result = qword_27F544940;
  if (!qword_27F544940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerbSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerbSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252C98488()
{
  result = qword_27F544948;
  if (!qword_27F544948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544948);
  }

  return result;
}

unint64_t sub_252C984DC()
{
  result = qword_27F544950;
  if (!qword_27F544950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544950);
  }

  return result;
}

unint64_t sub_252C98530()
{
  result = qword_27F544958;
  if (!qword_27F544958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544958);
  }

  return result;
}

HomeAutomationInternal::ChargingState_optional __swiftcall ChargingState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChargingState.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    return 0x524148435F544F4ELL;
  }

  else
  {
    return 0x474E494752414843;
  }
}

uint64_t sub_252C98658(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEC000000474E4947;
  if (v2 != 1)
  {
    v3 = 0xEE00454C42414547;
  }

  if (*a1)
  {
    v4 = 0x524148435F544F4ELL;
  }

  else
  {
    v4 = 0x474E494752414843;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0xEC000000474E4947;
  if (*a2 != 1)
  {
    v6 = 0xEE00454C42414547;
  }

  if (*a2)
  {
    v7 = 0x524148435F544F4ELL;
  }

  else
  {
    v7 = 0x474E494752414843;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252C9874C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C98804()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252C988A8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252C98968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000474E4947;
  if (v2 != 1)
  {
    v4 = 0xEE00454C42414547;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x524148435F544F4ELL;
  }

  else
  {
    v6 = 0x474E494752414843;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

HomeAutomationInternal::BatteryState_optional __swiftcall BatteryState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

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

uint64_t sub_252C98A7C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEE004C414D524F4ELL;
  }

  else
  {
    v2 = 0xEB00000000574F4CLL;
  }

  if (*a2)
  {
    v3 = 0xEE004C414D524F4ELL;
  }

  else
  {
    v3 = 0xEB00000000574F4CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  return v4 & 1;
}

uint64_t sub_252C98B20()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C98BA4()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252C98C14()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C98C94@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_252C98CF4(void *a1@<X8>)
{
  v2 = 0xEB00000000574F4CLL;
  if (*v1)
  {
    v2 = 0xEE004C414D524F4ELL;
  }

  *a1 = 0x5F59524554544142;
  a1[1] = v2;
}

unint64_t sub_252C98D38()
{
  result = qword_27F544960;
  if (!qword_27F544960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544960);
  }

  return result;
}

unint64_t sub_252C98D90()
{
  result = qword_27F544968;
  if (!qword_27F544968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544968);
  }

  return result;
}

uint64_t sub_252C98E18(uint64_t a1)
{
  v75 = a1;
  v92 = sub_252E32E84();
  v80 = *(v92 - 8);
  v1 = *(v80 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = sub_2529DA2BC();

  v101[0] = MEMORY[0x277D84F90];
  v81 = v4;
  if (v4 >> 62)
  {
    goto LABEL_141;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v5)
  {
    v6 = 0;
    v95 = (v81 & 0xC000000000000001);
    v89 = v5;
    v90 = (v81 + 32);
    v93 = (v80 + 8);
    v94 = v81 & 0xFFFFFFFFFFFFFF8;
    v88 = "tity with accessoryID ";
    v87 = ". Returning .robotVacuumCleaner";
    v86 = "MatterAccessory.swift";
    v85 = "for accessoryID ";
    v84 = "MatterAccessoryManager.swift";
    v82 = "Modified user task: ";
    v83 = "deviceEntity(for:)";
    do
    {
      if (v95)
      {
        v32 = v6;
        v7 = MEMORY[0x2530ADF00](v6, v81);
        v9 = __OFADD__(v32, 1);
        v10 = v32 + 1;
        if (v9)
        {
          goto LABEL_135;
        }
      }

      else
      {
        if (v6 >= *(v94 + 16))
        {
          goto LABEL_136;
        }

        v7 = *&v90[8 * v6];
        v8 = v6;

        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          goto LABEL_135;
        }
      }

      v97 = v10;
      v11 = [*&v7[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] uniqueIdentifier];
      v12 = v91;
      sub_252E32E64();

      v99 = sub_252E32E24();
      v100 = v13;
      (*v93)(v12, v92);
      v14 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v15 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v16 = *&v14[v15];
      v96 = v7;
      v98 = v14;
      if (v16 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x2530ADF00](v18, v16);
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_129;
            }
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_130;
            }

            v20 = *(v16 + 8 * v18 + 32);

            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
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
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              v5 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v22 = *(v20 + qword_27F5427D0);

          sub_252E36744();

          if (v102[1])
          {
            if (v102[0] == v99 && v102[1] == v100)
            {

              goto LABEL_30;
            }

            v19 = sub_252E37DB4();

            if (v19)
            {
              break;
            }
          }

          ++v18;
          if (v21 == v17)
          {
            goto LABEL_24;
          }
        }

LABEL_30:

        v27 = sub_252BF8258(v20);
        v26 = v89;
        if (!v27)
        {
          goto LABEL_36;
        }

        if (!*(v27 + 2))
        {

LABEL_36:
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v30 = sub_252E36AD4();
          __swift_project_value_buffer(v30, qword_27F544CB8);
          v102[0] = 0;
          v102[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000036, v82 | 0x8000000000000000);
          MEMORY[0x2530AD570](v99, v100);

          MEMORY[0x2530AD570](0xD00000000000001FLL, v88 | 0x8000000000000000);
          sub_252CC4050(v102[0], v102[1], 0xD000000000000075, v87 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

          goto LABEL_39;
        }

        v28 = v27;

        if (!*(v28 + 2))
        {
          goto LABEL_140;
        }

        v29 = *(v28 + 4);

        if (v29 != 46)
        {

          goto LABEL_41;
        }
      }

      else
      {
LABEL_24:

        if (qword_27F53F560 != -1)
        {
          swift_once();
        }

        v23 = sub_252E36AD4();
        __swift_project_value_buffer(v23, qword_27F544EC8);
        v102[0] = 0;
        v102[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000040, v86 | 0x8000000000000000);
        v25 = v99;
        v24 = v100;
        MEMORY[0x2530AD570](v99, v100);
        sub_252CC4050(v102[0], v102[1], 0xD00000000000007CLL, v85 | 0x8000000000000000, 0xD000000000000012, v84 | 0x8000000000000000, 375);

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v23, qword_27F544CB8);
        v102[0] = 0;
        v102[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000027, v83 | 0x8000000000000000);
        MEMORY[0x2530AD570](v25, v24);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v88 | 0x8000000000000000);
        sub_252CC4050(v102[0], v102[1], 0xD000000000000075, v87 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
        v26 = v89;
LABEL_39:
      }

      sub_252E37A94();
      v31 = *(v101[0] + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_41:
      v6 = v97;
    }

    while (v97 != v26);
    v33 = v101[0];
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v75 + 16);
  if (v34)
  {
    v35 = 0;
    v77 = v75 + 32;
    v36 = (v33 >> 62) & 1;
    if (v33 < 0)
    {
      LODWORD(v36) = 1;
    }

    LODWORD(v90) = v36;
    v93 = (v33 & 0xC000000000000001);
    v88 = v33 + 32;
    v89 = (v80 + 8);
    v80 = "Modified user task: ";
    v85 = ". Returning .robotVacuumCleaner";
    v86 = "tity with accessoryID ";
    v83 = "for accessoryID ";
    v84 = "MatterAccessory.swift";
    v82 = "MatterAccessoryManager.swift";
    v37 = MEMORY[0x277D84F90];
    v81 = "deviceEntity(for:)";
    v87 = v33;
    v76 = v34;
LABEL_52:
    v78 = v37;
    while (1)
    {
      if (v35 >= v34)
      {
        goto LABEL_138;
      }

      v38 = v35;
      memcpy(v102, (v77 + 504 * v35), sizeof(v102));
      if (__OFADD__(v38, 1))
      {
        goto LABEL_139;
      }

      v79 = v38 + 1;
      if (!*(v102[14] + 16) && !*(v102[15] + 16))
      {
        sub_2529353AC(v102, v101);
LABEL_117:
        v37 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA480(0, *(v37 + 16) + 1, 1);
          v37 = v103;
        }

        v73 = *(v37 + 16);
        v72 = *(v37 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_2529AA480((v72 > 1), v73 + 1, 1);
          v37 = v103;
        }

        *(v37 + 16) = v73 + 1;
        memcpy((v37 + 504 * v73 + 32), v102, 0x1F8uLL);
        v34 = v76;
        v35 = v79;
        if (v79 == v76)
        {
          goto LABEL_124;
        }

        goto LABEL_52;
      }

      sub_2529353AC(v102, v101);
      v39 = 0;
      v40 = 0;
      if (!v90)
      {
        goto LABEL_60;
      }

LABEL_58:
      if (v40 != sub_252E378C4())
      {
        break;
      }

LABEL_104:
      v66 = 0;
      while (v39 != v66)
      {
        if (v93)
        {
          MEMORY[0x2530ADF00](v66, v33);
          if (__OFADD__(v66, 1))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (v66 >= *(v33 + 16))
          {
            goto LABEL_134;
          }

          v67 = *(v33 + 8 * v66 + 32);

          if (__OFADD__(v66, 1))
          {
            goto LABEL_133;
          }
        }

        memcpy(v101, v102, sizeof(v101));
        sub_252BB2B50(MEMORY[0x277D84F90]);
        v69 = v68;
        v70 = sub_252D68B70(v68);

        ++v66;
        if (v70)
        {
          goto LABEL_117;
        }
      }

      sub_252935408(v102);
      v34 = v76;
      v37 = v78;
      v35 = v79;
      if (v79 == v76)
      {
        goto LABEL_124;
      }
    }

    while (1)
    {
      if (v93)
      {
        v41 = MEMORY[0x2530ADF00](v40, v33);
        v9 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v9)
        {
          goto LABEL_131;
        }
      }

      else
      {
        if (v40 >= *(v33 + 16))
        {
          goto LABEL_132;
        }

        v41 = *(v88 + 8 * v40);

        v9 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v9)
        {
          goto LABEL_131;
        }
      }

      v94 = v42;
      memcpy(v101, v102, sizeof(v101));
      v95 = sub_252BADB6C();
      v97 = v41;
      v43 = [*(v41 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v44 = v91;
      sub_252E32E64();

      v99 = sub_252E32E24();
      v100 = v45;
      (*v89)(v44, v92);
      v46 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v47 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v96 = v46;
      v48 = *&v46[v47];
      v98 = v39;
      v49 = v48 >> 62 ? sub_252E378C4() : *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v49)
      {
        break;
      }

      v50 = 0;
      while (1)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x2530ADF00](v50, v48);
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_126;
          }
        }

        else
        {
          if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }

          v52 = *(v48 + 8 * v50 + 32);

          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }
        }

        v54 = *(v52 + qword_27F5427D0);

        sub_252E36744();

        if (v101[1])
        {
          if (v101[0] == v99 && v101[1] == v100)
          {

            goto LABEL_86;
          }

          v51 = sub_252E37DB4();

          if (v51)
          {
            break;
          }
        }

        ++v50;
        if (v53 == v49)
        {
          goto LABEL_80;
        }
      }

LABEL_86:

      v59 = sub_252BF8258(v52);
      v58 = v98;
      if (!v59)
      {
        goto LABEL_92;
      }

      if (!*(v59 + 2))
      {

LABEL_92:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v64 = sub_252E36AD4();
        __swift_project_value_buffer(v64, qword_27F544CB8);
        v101[0] = 0;
        v101[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v80 | 0x8000000000000000);
        MEMORY[0x2530AD570](v99, v100);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v86 | 0x8000000000000000);
        sub_252CC4050(v101[0], v101[1], 0xD000000000000075, v85 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

        v33 = v87;
LABEL_95:

        goto LABEL_96;
      }

      v60 = v59;

      if (!*(v60 + 2))
      {
        goto LABEL_137;
      }

      v61 = *(v60 + 4);

      v33 = v87;
      if (v61 != 46)
      {
        v62 = v95;
        v63 = sub_252D50560(v95);
        goto LABEL_97;
      }

LABEL_96:
      v62 = v95;
      v63 = sub_25292AB64(v95);
LABEL_97:
      v65 = v63;

      if (v65)
      {
        goto LABEL_117;
      }

      v39 = v58 + 1;
      v40 = v94;
      if (v90)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v40 == *(v33 + 16))
      {
        goto LABEL_104;
      }
    }

LABEL_80:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v55 = sub_252E36AD4();
    __swift_project_value_buffer(v55, qword_27F544EC8);
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v84 | 0x8000000000000000);
    v57 = v99;
    v56 = v100;
    MEMORY[0x2530AD570](v99, v100);
    sub_252CC4050(v101[0], v101[1], 0xD00000000000007CLL, v83 | 0x8000000000000000, 0xD000000000000012, v82 | 0x8000000000000000, 375);

    v58 = v98;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v55, qword_27F544CB8);
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v81 | 0x8000000000000000);
    MEMORY[0x2530AD570](v57, v56);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v86 | 0x8000000000000000);
    sub_252CC4050(v101[0], v101[1], 0xD000000000000075, v85 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
    v33 = v87;
    goto LABEL_95;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_124:

  if (*(v37 + 16))
  {
    return v37;
  }

LABEL_128:
}

uint64_t sub_252C99DD8()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = 0;
    v50 = v1 & 0xC000000000000001;
    v46 = v1 + 32;
    v47 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue;
    v48 = i;
    v49 = v1;
    while (1)
    {
      if (v50)
      {
        v7 = MEMORY[0x2530ADF00](v3, v1);
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v47 + 16))
      {
        goto LABEL_81;
      }

      v7 = *(v46 + 8 * v3);

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

LABEL_11:
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v44 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
        }

        v10 = sub_252E378C4();
        if (v10)
        {
          goto LABEL_13;
        }

LABEL_77:

        if (v3 == i)
        {
          return v4;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_77;
        }

LABEL_13:
        v55 = v10;
        if (v10 < 1)
        {
          goto LABEL_80;
        }

        v51 = v3;
        v56 = v9 & 0xC000000000000001;

        v11 = 0;
        v12 = v55;
        v54 = v9;
        do
        {
          if (v56)
          {
            v13 = MEMORY[0x2530ADF00](v11, v9);
            if (!v4)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);

            if (!v4)
            {
LABEL_38:
              v4 = *(v13 + *v5);
              if (v4)
              {
                if (!*(v4 + *v6))
                {

                  v4 = 0;
                  goto LABEL_71;
                }

LABEL_40:
              }

LABEL_70:

              goto LABEL_71;
            }
          }

          v14 = *v6;
          v15 = *(v4 + *v6);
          if (!v15)
          {
            goto LABEL_70;
          }

          v16 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
          v17 = *(v4 + *v6);

          v18 = sub_252A47810(v15 + v16);
          v19 = qword_2864A0BE8;
          v20 = unk_2864A0BF0;

          if (v18 == 5)
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }

          if (v18 == 1)
          {
            v21 = 1;
          }

          v22 = v19 == v18 || v20 == v18;
          v23 = v22 ? 0 : v21;
          v24 = *(v13 + *v5);
          v9 = v54;
          v12 = v55;
          if (!v24)
          {
            goto LABEL_70;
          }

          v25 = *(v24 + *v6);
          if (!v25)
          {
            goto LABEL_70;
          }

          v52 = v23;
          v53 = *v5;
          v26 = v6;
          v27 = v5;
          v28 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

          v29 = sub_252A47810(v25 + v28);
          v31 = qword_2864A0BE8;
          v30 = unk_2864A0BF0;

          if (v31 == v29 || v30 == v29)
          {
            v33 = 0;
          }

          else if (v29 == 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = v29 == 5 ? 2 : 3;
          }

          v5 = v27;
          v6 = v26;
          v9 = v54;
          v12 = v55;
          v34 = *(v4 + v14);
          if (!v34)
          {
            goto LABEL_70;
          }

          if (*(v34 + 32))
          {
            goto LABEL_70;
          }

          v35 = *(v13 + v53);
          if (!v35)
          {
            goto LABEL_70;
          }

          v36 = *(v35 + *v26);
          if (!v36 || (*(v36 + 32) & 1) != 0)
          {
            goto LABEL_70;
          }

          if (v52 > 1u)
          {
            if (v52 == 2)
            {
              v38 = 0xE800000000000000;
              v37 = 0x6E6F697461727564;
            }

            else
            {
              v38 = 0xE700000000000000;
              v37 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v37 = 0x74617265706D6574;
            v38 = 0xEB00000000657275;
            if (v52)
            {
              v37 = 0x61746E6563726570;
              v38 = 0xEA00000000006567;
            }
          }

          if (v33 > 1u)
          {
            if (v33 == 2)
            {
              v40 = 0xE800000000000000;
              v39 = 0x6E6F697461727564;
            }

            else
            {
              v40 = 0xE700000000000000;
              v39 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v39 = 0x74617265706D6574;
            v40 = 0xEB00000000657275;
            if (v33)
            {
              v39 = 0x61746E6563726570;
              v40 = 0xEA00000000006567;
            }
          }

          v41 = *(v34 + 24);
          v42 = *(v36 + 24);
          if (v37 == v39 && v38 == v40)
          {

LABEL_68:
            v9 = v54;
            if (v41 < v42)
            {

              v4 = *(v13 + v53);
              goto LABEL_40;
            }

            goto LABEL_70;
          }

          v43 = sub_252E37DB4();

          if (v43)
          {
            goto LABEL_68;
          }

          v9 = v54;
LABEL_71:
          ++v11;
        }

        while (v12 != v11);

        i = v48;
        v1 = v49;
        v3 = v51;
        if (v51 == v48)
        {
          return v4;
        }
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  return 0;
}

uint64_t sub_252C9A2AC()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = 0;
    v50 = v1 & 0xC000000000000001;
    v46 = v1 + 32;
    v47 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue;
    v48 = i;
    v49 = v1;
    while (1)
    {
      if (v50)
      {
        v7 = MEMORY[0x2530ADF00](v3, v1);
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v47 + 16))
      {
        goto LABEL_81;
      }

      v7 = *(v46 + 8 * v3);

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

LABEL_11:
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v44 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
        }

        v10 = sub_252E378C4();
        if (v10)
        {
          goto LABEL_13;
        }

LABEL_77:

        if (v3 == i)
        {
          return v4;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_77;
        }

LABEL_13:
        v55 = v10;
        if (v10 < 1)
        {
          goto LABEL_80;
        }

        v51 = v3;
        v56 = v9 & 0xC000000000000001;

        v11 = 0;
        v12 = v55;
        v54 = v9;
        do
        {
          if (v56)
          {
            v13 = MEMORY[0x2530ADF00](v11, v9);
            if (!v4)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);

            if (!v4)
            {
LABEL_38:
              v4 = *(v13 + *v5);
              if (v4)
              {
                if (!*(v4 + *v6))
                {

                  v4 = 0;
                  goto LABEL_71;
                }

LABEL_40:
              }

LABEL_70:

              goto LABEL_71;
            }
          }

          v14 = *v6;
          v15 = *(v4 + *v6);
          if (!v15)
          {
            goto LABEL_70;
          }

          v16 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
          v17 = *(v4 + *v6);

          v18 = sub_252A47810(v15 + v16);
          v19 = qword_2864A0BE8;
          v20 = unk_2864A0BF0;

          if (v18 == 5)
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }

          if (v18 == 1)
          {
            v21 = 1;
          }

          v22 = v19 == v18 || v20 == v18;
          v23 = v22 ? 0 : v21;
          v24 = *(v13 + *v5);
          v9 = v54;
          v12 = v55;
          if (!v24)
          {
            goto LABEL_70;
          }

          v25 = *(v24 + *v6);
          if (!v25)
          {
            goto LABEL_70;
          }

          v52 = v23;
          v53 = *v5;
          v26 = v6;
          v27 = v5;
          v28 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

          v29 = sub_252A47810(v25 + v28);
          v31 = qword_2864A0BE8;
          v30 = unk_2864A0BF0;

          if (v31 == v29 || v30 == v29)
          {
            v33 = 0;
          }

          else if (v29 == 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = v29 == 5 ? 2 : 3;
          }

          v5 = v27;
          v6 = v26;
          v9 = v54;
          v12 = v55;
          v34 = *(v4 + v14);
          if (!v34)
          {
            goto LABEL_70;
          }

          if (*(v34 + 32))
          {
            goto LABEL_70;
          }

          v35 = *(v13 + v53);
          if (!v35)
          {
            goto LABEL_70;
          }

          v36 = *(v35 + *v26);
          if (!v36 || (*(v36 + 32) & 1) != 0)
          {
            goto LABEL_70;
          }

          if (v52 > 1u)
          {
            if (v52 == 2)
            {
              v38 = 0xE800000000000000;
              v37 = 0x6E6F697461727564;
            }

            else
            {
              v38 = 0xE700000000000000;
              v37 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v37 = 0x74617265706D6574;
            v38 = 0xEB00000000657275;
            if (v52)
            {
              v37 = 0x61746E6563726570;
              v38 = 0xEA00000000006567;
            }
          }

          if (v33 > 1u)
          {
            if (v33 == 2)
            {
              v40 = 0xE800000000000000;
              v39 = 0x6E6F697461727564;
            }

            else
            {
              v40 = 0xE700000000000000;
              v39 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v39 = 0x74617265706D6574;
            v40 = 0xEB00000000657275;
            if (v33)
            {
              v39 = 0x61746E6563726570;
              v40 = 0xEA00000000006567;
            }
          }

          v41 = *(v34 + 24);
          v42 = *(v36 + 24);
          if (v37 == v39 && v38 == v40)
          {

LABEL_68:
            v9 = v54;
            if (v42 < v41)
            {

              v4 = *(v13 + v53);
              goto LABEL_40;
            }

            goto LABEL_70;
          }

          v43 = sub_252E37DB4();

          if (v43)
          {
            goto LABEL_68;
          }

          v9 = v54;
LABEL_71:
          ++v11;
        }

        while (v12 != v11);

        i = v48;
        v1 = v49;
        v3 = v51;
        if (v51 == v48)
        {
          return v4;
        }
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  return 0;
}

uint64_t sub_252C9A780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v75 - v3;
  v5 = *(v0 + 24);
  if (v5 >> 62)
  {
    goto LABEL_118;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return 0;
  }

  while (2)
  {
    v75 = v4;
    v84 = 0;
    v7 = 0;
    v4 = 0;
    v8 = 0;
    v80 = v5 & 0xC000000000000001;
    v77 = v5 & 0xFFFFFFFFFFFFFF8;
    v76 = v5 + 32;
    v9 = 0.0;
    v10 = &OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
    v78 = v6;
    v79 = v5;
LABEL_5:
    if (v80)
    {
      v11 = MEMORY[0x2530ADF00](v4, v5);
      v12 = __OFADD__(v4++, 1);
      if (v12)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (v4 >= *(v77 + 16))
      {
        goto LABEL_117;
      }

      v11 = *(v76 + 8 * v4);

      v12 = __OFADD__(v4++, 1);
      if (v12)
      {
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        v6 = sub_252E378C4();
        if (!v6)
        {
          return 0;
        }

        continue;
      }
    }

    break;
  }

  v13 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v44 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    }

    v14 = sub_252E378C4();
    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_13:
      v85 = v14;
      if (v14 < 1)
      {
        goto LABEL_116;
      }

      v81 = v11;
      v82 = v4;
      v83 = v7;
      v86 = v13 & 0xC000000000000001;

      v15 = 0;
      v5 = v85;
      while (1)
      {
        if (v86)
        {
          v4 = MEMORY[0x2530ADF00](v15, v13);
          if (v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v4 = *(v13 + 8 * v15 + 32);

          if (v8)
          {
LABEL_19:
            v16 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
            if (v16)
            {
              v17 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
              if (v17)
              {
                v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
                if (v18)
                {
                  v19 = *v10;

                  v20 = sub_252A47810(v16 + v19);
                  if (v20 == 5)
                  {
                    v21 = 2;
                  }

                  else
                  {
                    v21 = 3;
                  }

                  if (v20 == 1)
                  {
                    v21 = 1;
                  }

                  if (qword_2864A0BE8 == v20 || unk_2864A0BF0 == v20)
                  {
                    v23 = 0;
                  }

                  else
                  {
                    v23 = v21;
                  }

                  v24 = sub_252A47810(v18 + *v10);
                  if (qword_2864A0BE8 == v24 || unk_2864A0BF0 == v24)
                  {
                    v26 = 0;
                  }

                  else if (v24 == 1)
                  {
                    v26 = 1;
                  }

                  else if (v24 == 5)
                  {
                    v26 = 2;
                  }

                  else
                  {
                    v26 = 3;
                  }

                  if (v23 == 2)
                  {
                    v29 = 0x6E6F697461727564;
                  }

                  else
                  {
                    v29 = 0x6E776F6E6B6E75;
                  }

                  if (v23 == 2)
                  {
                    v30 = 0xE800000000000000;
                  }

                  else
                  {
                    v30 = 0xE700000000000000;
                  }

                  if (v23)
                  {
                    v31 = 0x61746E6563726570;
                  }

                  else
                  {
                    v31 = 0x74617265706D6574;
                  }

                  if (v23)
                  {
                    v32 = 0xEA00000000006567;
                  }

                  else
                  {
                    v32 = 0xEB00000000657275;
                  }

                  if (v23 <= 1u)
                  {
                    v33 = v31;
                  }

                  else
                  {
                    v33 = v29;
                  }

                  if (v23 <= 1u)
                  {
                    v34 = v32;
                  }

                  else
                  {
                    v34 = v30;
                  }

                  v35 = v10;
                  if (v26 == 2)
                  {
                    v36 = 0x6E6F697461727564;
                  }

                  else
                  {
                    v36 = 0x6E776F6E6B6E75;
                  }

                  if (v26 == 2)
                  {
                    v37 = 0xE800000000000000;
                  }

                  else
                  {
                    v37 = 0xE700000000000000;
                  }

                  if (v26)
                  {
                    v38 = 0x61746E6563726570;
                  }

                  else
                  {
                    v38 = 0x74617265706D6574;
                  }

                  if (v26)
                  {
                    v39 = 0xEA00000000006567;
                  }

                  else
                  {
                    v39 = 0xEB00000000657275;
                  }

                  if (v26 <= 1u)
                  {
                    v40 = v38;
                  }

                  else
                  {
                    v40 = v36;
                  }

                  if (v26 <= 1u)
                  {
                    v41 = v39;
                  }

                  else
                  {
                    v41 = v37;
                  }

                  if (v33 == v40 && v34 == v41)
                  {

                    goto LABEL_94;
                  }

                  v42 = sub_252E37DB4();

                  if (v42)
                  {
LABEL_94:
                    v43 = *(v18 + 24);
                    v4 = *(v18 + 32);

                    if ((v4 & 1) == 0)
                    {
                      v5 = v85;
                      v12 = __OFADD__(v84++, 1);
                      if (v12)
                      {
                        goto LABEL_114;
                      }

                      v10 = v35;
                      v9 = v9 + v43;
                      goto LABEL_16;
                    }

                    v10 = v35;
                  }

                  else
                  {

                    v10 = v35;
                  }

LABEL_99:
                  v5 = v85;
                  goto LABEL_16;
                }

                goto LABEL_50;
              }
            }

            goto LABEL_15;
          }
        }

        v8 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v8)
        {
          v5 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
          if (!v5 || (*(v5 + 32) & 1) != 0)
          {

            v8 = 0;
            goto LABEL_99;
          }

          v9 = *(v5 + 24);
          v27 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

          v12 = __OFADD__(v84++, 1);
          if (v12)
          {
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          swift_beginAccess();
          if (*(v5 + 16))
          {

            v83 = *(v5 + 16);
            v28 = v83;
          }

LABEL_50:

          goto LABEL_99;
        }

LABEL_15:

LABEL_16:
        if (v5 == ++v15)
        {

          v4 = v82;
          v7 = v83;
          v6 = v78;
          v5 = v79;
          if (v82 == v78)
          {
            goto LABEL_104;
          }

          goto LABEL_5;
        }
      }
    }
  }

  if (v4 != v6)
  {
    goto LABEL_5;
  }

LABEL_104:
  if (!v8)
  {
LABEL_109:

    return 0;
  }

  v45 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue;
  v46 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (!v46)
  {

    goto LABEL_109;
  }

  v47 = type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_252D857C4();
  *(v50 + 16) = v9 / v84;
  *(v50 + 24) = 0;
  v51 = v46 + *v10;
  v52 = v75;
  sub_252956C1C(v51, v75);
  v53 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();

  sub_252956C98(v52, v50 + v53);
  swift_endAccess();
  v54 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_252D859B8(v50);
  if (v7)
  {
    swift_beginAccess();
    v58 = v57[2];
    v57[2] = v7;
    v59 = v7;
  }

  else
  {
    v59 = 0;
  }

  v61 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = swift_allocObject();
  v65 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v66 = sub_252E36324();
  (*(*(v66 - 8) + 56))(v64 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue;
  *(v64 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
  *(v64 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
  v68 = v75;
  sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v75);
  swift_beginAccess();
  sub_252956C98(v68, v64 + v65);
  swift_endAccess();
  *(v64 + v67) = *(v8 + v45);
  LOBYTE(v68) = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

  v69 = type metadata accessor for HomeAutomationEntityStateValue(0);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  sub_252956C1C(v64 + v65, v72 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  swift_setDeallocating();
  sub_252938BBC(v64 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
  v73 = *(*v64 + 48);
  v74 = *(*v64 + 52);
  swift_deallocClassInstance();
  result = v72;
  *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = v57;
  *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v68;
  return result;
}