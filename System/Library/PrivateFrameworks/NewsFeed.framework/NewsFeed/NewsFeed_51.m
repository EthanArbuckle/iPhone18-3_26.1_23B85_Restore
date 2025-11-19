uint64_t sub_1D5FEB840(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1D7264A0C();
  FormatItemKind.hash(into:)();
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v23 = a1;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_1D5CBA110(a2, a3);
    sub_1D5FF9E98(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *v23 = a2;
    v23[1] = a3;
    return 1;
  }

  v12 = ~v10;
  while (2)
  {
    v13 = *(v8 + 48) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    switch(v15)
    {
      case 0uLL:
        if (a3)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 0);
        sub_1D5CBA0FC(a2, 0);
        v20 = v14;
        v21 = 0;
        goto LABEL_48;
      case 1uLL:
        if (a3 != 1)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 1uLL);
        sub_1D5CBA0FC(a2, 1uLL);
        v20 = v14;
        v21 = 1;
        goto LABEL_48;
      case 2uLL:
        if (a3 != 2)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 2uLL);
        sub_1D5CBA0FC(a2, 2uLL);
        v20 = v14;
        v21 = 2;
        goto LABEL_48;
      case 3uLL:
        if (a3 != 3)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 3uLL);
        sub_1D5CBA0FC(a2, 3uLL);
        v20 = v14;
        v21 = 3;
        goto LABEL_48;
      case 4uLL:
        if (a3 != 4)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 4uLL);
        v20 = a2;
        v21 = 4;
        goto LABEL_48;
      case 5uLL:
        if (a3 != 5)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 5;
        goto LABEL_48;
      case 6uLL:
        if (a3 != 6)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 6;
        goto LABEL_48;
      case 7uLL:
        if (a3 != 7)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 7;
        goto LABEL_48;
      case 8uLL:
        if (a3 != 8)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 8;
        goto LABEL_48;
      case 9uLL:
        if (a3 != 9)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 9;
        goto LABEL_48;
      case 0xAuLL:
        if (a3 != 10)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 10;
        goto LABEL_48;
      case 0xBuLL:
        if (a3 != 11)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 11;
        goto LABEL_48;
      case 0xCuLL:
        if (a3 != 12)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 12;
        goto LABEL_48;
      case 0xDuLL:
        if (a3 != 13)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 13;
        goto LABEL_48;
      case 0xEuLL:
        if (a3 != 14)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 14;
        goto LABEL_48;
      case 0xFuLL:
        if (a3 != 15)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 15;
        goto LABEL_48;
      default:
        if (a3 < 0x10)
        {
LABEL_37:
          sub_1D5CBA110(*v13, *(v13 + 8));
          sub_1D5CBA110(a2, a3);
          sub_1D5CBA110(v14, v15);
          sub_1D5CBA0FC(v14, v15);
          sub_1D5CBA0FC(a2, a3);
          sub_1D5CBA0FC(v14, v15);
          goto LABEL_38;
        }

        if (v14 != a2 || v15 != a3)
        {
          v17 = sub_1D72646CC();
          sub_1D5CBA110(a2, a3);
          sub_1D5CBA110(v14, v15);
          sub_1D5CBA0FC(v14, v15);
          sub_1D5CBA0FC(a2, a3);
          if (v17)
          {
            goto LABEL_49;
          }

LABEL_38:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_46;
          }

          continue;
        }

        v20 = a2;
        v21 = a3;
LABEL_48:
        sub_1D5CBA0FC(v20, v21);
LABEL_49:
        sub_1D5CBA0FC(a2, a3);
        v22 = *(*(v8 + 48) + 16 * v11);
        *v23 = v22;
        sub_1D5CBA110(v22, *(&v22 + 1));
        return 0;
    }
  }
}

uint64_t sub_1D5FEBC68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a4);
  sub_1D72621EC();
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    do
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      if (*(v14 + 16))
      {
        if (v15 == 1)
        {
          if (a4 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (a4 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (a4)
      {
        goto LABEL_4;
      }

      v16 = *v14 == a2 && *(v14 + 8) == a3;
      if (v16 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D5DEA520(a2, a3, v15);
        v17 = *(v8 + 48) + 24 * v11;
        v18 = *v17;
        v19 = *(v17 + 8);
        *a1 = *v17;
        *(a1 + 8) = v19;
        v20 = *(v17 + 16);
        *(a1 + 16) = v20;
        sub_1D5DEA210(v18, v19, v20);
        return 0;
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  sub_1D5DEA210(a2, a3, a4);
  sub_1D5FFA24C(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
  *v23 = v25;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 1;
}

uint64_t sub_1D5FEBE30(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  sub_1D5D50E70(0, &qword_1EDF0CE38, sub_1D60077D8);
  v110 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v109 = &v104 - v6;
  sub_1D5D50E70(0, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  v117 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v118 = &v104 - v9;
  v10 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v134 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v133 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v104 - v15;
  v16 = type metadata accessor for FormatVersionRequirement(0);
  v137 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v106 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v104 - v21;
  sub_1D60077D8();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v107 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v104 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v104 - v32;
  v34 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v111 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v104 - v39;
  v120 = v2;
  v132 = *v2;
  sub_1D7264A0C();
  v135 = *a2;
  sub_1D6907920(&v138, v135);
  v41 = *(a2 + 8);
  v42 = *(a2 + 24);
  v43 = *(a2 + 32);
  v126 = *(a2 + 16);
  v127 = v41;
  sub_1D72621EC();
  v125 = v42;
  sub_1D6C37A40(&v138, v42);
  v123 = v43;
  MEMORY[0x1DA6FC0B0](v43);
  MEMORY[0x1DA6FC0B0](*(a2 + 56));
  sub_1D72621EC();
  v116 = v10;
  v44 = *(v10 + 28);
  v124 = a2;
  v115 = v44;
  sub_1D5BE7354(a2 + v44, v40, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  v46 = v45;
  v47 = *(v45 - 8);
  v48 = *(v47 + 48);
  v49 = v47 + 48;
  v50 = v48(v40, 1, v45);
  v108 = v16;
  if (v50 == 1)
  {
    sub_1D7264A2C();
    v51 = v137;
  }

  else
  {
    sub_1D5BE7424(v40, v33, sub_1D60077D8);
    sub_1D7264A2C();
    sub_1D5BE7354(v33, v29, sub_1D60077D8);
    v51 = v137;
    if ((*(v137 + 48))(v29, 1, v16) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5BE7424(v29, v22, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30();
      sub_1D5BF1AEC(v22, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5BF1AEC(v33, sub_1D60077D8);
  }

  v52 = sub_1D7264A5C();
  v53 = -1 << *(v132 + 32);
  v54 = v52 & ~v53;
  v131 = v132 + 56;
  if (((*(v132 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
  {
LABEL_175:
    v99 = v120;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v124;
    v102 = v119;
    sub_1D5BE7354(v124, v119, type metadata accessor for FormatDerivedDataResultOptionReference);
    v138 = *v99;
    sub_1D5FFA4A8(v102, v54, isUniquelyReferenced_nonNull_native);
    *v99 = v138;
    sub_1D5BE7424(v101, v121, type metadata accessor for FormatDerivedDataResultOptionReference);
    return 1;
  }

  v112 = v49;
  v113 = v48;
  v114 = v46;
  v129 = ~v53;
  v136 = *(v135 + 16);
  v130 = *(v134 + 72);
  v105 = (v51 + 48);
  v122 = (v135 + 48);
  v55 = v133;
LABEL_12:
  v59 = *(v132 + 48);
  v134 = v54;
  v128 = v130 * v54;
  sub_1D5BE7354(v59 + v130 * v54, v55, type metadata accessor for FormatDerivedDataResultOptionReference);
  v137 = *v55;
  if (*(v137 + 16) != v136)
  {
    goto LABEL_11;
  }

  if (!v136 || v137 == v135)
  {
LABEL_122:
    v72 = *(v133 + 24);
    v73 = *(v133 + 32);
    v74 = *(v133 + 8) == v127 && *(v133 + 16) == v126;
    if (!v74 && (sub_1D72646CC() & 1) == 0 || (sub_1D5E1E5A4(v72, v125) & 1) == 0 || v73 != v123)
    {
      goto LABEL_11;
    }

    v75 = *(v133 + 40);
    v49 = *(v133 + 48);
    v76 = *(v133 + 56);
    v78 = *(v124 + 40);
    v77 = *(v124 + 48);
    v79 = *(v124 + 56);
    if (*(v133 + 56))
    {
      if (v76 == 1)
      {
        if (v79 == 1)
        {
          if (v75 != v78 || v49 != v77)
          {
            v80 = sub_1D72646CC();
            sub_1D5DEA210(v78, v77, 1u);
            sub_1D5DEA210(v75, v49, 1u);
            sub_1D5DEA520(v75, v49, 1u);
            sub_1D5DEA520(v78, v77, 1u);
            if ((v80 & 1) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_149;
          }

LABEL_148:
          sub_1D5DEA210(v75, v49, v76);
          sub_1D5DEA210(v75, v49, v76);
          sub_1D5DEA520(v75, v49, v76);
          sub_1D5DEA520(v75, v49, v76);
          goto LABEL_149;
        }

        sub_1D5DEA210(*(v124 + 40), *(v124 + 48), *(v124 + 56));
        sub_1D5DEA210(v75, v49, 1u);
        v56 = v75;
        v57 = v49;
        v58 = 1;
LABEL_10:
        sub_1D5DEA520(v56, v57, v58);
        sub_1D5DEA520(v78, v77, v79);
        goto LABEL_11;
      }

      if (v79 != 2)
      {
        sub_1D5DEA210(*(v124 + 40), *(v124 + 48), *(v124 + 56));
        sub_1D5DEA210(v75, v49, 2u);
        v56 = v75;
        v57 = v49;
        v58 = 2;
        goto LABEL_10;
      }

      if (v75 == v78 && v49 == v77)
      {
        goto LABEL_148;
      }

      v81 = sub_1D72646CC();
      sub_1D5DEA210(v78, v77, 2u);
      sub_1D5DEA210(v75, v49, 2u);
      sub_1D5DEA520(v75, v49, 2u);
      sub_1D5DEA520(v78, v77, 2u);
      if ((v81 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (*(v124 + 56))
      {
        sub_1D5DEA210(*(v124 + 40), *(v124 + 48), *(v124 + 56));
        sub_1D5DEA210(v75, v49, 0);
        v56 = v75;
        v57 = v49;
        v58 = 0;
        goto LABEL_10;
      }

      if (v75 == v78 && v49 == v77)
      {
        goto LABEL_148;
      }

      v95 = sub_1D72646CC();
      sub_1D5DEA210(v78, v77, 0);
      sub_1D5DEA210(v75, v49, 0);
      sub_1D5DEA520(v75, v49, 0);
      sub_1D5DEA520(v78, v77, 0);
      if ((v95 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_149:
    v85 = *(v117 + 48);
    v54 = v133;
    v49 = v118;
    sub_1D5BE7354(v133 + *(v116 + 28), v118, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    sub_1D5BE7354(v124 + v115, v49 + v85, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    v86 = v114;
    v87 = v113;
    if (v113(v49, 1, v114) == 1)
    {
      if (v87(v49 + v85, 1, v86) == 1)
      {
        goto LABEL_179;
      }

LABEL_154:
      sub_1D6007870(v49, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      goto LABEL_11;
    }

    v88 = v111;
    sub_1D5BE7354(v49, v111, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    if (v87(v49 + v85, 1, v86) == 1)
    {
      sub_1D5BF1AEC(v88, sub_1D60077D8);
      goto LABEL_154;
    }

    v89 = *(v110 + 48);
    v90 = v88;
    v62 = v109;
    sub_1D5BE7424(v90, v109, sub_1D60077D8);
    sub_1D5BE7424(v49 + v85, &v62[v89], sub_1D60077D8);
    v91 = *v105;
    v92 = v108;
    v93 = (*v105)(v62, 1, v108);
    v94 = v107;
    if (v93 == 1)
    {
      if (v91(&v62[v89], 1, v92) == 1)
      {
        goto LABEL_178;
      }
    }

    else
    {
      sub_1D5BE7354(v62, v107, sub_1D60077D8);
      if (v91(&v62[v89], 1, v92) != 1)
      {
        v96 = &v62[v89];
        v97 = v106;
        sub_1D5BE7424(v96, v106, type metadata accessor for FormatVersionRequirement);
        v98 = sub_1D6024840(v94, v97);
        sub_1D5BF1AEC(v97, type metadata accessor for FormatVersionRequirement);
        sub_1D5BF1AEC(v94, type metadata accessor for FormatVersionRequirement);
        sub_1D5BF1AEC(v62, sub_1D60077D8);
        if (v98)
        {
          goto LABEL_179;
        }

LABEL_166:
        sub_1D5BF1AEC(v49, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
        goto LABEL_11;
      }

      sub_1D5BF1AEC(v94, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D6007870(v62, &qword_1EDF0CE38, sub_1D60077D8);
    goto LABEL_166;
  }

  v60 = 0;
  v61 = (v137 + 48);
  v62 = v122;
  while (v60 < *(v137 + 16))
  {
    if (v60 >= *(v135 + 16))
    {
      goto LABEL_177;
    }

    v66 = *(v61 - 2);
    v54 = *(v61 - 1);
    v67 = *v61;
    v68 = *(v62 - 2);
    v49 = *(v62 - 1);
    v69 = *v62;
    if (v67 >> 6)
    {
      if (v67 >> 6 == 1)
      {
        if ((v69 & 0xC0) != 0x40)
        {
          goto LABEL_143;
        }

        switch(v54)
        {
          case 0uLL:
            if (v49)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0, *v62);
            sub_1D6007830(v68, 0, v69);
            sub_1D6007830(v66, 0, v67);
            sub_1D6007830(v68, 0, v69);
            sub_1D6007830(v66, 0, v67);
            sub_1D5CBA0FC(v66, 0);
            sub_1D5CBA0FC(v68, 0);
            sub_1D6007850(v66, 0, v67);
            sub_1D6007850(v68, 0, v69);
            sub_1D6007850(v68, 0, v69);
            sub_1D6007850(v66, 0, v67);
            sub_1D6007850(v68, 0, v69);
            v63 = v66;
            v64 = 0;
            goto LABEL_17;
          case 1uLL:
            if (v49 != 1)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 1uLL, *v62);
            sub_1D6007830(v68, 1uLL, v69);
            sub_1D6007830(v66, 1uLL, v67);
            sub_1D6007830(v68, 1uLL, v69);
            sub_1D6007830(v66, 1uLL, v67);
            sub_1D5CBA0FC(v66, 1uLL);
            sub_1D5CBA0FC(v68, 1uLL);
            sub_1D6007850(v66, 1uLL, v67);
            sub_1D6007850(v68, 1uLL, v69);
            sub_1D6007850(v68, 1uLL, v69);
            sub_1D6007850(v66, 1uLL, v67);
            sub_1D6007850(v68, 1uLL, v69);
            v63 = v66;
            v64 = 1;
            goto LABEL_17;
          case 2uLL:
            if (v49 != 2)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 2uLL, *v62);
            sub_1D6007830(v68, 2uLL, v69);
            sub_1D6007830(v66, 2uLL, v67);
            sub_1D6007830(v68, 2uLL, v69);
            sub_1D6007830(v66, 2uLL, v67);
            sub_1D5CBA0FC(v66, 2uLL);
            sub_1D5CBA0FC(v68, 2uLL);
            sub_1D6007850(v66, 2uLL, v67);
            sub_1D6007850(v68, 2uLL, v69);
            sub_1D6007850(v68, 2uLL, v69);
            sub_1D6007850(v66, 2uLL, v67);
            sub_1D6007850(v68, 2uLL, v69);
            v63 = v66;
            v64 = 2;
            goto LABEL_17;
          case 3uLL:
            if (v49 != 3)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 3uLL, *v62);
            sub_1D6007830(v68, 3uLL, v69);
            sub_1D6007830(v66, 3uLL, v67);
            sub_1D6007830(v68, 3uLL, v69);
            sub_1D6007830(v66, 3uLL, v67);
            sub_1D5CBA0FC(v66, 3uLL);
            sub_1D5CBA0FC(v68, 3uLL);
            sub_1D6007850(v66, 3uLL, v67);
            sub_1D6007850(v68, 3uLL, v69);
            sub_1D6007850(v68, 3uLL, v69);
            sub_1D6007850(v66, 3uLL, v67);
            sub_1D6007850(v68, 3uLL, v69);
            v63 = v66;
            v64 = 3;
            goto LABEL_17;
          case 4uLL:
            if (v49 != 4)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 4uLL, *v62);
            sub_1D6007830(v68, 4uLL, v69);
            sub_1D6007830(v66, 4uLL, v67);
            sub_1D6007830(v68, 4uLL, v69);
            sub_1D6007830(v66, 4uLL, v67);
            sub_1D5CBA0FC(v66, 4uLL);
            sub_1D5CBA0FC(v68, 4uLL);
            sub_1D6007850(v66, 4uLL, v67);
            sub_1D6007850(v68, 4uLL, v69);
            sub_1D6007850(v68, 4uLL, v69);
            sub_1D6007850(v66, 4uLL, v67);
            sub_1D6007850(v68, 4uLL, v69);
            v63 = v66;
            v64 = 4;
            goto LABEL_17;
          case 5uLL:
            if (v49 != 5)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 5uLL, *v62);
            sub_1D6007830(v68, 5uLL, v69);
            sub_1D6007830(v66, 5uLL, v67);
            sub_1D6007830(v68, 5uLL, v69);
            sub_1D6007830(v66, 5uLL, v67);
            sub_1D5CBA0FC(v66, 5uLL);
            sub_1D5CBA0FC(v68, 5uLL);
            sub_1D6007850(v66, 5uLL, v67);
            sub_1D6007850(v68, 5uLL, v69);
            sub_1D6007850(v68, 5uLL, v69);
            sub_1D6007850(v66, 5uLL, v67);
            sub_1D6007850(v68, 5uLL, v69);
            v63 = v66;
            v64 = 5;
            goto LABEL_17;
          case 6uLL:
            if (v49 != 6)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 6uLL, *v62);
            sub_1D6007830(v68, 6uLL, v69);
            sub_1D6007830(v66, 6uLL, v67);
            sub_1D6007830(v68, 6uLL, v69);
            sub_1D6007830(v66, 6uLL, v67);
            sub_1D5CBA0FC(v66, 6uLL);
            sub_1D5CBA0FC(v68, 6uLL);
            sub_1D6007850(v66, 6uLL, v67);
            sub_1D6007850(v68, 6uLL, v69);
            sub_1D6007850(v68, 6uLL, v69);
            sub_1D6007850(v66, 6uLL, v67);
            sub_1D6007850(v68, 6uLL, v69);
            v63 = v66;
            v64 = 6;
            goto LABEL_17;
          case 7uLL:
            if (v49 != 7)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 7uLL, *v62);
            sub_1D6007830(v68, 7uLL, v69);
            sub_1D6007830(v66, 7uLL, v67);
            sub_1D6007830(v68, 7uLL, v69);
            sub_1D6007830(v66, 7uLL, v67);
            sub_1D5CBA0FC(v66, 7uLL);
            sub_1D5CBA0FC(v68, 7uLL);
            sub_1D6007850(v66, 7uLL, v67);
            sub_1D6007850(v68, 7uLL, v69);
            sub_1D6007850(v68, 7uLL, v69);
            sub_1D6007850(v66, 7uLL, v67);
            sub_1D6007850(v68, 7uLL, v69);
            v63 = v66;
            v64 = 7;
            goto LABEL_17;
          case 8uLL:
            if (v49 != 8)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 8uLL, *v62);
            sub_1D6007830(v68, 8uLL, v69);
            sub_1D6007830(v66, 8uLL, v67);
            sub_1D6007830(v68, 8uLL, v69);
            sub_1D6007830(v66, 8uLL, v67);
            sub_1D5CBA0FC(v66, 8uLL);
            sub_1D5CBA0FC(v68, 8uLL);
            sub_1D6007850(v66, 8uLL, v67);
            sub_1D6007850(v68, 8uLL, v69);
            sub_1D6007850(v68, 8uLL, v69);
            sub_1D6007850(v66, 8uLL, v67);
            sub_1D6007850(v68, 8uLL, v69);
            v63 = v66;
            v64 = 8;
            goto LABEL_17;
          case 9uLL:
            if (v49 != 9)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 9uLL, *v62);
            sub_1D6007830(v68, 9uLL, v69);
            sub_1D6007830(v66, 9uLL, v67);
            sub_1D6007830(v68, 9uLL, v69);
            sub_1D6007830(v66, 9uLL, v67);
            sub_1D5CBA0FC(v66, 9uLL);
            sub_1D5CBA0FC(v68, 9uLL);
            sub_1D6007850(v66, 9uLL, v67);
            sub_1D6007850(v68, 9uLL, v69);
            sub_1D6007850(v68, 9uLL, v69);
            sub_1D6007850(v66, 9uLL, v67);
            sub_1D6007850(v68, 9uLL, v69);
            v63 = v66;
            v64 = 9;
            goto LABEL_17;
          case 0xAuLL:
            if (v49 != 10)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xAuLL, *v62);
            sub_1D6007830(v68, 0xAuLL, v69);
            sub_1D6007830(v66, 0xAuLL, v67);
            sub_1D6007830(v68, 0xAuLL, v69);
            sub_1D6007830(v66, 0xAuLL, v67);
            sub_1D5CBA0FC(v66, 0xAuLL);
            sub_1D5CBA0FC(v68, 0xAuLL);
            sub_1D6007850(v66, 0xAuLL, v67);
            sub_1D6007850(v68, 0xAuLL, v69);
            sub_1D6007850(v68, 0xAuLL, v69);
            sub_1D6007850(v66, 0xAuLL, v67);
            sub_1D6007850(v68, 0xAuLL, v69);
            v63 = v66;
            v64 = 10;
            goto LABEL_17;
          case 0xBuLL:
            if (v49 != 11)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xBuLL, *v62);
            sub_1D6007830(v68, 0xBuLL, v69);
            sub_1D6007830(v66, 0xBuLL, v67);
            sub_1D6007830(v68, 0xBuLL, v69);
            sub_1D6007830(v66, 0xBuLL, v67);
            sub_1D5CBA0FC(v66, 0xBuLL);
            sub_1D5CBA0FC(v68, 0xBuLL);
            sub_1D6007850(v66, 0xBuLL, v67);
            sub_1D6007850(v68, 0xBuLL, v69);
            sub_1D6007850(v68, 0xBuLL, v69);
            sub_1D6007850(v66, 0xBuLL, v67);
            sub_1D6007850(v68, 0xBuLL, v69);
            v63 = v66;
            v64 = 11;
            goto LABEL_17;
          case 0xCuLL:
            if (v49 != 12)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xCuLL, *v62);
            sub_1D6007830(v68, 0xCuLL, v69);
            sub_1D6007830(v66, 0xCuLL, v67);
            sub_1D6007830(v68, 0xCuLL, v69);
            sub_1D6007830(v66, 0xCuLL, v67);
            sub_1D5CBA0FC(v66, 0xCuLL);
            sub_1D5CBA0FC(v68, 0xCuLL);
            sub_1D6007850(v66, 0xCuLL, v67);
            sub_1D6007850(v68, 0xCuLL, v69);
            sub_1D6007850(v68, 0xCuLL, v69);
            sub_1D6007850(v66, 0xCuLL, v67);
            sub_1D6007850(v68, 0xCuLL, v69);
            v63 = v66;
            v64 = 12;
            goto LABEL_17;
          case 0xDuLL:
            if (v49 != 13)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xDuLL, *v62);
            sub_1D6007830(v68, 0xDuLL, v69);
            sub_1D6007830(v66, 0xDuLL, v67);
            sub_1D6007830(v68, 0xDuLL, v69);
            sub_1D6007830(v66, 0xDuLL, v67);
            sub_1D5CBA0FC(v66, 0xDuLL);
            sub_1D5CBA0FC(v68, 0xDuLL);
            sub_1D6007850(v66, 0xDuLL, v67);
            sub_1D6007850(v68, 0xDuLL, v69);
            sub_1D6007850(v68, 0xDuLL, v69);
            sub_1D6007850(v66, 0xDuLL, v67);
            sub_1D6007850(v68, 0xDuLL, v69);
            v63 = v66;
            v64 = 13;
            goto LABEL_17;
          case 0xEuLL:
            if (v49 != 14)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xEuLL, *v62);
            sub_1D6007830(v68, 0xEuLL, v69);
            sub_1D6007830(v66, 0xEuLL, v67);
            sub_1D6007830(v68, 0xEuLL, v69);
            sub_1D6007830(v66, 0xEuLL, v67);
            sub_1D5CBA0FC(v66, 0xEuLL);
            sub_1D5CBA0FC(v68, 0xEuLL);
            sub_1D6007850(v66, 0xEuLL, v67);
            sub_1D6007850(v68, 0xEuLL, v69);
            sub_1D6007850(v68, 0xEuLL, v69);
            sub_1D6007850(v66, 0xEuLL, v67);
            sub_1D6007850(v68, 0xEuLL, v69);
            v63 = v66;
            v64 = 14;
            goto LABEL_17;
          case 0xFuLL:
            if (v49 != 15)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xFuLL, *v62);
            sub_1D6007830(v68, 0xFuLL, v69);
            sub_1D6007830(v66, 0xFuLL, v67);
            sub_1D6007830(v68, 0xFuLL, v69);
            sub_1D6007830(v66, 0xFuLL, v67);
            sub_1D5CBA0FC(v66, 0xFuLL);
            sub_1D5CBA0FC(v68, 0xFuLL);
            sub_1D6007850(v66, 0xFuLL, v67);
            sub_1D6007850(v68, 0xFuLL, v69);
            sub_1D6007850(v68, 0xFuLL, v69);
            sub_1D6007850(v66, 0xFuLL, v67);
            sub_1D6007850(v68, 0xFuLL, v69);
            v63 = v66;
            v64 = 15;
            goto LABEL_17;
          default:
            if (v49 < 0x10)
            {
              sub_1D6007830(*(v61 - 2), *(v61 - 1), *v61);
LABEL_170:
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D5CBA0FC(v66, v54);
              sub_1D5CBA0FC(v68, v49);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v68, v49, v69);
              sub_1D6007850(v68, v49, v69);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v68, v49, v69);
              sub_1D6007850(v66, v54, v67);
              goto LABEL_11;
            }

            if (v66 == v68 && v54 == v49)
            {
              sub_1D6007830(*(v61 - 2), *(v61 - 1), *v62);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v66, v54, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v66, v54, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v66, v54, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D5CBA0FC(v66, v54);
              sub_1D5CBA0FC(v66, v54);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v66, v54, v69);
              sub_1D6007850(v66, v54, v69);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v66, v54, v69);
              v63 = v66;
              v64 = v54;
LABEL_17:
              v65 = v67;
              goto LABEL_18;
            }

            v71 = sub_1D72646CC();
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D5CBA0FC(v66, v54);
            sub_1D5CBA0FC(v68, v49);
            sub_1D6007850(v66, v54, v67);
            sub_1D6007850(v68, v49, v69);
            sub_1D6007850(v68, v49, v69);
            sub_1D6007850(v66, v54, v67);
            sub_1D6007850(v68, v49, v69);
            sub_1D6007850(v66, v54, v67);
            if ((v71 & 1) == 0)
            {
              goto LABEL_11;
            }

            break;
        }
      }

      else
      {
        if (v54 | v66 || v67 != 128)
        {
          if (v66 == 1 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 1 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 1;
              goto LABEL_173;
            }

            sub_1D6007850(1, 0, 0x80u);
            v63 = 1;
          }

          else if (v66 == 2 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 2 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 2;
              goto LABEL_173;
            }

            sub_1D6007850(2, 0, 0x80u);
            v63 = 2;
          }

          else if (v66 == 3 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 3 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 3;
              goto LABEL_173;
            }

            sub_1D6007850(3, 0, 0x80u);
            v63 = 3;
          }

          else if (v66 == 4 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 4 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 4;
              goto LABEL_173;
            }

            sub_1D6007850(4, 0, 0x80u);
            v63 = 4;
          }

          else if (v66 == 5 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 5 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 5;
LABEL_173:
              v83 = 0;
              v84 = 0x80;
LABEL_174:
              sub_1D6007850(v82, v83, v84);
              sub_1D6007850(v68, v49, v69);
LABEL_11:
              v55 = v133;
              sub_1D5BF1AEC(v133, type metadata accessor for FormatDerivedDataResultOptionReference);
              v54 = (v134 + 1) & v129;
              if (((*(v131 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_12;
            }

            sub_1D6007850(5, 0, 0x80u);
            v63 = 5;
          }

          else
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 6 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 6;
              goto LABEL_173;
            }

            sub_1D6007850(6, 0, 0x80u);
            v63 = 6;
          }
        }

        else
        {
          if ((v69 & 0xC0) != 0x80 || v49 | v68 || v69 != 128)
          {
            sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
            v82 = 0;
            goto LABEL_173;
          }

          sub_1D6007850(0, 0, 0x80u);
          v63 = 0;
        }

        v64 = 0;
        v65 = 0x80;
LABEL_18:
        sub_1D6007850(v63, v64, v65);
      }
    }

    else
    {
      if (v69 >= 0x40)
      {
LABEL_143:
        sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
        sub_1D6007830(v66, v54, v67);
        v82 = v66;
        v83 = v54;
        v84 = v67;
        goto LABEL_174;
      }

      if (v66 == v68 && v54 == v49)
      {
        sub_1D6007830(*(v61 - 2), *(v61 - 1), *v62);
        sub_1D6007830(v66, v54, v67);
        sub_1D6007850(v66, v54, v67);
        sub_1D6007850(v66, v54, v69);
      }

      else
      {
        v70 = sub_1D72646CC();
        sub_1D6007830(v68, v49, v69);
        sub_1D6007830(v66, v54, v67);
        sub_1D6007850(v66, v54, v67);
        sub_1D6007850(v68, v49, v69);
        if ((v70 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((v67 ^ v69))
      {
        goto LABEL_11;
      }
    }

    ++v60;
    v62 += 24;
    v61 += 24;
    if (v136 == v60)
    {
      goto LABEL_122;
    }
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  sub_1D5BF1AEC(v62, sub_1D60077D8);
LABEL_179:
  sub_1D5BF1AEC(v49, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5BF1AEC(v54, type metadata accessor for FormatDerivedDataResultOptionReference);
  sub_1D5BF1AEC(v124, type metadata accessor for FormatDerivedDataResultOptionReference);
  sub_1D5BE7354(*(v132 + 48) + v128, v121, type metadata accessor for FormatDerivedDataResultOptionReference);
  return 0;
}

uint64_t sub_1D5FEE050(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *v4;
  sub_1D7264A0C();
  v27 = v4;
  v28 = a1;
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      v10 = 4;
    }

    else
    {
      if (a4 != 4)
      {
        MEMORY[0x1DA6FC0B0](0);
        goto LABEL_12;
      }

      v10 = 5;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }
  }

  else
  {
    v10 = 1;
  }

  MEMORY[0x1DA6FC0B0](v10);
  sub_1D72621EC();
LABEL_12:
  v11 = sub_1D7264A5C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v27;
    sub_1D6007700(a2, a3, a4);
    sub_1D5FFC77C(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v27 = v30;
    *v28 = a2;
    *(v28 + 8) = a3;
    *(v28 + 16) = a4;
    return 1;
  }

  v14 = ~v12;
  v15 = *(v9 + 48);
  v17 = a4 == 5 && (a3 | a2) == 0;
  v29 = v17;
  while (1)
  {
    v18 = v15 + 24 * v13;
    v19 = *(v18 + 16);
    if (v19 <= 2)
    {
      break;
    }

    if (v19 == 3)
    {
      if (a4 == 3)
      {
        goto LABEL_36;
      }
    }

    else if (v19 == 4)
    {
      if (a4 == 4)
      {
        goto LABEL_36;
      }
    }

    else if (v29)
    {
      goto LABEL_42;
    }

LABEL_21:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if (!*(v18 + 16))
  {
    if (!a4)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (a4 == 1)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (a4 != 2)
  {
    goto LABEL_21;
  }

LABEL_36:
  v20 = *v18 == a2 && *(v18 + 8) == a3;
  if (!v20 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1D6007718(a2, a3, v19);
LABEL_42:
  v21 = *(v9 + 48) + 24 * v13;
  v22 = *v21;
  v23 = *(v21 + 8);
  *v28 = *v21;
  *(v28 + 8) = v23;
  v24 = *(v21 + 16);
  *(v28 + 16) = v24;
  sub_1D6007700(v22, v23, v24);
  return 0;
}

uint64_t sub_1D5FEE2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v89, v9);
  v84 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v74 - v13);
  v79 = type metadata accessor for WebEmbedDatastoreCacheKey();
  v15 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v74 = &v74 - v21;
  v96 = sub_1D72585BC();
  v22 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v23);
  v94 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v74 - v30;
  v75 = v3;
  v87 = *v3;
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v90 = a2;
  v32 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v32 + 16));
  v33 = v32;
  v34 = *(v32 + 16);
  v85 = v14;
  v88 = v18;
  v77 = v22;
  v76 = a1;
  if (v34)
  {
    v92 = v33;
    v93 = v15;
    v35 = *(v22 + 16);
    v36 = v33 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v37 = *(v22 + 72);
    v38 = v96;
    do
    {
      v35(v31, v36, v38);
      sub_1D5D51EB4(&qword_1EDF3C3E0, 255, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v22 + 8))(v31, v38);
      v36 += v37;
      --v34;
    }

    while (v34);

    v14 = v85;
    v18 = v88;
    v22 = v77;
    v15 = v93;
  }

  else
  {
  }

  v39 = sub_1D7264A5C();
  v40 = -1 << *(v87 + 32);
  v41 = v39 & ~v40;
  v80 = v87 + 56;
  if ((*(v87 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
  {
    v78 = ~v40;
    v82 = v15[9];
    v92 = v22 + 16;
    v93 = (v22 + 8);
    v42 = v94;
    do
    {
      v43 = *(v87 + 48);
      v81 = v82 * v41;
      sub_1D5BE7354(v43 + v82 * v41, v18, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D5BE7354(v18, v14, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v83;
        sub_1D5BE7424(v14, v83, type metadata accessor for GenericDataVisualization);
        v98 = 0x3A636972656E6567;
        v99 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v44, v44[1]);
        v46 = v98;
        v45 = v99;
        sub_1D5BF1AEC(v44, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v97 = *v14;
        v98 = 0x3A3A7374726F7073;
        v99 = 0xE800000000000000;
        v47 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v47);

        v46 = v98;
        v45 = v99;
      }

      v48 = v84;
      sub_1D5BE7354(v90, v84, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v86 = v41;
      if (EnumCaseMultiPayload == 1)
      {
        v50 = v48;
        v51 = v83;
        sub_1D5BE7424(v50, v83, type metadata accessor for GenericDataVisualization);
        v98 = 0x3A636972656E6567;
        v99 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v51, v51[1]);
        v53 = v98;
        v52 = v99;
        sub_1D5BF1AEC(v51, type metadata accessor for GenericDataVisualization);
        if (v46 != v53)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v97 = *v48;
        v98 = 0x3A3A7374726F7073;
        v99 = 0xE800000000000000;
        v54 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v54);

        v52 = v99;
        if (v46 != v98)
        {
          goto LABEL_18;
        }
      }

      if (v45 != v52)
      {
LABEL_18:
        v55 = sub_1D72646CC();

        if ((v55 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      }

LABEL_19:
      v56 = *(v79 + 20);
      v57 = *&v88[v56];
      v58 = *(v90 + v56);
      v59 = *(v57 + 16);
      if (v59 == *(v58 + 16))
      {
        if (!v59 || v57 == v58)
        {
LABEL_25:
          sub_1D5BF1AEC(v88, type metadata accessor for WebEmbedDatastoreCacheKey);
          sub_1D5BF1AEC(v90, type metadata accessor for WebEmbedDatastoreCacheKey);
          sub_1D5BE7354(*(v87 + 48) + v81, v76, type metadata accessor for WebEmbedDatastoreCacheKey);
          return 0;
        }

        v60 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v61 = v57 + v60;
        v62 = v58 + v60;
        v91 = *(v77 + 72);
        v63 = *(v77 + 16);
        while (1)
        {
          v64 = v95;
          v63(v95, v61, v96);
          v65 = v96;
          v63(v42, v62, v96);
          sub_1D5D51EB4(&unk_1EDF45B60, 255, MEMORY[0x1E6968FB0]);
          v66 = v64;
          v67 = sub_1D7261FBC();
          v68 = *v93;
          (*v93)(v42, v65);
          v68(v66, v65);
          if ((v67 & 1) == 0)
          {
            break;
          }

          v62 += v91;
          v61 += v91;
          if (!--v59)
          {
            goto LABEL_25;
          }
        }
      }

LABEL_8:
      v18 = v88;
      sub_1D5BF1AEC(v88, type metadata accessor for WebEmbedDatastoreCacheKey);
      v41 = (v86 + 1) & v78;
      v14 = v85;
    }

    while (((*(v80 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
  }

  v70 = v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v90;
  v73 = v74;
  sub_1D5BE7354(v90, v74, type metadata accessor for WebEmbedDatastoreCacheKey);
  v98 = *v70;
  sub_1D5FFCA38(v73, v41, isUniquelyReferenced_nonNull_native);
  *v70 = v98;
  sub_1D5BE7424(v72, v76, type metadata accessor for WebEmbedDatastoreCacheKey);
  return 1;
}

uint64_t sub_1D5FEEC24(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v27 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    v28 = v4;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v10 = v8 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v11 = *(*(v4 + 48) + v7) ? 0x64657375636F66 : 0x64656C6261736964;
      v12 = *(*(v4 + 48) + v7) ? 0xE700000000000000 : 0xE800000000000000;
      v13 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = a2 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v16 = a2 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v17 = a2 ? 0x64657375636F66 : 0x64656C6261736964;
      v18 = a2 ? 0xE700000000000000 : 0xE800000000000000;
      v19 = a2 <= 1u ? v17 : v15;
      v20 = a2 <= 1u ? v18 : v16;
      if (v13 == v19 && v14 == v20)
      {
        break;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v26;
      v4 = v28;
      if (((*(v27 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v28 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v24;
    sub_1D5FFD410(a2, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FEEEB0(_BYTE *a1, __int16 a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D6E23ADC(a2);
  sub_1D72621EC();

  if ((a2 & 0x100) != 0)
  {
    v5 = 0x70616373646E616CLL;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if ((a2 & 0x100) != 0)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  sub_1D72621EC();

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_124:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v32;
    sub_1D5FFD714(a2 & 0x1FF, v9, isUniquelyReferenced_nonNull_native);
    *v32 = v35;
    *a1 = a2;
    a1[1] = HIBYTE(a2) & 1;
    return 1;
  }

  v34 = ~v8;
  v10 = 0x7258656E6F685069;
  while (2)
  {
    v11 = (*(v4 + 48) + 2 * v9);
    v12 = v11[1];
    v13 = 0xE800000000000000;
    v14 = v10;
    switch(*v11)
    {
      case 1:
        goto LABEL_12;
      case 2:
        v13 = 0xEB0000000078614DLL;
LABEL_12:
        v14 = 0x7358656E6F685069;
        break;
      case 3:
        v14 = 0x4553656E6F685069;
        break;
      case 4:
        v14 = 0x3131656E6F685069;
        break;
      case 5:
        v14 = 0x3131656E6F685069;
        goto LABEL_34;
      case 6:
        v14 = 0x3131656E6F685069;
        goto LABEL_50;
      case 7:
        v14 = 0x3231656E6F685069;
        break;
      case 8:
        v14 = 0x3231656E6F685069;
        goto LABEL_39;
      case 9:
        v14 = 0x3231656E6F685069;
        goto LABEL_34;
      case 0xA:
        v14 = 0x3231656E6F685069;
        goto LABEL_50;
      case 0xB:
        v14 = 0x3331656E6F685069;
        break;
      case 0xC:
        v14 = 0x3331656E6F685069;
LABEL_39:
        v13 = 0xEC000000696E694DLL;
        break;
      case 0xD:
        v14 = 0x3331656E6F685069;
        goto LABEL_34;
      case 0xE:
        v14 = 0x3331656E6F685069;
        goto LABEL_50;
      case 0xF:
        v14 = 0x3431656E6F685069;
        break;
      case 0x10:
        v14 = 0x3431656E6F685069;
        goto LABEL_30;
      case 0x11:
        v14 = 0x3431656E6F685069;
        goto LABEL_34;
      case 0x12:
        v14 = 0x3431656E6F685069;
        goto LABEL_50;
      case 0x13:
        v14 = 0x3531656E6F685069;
        break;
      case 0x14:
        v14 = 0x3531656E6F685069;
        goto LABEL_30;
      case 0x15:
        v14 = 0x3531656E6F685069;
        goto LABEL_34;
      case 0x16:
        v14 = 0x3531656E6F685069;
        goto LABEL_50;
      case 0x17:
        v14 = 0x3631656E6F685069;
        break;
      case 0x18:
        v14 = 0x3631656E6F685069;
LABEL_30:
        v13 = 0xEC00000073756C50;
        break;
      case 0x19:
        v14 = 0x3631656E6F685069;
LABEL_34:
        v13 = 0xEB000000006F7250;
        break;
      case 0x1A:
        v14 = 0x3631656E6F685069;
LABEL_50:
        v13 = 0xEE0078614D6F7250;
        break;
      case 0x1B:
        v13 = 0xE400000000000000;
        v14 = 1684099177;
        break;
      case 0x1C:
        v13 = 0xE700000000000000;
        v14 = 0x72694164615069;
        break;
      case 0x1D:
        v14 = 0x696E694D64615069;
        break;
      case 0x1E:
        v15 = 895430705;
        goto LABEL_42;
      case 0x1F:
        v13 = 0xEA00000000003131;
        goto LABEL_43;
      case 0x20:
        v15 = 962540081;
LABEL_42:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_43:
        v14 = 0x5F6F725064615069;
        break;
      case 0x21:
        v13 = 0xE300000000000000;
        v14 = 6513005;
        break;
      case 0x22:
        v14 = 0x6465727265666E69;
        break;
      default:
        break;
    }

    v16 = 0xE800000000000000;
    v17 = v10;
    switch(a2)
    {
      case 1:
        goto LABEL_53;
      case 2:
        v16 = 0xEB0000000078614DLL;
LABEL_53:
        if (v14 != 0x7358656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 3:
        if (v14 != 0x4553656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 4:
        if (v14 != 0x3131656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 5:
        v20 = 0x3131656E6F685069;
        goto LABEL_84;
      case 6:
        v19 = 0x3131656E6F685069;
        goto LABEL_110;
      case 7:
        if (v14 != 0x3231656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 8:
        v18 = 0x3231656E6F685069;
        goto LABEL_90;
      case 9:
        v20 = 0x3231656E6F685069;
        goto LABEL_84;
      case 10:
        v19 = 0x3231656E6F685069;
        goto LABEL_110;
      case 11:
        if (v14 != 0x3331656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 12:
        v18 = 0x3331656E6F685069;
LABEL_90:
        v21 = 1768843597;
        goto LABEL_91;
      case 13:
        v20 = 0x3331656E6F685069;
        goto LABEL_84;
      case 14:
        v19 = 0x3331656E6F685069;
        goto LABEL_110;
      case 15:
        if (v14 != 0x3431656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 16:
        v18 = 0x3431656E6F685069;
        goto LABEL_80;
      case 17:
        v20 = 0x3431656E6F685069;
        goto LABEL_84;
      case 18:
        v19 = 0x3431656E6F685069;
        goto LABEL_110;
      case 19:
        if (v14 != 0x3531656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 20:
        v18 = 0x3531656E6F685069;
        goto LABEL_80;
      case 21:
        v20 = 0x3531656E6F685069;
        goto LABEL_84;
      case 22:
        v19 = 0x3531656E6F685069;
        goto LABEL_110;
      case 23:
        if (v14 != 0x3631656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 24:
        v18 = 0x3631656E6F685069;
LABEL_80:
        v21 = 1937075280;
LABEL_91:
        v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v14 != v18)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 25:
        v20 = 0x3631656E6F685069;
LABEL_84:
        v16 = 0xEB000000006F7250;
        if (v14 != v20)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 26:
        v19 = 0x3631656E6F685069;
LABEL_110:
        v16 = 0xEE0078614D6F7250;
        if (v14 != v19)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 27:
        v16 = 0xE400000000000000;
        if (v14 != 1684099177)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 28:
        v16 = 0xE700000000000000;
        if (v14 != 0x72694164615069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 29:
        v10 = 0x696E694D64615069;
        goto LABEL_106;
      case 30:
        v22 = 895430705;
        goto LABEL_95;
      case 31:
        v16 = 0xEA00000000003131;
        goto LABEL_96;
      case 32:
        v22 = 962540081;
LABEL_95:
        v16 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_96:
        if (v14 != 0x5F6F725064615069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 33:
        v16 = 0xE300000000000000;
        if (v14 != 6513005)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 34:
        if (v14 != 0x6465727265666E69)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      default:
LABEL_106:
        if (v14 != v10)
        {
          goto LABEL_111;
        }

LABEL_107:
        if (v13 == v16)
        {
        }

        else
        {
LABEL_111:
          v23 = sub_1D72646CC();

          if ((v23 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        if (v12)
        {
          v24 = 0x70616373646E616CLL;
        }

        else
        {
          v24 = 0x7469617274726F70;
        }

        if (v12)
        {
          v25 = 0xE900000000000065;
        }

        else
        {
          v25 = 0xE800000000000000;
        }

        if (v24 != v5 || v25 != v6)
        {
          v27 = sub_1D72646CC();

          if (v27)
          {
            goto LABEL_126;
          }

LABEL_9:
          v9 = (v9 + 1) & v34;
          v10 = v17;
          if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_124;
          }

          continue;
        }

LABEL_126:
        result = 0;
        v30 = (*(v4 + 48) + 2 * v9);
        v31 = *v30;
        LOBYTE(v30) = v30[1];
        *a1 = v31;
        a1[1] = v30;
        return result;
    }
  }
}

uint64_t sub_1D5FEF7A4(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a2;
  v6 = *v2;
  sub_1D7264A0C();
  if (v5 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_67:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_1D5FFE0A4(v4, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    result = 1;
    goto LABEL_70;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v6 + 48) + v9);
    if (v11 == 12)
    {
      if (v4 == 12)
      {
        goto LABEL_69;
      }

      goto LABEL_7;
    }

    if (v4 == 12)
    {
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + v9) > 5u)
    {
      if (*(*(v6 + 48) + v9) > 8u)
      {
        if (v11 == 9)
        {
          v13 = 0xE500000000000000;
          v12 = 0x6F65646976;
        }

        else if (v11 == 10)
        {
          v13 = 0xE400000000000000;
          v12 = 1953394534;
        }

        else
        {
          v12 = 0x616C506F65646976;
          v13 = 0xEB00000000726579;
        }
      }

      else if (v11 == 6)
      {
        v13 = 0xE300000000000000;
        v12 = 7107189;
      }

      else
      {
        v13 = 0xE500000000000000;
        v12 = v11 == 7 ? 0x726F6C6F63 : 0x6567616D69;
      }
    }

    else if (*(*(v6 + 48) + v9) > 2u)
    {
      if (v11 == 3)
      {
        v13 = 0xE500000000000000;
        v12 = 0x74616F6C66;
      }

      else if (v11 == 4)
      {
        v13 = 0xE700000000000000;
        v12 = 0x72656765746E69;
      }

      else
      {
        v13 = 0xE600000000000000;
        v12 = 0x676E69727473;
      }
    }

    else if (*(*(v6 + 48) + v9))
    {
      v12 = v11 == 1 ? 1702125924 : 1836412517;
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
      v12 = 0x6E61656C6F6F62;
    }

    if (v4 > 5u)
    {
      v14 = 1953394534;
      if (v4 != 10)
      {
        v14 = 0x616C506F65646976;
      }

      v15 = 0xE400000000000000;
      if (v4 != 10)
      {
        v15 = 0xEB00000000726579;
      }

      if (v4 == 9)
      {
        v14 = 0x6F65646976;
        v15 = 0xE500000000000000;
      }

      v16 = 0x726F6C6F63;
      if (v4 != 7)
      {
        v16 = 0x6567616D69;
      }

      v17 = 0xE500000000000000;
      if (v4 == 6)
      {
        v16 = 7107189;
        v17 = 0xE300000000000000;
      }

      v18 = v4 <= 8u;
    }

    else
    {
      v14 = 0x72656765746E69;
      if (v4 != 4)
      {
        v14 = 0x676E69727473;
      }

      v15 = 0xE600000000000000;
      if (v4 == 4)
      {
        v15 = 0xE700000000000000;
      }

      if (v4 == 3)
      {
        v14 = 0x74616F6C66;
        v15 = 0xE500000000000000;
      }

      v16 = 1702125924;
      if (v4 != 1)
      {
        v16 = 1836412517;
      }

      v17 = 0xE400000000000000;
      if (!v4)
      {
        v16 = 0x6E61656C6F6F62;
        v17 = 0xE700000000000000;
      }

      v18 = v4 <= 2u;
    }

    v19 = v18 ? v16 : v14;
    v20 = v18 ? v17 : v15;
    if (v12 == v19 && v13 == v20)
    {
      break;
    }

    v21 = sub_1D72646CC();

    if (v21)
    {
      goto LABEL_69;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_67;
    }
  }

LABEL_69:
  result = 0;
  LOBYTE(v4) = *(*(v6 + 48) + v9);
LABEL_70:
  *a1 = v4;
  return result;
}

uint64_t sub_1D5FEFBD0(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D6953BC0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x726564616568;
          }

          else
          {
            v10 = 0x7265746F6F66;
          }

          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE600000000000000;
          v10 = 0x74756F79616CLL;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v11 = 0xE700000000000000;
          v10 = 0x7972617262696CLL;
        }

        else
        {
          v10 = 0x756F72676B636162;
          v11 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x6C6C6177796170;
        }

        else
        {
          v10 = 0x656D656874;
        }

        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }
      }

      v12 = 0x756F72676B636162;
      if (a2 == 5)
      {
        v12 = 0x7972617262696CLL;
      }

      v13 = 0xEA0000000000646ELL;
      if (a2 == 5)
      {
        v13 = 0xE700000000000000;
      }

      v14 = 0x6C6C6177796170;
      if (a2 != 3)
      {
        v14 = 0x656D656874;
      }

      v15 = 0xE500000000000000;
      if (a2 == 3)
      {
        v15 = 0xE700000000000000;
      }

      if (a2 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x7265746F6F66;
      if (a2 == 1)
      {
        v16 = 0x726564616568;
      }

      if (!a2)
      {
        v16 = 0x74756F79616CLL;
      }

      v17 = a2 <= 2u ? v16 : v12;
      v18 = a2 <= 2u ? 0xE600000000000000 : v13;
      if (v10 == v17 && v11 == v18)
      {
        break;
      }

      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_46;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_44:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    sub_1D5FFE51C(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FEFE84(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  sub_1D7264A0C();
  sub_1D6BE3D70(v25, a2, a3, a4);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      switch(v15)
      {
        case 1u:
          if (a4 != 1)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        case 2u:
          if (a4 == 2)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 3u:
          if (a4 == 3)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 4u:
          if (a4 == 4)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 5u:
          if (a4 == 5)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 6u:
          if (a4 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 7u:
          if (a4 == 7)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 8u:
          if (a4 == 8)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 9u:
          if (a4 == 9)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xAu:
          if (a4 == 10)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xBu:
          if (a4 == 11)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xCu:
          if (a4 == 12)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        default:
          if (a4)
          {
            goto LABEL_4;
          }

LABEL_29:
          v16 = *v14 == a2 && *(v14 + 8) == a3;
          if (v16 || (sub_1D72646CC() & 1) != 0)
          {
            sub_1D6007694(a2, a3, v15);
            v17 = *(v8 + 48) + 24 * v11;
            v18 = *v17;
            v19 = *(v17 + 8);
            *a1 = *v17;
            *(a1 + 8) = v19;
            v20 = *(v17 + 16);
            *(a1 + 16) = v20;
            sub_1D600767C(v18, v19, v20);
            return 0;
          }

LABEL_4:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_35;
          }

          break;
      }
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = *v23;
  sub_1D600767C(a2, a3, a4);
  sub_1D5FFE83C(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
  *v23 = v25[0];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 1;
}

uint64_t sub_1D5FF0128(_BYTE *a1, char a2, unint64_t *a3, void (*a4)(void))
{
  v5 = v4;
  v7 = *v4;
  sub_1D7264A0C();
  if (a2)
  {
    v8 = 0x646165687473616DLL;
  }

  else
  {
    v8 = 0x6465727574616566;
  }

  sub_1D72621EC();

  v9 = sub_1D7264A5C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v7 + 48) + v11) ? 0x646165687473616DLL : 0x6465727574616566;
      if (v13 == v8)
      {
        break;
      }

      v14 = sub_1D72646CC();
      swift_bridgeObjectRelease_n();
      if (v14)
      {
        goto LABEL_14;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_14:
    result = 0;
    LOBYTE(v16) = *(*(v7 + 48) + v11);
  }

  else
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    v16 = a2 & 1;
    sub_1D5FFEB44(v16, v11, isUniquelyReferenced_nonNull_native, a3, a4);
    *v5 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1D5FF02C0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a2);
  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D5FFED40(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FF03B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D726098C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188]);
  v34 = a2;
  v12 = sub_1D7261E7C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D5D51EB4(&qword_1EC87FB18, 255, MEMORY[0x1E69B4188]);
      v22 = sub_1D7261FBC();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D5FFEE9C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D5FF06A0(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v11 = 0xE600000000000000;
          v10 = 0x73656D656874;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x6C6C6177796170;
          }

          else
          {
            v10 = 0x756F72676B636162;
          }

          if (v9 == 4)
          {
            v11 = 0xE700000000000000;
          }

          else
          {
            v11 = 0xEB0000000073646ELL;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x73726564616568;
        }

        else
        {
          v10 = 0x737265746F6F66;
        }

        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
        v10 = 0x7374756F79616CLL;
      }

      v12 = 0x756F72676B636162;
      if (a2 == 4)
      {
        v12 = 0x6C6C6177796170;
      }

      v13 = 0xEB0000000073646ELL;
      if (a2 == 4)
      {
        v13 = 0xE700000000000000;
      }

      if (a2 == 3)
      {
        v12 = 0x73656D656874;
        v13 = 0xE600000000000000;
      }

      v14 = 0x737265746F6F66;
      if (a2 == 1)
      {
        v14 = 0x73726564616568;
      }

      if (!a2)
      {
        v14 = 0x7374756F79616CLL;
      }

      v15 = a2 <= 2u ? v14 : v12;
      v16 = a2 <= 2u ? 0xE700000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_40;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_1D5FFF170(a2, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FF0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](a4);
  MEMORY[0x1DA6FC0B0](a5);
  v11 = sub_1D7264A5C();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v26 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v19 = v17[2];
      v18 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_1D72646CC()) && v19 == a4 && v18 == a5)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v24 = *(v26 + 48) + 32 * v14;
    v25 = *(v24 + 8);
    *a1 = *v24;
    *(a1 + 8) = v25;
    *(a1 + 16) = *(v24 + 16);

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v27;

    sub_1D5FFF534(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v27 = v29;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }
}

uint64_t sub_1D5FF0BA8(void *a1, void *a2, void *a3)
{
  v5 = *v3;
  sub_1D7264A0C();
  v6 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v6);
  v7 = sub_1D7264A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D5B5A498(0, &qword_1EDF1A650);
    while (1)
    {
      v11 = *(v5 + 48) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = v12;
      v15 = sub_1D726370C();

      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v5 + 48) + 16 * v9;
    v22 = *v20;
    v21 = *(v20 + 8);
    *a1 = v22;
    a1[1] = v21;
    v23 = v21;
    v24 = v22;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    v17 = a3;
    v18 = a2;
    sub_1D5FFF6F0(v18, a3, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    *a1 = v18;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D5FF0D30(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D7263C0C();

    if (v9)
    {

      sub_1D5B5A498(0, &qword_1EDF1A710);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D7263BFC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D6E14CA0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D5FF61B0(v20 + 1, &qword_1EC87FB00, &qword_1EDF1A710, 0x1E69DD250, &qword_1EC87FB08);
    }

    v18 = v8;
    sub_1D5FF7310(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D5B5A498(0, &qword_1EDF1A710);
  v11 = sub_1D72636FC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D5FFF8A0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EC87FB00, &qword_1EDF1A710, 0x1E69DD250, &qword_1EC87FB08);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D726370C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D5FF0FA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28]);
  v34 = a2;
  v12 = sub_1D7261E7C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D5D51EB4(&qword_1EDF3C378, 255, MEMORY[0x1E6969C28]);
      v22 = sub_1D7261FBC();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D5FFFA48(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D5FF1290(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  sub_1D7264A0C();
  if (a3)
  {
    v8 = qword_1D728D788[a2];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v8 = a2;
  }

  MEMORY[0x1DA6FC0B0](v8);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v15 == 1)
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            if ((a3 & (a2 == 2)) != 0)
            {
              result = 0;
              a2 = 2;
              goto LABEL_22;
            }
          }

          else if ((a3 & (a2 > 2)) != 0)
          {
            result = 0;
            a2 = 3;
            goto LABEL_22;
          }
        }

        else if (v14)
        {
          if ((a3 & (a2 == 1)) != 0)
          {
            result = 0;
            a2 = 1;
            goto LABEL_22;
          }
        }

        else if ((a3 & (a2 == 0)) != 0)
        {
          a2 = 0;
          result = 0;
          goto LABEL_22;
        }
      }

      else if ((a3 & 1) == 0 && v14 == a2)
      {
        result = 0;
        goto LABEL_22;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_1D5FFFD1C(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  result = 1;
  LOBYTE(v15) = a3;
LABEL_22:
  *a1 = a2;
  *(a1 + 8) = v15 & 1;
  return result;
}

uint64_t sub_1D5FF1468()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5C0, sub_1D5CD8948);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF1754()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B87494(0, &qword_1EDF1A588);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D72649FC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D5FF1984()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF04308, sub_1D6007CDC);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1D5FF69BC(*(*(v2 + 48) + 8 * (v11 | (v5 << 6))), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      ;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v2 + 32);
    if (v14 >= 64)
    {
      bzero((v2 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF1B00()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B87494(0, &qword_1EDF042D0);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x1DA6FC080](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF1D34()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5A8, sub_1D60071DC);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF21B4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC8822A0, sub_1D5B56F50);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF2490()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5B8, sub_1D5E2A690);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF283C()
{
  v1 = *v0;
  sub_1D6007D30(0, &qword_1EC882208, sub_1D60073B4);
  result = sub_1D7263CBC();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      result = sub_1D7264A5C();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v3 + 16);
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = v5[v12];
      ++v4;
      if (v8)
      {
        v4 = v12;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      bzero((v1 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1D5FF2A6C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5A0, sub_1D5E2A540);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF2D98()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC8822A8, sub_1D6007B2C);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF3060()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF04318, sub_1D6007408);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1D7264A0C();
      switch(v18)
      {
        case 0:
          v20 = 0;
          goto LABEL_35;
        case 1:
          v20 = 1;
          goto LABEL_35;
        case 2:
          v20 = 2;
          goto LABEL_35;
        case 3:
          v20 = 3;
          goto LABEL_35;
        case 4:
          v20 = 4;
          goto LABEL_35;
        case 5:
          v20 = 5;
          goto LABEL_35;
        case 6:
          v20 = 6;
          goto LABEL_35;
        case 7:
          v20 = 7;
          goto LABEL_35;
        case 8:
          v20 = 9;
          goto LABEL_35;
        case 9:
          v20 = 10;
          goto LABEL_35;
        case 10:
          v20 = 11;
          goto LABEL_35;
        case 11:
          v20 = 12;
          goto LABEL_35;
        case 12:
          v20 = 13;
          goto LABEL_35;
        case 13:
          v20 = 14;
          goto LABEL_35;
        case 14:
          v20 = 15;
          goto LABEL_35;
        case 15:
          v20 = 16;
          goto LABEL_35;
        case 16:
          v20 = 17;
          goto LABEL_35;
        case 17:
          v20 = 18;
LABEL_35:
          MEMORY[0x1DA6FC0B0](v20);
          break;
        default:
          MEMORY[0x1DA6FC0B0](8);
          sub_1D72621EC();
          break;
      }

      result = sub_1D7264A5C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_51:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF33EC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  sub_1D6007D30(0, a2, a3);
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v19);
      result = sub_1D7264A5C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D5FF3630()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882218, sub_1D5E4E308);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF38CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC8821F0, sub_1D6007360);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF3B98()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5C8, sub_1D5B4B090);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1D7264A0C();
      switch(v18)
      {
        case 0:
          v20 = 0;
          goto LABEL_32;
        case 1:
          v20 = 1;
          goto LABEL_32;
        case 2:
          v20 = 2;
          goto LABEL_32;
        case 3:
          v20 = 3;
          goto LABEL_32;
        case 4:
          v20 = 4;
          goto LABEL_32;
        case 5:
          v20 = 5;
          goto LABEL_32;
        case 6:
          v20 = 6;
          goto LABEL_32;
        case 7:
          v20 = 7;
          goto LABEL_32;
        case 8:
          v20 = 8;
          goto LABEL_32;
        case 9:
          v20 = 9;
          goto LABEL_32;
        case 10:
          v20 = 10;
          goto LABEL_32;
        case 11:
          v20 = 11;
          goto LABEL_32;
        case 12:
          v20 = 12;
          goto LABEL_32;
        case 13:
          v20 = 13;
          goto LABEL_32;
        case 14:
          v20 = 14;
          goto LABEL_32;
        case 15:
          v20 = 15;
LABEL_32:
          MEMORY[0x1DA6FC0B0](v20);
          break;
        default:
          MEMORY[0x1DA6FC0B0](16);
          sub_1D72621EC();
          break;
      }

      result = sub_1D7264A5C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF3F34()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882250, sub_1D6007730);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v29 = 1 << *(v2 + 32);
        if (v29 >= 64)
        {
          bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v29;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        goto LABEL_40;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_1D7264A0C();
      if (v20 <= 2)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 1;
        }

        goto LABEL_25;
      }

      if (v20 == 3)
      {
        break;
      }

      if (v20 == 4)
      {
        v21 = 5;
LABEL_25:
        MEMORY[0x1DA6FC0B0](v21);
        sub_1D72621EC();
        goto LABEL_26;
      }

      MEMORY[0x1DA6FC0B0](0);
LABEL_26:
      result = sub_1D7264A5C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v30;
    }

    v21 = 4;
    goto LABEL_25;
  }

LABEL_40:

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF421C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF042F8, sub_1D5C95CB4);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF4500()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882230, sub_1D6007548);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 2 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D7264A0C();
      sub_1D6E23ADC(v18);
      sub_1D72621EC();

      sub_1D72621EC();

      result = sub_1D7264A5C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 2 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF47E4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A598, sub_1D5E2A458);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      if (v16 == 12)
      {
        MEMORY[0x1DA6FC0B0](0);
      }

      else
      {
        MEMORY[0x1DA6FC0B0](1);
        sub_1D72621EC();
      }

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF4BB0()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882288, sub_1D60079B8);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF4EDC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  sub_1D6007D30(0, a2, a3);
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = *(v5 + 48) + 24 * (v17 | (v8 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v23);
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
      v5 = v32;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v5 + 32);
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D5FF5150(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  sub_1D6007D30(0, a2, a3);
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D5FF53C4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D600745C();
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v16);
      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF5608()
{
  v1 = v0;
  v36 = sub_1D726098C();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D5E2A4AC();
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188]);
      result = sub_1D7261E7C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D5FF595C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882240, sub_1D600759C);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF5C70()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882280, sub_1D6007964);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_1D7264A0C();
      sub_1D72621EC();
      MEMORY[0x1DA6FC0B0](v20);
      MEMORY[0x1DA6FC0B0](v21);
      result = sub_1D7264A5C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF5F14()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF04310, sub_1D6007C88);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D7264A0C();
      v20 = sub_1D726372C();
      MEMORY[0x1DA6FC0B0](v20);
      result = sub_1D7264A5C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5FF61B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D60075F0(0, a2, a3, a4, a5);
  result = sub_1D7263CBC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_1D72636FC();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_1D5FF63CC()
{
  v1 = v0;
  v36 = sub_1D7258DBC();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D6007A94();
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28]);
      result = sub_1D7261E7C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D5FF6720()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC87FAE8, sub_1D5E2A08C);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1D7264A0C();
      if (v19)
      {
        v20 = qword_1D728D788[v18];
      }

      else
      {
        MEMORY[0x1DA6FC0B0](2);
        v20 = v18;
      }

      MEMORY[0x1DA6FC0B0](v20);
      result = sub_1D7264A5C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D5FF69BC(unint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  if ((a1 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  sub_1D7264A5C();
  result = sub_1D7263B9C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF6AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D5BE7354(a1, v12, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE7424(v12, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v15 = *v12;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  sub_1D7264A5C();
  v13 = sub_1D7263B9C();
  *(a2 + 56 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  result = sub_1D5BE7424(a1, *(a2 + 48) + *(v9 + 72) * v13, type metadata accessor for WebEmbedDataVisualization);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF6CE8(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for FormatVersionRequirement(0);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D60077D8();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27[-v14 - 8];
  v16 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7264A0C();
  sub_1D6907920(v27, *a1);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  sub_1D72621EC();
  sub_1D6C37A40(v27, v20);
  MEMORY[0x1DA6FC0B0](v21);
  MEMORY[0x1DA6FC0B0](*(a1 + 56));
  sub_1D72621EC();
  v22 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  sub_1D5BE7354(a1 + *(v22 + 28), v19, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1)
  {
    sub_1D7264A2C();
  }

  else
  {
    sub_1D5BE7424(v19, v15, sub_1D60077D8);
    sub_1D7264A2C();
    sub_1D5BE7354(v15, v11, sub_1D60077D8);
    if ((*(v4 + 48))(v11, 1, v26) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5BE7424(v11, v7, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30();
      sub_1D5BF1AEC(v7, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5BF1AEC(v15, sub_1D60077D8);
  }

  sub_1D7264A5C();
  v24 = sub_1D7263B9C();
  *(a2 + 56 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
  result = sub_1D5BE7424(a1, *(a2 + 48) + *(*(v22 - 8) + 72) * v24, type metadata accessor for FormatDerivedDataResultOptionReference);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF709C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v9 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = a1;
    v23 = a2;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v21 = v9;
    v15 = v9 + v14;
    v16 = *(v12 + 56);
    do
    {
      v11(v8, v15, v4);
      sub_1D5D51EB4(&qword_1EDF3C3E0, 255, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v12 - 8))(v8, v4);
      v15 += v16;
      --v10;
    }

    while (v10);

    a1 = v22;
    a2 = v23;
  }

  else
  {
  }

  sub_1D7264A5C();
  v17 = sub_1D7263B9C();
  *(a2 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
  v18 = *(a2 + 48);
  v19 = type metadata accessor for WebEmbedDatastoreCacheKey();
  result = sub_1D5BE7424(a1, v18 + *(*(v19 - 8) + 72) * v17, type metadata accessor for WebEmbedDatastoreCacheKey);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D5FF7310(uint64_t a1, uint64_t a2)
{
  sub_1D72636FC();
  result = sub_1D7263B9C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF7394(uint64_t result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_1D5FF1468();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D60005D8(&qword_1EDF1A5C0, sub_1D5CD8948);
      goto LABEL_46;
    }

    sub_1D6001AA8();
  }

  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    v10 = 0x676E696461656CLL;
    v11 = 0x6D6F74746F62;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 <= 1)
      {
        v13 = *(*(v7 + 48) + a2) ? v10 : 7368564;
        v14 = *(*(v7 + 48) + a2) ? 0xE700000000000000 : 0xE300000000000000;
      }

      else if (v12 == 2)
      {
        v14 = 0xE800000000000000;
        v13 = 0x676E696C69617274;
      }

      else
      {
        v13 = v12 == 3 ? v11 : 7105633;
        v14 = v12 == 3 ? 0xE600000000000000 : 0xE300000000000000;
      }

      v15 = v11;
      if (v28 == 3)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v11 = 7105633;
        v16 = 0xE300000000000000;
      }

      if (v28 == 2)
      {
        v11 = 0x676E696C69617274;
        v16 = 0xE800000000000000;
      }

      v17 = v10;
      v18 = v28 ? v10 : 7368564;
      v19 = v28 ? 0xE700000000000000 : 0xE300000000000000;
      v20 = v28 <= 1u ? v18 : v11;
      v21 = v28 <= 1u ? v19 : v16;
      if (v13 == v20 && v14 == v21)
      {
        goto LABEL_49;
      }

      v22 = sub_1D72646CC();

      if (v22)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v9;
      v10 = v17;
      v11 = v15;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v28;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF76CC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF1754();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D600007C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D6001D64();
  }

  v8 = *v3;
  result = sub_1D72649FC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF77EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v26 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF1984();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1D60001C8();
        goto LABEL_27;
      }

      sub_1D6001F60();
    }

    v8 = *v3;
    sub_1D7264A0C();
    v9 = (v5 >> 62) - 1;
    if (v9 >= 2)
    {
      sub_1D7264A2C();
    }

    else
    {

      sub_1D7264A2C();
      sub_1D72621EC();
    }

    result = sub_1D7264A5C();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      do
      {
        v14 = *(*(v8 + 48) + 8 * a2);
        if ((v14 >> 62) - 1 > 1)
        {
          v17 = 0;
          v16 = 0;
          if (v9 <= 1)
          {
LABEL_17:
            v18 = *(v12 + 16);
            v20 = *(v18 + 16);
            v19 = *(v18 + 24);

            if (!v16)
            {
              goto LABEL_18;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v17 = *(v15 + 16);
          v16 = *(v15 + 24);

          if (v9 <= 1)
          {
            goto LABEL_17;
          }
        }

        v20 = 0;
        v19 = 0;
        if (!v16)
        {
LABEL_18:
          if (!v19)
          {
            goto LABEL_31;
          }

LABEL_26:

          goto LABEL_14;
        }

LABEL_22:
        if (!v19)
        {
          goto LABEL_26;
        }

        if (v17 == v20 && v16 == v19)
        {
          goto LABEL_30;
        }

        v13 = sub_1D72646CC();

        if (v13)
        {
          goto LABEL_31;
        }

LABEL_14:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_27:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v26;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_30:

LABEL_31:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }

  return result;
}

uint64_t sub_1D5FF7A60(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_1D5FF1D34();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D6000480();
      goto LABEL_72;
    }

    sub_1D60022AC();
  }

  v7 = *v3;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = ~v8;
    do
    {
      v9 = *(*(v7 + 48) + a2);
      if (v9 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v9 == 9)
          {
            v10 = 0xD000000000000017;
            v11 = 0x80000001D73B9B90;
          }

          else if (v9 == 10)
          {
            v10 = 0xD000000000000012;
            v11 = 0x80000001D73B9BB0;
          }

          else
          {
            v10 = 0xD000000000000019;
            v11 = 0x80000001D73B9BD0;
          }
        }

        else if (v9 == 6)
        {
          v10 = 0xD000000000000014;
          v11 = 0x80000001D73B9B40;
        }

        else if (v9 == 7)
        {
          v10 = 0x6F4C7374726F7073;
          v11 = 0xEF6567616D496F67;
        }

        else
        {
          v10 = 0xD000000000000016;
          v11 = 0x80000001D73B9B70;
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v9 == 3)
        {
          v10 = 0x616D497265766F63;
          v11 = 0xEA00000000006567;
        }

        else
        {
          v10 = 0x4976614E64656566;
          if (v9 == 4)
          {
            v11 = 0xEC0000006567616DLL;
          }

          else
          {
            v11 = 0xEE0051486567616DLL;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        v10 = 0xD00000000000001DLL;
        if (v9 == 1)
        {
          v11 = 0x80000001D73B9AD0;
        }

        else
        {
          v11 = 0x80000001D73B9AF0;
        }
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001D73B9AB0;
      }

      v12 = 0xD000000000000017;
      v13 = 0xD000000000000019;
      if (v33 == 10)
      {
        v13 = 0xD000000000000012;
      }

      v14 = 0x80000001D73B9BD0;
      if (v33 == 10)
      {
        v14 = 0x80000001D73B9BB0;
      }

      if (v33 != 9)
      {
        v12 = v13;
      }

      v15 = 0x80000001D73B9B90;
      if (v33 != 9)
      {
        v15 = v14;
      }

      v16 = 0xD000000000000014;
      v17 = 0xD000000000000016;
      if (v33 == 7)
      {
        v17 = 0x6F4C7374726F7073;
      }

      v18 = 0xEF6567616D496F67;
      if (v33 != 7)
      {
        v18 = 0x80000001D73B9B70;
      }

      if (v33 == 6)
      {
        v19 = 0x80000001D73B9B40;
      }

      else
      {
        v16 = v17;
        v19 = v18;
      }

      if (v33 <= 8u)
      {
        v12 = v16;
        v15 = v19;
      }

      v20 = 0xEE0051486567616DLL;
      if (v33 == 4)
      {
        v20 = 0xEC0000006567616DLL;
      }

      v21 = 0x616D497265766F63;
      if (v33 == 3)
      {
        v20 = 0xEA00000000006567;
      }

      else
      {
        v21 = 0x4976614E64656566;
      }

      v22 = 0xD00000000000001DLL;
      if (v33 == 1)
      {
        v23 = 0x80000001D73B9AD0;
      }

      else
      {
        v23 = 0x80000001D73B9AF0;
      }

      if (!v33)
      {
        v22 = 0xD000000000000012;
        v23 = 0x80000001D73B9AB0;
      }

      if (v33 <= 2u)
      {
        v21 = v22;
        v20 = v23;
      }

      v24 = v33 <= 5u ? v21 : v12;
      v25 = v33 <= 5u ? v20 : v15;
      if (v10 == v24 && v11 == v25)
      {
        goto LABEL_75;
      }

      v26 = sub_1D72646CC();

      if (v26)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v32;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v33;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF7F1C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF21B4();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1D60005D8(&qword_1EC8822A0, sub_1D5B56F50);
        goto LABEL_27;
      }

      sub_1D60026D8();
    }

    v8 = *v3;
    sub_1D7264A0C();
    sub_1D72621EC();

    result = sub_1D7264A5C();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          v11 = 0x7461636572706564;
          v12 = 0xEA00000000006465;
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0xD000000000000021;
            v12 = 0x80000001D73BA2A0;
          }

          v13 = v5;
          if (!v5)
          {
LABEL_23:
            v15 = 0x80000001D73BA280;
            if (v11 == 0xD000000000000014)
            {
              goto LABEL_24;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v11 = 0xD000000000000014;
          v12 = 0x80000001D73BA280;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_23;
          }
        }

        if (v13 == 1)
        {
          v14 = 0xD000000000000021;
        }

        else
        {
          v14 = 0x7461636572706564;
        }

        if (v13 == 1)
        {
          v15 = 0x80000001D73BA2A0;
        }

        else
        {
          v15 = 0xEA00000000006465;
        }

        if (v11 == v14)
        {
LABEL_24:
          if (v12 == v15)
          {
            goto LABEL_30;
          }
        }

LABEL_25:
        v16 = sub_1D72646CC();

        if (v16)
        {
          goto LABEL_31;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_27:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_30:

LABEL_31:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_1D5FF81F0(uint64_t result, unint64_t a2, char a3)
{
  v29 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_68;
  }

  if (a3)
  {
    sub_1D5FF2490();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D60005D8(&qword_1EDF1A5B8, sub_1D5E2A690);
      goto LABEL_68;
    }

    sub_1D6002984();
  }

  v7 = *v3;
  sub_1D7264A0C();
  FormatOptionType.rawValue.getter();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v10 == 9)
          {
            v12 = 0xE500000000000000;
            v11 = 0x6F65646976;
          }

          else if (v10 == 10)
          {
            v12 = 0xE400000000000000;
            v11 = 1953394534;
          }

          else
          {
            v11 = 0x616C506F65646976;
            v12 = 0xEB00000000726579;
          }
        }

        else if (v10 == 6)
        {
          v12 = 0xE300000000000000;
          v11 = 7107189;
        }

        else
        {
          v12 = 0xE500000000000000;
          if (v10 == 7)
          {
            v11 = 0x726F6C6F63;
          }

          else
          {
            v11 = 0x6567616D69;
          }
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v10 == 3)
        {
          v12 = 0xE500000000000000;
          v11 = 0x74616F6C66;
        }

        else if (v10 == 4)
        {
          v12 = 0xE700000000000000;
          v11 = 0x72656765746E69;
        }

        else
        {
          v12 = 0xE600000000000000;
          v11 = 0x676E69727473;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 1702125924;
        }

        else
        {
          v11 = 1836412517;
        }

        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
        v11 = 0x6E61656C6F6F62;
      }

      v13 = 0x616C506F65646976;
      if (v29 == 10)
      {
        v13 = 1953394534;
      }

      v14 = 0xEB00000000726579;
      if (v29 == 10)
      {
        v14 = 0xE400000000000000;
      }

      if (v29 == 9)
      {
        v13 = 0x6F65646976;
        v14 = 0xE500000000000000;
      }

      v15 = 0x726F6C6F63;
      if (v29 != 7)
      {
        v15 = 0x6567616D69;
      }

      v16 = 0xE500000000000000;
      if (v29 == 6)
      {
        v15 = 7107189;
        v16 = 0xE300000000000000;
      }

      if (v29 <= 8u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0x72656765746E69;
      if (v29 != 4)
      {
        v17 = 0x676E69727473;
      }

      v18 = 0xE600000000000000;
      if (v29 == 4)
      {
        v18 = 0xE700000000000000;
      }

      if (v29 == 3)
      {
        v17 = 0x74616F6C66;
        v18 = 0xE500000000000000;
      }

      v19 = 1836412517;
      if (v29 == 1)
      {
        v19 = 1702125924;
      }

      v20 = 0xE400000000000000;
      if (!v29)
      {
        v19 = 0x6E61656C6F6F62;
        v20 = 0xE700000000000000;
      }

      if (v29 <= 2u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v29 <= 5u ? v17 : v13;
      v22 = v29 <= 5u ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        goto LABEL_71;
      }

      v23 = sub_1D72646CC();

      if (v23)
      {
        goto LABEL_72;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_68:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v29;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_71:

LABEL_72:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

unint64_t sub_1D5FF8644(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1D5FF283C();
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1D6002D00();
LABEL_8:
      v6 = *v2;
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      result = sub_1D7264A5C() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1D6000718();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF8754(uint64_t result, unint64_t a2, char a3)
{
  v25 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_1D5FF2A6C();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D60005D8(&qword_1EDF1A5A0, sub_1D5E2A540);
      goto LABEL_49;
    }

    sub_1D6002EF4();
  }

  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v12 = 0xE500000000000000;
          v11 = 0x6567616D69;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 1633905005;
          }

          else
          {
            v11 = 0x66456C6175736976;
          }

          if (v10 == 4)
          {
            v12 = 0xE400000000000000;
          }

          else
          {
            v12 = 0xEC00000074636566;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x72476C6169646172;
        }

        else
        {
          v11 = 0x65695674696C7073;
        }

        if (v10 == 1)
        {
          v12 = 0xEE00746E65696461;
        }

        else
        {
          v12 = 0xE900000000000077;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        v11 = 0x746E656964617267;
      }

      v13 = 0x66456C6175736976;
      if (v25 == 4)
      {
        v13 = 1633905005;
      }

      v14 = 0xEC00000074636566;
      if (v25 == 4)
      {
        v14 = 0xE400000000000000;
      }

      if (v25 == 3)
      {
        v13 = 0x6567616D69;
        v14 = 0xE500000000000000;
      }

      v15 = 0x72476C6169646172;
      if (v25 != 1)
      {
        v15 = 0x65695674696C7073;
      }

      v16 = 0xEE00746E65696461;
      if (v25 != 1)
      {
        v16 = 0xE900000000000077;
      }

      if (!v25)
      {
        v15 = 0x746E656964617267;
        v16 = 0xE800000000000000;
      }

      v17 = v25 <= 2u ? v15 : v13;
      v18 = v25 <= 2u ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        goto LABEL_52;
      }

      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_53;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_52:

LABEL_53:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF8B4C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WebEmbedDataVisualization();
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v45 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v45 - v25);
  v27 = *(*v3 + 16);
  v28 = *(*v3 + 24);
  v45 = v3;
  if (v28 <= v27 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5BD590C(v27 + 1, type metadata accessor for WebEmbedDataVisualization, sub_1D60072C8, type metadata accessor for WebEmbedDataVisualization, sub_1D5FF6AB4);
    }

    else
    {
      if (v28 > v27)
      {
        sub_1D6001500(type metadata accessor for WebEmbedDataVisualization, sub_1D60072C8, type metadata accessor for WebEmbedDataVisualization, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_23;
      }

      sub_1D5C0F230(v27 + 1, type metadata accessor for WebEmbedDataVisualization, sub_1D60072C8, type metadata accessor for WebEmbedDataVisualization, sub_1D5FF6AB4);
    }

    v51 = *v3;
    sub_1D7264A0C();
    sub_1D5BE7354(a1, v26, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5BE7424(v26, v10, type metadata accessor for GenericDataVisualization);
      sub_1D72621EC();
      sub_1D5BF1AEC(v10, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v53 = *v26;
      SportsDataVisualization.identifier.getter();
      sub_1D72621EC();
    }

    v29 = sub_1D7264A5C();
    v30 = -1 << *(v51 + 32);
    a2 = v29 & ~v30;
    v50 = v51 + 56;
    if ((*(v51 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = ~v30;
      v31 = *(v46 + 72);
      v47 = v11;
      v48 = v31;
      do
      {
        v32 = *(v51 + 48);
        v52 = a2;
        sub_1D5BE7354(v32 + v48 * a2, v22, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BE7354(v22, v18, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D5BE7424(v18, v10, type metadata accessor for GenericDataVisualization);
          v54 = 0x3A636972656E6567;
          v55 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v10, v10[1]);
          v33 = v54;
          v34 = v55;
          sub_1D5BF1AEC(v10, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v53 = *v18;
          v54 = 0x3A3A7374726F7073;
          v55 = 0xE800000000000000;
          v35 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v35);

          v33 = v54;
          v34 = v55;
        }

        sub_1D5BE7354(a1, v14, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D5BE7424(v14, v10, type metadata accessor for GenericDataVisualization);
          v54 = 0x3A636972656E6567;
          v55 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v10, v10[1]);
          v36 = v54;
          v37 = v55;
          sub_1D5BF1AEC(v10, type metadata accessor for GenericDataVisualization);
          if (v33 == v36)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v53 = *v14;
          v54 = 0x3A3A7374726F7073;
          v55 = 0xE800000000000000;
          v38 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v38);

          v37 = v55;
          if (v33 == v54)
          {
LABEL_20:
            if (v34 == v37)
            {
              goto LABEL_26;
            }
          }
        }

        v39 = sub_1D72646CC();

        sub_1D5BF1AEC(v22, type metadata accessor for WebEmbedDataVisualization);
        if (v39)
        {
          goto LABEL_27;
        }

        a2 = (v52 + 1) & v49;
      }

      while (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v40 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(a1, *(v40 + 48) + *(v46 + 72) * a2, type metadata accessor for WebEmbedDataVisualization);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_26:

    sub_1D5BF1AEC(v22, type metadata accessor for WebEmbedDataVisualization);
LABEL_27:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_1D5FF9228(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF2D98();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1D60005D8(&qword_1EC8822A8, sub_1D6007B2C);
        goto LABEL_28;
      }

      sub_1D60031F0();
    }

    v8 = *v3;
    sub_1D7264A0C();
    sub_1D72621EC();

    result = sub_1D7264A5C();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0xD000000000000010;
            v12 = 0x80000001D73BC380;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0xE400000000000000;
            v11 = 1752461154;
            v13 = v5;
            if (!v5)
            {
LABEL_24:
              v15 = 0xEB00000000797274;
              if (v11 == 0x6E4572657474656CLL)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v11 = 0x6E4572657474656CLL;
          v12 = 0xEB00000000797274;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v13 == 1)
        {
          v14 = 0xD000000000000010;
        }

        else
        {
          v14 = 1752461154;
        }

        if (v13 == 1)
        {
          v15 = 0x80000001D73BC380;
        }

        else
        {
          v15 = 0xE400000000000000;
        }

        if (v11 == v14)
        {
LABEL_25:
          if (v12 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = sub_1D72646CC();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_1D5FF94F0(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v6 = v4;
  v9 = result;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D5FF3060();
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1D6000890(&qword_1EDF04318, sub_1D6007408, &type metadata for FeedItem.Kind, sub_1D5BF2DDC);
        goto LABEL_57;
      }

      sub_1D6003488();
    }

    v12 = *v4;
    v24 = v9;
    v25 = a2;
    sub_1D7264A0C();
    FeedItem.Kind.hash(into:)();
    v4 = &v23;
    result = sub_1D7264A5C();
    v13 = -1 << *(v12 + 32);
    a3 = result & ~v13;
    if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      while (2)
      {
        v15 = *(v12 + 48) + 16 * a3;
        v4 = *v15;
        v5 = *(v15 + 8);
        switch(v5)
        {
          case 0uLL:
            if (!a2)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 1uLL:
            if (a2 == 1)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 2uLL:
            if (a2 == 2)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 3uLL:
            if (a2 == 3)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 4uLL:
            if (a2 == 4)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 5uLL:
            if (a2 == 5)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 6uLL:
            if (a2 == 6)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 7uLL:
            if (a2 == 7)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 8uLL:
            if (a2 != 8)
            {
              goto LABEL_48;
            }

            goto LABEL_60;
          case 9uLL:
            if (a2 == 9)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xAuLL:
            if (a2 == 10)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xBuLL:
            if (a2 == 11)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xCuLL:
            if (a2 == 12)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xDuLL:
            if (a2 == 13)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xEuLL:
            if (a2 == 14)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xFuLL:
            if (a2 == 15)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0x10uLL:
            if (a2 == 16)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0x11uLL:
            if (a2 == 17)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          default:
            if (a2 >= 0x12)
            {
              if (v4 == v9 && v5 == a2)
              {
                goto LABEL_63;
              }

              v17 = sub_1D72646CC();
              sub_1D5BF2DDC(v9, a2);
              sub_1D5BF2DDC(v4, v5);
              sub_1D5BF6680(v4, v5);
              result = sub_1D5BF6680(v9, a2);
              if (v17)
              {
                goto LABEL_62;
              }
            }

            else
            {
              sub_1D5BF2DDC(*v15, *(v15 + 8));
LABEL_48:
              sub_1D5BF2DDC(v9, a2);
              sub_1D5BF6680(v4, v5);
              result = sub_1D5BF6680(v9, a2);
            }

            a3 = (a3 + 1) & v14;
            if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_57:
  v18 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v9;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_60:
    a2 = v5;
    while (1)
    {
      sub_1D5BF6680(v4, a2);
      sub_1D5BF6680(v9, a2);
LABEL_62:
      sub_1D726492C();
      __break(1u);
LABEL_63:
      sub_1D5BF2DDC(v9, a2);
      sub_1D5BF2DDC(v9, a2);
      v4 = v9;
    }
  }

  *(v18 + 16) = v22;
  return result;
}

uint64_t sub_1D5FF9868(uint64_t result, unint64_t a2, char a3, unint64_t *a4, void (*a5)(void))
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF33EC(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1D60005D8(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1D60037EC(v7 + 1, a4, a5);
  }

  v10 = *v5;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v6);
  result = sub_1D7264A5C();
  v11 = -1 << *(v10 + 32);
  a2 = result & ~v11;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF99E4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1D5FF3630();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D60005D8(&qword_1EC882218, sub_1D5E4E308);
      goto LABEL_28;
    }

    sub_1D6003A00();
  }

  v8 = *v3;
  sub_1D7264A0C();
  if (v5)
  {
    v9 = 0x746C7561666564;
  }

  else
  {
    v9 = 1685217635;
  }

  if (v5)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  sub_1D72621EC();

  result = sub_1D7264A5C();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x746C7561666564 : 1685217635;
      v14 = *(*(v8 + 48) + a2) ? 0xE700000000000000 : 0xE400000000000000;
      if (v13 == v9 && v14 == v10)
      {
        goto LABEL_31;
      }

      v16 = sub_1D72646CC();

      if (v16)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF9C08(uint64_t result, unint64_t a2, char a3)
{
  v22 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    sub_1D5FF38CC();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D60005D8(&qword_1EC8821F0, sub_1D6007360);
      goto LABEL_31;
    }

    sub_1D6003C6C();
  }

  v21 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v7 = -1 << *(v21 + 32);
  a2 = result & ~v7;
  if ((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v8 = ~v7;
    do
    {
      v9 = 0xD00000000000001CLL;
      if (*(*(v21 + 48) + a2) == 1)
      {
        v10 = "unusedProperties";
      }

      else
      {
        v9 = 0xD000000000000028;
        v10 = "duplicateNewsroomIdentifiers";
      }

      v11 = *(*(v21 + 48) + a2) ? v9 : 0xD000000000000010;
      v12 = *(*(v21 + 48) + a2) ? v10 : "bility-news-plus-via-hardware";
      if (v22)
      {
        v13 = v22 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
        v14 = v22 == 1 ? "unusedProperties" : "duplicateNewsroomIdentifiers";
      }

      else
      {
        v13 = 0xD000000000000010;
        v14 = "bility-news-plus-via-hardware";
      }

      if (v11 == v13 && (v12 | 0x8000000000000000) == (v14 | 0x8000000000000000))
      {
        goto LABEL_34;
      }

      v15 = sub_1D72646CC();

      if (v15)
      {
        goto LABEL_35;
      }

      a2 = (a2 + 1) & v8;
    }

    while (((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_31:
  v16 = *v20;
  *(*v20 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v22;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_34:

LABEL_35:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FF9E98(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v6 = v4;
  v9 = result;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D5FF3B98();
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1D6000890(&qword_1EDF1A5C8, sub_1D5B4B090, &type metadata for FormatItemKind, sub_1D5CBA110);
        goto LABEL_53;
      }

      sub_1D6003F08();
    }

    v12 = *v4;
    v27 = v9;
    v28 = a2;
    sub_1D7264A0C();
    FormatItemKind.hash(into:)();
    v4 = &v26;
    result = sub_1D7264A5C();
    v13 = -1 << *(v12 + 32);
    a3 = result & ~v13;
    if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      while (2)
      {
        v15 = *(v12 + 48) + 16 * a3;
        v4 = *v15;
        v5 = *(v15 + 8);
        switch(v5)
        {
          case 0uLL:
            if (a2)
            {
              goto LABEL_44;
            }

            v24 = *v15;
            v25 = 0;
            goto LABEL_58;
          case 1uLL:
            if (a2 != 1)
            {
              goto LABEL_44;
            }

            v24 = *v15;
            v25 = 1;
            goto LABEL_58;
          case 2uLL:
            if (a2 != 2)
            {
              goto LABEL_44;
            }

            v24 = *v15;
            v25 = 2;
            goto LABEL_58;
          case 3uLL:
            if (a2 != 3)
            {
              goto LABEL_44;
            }

            v24 = *v15;
            v25 = 3;
LABEL_58:
            sub_1D5CBA0FC(v24, v25);
            i = v9;
            goto LABEL_59;
          case 4uLL:
            if (a2 == 4)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 5uLL:
            if (a2 == 5)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 6uLL:
            if (a2 == 6)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 7uLL:
            if (a2 == 7)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 8uLL:
            if (a2 == 8)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 9uLL:
            if (a2 == 9)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xAuLL:
            if (a2 == 10)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xBuLL:
            if (a2 == 11)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xCuLL:
            if (a2 == 12)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xDuLL:
            if (a2 == 13)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xEuLL:
            if (a2 == 14)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xFuLL:
            if (a2 == 15)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          default:
            if (a2 >= 0x10)
            {
              if (v4 == v9 && v5 == a2)
              {
                goto LABEL_61;
              }

              v17 = sub_1D72646CC();
              sub_1D5CBA110(v4, v5);
              sub_1D5CBA110(v9, a2);
              sub_1D5CBA0FC(v4, v5);
              result = sub_1D5CBA0FC(v9, a2);
              if (v17)
              {
                goto LABEL_60;
              }
            }

            else
            {
LABEL_44:
              sub_1D5CBA110(*v15, *(v15 + 8));
              sub_1D5CBA110(v4, v5);
              sub_1D5CBA110(v9, a2);
              sub_1D5CBA0FC(v4, v5);
              sub_1D5CBA0FC(v9, a2);
              result = sub_1D5CBA0FC(v4, v5);
            }

            a3 = (a3 + 1) & v14;
            if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_53:
  v18 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v9;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_56:
    a2 = v5;
    for (i = v4; ; i = v9)
    {
      v4 = v9;
LABEL_59:
      sub_1D5CBA0FC(i, a2);
      sub_1D5CBA0FC(v4, a2);
LABEL_60:
      sub_1D726492C();
      __break(1u);
LABEL_61:
      sub_1D5CBA110(v9, a2);
      sub_1D5CBA110(v9, a2);
    }
  }

  *(v18 + 16) = v22;
  return result;
}

uint64_t sub_1D5FFA24C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    sub_1D5FF4EDC(v11 + 1, &qword_1EC882260, sub_1D6007784);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D6000A30(&qword_1EC882260, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, sub_1D6007D98);
      goto LABEL_23;
    }

    sub_1D600513C(v11 + 1, &qword_1EC882260, sub_1D6007784);
  }

  v13 = *v5;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a3);
  sub_1D72621EC();
  result = sub_1D7264A5C();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 24 * a4;
      result = *v18;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      if (v20)
      {
        if (v20 == 1)
        {
          if (a3 != 1)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 2)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v21 = result == v10 && v19 == a2;
      if (v21 || (result = sub_1D72646CC(), (result & 1) != 0))
      {
        result = sub_1D726492C();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_23:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_1D5FFA4A8(uint64_t a1, unint64_t a2, char a3)
{
  v122 = a1;
  sub_1D5D50E70(0, &qword_1EDF0CE38, sub_1D60077D8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v102 - v9;
  sub_1D5D50E70(0, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = &v102 - v13;
  v14 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v120 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v129 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for FormatVersionRequirement(0);
  v133 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v17);
  v111 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v102 - v21;
  sub_1D60077D8();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v112 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v102 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v102 - v32;
  v34 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v40 = &v102 - v39;
  v41 = *(*v3 + 16);
  v42 = *(*v3 + 24);
  v119 = v3;
  if (v42 > v41 && (a3 & 1) != 0)
  {
    goto LABEL_182;
  }

  v113 = v14;
  if (a3)
  {
    v106 = v38;
    v105 = v10;
    sub_1D5BD590C(v41 + 1, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D60078CC, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D5FF6CE8);
    goto LABEL_8;
  }

  if (v42 > v41)
  {
    sub_1D6001500(type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D60078CC, type metadata accessor for FormatDerivedDataResultOptionReference, type metadata accessor for FormatDerivedDataResultOptionReference);
LABEL_182:
    v97 = *v119;
    *(*v119 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    result = sub_1D5BE7424(v122, *(v97 + 48) + *(v120 + 72) * a2, type metadata accessor for FormatDerivedDataResultOptionReference);
    v99 = *(v97 + 16);
    v100 = __OFADD__(v99, 1);
    v101 = v99 + 1;
    if (v100)
    {
      goto LABEL_186;
    }

    *(v97 + 16) = v101;
    return result;
  }

  v106 = v38;
  v105 = v10;
  sub_1D5C0F230(v41 + 1, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D60078CC, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D5FF6CE8);
LABEL_8:
  v128 = *v3;
  sub_1D7264A0C();
  v43 = v122;
  v131 = *v122;
  sub_1D6907920(v134, v131);
  v44 = *(v43 + 8);
  v45 = *(v43 + 24);
  v46 = *(v43 + 32);
  v123 = *(v43 + 16);
  v124 = v44;
  sub_1D72621EC();
  v121 = v45;
  sub_1D6C37A40(v134, v45);
  v118 = v46;
  MEMORY[0x1DA6FC0B0](v46);
  MEMORY[0x1DA6FC0B0](*(v43 + 56));
  sub_1D72621EC();
  v110 = *(v113 + 28);
  sub_1D5BE7354(v43 + v110, v40, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  v48 = v47;
  v49 = *(v47 - 8);
  v10 = *(v49 + 48);
  v50 = v49 + 48;
  if ((v10)(v40, 1, v47) == 1)
  {
    sub_1D7264A2C();
    v51 = v133;
  }

  else
  {
    sub_1D5BE7424(v40, v33, sub_1D60077D8);
    sub_1D7264A2C();
    sub_1D5BE7354(v33, v29, sub_1D60077D8);
    v51 = v133;
    if ((*(v133 + 48))(v29, 1, v114) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5BE7424(v29, v22, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30();
      sub_1D5BF1AEC(v22, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5BF1AEC(v33, sub_1D60077D8);
  }

  v52 = sub_1D7264A5C();
  v53 = -1 << *(v128 + 32);
  a2 = v52 & ~v53;
  v127 = v128 + 56;
  if (((*(v128 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_182;
  }

  v107 = v50;
  v108 = v10;
  v109 = v48;
  v104 = v7;
  v125 = ~v53;
  v132 = *(v131 + 16);
  v126 = *(v120 + 72);
  v103 = (v51 + 48);
  v117 = (v131 + 48);
  v54 = v129;
  while (1)
  {
    v58 = *(v128 + 48);
    v130 = a2;
    sub_1D5BE7354(v58 + v126 * a2, v54, type metadata accessor for FormatDerivedDataResultOptionReference);
    v133 = *v54;
    if (*(v133 + 16) != v132)
    {
      goto LABEL_18;
    }

    if (!v132 || v133 == v131)
    {
LABEL_129:
      v72 = *(v129 + 24);
      v71 = *(v129 + 32);
      v73 = *(v129 + 8) == v124 && *(v129 + 16) == v123;
      if (!v73 && (sub_1D72646CC() & 1) == 0 || (sub_1D5E1E5A4(v72, v121) & 1) == 0 || v71 != v118)
      {
        goto LABEL_18;
      }

      v74 = *(v129 + 40);
      v22 = *(v129 + 48);
      v75 = *(v129 + 56);
      v77 = *(v122 + 40);
      v76 = *(v122 + 48);
      v78 = *(v122 + 56);
      if (*(v129 + 56))
      {
        if (v75 == 1)
        {
          if (v78 == 1)
          {
            if (v74 != v77 || v22 != v76)
            {
              v79 = sub_1D72646CC();
              sub_1D5DEA210(v77, v76, 1u);
              sub_1D5DEA210(v74, v22, 1u);
              sub_1D5DEA520(v74, v22, 1u);
              sub_1D5DEA520(v77, v76, 1u);
              if ((v79 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_156;
            }

LABEL_155:
            sub_1D5DEA210(v74, v22, v75);
            sub_1D5DEA210(v74, v22, v75);
            sub_1D5DEA520(v74, v22, v75);
            sub_1D5DEA520(v74, v22, v75);
            goto LABEL_156;
          }

          sub_1D5DEA210(*(v122 + 40), *(v122 + 48), *(v122 + 56));
          sub_1D5DEA210(v74, v22, 1u);
          v55 = v74;
          v56 = v22;
          v57 = 1;
LABEL_17:
          sub_1D5DEA520(v55, v56, v57);
          sub_1D5DEA520(v77, v76, v78);
          goto LABEL_18;
        }

        if (v78 != 2)
        {
          sub_1D5DEA210(*(v122 + 40), *(v122 + 48), *(v122 + 56));
          sub_1D5DEA210(v74, v22, 2u);
          v55 = v74;
          v56 = v22;
          v57 = 2;
          goto LABEL_17;
        }

        if (v74 == v77 && v22 == v76)
        {
          goto LABEL_155;
        }

        v80 = sub_1D72646CC();
        sub_1D5DEA210(v77, v76, 2u);
        sub_1D5DEA210(v74, v22, 2u);
        sub_1D5DEA520(v74, v22, 2u);
        sub_1D5DEA520(v77, v76, 2u);
        if ((v80 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (*(v122 + 56))
        {
          sub_1D5DEA210(*(v122 + 40), *(v122 + 48), *(v122 + 56));
          sub_1D5DEA210(v74, v22, 0);
          v55 = v74;
          v56 = v22;
          v57 = 0;
          goto LABEL_17;
        }

        if (v74 == v77 && v22 == v76)
        {
          goto LABEL_155;
        }

        v93 = sub_1D72646CC();
        sub_1D5DEA210(v77, v76, 0);
        sub_1D5DEA210(v74, v22, 0);
        sub_1D5DEA520(v74, v22, 0);
        sub_1D5DEA520(v77, v76, 0);
        if ((v93 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_156:
      v84 = *(v115 + 48);
      v22 = v116;
      sub_1D5BE7354(v129 + *(v113 + 28), v116, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      sub_1D5BE7354(v122 + v110, v22 + v84, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      v85 = v109;
      v86 = v108;
      if (v108(v22, 1, v109) == 1)
      {
        if (v86(v22 + v84, 1, v85) == 1)
        {
          goto LABEL_188;
        }

LABEL_161:
        sub_1D6007870(v22, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
        goto LABEL_18;
      }

      v10 = v106;
      sub_1D5BE7354(v22, v106, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      if (v86(v22 + v84, 1, v85) == 1)
      {
        sub_1D5BF1AEC(v10, sub_1D60077D8);
        goto LABEL_161;
      }

      v87 = *(v104 + 48);
      v88 = v10;
      v10 = v105;
      sub_1D5BE7424(v88, v105, sub_1D60077D8);
      sub_1D5BE7424(v22 + v84, &v10[v87], sub_1D60077D8);
      v89 = *v103;
      v90 = v114;
      v91 = (*v103)(v10, 1, v114);
      v92 = v112;
      if (v91 == 1)
      {
        if (v89(&v10[v87], 1, v90) == 1)
        {
          goto LABEL_187;
        }
      }

      else
      {
        sub_1D5BE7354(v10, v112, sub_1D60077D8);
        if (v89(&v10[v87], 1, v90) != 1)
        {
          v94 = &v10[v87];
          v95 = v111;
          sub_1D5BE7424(v94, v111, type metadata accessor for FormatVersionRequirement);
          v96 = sub_1D6024840(v92, v95);
          sub_1D5BF1AEC(v95, type metadata accessor for FormatVersionRequirement);
          sub_1D5BF1AEC(v92, type metadata accessor for FormatVersionRequirement);
          sub_1D5BF1AEC(v10, sub_1D60077D8);
          if (v96)
          {
            goto LABEL_188;
          }

LABEL_173:
          sub_1D5BF1AEC(v22, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
          goto LABEL_18;
        }

        sub_1D5BF1AEC(v92, type metadata accessor for FormatVersionRequirement);
      }

      sub_1D6007870(v10, &qword_1EDF0CE38, sub_1D60077D8);
      goto LABEL_173;
    }

    v59 = 0;
    v10 = (v133 + 48);
    v60 = v117;
LABEL_27:
    if (v59 >= *(v133 + 16))
    {
      break;
    }

    if (v59 >= *(v131 + 16))
    {
      goto LABEL_185;
    }

    v64 = *(v10 - 2);
    v22 = *(v10 - 1);
    v65 = *v10;
    v66 = *(v60 - 2);
    v67 = *(v60 - 1);
    v68 = *v60;
    if (!(v65 >> 6))
    {
      if (v68 >= 0x40)
      {
LABEL_150:
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        sub_1D6007830(v64, v22, v65);
        v81 = v64;
        v82 = v22;
        v83 = v65;
        goto LABEL_181;
      }

      if (v64 == v66 && v22 == v67)
      {
        sub_1D6007830(*(v10 - 2), *(v10 - 1), *v60);
        sub_1D6007830(v64, v22, v65);
        sub_1D6007850(v64, v22, v65);
        sub_1D6007850(v64, v22, v68);
      }

      else
      {
        v69 = sub_1D72646CC();
        sub_1D6007830(v66, v67, v68);
        sub_1D6007830(v64, v22, v65);
        sub_1D6007850(v64, v22, v65);
        sub_1D6007850(v66, v67, v68);
        if ((v69 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if ((v65 ^ v68))
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v65 >> 6 == 1)
    {
      if ((v68 & 0xC0) != 0x40)
      {
        goto LABEL_150;
      }

      switch(v22)
      {
        case 0:
          if (v67)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0, *v60);
          sub_1D6007830(v66, 0, v68);
          sub_1D6007830(v64, 0, v65);
          sub_1D6007830(v66, 0, v68);
          sub_1D6007830(v64, 0, v65);
          sub_1D5CBA0FC(v64, 0);
          sub_1D5CBA0FC(v66, 0);
          sub_1D6007850(v64, 0, v65);
          sub_1D6007850(v66, 0, v68);
          sub_1D6007850(v66, 0, v68);
          sub_1D6007850(v64, 0, v65);
          sub_1D6007850(v66, 0, v68);
          v61 = v64;
          v62 = 0;
          goto LABEL_24;
        case 1:
          if (v67 != 1)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 1uLL, *v60);
          sub_1D6007830(v66, 1uLL, v68);
          sub_1D6007830(v64, 1uLL, v65);
          sub_1D6007830(v66, 1uLL, v68);
          sub_1D6007830(v64, 1uLL, v65);
          sub_1D5CBA0FC(v64, 1uLL);
          sub_1D5CBA0FC(v66, 1uLL);
          sub_1D6007850(v64, 1uLL, v65);
          sub_1D6007850(v66, 1uLL, v68);
          sub_1D6007850(v66, 1uLL, v68);
          sub_1D6007850(v64, 1uLL, v65);
          sub_1D6007850(v66, 1uLL, v68);
          v61 = v64;
          v62 = 1;
          goto LABEL_24;
        case 2:
          if (v67 != 2)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 2uLL, *v60);
          sub_1D6007830(v66, 2uLL, v68);
          sub_1D6007830(v64, 2uLL, v65);
          sub_1D6007830(v66, 2uLL, v68);
          sub_1D6007830(v64, 2uLL, v65);
          sub_1D5CBA0FC(v64, 2uLL);
          sub_1D5CBA0FC(v66, 2uLL);
          sub_1D6007850(v64, 2uLL, v65);
          sub_1D6007850(v66, 2uLL, v68);
          sub_1D6007850(v66, 2uLL, v68);
          sub_1D6007850(v64, 2uLL, v65);
          sub_1D6007850(v66, 2uLL, v68);
          v61 = v64;
          v62 = 2;
          goto LABEL_24;
        case 3:
          if (v67 != 3)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 3uLL, *v60);
          sub_1D6007830(v66, 3uLL, v68);
          sub_1D6007830(v64, 3uLL, v65);
          sub_1D6007830(v66, 3uLL, v68);
          sub_1D6007830(v64, 3uLL, v65);
          sub_1D5CBA0FC(v64, 3uLL);
          sub_1D5CBA0FC(v66, 3uLL);
          sub_1D6007850(v64, 3uLL, v65);
          sub_1D6007850(v66, 3uLL, v68);
          sub_1D6007850(v66, 3uLL, v68);
          sub_1D6007850(v64, 3uLL, v65);
          sub_1D6007850(v66, 3uLL, v68);
          v61 = v64;
          v62 = 3;
          goto LABEL_24;
        case 4:
          if (v67 != 4)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 4uLL, *v60);
          sub_1D6007830(v66, 4uLL, v68);
          sub_1D6007830(v64, 4uLL, v65);
          sub_1D6007830(v66, 4uLL, v68);
          sub_1D6007830(v64, 4uLL, v65);
          sub_1D5CBA0FC(v64, 4uLL);
          sub_1D5CBA0FC(v66, 4uLL);
          sub_1D6007850(v64, 4uLL, v65);
          sub_1D6007850(v66, 4uLL, v68);
          sub_1D6007850(v66, 4uLL, v68);
          sub_1D6007850(v64, 4uLL, v65);
          sub_1D6007850(v66, 4uLL, v68);
          v61 = v64;
          v62 = 4;
          goto LABEL_24;
        case 5:
          if (v67 != 5)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 5uLL, *v60);
          sub_1D6007830(v66, 5uLL, v68);
          sub_1D6007830(v64, 5uLL, v65);
          sub_1D6007830(v66, 5uLL, v68);
          sub_1D6007830(v64, 5uLL, v65);
          sub_1D5CBA0FC(v64, 5uLL);
          sub_1D5CBA0FC(v66, 5uLL);
          sub_1D6007850(v64, 5uLL, v65);
          sub_1D6007850(v66, 5uLL, v68);
          sub_1D6007850(v66, 5uLL, v68);
          sub_1D6007850(v64, 5uLL, v65);
          sub_1D6007850(v66, 5uLL, v68);
          v61 = v64;
          v62 = 5;
          goto LABEL_24;
        case 6:
          if (v67 != 6)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 6uLL, *v60);
          sub_1D6007830(v66, 6uLL, v68);
          sub_1D6007830(v64, 6uLL, v65);
          sub_1D6007830(v66, 6uLL, v68);
          sub_1D6007830(v64, 6uLL, v65);
          sub_1D5CBA0FC(v64, 6uLL);
          sub_1D5CBA0FC(v66, 6uLL);
          sub_1D6007850(v64, 6uLL, v65);
          sub_1D6007850(v66, 6uLL, v68);
          sub_1D6007850(v66, 6uLL, v68);
          sub_1D6007850(v64, 6uLL, v65);
          sub_1D6007850(v66, 6uLL, v68);
          v61 = v64;
          v62 = 6;
          goto LABEL_24;
        case 7:
          if (v67 != 7)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 7uLL, *v60);
          sub_1D6007830(v66, 7uLL, v68);
          sub_1D6007830(v64, 7uLL, v65);
          sub_1D6007830(v66, 7uLL, v68);
          sub_1D6007830(v64, 7uLL, v65);
          sub_1D5CBA0FC(v64, 7uLL);
          sub_1D5CBA0FC(v66, 7uLL);
          sub_1D6007850(v64, 7uLL, v65);
          sub_1D6007850(v66, 7uLL, v68);
          sub_1D6007850(v66, 7uLL, v68);
          sub_1D6007850(v64, 7uLL, v65);
          sub_1D6007850(v66, 7uLL, v68);
          v61 = v64;
          v62 = 7;
          goto LABEL_24;
        case 8:
          if (v67 != 8)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 8uLL, *v60);
          sub_1D6007830(v66, 8uLL, v68);
          sub_1D6007830(v64, 8uLL, v65);
          sub_1D6007830(v66, 8uLL, v68);
          sub_1D6007830(v64, 8uLL, v65);
          sub_1D5CBA0FC(v64, 8uLL);
          sub_1D5CBA0FC(v66, 8uLL);
          sub_1D6007850(v64, 8uLL, v65);
          sub_1D6007850(v66, 8uLL, v68);
          sub_1D6007850(v66, 8uLL, v68);
          sub_1D6007850(v64, 8uLL, v65);
          sub_1D6007850(v66, 8uLL, v68);
          v61 = v64;
          v62 = 8;
          goto LABEL_24;
        case 9:
          if (v67 != 9)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 9uLL, *v60);
          sub_1D6007830(v66, 9uLL, v68);
          sub_1D6007830(v64, 9uLL, v65);
          sub_1D6007830(v66, 9uLL, v68);
          sub_1D6007830(v64, 9uLL, v65);
          sub_1D5CBA0FC(v64, 9uLL);
          sub_1D5CBA0FC(v66, 9uLL);
          sub_1D6007850(v64, 9uLL, v65);
          sub_1D6007850(v66, 9uLL, v68);
          sub_1D6007850(v66, 9uLL, v68);
          sub_1D6007850(v64, 9uLL, v65);
          sub_1D6007850(v66, 9uLL, v68);
          v61 = v64;
          v62 = 9;
          goto LABEL_24;
        case 10:
          if (v67 != 10)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xAuLL, *v60);
          sub_1D6007830(v66, 0xAuLL, v68);
          sub_1D6007830(v64, 0xAuLL, v65);
          sub_1D6007830(v66, 0xAuLL, v68);
          sub_1D6007830(v64, 0xAuLL, v65);
          sub_1D5CBA0FC(v64, 0xAuLL);
          sub_1D5CBA0FC(v66, 0xAuLL);
          sub_1D6007850(v64, 0xAuLL, v65);
          sub_1D6007850(v66, 0xAuLL, v68);
          sub_1D6007850(v66, 0xAuLL, v68);
          sub_1D6007850(v64, 0xAuLL, v65);
          sub_1D6007850(v66, 0xAuLL, v68);
          v61 = v64;
          v62 = 10;
          goto LABEL_24;
        case 11:
          if (v67 != 11)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xBuLL, *v60);
          sub_1D6007830(v66, 0xBuLL, v68);
          sub_1D6007830(v64, 0xBuLL, v65);
          sub_1D6007830(v66, 0xBuLL, v68);
          sub_1D6007830(v64, 0xBuLL, v65);
          sub_1D5CBA0FC(v64, 0xBuLL);
          sub_1D5CBA0FC(v66, 0xBuLL);
          sub_1D6007850(v64, 0xBuLL, v65);
          sub_1D6007850(v66, 0xBuLL, v68);
          sub_1D6007850(v66, 0xBuLL, v68);
          sub_1D6007850(v64, 0xBuLL, v65);
          sub_1D6007850(v66, 0xBuLL, v68);
          v61 = v64;
          v62 = 11;
          goto LABEL_24;
        case 12:
          if (v67 != 12)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xCuLL, *v60);
          sub_1D6007830(v66, 0xCuLL, v68);
          sub_1D6007830(v64, 0xCuLL, v65);
          sub_1D6007830(v66, 0xCuLL, v68);
          sub_1D6007830(v64, 0xCuLL, v65);
          sub_1D5CBA0FC(v64, 0xCuLL);
          sub_1D5CBA0FC(v66, 0xCuLL);
          sub_1D6007850(v64, 0xCuLL, v65);
          sub_1D6007850(v66, 0xCuLL, v68);
          sub_1D6007850(v66, 0xCuLL, v68);
          sub_1D6007850(v64, 0xCuLL, v65);
          sub_1D6007850(v66, 0xCuLL, v68);
          v61 = v64;
          v62 = 12;
          goto LABEL_24;
        case 13:
          if (v67 != 13)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xDuLL, *v60);
          sub_1D6007830(v66, 0xDuLL, v68);
          sub_1D6007830(v64, 0xDuLL, v65);
          sub_1D6007830(v66, 0xDuLL, v68);
          sub_1D6007830(v64, 0xDuLL, v65);
          sub_1D5CBA0FC(v64, 0xDuLL);
          sub_1D5CBA0FC(v66, 0xDuLL);
          sub_1D6007850(v64, 0xDuLL, v65);
          sub_1D6007850(v66, 0xDuLL, v68);
          sub_1D6007850(v66, 0xDuLL, v68);
          sub_1D6007850(v64, 0xDuLL, v65);
          sub_1D6007850(v66, 0xDuLL, v68);
          v61 = v64;
          v62 = 13;
          goto LABEL_24;
        case 14:
          if (v67 != 14)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xEuLL, *v60);
          sub_1D6007830(v66, 0xEuLL, v68);
          sub_1D6007830(v64, 0xEuLL, v65);
          sub_1D6007830(v66, 0xEuLL, v68);
          sub_1D6007830(v64, 0xEuLL, v65);
          sub_1D5CBA0FC(v64, 0xEuLL);
          sub_1D5CBA0FC(v66, 0xEuLL);
          sub_1D6007850(v64, 0xEuLL, v65);
          sub_1D6007850(v66, 0xEuLL, v68);
          sub_1D6007850(v66, 0xEuLL, v68);
          sub_1D6007850(v64, 0xEuLL, v65);
          sub_1D6007850(v66, 0xEuLL, v68);
          v61 = v64;
          v62 = 14;
          goto LABEL_24;
        case 15:
          if (v67 != 15)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xFuLL, *v60);
          sub_1D6007830(v66, 0xFuLL, v68);
          sub_1D6007830(v64, 0xFuLL, v65);
          sub_1D6007830(v66, 0xFuLL, v68);
          sub_1D6007830(v64, 0xFuLL, v65);
          sub_1D5CBA0FC(v64, 0xFuLL);
          sub_1D5CBA0FC(v66, 0xFuLL);
          sub_1D6007850(v64, 0xFuLL, v65);
          sub_1D6007850(v66, 0xFuLL, v68);
          sub_1D6007850(v66, 0xFuLL, v68);
          sub_1D6007850(v64, 0xFuLL, v65);
          sub_1D6007850(v66, 0xFuLL, v68);
          v61 = v64;
          v62 = 15;
          goto LABEL_24;
        default:
          if (v67 < 0x10)
          {
            sub_1D6007830(*(v10 - 2), *(v10 - 1), *v10);
LABEL_177:
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D5CBA0FC(v64, v22);
            sub_1D5CBA0FC(v66, v67);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v66, v67, v68);
            sub_1D6007850(v66, v67, v68);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v66, v67, v68);
            sub_1D6007850(v64, v22, v65);
            goto LABEL_18;
          }

          if (v64 == v66 && v22 == v67)
          {
            sub_1D6007830(*(v10 - 2), *(v10 - 1), *v60);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v64, v22, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v64, v22, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v64, v22, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D5CBA0FC(v64, v22);
            sub_1D5CBA0FC(v64, v22);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v64, v22, v68);
            sub_1D6007850(v64, v22, v68);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v64, v22, v68);
            v61 = v64;
            v62 = v22;
LABEL_24:
            v63 = v65;
            goto LABEL_25;
          }

          v70 = sub_1D72646CC();
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D5CBA0FC(v64, v22);
          sub_1D5CBA0FC(v66, v67);
          sub_1D6007850(v64, v22, v65);
          sub_1D6007850(v66, v67, v68);
          sub_1D6007850(v66, v67, v68);
          sub_1D6007850(v64, v22, v65);
          sub_1D6007850(v66, v67, v68);
          sub_1D6007850(v64, v22, v65);
          if ((v70 & 1) == 0)
          {
            goto LABEL_18;
          }

          break;
      }

LABEL_26:
      ++v59;
      v60 += 24;
      v10 += 24;
      if (v132 == v59)
      {
        goto LABEL_129;
      }

      goto LABEL_27;
    }

    if (!(v22 | v64) && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v67 | v66 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 0;
        goto LABEL_180;
      }

      sub_1D6007850(0, 0, 0x80u);
      v61 = 0;
      goto LABEL_128;
    }

    if (v64 == 1 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 1 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 1;
        goto LABEL_180;
      }

      sub_1D6007850(1, 0, 0x80u);
      v61 = 1;
      goto LABEL_128;
    }

    if (v64 == 2 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 2 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 2;
        goto LABEL_180;
      }

      sub_1D6007850(2, 0, 0x80u);
      v61 = 2;
      goto LABEL_128;
    }

    if (v64 == 3 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 3 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 3;
        goto LABEL_180;
      }

      sub_1D6007850(3, 0, 0x80u);
      v61 = 3;
      goto LABEL_128;
    }

    if (v64 == 4 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 4 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 4;
        goto LABEL_180;
      }

      sub_1D6007850(4, 0, 0x80u);
      v61 = 4;
      goto LABEL_128;
    }

    if (v64 != 5 || v22 || v65 != 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 6 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 6;
        goto LABEL_180;
      }

      sub_1D6007850(6, 0, 0x80u);
      v61 = 6;
LABEL_128:
      v62 = 0;
      v63 = 0x80;
LABEL_25:
      sub_1D6007850(v61, v62, v63);
      goto LABEL_26;
    }

    if ((v68 & 0xC0) == 0x80 && v66 == 5 && !v67 && v68 == 128)
    {
      sub_1D6007850(5, 0, 0x80u);
      v61 = 5;
      goto LABEL_128;
    }

    sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
    v81 = 5;
LABEL_180:
    v82 = 0;
    v83 = 0x80;
LABEL_181:
    sub_1D6007850(v81, v82, v83);
    sub_1D6007850(v66, v67, v68);
LABEL_18:
    v54 = v129;
    sub_1D5BF1AEC(v129, type metadata accessor for FormatDerivedDataResultOptionReference);
    a2 = (v130 + 1) & v125;
    if (((*(v127 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_182;
    }
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  sub_1D5BF1AEC(v10, sub_1D60077D8);
LABEL_188:
  sub_1D5BF1AEC(v22, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5BF1AEC(v129, type metadata accessor for FormatDerivedDataResultOptionReference);
  result = sub_1D726492C();
  __break(1u);
  return result;
}