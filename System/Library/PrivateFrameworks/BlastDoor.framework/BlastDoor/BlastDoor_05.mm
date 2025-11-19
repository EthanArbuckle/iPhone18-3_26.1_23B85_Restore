unint64_t sub_214046B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904058, &unk_2146EA9A0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, v10, &qword_27C904060, &qword_214759790);
      result = sub_21408C650(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_213FB77C8(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904048, &qword_2146EA990);
    v3 = sub_2146DA058();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21408C300(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904038, &qword_2146EA980);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C904040, &qword_2146EA988);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = memcpy((v3[7] + 480 * result), v15, 0x1D9uLL);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 496;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_214046ED4()
{
  v0 = sub_2146DA8B8();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214046F5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v7 = v3;
  return v4(v2, &v7) & 1;
}

uint64_t sub_214046FDC(char *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_2140470F4(uint64_t *a1, char *a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v10 = *a1;
  v8[2] = &v10;
  v9 = v5;
  return sub_214042744(a3, v8, v6) & 1;
}

uint64_t sub_2140471FC(int *a1, char *a2)
{
  v3 = *(a1 + 4);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_21404727C(__int128 *a1, char *a2)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_2140472D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v2 + 2);
  v10 = *v2;
  v11 = v5;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = v3;
  return v6(&v10, &v9) & 1;
}

uint64_t sub_214047354(__int128 *a1, char *a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v10 = *a1;
  v8[2] = &v10;
  v9 = v5;
  return sub_214042744(a3, v8, v6) & 1;
}

uint64_t sub_2140473AC(__int128 *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_214047400(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v8 = **(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = v2;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_214047474(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v8[2] = a1;
  v9 = v5;
  return sub_214042744(a3, v8, v6) & 1;
}

uint64_t sub_2140474C0(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a2;
  return v3(a1, &v6) & 1;
}

uint64_t sub_21404752C(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_214047580(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v8 = **(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = v2;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_2140475FC(uint64_t *a1, char *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_214047658(int *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_2140476DC(int *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21404775C(__int16 *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_2140477B0(__int128 *a1, char *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_214042744(sub_214047814, v6, v4) & 1;
}

uint64_t sub_214047870(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_2140478EC(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *(v2 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v7[2] = v9;
  v8 = v4;
  return sub_214042744(sub_2140479C0, v7, v5) & 1;
}

uint64_t sub_21404796C(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v9[0] = *a1;
  v9[1] = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(v9, &v8) & 1;
}

uint64_t sub_214047BB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v147 - v4;
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v157 = &v147 - v13;
  v14 = type metadata accessor for CloudKitSharingToken();
  v156 = *(v14 - 8);
  v15 = *(v156 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v153 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v159 = &v147 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v155 = &v147 - v25;
  MEMORY[0x28223BE20](v24);
  v160 = &v147 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v154 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v147 - v31;
  v33 = MEMORY[0x277D84F98];
  v170 = MEMORY[0x277D84F98];
  v34 = *(v1 + 24);
  if (v34)
  {
    if (v34 == 1)
    {
      goto LABEL_52;
    }

    v35 = *(v1 + 16);
    v165 = MEMORY[0x277D837D0];
    *&v163 = v35;
    *(&v163 + 1) = v34;
    sub_213FDC730(&v163, &v168);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v33;
    sub_2140524DC(&v168, 0x6D614E656D6F486BLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v170 = *&v162[0];
  }

  v158 = v14;
  v148 = v10;
  v149 = v7;
  v150 = v5;
  v151 = v6;
  v152 = v17;
  v161 = type metadata accessor for IDSHomeKitInvitation(0);
  v37 = v161[5];
  sub_213FB2E54(v1 + v37, v32, &qword_27C913090, &unk_2146E9DB0);
  v38 = sub_2146D8B08();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v41 = v40(v32, 1, v38);
  sub_213FB2DF4(v32, &qword_27C913090, &unk_2146E9DB0);
  if (v41 != 1)
  {
    v42 = v1;
    v43 = v1 + v37;
    v44 = v154;
    sub_213FB2E54(v43, v154, &qword_27C913090, &unk_2146E9DB0);
    if (v40(v44, 1, v38) == 1)
    {
      sub_213FB2DF4(v44, &qword_27C913090, &unk_2146E9DB0);
      sub_2144AEF6C(0xD000000000000018, 0x800000021478AE30, &v163);
      sub_213FB2DF4(&v163, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v165 = v38;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v163);
      (*(v39 + 32))(boxed_opaque_existential_0, v44, v38);
      sub_213FDC730(&v163, &v168);
      v46 = v170;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *&v162[0] = v46;
      sub_2140524DC(&v168, 0xD000000000000018, 0x800000021478AE30, v47);
      v170 = *&v162[0];
    }

    v1 = v42;
  }

  v48 = v161;
  v49 = v1 + v161[6];
  v50 = *(v49 + 8);
  v51 = v1;
  if (v50)
  {
    v52 = *(v49 + 32);
    v54 = *(v49 + 16);
    v53 = *(v49 + 24);
    *&v163 = *v49;
    *(&v163 + 1) = v50;
    v164 = v54;
    v165 = v53;
    v166 = v52;
    v55 = sub_214048DD8();
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v168 = v55;
    sub_213FDC730(&v168, v162);
    v56 = v170;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v56;
    sub_2140524DC(v162, 0xD000000000000019, 0x800000021478AE10, v57);
    v170 = v167;
  }

  v58 = *(v1 + v48[7]);
  if (v58 != 2)
  {
    v165 = MEMORY[0x277D839B0];
    LOBYTE(v163) = v58 & 1;
    sub_213FDC730(&v163, &v168);
    v59 = v170;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v59;
    sub_2140524DC(&v168, 0xD000000000000024, 0x800000021478ADE0, v60);
    v170 = *&v162[0];
  }

  v61 = v1 + v48[8];
  if (*(v61 + 25))
  {
    goto LABEL_52;
  }

  if ((*(v61 + 24) & 1) == 0)
  {
    v62 = *(v61 + 16);
    v165 = MEMORY[0x277D83B88];
    *&v163 = v62;
    sub_213FDC730(&v163, &v168);
    v63 = v170;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v63;
    sub_2140524DC(&v168, 0xD00000000000001FLL, 0x800000021478ADC0, v64);
    v170 = *&v162[0];
  }

  v65 = *(v1 + v48[9]);
  if (v65 != 2)
  {
    v165 = MEMORY[0x277D839B0];
    LOBYTE(v163) = v65 & 1;
    sub_213FDC730(&v163, &v168);
    v66 = v170;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v66;
    sub_2140524DC(&v168, 0xD00000000000002BLL, 0x800000021478AD90, v67);
    v170 = *&v162[0];
  }

  v68 = (v1 + v48[10]);
  v69 = *v68;
  if (*v68 != 1)
  {
    v70 = v68[1];
    *&v162[0] = v69;
    *(&v162[0] + 1) = v70;
    v71 = sub_214048F2C();
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v163 = v71;
    sub_213FDC730(&v163, &v168);
    v72 = v170;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v72;
    sub_2140524DC(&v168, 0x63532E47522E4D48, 0xEE00656C75646568, v73);
    v170 = v167;
  }

  v74 = v48[11];
  v75 = v160;
  sub_213FB2E54(v1 + v74, v160, &unk_27C904F30, &unk_2146EFA20);
  v76 = sub_2146D8B88();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  v79 = v78(v75, 1, v76);
  sub_213FB2DF4(v75, &unk_27C904F30, &unk_2146EFA20);
  if (v79 != 1)
  {
    v80 = v155;
    sub_213FB2E54(v51 + v74, v155, &unk_27C904F30, &unk_2146EFA20);
    if (v78(v80, 1, v76) == 1)
    {
      __break(1u);
      goto LABEL_50;
    }

    v81 = sub_2146D8B28();
    v165 = MEMORY[0x277D837D0];
    *&v163 = v81;
    *(&v163 + 1) = v82;
    (*(v77 + 8))(v80, v76);
    sub_213FDC730(&v163, &v168);
    v83 = v170;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v83;
    sub_2140524DC(&v168, 0x495555656D6F486BLL, 0xE900000000000044, v84);
    v170 = *&v162[0];
  }

  v85 = v161;
  v86 = v51 + v161[12];
  v87 = *(v86 + 24);
  if (v87 >> 60 == 11)
  {
    goto LABEL_52;
  }

  if (v87 >> 60 != 15)
  {
    v88 = *(v86 + 16);
    v165 = MEMORY[0x277CC9318];
    *&v163 = v88;
    *(&v163 + 1) = v87;
    sub_213FDC730(&v163, &v168);
    sub_213FDCA18(v88, v87);
    v89 = v170;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v89;
    sub_2140524DC(&v168, 0xD000000000000014, 0x800000021478AD70, v90);
    v170 = *&v162[0];
  }

  v91 = v51 + v85[13];
  v92 = *(v91 + 24);
  if (v92)
  {
    if (v92 == 1)
    {
      goto LABEL_52;
    }

    v93 = *(v91 + 16);
    v165 = MEMORY[0x277D837D0];
    *&v163 = v93;
    *(&v163 + 1) = v92;
    sub_213FDC730(&v163, &v168);

    v94 = v170;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v94;
    sub_2140524DC(&v168, 0xD000000000000019, 0x800000021478AD50, v95);
    v170 = *&v162[0];
  }

  v96 = v85[14];
  v97 = v159;
  sub_213FB2E54(v51 + v96, v159, &unk_27C904F30, &unk_2146EFA20);
  v79 = v78(v97, 1, v76);
  sub_213FB2DF4(v97, &unk_27C904F30, &unk_2146EFA20);
  if (v79 != 1)
  {
    v98 = v153;
    sub_213FB2E54(v51 + v96, v153, &unk_27C904F30, &unk_2146EFA20);
    if (v78(v98, 1, v76) != 1)
    {
      v99 = sub_2146D8B28();
      v165 = MEMORY[0x277D837D0];
      *&v163 = v99;
      *(&v163 + 1) = v100;
      (*(v77 + 8))(v98, v76);
      sub_213FDC730(&v163, &v168);
      v101 = v170;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      *&v162[0] = v101;
      sub_2140524DC(&v168, 0xD000000000000018, 0x800000021478AD30, v102);
      v170 = *&v162[0];
      goto LABEL_32;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_32:
  v103 = v161;
  v104 = v157;
  sub_213FB2E54(v51 + v161[15], v157, &qword_27C9041D8, &qword_2146ED5C0);
  v105 = v158;
  if ((*(v156 + 48))(v104, 1, v158) == 1)
  {
    sub_213FB2DF4(v104, &qword_27C9041D8, &qword_2146ED5C0);
    goto LABEL_36;
  }

  v106 = v152;
  sub_21404A900(v104, v152);
  v107 = sub_2145A8204();
  v108 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
  v109 = v107;
  v110 = [v108 initRequiringSecureCoding_];
  v111 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v110 setClassName:v111 forClass:swift_getObjCClassFromMetadata()];

  [v110 encodeObject:v109 forKey:*MEMORY[0x277CCA308]];
  v160 = v109;

  v112 = *(v105 + 24);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v79 = v150;
  sub_213FB2E54(v106 + v112 + *(v113 + 28), v150, &unk_27C9131A0, &unk_2146E9D10);
  v114 = v149;
  v115 = v151;
  if ((*(v149 + 48))(v79, 1, v151) == 1)
  {
LABEL_51:
    sub_213FB2DF4(v79, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_52;
  }

  v116 = v148;
  (*(v114 + 32))(v148, v79, v115);
  v117 = sub_2146D8868();
  v119 = v118;
  (*(v114 + 8))(v116, v115);
  v165 = MEMORY[0x277D837D0];
  *&v163 = v117;
  *(&v163 + 1) = v119;
  sub_213FDC730(&v163, &v168);
  v120 = v170;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  *&v162[0] = v120;
  sub_2140524DC(&v168, 0xD00000000000001CLL, 0x800000021478ACF0, v121);
  v122 = *&v162[0];
  v123 = [v110 encodedData];
  v124 = sub_2146D8A58();
  v126 = v125;

  v165 = MEMORY[0x277CC9318];
  *&v163 = v124;
  *(&v163 + 1) = v126;
  sub_213FDC730(&v163, &v168);
  v127 = swift_isUniquelyReferenced_nonNull_native();
  *&v162[0] = v122;
  sub_2140524DC(&v168, 0xD00000000000001ELL, 0x800000021478AD10, v127);

  sub_21404A964(v106, type metadata accessor for CloudKitSharingToken);
  v103 = v161;
  v170 = *&v162[0];
LABEL_36:
  v128 = v51 + v103[16];
  v129 = *(v128 + 24);
  if (v129)
  {
    if (v129 != 1)
    {
      v130 = *(v128 + 16);
      v165 = MEMORY[0x277D837D0];
      *&v163 = v130;
      *(&v163 + 1) = v129;
      sub_213FDC730(&v163, &v168);

      v131 = v170;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      *&v162[0] = v131;
      sub_2140524DC(&v168, 0x4B4449726573556BLL, 0xEA00000000007965, v132);
      v170 = *&v162[0];
      goto LABEL_39;
    }

LABEL_52:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_39:
  v133 = v51 + v103[17];
  if (*(v133 + 25))
  {
    goto LABEL_52;
  }

  if ((*(v133 + 24) & 1) == 0)
  {
    v134 = *(v133 + 16);
    v165 = MEMORY[0x277D83B88];
    *&v163 = v134;
    sub_213FDC730(&v163, &v168);
    v135 = v170;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v135;
    sub_2140524DC(&v168, 0xD000000000000013, 0x800000021478ACD0, v136);
    v170 = *&v162[0];
  }

  v137 = v51 + v103[18];
  if (*(v137 + 25))
  {
    goto LABEL_52;
  }

  if ((*(v137 + 24) & 1) == 0)
  {
    v138 = *(v137 + 16);
    v165 = MEMORY[0x277D83B88];
    *&v163 = v138;
    sub_213FDC730(&v163, &v168);
    v139 = v170;
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v139;
    sub_2140524DC(&v168, 0xD000000000000023, 0x800000021478ACA0, v140);
    v170 = *&v162[0];
  }

  v141 = v51 + v103[19];
  v142 = *(v141 + 24);
  if (v142 >> 60 == 11)
  {
    goto LABEL_52;
  }

  if (v142 >> 60 != 15)
  {
    v143 = *(v141 + 16);
    v165 = MEMORY[0x277CC9318];
    *&v163 = v143;
    *(&v163 + 1) = v142;
    sub_213FDC730(&v163, &v168);
    sub_213FDCA18(v143, v142);
    v144 = v170;
    v145 = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v144;
    sub_2140524DC(&v168, 0xD00000000000002BLL, 0x800000021478AC70, v145);
    return *&v162[0];
  }

  return v170;
}

uint64_t sub_214048DD8()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = sub_2146D9AE8();
  v10 = sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
  *&v9 = v3;
  sub_213FDC730(&v9, v8);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v8, 0xD000000000000010, 0x800000021478AC30, isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    *&v9 = v2;
    sub_213FDC730(&v9, v8);

    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v8, 0xD00000000000001ALL, 0x800000021478AC50, v6);
    return v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214048F2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v76 - v6;
  v86 = sub_2146D8B08();
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v86);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v76 - v12;
  v83 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v89 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  v17 = v0[1];
  v77 = v5;
  v85 = v7;
  if (v16)
  {
    v18 = *(v16 + 16);
    v87 = v17;
    v88 = v14;
    if (v18)
    {
      v19 = (v16 + 32);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = v19[1];
        v94 = *v19;
        v95 = v21;
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        *(v98 + 11) = *(v19 + 75);
        v97 = v23;
        v98[0] = v24;
        v96 = v22;
        v92[2] = v19[2];
        v92[3] = v19[3];
        v93[0] = v19[4];
        *(v93 + 11) = *(v19 + 75);
        v92[0] = *v19;
        v92[1] = v19[1];
        sub_21404A808(&v94, &v90);
        v25 = sub_214049E5C();
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *&v90 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21409515C(0, *(v20 + 2) + 1, 1, v20);
        }

        v27 = *(v20 + 2);
        v26 = *(v20 + 3);
        if (v27 >= v26 >> 1)
        {
          v20 = sub_21409515C((v26 > 1), v27 + 1, 1, v20);
        }

        sub_21404A864(&v94);
        *(v20 + 2) = v27 + 1;
        sub_213FDC730(&v90, &v20[32 * v27 + 32]);
        v19 += 6;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    *(&v95 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    *&v94 = v20;
    sub_213FDC730(&v94, v92);
    v29 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v29;
    sub_2140524DC(v92, 0xD000000000000016, 0x800000021478AC10, isUniquelyReferenced_nonNull_native);
    result = v90;
    v5 = v77;
    v7 = v85;
    v17 = v87;
    v14 = v88;
    if (!v87)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x277D84F98];
    if (!v17)
    {
      return result;
    }
  }

  v76 = result;
  v31 = *(v17 + 2);
  if (!v31)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_50:
    *(&v95 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    *&v94 = v35;
    sub_213FDC730(&v94, v92);
    v74 = v76;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v74;
    sub_2140524DC(v92, 0xD000000000000016, 0x800000021478ABF0, v75);
    return v90;
  }

  v32 = &v17[(*(v14 + 80) + 32) & ~*(v14 + 80)];
  v33 = v14[9];
  v88 = (v8 + 48);
  v81 = (v8 + 32);
  v79 = v33;
  v80 = (v8 + 16);
  v34 = v8;
  v35 = MEMORY[0x277D84F90];
  v78 = (v34 + 8);
  v36 = v86;
  while (1)
  {
    v87 = v35;
    v37 = v89;
    sub_21404A7A4(v32, v89);
    sub_213FB2E54(v37, v7, &qword_27C913090, &unk_2146E9DB0);
    v38 = *v88;
    if ((*v88)(v7, 1, v36) == 1)
    {
      sub_213FB2DF4(v7, &qword_27C913090, &unk_2146E9DB0);
      v39 = MEMORY[0x277D84F98];
      goto LABEL_30;
    }

    v40 = v84;
    (*v81)(v84, v7, v36);
    *(&v95 + 1) = v36;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v94);
    (*v80)(boxed_opaque_existential_0, v40, v36);
    sub_213FDC730(&v94, v92);
    v42 = MEMORY[0x277D84F98];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v42;
    v45 = sub_21408C300(0x7472617453444D48, 0xEF79654B65746144);
    v46 = *(v42 + 16);
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      break;
    }

    v49 = v44;
    if (*(v42 + 24) >= v48)
    {
      if (v43)
      {
        v39 = v90;
        if ((v44 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_214482C24();
        v39 = v90;
        if ((v49 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_2140506C8(v48, v43);
      v50 = sub_21408C300(0x7472617453444D48, 0xEF79654B65746144);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_56;
      }

      v45 = v50;
      v39 = v90;
      if ((v49 & 1) == 0)
      {
LABEL_27:
        v39[(v45 >> 6) + 8] |= 1 << v45;
        v53 = (v39[6] + 16 * v45);
        *v53 = 0x7472617453444D48;
        v53[1] = 0xEF79654B65746144;
        sub_213FDC730(v92, (v39[7] + 32 * v45));
        v54 = v39[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_54;
        }

        v39[2] = v56;
        goto LABEL_29;
      }
    }

    v52 = (v39[7] + 32 * v45);
    __swift_destroy_boxed_opaque_existential_1(v52);
    sub_213FDC730(v92, v52);
LABEL_29:
    (*v78)(v84, v36);
    v5 = v77;
    v7 = v85;
LABEL_30:
    sub_213FB2E54(v89 + *(v83 + 20), v5, &qword_27C913090, &unk_2146E9DB0);
    if (v38(v5, 1, v36) != 1)
    {
      v57 = v82;
      (*v81)(v82, v5, v36);
      *(&v95 + 1) = v36;
      v58 = __swift_allocate_boxed_opaque_existential_0(&v94);
      (*v80)(v58, v57, v36);
      sub_213FDC730(&v94, v92);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v90 = v39;
      v60 = sub_21408C300(0x6144646E45444D48, 0xED000079654B6574);
      v62 = v39[2];
      v63 = (v61 & 1) == 0;
      v55 = __OFADD__(v62, v63);
      v64 = v62 + v63;
      if (v55)
      {
        goto LABEL_53;
      }

      v65 = v61;
      if (v39[3] >= v64)
      {
        v35 = v87;
        if (v59)
        {
          goto LABEL_37;
        }

        v68 = v60;
        sub_214482C24();
        v60 = v68;
        v39 = v90;
        if ((v65 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_38:
        v67 = (v39[7] + 32 * v60);
        __swift_destroy_boxed_opaque_existential_1(v67);
        sub_213FDC730(v92, v67);
      }

      else
      {
        sub_2140506C8(v64, v59);
        v60 = sub_21408C300(0x6144646E45444D48, 0xED000079654B6574);
        v35 = v87;
        if ((v65 & 1) != (v66 & 1))
        {
          goto LABEL_56;
        }

LABEL_37:
        v39 = v90;
        if (v65)
        {
          goto LABEL_38;
        }

LABEL_40:
        v39[(v60 >> 6) + 8] |= 1 << v60;
        v69 = v39[6] + 16 * v60;
        strcpy(v69, "HMDEndDateKey");
        *(v69 + 14) = -4864;
        sub_213FDC730(v92, (v39[7] + 32 * v60));
        v70 = v39[2];
        v55 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v55)
        {
          goto LABEL_55;
        }

        v39[2] = v71;
      }

      (*v78)(v82, v86);
      v7 = v85;
      goto LABEL_43;
    }

    sub_213FB2DF4(v5, &qword_27C913090, &unk_2146E9DB0);
    v35 = v87;
LABEL_43:
    sub_21404A964(v89, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    *(&v95 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v94 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_21409515C(0, *(v35 + 2) + 1, 1, v35);
    }

    v73 = *(v35 + 2);
    v72 = *(v35 + 3);
    if (v73 >= v72 >> 1)
    {
      v35 = sub_21409515C((v72 > 1), v73 + 1, 1, v35);
    }

    *(v35 + 2) = v73 + 1;
    sub_213FDC730(&v94, &v35[32 * v73 + 32]);
    v32 += v79;
    if (!--v31)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_2146DA8D8();
  __break(1u);
  return result;
}

void sub_214049918(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(a1, a2);
  v8 = sub_21404A62C();
  if (!v3)
  {
    v20 = v8;
    sub_213FB54FC(a1, a2);
    v21 = v20;
    [v21 _enableStrictSecureDecodingMode];
    [v21 setDecodingFailurePolicy_];
    v22 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = sub_2146D9588();
    [v21 setClass:ObjCClassFromMetadata forClassName:v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2146EA710;
    *(v25 + 32) = v22;
    v26 = *MEMORY[0x277CCA308];
    sub_2146D95B8();
    sub_2146D9D08();

    if (v33[3])
    {
      if (swift_dynamicCast())
      {
        sub_2145A8530(v34, a3);
LABEL_10:

        return;
      }
    }

    else
    {
      sub_213FB2DF4(v33, &qword_27C913170, &qword_2146EAB20);
    }

    v30 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    sub_2146D9F28();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84168], v30);
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FB54FC(a1, a2);
  v34 = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    sub_21404A6EC();
    swift_allocError();
    v11 = v10;
    v12 = v33[4];
    v13 = [v12 domain];
    v14 = sub_2146D95B8();
    v16 = v15;

    MEMORY[0x2160545D0](v14, v16);

    *v11 = 0xD000000000000014;
    v11[1] = 0x800000021478AAD0;
    v33[0] = [v12 code];
    v17 = sub_2146DA428();
    v19 = v18;

    v11[2] = v17;
    v11[3] = v19;
    v11[4] = 0xD000000000000014;
    v11[5] = 0x800000021478AAB0;
    swift_willThrow();
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v28 = v27;
    v29 = v3;
    sub_214689A34(v3, 0xD000000000000014, 0x800000021478AAB0, v28);
    swift_willThrow();
  }
}

uint64_t sub_214049D74()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_214048DD8();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214049DF4()
{
  v3 = *v0;
  sub_214048F2C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214049E5C()
{
  if (*(v0 + 25))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 57);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 89);
  v7 = MEMORY[0x277D84F98];
  if ((*(v0 + 24) & 1) == 0)
  {
    v8 = *(v0 + 16);
    v15 = MEMORY[0x277D83B88];
    *&v14 = v8;
    sub_213FDC730(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v13, 0xD000000000000027, 0x800000021478ABC0, isUniquelyReferenced_nonNull_native);
  }

  if (v3)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    v15 = MEMORY[0x277D83B88];
    *&v14 = v1;
    sub_213FDC730(&v14, v13);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v13, 0xD000000000000025, 0x800000021478AB90, v10);
  }

  if (v6)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v15 = MEMORY[0x277D83B88];
      *&v14 = v4;
      sub_213FDC730(&v14, v13);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v13, 0xD00000000000002BLL, 0x800000021478AB60, v11);
    }

    return v7;
  }

  return result;
}

uint64_t sub_21404A020()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_2146D8B08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_213FB2E54(v1, v8, &qword_27C913090, &unk_2146E9DB0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C913090, &unk_2146E9DB0);
    v18 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v30 = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v10 + 16))(boxed_opaque_existential_0, v16, v9);
    sub_213FDC730(v29, v28);
    v20 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v20;
    sub_2140524DC(v28, 0x7472617453444D48, 0xEF79654B65746144, isUniquelyReferenced_nonNull_native);
    (*(v10 + 8))(v16, v9);
    v18 = v27;
  }

  v22 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  sub_213FB2E54(v1 + *(v22 + 20), v6, &qword_27C913090, &unk_2146E9DB0);
  if (v17(v6, 1, v9) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    (*(v10 + 32))(v14, v6, v9);
    v30 = v9;
    v23 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v10 + 16))(v23, v14, v9);
    sub_213FDC730(v29, v28);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v18;
    sub_2140524DC(v28, 0x6144646E45444D48, 0xED000079654B6574, v24);
    (*(v10 + 8))(v14, v9);
    return v27;
  }

  return v18;
}

uint64_t sub_21404A3A4()
{
  sub_214049E5C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404A410(void (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404A468()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_214048DD8();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404A500()
{
  v3 = *v0;
  sub_214048F2C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404A568()
{
  sub_214049E5C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404A5D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2146D9468();

  return v3;
}

id sub_21404A62C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2146D8A38();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2146D8838();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_21404A6EC()
{
  result = qword_280B35240;
  if (!qword_280B35240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B35240);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21404A7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21404A8B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_21404A900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21404A964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21404A9C4()
{
  sub_21404AA18();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404AA18()
{
  v0 = sub_21441AD10();
  v7 = MEMORY[0x277CC9318];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x61447463656A624FLL, 0xED000079654B6174, isUniquelyReferenced_nonNull_native);
  return v2;
}

uint64_t sub_21404ABB0()
{
  sub_21404AA18();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404AC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E0, &qword_214736EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_21404AC70()
{
  v1 = v0;
  v2 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for IDSClientProtobufMessageType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21404B7E8(v1, v13);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    goto LABEL_12;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v25 = *(v13 + 48);
      v26 = *(v13 + 16);
      v58 = *(v13 + 32);
      v59 = v25;
      v27 = *(v13 + 48);
      v60 = *(v13 + 64);
      v28 = *(v13 + 16);
      v56 = *v13;
      v57 = v28;
      v50 = v58;
      v51 = v27;
      v52 = *(v13 + 64);
      LOBYTE(v61[0]) = *(v13 + 80);
      LOBYTE(v53) = *(v13 + 80);
      v48 = v56;
      v49 = v26;
      v24 = sub_214417804();
      sub_21404B84C(&v56);
      return v24;
    }

    v44 = *(v13 + 80);
    v60 = *(v13 + 64);
    v61[0] = v44;
    *(v61 + 10) = *(v13 + 90);
    v45 = *(v13 + 16);
    v56 = *v13;
    v57 = v45;
    v46 = *(v13 + 48);
    v58 = *(v13 + 32);
    v59 = v46;
    v24 = sub_21404B1A0(&qword_27C904210, &qword_2146EAB60, &qword_27C904218);
    v32 = &unk_27C904200;
    v33 = &unk_2146EAB58;
LABEL_28:
    sub_213FB2DF4(&v56, v32, v33);
    return v24;
  }

  if (result == 6)
  {
    v29 = *(v13 + 80);
    v60 = *(v13 + 64);
    v61[0] = v29;
    *(v61 + 10) = *(v13 + 90);
    v30 = *(v13 + 16);
    v56 = *v13;
    v57 = v30;
    v31 = *(v13 + 48);
    v58 = *(v13 + 32);
    v59 = v31;
    v24 = sub_21404B1A0(&qword_27C904220, &qword_2146EAB68, &qword_27C904228);
    v32 = &unk_27C9041F8;
    v33 = &unk_2146F6E00;
    goto LABEL_28;
  }

  if (result == 7)
  {
    v15 = *v13;
    v9 = *(v13 + 4);
    v13 = *(v13 + 5);
    result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
    if (result)
    {
      v5 = result;
      [result writeUint32:v15 forTag:1];
      if (v9 != 2)
      {
        [v5 writeBOOL:v9 & 1 forTag:2];
      }

      if (v13 != 2)
      {
        [v5 writeBOOL:v13 & 1 forTag:3];
      }

      result = [v5 immutableData];
      if (!result)
      {
        __break(1u);
LABEL_12:
        if (result > 1)
        {
          if (result == 2)
          {
            sub_21404B8F4(v13, v5, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
            v24 = sub_214085580();
            sub_21404B95C(v5, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
          }

          else
          {
            v34 = *(v13 + 80);
            v35 = *(v13 + 48);
            v60 = *(v13 + 64);
            v61[0] = v34;
            v36 = *(v13 + 80);
            v61[1] = *(v13 + 96);
            v37 = *(v13 + 16);
            v56 = *v13;
            v57 = v37;
            v38 = *(v13 + 48);
            v40 = *v13;
            v39 = *(v13 + 16);
            v58 = *(v13 + 32);
            v59 = v38;
            v52 = v60;
            v53 = v36;
            v54 = *(v13 + 96);
            v48 = v40;
            v49 = v39;
            v62 = *(v13 + 112);
            v55 = *(v13 + 112);
            v50 = v58;
            v51 = v35;
            v24 = sub_2146715C0();
            sub_21404B8A0(&v56);
          }
        }

        else if (result)
        {
          sub_21404B8F4(v13, v9, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
          v24 = sub_2146015F8();
          sub_21404B95C(v9, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        }

        else
        {
          v16 = *v13;
          v17 = *(v13 + 8);
          v18 = sub_2146D87D8();
          v19 = *(v18 + 48);
          v20 = *(v18 + 52);
          swift_allocObject();
          sub_2146D87C8();
          *&v56 = v16;
          *(&v56 + 1) = v17;
          sub_21404B9BC();
          v21 = sub_2146D87B8();
          v23 = v22;
          sub_21402D9F8(v21, v22);
          v24 = sub_2146D8A38();
          sub_213FB54FC(v21, v23);
          sub_213FB54FC(v21, v23);
        }

        return v24;
      }

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_31;
  }

  v42 = *v13;
  v41 = *(v13 + 4);
  v43 = *(v13 + 8);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = result;
  [result writeUint32:v42 forTag:1];
  if ((v43 & 1) == 0)
  {
    [v5 writeUint32:v41 forTag:2];
  }

  result = [v5 immutableData];
  if (result)
  {
LABEL_26:
    v24 = result;

    return v24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21404B1A0(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v26 = *(v3 + 4);
  *v27 = *(v3 + 5);
  *&v27[10] = *(v3 + 90);
  v22 = *v3;
  v23 = *(v3 + 1);
  v24 = *(v3 + 2);
  v25 = *(v3 + 3);
  v7 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v7)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v10 = *(v3 + 3);
  v9 = *(v3 + 4);
  [v7 writeUint32:*v3 forTag:1];
  if (v9)
  {

    v11 = sub_2146D9588();

    [v8 writeString:v11 forTag:2];

    v12 = sub_2146D8608();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_2146D85F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_21404BA10(a3, a1, a2);
    v15 = sub_2146D85E8();
    v17 = v16;

    v18 = sub_2146D8A38();
    sub_213FB54FC(v15, v17);
    [v8 writeData:v18 forTag:3];

    v19 = [v8 immutableData];
    if (v19)
    {
      v20 = v19;

      return v20;
    }

    goto LABEL_6;
  }

LABEL_7:
  sub_2146DA018();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t IDSProtobuf.bridgedToObjectiveC.getter()
{
  sub_21404B408();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404B408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for IDSClientProtobufMessageType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404B72C(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C9041E8, &qword_2146F4BA0);
    v11 = MEMORY[0x277D84F98];
  }

  else
  {
    sub_21404B8F4(v5, v10, type metadata accessor for IDSClientProtobufMessageType);
    v12 = sub_21404AC70();
    v26 = sub_21404B79C();
    *&v25 = v12;
    sub_213FDC730(&v25, v24);
    v13 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v13;
    sub_2140524DC(v24, 0xD000000000000012, 0x8000000214788260, isUniquelyReferenced_nonNull_native);
    sub_21404B95C(v10, type metadata accessor for IDSClientProtobufMessageType);
    v11 = v23;
  }

  v15 = type metadata accessor for IDSProtobuf(0);
  v16 = v1 + *(v15 + 20);
  if ((*(v16 + 2) & 1) == 0)
  {
    v17 = *v16;
    v26 = MEMORY[0x277D84C58];
    LOWORD(v25) = v17;
    sub_213FDC730(&v25, v24);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v11;
    sub_2140524DC(v24, 0xD000000000000012, 0x8000000214788280, v18);
    v11 = v23;
  }

  v19 = *(v1 + *(v15 + 24));
  if (v19 != 2)
  {
    v26 = MEMORY[0x277D839B0];
    LOBYTE(v25) = v19 & 1;
    sub_213FDC730(&v25, v24);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v11;
    sub_2140524DC(v24, 0xD000000000000018, 0x80000002147882A0, v20);
    return v23;
  }

  return v11;
}

uint64_t sub_21404B6D8()
{
  sub_21404B408();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404B72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21404B79C()
{
  result = qword_27C9041F0;
  if (!qword_27C9041F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C9041F0);
  }

  return result;
}

uint64_t sub_21404B7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientProtobufMessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21404B8F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21404B95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21404B9BC()
{
  result = qword_27C904208;
  if (!qword_27C904208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904208);
  }

  return result;
}

uint64_t sub_21404BA10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21404BA7C()
{
  v1 = v0;
  v2 = type metadata accessor for IDSActivitySharingInvitation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for IDSHealthInvitation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for IDSKCSharingInvitation();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for IDSHomeKitInvitation(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for IDSSampleInvitation();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for IDSDictionaryContext(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v32[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21404C614(v1, v25, type metadata accessor for IDSDictionaryContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = type metadata accessor for IDSHomeKitInvitation;
        sub_21404C6D0(v25, v17, type metadata accessor for IDSHomeKitInvitation);
        v28 = sub_214047BB0();
        v29 = v17;
      }

      else
      {
        v27 = type metadata accessor for IDSKCSharingInvitation;
        sub_21404C6D0(v25, v13, type metadata accessor for IDSKCSharingInvitation);
        v28 = sub_21404C9A0();
        v29 = v13;
      }
    }

    else
    {
      v27 = type metadata accessor for IDSSampleInvitation;
      sub_21404C6D0(v25, v21, type metadata accessor for IDSSampleInvitation);
      v28 = sub_2144A2620();
      v29 = v21;
    }

LABEL_11:
    v30 = v27;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      memcpy(v33, v25, 0x151uLL);
      memcpy(v32, v25, sizeof(v32));
      v28 = sub_21404E400();
      sub_21404C67C(v33);
      return v28;
    }

    v27 = type metadata accessor for IDSActivitySharingInvitation;
    sub_21404C6D0(v25, v5, type metadata accessor for IDSActivitySharingInvitation);
    v28 = sub_21404FD64();
    v29 = v5;
    goto LABEL_11;
  }

  sub_21404C6D0(v25, v9, type metadata accessor for IDSHealthInvitation);
  v28 = sub_21404AA18();
  v29 = v9;
  v30 = type metadata accessor for IDSHealthInvitation;
LABEL_12:
  sub_21404C738(v29, v30);
  return v28;
}

uint64_t sub_21404BE10()
{
  v1 = type metadata accessor for IDSDictionaryContext(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSInvitationContextType(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404C614(v0, v8, type metadata accessor for IDSInvitationContextType);
  sub_21404C6D0(v8, v4, type metadata accessor for IDSDictionaryContext);
  sub_21404BA7C();
  sub_21404C738(v4, type metadata accessor for IDSDictionaryContext);
  v9 = sub_2146D9468();

  return v9;
}

uint64_t sub_21404BF68()
{
  v1 = v0;
  v2 = type metadata accessor for IDSDictionaryContext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSInvitationContextType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(v1 + 16);
  v26 = MEMORY[0x277D837D0];
  *&v25 = v11;
  *(&v25 + 1) = v10;
  sub_213FDC730(&v25, v24);

  v12 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v12;
  sub_2140524DC(v24, 21347, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  if (*(v1 + 64) == 1)
  {
LABEL_4:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = v23;
    v15 = *(v1 + 56);
    v26 = MEMORY[0x277D83B88];
    *&v25 = v15;
    sub_213FDC730(&v25, v24);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v14;
    sub_2140524DC(v24, 21603, 0xE200000000000000, v16);
    v17 = v23;
    v18 = type metadata accessor for IDSInvitationContext(0);
    sub_21404C614(v1 + *(v18 + 24), v9, type metadata accessor for IDSInvitationContextType);
    sub_21404C6D0(v9, v5, type metadata accessor for IDSDictionaryContext);
    v19 = sub_21404BA7C();
    sub_21404C738(v5, type metadata accessor for IDSDictionaryContext);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v25 = v19;
    sub_213FDC730(&v25, v24);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v17;
    sub_2140524DC(v24, 17507, 0xE200000000000000, v20);
    return v23;
  }

  return result;
}

uint64_t sub_21404C1F0(void (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404C248()
{
  v1 = v0;
  v2 = sub_21404BF68();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *&v19 = v2;
  sub_213FDC730(&v19, v18);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v18, 99, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v5 = type metadata accessor for IDSInvitation(0);
  v6 = v1 + *(v5 + 20);
  if (*(v6 + 24) == 1)
  {
    goto LABEL_6;
  }

  v7 = v5;
  v8 = *(v6 + 16);
  v20 = MEMORY[0x277D83B88];
  *&v19 = v8;
  sub_213FDC730(&v19, v18);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v18, 115, 0xE100000000000000, v9);
  v10 = (v1 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    v20 = MEMORY[0x277D839F8];
    *&v19 = v11;
    sub_213FDC730(&v19, v18);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v18, 101, 0xE100000000000000, v12);
  }

  v13 = v1 + *(v7 + 28);
  v14 = *(v13 + 24);
  if (!v14)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = *(v13 + 16);
    v20 = MEMORY[0x277D837D0];
    *&v19 = v15;
    *(&v19 + 1) = v14;
    sub_213FDC730(&v19, v18);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v18, 4475253, 0xE300000000000000, v16);
    return v3;
  }

  return result;
}

uint64_t sub_21404C450(uint64_t a1)
{
  v3 = type metadata accessor for IDSDictionaryContext(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404C614(v1, v10, type metadata accessor for IDSInvitationContextType);
  sub_21404C6D0(v10, v7, type metadata accessor for IDSDictionaryContext);
  sub_21404BA7C();
  sub_21404C738(v7, type metadata accessor for IDSDictionaryContext);
  v11 = sub_2146D9468();

  return v11;
}

uint64_t sub_21404C5BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_21404C614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21404C6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21404C738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21404C798()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D84B78];
  *(inited + 48) = v1;
  sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_21404C868()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D84B78];
  *(inited + 48) = v1;
  sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_21404C938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21404C9A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - v6;
  v8 = sub_2146D8958();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v61 - v14;
  v16 = type metadata accessor for IDSKCSharingInvitation();
  v17 = v0;
  v18 = v0 + *(v16 + 20);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = sub_2145A8688(v15);
  v22 = v21;
  sub_213FB2DF4(v15, &qword_27C904230, &qword_2146EAB88);
  v23 = v62;
  v61 = v16;
  v24 = v22;
  v25 = *(v17 + 24);
  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = v8;
  v27 = v17;
  v28 = *(v17 + 16);
  v67 = MEMORY[0x277D837D0];
  *&v66 = v28;
  *(&v66 + 1) = v25;
  sub_213FDC730(&v66, v65);

  v29 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v29;
  sub_2140524DC(v65, 0x444970756F7267, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v68 = v64;
  v31 = v18 + *(type metadata accessor for CloudKitSharingToken() + 24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v31 + *(v32 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  v33 = v23;
  if ((*(v23 + 48))(v7, 1, v26) == 1)
  {
    sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_12;
  }

  (*(v23 + 32))(v11, v7, v26);
  v34 = sub_2146D8868();
  v36 = v35;
  (*(v33 + 8))(v11, v26);
  v37 = MEMORY[0x277D837D0];
  v67 = MEMORY[0x277D837D0];
  *&v66 = v34;
  *(&v66 + 1) = v36;
  sub_213FDC730(&v66, v65);
  v38 = v68;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v38;
  sub_2140524DC(v65, 0x4C52556572616873, 0xE800000000000000, v39);
  v40 = v64;
  v68 = v64;
  v67 = MEMORY[0x277CC9318];
  *&v66 = v20;
  *(&v66 + 1) = v24;
  v41 = v24;
  sub_213FDC730(&v66, v65);
  sub_21402D9F8(v20, v24);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v40;
  sub_2140524DC(v65, 0x6974617469766E69, 0xEF6E656B6F546E6FLL, v42);
  v43 = v61;
  v44 = v27 + *(v61 + 24);
  v45 = *(v44 + 24);
  if (!v45)
  {
LABEL_12:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v46 = v64;
  v47 = *(v44 + 16);
  v67 = v37;
  *&v66 = v47;
  *(&v66 + 1) = v45;
  sub_213FDC730(&v66, v65);

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v46;
  sub_2140524DC(v65, 0x4865657469766E69, 0xED0000656C646E61, v48);
  v49 = v63;
  v68 = v64;
  sub_213FB2E54(v27 + *(v43 + 28), v63, &qword_27C913090, &unk_2146E9DB0);
  v50 = sub_2146D8B08();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_213FB2DF4(v49, &qword_27C913090, &unk_2146E9DB0);
    sub_2144AEF6C(0x656D6954746E6573, 0xE800000000000000, &v66);
    sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
  }

  else
  {
    v67 = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v66);
    (*(v51 + 32))(boxed_opaque_existential_0, v49, v50);
    sub_213FDC730(&v66, v65);
    v53 = v68;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v53;
    sub_2140524DC(v65, 0x656D6954746E6573, 0xE800000000000000, v54);
    v68 = v64;
  }

  v55 = (v27 + *(v43 + 32));
  v56 = v55[1];
  if (v56)
  {
    v57 = *v55;
    v67 = v37;
    *&v66 = v57;
    *(&v66 + 1) = v56;
    sub_213FDC730(&v66, v65);

    v58 = v68;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v58;
    sub_2140524DC(v65, 0x6D614E70756F7267, 0xE900000000000065, v59);
    sub_213FB54FC(v20, v41);
    return v64;
  }

  else
  {
    sub_2144AEF6C(0x6D614E70756F7267, 0xE900000000000065, &v66);
    sub_213FB54FC(v20, v41);
    sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
    return v68;
  }
}

uint64_t sub_21404D1AC()
{
  sub_21404C9A0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404D200@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_2146D8928();
  v10 = sub_2146D8958();
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21402D9F8(a1, a2);
    return sub_2145A9478(a1, a2, v9, 0, 0, a3);
  }

  return result;
}

uint64_t sub_21404D320()
{
  sub_21404C9A0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404D374()
{
  v0 = sub_21404D3BC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_21404D3BC()
{
  v1 = v0;
  v139 = *MEMORY[0x277D85DE8];
  v2 = sub_2146D8B08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v119 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v128 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v119 - v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v126 = *(v133 - 8);
  v11 = *(v126 + 64);
  v12 = MEMORY[0x28223BE20](v133);
  v127 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v119 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v121 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v132 = &v119 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v119 - v25;
  sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v27 = qword_280B35410;
  sub_2146D91D8();
  v28 = [objc_allocWithZone(MEMORY[0x277CFFFC8]) init];
  v29 = *(v1 + 24);
  if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_71;
    }

    v31 = *(v1 + 16);
    v32 = *(v1 + 24);

    v30 = sub_2146D9588();
    sub_213FDC6D0(v31, v29);
  }

  else
  {
    v30 = 0;
  }

  [v28 setOwnerEmail_];

  if (*(v1 + 48))
  {
    v33 = *(v1 + 40);
    v34 = sub_2146D9588();
  }

  else
  {
    v34 = 0;
  }

  [v28 setOwnerFullName_];

  v35 = *(v1 + 80);
  if (v35)
  {
    if (v35 == 1)
    {
      goto LABEL_71;
    }

    v37 = *(v1 + 72);
    v38 = *(v1 + 80);

    v36 = sub_2146D9588();
    sub_213FDC6D0(v37, v35);
  }

  else
  {
    v36 = 0;
  }

  [v28 setOwnerPersonID_];

  if (*(v1 + 104))
  {
    v39 = *(v1 + 96);
    v40 = sub_2146D9588();
  }

  else
  {
    v40 = 0;
  }

  [v28 setOwnerFirstName_];

  if (*(v1 + 120))
  {
    v41 = *(v1 + 112);
    v42 = sub_2146D9588();
  }

  else
  {
    v42 = 0;
  }

  v129 = v24;
  v130 = v27;
  [v28 setOwnerLastName_];

  v135 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  sub_213FB2E54(v1 + v135[10], v26, &qword_27C913090, &unk_2146E9DB0);
  v124 = *(v3 + 48);
  v125 = v3 + 48;
  v43 = 0;
  if (v124(v26, 1, v2) != 1)
  {
    v43 = sub_2146D8AD8();
    (*(v3 + 8))(v26, v2);
  }

  v120 = v3;
  v131 = v2;
  v134 = v28;
  [v28 setSubscriptionDate_];

  v44 = v135[11];
  v45 = v132;
  sub_213FB2E54(v1 + v44, v132, &unk_27C904F30, &unk_2146EFA20);
  v46 = sub_2146D8B88();
  v47 = *(v46 - 8);
  v48 = v47 + 48;
  v49 = *(v47 + 48);
  v50 = v49(v45, 1, v46);
  sub_213FB2DF4(v45, &unk_27C904F30, &unk_2146EFA20);
  v51 = 0;
  if (v50 != 1)
  {
    v52 = v1 + v44;
    v53 = v121;
    sub_213FB2E54(v52, v121, &unk_27C904F30, &unk_2146EFA20);
    if (v49(v53, 1, v46) == 1)
    {
      __break(1u);
LABEL_68:
      v118 = v48;
LABEL_70:
      sub_213FB2DF4(v118, &qword_27C903F40, &unk_2146F1C50);
      goto LABEL_71;
    }

    sub_2146D8B28();
    (*(v47 + 8))(v53, v46);
    v51 = sub_2146D9588();
  }

  v54 = v134;
  [v134 setGUID_];

  v55 = v1 + v135[12];
  v56 = *(v55 + 24);
  if (v56)
  {
    v58 = v126;
    if (v56 == 1)
    {
      goto LABEL_71;
    }

    v59 = *(v55 + 16);
    v60 = *(v55 + 24);

    v57 = sub_2146D9588();
    sub_213FDC6D0(v59, v56);
  }

  else
  {
    v57 = 0;
    v58 = v126;
  }

  [v54 setCtag_];

  v61 = v1 + v135[13];
  if (*(v61 + 20))
  {
    goto LABEL_71;
  }

  [v54 setRelationshipState_];
  [v54 setOwnerIsWhitelisted_];
  v62 = v1 + v135[14];
  v63 = *(v62 + 24);
  if (v63)
  {
    if (v63 == 1)
    {
      goto LABEL_71;
    }

    v65 = *(v62 + 16);
    v66 = *(v62 + 24);

    v64 = sub_2146D9588();
    sub_213FDC6D0(v65, v63);
  }

  else
  {
    v64 = 0;
  }

  [v54 setForeignCtag_];

  v67 = v1 + v135[15];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v69 = v67 + *(v68 + 28);
  v48 = v122;
  sub_213FB2E54(v69, v122, &qword_27C903F40, &unk_2146F1C50);
  v70 = *(v58 + 48);
  if (v70(v48, 1, v133) == 1)
  {
    goto LABEL_68;
  }

  v71 = v123;
  sub_214032588(v48, v123);
  v72 = sub_2146D8958();
  v73 = *(v72 - 8);
  v74 = *(v73 + 48);
  if (v74(v71, 1, v72) == 1)
  {
    sub_213FB2DF4(v71, &unk_27C9131A0, &unk_2146E9D10);
    v75 = 0;
  }

  else
  {
    sub_2146D8868();
    v132 = v1;
    (*(v73 + 8))(v71, v72);
    v75 = sub_2146D9588();
    v1 = v132;
  }

  [v134 setURLString_];

  v76 = v128;
  sub_213FB2E54(v1 + v135[16] + *(v68 + 28), v128, &qword_27C903F40, &unk_2146F1C50);
  if (v70(v76, 1, v133) == 1)
  {
    v118 = v76;
    goto LABEL_70;
  }

  v77 = v127;
  sub_214032588(v76, v127);
  v78 = v74(v77, 1, v72);
  v79 = v131;
  v80 = v129;
  if (v78 == 1)
  {
    sub_213FB2DF4(v77, &unk_27C9131A0, &unk_2146E9D10);
    v81 = 0;
  }

  else
  {
    sub_2146D8868();
    (*(v73 + 8))(v77, v72);
    v81 = sub_2146D9588();
  }

  v82 = v134;
  [v134 setPublicURLString_];

  v83 = v135;
  [v82 setIsFamilySharedAlbum_];
  v84 = (v1 + v83[19]);
  if (v84[1])
  {
    v85 = *v84;
    v86 = sub_2146D9588();
    [v82 setMetadataValue:v86 forKey:*MEMORY[0x277D00020]];
  }

  v87 = *(v1 + v135[20]);
  v88 = MEMORY[0x277D837D0];
  if (v87 != 2)
  {
    v89 = (v87 & 1) == 0;
    v90 = 48;
    if (!v89)
    {
      v90 = 49;
    }

    v138 = MEMORY[0x277D837D0];
    v136 = v90;
    v137 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(&v136, MEMORY[0x277D837D0]);
    v91 = sub_2146DA698();
    __swift_destroy_boxed_opaque_existential_1(&v136);
    [v82 setMetadataValue:v91 forKey:*MEMORY[0x277D00018]];
    swift_unknownObjectRelease();
  }

  v92 = *(v1 + v135[21]);
  if (v92 != 2)
  {
    v89 = (v92 & 1) == 0;
    v93 = 48;
    if (!v89)
    {
      v93 = 49;
    }

    v138 = v88;
    v136 = v93;
    v137 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(&v136, v88);
    v94 = sub_2146DA698();
    __swift_destroy_boxed_opaque_existential_1(&v136);
    [v82 setMetadataValue:v94 forKey:*MEMORY[0x277D00000]];
    swift_unknownObjectRelease();
  }

  v95 = v1 + v135[22];
  v96 = *(v95 + 24);
  if (v96)
  {
    if (v96 == 1)
    {
      goto LABEL_71;
    }

    v97 = *(v95 + 16);
    v98 = *(v95 + 24);

    v99 = sub_2146D9588();
    sub_213FDC6D0(v97, v96);
    [v82 setMetadataValue:v99 forKey:*MEMORY[0x277D00028]];
  }

  sub_213FB2E54(v1 + v135[23], v80, &qword_27C913090, &unk_2146E9DB0);
  if (v124(v80, 1, v79) == 1)
  {
    sub_213FB2DF4(v80, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    v100 = v120;
    v101 = v119;
    (*(v120 + 32))(v119, v80, v79);
    v102 = sub_2146D8AD8();
    [v82 setMetadataValue:v102 forKey:*MEMORY[0x277D00008]];

    (*(v100 + 8))(v101, v79);
  }

  v103 = v1 + v135[24];
  v104 = *(v103 + 24);
  if (v104)
  {
    if (v104 != 1)
    {
      v105 = *(v103 + 16);
      v106 = *(v103 + 24);

      v107 = sub_2146D9588();
      sub_213FDC6D0(v105, v104);
      [v82 setMetadataValue:v107 forKey:*MEMORY[0x277D00010]];

      goto LABEL_61;
    }

LABEL_71:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_61:
  sub_2146D9B88();
  sub_2146D91D8();
  v108 = objc_opt_self();
  v136 = 0;
  v109 = [v108 archivedDataWithRootObject:v82 requiringSecureCoding:1 error:&v136];
  v110 = v136;
  if (v109)
  {
    v111 = sub_2146D8A58();

    sub_2146D9B88();
    sub_2146D91D8();
  }

  else
  {
    v112 = v110;
    v113 = sub_2146D8838();

    swift_willThrow();
    sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_2146EA710;
    v115 = sub_2146D8828();
    *(v114 + 56) = sub_21404E35C();
    *(v114 + 64) = sub_21404E3A8();
    *(v114 + 32) = v115;
    sub_2146D91D8();

    v111 = 0;
  }

  v116 = *MEMORY[0x277D85DE8];
  return v111;
}

uint64_t sub_21404E314()
{
  v0 = sub_21404D3BC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

unint64_t sub_21404E35C()
{
  result = qword_27C9131B0;
  if (!qword_27C9131B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C9131B0);
  }

  return result;
}

unint64_t sub_21404E3A8()
{
  result = qword_27C904240;
  if (!qword_27C904240)
  {
    sub_21404E35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904240);
  }

  return result;
}

uint64_t sub_21404E400()
{
  v1 = v0[1];
  v78[0] = *v0;
  v78[1] = v1;
  v2 = v0[3];
  v78[2] = v0[2];
  v79 = v2;
  v3 = v0[17];
  v92 = v0[16];
  v93 = v3;
  v94 = *(v0 + 144);
  v4 = v0[13];
  v88 = v0[12];
  v89 = v4;
  v5 = v0[14];
  v91 = v0[15];
  v90 = v5;
  v6 = v0[9];
  v84 = v0[8];
  v85 = v6;
  v7 = v0[10];
  v87 = v0[11];
  v86 = v7;
  v8 = v0[5];
  v80 = v0[4];
  v81 = v8;
  v9 = v0[6];
  v83 = v0[7];
  v82 = v9;
  v10 = *(v0 + 290);
  v12 = *(v0 + 37);
  v11 = *(v0 + 38);
  v14 = *(v0 + 39);
  v13 = *(v0 + 40);
  v29 = *(v0 + 41);
  v15 = *(v0 + 336);
  v16 = MEMORY[0x277D84F98];
  if (*(&v79 + 1) >> 60 != 15)
  {
    v17 = v0[1];
    v48 = *v0;
    v49 = v17;
    v50 = v0[2];
    *&v51 = *(v0 + 6);
    *(&v51 + 1) = *(&v79 + 1);
    v63 = v48;
    v64 = v17;
    v18 = v0[3];
    v65 = v50;
    v66 = v18;
    sub_21404F0F4(&v63, &v33);
    v19 = sub_21404E900();
    *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v33 = v19;
    sub_213FDC730(&v33, &v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[0] = v16;
    sub_2140524DC(&v31, 0x7265666E6F637661, 0xEC00000065636E65, isUniquelyReferenced_nonNull_native);
    sub_213FB2DF4(v78, &qword_27C904250, qword_214766C00);
  }

  v75 = v92;
  v76 = v93;
  v77 = v94;
  v71 = v88;
  v72 = v89;
  v73 = v90;
  v74 = v91;
  v67 = v84;
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v63) != 1)
  {
    v45 = v75;
    v46 = v76;
    v47 = v77;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v44 = v74;
    v37 = v67;
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v33 = v63;
    v34 = v64;
    v35 = v65;
    v36 = v66;
    v60 = v92;
    v61 = v93;
    v62 = v94;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v59 = v91;
    v52 = v84;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v48 = v80;
    v49 = v81;
    v50 = v82;
    v51 = v83;
    sub_21404F098(&v48, &v31);
    v21 = sub_21404EB9C();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v31 = v21;
    sub_213FDC730(&v31, v30);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v30, 0xD00000000000001BLL, 0x800000021478AF60, v22);
    sub_213FB2DF4(&v80, &qword_27C904248, &qword_2146F4C30);
  }

  if (v10 != 2)
  {
    *(&v49 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v48) = v10 & 1;
    sub_213FDC730(&v48, &v33);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 0xD000000000000010, 0x800000021478AF40, v23);
    v16 = v31;
  }

  v24 = MEMORY[0x277D837D0];
  if (v11)
  {
    *(&v49 + 1) = MEMORY[0x277D837D0];
    *&v48 = v12;
    *(&v48 + 1) = v11;
    sub_213FDC730(&v48, &v33);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 6581603, 0xE300000000000000, v25);
    v16 = v31;
  }

  if (v13)
  {
    *(&v49 + 1) = v24;
    *&v48 = v14;
    *(&v48 + 1) = v13;
    sub_213FDC730(&v48, &v33);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 0x496E6F6973736573, 0xE900000000000044, v26);
    v16 = v31;
  }

  if ((v15 & 1) == 0)
  {
    *(&v49 + 1) = MEMORY[0x277D83B88];
    *&v48 = v29;
    sub_213FDC730(&v48, &v33);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 0x6E6F6973726576, 0xE700000000000000, v27);
    return v31;
  }

  return v16;
}

uint64_t sub_21404E8AC()
{
  sub_21404E900();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404E900()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v15 = v0[6];
  v6 = v0[7];
  v7 = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277CC9318];
  if (v2 >> 60 != 15)
  {
    v9 = *v0;
    v18 = MEMORY[0x277CC9318];
    *&v17 = v9;
    *(&v17 + 1) = v2;
    sub_213FDC730(&v17, v16);
    sub_213FDCA18(v9, v2);
    sub_21402D9F8(v9, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000016, 0x800000021478AFE0, isUniquelyReferenced_nonNull_native);
    sub_213FDC6BC(v9, v2);
  }

  if (v4 >> 60 != 15)
  {
    v18 = v8;
    *&v17 = v1;
    *(&v17 + 1) = v4;
    sub_213FDC730(&v17, v16);
    sub_213FDCA18(v1, v4);
    sub_21402D9F8(v1, v4);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000018, 0x800000021478AFC0, v11);
    sub_213FDC6BC(v1, v4);
  }

  if (v5 >> 60 != 15)
  {
    v18 = v8;
    *&v17 = v3;
    *(&v17 + 1) = v5;
    sub_213FDC730(&v17, v16);
    sub_213FDCA18(v3, v5);
    sub_21402D9F8(v3, v5);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000011, 0x800000021478AFA0, v12);
    sub_213FDC6BC(v3, v5);
  }

  v18 = v8;
  *&v17 = v15;
  *(&v17 + 1) = v6;
  sub_213FDC730(&v17, v16);
  sub_21402D9F8(v15, v6);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 0xD000000000000013, 0x800000021478AF80, v13);
  return v7;
}

uint64_t RedWoodInvite.bridgedToObjectiveC.getter()
{
  sub_21404EB9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404EB9C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 16);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 176);
  v10 = *(v0 + 216);
  v25 = *(v0 + 168);
  v26 = *(v0 + 208);
  v27 = *(v0 + 225);
  v11 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  *&v29 = v2;
  *(&v29 + 1) = v1;
  sub_213FDC730(&v29, v28);
  v12 = v11;

  v13 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v28, 0x546E6F6973736573, 0xEC0000006E656B6FLL, isUniquelyReferenced_nonNull_native);
  v30 = v12;
  *&v29 = v4;
  *(&v29 + 1) = v3;
  sub_213FDC730(&v29, v28);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v28, 0x656372756F736572, 0xEC00000068746170, v15);
  if (!v5)
  {
    goto LABEL_17;
  }

  v30 = v12;
  *&v29 = v6;
  *(&v29 + 1) = v5;
  sub_213FDC730(&v29, v28);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v28, 0x646F72707369, 0xE600000000000000, v16);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_17;
    }

    v30 = v12;
    *&v29 = v23;
    *(&v29 + 1) = v7;
    sub_213FDC730(&v29, v28);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x6E656B6F546161, 0xE700000000000000, v17);
  }

  if ((v8 & 1) == 0)
  {
    v30 = MEMORY[0x277D83B88];
    *&v29 = v24;
    sub_213FDC730(&v29, v28);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x74756F656D6974, 0xE700000000000000, v18);
  }

  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_17;
    }

    v30 = v12;
    *&v29 = v25;
    *(&v29 + 1) = v9;
    sub_213FDC730(&v29, v28);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x6D614E656C707061, 0xE900000000000065, v19);
  }

  if (v10)
  {
    if (v10 != 1)
    {
      v30 = v12;
      *&v29 = v26;
      *(&v29 + 1) = v10;
      sub_213FDC730(&v29, v28);

      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v28, 0x7079546572616873, 0xE900000000000065, v20);
      goto LABEL_14;
    }

LABEL_17:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_14:
  if (v27 != 2)
  {
    v30 = MEMORY[0x277D839B0];
    LOBYTE(v29) = v27 & 1;
    sub_213FDC730(&v29, v28);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x4D53457369, 0xE500000000000000, v21);
  }

  return v13;
}

uint64_t sub_21404EF48()
{
  sub_21404E400();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404EF9C()
{
  sub_21404E900();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404EFF0()
{
  sub_21404EB9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F044()
{
  sub_21404E400();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F150()
{
  sub_21404F1A4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F1A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[13];
  v9 = v0[14];
  v10 = *(v0 + 120);
  v34 = *(v0 + 121);
  v35 = *(v0 + 122);
  v36 = v0[19];
  v37 = *(v0 + 161);
  v30 = v0[18];
  v31 = v0[23];
  v38 = v0[24];
  v32 = v0[26];
  v33 = v0[28];
  v39 = *(v0 + 216);
  v40 = *(v0 + 232);
  v41 = *(v0 + 233);
  v44 = MEMORY[0x277D83E88];
  *&v43 = v1;
  sub_213FDC730(&v43, v42);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v42, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (v3 >> 60 != 15)
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = v2;
    *(&v43 + 1) = v3;
    sub_213FDC730(&v43, v42);
    sub_213FDCA18(v2, v3);
    sub_21402D9F8(v2, v3);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 98, 0xE100000000000000, v13);
    sub_213FDC6BC(v2, v3);
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  v14 = MEMORY[0x277D837D0];
  v44 = MEMORY[0x277D837D0];
  *&v43 = v4;
  *(&v43 + 1) = v5;
  sub_213FDC730(&v43, v42);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v42, 115, 0xE100000000000000, v15);
  if (!v7)
  {
    goto LABEL_28;
  }

  v44 = v14;
  *&v43 = v6;
  *(&v43 + 1) = v7;
  sub_213FDC730(&v43, v42);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v42, 112, 0xE100000000000000, v16);
  if (v9 >> 60 != 15)
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = v8;
    *(&v43 + 1) = v9;
    sub_213FDC730(&v43, v42);
    sub_213FDCA18(v8, v9);
    sub_21402D9F8(v8, v9);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 99, 0xE100000000000000, v17);
    sub_213FDC6BC(v8, v9);
  }

  v18 = MEMORY[0x277D839B0];
  if (v10 != 2)
  {
    v44 = MEMORY[0x277D839B0];
    LOBYTE(v43) = v10 & 1;
    sub_213FDC730(&v43, v42);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 25443, 0xE200000000000000, v19);
  }

  if (v34 != 2)
  {
    v44 = v18;
    LOBYTE(v43) = v34 & 1;
    sub_213FDC730(&v43, v42);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 26989, 0xE200000000000000, v20);
  }

  if (v35 != 2)
  {
    v44 = v18;
    LOBYTE(v43) = v35 & 1;
    sub_213FDC730(&v43, v42);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 7500147, 0xE300000000000000, v21);
  }

  if (v36 >> 60 == 11)
  {
    goto LABEL_28;
  }

  if (v36 >> 60 != 15)
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = v30;
    *(&v43 + 1) = v36;
    sub_213FDC730(&v43, v42);
    sub_21404F7E0(v30, v36);
    sub_213FDCA18(v30, v36);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 0xD00000000000001ALL, 0x800000021478B000, v22);
    sub_214032564(v30, v36);
  }

  if (v37 != 2)
  {
    v44 = v18;
    LOBYTE(v43) = v37 & 1;
    sub_213FDC730(&v43, v42);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 1835819888, 0xE400000000000000, v23);
  }

  if (v38 >> 60 == 11)
  {
LABEL_28:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v38 >> 60 != 15)
    {
      v44 = MEMORY[0x277CC9318];
      *&v43 = v31;
      *(&v43 + 1) = v38;
      sub_213FDC730(&v43, v42);
      sub_21404F7E0(v31, v38);
      sub_213FDCA18(v31, v38);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 107, 0xE100000000000000, v24);
      sub_214032564(v31, v38);
    }

    v25 = MEMORY[0x277D83B88];
    if ((v39 & 1) == 0)
    {
      v44 = MEMORY[0x277D83B88];
      *&v43 = v32;
      sub_213FDC730(&v43, v42);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 29555, 0xE200000000000000, v26);
    }

    if ((v40 & 1) == 0)
    {
      v44 = v25;
      *&v43 = v33;
      sub_213FDC730(&v43, v42);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 29043, 0xE200000000000000, v27);
    }

    if (v41 != 2)
    {
      v44 = v18;
      LOBYTE(v43) = v41 & 1;
      sub_213FDC730(&v43, v42);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 25970, 0xE200000000000000, v28);
    }

    return v11;
  }

  return result;
}

uint64_t sub_21404F78C()
{
  sub_21404F1A4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F7E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_213FDCA18(a1, a2);
  }

  return a1;
}

uint64_t sub_21404F7F4()
{
  sub_21404F848();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F848()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = *(v0 + 81);
  v7 = v0[11];
  v8 = v0[12];
  v19 = MEMORY[0x277D83E88];
  *&v18 = v1;
  sub_213FDC730(&v18, v17);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v17, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (!v2)
  {
    goto LABEL_8;
  }

  v11 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D837D0];
  *&v18 = v3;
  *(&v18 + 1) = v2;
  sub_213FDC730(&v18, v17);

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v17, 115, 0xE100000000000000, v12);
  if (v4)
  {
    v19 = v11;
    *&v18 = v5;
    *(&v18 + 1) = v4;
    sub_213FDC730(&v18, v17);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v17, 112, 0xE100000000000000, v13);
    if (v6 != 50)
    {
      v19 = MEMORY[0x277D83B88];
      *&v18 = v6;
      sub_213FDC730(&v18, v17);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v17, 101, 0xE100000000000000, v14);
    }

    if (v8 >> 60 != 15)
    {
      v19 = MEMORY[0x277CC9318];
      *&v18 = v7;
      *(&v18 + 1) = v8;
      sub_213FDC730(&v18, v17);
      sub_213FDCA18(v7, v8);
      sub_21402D9F8(v7, v8);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v17, 99, 0xE100000000000000, v15);
      sub_213FDC6BC(v7, v8);
    }

    return v9;
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21404FA84()
{
  sub_21404F848();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404FAD8()
{
  sub_21404FB2C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404FB2C()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[11];
  v7 = v0[12];
  v17 = MEMORY[0x277D83E88];
  *&v16 = v1;
  sub_213FDC730(&v16, v15);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (!v2)
  {
    goto LABEL_6;
  }

  v10 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277D837D0];
  *&v16 = v3;
  *(&v16 + 1) = v2;
  sub_213FDC730(&v16, v15);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 115, 0xE100000000000000, v11);
  if (v4)
  {
    v17 = v10;
    *&v16 = v5;
    *(&v16 + 1) = v4;
    sub_213FDC730(&v16, v15);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v15, 112, 0xE100000000000000, v12);
    if (v7 >> 60 != 15)
    {
      v17 = MEMORY[0x277CC9318];
      *&v16 = v6;
      *(&v16 + 1) = v7;
      sub_213FDC730(&v16, v15);
      sub_213FDCA18(v6, v7);
      sub_21402D9F8(v6, v7);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v15, 99, 0xE100000000000000, v13);
      sub_213FDC6BC(v6, v7);
    }

    return v8;
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21404FD10()
{
  sub_21404FB2C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404FD64()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = 1106;
      }

      else
      {
        v2 = 1108;
      }
    }

    else if (*v0)
    {
      v2 = 1104;
    }

    else
    {
      v2 = 1103;
    }

    goto LABEL_18;
  }

  if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      v2 = 1109;
    }

    else
    {
      v2 = 1150;
    }

    goto LABEL_18;
  }

  if (v1 == 6)
  {
    v2 = 1151;
    goto LABEL_18;
  }

  if (v1 == 7)
  {
    v2 = 1152;
LABEL_18:
    v19 = MEMORY[0x277D83B88];
    *&v18 = v2;
    sub_213FDC730(&v18, v17);
    v5 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v17, 1835365481, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v7 = sub_2144C59BC();
    v19 = MEMORY[0x277CC9318];
    *&v18 = v7;
    *(&v18 + 1) = v14;
    sub_213FDC730(&v18, v17);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v17, 0x64616F6C796170, 0xE700000000000000, v15);
    return v5;
  }

  sub_21404A6EC();
  v3 = swift_allocError();
  *v4 = 0xD000000000000036;
  v4[1] = 0x800000021478B020;
  v4[2] = 0x4964696C61766E69;
  v4[3] = 0xEB000000006D6574;
  v4[4] = 0xD00000000000001CLL;
  v4[5] = 0x800000021478B060;
  swift_willThrow();
  v5 = MEMORY[0x277D84F98];
  v8 = sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v9 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v3;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_213FAF000, v9, v8, "Error when attempting to recompose CloudSharingMetadata token: %@", v10, 0xCu);
    sub_21404AC04(v11);
    MEMORY[0x216056AC0](v11, -1, -1);
    MEMORY[0x216056AC0](v10, -1, -1);
  }

  return v5;
}

uint64_t sub_214050044()
{
  sub_21404FD64();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214050098()
{
  sub_21404FD64();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2140500EC(unint64_t a1, unint64_t a2)
{
  v2 = sub_21405019C(a1, a2);

  return v2;
}

uint64_t sub_214050120(unint64_t a1, unint64_t a2)
{
  v2 = sub_21405019C(a1, a2);

  return v2;
}

uint64_t sub_214050154@<X0>(unint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_21405019C(*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t sub_21405019C(unint64_t a1, unint64_t a2)
{
  if (sub_2146D96A8() != 4)
  {
    goto LABEL_36;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a2) & 0xF;
    }

    else
    {
      result = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (result == 4)
    {
      goto LABEL_7;
    }

LABEL_38:
    __break(1u);
    return result;
  }

LABEL_37:
  result = sub_2146D9708();
  if (result != 4)
  {
    goto LABEL_38;
  }

LABEL_7:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = 0;
    v8 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    v2 = 15;
    while (1)
    {
      v11 = v2 & 0xC;
      v12 = v2;
      if (v11 == v9)
      {
        v12 = sub_21448C4AC(v2, a1, a2);
      }

      v13 = v12 >> 16;
      if (v12 >> 16 >= v6)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = sub_2146D9748();
        if (v11 != v9)
        {
          goto LABEL_26;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v15 = *(v16 + v13);
        if (v11 != v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = sub_2146D9F88();
        }

        v15 = *(v14 + v13);
        if (v11 != v9)
        {
LABEL_26:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_27;
        }
      }

      v2 = sub_21448C4AC(v2, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_14:
        v2 = (v2 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_15;
      }

LABEL_27:
      if (v6 <= v2 >> 16)
      {
        goto LABEL_35;
      }

      v2 = sub_2146D9718();
LABEL_15:
      v10 = v15 | (v7 << 8);
      v7 = v10;
      if (4 * v6 == v2 >> 14)
      {
        return v10;
      }
    }
  }

  return 0;
}

unint64_t sub_214050374()
{
  result = qword_27C904258;
  if (!qword_27C904258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904258);
  }

  return result;
}

unint64_t sub_2140503D8()
{
  result = qword_27C904260;
  if (!qword_27C904260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904260);
  }

  return result;
}

unint64_t sub_214050450@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214050524()
{
  v3 = *v0;
  sub_214050644();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21405058C()
{
  v1 = *v0;
  v7 = MEMORY[0x277D83E88];
  *&v6 = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_214050644()
{
  v1 = *v0;
  v7 = MEMORY[0x277D83E88];
  *&v6 = v1;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
  return v2;
}

uint64_t sub_2140506F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_213FDC730((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2140538A4(v24, &v38);
        sub_2140537E4(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2146D9E78();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_213FDC730(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2140509A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904098, &unk_2146EA9E0);
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_213FDC730(v22, v34);
      }

      else
      {
        sub_2140537E4(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_2146DA958();
      type metadata accessor for CFString(0);
      sub_21405379C(&qword_280B34D80, type metadata accessor for CFString);
      sub_2146D8CB8();
      result = sub_2146DA9B8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_213FDC730(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_214050C88(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042A0, &unk_2146EAE50);
  v42 = a2;
  result = sub_2146DA048();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_21405379C(&unk_27C914340, MEMORY[0x277CC95F0]);
      result = sub_2146D94D8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_214051060(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2146DA008();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9042F0, &unk_2146EAB00);
  v43 = a2;
  result = sub_2146DA048();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_213FDC730((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_2140537E4(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_2146D94D8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_213FDC730(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_214051400(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904080, &unk_2146EAE90);
  v38 = a2;
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2146DA958();
      sub_2146D9698();
      result = sub_2146DA9B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2140516A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042C0, &unk_2146EAE60);
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_213FDC730(v22, v33);
      }

      else
      {
        sub_2140537E4(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_2146DA958();
      NameAndPhoto.NameAndPhotoKey.rawValue.getter();
      sub_2146D9698();

      result = sub_2146DA9B8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_213FDC730(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_214051958(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042D0, &unk_2146EAE78);
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_213FDC730(v25, v33);
      }

      else
      {
        sub_2140537E4(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_2146DA958();
      sub_2146D9698();

      result = sub_2146DA9B8();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_213FDC730(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_214051C9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042E0, &qword_2146EAE88);
  v35 = a2;
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x216055840](*(v8 + 40), v22, 4);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_214051F2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904068, &qword_2146EA9B0);
  v36 = a2;
  result = sub_2146DA048();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_213FB77C8(v25, v37);
      }

      else
      {
        sub_214053840(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2146DA958();
      sub_2146D9698();
      result = sub_2146DA9B8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_213FB77C8(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_214052218(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_2146DA048();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_2140537E4(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_2146DA958();
      sub_2146D9698();
      result = sub_2146DA9B8();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

_OWORD *sub_2140524DC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21408C300(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_214482C24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_214052218(v16, a4 & 1, &unk_27C914350, &qword_21474D950, sub_213FDC730);
    v20 = *v5;
    v11 = sub_21408C300(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_213FDC730(a1, v23);
  }

  else
  {
    sub_2140533A0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_214052654()
{
  result = qword_27C904270;
  if (!qword_27C904270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904270);
  }

  return result;
}

unint64_t sub_2140526D4()
{
  result = qword_27C904278;
  if (!qword_27C904278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904278);
  }

  return result;
}

unint64_t sub_214052728()
{
  result = qword_27C904280;
  if (!qword_27C904280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904280);
  }

  return result;
}

uint64_t sub_2140527A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140527E4()
{
  result = qword_27C904288;
  if (!qword_27C904288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904288);
  }

  return result;
}

unint64_t sub_214052838()
{
  result = qword_27C904290;
  if (!qword_27C904290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904290);
  }

  return result;
}

_OWORD *sub_2140528AC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21408C378(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_214482C4C();
      goto LABEL_7;
    }

    sub_2140506F0(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_21408C378(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2140538A4(a2, v22);
      return sub_21405340C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_213FDC730(a1, v17);
}

_OWORD *sub_2140529F8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21408C3BC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_214482DF0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2140509A8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_21408C3BC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_213FDC730(a1, v20);
  }

  else
  {
    sub_214053488(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_214052B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_21408C470(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_214482F70();
      goto LABEL_9;
    }

    sub_214050C88(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_21408C470(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_2140534F0(v16, v13, v25, a2, v26);
  }
}

_OWORD *sub_214052D14(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2146DA008();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21408C508(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2144831F0();
      goto LABEL_7;
    }

    sub_214051060(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_21408C508(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2140535B0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_213FDC730(a1, v22);
}

uint64_t sub_214052EEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21408C300(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_214051400(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21408C300(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2146DA8D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_214483474();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_2140530F8(_OWORD *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  v15 = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a5();
      v15 = v23;
      goto LABEL_8;
    }

    a6(v20, a3 & 1);
    v24 = *v10;
    v15 = a4(a2);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v10;
  if ((v21 & 1) == 0)
  {
    return sub_214053670(v15, a2, a1, v26);
  }

  v27 = (v26[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v27);

  return sub_213FDC730(a1, v27);
}

uint64_t sub_21405324C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21408C300(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2144838E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_214051F2C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21408C300(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_213FB77C8(a1, v23);
  }

  else
  {
    sub_2140536D8(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2140533A0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_213FDC730(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_21405340C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_214053488(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2140534F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2146D8B88();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_2140535B0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2146DA008();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_214053670(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2140536D8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_213FB77C8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_214053748()
{
  result = qword_27C9042B0;
  if (!qword_27C9042B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9042B0);
  }

  return result;
}

uint64_t sub_21405379C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2140537E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_214053840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_214053904()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_214053984@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 24);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140539F8(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214053AA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v11 = *(v3 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 24), *(v3 + 32));

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214053BEC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void sub_214053CC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    v16 = *(v3 + 40);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 24) = v5;
      *(v12 + 32) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  v16 = *(v3 + 40);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214053E94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214053EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214053F40(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

__n128 sub_214053FC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

void (*sub_214054030(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

void sub_2140540D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v11 = *(v3 + 32);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 16);

    sub_213FDC6D0(v9, v11);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  free(v2);
}

uint64_t sub_2140541B0()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_214054230@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 64);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140542A4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214054354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v3 + 80);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 64), *(v3 + 72));

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214054498(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

void sub_214054570(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 48);
    v11 = *(v3 + 56);
    v16 = *(v3 + 80);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 64) = v5;
      *(v12 + 72) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 48);
  v6 = *(v3 + 56);
  v16 = *(v3 + 80);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 64) = v5;
  *(v8 + 72) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214054740@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214054798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140547EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

__n128 sub_214054874(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void (*sub_2140548DC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

void sub_21405497C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 56);
  v9 = *(v3 + 64);
  v11 = *(v3 + 72);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 56);

    sub_213FDC6D0(v9, v11);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

uint64_t sub_214054A5C()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t sub_214054ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 112);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 104);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214054B50(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214054C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 88);
  v7 = *(v2 + 96);
  v11 = *(v3 + 120);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 104), *(v3 + 112));

    *(v3 + 104) = a1;
    *(v3 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214054D44(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void sub_214054E1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v16 = *(v3 + 120);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 104) = v5;
      *(v12 + 112) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  v16 = *(v3 + 120);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 104) = v5;
  *(v8 + 112) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214054FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214055044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  *a2 = *(a1 + 88);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214055098(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = *(a2 + 112);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 88) = v4;
  *(a2 + 96) = v3;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7;
  return result;
}

__n128 sub_214055120(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

void (*sub_214055188(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

void sub_214055228(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 96);
  v9 = *(v3 + 104);
  v11 = *(v3 + 112);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v7;
    *(v3 + 112) = v6;
    *(v3 + 120) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 96);

    sub_213FDC6D0(v9, v11);
    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v7;
    *(v3 + 112) = v6;
    *(v3 + 120) = v8;
  }

  free(v2);
}

uint64_t sub_214055308()
{
  if (*(v0 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 144);

    return v1;
  }

  return result;
}

uint64_t sub_214055388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 152);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140553FC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2140554AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 128);
  v7 = *(v2 + 136);
  v11 = *(v3 + 160);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 144), *(v3 + 152));

    *(v3 + 144) = a1;
    *(v3 + 152) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2140555F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 144);
  *(v3 + 24) = v5;
  v6 = *(v1 + 152);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2140556C8;
  }

  return result;
}

void sub_2140556C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 128);
    v11 = *(v3 + 136);
    v16 = *(v3 + 160);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 144) = v5;
      *(v12 + 152) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 128);
  v6 = *(v3 + 136);
  v16 = *(v3 + 160);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 144) = v5;
  *(v8 + 152) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214055898@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140558F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  *a2 = *(a1 + 128);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214055944(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 136);
  v9 = *(a2 + 144);
  v10 = *(a2 + 152);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  *(a2 + 144) = v5;
  *(a2 + 152) = v6;
  *(a2 + 160) = v7;
  return result;
}

__n128 sub_2140559CC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[8].n128_u64[1];
  v7 = v1[9].n128_i64[0];
  v8 = v1[9].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

void (*sub_214055A34(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055AD4;
}

void sub_214055AD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 136);
  v9 = *(v3 + 144);
  v11 = *(v3 + 152);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 136);

    sub_213FDC6D0(v9, v11);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
  }

  free(v2);
}

unint64_t sub_214055BE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[2] = sub_214059908;
  v11[3] = 0;
  v11[4] = 0x100000;
  v11[5] = sub_21403C354;
  v11[6] = 0;
  *(v10 + 16) = sub_214059860;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E0070(v9);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_214032610;
  *(v13 + 24) = v14;
  *(inited + 40) = v13;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214055E2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282652E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282652F10);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2140598E8;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21405600C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21405604C(a1, &v5);
  v4 = v5;
  if (v5 == 19)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_21405604C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x14)
  {
    *a2 = 19;
  }

  else
  {
    *a2 = byte_2146EBA4A[result];
  }

  return result;
}

uint64_t sub_2140560AC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBA60[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214056134()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBA60[v1]);
  return sub_2146DA9B8();
}

unint64_t sub_214056250@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (result >= 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = 5;
  }

  *a3 = v3;
  return result;
}

unint64_t sub_21405626C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2140563E8@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (result >= 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = 3;
  }

  *a3 = v3;
  return result;
}

unint64_t sub_214056404@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2140564C8@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2)
  {
    v4 = 23;
  }

  else
  {
    result = sub_214056514(result, &v5);
    v4 = v5;
    if (v5 == 23)
    {
      v4 = 0;
    }
  }

  *a3 = v4;
  return result;
}

uint64_t sub_214056514@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 5;
  switch(result)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v2 = 1;
      goto LABEL_14;
    case 2:
      v2 = 2;
      goto LABEL_14;
    case 3:
      v2 = 3;
      goto LABEL_14;
    case 4:
      v2 = 4;
LABEL_14:
      v3 = v2;
      goto LABEL_15;
    case 5:
LABEL_15:
      *a2 = v3;
      break;
    case 7:
      *a2 = 6;
      break;
    case 8:
      *a2 = 7;
      break;
    case 9:
      *a2 = 8;
      break;
    case 10:
      *a2 = 9;
      break;
    case 11:
      *a2 = 10;
      break;
    case 12:
      *a2 = 11;
      break;
    case 13:
      *a2 = 12;
      break;
    case 14:
      *a2 = 13;
      break;
    case 15:
      *a2 = 14;
      break;
    case 16:
      *a2 = 15;
      break;
    case 17:
      *a2 = 16;
      break;
    case 18:
      *a2 = 17;
      break;
    case 19:
      *a2 = 18;
      break;
    case 20:
      *a2 = 19;
      break;
    case 21:
      *a2 = 20;
      break;
    case 22:
      *a2 = 21;
      break;
    case 23:
      *a2 = 22;
      break;
    default:
      *a2 = 23;
      break;
  }

  return result;
}

uint64_t sub_214056680()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBAF8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214056708()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBAF8[v1]);
  return sub_2146DA9B8();
}

unint64_t sub_214056944@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282652F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653000);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214059818;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214056B60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = sub_213FDC8D0;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a3);
}

unint64_t sub_214056CA8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214056E04@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214056F60@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9043D8, &unk_214731A10);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2140597F4;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E019C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904108, &qword_2146EBA40);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2140597FC;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214043138(inited, a1);
}

uint64_t sub_2140570D0()
{
  sub_214057178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214057124()
{
  sub_214057178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214057178()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v149 = *(v0 + 7);
  v150 = *(v0 + 5);
  v7 = *(v0 + 12);
  v8 = *(v0 + 17);
  v139 = *(v0 + 11);
  v140 = *(v0 + 16);
  v141 = *(v0 + 21);
  v142 = *(v0 + 26);
  v170 = *(v0 + 27);
  v171 = *(v0 + 22);
  v151 = v0[225];
  v147 = *(v0 + 29);
  v148 = *(v0 + 31);
  v168 = v0[240];
  v169 = v0[256];
  v152 = v0[257];
  v143 = *(v0 + 35);
  v153 = *(v0 + 36);
  v154 = v0[297];
  v9 = *(v0 + 38);
  v10 = *(v0 + 40);
  v155 = v0[312];
  v156 = v0[328];
  v11 = *(v0 + 42);
  v12 = *(v0 + 44);
  v157 = v0[344];
  v158 = v0[360];
  v13 = *(v0 + 46);
  v14 = *(v0 + 48);
  v159 = v0[376];
  v160 = v0[392];
  v15 = *(v0 + 50);
  v16 = qword_2146EBA60[*v0];
  v17 = MEMORY[0x277D83E88];
  *(&v182 + 1) = MEMORY[0x277D83E88];
  *&v181 = v16;
  v161 = v0[408];
  v144 = *(v0 + 52);
  v162 = v0[409];
  v163 = v0[424];
  v164 = v0[425];
  v165 = *(v0 + 57);
  v145 = *(v0 + 56);
  v146 = *(v0 + 61);
  v166 = *(v0 + 62);
  v167 = v0[505];
  v173 = *(v0 + 66);
  sub_213FDC730(&v181, &v179);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v179, 0x546567617373656DLL, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  *(&v182 + 1) = v17;
  *&v181 = v1;
  sub_213FDC730(&v181, &v179);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v179, 0xD000000000000010, 0x800000021478B0A0, v20);
  v21 = MEMORY[0x277D839F8];
  *(&v182 + 1) = MEMORY[0x277D839F8];
  *&v181 = v2;
  sub_213FDC730(&v181, &v179);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v179, 0x65746144646E6573, 0xE800000000000000, v22);
  v23 = MEMORY[0x277D837D0];
  *(&v182 + 1) = MEMORY[0x277D837D0];
  *&v181 = v3;
  *(&v181 + 1) = v4;
  sub_213FDC730(&v181, &v179);
  v24 = v23;

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v179, 0x496567617373656DLL, 0xE900000000000044, v25);
  *(&v182 + 1) = v23;
  *&v181 = v150;
  *(&v181 + 1) = v5;
  sub_213FDC730(&v181, &v179);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  *v178 = v18;
  sub_2140524DC(&v179, 0x496E6F6973736573, 0xE900000000000044, v26);
  v27 = v18;
  if (v6)
  {
    *(&v182 + 1) = v23;
    *&v181 = v149;
    *(&v181 + 1) = v6;
    sub_213FDC730(&v181, &v179);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v18;
    sub_2140524DC(&v179, 0x547972616D6D7573, 0xEB00000000747865, v28);
  }

  v29 = v171;
  v30 = v173;
  v31 = v170;
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v139;
    *(&v181 + 1) = v7;
    sub_213FDC730(&v181, &v179);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x7265766965636572, 0xEE00656C646E6148, v32);
    v29 = v171;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v140;
    *(&v181 + 1) = v8;
    sub_213FDC730(&v181, &v179);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0xD000000000000015, 0x800000021478B0C0, v33);
    v31 = v170;
    v29 = v171;
  }

  v34 = MEMORY[0x277D83E88];
  if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v141;
    *(&v181 + 1) = v29;
    sub_213FDC730(&v181, &v179);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x4C52556572616873, 0xE800000000000000, v35);
  }

  if (v31)
  {
    if (v31 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v142;
    *(&v181 + 1) = v31;
    sub_213FDC730(&v181, &v179);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x7069636974726170, 0xED00004449746E61, v36);
  }

  if (v151 != 5)
  {
    *(&v182 + 1) = v34;
    *&v181 = v151;
    sub_213FDC730(&v181, &v179);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x546E6F6973736573, 0xEB00000000657079, v37);
  }

  if (v152 != 5)
  {
    *(&v182 + 1) = v34;
    *&v181 = v152;
    sub_213FDC730(&v181, &v179);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0xD000000000000016, 0x800000021478B180, v38);
  }

  if (v153)
  {
    if (v153 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v143;
    *(&v181 + 1) = v153;
    sub_213FDC730(&v181, &v179);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0xD000000000000019, 0x800000021478B160, v39);
  }

  if (v154 != 3)
  {
    *(&v182 + 1) = v34;
    *&v181 = v154;
    sub_213FDC730(&v181, &v179);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0xD000000000000018, 0x800000021478B140, v40);
  }

  if ((v155 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v9;
    sub_213FDC730(&v181, &v179);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x5472656767697274, 0xEB00000000656D69, v41);
  }

  if ((v156 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v10;
    sub_213FDC730(&v181, &v179);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x656475746974616CLL, 0xE800000000000000, v42);
  }

  if ((v157 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v11;
    sub_213FDC730(&v181, &v179);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x64757469676E6F6CLL, 0xE900000000000065, v43);
  }

  if ((v158 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v12;
    sub_213FDC730(&v181, &v179);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 1668183400, 0xE400000000000000, v44);
  }

  if ((v159 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v13;
    sub_213FDC730(&v181, &v179);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x6564757469746C61, 0xE800000000000000, v45);
  }

  if ((v160 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v14;
    sub_213FDC730(&v181, &v179);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 1668183414, 0xE400000000000000, v46);
  }

  if ((v161 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v15;
    sub_213FDC730(&v181, &v179);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x6F4C664F656D6974, 0xEE006E6F69746163, v47);
  }

  if (v162 != 3)
  {
    *(&v182 + 1) = v34;
    *&v181 = v162;
    sub_213FDC730(&v181, &v179);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x636E657265666572, 0xEE00656D61724665, v48);
  }

  if ((v163 & 1) == 0)
  {
    *(&v182 + 1) = v21;
    *&v181 = v144;
    sub_213FDC730(&v181, &v179);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x6465657073, 0xE500000000000000, v49);
  }

  if (v164 != 23)
  {
    v50 = qword_2146EBAF8[v164];
    *(&v182 + 1) = v34;
    *&v181 = v50;
    sub_213FDC730(&v181, &v179);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x5472656767697274, 0xEB00000000657079, v51);
  }

  if (v165)
  {
    if (v165 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v145;
    *(&v181 + 1) = v165;
    sub_213FDC730(&v181, &v179);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x6143797465666173, 0xEE0079654B656863, v52);
  }

  if (v166)
  {
    if (v166 == 1)
    {
      goto LABEL_127;
    }

    *(&v182 + 1) = v24;
    *&v181 = v146;
    *(&v181 + 1) = v166;
    sub_213FDC730(&v181, &v179);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0xD000000000000010, 0x800000021478B120, v53);
  }

  if (v167 == 2)
  {
    if (v168)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(&v182 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v181) = v167 & 1;
    sub_213FDC730(&v181, &v179);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v178 = v27;
    sub_2140524DC(&v179, 0x697254534F537369, 0xEC00000072656767, v54);
    if (v168)
    {
LABEL_52:
      if (v169)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }
  }

  *(&v182 + 1) = v21;
  *&v181 = v147;
  sub_213FDC730(&v181, &v179);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *v178 = v27;
  sub_2140524DC(&v179, 0xD000000000000010, 0x800000021478B100, v55);
  if (v169)
  {
LABEL_53:
    if (!v173)
    {
      return v27;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(&v182 + 1) = v21;
  *&v181 = v148;
  sub_213FDC730(&v181, &v179);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *v178 = v27;
  sub_2140524DC(&v179, 0xD000000000000016, 0x800000021478B0E0, v56);
  if (!v173)
  {
    return v27;
  }

LABEL_58:
  if (v173 == 1)
  {
    goto LABEL_127;
  }

  v57 = *(v173 + 16);

  v172 = v57;
  if (!v57)
  {
LABEL_116:
    sub_213FB7170(v30);
    return v27;
  }

  v58 = 0;
  v59 = v173 + 32;
  while (v58 < *(v30 + 16))
  {
    v62 = *v59;
    v63 = *(v59 + 32);
    v182 = *(v59 + 16);
    v183 = v63;
    v181 = v62;
    v64 = *(v59 + 48);
    v65 = *(v59 + 64);
    v66 = *(v59 + 96);
    v186 = *(v59 + 80);
    v187 = v66;
    v184 = v64;
    v185 = v65;
    v67 = *(v59 + 112);
    v68 = *(v59 + 128);
    v69 = *(v59 + 144);
    v191 = *(v59 + 160);
    v189 = v68;
    v190 = v69;
    v188 = v67;
    v70 = v183;
    if (v183 == 1)
    {
      goto LABEL_127;
    }

    v71 = v181;
    if (!v183)
    {
      sub_214059868(&v181, &v179);
      v84 = *(&v185 + 1);
      if (!*(&v185 + 1))
      {
        goto LABEL_88;
      }

      goto LABEL_80;
    }

    v72 = *(&v182 + 1);
    strcpy(v178, "receiverHandle");
    v178[15] = -18;
    sub_214059868(&v181, &v179);
    v73 = sub_2146DA428();
    MEMORY[0x2160545D0](v73);

    v74 = *v178;
    v180 = MEMORY[0x277D837D0];
    *&v179 = v72;
    *(&v179 + 1) = v70;
    sub_213FDC730(&v179, v178);

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v174 = v27;
    v76 = sub_21408C300(v74, *(&v74 + 1));
    v78 = v27[2];
    v79 = (v77 & 1) == 0;
    v80 = __OFADD__(v78, v79);
    v81 = v78 + v79;
    if (v80)
    {
      goto LABEL_119;
    }

    v82 = v77;
    if (v27[3] < v81)
    {
      sub_2140506C8(v81, v75);
      v76 = sub_21408C300(v74, *(&v74 + 1));
      if ((v82 & 1) != (v83 & 1))
      {
        goto LABEL_128;
      }

LABEL_74:
      if (v82)
      {
        goto LABEL_75;
      }

      goto LABEL_78;
    }

    if (v75)
    {
      goto LABEL_74;
    }

    v87 = v76;
    sub_214482C24();
    v76 = v87;
    if (v82)
    {
LABEL_75:
      v85 = v76;

      v27 = v174;
      v86 = (v174[7] + 32 * v85);
      __swift_destroy_boxed_opaque_existential_1(v86);
      sub_213FDC730(v178, v86);
      v84 = *(&v185 + 1);
      if (!*(&v185 + 1))
      {
        goto LABEL_88;
      }

      goto LABEL_80;
    }

LABEL_78:
    v27 = v174;
    v174[(v76 >> 6) + 8] |= 1 << v76;
    *(v174[6] + 16 * v76) = v74;
    sub_213FDC730(v178, (v174[7] + 32 * v76));
    v88 = v174[2];
    v80 = __OFADD__(v88, 1);
    v89 = v88 + 1;
    if (v80)
    {
      goto LABEL_123;
    }

    v174[2] = v89;
    v84 = *(&v185 + 1);
    if (!*(&v185 + 1))
    {
      goto LABEL_88;
    }

LABEL_80:
    if (v84 == 1)
    {
      goto LABEL_127;
    }

    v90 = v185;
    *&v179 = 0;
    *(&v179 + 1) = 0xE000000000000000;
    sub_2146D9EF8();

    *&v179 = 0xD000000000000015;
    *(&v179 + 1) = 0x800000021478B0C0;
    *v178 = v71;
    v91 = sub_2146DA428();
    MEMORY[0x2160545D0](v91);

    v92 = v179;
    v180 = MEMORY[0x277D837D0];
    *&v179 = v90;
    *(&v179 + 1) = v84;
    sub_213FDC730(&v179, v178);

    v93 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v27;
    v94 = sub_21408C300(v92, *(&v92 + 1));
    v96 = v27[2];
    v97 = (v95 & 1) == 0;
    v80 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v80)
    {
      goto LABEL_120;
    }

    v99 = v95;
    if (v27[3] < v98)
    {
      sub_2140506C8(v98, v93);
      v94 = sub_21408C300(v92, *(&v92 + 1));
      if ((v99 & 1) != (v100 & 1))
      {
        goto LABEL_128;
      }

LABEL_86:
      if (v99)
      {
        goto LABEL_87;
      }

      goto LABEL_98;
    }

    if (v93)
    {
      goto LABEL_86;
    }

    v117 = v94;
    sub_214482C24();
    v94 = v117;
    if (v99)
    {
LABEL_87:
      v101 = v94;

      v27 = v175;
      v102 = (v175[7] + 32 * v101);
      __swift_destroy_boxed_opaque_existential_1(v102);
      sub_213FDC730(v178, v102);
LABEL_88:
      v103 = v188;
      if (!v188)
      {
        goto LABEL_104;
      }

LABEL_89:
      if (v103 == 1)
      {
        goto LABEL_127;
      }

      v104 = *(&v187 + 1);
      strcpy(&v179, "shareURL");
      BYTE9(v179) = 0;
      WORD5(v179) = 0;
      HIDWORD(v179) = -402653184;
      *v178 = v71;
      v105 = sub_2146DA428();
      MEMORY[0x2160545D0](v105);

      v106 = v179;
      v180 = MEMORY[0x277D837D0];
      *&v179 = v104;
      *(&v179 + 1) = v103;
      sub_213FDC730(&v179, v178);

      v107 = swift_isUniquelyReferenced_nonNull_native();
      v176 = v27;
      v108 = sub_21408C300(v106, *(&v106 + 1));
      v110 = v27[2];
      v111 = (v109 & 1) == 0;
      v80 = __OFADD__(v110, v111);
      v112 = v110 + v111;
      if (v80)
      {
        goto LABEL_121;
      }

      v113 = v109;
      if (v27[3] < v112)
      {
        sub_2140506C8(v112, v107);
        v108 = sub_21408C300(v106, *(&v106 + 1));
        if ((v113 & 1) != (v114 & 1))
        {
          goto LABEL_128;
        }

        goto LABEL_95;
      }

      if (v107)
      {
LABEL_95:
        if (v113)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v120 = v108;
        sub_214482C24();
        v108 = v120;
        if (v113)
        {
LABEL_96:
          v115 = v108;

          v27 = v176;
          v116 = (v176[7] + 32 * v115);
          __swift_destroy_boxed_opaque_existential_1(v116);
          sub_213FDC730(v178, v116);
          goto LABEL_104;
        }
      }

      v27 = v176;
      v176[(v108 >> 6) + 8] |= 1 << v108;
      *(v176[6] + 16 * v108) = v106;
      sub_213FDC730(v178, (v176[7] + 32 * v108));
      v121 = v176[2];
      v80 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v80)
      {
        goto LABEL_125;
      }

      v176[2] = v122;
      goto LABEL_104;
    }

LABEL_98:
    v27 = v175;
    v175[(v94 >> 6) + 8] |= 1 << v94;
    *(v175[6] + 16 * v94) = v92;
    sub_213FDC730(v178, (v175[7] + 32 * v94));
    v118 = v175[2];
    v80 = __OFADD__(v118, 1);
    v119 = v118 + 1;
    if (v80)
    {
      goto LABEL_124;
    }

    v175[2] = v119;
    v103 = v188;
    if (v188)
    {
      goto LABEL_89;
    }

LABEL_104:
    v123 = *(&v190 + 1);
    if (!*(&v190 + 1))
    {
      goto LABEL_62;
    }

    if (*(&v190 + 1) == 1)
    {
      goto LABEL_127;
    }

    v124 = v190;
    strcpy(&v179, "participantID");
    HIWORD(v179) = -4864;
    *v178 = v71;
    v125 = sub_2146DA428();
    MEMORY[0x2160545D0](v125);

    v126 = v179;
    v180 = MEMORY[0x277D837D0];
    *&v179 = v124;
    *(&v179 + 1) = v123;
    sub_213FDC730(&v179, v178);

    v127 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v27;
    v128 = sub_21408C300(v126, *(&v126 + 1));
    v130 = v27[2];
    v131 = (v129 & 1) == 0;
    v80 = __OFADD__(v130, v131);
    v132 = v130 + v131;
    if (v80)
    {
      goto LABEL_122;
    }

    v133 = v129;
    if (v27[3] < v132)
    {
      sub_2140506C8(v132, v127);
      v128 = sub_21408C300(v126, *(&v126 + 1));
      if ((v133 & 1) != (v134 & 1))
      {
        goto LABEL_128;
      }

LABEL_111:
      if (v133)
      {
        goto LABEL_61;
      }

      goto LABEL_112;
    }

    if (v127)
    {
      goto LABEL_111;
    }

    v137 = v128;
    sub_214482C24();
    v128 = v137;
    if (v133)
    {
LABEL_61:
      v60 = v128;

      v27 = v177;
      v61 = (v177[7] + 32 * v60);
      __swift_destroy_boxed_opaque_existential_1(v61);
      sub_213FDC730(v178, v61);
LABEL_62:
      sub_2140598A0(&v181);
      goto LABEL_63;
    }

LABEL_112:
    v27 = v177;
    v177[(v128 >> 6) + 8] |= 1 << v128;
    *(v177[6] + 16 * v128) = v126;
    sub_213FDC730(v178, (v177[7] + 32 * v128));
    sub_2140598A0(&v181);
    v135 = v177[2];
    v80 = __OFADD__(v135, 1);
    v136 = v135 + 1;
    if (v80)
    {
      goto LABEL_126;
    }

    v177[2] = v136;
LABEL_63:
    ++v58;
    v59 += 168;
    v30 = v173;
    if (v172 == v58)
    {
      goto LABEL_116;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
  __break(1u);
LABEL_127:
  sub_2146DA018();
  __break(1u);
LABEL_128:
  result = sub_2146DA8D8();
  __break(1u);
  return result;
}

unint64_t sub_214058588()
{
  result = qword_27C9042F8;
  if (!qword_27C9042F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9042F8);
  }

  return result;
}

unint64_t sub_2140585DC()
{
  result = qword_27C904300;
  if (!qword_27C904300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904300);
  }

  return result;
}

unint64_t sub_214058634()
{
  result = qword_27C904308;
  if (!qword_27C904308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904308);
  }

  return result;
}

unint64_t sub_2140586B4()
{
  result = qword_27C904310;
  if (!qword_27C904310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904310);
  }

  return result;
}

unint64_t sub_214058708()
{
  result = qword_27C904318;
  if (!qword_27C904318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904318);
  }

  return result;
}

unint64_t sub_214058760()
{
  result = qword_27C904320;
  if (!qword_27C904320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904320);
  }

  return result;
}

unint64_t sub_2140587E0()
{
  result = qword_27C904328;
  if (!qword_27C904328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904328);
  }

  return result;
}

unint64_t sub_214058834()
{
  result = qword_27C904330;
  if (!qword_27C904330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904330);
  }

  return result;
}

unint64_t sub_21405888C()
{
  result = qword_27C904338;
  if (!qword_27C904338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904338);
  }

  return result;
}

unint64_t sub_21405890C()
{
  result = qword_27C904340;
  if (!qword_27C904340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904340);
  }

  return result;
}

unint64_t sub_214058960()
{
  result = qword_27C904348;
  if (!qword_27C904348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904348);
  }

  return result;
}

unint64_t sub_2140589B8()
{
  result = qword_27C904350;
  if (!qword_27C904350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904350);
  }

  return result;
}

unint64_t sub_214058A38()
{
  result = qword_27C904358;
  if (!qword_27C904358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904358);
  }

  return result;
}

unint64_t sub_214058A8C()
{
  result = qword_27C904360;
  if (!qword_27C904360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904360);
  }

  return result;
}

unint64_t sub_214058AE4()
{
  result = qword_27C904368;
  if (!qword_27C904368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904368);
  }

  return result;
}

unint64_t sub_214058B64()
{
  result = qword_27C904370;
  if (!qword_27C904370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904370);
  }

  return result;
}

unint64_t sub_214058BB8()
{
  result = qword_27C904378;
  if (!qword_27C904378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904378);
  }

  return result;
}

unint64_t sub_214058C10()
{
  result = qword_27C904380;
  if (!qword_27C904380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904380);
  }

  return result;
}

unint64_t sub_214058C90()
{
  result = qword_27C904388;
  if (!qword_27C904388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904388);
  }

  return result;
}

unint64_t sub_214058CE4()
{
  result = qword_27C904390;
  if (!qword_27C904390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904390);
  }

  return result;
}

uint64_t sub_214058D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214058DA0()
{
  result = qword_27C904398;
  if (!qword_27C904398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904398);
  }

  return result;
}

unint64_t sub_214058DF4()
{
  result = qword_27C9043A0;
  if (!qword_27C9043A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043A0);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_214058E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_214058ECC(uint64_t result, int a2, int a3)
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
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Say9BlastDoor24SafetyMonitorGroupFieldsVGSgSg(uint64_t *a1)
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

uint64_t sub_214058F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 537))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214058FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 536) = 0;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 537) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 537) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyMonitorMessage.SMMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyMonitorMessage.SMMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoMessageMessageQuality(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VideoMessageMessageQuality(uint64_t result, unsigned int a2, unsigned int a3)
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