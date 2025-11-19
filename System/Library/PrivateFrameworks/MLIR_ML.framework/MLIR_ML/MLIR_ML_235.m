void llvm::microsoftDemangle()
{
  v0 = &unk_2868A6FE8;
  v1 = 0;
  v2 = 0;
  operator new();
}

void llvm::ms_demangle::Demangler::~Demangler(llvm::ms_demangle::Demangler *this)
{
  *this = &unk_2868A6FE8;
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x259C63150](*v2, 0x1000C8077774924);
        v2 = *(this + 2);
      }

      v3 = v2[3];
      MEMORY[0x259C63180]();
      *(this + 2) = v3;
      v2 = v3;
    }

    while (v3);
  }
}

{
  *this = &unk_2868A6FE8;
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x259C63150](*v2, 0x1000C8077774924);
        v2 = *(this + 2);
      }

      v3 = v2[3];
      MEMORY[0x259C63180]();
      *(this + 2) = v3;
      v2 = v3;
    }

    while (v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::ms_demangle::Node::toString(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = 0;
  *__len = 0u;
  v8 = -1;
  v9 = 1;
  (*(*a1 + 16))(a1, __len, a2);
  v4 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = __len[0];
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  a3[23] = __len[1];
  if (v4)
  {
    memmove(a3, v5, v4);
  }

  a3[v4] = 0;
  free(__len[0]);
}

_DWORD *llvm::ms_demangle::PrimitiveTypeNode::outputPre(_DWORD *result, void *a2)
{
  v3 = result;
  switch(result[4])
  {
    case 0:
      v5 = a2 + 1;
      v4 = a2[1];
      v6 = a2[2];
      result = *a2;
      if (v4 + 4 <= v6)
      {
        goto LABEL_8;
      }

      v7 = v4 + 996;
      v8 = 2 * v6;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      a2[2] = v9;
      result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v4 = *v5;
LABEL_8:
      v10 = 1684631414;
      goto LABEL_115;
    case 1:
      v5 = a2 + 1;
      v4 = a2[1];
      v68 = a2[2];
      result = *a2;
      if (v4 + 4 <= v68)
      {
        goto LABEL_85;
      }

      v69 = v4 + 996;
      v70 = 2 * v68;
      if (v70 <= v69)
      {
        v71 = v69;
      }

      else
      {
        v71 = v70;
      }

      a2[2] = v71;
      result = malloc_type_realloc(result, v71, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v4 = *v5;
LABEL_85:
      v10 = 1819242338;
      goto LABEL_115;
    case 2:
      v5 = a2 + 1;
      v4 = a2[1];
      v46 = a2[2];
      result = *a2;
      if (v4 + 4 <= v46)
      {
        goto LABEL_57;
      }

      v47 = v4 + 996;
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      a2[2] = v49;
      result = malloc_type_realloc(result, v49, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v4 = *v5;
LABEL_57:
      v10 = 1918986339;
      goto LABEL_115;
    case 3:
      v5 = a2 + 1;
      v55 = a2[1];
      v56 = a2[2];
      result = *a2;
      if (v55 + 11 <= v56)
      {
        goto LABEL_71;
      }

      v57 = v55 + 1003;
      v58 = 2 * v56;
      if (v58 <= v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = v58;
      }

      a2[2] = v59;
      result = malloc_type_realloc(result, v59, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v55 = *v5;
LABEL_71:
      v60 = result + v55;
      *v60 = *"signed char";
      v61 = 1918986339;
      goto LABEL_169;
    case 4:
      v5 = a2 + 1;
      v30 = a2[1];
      v31 = a2[2];
      result = *a2;
      if (v30 + 13 <= v31)
      {
        goto LABEL_36;
      }

      v32 = v30 + 1005;
      v33 = 2 * v31;
      if (v33 <= v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = v33;
      }

      a2[2] = v34;
      result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v30 = *v5;
LABEL_36:
      v35 = "unsigned char";
      goto LABEL_123;
    case 5:
      v5 = a2 + 1;
      v83 = a2[1];
      v84 = a2[2];
      result = *a2;
      if (v83 + 7 <= v84)
      {
        goto LABEL_106;
      }

      v85 = v83 + 999;
      v86 = 2 * v84;
      if (v86 <= v85)
      {
        v87 = v85;
      }

      else
      {
        v87 = v86;
      }

      a2[2] = v87;
      result = malloc_type_realloc(result, v87, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v83 = *v5;
LABEL_106:
      v16 = (result + v83);
      *(v16 + 3) = 1952397426;
      v17 = 1918986339;
      goto LABEL_107;
    case 6:
      v5 = a2 + 1;
      v62 = a2[1];
      v97 = a2[2];
      result = *a2;
      if (v62 + 8 <= v97)
      {
        goto LABEL_130;
      }

      v98 = v62 + 1000;
      v99 = 2 * v97;
      if (v99 <= v98)
      {
        v100 = v98;
      }

      else
      {
        v100 = v99;
      }

      a2[2] = v100;
      result = malloc_type_realloc(result, v100, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v62 = *v5;
LABEL_130:
      v67 = 0x363172616863;
      goto LABEL_131;
    case 7:
      v5 = a2 + 1;
      v62 = a2[1];
      v63 = a2[2];
      result = *a2;
      if (v62 + 8 <= v63)
      {
        goto LABEL_78;
      }

      v64 = v62 + 1000;
      v65 = 2 * v63;
      if (v65 <= v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = v65;
      }

      a2[2] = v66;
      result = malloc_type_realloc(result, v66, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v62 = *v5;
LABEL_78:
      v67 = 0x323372616863;
LABEL_131:
      *(result + v62) = v67 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      v29 = 8;
      goto LABEL_170;
    case 8:
      v5 = a2 + 1;
      v113 = a2[1];
      v114 = a2[2];
      result = *a2;
      if (v113 + 5 <= v114)
      {
        goto LABEL_152;
      }

      v115 = v113 + 997;
      v116 = 2 * v114;
      if (v116 <= v115)
      {
        v117 = v115;
      }

      else
      {
        v117 = v116;
      }

      a2[2] = v117;
      result = malloc_type_realloc(result, v117, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v113 = *v5;
LABEL_152:
      v77 = result + v113;
      v77[4] = 116;
      v78 = 1919903859;
      goto LABEL_153;
    case 9:
      v5 = a2 + 1;
      v40 = a2[1];
      v41 = a2[2];
      result = *a2;
      if (v40 + 14 <= v41)
      {
        goto LABEL_50;
      }

      v42 = v40 + 1006;
      v43 = 2 * v41;
      if (v43 <= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v43;
      }

      a2[2] = v44;
      result = malloc_type_realloc(result, v44, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v40 = *v5;
LABEL_50:
      v45 = "unsigned short";
      goto LABEL_161;
    case 0xA:
      v5 = a2 + 1;
      v107 = a2[1];
      v108 = a2[2];
      result = *a2;
      if (v107 + 3 <= v108)
      {
        goto LABEL_145;
      }

      v109 = v107 + 995;
      v110 = 2 * v108;
      if (v110 <= v109)
      {
        v111 = v109;
      }

      else
      {
        v111 = v110;
      }

      a2[2] = v111;
      result = malloc_type_realloc(result, v111, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v107 = *v5;
LABEL_145:
      v112 = result + v107;
      v112[2] = 116;
      *v112 = 28265;
      v29 = 3;
      goto LABEL_170;
    case 0xB:
      v5 = a2 + 1;
      v23 = a2[1];
      v24 = a2[2];
      result = *a2;
      if (v23 + 12 <= v24)
      {
        goto LABEL_29;
      }

      v25 = v23 + 1004;
      v26 = 2 * v24;
      if (v26 <= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      a2[2] = v27;
      result = malloc_type_realloc(result, v27, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v23 = *v5;
LABEL_29:
      v28 = result + v23;
      *v28 = *"unsigned int";
      *(v28 + 2) = 1953392928;
      v29 = 12;
      goto LABEL_170;
    case 0xC:
      v5 = a2 + 1;
      v4 = a2[1];
      v36 = a2[2];
      result = *a2;
      if (v4 + 4 <= v36)
      {
        goto LABEL_43;
      }

      v37 = v4 + 996;
      v38 = 2 * v36;
      if (v38 <= v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      a2[2] = v39;
      result = malloc_type_realloc(result, v39, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v4 = *v5;
LABEL_43:
      v10 = 1735290732;
      goto LABEL_115;
    case 0xD:
      v5 = a2 + 1;
      v30 = a2[1];
      v92 = a2[2];
      result = *a2;
      if (v30 + 13 <= v92)
      {
        goto LABEL_122;
      }

      v93 = v30 + 1005;
      v94 = 2 * v92;
      if (v94 <= v93)
      {
        v95 = v93;
      }

      else
      {
        v95 = v94;
      }

      a2[2] = v95;
      result = malloc_type_realloc(result, v95, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v30 = *v5;
LABEL_122:
      v35 = "unsigned long";
LABEL_123:
      v96 = (result + v30);
      *v96 = *v35;
      *(v96 + 5) = *(v35 + 5);
      v29 = 13;
      goto LABEL_170;
    case 0xE:
      v5 = a2 + 1;
      v18 = a2[1];
      v19 = a2[2];
      result = *a2;
      if (v18 + 7 <= v19)
      {
        goto LABEL_22;
      }

      v20 = v18 + 999;
      v21 = 2 * v19;
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      a2[2] = v22;
      result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v18 = *v5;
LABEL_22:
      v16 = (result + v18);
      *(v16 + 3) = 875983982;
      v17 = 1852399455;
      goto LABEL_107;
    case 0xF:
      v5 = a2 + 1;
      v50 = a2[1];
      v51 = a2[2];
      result = *a2;
      if (v50 + 16 <= v51)
      {
        goto LABEL_64;
      }

      v52 = v50 + 1008;
      v53 = 2 * v51;
      if (v53 <= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      a2[2] = v54;
      result = malloc_type_realloc(result, v54, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v50 = *v5;
LABEL_64:
      *(result + v50) = *"unint64_t";
      v29 = 16;
      goto LABEL_170;
    case 0x10:
      v5 = a2 + 1;
      v11 = a2[1];
      v12 = a2[2];
      result = *a2;
      if (v11 + 7 <= v12)
      {
        goto LABEL_15;
      }

      v13 = v11 + 999;
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      a2[2] = v15;
      result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v11 = *v5;
LABEL_15:
      v16 = (result + v11);
      *(v16 + 3) = 1952412257;
      v17 = 1634231159;
LABEL_107:
      *v16 = v17;
      v29 = 7;
      goto LABEL_170;
    case 0x11:
      v5 = a2 + 1;
      v72 = a2[1];
      v73 = a2[2];
      result = *a2;
      if (v72 + 5 <= v73)
      {
        goto LABEL_92;
      }

      v74 = v72 + 997;
      v75 = 2 * v73;
      if (v75 <= v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = v75;
      }

      a2[2] = v76;
      result = malloc_type_realloc(result, v76, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v72 = *v5;
LABEL_92:
      v77 = result + v72;
      v77[4] = 116;
      v78 = 1634692198;
LABEL_153:
      *v77 = v78;
      v29 = 5;
      goto LABEL_170;
    case 0x12:
      v5 = a2 + 1;
      v101 = a2[1];
      v102 = a2[2];
      result = *a2;
      if (v101 + 6 <= v102)
      {
        goto LABEL_138;
      }

      v103 = v101 + 998;
      v104 = 2 * v102;
      if (v104 <= v103)
      {
        v105 = v103;
      }

      else
      {
        v105 = v104;
      }

      a2[2] = v105;
      result = malloc_type_realloc(result, v105, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v101 = *v5;
LABEL_138:
      v106 = result + v101;
      *(v106 + 2) = 25964;
      *v106 = 1651863396;
      v29 = 6;
      goto LABEL_170;
    case 0x13:
      v5 = a2 + 1;
      v123 = a2[1];
      v124 = a2[2];
      result = *a2;
      if (v123 + 11 <= v124)
      {
        goto LABEL_168;
      }

      v125 = v123 + 1003;
      v126 = 2 * v124;
      if (v126 <= v125)
      {
        v127 = v125;
      }

      else
      {
        v127 = v126;
      }

      a2[2] = v127;
      result = malloc_type_realloc(result, v127, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v123 = *v5;
LABEL_168:
      v60 = result + v123;
      *v60 = *"long double";
      v61 = 1701601909;
LABEL_169:
      *(v60 + 7) = v61;
      v29 = 11;
      goto LABEL_170;
    case 0x14:
      v5 = a2 + 1;
      v40 = a2[1];
      v79 = a2[2];
      result = *a2;
      if (v40 + 14 <= v79)
      {
        goto LABEL_99;
      }

      v80 = v40 + 1006;
      v81 = 2 * v79;
      if (v81 <= v80)
      {
        v82 = v80;
      }

      else
      {
        v82 = v81;
      }

      a2[2] = v82;
      result = malloc_type_realloc(result, v82, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v40 = *v5;
LABEL_99:
      v45 = "std::nullptr_t";
      goto LABEL_161;
    case 0x15:
      v5 = a2 + 1;
      v4 = a2[1];
      v88 = a2[2];
      result = *a2;
      if (v4 + 4 <= v88)
      {
        goto LABEL_114;
      }

      v89 = v4 + 996;
      v90 = 2 * v88;
      if (v90 <= v89)
      {
        v91 = v89;
      }

      else
      {
        v91 = v90;
      }

      a2[2] = v91;
      result = malloc_type_realloc(result, v91, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_176;
      }

      v4 = *v5;
LABEL_114:
      v10 = 1869903201;
LABEL_115:
      *(result + v4) = v10;
      v29 = 4;
      goto LABEL_170;
    case 0x16:
      v5 = a2 + 1;
      v40 = a2[1];
      v118 = a2[2];
      result = *a2;
      if (v40 + 14 <= v118)
      {
        goto LABEL_160;
      }

      v119 = v40 + 1006;
      v120 = 2 * v118;
      if (v120 <= v119)
      {
        v121 = v119;
      }

      else
      {
        v121 = v120;
      }

      a2[2] = v121;
      result = malloc_type_realloc(result, v121, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
LABEL_176:
        abort();
      }

      v40 = *v5;
LABEL_160:
      v45 = "decltype(auto)";
LABEL_161:
      v122 = (result + v40);
      *v122 = *v45;
      *(v122 + 6) = *(v45 + 6);
      v29 = 14;
LABEL_170:
      *v5 += v29;
LABEL_171:
      v128 = *(v3 + 12);
      if (v128)
      {
        v129 = outputQualifierIfPresent(a2, v128, 1, 1);
        v130 = outputQualifierIfPresent(a2, v128, 2, v129);

        return outputQualifierIfPresent(a2, v128, 32, v130);
      }

      return result;
    default:
      goto LABEL_171;
  }
}

char **llvm::itanium_demangle::OutputBuffer::operator<<(char **a1, const void *a2, size_t __n)
{
  if (__n)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = &v6[__n];
    v8 = a1[2];
    if (&v6[__n] > v8)
    {
      v9 = a2;
      if (2 * v8 <= (v7 + 992))
      {
        v10 = (v7 + 992);
      }

      else
      {
        v10 = 2 * v8;
      }

      a1[2] = v10;
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      *a1 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = a1[1];
      a2 = v9;
    }

    memcpy(&v6[v5], a2, __n);
    a1[1] += __n;
  }

  return a1;
}

uint64_t llvm::ms_demangle::NodeArrayNode::output(uint64_t result, char **a2, uint64_t a3, void *__src, size_t __n)
{
  v5 = *(result + 24);
  if (v5)
  {
    v10 = result;
    result = **(result + 16);
    if (result)
    {
      result = (*(*result + 16))(result, a2, a3);
      v5 = *(v10 + 24);
    }

    if (v5 >= 2)
    {
      if (__n)
      {
        v11 = 1;
        do
        {
          v13 = *a2;
          v14 = a2[1];
          v15 = &v14[__n];
          v16 = a2[2];
          if (&v14[__n] > v16)
          {
            if (2 * v16 <= (v15 + 992))
            {
              v17 = (v15 + 992);
            }

            else
            {
              v17 = 2 * v16;
            }

            a2[2] = v17;
            v13 = malloc_type_realloc(v13, v17, 0x100004077774924uLL);
            *a2 = v13;
            if (!v13)
            {
              abort();
            }

            v14 = a2[1];
          }

          memcpy(&v14[v13], __src, __n);
          a2[1] += __n;
          v12 = *(*(v10 + 16) + 8 * v11);
          result = (*(*v12 + 16))(v12, a2, a3);
          ++v11;
        }

        while (v11 < *(v10 + 24));
      }

      else
      {
        v18 = 1;
        do
        {
          v19 = *(*(v10 + 16) + 8 * v18);
          result = (*(*v19 + 16))(v19, a2, a3);
          ++v18;
        }

        while (v18 < *(v10 + 24));
      }
    }
  }

  return result;
}

char *llvm::ms_demangle::EncodedStringLiteralNode::output(uint64_t a1, char **a2)
{
  v4 = *(a1 + 44);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = a2 + 1;
      v5 = a2[1];
      v24 = a2[2];
      v8 = *a2;
      if ((v5 + 2) > v24)
      {
        v25 = (v5 + 994);
        v26 = 2 * v24;
        if (v26 <= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        a2[2] = v27;
        v8 = malloc_type_realloc(v8, v27, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_59;
        }

        v5 = *v6;
      }

      v12 = 8789;
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_36;
      }

      v6 = a2 + 1;
      v5 = a2[1];
      v13 = a2[2];
      v8 = *a2;
      if ((v5 + 2) > v13)
      {
        v14 = (v5 + 994);
        v15 = 2 * v13;
        if (v15 <= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        a2[2] = v16;
        v8 = malloc_type_realloc(v8, v16, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_59;
        }

        v5 = *v6;
      }

      v12 = 8780;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = a2 + 1;
      v17 = a2[1];
      v18 = a2[2];
      v19 = *a2;
      if ((v17 + 1) > v18)
      {
        v20 = (v17 + 993);
        v21 = 2 * v18;
        if (v21 <= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        a2[2] = v22;
        v19 = malloc_type_realloc(v19, v22, 0x100004077774924uLL);
        *a2 = v19;
        if (!v19)
        {
          goto LABEL_59;
        }

        v17 = *v6;
      }

      v17[v19] = 34;
      v23 = 1;
      goto LABEL_35;
    }

    if (v4 != 1)
    {
      goto LABEL_36;
    }

    v6 = a2 + 1;
    v5 = a2[1];
    v7 = a2[2];
    v8 = *a2;
    if ((v5 + 2) > v7)
    {
      v9 = (v5 + 994);
      v10 = 2 * v7;
      if (v10 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      a2[2] = v11;
      v8 = malloc_type_realloc(v8, v11, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_59;
      }

      v5 = *v6;
    }

    v12 = 8821;
  }

  *&v5[v8] = v12;
  v23 = 2;
LABEL_35:
  *v6 += v23;
LABEL_36:
  v28 = *(a1 + 32);
  v29 = a2[1];
  if (v28)
  {
    v30 = *(a1 + 24);
    v31 = v29 + v28;
    v32 = a2[2];
    v33 = *a2;
    if (v29 + v28 > v32)
    {
      if (2 * v32 <= v31 + 992)
      {
        v34 = v31 + 992;
      }

      else
      {
        v34 = 2 * v32;
      }

      a2[2] = v34;
      v33 = malloc_type_realloc(v33, v34, 0x100004077774924uLL);
      *a2 = v33;
      if (!v33)
      {
        goto LABEL_59;
      }

      v29 = a2[1];
    }

    memcpy(&v33[v29], v30, v28);
    v29 = &a2[1][v28];
    a2[1] = v29;
  }

  v35 = a2[2];
  result = *a2;
  if (v29 + 1 > v35)
  {
    v37 = v29 + 993;
    v38 = 2 * v35;
    if (v38 <= v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = v38;
    }

    a2[2] = v39;
    result = malloc_type_realloc(result, v39, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_59;
    }

    v29 = a2[1];
  }

  result[v29] = 34;
  v40 = a2[1];
  v41 = v40 + 1;
  a2[1] = v40 + 1;
  if (*(a1 + 40) != 1)
  {
    return result;
  }

  v42 = a2[2];
  result = *a2;
  if ((v40 + 4) > v42)
  {
    if (2 * v42 <= (v40 + 996))
    {
      v43 = (v40 + 996);
    }

    else
    {
      v43 = 2 * v42;
    }

    a2[2] = v43;
    result = malloc_type_realloc(result, v43, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v41 = a2[1];
      goto LABEL_57;
    }

LABEL_59:
    abort();
  }

LABEL_57:
  v44 = &v41[result];
  v44[2] = 46;
  *v44 = 11822;
  a2[1] += 3;
  return result;
}

char *llvm::ms_demangle::IntegerLiteralNode::output(char *result, char **a2)
{
  v3 = result;
  v19 = *MEMORY[0x277D85DE8];
  if (result[24] == 1)
  {
    result = *a2;
    v4 = a2[1];
    v5 = v4 + 1;
    v6 = a2[2];
    if ((v4 + 1) > v6)
    {
      v7 = v3;
      if (2 * v6 <= (v4 + 993))
      {
        v8 = (v4 + 993);
      }

      else
      {
        v8 = 2 * v6;
      }

      a2[2] = v8;
      result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_20;
      }

      v4 = a2[1];
      v5 = v4 + 1;
      v3 = v7;
    }

    a2[1] = v5;
    v4[result] = 45;
  }

  v9 = 0;
  v10 = *(v3 + 2);
  do
  {
    v18[v9-- + 20] = (v10 % 0xA) | 0x30;
    v11 = v10 >= 9;
    v12 = v10 == 9;
    v10 /= 0xAuLL;
  }

  while (!v12 && v11);
  if (v9)
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = &v14[-v9];
    v16 = a2[2];
    if (&v14[-v9] <= v16)
    {
LABEL_18:
      result = memcpy(&v14[v13], &v18[v9 + 21], -v9);
      a2[1] -= v9;
      return result;
    }

    if (2 * v16 <= (v15 + 992))
    {
      v17 = (v15 + 992);
    }

    else
    {
      v17 = 2 * v16;
    }

    a2[2] = v17;
    v13 = malloc_type_realloc(v13, v17, 0x100004077774924uLL);
    *a2 = v13;
    if (v13)
    {
      v14 = a2[1];
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  return result;
}

char *llvm::ms_demangle::TemplateParameterReferenceNode::output(uint64_t a1, char **a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) < 1)
  {
    if (*(a1 + 56) != 1)
    {
      goto LABEL_18;
    }

    v6 = a2 + 1;
    v5 = a2[1];
    v14 = a2[2];
    v8 = *a2;
    if ((v5 + 1) > v14)
    {
      v15 = a3;
      v16 = (v5 + 993);
      v17 = 2 * v14;
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      a2[2] = v18;
      v8 = malloc_type_realloc(v8, v18, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_78;
      }

      v5 = *v6;
      a3 = v15;
    }

    v13 = 38;
  }

  else
  {
    v6 = a2 + 1;
    v5 = a2[1];
    v7 = a2[2];
    v8 = *a2;
    if ((v5 + 1) > v7)
    {
      v9 = a3;
      v10 = (v5 + 993);
      v11 = 2 * v7;
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      a2[2] = v12;
      v8 = malloc_type_realloc(v8, v12, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_78;
      }

      v5 = *v6;
      a3 = v9;
    }

    v13 = 123;
  }

  v5[v8] = v13;
  ++*v6;
LABEL_18:
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3);
    if (*(a1 + 24) < 1)
    {
      return result;
    }

    result = *a2;
    v20 = a2[1];
    v21 = a2[2];
    if ((v20 + 2) > v21)
    {
      v22 = (v20 + 994);
      v23 = 2 * v21;
      if (v23 <= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v23;
      }

      a2[2] = v24;
      result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_78;
      }

      v20 = a2[1];
    }

    *&v20[result] = 8236;
    a2[1] += 2;
  }

  LODWORD(v25) = *(a1 + 24);
  if (v25 < 1)
  {
    return result;
  }

  v26 = *(a1 + 32);
  if (v26 >= 0)
  {
    v27 = *(a1 + 32);
  }

  else
  {
    v27 = -v26;
  }

  v28 = 20;
  do
  {
    v54[v28--] = (v27 % 0xA) | 0x30;
    v29 = v27 >= 9;
    v30 = v27 == 9;
    v27 /= 0xAuLL;
  }

  while (!v30 && v29);
  if (v26 < 0)
  {
    v54[v28] = 45;
    if (v28 == 21)
    {
LABEL_35:
      if (v25 <= 1)
      {
        goto LABEL_69;
      }

      goto LABEL_45;
    }
  }

  else if (++v28 == 21)
  {
    goto LABEL_35;
  }

  v31 = *a2;
  v32 = a2[1];
  v33 = &v32[21 - v28];
  v34 = a2[2];
  if (v33 > v34)
  {
    if (2 * v34 <= v33 + 992)
    {
      v35 = v33 + 992;
    }

    else
    {
      v35 = 2 * v34;
    }

    a2[2] = v35;
    v31 = malloc_type_realloc(v31, v35, 0x100004077774924uLL);
    *a2 = v31;
    if (!v31)
    {
      goto LABEL_78;
    }

    v32 = a2[1];
  }

  result = memcpy(&v32[v31], &v54[v28], 21 - v28);
  a2[1] += 21 - v28;
  LODWORD(v25) = *(a1 + 24);
  if (v25 > 1)
  {
LABEL_45:
    v36 = 1;
    v37 = a2[1];
    do
    {
      v38 = a2[2];
      result = *a2;
      if (v37 + 2 > v38)
      {
        v39 = v37 + 994;
        v40 = 2 * v38;
        if (v40 <= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        a2[2] = v41;
        result = malloc_type_realloc(result, v41, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_78;
        }

        v37 = a2[1];
      }

      *&result[v37] = 8236;
      v37 = (a2[1] + 2);
      a2[1] = v37;
      v42 = *(a1 + 32 + 8 * v36);
      if (v42 >= 0)
      {
        v43 = *(a1 + 32 + 8 * v36);
      }

      else
      {
        v43 = -v42;
      }

      v44 = 20;
      do
      {
        v54[v44--] = (v43 % 0xA) | 0x30;
        v29 = v43 >= 9;
        v30 = v43 == 9;
        v43 /= 0xAuLL;
      }

      while (!v30 && v29);
      if (v42 < 0)
      {
        v54[v44] = 45;
        if (v44 == 21)
        {
          goto LABEL_47;
        }
      }

      else if (++v44 == 21)
      {
        goto LABEL_47;
      }

      v45 = v37 + 21 - v44;
      v46 = a2[2];
      v47 = *a2;
      if (v45 > v46)
      {
        if (2 * v46 <= v45 + 992)
        {
          v48 = v45 + 992;
        }

        else
        {
          v48 = 2 * v46;
        }

        a2[2] = v48;
        v47 = malloc_type_realloc(v47, v48, 0x100004077774924uLL);
        *a2 = v47;
        if (!v47)
        {
          goto LABEL_78;
        }

        v37 = a2[1];
      }

      result = memcpy(&v47[v37], &v54[v44], 21 - v44);
      v37 = &a2[1][21 - v44];
      a2[1] = v37;
LABEL_47:
      ++v36;
      v25 = *(a1 + 24);
    }

    while (v36 < v25);
  }

LABEL_69:
  if (v25 < 1)
  {
    return result;
  }

  result = *a2;
  v49 = a2[1];
  v50 = a2[2];
  if ((v49 + 1) > v50)
  {
    v51 = (v49 + 993);
    v52 = 2 * v50;
    if (v52 <= v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = v52;
    }

    a2[2] = v53;
    result = malloc_type_realloc(result, v53, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v49 = a2[1];
      goto LABEL_76;
    }

LABEL_78:
    abort();
  }

LABEL_76:
  v49[result] = 125;
  ++a2[1];
  return result;
}

void *llvm::ms_demangle::IdentifierNode::outputTemplateParameters(void *result, uint64_t a2, uint64_t a3)
{
  if (result[2])
  {
    v4 = result;
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v6 + 1 > v7)
    {
      v8 = v4;
      v9 = a3;
      if (2 * v7 <= v6 + 993)
      {
        v10 = v6 + 993;
      }

      else
      {
        v10 = 2 * v7;
      }

      *(a2 + 16) = v10;
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_16;
      }

      v6 = *(a2 + 8);
      a3 = v9;
      v4 = v8;
    }

    *(v5 + v6) = 60;
    ++*(a2 + 8);
    (*(*v4[2] + 16))(v4[2], a2, a3);
    result = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v11 + 1 <= v12)
    {
LABEL_14:
      *(result + v11) = 62;
      ++*(a2 + 8);
      return result;
    }

    v13 = v11 + 993;
    v14 = 2 * v12;
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    *(a2 + 16) = v15;
    result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

  return result;
}

char *llvm::ms_demangle::DynamicStructorIdentifierNode::output(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = a2[1];
  v8 = a2[2];
  v9 = *a2;
  if (v6 == 1)
  {
    if ((v7 + 31) > v8)
    {
      v10 = (v7 + 1023);
      v11 = 2 * v8;
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      a2[2] = v12;
      v9 = malloc_type_realloc(v9, v12, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_38;
      }

      v7 = a2[1];
    }

    v13 = 31;
  }

  else
  {
    if ((v7 + 25) > v8)
    {
      v14 = (v7 + 1017);
      v15 = 2 * v8;
      if (v15 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      a2[2] = v16;
      v9 = malloc_type_realloc(v9, v16, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_38;
      }

      v7 = a2[1];
    }

    v13 = 25;
  }

  v17 = *a2;
  v18 = &a2[1][v13];
  a2[1] = v18;
  v19 = a2[2];
  if (*(a1 + 24))
  {
    if (v18 + 1 > v19)
    {
      v20 = v18 + 993;
      v21 = 2 * v19;
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      a2[2] = v22;
      v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_38;
      }

      v18 = a2[1];
    }

    v17[v18] = 96;
    ++a2[1];
    v23 = *(a1 + 24);
  }

  else
  {
    if (v18 + 1 > v19)
    {
      v24 = v18 + 993;
      v25 = 2 * v19;
      if (v25 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      a2[2] = v26;
      v17 = malloc_type_realloc(v17, v26, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_38;
      }

      v18 = a2[1];
    }

    v17[v18] = 39;
    ++a2[1];
    v23 = *(a1 + 32);
  }

  (*(*v23 + 16))(v23, a2, a3);
  result = *a2;
  v28 = a2[1];
  v29 = a2[2];
  if ((v28 + 2) > v29)
  {
    v30 = (v28 + 994);
    v31 = 2 * v29;
    if (v31 <= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    a2[2] = v32;
    result = malloc_type_realloc(result, v32, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v28 = a2[1];
      goto LABEL_37;
    }

LABEL_38:
    abort();
  }

LABEL_37:
  *&v28[result] = 10023;
  a2[1] += 2;
  return result;
}

void *llvm::ms_demangle::NamedIdentifierNode::output(void *a1, char **a2, uint64_t a3)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = a3;
    v6 = a1;
    v7 = a1[3];
    v8 = *a2;
    v9 = a2[1];
    v10 = &v9[v4];
    v11 = a2[2];
    if (&v9[v4] > v11)
    {
      if (2 * v11 <= (v10 + 992))
      {
        v12 = (v10 + 992);
      }

      else
      {
        v12 = 2 * v11;
      }

      a2[2] = v12;
      v8 = malloc_type_realloc(v8, v12, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        abort();
      }

      v9 = a2[1];
    }

    memcpy(&v9[v8], v7, v4);
    a2[1] += v4;
    a3 = v5;
    a1 = v6;
  }

  return llvm::ms_demangle::IdentifierNode::outputTemplateParameters(a1, a2, a3);
}

void *llvm::ms_demangle::IntrinsicFunctionIdentifierNode::output(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = "operator new";
  v7 = 12;
  switch(*(a1 + 24))
  {
    case 1:
      goto LABEL_32;
    case 2:
      v6 = "operator delete";
      v7 = 15;
      goto LABEL_32;
    case 3:
      v6 = "operator=";
      v7 = 9;
      goto LABEL_32;
    case 4:
      v6 = "operator>>";
      v7 = 10;
      goto LABEL_32;
    case 5:
      v6 = "operator<<";
      v7 = 10;
      goto LABEL_32;
    case 6:
      v6 = "operator!";
      v7 = 9;
      goto LABEL_32;
    case 7:
      v6 = "operator==";
      v7 = 10;
      goto LABEL_32;
    case 8:
      v6 = "operator!=";
      v7 = 10;
      goto LABEL_32;
    case 9:
      v6 = "operator[]";
      v7 = 10;
      goto LABEL_32;
    case 0xA:
      v6 = "operator->";
      v7 = 10;
      goto LABEL_32;
    case 0xB:
      v6 = "operator*";
      v7 = 9;
      goto LABEL_32;
    case 0xC:
      v6 = "operator++";
      v7 = 10;
      goto LABEL_32;
    case 0xD:
      v6 = "operator--";
      v7 = 10;
      goto LABEL_32;
    case 0xE:
      v6 = "operator-";
      v7 = 9;
      goto LABEL_32;
    case 0xF:
      v6 = "operator+";
      v7 = 9;
      goto LABEL_32;
    case 0x10:
      v6 = "operator&";
      v7 = 9;
      goto LABEL_32;
    case 0x11:
      v6 = "operator->*";
      goto LABEL_31;
    case 0x12:
      v6 = "operator/";
      v7 = 9;
      goto LABEL_32;
    case 0x13:
      v6 = "operator%";
      v7 = 9;
      goto LABEL_32;
    case 0x14:
      v6 = "operator<";
      v7 = 9;
      goto LABEL_32;
    case 0x15:
      v6 = "operator<=";
      v7 = 10;
      goto LABEL_32;
    case 0x16:
      v6 = "operator>";
      v7 = 9;
      goto LABEL_32;
    case 0x17:
      v6 = "operator>=";
      v7 = 10;
      goto LABEL_32;
    case 0x18:
      v6 = "operator,";
      v7 = 9;
      goto LABEL_32;
    case 0x19:
      v6 = "operator()";
      v7 = 10;
      goto LABEL_32;
    case 0x1A:
      v6 = "operator~";
      v7 = 9;
      goto LABEL_32;
    case 0x1B:
      v6 = "operator^";
      v7 = 9;
      goto LABEL_32;
    case 0x1C:
      v6 = "operator|";
      v7 = 9;
      goto LABEL_32;
    case 0x1D:
      v6 = "operator&&";
      v7 = 10;
      goto LABEL_32;
    case 0x1E:
      v6 = "operator||";
      v7 = 10;
      goto LABEL_32;
    case 0x1F:
      v6 = "operator*=";
      v7 = 10;
      goto LABEL_32;
    case 0x20:
      v6 = "operator+=";
      v7 = 10;
      goto LABEL_32;
    case 0x21:
      v6 = "operator-=";
      v7 = 10;
      goto LABEL_32;
    case 0x22:
      v6 = "operator/=";
      v7 = 10;
      goto LABEL_32;
    case 0x23:
      v6 = "operator%=";
      v7 = 10;
      goto LABEL_32;
    case 0x24:
      v6 = "operator>>=";
      goto LABEL_31;
    case 0x25:
      v6 = "operator<<=";
      goto LABEL_31;
    case 0x26:
      v6 = "operator&=";
      v7 = 10;
      goto LABEL_32;
    case 0x27:
      v6 = "operator|=";
      v7 = 10;
      goto LABEL_32;
    case 0x28:
      v6 = "operator^=";
      v7 = 10;
      goto LABEL_32;
    case 0x29:
      v7 = 12;
      goto LABEL_32;
    case 0x2A:
      v7 = 22;
      goto LABEL_32;
    case 0x2B:
      v7 = 22;
      goto LABEL_32;
    case 0x2C:
      v7 = 22;
      goto LABEL_32;
    case 0x2D:
      v7 = 22;
      goto LABEL_32;
    case 0x2E:
      v7 = 22;
      goto LABEL_32;
    case 0x2F:
      v7 = 28;
      goto LABEL_32;
    case 0x30:
      v7 = 26;
      goto LABEL_32;
    case 0x31:
      v7 = 25;
      goto LABEL_32;
    case 0x32:
      v7 = 25;
      goto LABEL_32;
    case 0x33:
      v7 = 31;
      goto LABEL_32;
    case 0x34:
      v7 = 19;
      goto LABEL_32;
    case 0x35:
      v7 = 28;
      goto LABEL_32;
    case 0x36:
      v6 = "operator new[]";
      v7 = 14;
      goto LABEL_32;
    case 0x37:
      v6 = "operator delete[]";
      v7 = 17;
      goto LABEL_32;
    case 0x38:
      v7 = 30;
      goto LABEL_32;
    case 0x39:
      v7 = 30;
      goto LABEL_32;
    case 0x3A:
      v7 = 30;
      goto LABEL_32;
    case 0x3B:
      v7 = 36;
      goto LABEL_32;
    case 0x3C:
      v7 = 27;
      goto LABEL_32;
    case 0x3D:
      v7 = 40;
      goto LABEL_32;
    case 0x3E:
      v7 = 48;
      goto LABEL_32;
    case 0x3F:
      v6 = "operator co_await";
      v7 = 17;
      goto LABEL_32;
    case 0x40:
      v6 = "operator<=>";
LABEL_31:
      v7 = 11;
LABEL_32:
      llvm::itanium_demangle::OutputBuffer::operator<<(a2, v6, v7);
      break;
    default:
      break;
  }

  return llvm::ms_demangle::IdentifierNode::outputTemplateParameters(a1, a2, a3);
}

char *llvm::ms_demangle::LocalStaticGuardIdentifierNode::output(uint64_t a1, char **a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v5 = a2[1];
  v6 = a2[2];
  result = *a2;
  if (v4 == 1)
  {
    if ((v5 + 27) > v6)
    {
      v8 = (v5 + 1019);
      v9 = 2 * v6;
      if (v9 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      a2[2] = v10;
      result = malloc_type_realloc(result, v10, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_41;
      }

      v5 = a2[1];
    }

    v11 = (a2[1] + 27);
    a2[1] = v11;
    if (!*(a1 + 28))
    {
      return result;
    }
  }

  else
  {
    if ((v5 + 20) > v6)
    {
      v12 = (v5 + 1012);
      v13 = 2 * v6;
      if (v13 <= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      a2[2] = v14;
      result = malloc_type_realloc(result, v14, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_41;
      }

      v5 = a2[1];
    }

    v15 = &v5[result];
    *(v15 + 4) = 660894305;
    v11 = (a2[1] + 20);
    a2[1] = v11;
    if (!*(a1 + 28))
    {
      return result;
    }
  }

  v16 = a2[2];
  v17 = *a2;
  if (v11 + 1 > v16)
  {
    v18 = v11 + 993;
    v19 = 2 * v16;
    if (v19 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    a2[2] = v20;
    v17 = malloc_type_realloc(v17, v20, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_41;
    }

    v11 = a2[1];
  }

  v21 = 0;
  v17[v11] = 123;
  v22 = a2[1];
  v23 = v22 + 1;
  a2[1] = v22 + 1;
  v24 = *(a1 + 28);
  do
  {
    v34[v21-- + 20] = (v24 % 0xA) | 0x30;
    v25 = v24 > 9;
    v24 /= 0xAuLL;
  }

  while (v25);
  if (v21)
  {
    v26 = &v22[-v21];
    v27 = a2[2];
    v28 = *a2;
    if ((v26 + 1) > v27)
    {
      if (2 * v27 <= (v26 + 993))
      {
        v29 = (v26 + 993);
      }

      else
      {
        v29 = 2 * v27;
      }

      a2[2] = v29;
      v28 = malloc_type_realloc(v28, v29, 0x100004077774924uLL);
      *a2 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v23 = a2[1];
    }

    memcpy(&v23[v28], &v34[v21 + 21], -v21);
    v23 = &a2[1][-v21];
    a2[1] = v23;
  }

  v30 = a2[2];
  result = *a2;
  if ((v23 + 1) > v30)
  {
    v31 = (v23 + 993);
    v32 = 2 * v30;
    if (v32 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    a2[2] = v33;
    result = malloc_type_realloc(result, v33, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v23 = a2[1];
      goto LABEL_39;
    }

LABEL_41:
    abort();
  }

LABEL_39:
  v23[result] = 125;
  ++a2[1];
  return result;
}

uint64_t llvm::ms_demangle::ConversionOperatorIdentifierNode::output(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if ((v7 + 8) > v8)
  {
    v9 = (v7 + 1000);
    v10 = 2 * v8;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    a2[2] = v11;
    v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
    *a2 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = a2[1];
  }

  *&v7[v6] = 0x726F74617265706FLL;
  a2[1] = a2[1] + 8;
  llvm::ms_demangle::IdentifierNode::outputTemplateParameters(a1, a2, a3);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 1) <= v14)
  {
    goto LABEL_13;
  }

  v15 = (v13 + 993);
  v16 = 2 * v14;
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  a2[2] = v17;
  v12 = malloc_type_realloc(v12, v17, 0x100004077774924uLL);
  *a2 = v12;
  if (!v12)
  {
LABEL_16:
    abort();
  }

  v13 = a2[1];
LABEL_13:
  v13[v12] = 32;
  a2[1] = a2[1] + 1;
  v18 = *(**(a1 + 24) + 16);

  return v18();
}

void *llvm::ms_demangle::StructorIdentifierNode::output(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if (v5 + 1 > v6)
    {
      v7 = a3;
      v8 = v5 + 993;
      v9 = 2 * v6;
      if (v9 > v8)
      {
        v8 = v9;
      }

      a2[2] = v8;
      v10 = a2;
      v11 = malloc_type_realloc(v4, v8, 0x100004077774924uLL);
      *v10 = v11;
      if (!v11)
      {
        abort();
      }

      a2 = v10;
      v4 = v11;
      v5 = v10[1];
      a3 = v7;
    }

    *(v4 + v5) = 126;
    ++a2[1];
  }

  v12 = a2;
  v13 = a3;
  (*(**(a1 + 24) + 16))(*(a1 + 24));

  return llvm::ms_demangle::IdentifierNode::outputTemplateParameters(a1, v12, v13);
}

void *llvm::ms_demangle::LiteralOperatorIdentifierNode::output(void *a1, char **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if ((v7 + 11) > v8)
  {
    v9 = (v7 + 1003);
    v10 = 2 * v8;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    a2[2] = v11;
    v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
    *a2 = v6;
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = a2[1];
  }

  v12 = &v7[v6];
  *v12 = *"operator ";
  *(v12 + 7) = 572661874;
  v13 = (a2[1] + 11);
  a2[1] = v13;
  v14 = a1[4];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = a1[3];
  v16 = v13 + v14;
  v17 = a2[2];
  v18 = *a2;
  if (v13 + v14 > v17)
  {
    if (2 * v17 <= v16 + 992)
    {
      v19 = v16 + 992;
    }

    else
    {
      v19 = 2 * v17;
    }

    a2[2] = v19;
    v18 = malloc_type_realloc(v18, v19, 0x100004077774924uLL);
    *a2 = v18;
    if (v18)
    {
      v13 = a2[1];
      goto LABEL_14;
    }

LABEL_18:
    abort();
  }

LABEL_14:
  memcpy(&v18[v13], v15, v14);
  a2[1] += v14;
LABEL_15:

  return llvm::ms_demangle::IdentifierNode::outputTemplateParameters(a1, a2, a3);
}

_WORD *llvm::ms_demangle::FunctionSignatureNode::outputPre(_WORD *result, void *a2, uint64_t a3)
{
  v5 = result;
  if ((a3 & 4) == 0)
  {
    v6 = result[11];
    if (v6)
    {
      result = *a2;
      v7 = a2[1];
      v8 = a2[2];
      if (v7 + 8 > v8)
      {
        v9 = v7 + 1000;
        v10 = 2 * v8;
        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        a2[2] = v11;
        result = malloc_type_realloc(result, v11, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_65;
        }

        v7 = a2[1];
      }

      *(result + v7) = 0x203A63696C627570;
      a2[1] += 8;
      v6 = v5[11];
    }

    if ((v6 & 2) != 0)
    {
      result = *a2;
      v12 = a2[1];
      v13 = a2[2];
      if (v12 + 11 > v13)
      {
        v14 = v12 + 1003;
        v15 = 2 * v13;
        if (v15 <= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        a2[2] = v16;
        result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_65;
        }

        v12 = a2[1];
      }

      v17 = result + v12;
      *v17 = *"protected: ";
      *(v17 + 7) = 540697701;
      a2[1] += 11;
      v6 = v5[11];
    }

    if ((v6 & 4) != 0)
    {
      result = *a2;
      v18 = a2[1];
      v19 = a2[2];
      if (v18 + 9 > v19)
      {
        v20 = v18 + 1001;
        v21 = 2 * v19;
        if (v21 <= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        a2[2] = v22;
        result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_65;
        }

        v18 = a2[1];
      }

      v23 = result + v18;
      *v23 = *"private: ";
      v23[8] = 32;
      a2[1] += 9;
    }
  }

  if ((a3 & 8) == 0)
  {
    v24 = v5[11];
    if ((v24 & 0x18) == 0x10)
    {
      result = *a2;
      v25 = a2[1];
      v26 = a2[2];
      if (v25 + 7 > v26)
      {
        v27 = v25 + 999;
        v28 = 2 * v26;
        if (v28 <= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        a2[2] = v29;
        result = malloc_type_realloc(result, v29, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_65;
        }

        v25 = a2[1];
      }

      v30 = (result + v25);
      *(v30 + 3) = 543385972;
      *v30 = 1952543859;
      a2[1] += 7;
      v24 = v5[11];
    }

    if ((v24 & 0x20) != 0)
    {
      result = *a2;
      v31 = a2[1];
      v32 = a2[2];
      if (v31 + 8 > v32)
      {
        v33 = v31 + 1000;
        v34 = 2 * v32;
        if (v34 <= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v34;
        }

        a2[2] = v35;
        result = malloc_type_realloc(result, v35, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_65;
        }

        v31 = a2[1];
      }

      *(result + v31) = 0x206C617574726976;
      a2[1] += 8;
      v24 = v5[11];
    }

    if ((v24 & 0x80) != 0)
    {
      result = *a2;
      v36 = a2[1];
      v37 = a2[2];
      if (v36 + 11 > v37)
      {
        v38 = v36 + 1003;
        v39 = 2 * v37;
        if (v39 <= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v39;
        }

        a2[2] = v40;
        result = malloc_type_realloc(result, v40, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_65;
        }

        v36 = a2[1];
      }

      v41 = result + v36;
      *v41 = *"extern C ";
      *(v41 + 7) = 539116322;
      a2[1] += 11;
    }
  }

  if ((a3 & 0x10) == 0)
  {
    result = *(v5 + 4);
    if (result)
    {
      (*(*result + 24))(result, a2, a3);
      result = *a2;
      v42 = a2[1];
      v43 = a2[2];
      if (v42 + 1 <= v43)
      {
LABEL_59:
        *(result + v42) = 32;
        ++a2[1];
        goto LABEL_60;
      }

      v44 = v42 + 993;
      v45 = 2 * v43;
      if (v45 <= v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = v45;
      }

      a2[2] = v46;
      result = malloc_type_realloc(result, v46, 0x100004077774924uLL);
      *a2 = result;
      if (result)
      {
        v42 = a2[1];
        goto LABEL_59;
      }

LABEL_65:
      abort();
    }
  }

LABEL_60:
  if ((a3 & 1) == 0)
  {
    v47 = *(v5 + 20);

    return outputCallingConvention(a2, v47);
  }

  return result;
}

unint64_t outputCallingConvention(unint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = *result + v4;
    v6 = *(v5 - 1);
    if ((v6 & 0x80000000) != 0)
    {
      result = __maskrune(*(v5 - 1), 0x500uLL);
      if (v6 == 62 || result != 0)
      {
LABEL_33:
        result = *v3;
        v21 = *(v3 + 8);
        v22 = *(v3 + 16);
        if (v21 + 1 > v22)
        {
          v23 = v21 + 993;
          v24 = 2 * v22;
          if (v24 <= v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

          *(v3 + 16) = v25;
          result = malloc_type_realloc(result, v25, 0x100004077774924uLL);
          *v3 = result;
          if (!result)
          {
            goto LABEL_112;
          }

          v21 = *(v3 + 8);
        }

        *(result + v21) = 32;
        ++*(v3 + 8);
        if (a2 <= 5)
        {
          goto LABEL_40;
        }

        goto LABEL_9;
      }
    }

    else
    {
      result = *(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x500;
      if (v6 == 62 || result != 0)
      {
        goto LABEL_33;
      }
    }
  }

  if (a2 <= 5)
  {
LABEL_40:
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        result = *v3;
        v26 = *(v3 + 8);
        v60 = *(v3 + 16);
        if (v26 + 10 > v60)
        {
          v61 = v26 + 1002;
          v62 = 2 * v60;
          if (v62 <= v61)
          {
            v63 = v61;
          }

          else
          {
            v63 = v62;
          }

          *(v3 + 16) = v63;
          result = malloc_type_realloc(result, v63, 0x100004077774924uLL);
          *v3 = result;
          if (!result)
          {
            goto LABEL_112;
          }

          v26 = *(v3 + 8);
        }

        v31 = "__thiscall";
        goto LABEL_94;
      }

      if (a2 != 4)
      {
        result = *v3;
        v26 = *(v3 + 8);
        v27 = *(v3 + 16);
        if (v26 + 10 <= v27)
        {
LABEL_49:
          v31 = "__fastcall";
LABEL_94:
          v64 = (result + v26);
          *v64 = *v31;
          *(v64 + 4) = 27756;
          v14 = 10;
          goto LABEL_110;
        }

        v28 = v26 + 1002;
        v29 = 2 * v27;
        if (v29 <= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v29;
        }

        *(v3 + 16) = v30;
        result = malloc_type_realloc(result, v30, 0x100004077774924uLL);
        *v3 = result;
        if (result)
        {
          v26 = *(v3 + 8);
          goto LABEL_49;
        }

LABEL_112:
        abort();
      }

      result = *v3;
      v43 = *(v3 + 8);
      v44 = *(v3 + 16);
      if (v43 + 9 > v44)
      {
        v45 = v43 + 1001;
        v46 = 2 * v44;
        if (v46 <= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = v46;
        }

        *(v3 + 16) = v47;
        result = malloc_type_realloc(result, v47, 0x100004077774924uLL);
        *v3 = result;
        if (!result)
        {
          goto LABEL_112;
        }

        v43 = *(v3 + 8);
      }

      v48 = "__stdcall";
LABEL_109:
      v73 = (result + v43);
      *v73 = *v48;
      v73[8] = 108;
      v14 = 9;
      goto LABEL_110;
    }

    if (a2 == 1)
    {
      result = *v3;
      v37 = *(v3 + 8);
      v38 = *(v3 + 16);
      if (v37 + 7 > v38)
      {
        v39 = v37 + 999;
        v40 = 2 * v38;
        if (v40 <= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        *(v3 + 16) = v41;
        result = malloc_type_realloc(result, v41, 0x100004077774924uLL);
        *v3 = result;
        if (!result)
        {
          goto LABEL_112;
        }

        v37 = *(v3 + 8);
      }

      v42 = (result + v37);
      *(v42 + 3) = 1818453348;
      *v42 = 1684234079;
      v14 = 7;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      result = *v3;
      v32 = *(v3 + 8);
      v33 = *(v3 + 16);
      if (v32 + 8 > v33)
      {
        v34 = v32 + 1000;
        v35 = 2 * v33;
        if (v35 <= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v35;
        }

        *(v3 + 16) = v36;
        result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
        *v3 = result;
        if (!result)
        {
          goto LABEL_112;
        }

        v32 = *(v3 + 8);
      }

      *(result + v32) = 0x6C61637361705F5FLL;
      v14 = 8;
    }

    goto LABEL_110;
  }

LABEL_9:
  if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        result = *v3;
        v43 = *(v3 + 8);
        v69 = *(v3 + 16);
        if (v43 + 9 > v69)
        {
          v70 = v43 + 1001;
          v71 = 2 * v69;
          if (v71 <= v70)
          {
            v72 = v70;
          }

          else
          {
            v72 = v71;
          }

          *(v3 + 16) = v72;
          result = malloc_type_realloc(result, v72, 0x100004077774924uLL);
          *v3 = result;
          if (!result)
          {
            goto LABEL_112;
          }

          v43 = *(v3 + 8);
        }

        v48 = "__regcall";
        goto LABEL_109;
      case 10:
        result = *v3;
        v55 = *(v3 + 8);
        v56 = *(v3 + 16);
        if (v55 + 31 > v56)
        {
          v57 = v55 + 1023;
          v58 = 2 * v56;
          if (v58 <= v57)
          {
            v59 = v57;
          }

          else
          {
            v59 = v58;
          }

          *(v3 + 16) = v59;
          result = malloc_type_realloc(result, v59, 0x100004077774924uLL);
          *v3 = result;
          if (!result)
          {
            goto LABEL_112;
          }

          v55 = *(v3 + 8);
        }

        qmemcpy((result + v55), "__attribute__((__swiftcall__)) ", 31);
        v14 = 31;
        break;
      case 11:
        result = *v3;
        v15 = *(v3 + 8);
        v16 = *(v3 + 16);
        if (v15 + 36 > v16)
        {
          v17 = v15 + 1028;
          v18 = 2 * v16;
          if (v18 <= v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v18;
          }

          *(v3 + 16) = v19;
          result = malloc_type_realloc(result, v19, 0x100004077774924uLL);
          *v3 = result;
          if (!result)
          {
            goto LABEL_112;
          }

          v15 = *(v3 + 8);
        }

        qmemcpy((result + v15), "__attribute__((__swiftasynccall__)) ", 36);
        v14 = 36;
        break;
      default:
        return result;
    }
  }

  else
  {
    if (a2 == 6)
    {
      result = *v3;
      v43 = *(v3 + 8);
      v65 = *(v3 + 16);
      if (v43 + 9 > v65)
      {
        v66 = v43 + 1001;
        v67 = 2 * v65;
        if (v67 <= v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = v67;
        }

        *(v3 + 16) = v68;
        result = malloc_type_realloc(result, v68, 0x100004077774924uLL);
        *v3 = result;
        if (!result)
        {
          goto LABEL_112;
        }

        v43 = *(v3 + 8);
      }

      v48 = "__clrcall";
      goto LABEL_109;
    }

    if (a2 == 7)
    {
      result = *v3;
      v49 = *(v3 + 8);
      v50 = *(v3 + 16);
      if (v49 + 6 > v50)
      {
        v51 = v49 + 998;
        v52 = 2 * v50;
        if (v52 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = v52;
        }

        *(v3 + 16) = v53;
        result = malloc_type_realloc(result, v53, 0x100004077774924uLL);
        *v3 = result;
        if (!result)
        {
          goto LABEL_112;
        }

        v49 = *(v3 + 8);
      }

      v54 = (result + v49);
      *(v54 + 2) = 26978;
      *v54 = 1634033503;
      v14 = 6;
    }

    else
    {
      result = *v3;
      v8 = *(v3 + 8);
      v9 = *(v3 + 16);
      if (v8 + 12 > v9)
      {
        v10 = v8 + 1004;
        v11 = 2 * v9;
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        *(v3 + 16) = v12;
        result = malloc_type_realloc(result, v12, 0x100004077774924uLL);
        *v3 = result;
        if (!result)
        {
          goto LABEL_112;
        }

        v8 = *(v3 + 8);
      }

      v13 = (result + v8);
      *v13 = *"__vectorcall";
      *(v13 + 2) = 1819042147;
      v14 = 12;
    }
  }

LABEL_110:
  *(v3 + 8) += v14;
  return result;
}

char *llvm::ms_demangle::FunctionSignatureNode::outputPost(char *result, char **a2, uint64_t a3)
{
  v5 = result;
  if ((*(result + 11) & 0x100) == 0)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    if ((v7 + 1) > v8)
    {
      v9 = (v7 + 993);
      v10 = 2 * v8;
      if (v10 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      a2[2] = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_103;
      }

      v7 = a2[1];
    }

    v7[v6] = 40;
    v12 = a2[1];
    v13 = v12 + 1;
    a2[1] = v12 + 1;
    v14 = *(v5 + 6);
    if (v14)
    {
      (*(*v14 + 16))(v14, a2, a3);
      v15 = a2[1];
      if (v5[40] != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = a2[2];
      v18 = *a2;
      if ((v12 + 5) > v17)
      {
        if (2 * v17 <= (v12 + 997))
        {
          v19 = (v12 + 997);
        }

        else
        {
          v19 = 2 * v17;
        }

        a2[2] = v19;
        v18 = malloc_type_realloc(v18, v19, 0x100004077774924uLL);
        *a2 = v18;
        if (!v18)
        {
          goto LABEL_103;
        }

        v13 = a2[1];
      }

      *&v13[v18] = 1684631414;
      v15 = (a2[1] + 4);
      a2[1] = v15;
      if (v5[40] != 1)
      {
LABEL_10:
        v16 = a2[2];
        result = *a2;
        if (v15 + 1 <= v16)
        {
LABEL_39:
          result[v15] = 41;
          ++a2[1];
          goto LABEL_40;
        }

LABEL_34:
        v30 = v15 + 993;
        v31 = 2 * v16;
        if (v31 <= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        a2[2] = v32;
        result = malloc_type_realloc(result, v32, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_103;
        }

        v15 = a2[1];
        goto LABEL_39;
      }
    }

    v20 = *a2;
    if ((*a2)[v15 - 1] != 40)
    {
      v21 = a2[2];
      if (v15 + 2 > v21)
      {
        v22 = v15 + 994;
        v23 = 2 * v21;
        if (v23 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        a2[2] = v24;
        v20 = malloc_type_realloc(v20, v24, 0x100004077774924uLL);
        *a2 = v20;
        if (!v20)
        {
          goto LABEL_103;
        }

        v15 = a2[1];
      }

      *&v20[v15] = 8236;
      v20 = *a2;
      v15 = (a2[1] + 2);
      a2[1] = v15;
    }

    v25 = a2[2];
    if (v15 + 3 > v25)
    {
      v26 = v15 + 995;
      v27 = 2 * v25;
      if (v27 <= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      a2[2] = v28;
      v20 = malloc_type_realloc(v20, v28, 0x100004077774924uLL);
      *a2 = v20;
      if (!v20)
      {
        goto LABEL_103;
      }

      v15 = a2[1];
    }

    v29 = &v20[v15];
    v29[2] = 46;
    *v29 = 11822;
    v16 = a2[2];
    v15 = (a2[1] + 3);
    a2[1] = v15;
    result = *a2;
    if (v15 + 1 <= v16)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_40:
  v33 = v5[12];
  if (v33)
  {
    result = *a2;
    v34 = a2[1];
    v35 = a2[2];
    if ((v34 + 6) > v35)
    {
      v36 = (v34 + 998);
      v37 = 2 * v35;
      if (v37 <= v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = v37;
      }

      a2[2] = v38;
      result = malloc_type_realloc(result, v38, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_103;
      }

      v34 = a2[1];
    }

    v39 = &v34[result];
    *(v39 + 2) = 29811;
    *v39 = 1852793632;
    a2[1] += 6;
    v33 = v5[12];
  }

  if ((v33 & 2) != 0)
  {
    result = *a2;
    v40 = a2[1];
    v41 = a2[2];
    if ((v40 + 9) > v41)
    {
      v42 = (v40 + 1001);
      v43 = 2 * v41;
      if (v43 <= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v43;
      }

      a2[2] = v44;
      result = malloc_type_realloc(result, v44, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_103;
      }

      v40 = a2[1];
    }

    v45 = &v40[result];
    *v45 = *" volatile";
    v45[8] = 101;
    a2[1] += 9;
    v33 = v5[12];
  }

  if ((v33 & 0x20) != 0)
  {
    result = *a2;
    v46 = a2[1];
    v47 = a2[2];
    if ((v46 + 11) > v47)
    {
      v48 = (v46 + 1003);
      v49 = 2 * v47;
      if (v49 <= v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      a2[2] = v50;
      result = malloc_type_realloc(result, v50, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_103;
      }

      v46 = a2[1];
    }

    v51 = &v46[result];
    *v51 = *" __restrict";
    *(v51 + 7) = 1952672114;
    a2[1] += 11;
    v33 = v5[12];
  }

  if ((v33 & 0x10) != 0)
  {
    result = *a2;
    v52 = a2[1];
    v53 = a2[2];
    if ((v52 + 12) > v53)
    {
      v54 = (v52 + 1004);
      v55 = 2 * v53;
      if (v55 <= v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = v55;
      }

      a2[2] = v56;
      result = malloc_type_realloc(result, v56, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_103;
      }

      v52 = a2[1];
    }

    v57 = &v52[result];
    *v57 = *" __unaligned";
    *(v57 + 2) = 1684368999;
    a2[1] += 12;
  }

  if (v5[56] == 1)
  {
    result = *a2;
    v58 = a2[1];
    v59 = a2[2];
    if ((v58 + 9) > v59)
    {
      v60 = (v58 + 1001);
      v61 = 2 * v59;
      if (v61 <= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }

      a2[2] = v62;
      result = malloc_type_realloc(result, v62, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_103;
      }

      v58 = a2[1];
    }

    v63 = &v58[result];
    *v63 = *" noexcept";
    v63[8] = 116;
    a2[1] += 9;
  }

  v64 = *(v5 + 6);
  if (v64 == 2)
  {
    v66 = a2 + 1;
    v72 = a2[1];
    v73 = a2[2];
    result = *a2;
    if ((v72 + 3) > v73)
    {
      v74 = (v72 + 995);
      v75 = 2 * v73;
      if (v75 <= v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = v75;
      }

      a2[2] = v76;
      result = malloc_type_realloc(result, v76, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_103;
      }

      v72 = *v66;
    }

    v77 = &v72[result];
    v77[2] = 38;
    *v77 = 9760;
    v71 = 3;
    goto LABEL_96;
  }

  if (v64 == 1)
  {
    v66 = a2 + 1;
    v65 = a2[1];
    v67 = a2[2];
    result = *a2;
    if ((v65 + 2) <= v67)
    {
LABEL_88:
      *&v65[result] = 9760;
      v71 = 2;
LABEL_96:
      *v66 += v71;
      goto LABEL_97;
    }

    v68 = (v65 + 994);
    v69 = 2 * v67;
    if (v69 <= v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = v69;
    }

    a2[2] = v70;
    result = malloc_type_realloc(result, v70, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v65 = *v66;
      goto LABEL_88;
    }

LABEL_103:
    abort();
  }

LABEL_97:
  if ((a3 & 0x10) == 0)
  {
    result = *(v5 + 4);
    if (result)
    {
      v78 = *(*result + 32);

      return v78();
    }
  }

  return result;
}

_WORD *llvm::ms_demangle::ThunkSignatureNode::outputPre(_WORD *a1, void *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (v5 + 9 > v6)
  {
    v7 = a1;
    v8 = a3;
    v9 = v5 + 1001;
    if (2 * v6 > v5 + 1001)
    {
      v9 = 2 * v6;
    }

    a2[2] = v9;
    v10 = a2;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *v10 = v4;
    if (!v4)
    {
      abort();
    }

    a2 = v10;
    v5 = v10[1];
    a3 = v8;
    a1 = v7;
  }

  v11 = &v4[v5];
  *v11 = *"[thunk]: ";
  v11[8] = 32;
  a2[1] += 9;

  return llvm::ms_demangle::FunctionSignatureNode::outputPre(a1, a2, a3);
}

char *llvm::ms_demangle::ThunkSignatureNode::outputPost(uint64_t a1, char **a2, uint64_t a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 22);
  if ((v6 & 0x800) == 0)
  {
    if ((*(a1 + 22) & 0x200) == 0)
    {
      goto LABEL_137;
    }

    v8 = (a2 + 1);
    v7 = a2[1];
    v9 = a2[2];
    v10 = *a2;
    if ((v6 & 0x400) == 0)
    {
      if (v7 + 10 > v9)
      {
        v11 = v7 + 1002;
        v12 = 2 * v9;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v10 = malloc_type_realloc(v10, v13, 0x100004077774924uLL);
        *a2 = v10;
        if (!v10)
        {
          goto LABEL_140;
        }

        v7 = *v8;
      }

      v14 = &v10[v7];
      *(v14 + 4) = 31600;
      v15 = *v8 + 10;
      *v8 = v15;
      v16 = *(a1 + 72);
      if (v16 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -v16;
      }

      v18 = 20;
      do
      {
        v98[v18--] = (v17 % 0xA) | 0x30;
        v19 = v17 > 9;
        v17 /= 0xAuLL;
      }

      while (v19);
      if (v16 < 0)
      {
        v98[v18] = 45;
        if (v18 == 21)
        {
LABEL_17:
          v20 = a2[2];
          v21 = *a2;
          if (v15 + 2 <= v20)
          {
            goto LABEL_58;
          }

          goto LABEL_53;
        }
      }

      else if (++v18 == 21)
      {
        goto LABEL_17;
      }

      v47 = v15 + 21 - v18;
      v48 = a2[2];
      v49 = *a2;
      if (v47 > v48)
      {
        if (2 * v48 <= v47 + 992)
        {
          v50 = v47 + 992;
        }

        else
        {
          v50 = 2 * v48;
        }

        a2[2] = v50;
        v49 = malloc_type_realloc(v49, v50, 0x100004077774924uLL);
        *a2 = v49;
        if (!v49)
        {
          goto LABEL_140;
        }

        v15 = *v8;
      }

      memcpy(&v49[v15], &v98[v18], 21 - v18);
      v15 = *v8 + 21 - v18;
      *v8 = v15;
      v20 = a2[2];
      v21 = *a2;
      if (v15 + 2 <= v20)
      {
LABEL_58:
        v28 = 0;
        *&v21[v15] = 8236;
        v54 = *v8;
        v31 = *v8 + 2;
        *v8 = v31;
        v55 = *(a1 + 60);
        do
        {
          v98[v28-- + 20] = (v55 % 0xA) | 0x30;
          v19 = v55 > 9;
          v55 /= 0xAuLL;
        }

        while (v19);
        if (!v28)
        {
          goto LABEL_61;
        }

LABEL_123:
        v92 = v54 - v28;
        v34 = a2[2];
        v35 = *a2;
        if (v92 + 2 <= v34)
        {
          goto LABEL_130;
        }

        v36 = v92 + 994;
        goto LABEL_125;
      }

LABEL_53:
      v51 = v15 + 994;
      v52 = 2 * v20;
      if (v52 <= v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = v52;
      }

      a2[2] = v53;
      v21 = malloc_type_realloc(v21, v53, 0x100004077774924uLL);
      *a2 = v21;
      if (!v21)
      {
        goto LABEL_140;
      }

      v15 = *v8;
      goto LABEL_58;
    }

    if (v7 + 12 > v9)
    {
      v37 = v7 + 1004;
      v38 = 2 * v9;
      if (v38 <= v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      a2[2] = v39;
      v10 = malloc_type_realloc(v10, v39, 0x100004077774924uLL);
      *a2 = v10;
      if (!v10)
      {
        goto LABEL_140;
      }

      v7 = *v8;
    }

    v40 = &v10[v7];
    *(v40 + 2) = 2071487856;
    v41 = *v8 + 12;
    *v8 = v41;
    v42 = *(a1 + 64);
    if (v42 >= 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = -v42;
    }

    v44 = 20;
    do
    {
      v98[v44--] = (v43 % 0xA) | 0x30;
      v19 = v43 > 9;
      v43 /= 0xAuLL;
    }

    while (v19);
    if (v42 < 0)
    {
      v98[v44] = 45;
      if (v44 == 21)
      {
LABEL_43:
        v45 = a2[2];
        v46 = *a2;
        if (v41 + 2 <= v45)
        {
          goto LABEL_76;
        }

        goto LABEL_71;
      }
    }

    else if (++v44 == 21)
    {
      goto LABEL_43;
    }

    v58 = v41 + 21 - v44;
    v59 = a2[2];
    v60 = *a2;
    if (v58 > v59)
    {
      if (2 * v59 <= v58 + 992)
      {
        v61 = v58 + 992;
      }

      else
      {
        v61 = 2 * v59;
      }

      a2[2] = v61;
      v60 = malloc_type_realloc(v60, v61, 0x100004077774924uLL);
      *a2 = v60;
      if (!v60)
      {
        goto LABEL_140;
      }

      v41 = *v8;
    }

    memcpy(&v60[v41], &v98[v44], 21 - v44);
    v41 = *v8 + 21 - v44;
    *v8 = v41;
    v45 = a2[2];
    v46 = *a2;
    if (v41 + 2 <= v45)
    {
LABEL_76:
      *&v46[v41] = 8236;
      v65 = *v8 + 2;
      *v8 = v65;
      v66 = *(a1 + 68);
      if (v66 >= 0)
      {
        v67 = v66;
      }

      else
      {
        v67 = -v66;
      }

      v68 = 20;
      do
      {
        v98[v68--] = (v67 % 0xA) | 0x30;
        v19 = v67 > 9;
        v67 /= 0xAuLL;
      }

      while (v19);
      if (v66 < 0)
      {
        v98[v68] = 45;
        if (v68 == 21)
        {
LABEL_83:
          v69 = a2[2];
          v70 = *a2;
          if (v65 + 2 <= v69)
          {
            goto LABEL_98;
          }

          goto LABEL_93;
        }
      }

      else if (++v68 == 21)
      {
        goto LABEL_83;
      }

      v71 = v65 + 21 - v68;
      v72 = a2[2];
      v73 = *a2;
      if (v71 > v72)
      {
        if (2 * v72 <= v71 + 992)
        {
          v74 = v71 + 992;
        }

        else
        {
          v74 = 2 * v72;
        }

        a2[2] = v74;
        v73 = malloc_type_realloc(v73, v74, 0x100004077774924uLL);
        *a2 = v73;
        if (!v73)
        {
          goto LABEL_140;
        }

        v65 = *v8;
      }

      memcpy(&v73[v65], &v98[v68], 21 - v68);
      v65 = *v8 + 21 - v68;
      *v8 = v65;
      v69 = a2[2];
      v70 = *a2;
      if (v65 + 2 <= v69)
      {
LABEL_98:
        *&v70[v65] = 8236;
        v78 = *v8 + 2;
        *v8 = v78;
        v79 = *(a1 + 72);
        if (v79 >= 0)
        {
          v80 = v79;
        }

        else
        {
          v80 = -v79;
        }

        v81 = 20;
        do
        {
          v98[v81--] = (v80 % 0xA) | 0x30;
          v19 = v80 > 9;
          v80 /= 0xAuLL;
        }

        while (v19);
        if (v79 < 0)
        {
          v98[v81] = 45;
          if (v81 == 21)
          {
LABEL_105:
            v82 = a2[2];
            v83 = *a2;
            if (v78 + 2 <= v82)
            {
              goto LABEL_120;
            }

            goto LABEL_115;
          }
        }

        else if (++v81 == 21)
        {
          goto LABEL_105;
        }

        v84 = v78 + 21 - v81;
        v85 = a2[2];
        v86 = *a2;
        if (v84 > v85)
        {
          if (2 * v85 <= v84 + 992)
          {
            v87 = v84 + 992;
          }

          else
          {
            v87 = 2 * v85;
          }

          a2[2] = v87;
          v86 = malloc_type_realloc(v86, v87, 0x100004077774924uLL);
          *a2 = v86;
          if (!v86)
          {
            goto LABEL_140;
          }

          v78 = *v8;
        }

        memcpy(&v86[v78], &v98[v81], 21 - v81);
        v78 = *v8 + 21 - v81;
        *v8 = v78;
        v82 = a2[2];
        v83 = *a2;
        if (v78 + 2 <= v82)
        {
LABEL_120:
          v28 = 0;
          *&v83[v78] = 8236;
          v54 = *v8;
          v31 = *v8 + 2;
          *v8 = v31;
          v91 = *(a1 + 60);
          do
          {
            v98[v28-- + 20] = (v91 % 0xA) | 0x30;
            v19 = v91 > 9;
            v91 /= 0xAuLL;
          }

          while (v19);
          if (!v28)
          {
LABEL_61:
            v56 = a2[2];
            v57 = *a2;
            if (v31 + 2 <= v56)
            {
              goto LABEL_136;
            }

LABEL_131:
            v94 = v31 + 994;
            v95 = 2 * v56;
            if (v95 <= v94)
            {
              v96 = v94;
            }

            else
            {
              v96 = v95;
            }

            a2[2] = v96;
            v57 = malloc_type_realloc(v57, v96, 0x100004077774924uLL);
            *a2 = v57;
            if (v57)
            {
              v31 = *v8;
              goto LABEL_136;
            }

LABEL_140:
            abort();
          }

          goto LABEL_123;
        }

LABEL_115:
        v88 = v78 + 994;
        v89 = 2 * v82;
        if (v89 <= v88)
        {
          v90 = v88;
        }

        else
        {
          v90 = v89;
        }

        a2[2] = v90;
        v83 = malloc_type_realloc(v83, v90, 0x100004077774924uLL);
        *a2 = v83;
        if (!v83)
        {
          goto LABEL_140;
        }

        v78 = *v8;
        goto LABEL_120;
      }

LABEL_93:
      v75 = v65 + 994;
      v76 = 2 * v69;
      if (v76 <= v75)
      {
        v77 = v75;
      }

      else
      {
        v77 = v76;
      }

      a2[2] = v77;
      v70 = malloc_type_realloc(v70, v77, 0x100004077774924uLL);
      *a2 = v70;
      if (!v70)
      {
        goto LABEL_140;
      }

      v65 = *v8;
      goto LABEL_98;
    }

LABEL_71:
    v62 = v41 + 994;
    v63 = 2 * v45;
    if (v63 <= v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = v63;
    }

    a2[2] = v64;
    v46 = malloc_type_realloc(v46, v64, 0x100004077774924uLL);
    *a2 = v46;
    if (!v46)
    {
      goto LABEL_140;
    }

    v41 = *v8;
    goto LABEL_76;
  }

  v8 = (a2 + 1);
  v22 = a2[1];
  v23 = a2[2];
  v24 = *a2;
  if (v22 + 10 > v23)
  {
    v25 = v22 + 1002;
    v26 = 2 * v23;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    a2[2] = v27;
    v24 = malloc_type_realloc(v24, v27, 0x100004077774924uLL);
    *a2 = v24;
    if (!v24)
    {
      goto LABEL_140;
    }

    v22 = *v8;
  }

  v28 = 0;
  v29 = &v24[v22];
  *(v29 + 4) = 31602;
  v30 = *v8;
  v31 = *v8 + 10;
  *v8 = v31;
  v32 = *(a1 + 60);
  do
  {
    v98[v28-- + 20] = (v32 % 0xA) | 0x30;
    v19 = v32 > 9;
    v32 /= 0xAuLL;
  }

  while (v19);
  if (!v28)
  {
    goto LABEL_61;
  }

  v33 = v30 - v28;
  v34 = a2[2];
  v35 = *a2;
  if (v33 + 10 > v34)
  {
    v36 = v33 + 1002;
LABEL_125:
    if (2 * v34 <= v36)
    {
      v93 = v36;
    }

    else
    {
      v93 = 2 * v34;
    }

    a2[2] = v93;
    v35 = malloc_type_realloc(v35, v93, 0x100004077774924uLL);
    *a2 = v35;
    if (!v35)
    {
      goto LABEL_140;
    }

    v31 = *v8;
  }

LABEL_130:
  memcpy(&v35[v31], &v98[v28 + 21], -v28);
  v31 = *v8 - v28;
  *v8 = v31;
  v56 = a2[2];
  v57 = *a2;
  if (v31 + 2 > v56)
  {
    goto LABEL_131;
  }

LABEL_136:
  *&v57[v31] = 10109;
  *v8 += 2;
LABEL_137:

  return llvm::ms_demangle::FunctionSignatureNode::outputPost(a1, a2, a3);
}

char *llvm::ms_demangle::PointerTypeNode::outputPre(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  if (v6[2] == 3)
  {
    a3 = 1;
  }

  else
  {
    a3 = a3;
  }

  (*(*v6 + 24))(v6, a2, a3);
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7 + *a2;
  v9 = *(v8 - 1);
  if ((v9 & 0x80000000) == 0)
  {
    if (v9 == 62 || (*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x500) != 0)
    {
      goto LABEL_25;
    }

LABEL_11:
    if ((*(a1 + 12) & 0x10) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  v19 = __maskrune(*(v8 - 1), 0x500uLL);
  if (v9 != 62 && v19 == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  if ((v22 + 1) > v23)
  {
    v24 = (v22 + 993);
    v25 = 2 * v23;
    if (v25 <= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    a2[2] = v26;
    v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_100;
    }

    v22 = a2[1];
  }

  v22[v21] = 32;
  a2[1] = a2[1] + 1;
  if ((*(a1 + 12) & 0x10) != 0)
  {
LABEL_32:
    v27 = *a2;
    v28 = a2[1];
    v29 = a2[2];
    if ((v28 + 12) > v29)
    {
      v30 = (v28 + 1004);
      v31 = 2 * v29;
      if (v31 <= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      a2[2] = v32;
      v27 = malloc_type_realloc(v27, v32, 0x100004077774924uLL);
      *a2 = v27;
      if (!v27)
      {
        goto LABEL_100;
      }

      v28 = a2[1];
    }

    v33 = &v28[v27];
    *v33 = *"__unaligned ";
    *(v33 + 2) = 543450478;
    a2[1] = a2[1] + 12;
    v11 = *(*(a1 + 32) + 8);
    if (v11 == 3)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = *(*(a1 + 32) + 8);
  if (v11 == 3)
  {
LABEL_39:
    v34 = *a2;
    v35 = a2[1];
    v36 = a2[2];
    if ((v35 + 1) > v36)
    {
      v37 = (v35 + 993);
      v38 = 2 * v36;
      if (v38 <= v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      a2[2] = v39;
      v34 = malloc_type_realloc(v34, v39, 0x100004077774924uLL);
      *a2 = v34;
      if (!v34)
      {
        goto LABEL_100;
      }

      v35 = a2[1];
    }

    v35[v34] = 40;
    a2[1] = a2[1] + 1;
    outputCallingConvention(a2, *(*(a1 + 32) + 20));
    v12 = *a2;
    v13 = a2[1];
    v40 = a2[2];
    if ((v13 + 1) > v40)
    {
      v41 = (v13 + 993);
      v42 = 2 * v40;
      if (v42 <= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      a2[2] = v43;
      v12 = malloc_type_realloc(v12, v43, 0x100004077774924uLL);
      *a2 = v12;
      if (!v12)
      {
        goto LABEL_100;
      }

      v13 = a2[1];
    }

    v18 = 32;
    goto LABEL_52;
  }

LABEL_13:
  if (v11 != 16)
  {
    goto LABEL_53;
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 1) > v14)
  {
    v15 = (v13 + 993);
    v16 = 2 * v14;
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    a2[2] = v17;
    v12 = malloc_type_realloc(v12, v17, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_100;
    }

    v13 = a2[1];
  }

  v18 = 40;
LABEL_52:
  v13[v12] = v18;
  a2[1] = a2[1] + 1;
LABEL_53:
  result = *(a1 + 24);
  if (result)
  {
    (*(*result + 16))(result, a2, v3);
    result = *a2;
    v45 = a2[1];
    v46 = a2[2];
    if ((v45 + 2) > v46)
    {
      v47 = (v45 + 994);
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      a2[2] = v49;
      result = malloc_type_realloc(result, v49, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_100;
      }

      v45 = a2[1];
    }

    *&v45[result] = 14906;
    a2[1] = a2[1] + 2;
  }

  v50 = *(a1 + 16);
  if (v50 == 3)
  {
    result = *a2;
    v62 = a2[1];
    v63 = a2[2];
    if ((v62 + 2) > v63)
    {
      v64 = (v62 + 994);
      v65 = 2 * v63;
      if (v65 <= v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = v65;
      }

      a2[2] = v66;
      result = malloc_type_realloc(result, v66, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_100;
      }

      v62 = a2[1];
    }

    *&v62[result] = 9766;
    v61 = 2;
  }

  else
  {
    if (v50 == 2)
    {
      result = *a2;
      v51 = a2[1];
      v57 = a2[2];
      if ((v51 + 1) > v57)
      {
        v58 = (v51 + 993);
        v59 = 2 * v57;
        if (v59 <= v58)
        {
          v60 = v58;
        }

        else
        {
          v60 = v59;
        }

        a2[2] = v60;
        result = malloc_type_realloc(result, v60, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_100;
        }

        v51 = a2[1];
      }

      v56 = 38;
    }

    else
    {
      if (v50 != 1)
      {
        goto LABEL_87;
      }

      result = *a2;
      v51 = a2[1];
      v52 = a2[2];
      if ((v51 + 1) > v52)
      {
        v53 = (v51 + 993);
        v54 = 2 * v52;
        if (v54 <= v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = v54;
        }

        a2[2] = v55;
        result = malloc_type_realloc(result, v55, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_100;
        }

        v51 = a2[1];
      }

      v56 = 42;
    }

    v51[result] = v56;
    v61 = 1;
  }

  a2[1] = a2[1] + v61;
LABEL_87:
  v67 = *(a1 + 12);
  if (!v67)
  {
    return result;
  }

  if (v67)
  {
    v68 = *a2;
    v69 = a2[1];
    v70 = a2[2];
    if ((v69 + 5) <= v70)
    {
LABEL_95:
      v74 = &v69[v68];
      v74[4] = 116;
      *v74 = 1936617315;
      a2[1] = a2[1] + 5;
      goto LABEL_96;
    }

    v71 = (v69 + 997);
    v72 = 2 * v70;
    if (v72 <= v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = v72;
    }

    a2[2] = v73;
    v68 = malloc_type_realloc(v68, v73, 0x100004077774924uLL);
    *a2 = v68;
    if (v68)
    {
      v69 = a2[1];
      goto LABEL_95;
    }

LABEL_100:
    abort();
  }

LABEL_96:
  v75 = outputQualifierIfPresent(a2, v67, 2, v67 & 1);

  return outputQualifierIfPresent(a2, v67, 32, v75);
}

uint64_t llvm::ms_demangle::PointerTypeNode::outputPost(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3[2];
  if (v4 == 16 || v4 == 3)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    if (v7 + 1 > v8)
    {
      v9 = v2;
      v10 = v7 + 993;
      if (2 * v8 > v7 + 993)
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v11 = a2;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *v11 = v6;
      if (!v6)
      {
        abort();
      }

      a2 = v11;
      v7 = v11[1];
      v2 = v9;
    }

    *(v6 + v7) = 41;
    ++a2[1];
    v3 = *(v2 + 32);
  }

  v12 = *(*v3 + 32);

  return v12();
}

uint64_t llvm::ms_demangle::TagTypeNode::outputPre(uint64_t a1, char **a2, char a3)
{
  if ((a3 & 2) == 0)
  {
    v5 = *(a1 + 24);
    v6 = a2[1];
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v14 = a2[2];
          v15 = *a2;
          if (v6 + 4 > v14)
          {
            v16 = v6 + 996;
            v17 = 2 * v14;
            if (v17 <= v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = v17;
            }

            a2[2] = v18;
            v15 = malloc_type_realloc(v15, v18, 0x100004077774924uLL);
            *a2 = v15;
            if (!v15)
            {
              goto LABEL_49;
            }

            v6 = a2[1];
          }

          *&v15[v6] = 1836412517;
          v13 = 4;
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v26 = a2[2];
      v27 = *a2;
      if (v6 + 5 > v26)
      {
        v28 = v6 + 997;
        v29 = 2 * v26;
        if (v29 <= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v29;
        }

        a2[2] = v30;
        v27 = malloc_type_realloc(v27, v30, 0x100004077774924uLL);
        *a2 = v27;
        if (!v27)
        {
          goto LABEL_49;
        }

        v6 = a2[1];
      }

      v24 = &v27[v6];
      v24[4] = 110;
      v25 = 1869180533;
    }

    else
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v7 = a2[2];
          v8 = *a2;
          if (v6 + 6 > v7)
          {
            v9 = v6 + 998;
            v10 = 2 * v7;
            if (v10 <= v9)
            {
              v11 = v9;
            }

            else
            {
              v11 = v10;
            }

            a2[2] = v11;
            v8 = malloc_type_realloc(v8, v11, 0x100004077774924uLL);
            *a2 = v8;
            if (!v8)
            {
              goto LABEL_49;
            }

            v6 = a2[1];
          }

          v12 = &v8[v6];
          *(v12 + 2) = 29795;
          *v12 = 1970435187;
          v13 = 6;
          goto LABEL_36;
        }

LABEL_37:
        v31 = a2[2];
        v32 = *a2;
        if (v6 + 1 <= v31)
        {
LABEL_43:
          v32[v6] = 32;
          ++a2[1];
          goto LABEL_44;
        }

        v33 = v6 + 993;
        v34 = 2 * v31;
        if (v34 <= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v34;
        }

        a2[2] = v35;
        v32 = malloc_type_realloc(v32, v35, 0x100004077774924uLL);
        *a2 = v32;
        if (v32)
        {
          v6 = a2[1];
          goto LABEL_43;
        }

LABEL_49:
        abort();
      }

      v19 = a2[2];
      v20 = *a2;
      if (v6 + 5 > v19)
      {
        v21 = v6 + 997;
        v22 = 2 * v19;
        if (v22 <= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        a2[2] = v23;
        v20 = malloc_type_realloc(v20, v23, 0x100004077774924uLL);
        *a2 = v20;
        if (!v20)
        {
          goto LABEL_49;
        }

        v6 = a2[1];
      }

      v24 = &v20[v6];
      v24[4] = 115;
      v25 = 1935764579;
    }

    *v24 = v25;
    v13 = 5;
LABEL_36:
    v6 = &a2[1][v13];
    a2[1] = v6;
    goto LABEL_37;
  }

LABEL_44:
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), a2);
  v37 = *(a1 + 12);
  if (v37)
  {
    v38 = outputQualifierIfPresent(a2, v37, 1, 1);
    v39 = outputQualifierIfPresent(a2, v37, 2, v38);

    return outputQualifierIfPresent(a2, v37, 32, v39);
  }

  return result;
}

uint64_t llvm::ms_demangle::ArrayTypeNode::outputPre(uint64_t a1, void *a2)
{
  result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = outputQualifierIfPresent(a2, v5, 1, 1);
    v7 = outputQualifierIfPresent(a2, v5, 2, v6);

    return outputQualifierIfPresent(a2, v5, 32, v7);
  }

  return result;
}

uint64_t llvm::ms_demangle::ArrayTypeNode::outputOneDimension(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4[2])
  {
    return (*(*a4 + 16))(a4);
  }

  return result;
}

void *llvm::ms_demangle::ArrayTypeNode::outputDimensionsImpl(void *result, char **a2, uint64_t a3)
{
  v3 = result[2];
  v4 = *(v3 + 24);
  if (v4)
  {
    v7 = result;
    result = **(v3 + 16);
    if (result[2])
    {
      result = (*(*result + 16))(result, a2, a3);
      v4 = *(v7[2] + 24);
    }

    if (v4 >= 2)
    {
      v8 = 1;
      do
      {
        v9 = *a2;
        v10 = a2[1];
        v11 = a2[2];
        if ((v10 + 2) > v11)
        {
          v12 = (v10 + 994);
          v13 = 2 * v11;
          if (v13 <= v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = v13;
          }

          a2[2] = v14;
          v9 = malloc_type_realloc(v9, v14, 0x100004077774924uLL);
          *a2 = v9;
          if (!v9)
          {
            abort();
          }

          v10 = a2[1];
        }

        *&v10[v9] = 23389;
        a2[1] += 2;
        v15 = v7[2];
        result = *(*(v15 + 16) + 8 * v8);
        if (result[2])
        {
          result = (*(*result + 16))(result, a2, a3);
          v15 = v7[2];
        }

        ++v8;
      }

      while (v8 < *(v15 + 24));
    }
  }

  return result;
}

uint64_t llvm::ms_demangle::ArrayTypeNode::outputPost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v7 + 1 > v8)
  {
    v9 = v7 + 993;
    v10 = 2 * v8;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    *(a2 + 16) = v11;
    v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
    *a2 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = *(a2 + 8);
  }

  v6[v7] = 91;
  ++*(a2 + 8);
  llvm::ms_demangle::ArrayTypeNode::outputDimensionsImpl(a1, a2, a3);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  if (v13 + 1 <= v14)
  {
    goto LABEL_13;
  }

  v15 = v13 + 993;
  v16 = 2 * v14;
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  *(a2 + 16) = v17;
  v12 = malloc_type_realloc(v12, v17, 0x100004077774924uLL);
  *a2 = v12;
  if (!v12)
  {
LABEL_16:
    abort();
  }

  v13 = *(a2 + 8);
LABEL_13:
  *(v12 + v13) = 93;
  ++*(a2 + 8);
  v18 = *(**(a1 + 24) + 32);

  return v18();
}

uint64_t llvm::ms_demangle::FunctionSymbolNode::output(uint64_t a1, void **a2, uint64_t a3)
{
  (*(**(a1 + 24) + 24))(*(a1 + 24));
  v6 = a2[1];
  if (v6)
  {
    v7 = &v6[*a2];
    v8 = *(v7 - 1);
    if ((v8 & 0x80000000) != 0)
    {
      v10 = __maskrune(*(v7 - 1), 0x500uLL);
      if (v8 != 62 && v10 == 0)
      {
        goto LABEL_20;
      }
    }

    else if (v8 != 62 && (*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x500) == 0)
    {
      goto LABEL_20;
    }

    v12 = *a2;
    v13 = a2[1];
    v14 = a2[2];
    if ((v13 + 1) > v14)
    {
      v15 = (v13 + 993);
      v16 = 2 * v14;
      if (v16 <= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      a2[2] = v17;
      v12 = malloc_type_realloc(v12, v17, 0x100004077774924uLL);
      *a2 = v12;
      if (!v12)
      {
        abort();
      }

      v13 = a2[1];
    }

    v13[v12] = 32;
    a2[1] = a2[1] + 1;
  }

LABEL_20:
  (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  v18 = *(**(a1 + 24) + 32);

  return v18();
}

uint64_t llvm::ms_demangle::VariableSymbolNode::output(uint64_t a1, char **a2, uint64_t a3)
{
  if (*(a1 + 24) - 1 <= 2)
  {
    if ((a3 & 4) == 0)
    {
      v6 = off_27983DB48[(*(a1 + 24) - 1)];
      v7 = strlen(v6);
      v8 = a2[1];
      if (v7)
      {
        v9 = v7;
        v10 = v8 + v7;
        v11 = a2[2];
        v12 = *a2;
        if (v10 > v11)
        {
          if (2 * v11 <= v10 + 992)
          {
            v13 = v10 + 992;
          }

          else
          {
            v13 = 2 * v11;
          }

          a2[2] = v13;
          v12 = malloc_type_realloc(v12, v13, 0x100004077774924uLL);
          *a2 = v12;
          if (!v12)
          {
            goto LABEL_53;
          }

          v8 = a2[1];
        }

        memcpy(&v12[v8], v6, v9);
        v8 = &a2[1][v9];
        a2[1] = v8;
      }

      v14 = a2[2];
      v15 = *a2;
      if (v8 + 2 > v14)
      {
        v16 = v8 + 994;
        v17 = 2 * v14;
        if (v17 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        a2[2] = v18;
        v15 = malloc_type_realloc(v15, v18, 0x100004077774924uLL);
        *a2 = v15;
        if (!v15)
        {
          goto LABEL_53;
        }

        v8 = a2[1];
      }

      *&v15[v8] = 8250;
      a2[1] += 2;
    }

    if ((a3 & 8) == 0)
    {
      v19 = *a2;
      v20 = a2[1];
      v21 = a2[2];
      if ((v20 + 7) > v21)
      {
        v22 = (v20 + 999);
        v23 = 2 * v21;
        if (v23 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        a2[2] = v24;
        v19 = malloc_type_realloc(v19, v24, 0x100004077774924uLL);
        *a2 = v19;
        if (!v19)
        {
          goto LABEL_53;
        }

        v20 = a2[1];
      }

      v25 = &v20[v19];
      *(v25 + 3) = 543385972;
      *v25 = 1952543859;
      a2[1] += 7;
    }
  }

  if ((a3 & 0x20) == 0)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      (*(*v26 + 24))(v26, a2, a3);
      v27 = a2[1];
      if (v27)
      {
        v28 = &v27[*a2];
        v29 = *(v28 - 1);
        if ((v29 & 0x80000000) != 0)
        {
          v31 = __maskrune(*(v28 - 1), 0x500uLL);
          if (v29 == 62 || v31 != 0)
          {
            goto LABEL_40;
          }
        }

        else if (v29 == 62 || (*(MEMORY[0x277D85DE0] + 4 * v29 + 60) & 0x500) != 0)
        {
LABEL_40:
          v33 = *a2;
          v34 = a2[1];
          v35 = a2[2];
          if ((v34 + 1) <= v35)
          {
LABEL_46:
            v34[v33] = 32;
            ++a2[1];
            goto LABEL_47;
          }

          v36 = (v34 + 993);
          v37 = 2 * v35;
          if (v37 <= v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = v37;
          }

          a2[2] = v38;
          v33 = malloc_type_realloc(v33, v38, 0x100004077774924uLL);
          *a2 = v33;
          if (v33)
          {
            v34 = a2[1];
            goto LABEL_46;
          }

LABEL_53:
          abort();
        }
      }
    }
  }

LABEL_47:
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if ((a3 & 0x20) == 0)
  {
    result = *(a1 + 32);
    if (result)
    {
      v40 = *(*result + 32);

      return v40();
    }
  }

  return result;
}

char *llvm::ms_demangle::RttiBaseClassDescriptorNode::output(unsigned int *a1, char **a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 32) > v6)
  {
    v7 = (v5 + 1024);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_78;
    }

    v5 = a2[1];
  }

  v10 = 0;
  v11 = a2[1];
  v12 = v11 + 32;
  a2[1] = v11 + 32;
  v13 = a1[6];
  do
  {
    v63[v10-- + 20] = (v13 % 0xA) | 0x30;
    v14 = v13 > 9;
    v13 /= 0xAuLL;
  }

  while (v14);
  if (v10)
  {
    v15 = &v11[-v10];
    v16 = a2[2];
    v17 = *a2;
    if ((v15 + 32) > v16)
    {
      if (2 * v16 <= (v15 + 1024))
      {
        v18 = (v15 + 1024);
      }

      else
      {
        v18 = 2 * v16;
      }

      a2[2] = v18;
      v17 = malloc_type_realloc(v17, v18, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_78;
      }

      v12 = a2[1];
    }

    memcpy(&v12[v17], &v63[v10 + 21], -v10);
    v12 = &a2[1][-v10];
    a2[1] = v12;
  }

  v19 = a2[2];
  v20 = *a2;
  if ((v12 + 2) > v19)
  {
    v21 = (v12 + 994);
    v22 = 2 * v19;
    if (v22 <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    a2[2] = v23;
    v20 = malloc_type_realloc(v20, v23, 0x100004077774924uLL);
    *a2 = v20;
    if (!v20)
    {
      goto LABEL_78;
    }

    v12 = a2[1];
  }

  *&v12[v20] = 8236;
  v24 = (a2[1] + 2);
  a2[1] = v24;
  v25 = a1[7];
  if (v25 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = -v25;
  }

  v27 = 20;
  do
  {
    v63[v27--] = (v26 % 0xA) | 0x30;
    v14 = v26 > 9;
    v26 /= 0xAuLL;
  }

  while (v14);
  if (v25 < 0)
  {
    v63[v27] = 45;
    if (v27 == 21)
    {
LABEL_30:
      v28 = a2[2];
      v29 = *a2;
      if (v24 + 2 <= v28)
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }
  }

  else if (++v27 == 21)
  {
    goto LABEL_30;
  }

  v30 = v24 + 21 - v27;
  v31 = a2[2];
  v32 = *a2;
  if (v30 > v31)
  {
    if (2 * v31 <= v30 + 992)
    {
      v33 = v30 + 992;
    }

    else
    {
      v33 = 2 * v31;
    }

    a2[2] = v33;
    v32 = malloc_type_realloc(v32, v33, 0x100004077774924uLL);
    *a2 = v32;
    if (!v32)
    {
      goto LABEL_78;
    }

    v24 = a2[1];
  }

  memcpy(&v32[v24], &v63[v27], 21 - v27);
  v28 = a2[2];
  v24 = &a2[1][21 - v27];
  a2[1] = v24;
  v29 = *a2;
  if (v24 + 2 > v28)
  {
LABEL_40:
    v34 = v24 + 994;
    v35 = 2 * v28;
    if (v35 <= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    a2[2] = v36;
    v29 = malloc_type_realloc(v29, v36, 0x100004077774924uLL);
    *a2 = v29;
    if (!v29)
    {
      goto LABEL_78;
    }

    v24 = a2[1];
  }

LABEL_45:
  v37 = 0;
  *&v29[v24] = 8236;
  v38 = a2[1];
  v39 = v38 + 2;
  a2[1] = v38 + 2;
  v40 = a1[8];
  do
  {
    v63[v37-- + 20] = (v40 % 0xA) | 0x30;
    v14 = v40 > 9;
    v40 /= 0xAuLL;
  }

  while (v14);
  if (v37)
  {
    v41 = &v38[-v37];
    v42 = a2[2];
    v43 = *a2;
    if ((v41 + 2) > v42)
    {
      if (2 * v42 <= (v41 + 994))
      {
        v44 = (v41 + 994);
      }

      else
      {
        v44 = 2 * v42;
      }

      a2[2] = v44;
      v43 = malloc_type_realloc(v43, v44, 0x100004077774924uLL);
      *a2 = v43;
      if (!v43)
      {
        goto LABEL_78;
      }

      v39 = a2[1];
    }

    memcpy(&v39[v43], &v63[v37 + 21], -v37);
    v39 = &a2[1][-v37];
    a2[1] = v39;
  }

  v45 = a2[2];
  v46 = *a2;
  if ((v39 + 2) > v45)
  {
    v47 = (v39 + 994);
    v48 = 2 * v45;
    if (v48 <= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    a2[2] = v49;
    v46 = malloc_type_realloc(v46, v49, 0x100004077774924uLL);
    *a2 = v46;
    if (!v46)
    {
      goto LABEL_78;
    }

    v39 = a2[1];
  }

  v50 = 0;
  *&v39[v46] = 8236;
  v51 = a2[1];
  v52 = v51 + 2;
  a2[1] = v51 + 2;
  v53 = a1[9];
  do
  {
    v63[v50-- + 20] = (v53 % 0xA) | 0x30;
    v14 = v53 > 9;
    v53 /= 0xAuLL;
  }

  while (v14);
  if (v50)
  {
    v54 = &v51[-v50];
    v55 = a2[2];
    v56 = *a2;
    if ((v54 + 2) > v55)
    {
      if (2 * v55 <= (v54 + 994))
      {
        v57 = (v54 + 994);
      }

      else
      {
        v57 = 2 * v55;
      }

      a2[2] = v57;
      v56 = malloc_type_realloc(v56, v57, 0x100004077774924uLL);
      *a2 = v56;
      if (!v56)
      {
        goto LABEL_78;
      }

      v52 = a2[1];
    }

    memcpy(&v52[v56], &v63[v50 + 21], -v50);
    v52 = &a2[1][-v50];
    a2[1] = v52;
  }

  v58 = a2[2];
  result = *a2;
  if ((v52 + 2) > v58)
  {
    v60 = (v52 + 994);
    v61 = 2 * v58;
    if (v61 <= v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = v61;
    }

    a2[2] = v62;
    result = malloc_type_realloc(result, v62, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v52 = a2[1];
      goto LABEL_77;
    }

LABEL_78:
    abort();
  }

LABEL_77:
  *&v52[result] = 10025;
  a2[1] += 2;
  return result;
}

char *llvm::ms_demangle::VcallThunkIdentifierNode::output(uint64_t a1, char **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 8) > v6)
  {
    v7 = (v5 + 1000);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
  }

  v10 = 0;
  *&v5[v4] = 0x7B276C6C61637660;
  v11 = a2[1];
  v12 = v11 + 8;
  a2[1] = v11 + 8;
  v13 = *(a1 + 24);
  do
  {
    v26[v10-- + 20] = (v13 % 0xA) | 0x30;
    v14 = v13 >= 9;
    v15 = v13 == 9;
    v13 /= 0xAuLL;
  }

  while (!v15 && v14);
  if (v10)
  {
    v16 = &v11[-v10];
    v17 = a2[2];
    v18 = *a2;
    if ((v16 + 8) > v17)
    {
      if (2 * v17 <= (v16 + 1000))
      {
        v19 = (v16 + 1000);
      }

      else
      {
        v19 = 2 * v17;
      }

      a2[2] = v19;
      v18 = malloc_type_realloc(v18, v19, 0x100004077774924uLL);
      *a2 = v18;
      if (!v18)
      {
        goto LABEL_24;
      }

      v12 = a2[1];
    }

    memcpy(&v12[v18], &v26[v10 + 21], -v10);
    v12 = &a2[1][-v10];
    a2[1] = v12;
  }

  v20 = a2[2];
  result = *a2;
  if ((v12 + 9) > v20)
  {
    v22 = (v12 + 1001);
    v23 = 2 * v20;
    if (v23 <= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    a2[2] = v24;
    result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = a2[1];
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  v25 = &v12[result];
  *v25 = *", {flat}}";
  v25[8] = 125;
  a2[1] += 9;
  return result;
}

uint64_t llvm::ms_demangle::SpecialTableSymbolNode::output(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v7 = a2[1];
    if (v6)
    {
      v8 = a2[2];
      v9 = *a2;
      if ((v7 + 5) <= v8)
      {
        v12 = a2[1];
      }

      else
      {
        v10 = 2 * v8;
        if (v10 <= (v7 + 997))
        {
          v11 = (v7 + 997);
        }

        else
        {
          v11 = v10;
        }

        a2[2] = v11;
        v9 = malloc_type_realloc(v9, v11, 0x100004077774924uLL);
        *a2 = v9;
        if (!v9)
        {
          goto LABEL_34;
        }

        v12 = a2[1];
      }

      v13 = &v12[v9];
      v13[4] = 116;
      *v13 = 1936617315;
      a2[1] = a2[1] + 5;
    }

    v14 = outputQualifierIfPresent(a2, v6, 2, v6 & 1);
    outputQualifierIfPresent(a2, v6, 32, v14);
    v15 = a2[1];
    if (v15 > v7)
    {
      v16 = a2[2];
      v17 = *a2;
      if ((v15 + 1) > v16)
      {
        v18 = (v15 + 993);
        v19 = 2 * v16;
        if (v19 <= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        a2[2] = v20;
        v17 = malloc_type_realloc(v17, v20, 0x100004077774924uLL);
        *a2 = v17;
        if (!v17)
        {
          goto LABEL_34;
        }

        v15 = a2[1];
      }

      v15[v17] = 32;
      a2[1] = a2[1] + 1;
    }
  }

  result = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (!*(a1 + 24))
  {
    return result;
  }

  v22 = *a2;
  v23 = a2[1];
  v24 = a2[2];
  if ((v23 + 6) > v24)
  {
    v25 = (v23 + 998);
    v26 = 2 * v24;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    a2[2] = v27;
    v22 = malloc_type_realloc(v22, v27, 0x100004077774924uLL);
    *a2 = v22;
    if (!v22)
    {
      goto LABEL_34;
    }

    v23 = a2[1];
  }

  v28 = &v23[v22];
  *(v28 + 2) = 24608;
  *v28 = 1919903355;
  a2[1] = a2[1] + 6;
  (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  result = *a2;
  v29 = a2[1];
  v30 = a2[2];
  if ((v29 + 2) > v30)
  {
    v31 = (v29 + 994);
    v32 = 2 * v30;
    if (v32 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    a2[2] = v33;
    result = malloc_type_realloc(result, v33, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v29 = a2[1];
      goto LABEL_32;
    }

LABEL_34:
    abort();
  }

LABEL_32:
  *&v29[result] = 32039;
  a2[1] = a2[1] + 2;
  return result;
}

uint64_t llvm::ms_demangle::TypeNode::output(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 24))(a1);
  v6 = *(*a1 + 32);

  return v6(a1, a2, a3);
}

uint64_t outputQualifierIfPresent(void *a1, int a2, int a3, uint64_t a4)
{
  if ((a3 & a2) != 0)
  {
    if (a4)
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      if (v5 + 1 > v6)
      {
        v7 = a3;
        v8 = v5 + 993;
        v9 = 2 * v6;
        if (v9 <= v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v9;
        }

        a1[2] = v10;
        v11 = a1;
        v4 = malloc_type_realloc(v4, v10, 0x100004077774924uLL);
        *v11 = v4;
        if (!v4)
        {
          goto LABEL_37;
        }

        a1 = v11;
        v5 = v11[1];
        a3 = v7;
      }

      *(v4 + v5) = 32;
      ++a1[1];
    }

    if (a3 == 32)
    {
      v13 = a1 + 1;
      v31 = a1[1];
      v32 = a1[2];
      v33 = *a1;
      if (v31 + 10 > v32)
      {
        v34 = v31 + 1002;
        v35 = 2 * v32;
        if (v35 <= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v35;
        }

        a1[2] = v36;
        v37 = a1;
        v38 = malloc_type_realloc(v33, v36, 0x100004077774924uLL);
        *v37 = v38;
        if (!v38)
        {
          goto LABEL_37;
        }

        v33 = v38;
        v31 = *v13;
      }

      v39 = &v33[v31];
      *v39 = *"__restrict";
      *(v39 + 4) = 29795;
      v22 = 10;
      goto LABEL_34;
    }

    if (a3 == 2)
    {
      v13 = a1 + 1;
      v23 = a1[1];
      v24 = a1[2];
      v25 = *a1;
      if (v23 + 8 > v24)
      {
        v26 = v23 + 1000;
        v27 = 2 * v24;
        if (v27 <= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        a1[2] = v28;
        v29 = a1;
        v30 = malloc_type_realloc(v25, v28, 0x100004077774924uLL);
        *v29 = v30;
        if (!v30)
        {
          goto LABEL_37;
        }

        v25 = v30;
        v23 = *v13;
      }

      *&v25[v23] = 0x656C6974616C6F76;
      v22 = 8;
      goto LABEL_34;
    }

    if (a3 != 1)
    {
      return 1;
    }

    v13 = a1 + 1;
    v12 = a1[1];
    v14 = a1[2];
    v15 = *a1;
    if (v12 + 5 <= v14)
    {
      goto LABEL_19;
    }

    v16 = v12 + 997;
    v17 = 2 * v14;
    if (v17 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    a1[2] = v18;
    v19 = a1;
    v20 = malloc_type_realloc(v15, v18, 0x100004077774924uLL);
    *v19 = v20;
    if (v20)
    {
      v15 = v20;
      v12 = *v13;
LABEL_19:
      v21 = &v15[v12];
      v21[4] = 116;
      *v21 = 1936617315;
      v22 = 5;
LABEL_34:
      *v13 += v22;
      return 1;
    }

LABEL_37:
    abort();
  }

  return a4;
}

void *llvm::rustDemangle(_WORD *a1, unint64_t a2)
{
  if (a2 < 2 || *a1 != 21087)
  {
    return 0;
  }

  v35 = 1;
  v30 = 1;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v34 = -1;
  v29 = 0;
  v27[1] = 0;
  v27[2] = 0;
  v2 = (a1 + 1);
  v27[0] = 500;
  v3 = a2 - 2;
  if (a2 == 2)
  {
    v10 = 0;
    v9 = -1;
    v8 = 1;
  }

  else
  {
    v4 = memchr(a1 + 1, 46, v3);
    v5 = v4 - v2;
    if (v3 >= v4 - v2)
    {
      v6 = (v4 - v2);
    }

    else
    {
      v6 = v3;
    }

    v7 = v5 == -1;
    if (v5 == -1)
    {
      v5 = -1;
      v6 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    if (v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = -1;
    }

    if (v4)
    {
      v10 = v6;
    }

    else
    {
      v10 = v3;
    }
  }

  v27[3] = v2;
  v28 = v10;
  {
    if (v8)
    {
      if ((v30 & 0x100) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_36;
    }

    if ((v30 & 0x100) == 0 && v30 == 1)
    {
      v12 = v31;
      v13 = v32;
      if (v32 + 2 > v33)
      {
        if (2 * v33 <= v32 + 994)
        {
          v14 = v32 + 994;
        }

        else
        {
          v14 = 2 * v33;
        }

        v33 = v14;
        v12 = malloc_type_realloc(v31, v14, 0x100004077774924uLL);
        v31 = v12;
        if (!v12)
        {
          goto LABEL_64;
        }

        v13 = v32;
      }

      *&v12[v13] = 10272;
      v32 += 2;
    }
  }

  else
  {
    HIBYTE(v30) = 1;
    if (v8)
    {
LABEL_36:
      free(v31);
      return 0;
    }
  }

  v15 = v3 - v9;
  if (v3 < v9)
  {
    goto LABEL_64;
  }

  if ((v30 & 0x100) != 0)
  {
    goto LABEL_36;
  }

  if (v30 != 1 || v3 == v9)
  {
    if (!v30)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = v31;
    v18 = v32;
    v19 = v32 + v15;
    if (v32 + v15 > v33)
    {
      if (2 * v33 <= v19 + 992)
      {
        v20 = v19 + 992;
      }

      else
      {
        v20 = 2 * v33;
      }

      v33 = v20;
      v17 = malloc_type_realloc(v31, v20, 0x100004077774924uLL);
      v31 = v17;
      if (!v17)
      {
        goto LABEL_64;
      }

      v18 = v32;
    }

    memcpy(&v17[v18], &v2[v9], v3 - v9);
    v32 += v15;
    if ((v30 & 0x100) != 0)
    {
      goto LABEL_36;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v21 = v31;
  v22 = v32;
  if (v32 + 1 > v33)
  {
    if (2 * v33 <= v32 + 993)
    {
      v23 = v32 + 993;
    }

    else
    {
      v23 = 2 * v33;
    }

    v33 = v23;
    v21 = malloc_type_realloc(v31, v23, 0x100004077774924uLL);
    v31 = v21;
    if (!v21)
    {
      goto LABEL_64;
    }

    v22 = v32;
  }

  *(v21 + v22) = 41;
  ++v32;
  if ((v30 & 0x100) != 0)
  {
    goto LABEL_36;
  }

LABEL_57:
  v24 = v31;
  v25 = v32;
  if (v32 + 1 > v33)
  {
    if (2 * v33 <= v32 + 993)
    {
      v26 = v32 + 993;
    }

    else
    {
      v26 = 2 * v33;
    }

    v33 = v26;
    v24 = malloc_type_realloc(v31, v26, 0x100004077774924uLL);
    v31 = v24;
    if (v24)
    {
      v25 = v32;
      goto LABEL_63;
    }

LABEL_64:
    abort();
  }

LABEL_63:
  *(v24 + v25) = 0;
  return v31;
}

uint64_t anonymous namespace::Demangler::demanglePath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 49) & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (v3 < *a1)
    {
      *(a1 + 8) = v3 + 1;
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v5 >= v4)
      {
        goto LABEL_123;
      }

      v6 = v5 + 1;
      *(a1 + 40) = v5 + 1;
      v7 = *(a1 + 24);
      v8 = *(v7 + v5);
      v9 = a1;
      if (v8 > 0x4C)
      {
        if (*(v7 + v5) <= 0x57u)
        {
          if (v8 != 77)
          {
            if (v8 == 78 && v6 < v4)
            {
              *(a1 + 40) = v5 + 2;
              v10 = *(v7 + v6);
              if (((v10 & 0xDF) - 65) < 0x1Au)
              {
                if ((*(v9 + 49) & 1) != 0 || (v11 = v9, v12 = *(v9 + 32), v13 = *(v9 + 40), v13 >= v12) || (v14 = *(v9 + 24), *(v14 + v13) != 115))
                {
                  v17 = 0;
                  if ((v10 - 65) > 0x19)
                  {
                    goto LABEL_230;
                  }

                  goto LABEL_114;
                }

                v15 = v13 + 1;
                *(v9 + 40) = v13 + 1;
                if (v13 + 1 < v12)
                {
                  if (*(v14 + v15) == 95)
                  {
                    v16 = 0;
                    *(v9 + 40) = v13 + 2;
                    goto LABEL_16;
                  }

                  v124 = 0;
                  v125 = (v14 + v15);
                  v126 = ~v13 + v12;
                  v127 = v13 + 2;
                  while (1)
                  {
                    *(v9 + 40) = v127;
                    v129 = *v125++;
                    v128 = v129;
                    if (v129 == 95)
                    {
                      break;
                    }

                    if ((v128 - 48) >= 0xAu)
                    {
                      if ((v128 - 97) >= 0x1Au)
                      {
                        if ((v128 - 65) >= 0x1Au)
                        {
                          goto LABEL_229;
                        }

                        v130 = -29;
                      }

                      else
                      {
                        v130 = -87;
                      }
                    }

                    else
                    {
                      v130 = -48;
                    }

                    if (v124 <= 0x421084210842108)
                    {
                      v131 = v130 + v128;
                      v132 = 62 * v124;
                      if (!__CFADD__(v131, v132))
                      {
                        v124 = v131 + v132;
                        ++v127;
                        if (--v126)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_229;
                  }

                  if (v124 == -1)
                  {
                    v17 = 0;
                    *(v9 + 49) = 1;
                    if ((v10 - 65) > 0x19)
                    {
LABEL_230:
                      if (*(&v135 + 1))
                      {
                        v133 = v135;
                        v134 = v136;
                      }

LABEL_232:
                      v18 = 0;
                      a1 = v9;
                      goto LABEL_124;
                    }

LABEL_114:
                    if (v10 == 83)
                    {
                    }

                    else if (v10 == 67)
                    {
                    }

                    else
                    {
                    }

                    if (*(&v135 + 1))
                    {
                      v133 = v135;
                      v134 = v136;
                    }

                    goto LABEL_232;
                  }

                  v16 = v124 + 1;
                  if (v16 != -1)
                  {
LABEL_16:
                    v17 = v16 + 1;
                    if ((v10 - 65) > 0x19)
                    {
                      goto LABEL_230;
                    }

                    goto LABEL_114;
                  }

                  v11 = v9;
                }

LABEL_229:
                v17 = 0;
                *(v11 + 49) = 1;
                if ((v10 - 65) > 0x19)
                {
                  goto LABEL_230;
                }

                goto LABEL_114;
              }
            }

            goto LABEL_123;
          }

          v56 = *(a1 + 48);
          *(a1 + 48) = 0;
          if (v6 < v4 && *(v7 + v6) == 115)
          {
            v57 = v5 + 2;
            *(a1 + 40) = v5 + 2;
            if (v5 + 2 >= v4)
            {
              goto LABEL_168;
            }

            if (*(v7 + v57) == 95)
            {
              *(a1 + 40) = v5 + 3;
              goto LABEL_169;
            }

            v70 = 0;
            v71 = (v7 + v57);
            v72 = v4 - v5 - 2;
            v73 = v5 + 3;
            while (1)
            {
              *(a1 + 40) = v73;
              v75 = *v71++;
              v74 = v75;
              if (v75 == 95)
              {
                break;
              }

              if ((v74 - 48) >= 0xAu)
              {
                if ((v74 - 97) >= 0x1Au)
                {
                  if ((v74 - 65) >= 0x1Au)
                  {
                    goto LABEL_168;
                  }

                  v76 = -29;
                }

                else
                {
                  v76 = -87;
                }
              }

              else
              {
                v76 = -48;
              }

              if (v70 <= 0x421084210842108)
              {
                v77 = v76 + v74;
                v78 = 62 * v70;
                if (!__CFADD__(v77, v78))
                {
                  v70 = v77 + v78;
                  ++v73;
                  if (--v72)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_168;
            }

            if (v70 >= 0xFFFFFFFFFFFFFFFELL)
            {
LABEL_168:
              *(a1 + 49) = 1;
            }
          }

LABEL_169:
          *(v9 + 48) = v56;
          if ((*(v9 + 49) & 1) == 0 && v56)
          {
            v97 = v9;
            v98 = *(v9 + 56);
            v99 = *(v9 + 64);
            v100 = *(v9 + 72);
            if (v99 + 1 > v100)
            {
              v101 = v99 + 993;
              v102 = 2 * v100;
              if (v102 <= v101)
              {
                v103 = v101;
              }

              else
              {
                v103 = v102;
              }

              *(v9 + 72) = v103;
              v98 = malloc_type_realloc(v98, v103, 0x100004077774924uLL);
              *(v9 + 56) = v98;
              if (!v98)
              {
                goto LABEL_235;
              }

              v97 = v9;
              v99 = *(v9 + 64);
            }

            *(v98 + v99) = 60;
            ++*(v97 + 64);
          }

          a1 = v9;
          if (*(v9 + 49))
          {
            goto LABEL_209;
          }

LABEL_201:
          if (*(a1 + 48) == 1)
          {
            v118 = *(a1 + 56);
            v119 = *(a1 + 64);
            v120 = *(a1 + 72);
            if (v119 + 1 <= v120)
            {
LABEL_208:
              v18 = 0;
              v118[v119] = 62;
              ++*(a1 + 64);
              goto LABEL_124;
            }

            v121 = v119 + 993;
            v122 = 2 * v120;
            if (v122 <= v121)
            {
              v123 = v121;
            }

            else
            {
              v123 = v122;
            }

            *(a1 + 72) = v123;
            v118 = malloc_type_realloc(v118, v123, 0x100004077774924uLL);
            *(v9 + 56) = v118;
            if (v118)
            {
              a1 = v9;
              v119 = *(v9 + 64);
              goto LABEL_208;
            }

LABEL_235:
            abort();
          }

LABEL_209:
          v18 = 0;
          goto LABEL_124;
        }

        if (v8 != 88)
        {
          if (v8 == 89)
          {
            if (*(a1 + 48) == 1)
            {
              v48 = *(a1 + 56);
              v49 = *(a1 + 64);
              v50 = *(a1 + 72);
              if (v49 + 1 > v50)
              {
                v51 = v49 + 993;
                v52 = 2 * v50;
                if (v52 <= v51)
                {
                  v53 = v51;
                }

                else
                {
                  v53 = v52;
                }

                *(a1 + 72) = v53;
                v48 = malloc_type_realloc(v48, v53, 0x100004077774924uLL);
                *(v9 + 56) = v48;
                if (!v48)
                {
                  goto LABEL_235;
                }

                a1 = v9;
                v49 = *(v9 + 64);
              }

              *(v48 + v49) = 60;
              ++*(a1 + 64);
            }

            goto LABEL_191;
          }

LABEL_123:
          v18 = 0;
          *(a1 + 49) = 1;
          goto LABEL_124;
        }

        v58 = *(a1 + 48);
        *(a1 + 48) = 0;
        if (v6 < v4 && *(v7 + v6) == 115)
        {
          v59 = v5 + 2;
          *(a1 + 40) = v5 + 2;
          if (v5 + 2 >= v4)
          {
            goto LABEL_181;
          }

          if (*(v7 + v59) == 95)
          {
            *(a1 + 40) = v5 + 3;
            goto LABEL_182;
          }

          v79 = 0;
          v80 = (v7 + v59);
          v81 = v4 - v5 - 2;
          v82 = v5 + 3;
          while (1)
          {
            *(a1 + 40) = v82;
            v84 = *v80++;
            v83 = v84;
            if (v84 == 95)
            {
              break;
            }

            if ((v83 - 48) >= 0xAu)
            {
              if ((v83 - 97) >= 0x1Au)
              {
                if ((v83 - 65) >= 0x1Au)
                {
                  goto LABEL_181;
                }

                v85 = -29;
              }

              else
              {
                v85 = -87;
              }
            }

            else
            {
              v85 = -48;
            }

            if (v79 <= 0x421084210842108)
            {
              v86 = v85 + v83;
              v87 = 62 * v79;
              if (!__CFADD__(v86, v87))
              {
                v79 = v86 + v87;
                ++v82;
                if (--v81)
                {
                  continue;
                }
              }
            }

            goto LABEL_181;
          }

          if (v79 >= 0xFFFFFFFFFFFFFFFELL)
          {
LABEL_181:
            *(a1 + 49) = 1;
          }
        }

LABEL_182:
        *(v9 + 48) = v58;
        if ((*(v9 + 49) & 1) == 0 && v58)
        {
          v104 = v9;
          v105 = *(v9 + 56);
          v106 = *(v9 + 64);
          v107 = *(v9 + 72);
          if (v106 + 1 > v107)
          {
            v108 = v106 + 993;
            v109 = 2 * v107;
            if (v109 <= v108)
            {
              v110 = v108;
            }

            else
            {
              v110 = v109;
            }

            *(v9 + 72) = v110;
            v105 = malloc_type_realloc(v105, v110, 0x100004077774924uLL);
            *(v9 + 56) = v105;
            if (!v105)
            {
              goto LABEL_235;
            }

            v104 = v9;
            v106 = *(v9 + 64);
          }

          *(v105 + v106) = 60;
          ++*(v104 + 64);
        }

LABEL_191:
        if ((*(v9 + 49) & 1) == 0)
        {
          v111 = v9;
          if (*(v9 + 48) == 1)
          {
            v112 = *(v9 + 56);
            v113 = *(v9 + 64);
            v114 = *(v9 + 72);
            if (v113 + 4 > v114)
            {
              v115 = v113 + 996;
              v116 = 2 * v114;
              if (v116 <= v115)
              {
                v117 = v115;
              }

              else
              {
                v117 = v116;
              }

              *(v9 + 72) = v117;
              v112 = malloc_type_realloc(v112, v117, 0x100004077774924uLL);
              *(v9 + 56) = v112;
              if (!v112)
              {
                goto LABEL_235;
              }

              v111 = v9;
              v113 = *(v9 + 64);
            }

            *&v112[v113] = 544432416;
            *(v111 + 64) += 4;
          }
        }

        a1 = v9;
        if (*(v9 + 49))
        {
          goto LABEL_209;
        }

        goto LABEL_201;
      }

      if (v8 == 66)
      {
        if (v6 >= v4)
        {
          goto LABEL_123;
        }

        if (*(v7 + v6) == 95)
        {
          v54 = 0;
          v55 = v5 + 2;
          *(a1 + 40) = v5 + 2;
        }

        else
        {
          v61 = 0;
          v62 = (v7 + v6);
          v55 = v5 + 2;
          while (1)
          {
            *(a1 + 40) = v55;
            v64 = *v62++;
            v63 = v64;
            if (v64 == 95)
            {
              break;
            }

            if ((v63 - 48) >= 0xAu)
            {
              if ((v63 - 97) >= 0x1Au)
              {
                if ((v63 - 65) > 0x19u)
                {
                  goto LABEL_123;
                }

                v65 = -29;
              }

              else
              {
                v65 = -87;
              }
            }

            else
            {
              v65 = -48;
            }

            if (v61 <= 0x421084210842108)
            {
              v66 = v65 + v63;
              v67 = 62 * v61;
              if (!__CFADD__(v66, v67))
              {
                v61 = v66 + v67;
                if (v4 != v55++)
                {
                  continue;
                }
              }
            }

            goto LABEL_123;
          }

          if (v61 == -1)
          {
            goto LABEL_123;
          }

          v54 = v61 + 1;
          if (v61 + 1 >= v55)
          {
            goto LABEL_123;
          }
        }

        if (*(a1 + 48) != 1)
        {
          goto LABEL_209;
        }

        *(a1 + 40) = v54;
        a1 = v9;
        *(v9 + 40) = v55;
LABEL_124:
        *(a1 + 8) = v3;
        return v18;
      }

      if (v8 != 67)
      {
        if (v8 != 73)
        {
          goto LABEL_123;
        }

        v19 = a3;
        v20 = a2;
        if (!v20)
        {
        }

        a1 = v9;
        v21 = v19;
        if ((*(v9 + 49) & 1) == 0)
        {
          if (*(v9 + 48) == 1)
          {
            v22 = *(v9 + 56);
            v23 = *(v9 + 64);
            v24 = *(v9 + 72);
            if (v23 + 1 > v24)
            {
              if (2 * v24 <= v23 + 993)
              {
                v25 = v23 + 993;
              }

              else
              {
                v25 = 2 * v24;
              }

              *(v9 + 72) = v25;
              v22 = malloc_type_realloc(v22, v25, 0x100004077774924uLL);
              *(v9 + 56) = v22;
              if (!v22)
              {
                goto LABEL_235;
              }

              a1 = v9;
              v23 = *(v9 + 64);
              v21 = v19;
            }

            *(v22 + v23) = 60;
            ++*(a1 + 64);
            if (*(a1 + 49))
            {
              goto LABEL_118;
            }
          }

          v26 = 0;
          v27 = 0;
          do
          {
            v28 = *(a1 + 40);
            if (v28 < *(a1 + 32) && *(*(a1 + 24) + v28) == 69)
            {
              *(a1 + 40) = v28 + 1;
              break;
            }

            if (v27 && *(a1 + 48) == 1)
            {
              v29 = *(a1 + 56);
              v30 = *(a1 + 64);
              v31 = *(a1 + 72);
              if (v30 + 2 > v31)
              {
                v32 = v30 + 994;
                v33 = 2 * v31;
                if (v33 <= v32)
                {
                  v34 = v32;
                }

                else
                {
                  v34 = v33;
                }

                *(a1 + 72) = v34;
                v29 = malloc_type_realloc(v29, v34, 0x100004077774924uLL);
                *(v9 + 56) = v29;
                if (!v29)
                {
                  goto LABEL_235;
                }

                a1 = v9;
                v30 = *(v9 + 64);
              }

              *&v29[v30] = 8236;
              *(a1 + 64) += 2;
              v26 = *(a1 + 49);
            }

            if (v26)
            {
              goto LABEL_34;
            }

            v35 = *(a1 + 32);
            v36 = *(a1 + 40);
            if (v36 >= v35)
            {
              goto LABEL_34;
            }

            v37 = *(a1 + 24);
            v38 = *(v37 + v36);
            if (v38 == 75)
            {
              *(a1 + 40) = v36 + 1;
              goto LABEL_35;
            }

            if (v38 != 76)
            {
LABEL_34:
            }

            else
            {
              *(a1 + 40) = v36 + 1;
              if (v36 + 1 >= v35)
              {
                goto LABEL_69;
              }

              if (*(v37 + v36 + 1) == 95)
              {
                *(a1 + 40) = v36 + 2;
              }

              else
              {
                v39 = 0;
                v40 = (v37 + v36 + 1);
                v41 = ~v36 + v35;
                v42 = v36 + 2;
                while (1)
                {
                  *(a1 + 40) = v42;
                  v44 = *v40++;
                  v43 = v44;
                  if (v44 == 95)
                  {
                    break;
                  }

                  if ((v43 - 48) >= 0xAu)
                  {
                    if ((v43 - 97) >= 0x1Au)
                    {
                      if ((v43 - 65) >= 0x1Au)
                      {
                        goto LABEL_69;
                      }

                      v45 = -29;
                    }

                    else
                    {
                      v45 = -87;
                    }
                  }

                  else
                  {
                    v45 = -48;
                  }

                  if (v39 <= 0x421084210842108)
                  {
                    v46 = v45 + v43;
                    v47 = 62 * v39;
                    if (!__CFADD__(v46, v47))
                    {
                      v39 = v46 + v47;
                      ++v42;
                      if (--v41)
                      {
                        continue;
                      }
                    }
                  }

                  goto LABEL_69;
                }

                if (v39 == -1)
                {
LABEL_69:
                  *(a1 + 49) = 1;
                  goto LABEL_35;
                }
              }
            }

LABEL_35:
            ++v27;
            a1 = v9;
            v26 = *(v9 + 49);
            v21 = v19;
          }

          while ((v26 & 1) == 0);
        }

LABEL_118:
        if (v21 == 1)
        {
          v18 = 1;
          goto LABEL_124;
        }

LABEL_213:
        a1 = v9;
        v18 = 0;
        goto LABEL_124;
      }

      if (v6 < v4 && *(v7 + v6) == 115)
      {
        v60 = v5 + 2;
        *(a1 + 40) = v5 + 2;
        if (v5 + 2 < v4)
        {
          if (*(v7 + v60) == 95)
          {
            *(a1 + 40) = v5 + 3;
            goto LABEL_212;
          }

          v88 = 0;
          v89 = (v7 + v60);
          v90 = v4 - v5 - 2;
          v91 = v5 + 3;
          while (1)
          {
            *(a1 + 40) = v91;
            v93 = *v89++;
            v92 = v93;
            if (v93 == 95)
            {
              break;
            }

            if ((v92 - 48) >= 0xAu)
            {
              if ((v92 - 97) >= 0x1Au)
              {
                if ((v92 - 65) >= 0x1Au)
                {
                  goto LABEL_211;
                }

                v94 = -29;
              }

              else
              {
                v94 = -87;
              }
            }

            else
            {
              v94 = -48;
            }

            if (v88 <= 0x421084210842108)
            {
              v95 = v94 + v92;
              v96 = 62 * v88;
              if (!__CFADD__(v95, v96))
              {
                v88 = v95 + v96;
                ++v91;
                if (--v90)
                {
                  continue;
                }
              }
            }

            goto LABEL_211;
          }

          if (v88 < 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_212;
          }
        }

LABEL_211:
        *(a1 + 49) = 1;
      }

LABEL_212:
      goto LABEL_213;
    }
  }

  v18 = 0;
  *(a1 + 49) = 1;
  return v18;
}

void *anonymous namespace::Demangler::print(void *result, const void *a2, size_t a3)
{
  if ((*(result + 49) & 1) == 0 && *(result + 48) == 1 && a3 != 0)
  {
    v4 = result;
    v7 = (result + 7);
    v5 = result[7];
    v6 = *(v7 + 1);
    v8 = v6 + a3;
    v9 = v4;
    v10 = v4[9];
    if (v6 + a3 > v10)
    {
      v11 = a2;
      v12 = a3;
      if (2 * v10 <= v8 + 992)
      {
        v13 = v8 + 992;
      }

      else
      {
        v13 = 2 * v10;
      }

      v9[9] = v13;
      v5 = malloc_type_realloc(v5, v13, 0x100004077774924uLL);
      v9[7] = v5;
      if (!v5)
      {
        abort();
      }

      v6 = v9[8];
      a3 = v12;
      a2 = v11;
    }

    v14 = a3;
    result = memcpy(&v5[v6], a2, a3);
    v9[8] += v14;
  }

  return result;
}

void *anonymous namespace::Demangler::printIdentifier(void *result, unsigned __int8 **a2)
{
  if ((*(result + 49) & 1) == 0)
  {
    v2 = result;
    if (*(result + 48) == 1)
    {
      v3 = *a2;
      v4 = a2[1];
      if (*(a2 + 16) == 1)
      {
        v5 = result[8];
        if (!v4)
        {
          goto LABEL_21;
        }

        v6 = 0;
        v7 = -1;
        do
        {
          if (v3[v6] == 95)
          {
            v7 = v6;
          }

          ++v6;
        }

        while (v4 != v6);
        if (v7 == -1)
        {
LABEL_21:
          v8 = 0;
          v9 = result[8];
          if (v4)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v7)
          {
            v22 = *a2;
            v9 = result[8];
            v23 = v7;
            v24 = v9;
            while (1)
            {
              v26 = *v22++;
              v25 = v26;
              v27 = v26 - 97;
              if ((v26 - 48) >= 0xA && v27 >= 0x1A && v25 != 95 && (v25 - 65) > 0x19)
              {
                goto LABEL_92;
              }

              v30 = v2[9];
              result = v2[7];
              if (v9 + 4 > v30)
              {
                v31 = 2 * v30;
                if (v31 <= v9 + 996)
                {
                  v32 = v9 + 996;
                }

                else
                {
                  v32 = v31;
                }

                v2[9] = v32;
                result = malloc_type_realloc(result, v32, 0x100004077774924uLL);
                v2[7] = result;
                if (!result)
                {
                  goto LABEL_94;
                }

                v9 = v2[8];
              }

              *(result + v9) = v25;
              v9 = v2[8] + 4;
              v2[8] = v9;
              if (!--v23)
              {
                v8 = v7 + 1;
                v5 = v24;
                if (v7 + 1 == v4)
                {
                  goto LABEL_22;
                }

                goto LABEL_53;
              }
            }
          }

          v8 = 1;
          v9 = result[8];
          if (v4 != 1)
          {
LABEL_53:
            v33 = 0;
            v34 = -v4;
            v35 = 700;
            v36 = 72;
            v37 = 128;
            v65 = v5;
            while (1)
            {
              ++v8;
              v38 = 36 - v36;
              v39 = 36;
              v40 = 1;
              v41 = v33;
              while (1)
              {
                v42 = v3[v8 - 1];
                if ((v42 - 97) >= 0x1A)
                {
                  if ((v42 - 48) > 9)
                  {
                    goto LABEL_92;
                  }

                  v43 = -22;
                }

                else
                {
                  v43 = -97;
                }

                v44 = v43 + v42;
                if (v44 > ~v41 / v40)
                {
                  goto LABEL_92;
                }

                v41 += v44 * v40;
                if (v39 >= v36 + 26)
                {
                  v45 = 26;
                }

                else
                {
                  v45 = v38;
                }

                if (v39 <= v36)
                {
                  v45 = 1;
                }

                if (v44 < v45)
                {
                  break;
                }

                if (is_mul_ok(36 - v45, v40))
                {
                  ++v8;
                  v40 *= 36 - v45;
                  v39 += 36;
                  v38 += 36;
                  if (v34 + v8 != 1)
                  {
                    continue;
                  }
                }

                goto LABEL_92;
              }

              v46 = ((v9 - v65) >> 2) + 1;
              v47 = (v41 - v33) / v35;
              v48 = v47 / v46 + v47;
              if (v48 < 0x1C8)
              {
                v49 = 0;
              }

              else
              {
                v49 = 0;
                v50 = v47 / v46 + v47;
                do
                {
                  v48 = v50 / 0x23;
                  v49 += 36;
                  v51 = v50 >> 3;
                  v50 /= 0x23uLL;
                }

                while (v51 > 0x7CA);
              }

              v52 = v41 / v46;
              if (__CFADD__(v37, v41 / v46))
              {
                break;
              }

              v37 += v52;
              if (v37 >> 11 == 27)
              {
                break;
              }

              if (v37 > 0x7F)
              {
                if (v37 > 0x7FF)
                {
                  if (v37 >> 16)
                  {
                    if (v37 >> 16 > 0x10)
                    {
                      break;
                    }

                    LODWORD(v62) = (v37 >> 12) & 0x3F | 0xFFFFFF80;
                    HIDWORD(v62) = (v37 >> 6) & 0x3F | 0xFFFFFF80;
                    v63 = (v37 >> 18) | 0xFFFFFFF0;
                    v64 = v37 & 0x3F | 0x80;
                  }

                  else
                  {
                    v63 = (v37 >> 12) | 0xFFFFFFE0;
                    v64 = 0;
                    LODWORD(v62) = (v37 >> 6) & 0x3F | 0xFFFFFF80;
                    BYTE4(v62) = v37 & 0x3F | 0x80;
                  }
                }

                else
                {
                  v63 = (v37 >> 6) | 0xFFFFFFC0;
                  v64 = 0;
                  v62 = v37 & 0x3F | 0xFFFFFF80;
                }
              }

              else
              {
                LOBYTE(v63) = v37;
                v64 = 0;
                v62 = 0;
              }

              v53 = v2[9];
              v54 = v2[7];
              if (v9 + 4 > v53)
              {
                v60 = v41 / v46;
                v61 = ((v9 - v65) >> 2) + 1;
                v55 = 2 * v53;
                if (v55 <= v9 + 996)
                {
                  v56 = v9 + 996;
                }

                else
                {
                  v56 = v55;
                }

                v2[9] = v56;
                v54 = malloc_type_realloc(v54, v56, 0x100004077774924uLL);
                v2[7] = v54;
                if (!v54)
                {
                  goto LABEL_94;
                }

                v9 = v2[8];
                v52 = v60;
                v46 = v61;
              }

              v36 = v49 + 4 * ((9 * v48) & 0x3FFFu) / (v48 + 38);
              v57 = v41 - v52 * v46;
              v58 = v65 + 4 * v57;
              result = memmove(&v54[v58 + 4], &v54[v58], v9 - v58);
              v59 = (v2[7] + v58);
              v5 = v65;
              *v59 = v63;
              v59[1] = v62;
              v59[2] = BYTE4(v62);
              v59[3] = v64;
              v9 = v2[8] + 4;
              v2[8] = v9;
              v33 = v57 + 1;
              v35 = 2;
              if (!(v34 + v8))
              {
                goto LABEL_22;
              }
            }

LABEL_92:
            *(v2 + 49) = 1;
            return result;
          }
        }

LABEL_22:
        v16 = v2[7];
        v17 = (v16 + v9);
        result = memchr((v16 + v5), 0, v9 - v5);
        if (result)
        {
          v18 = result;
        }

        else
        {
          v18 = v16 + v9;
        }

        v19 = (v18 + 1);
        if (v18 != v17 && v19 != v17)
        {
          v21 = ~v18 + v9 + v16;
          do
          {
            if (*v19)
            {
              *v18++ = *v19;
            }

            ++v19;
            --v21;
          }

          while (v21);
        }

        v15 = (v18 - v16);
      }

      else
      {
        if (!v4)
        {
          return result;
        }

        v10 = result[7];
        v11 = v2[8];
        v12 = v11 + v4;
        v13 = v2[9];
        if (v11 + v4 > v13)
        {
          if (2 * v13 <= v12 + 992)
          {
            v14 = v12 + 992;
          }

          else
          {
            v14 = 2 * v13;
          }

          v2[9] = v14;
          v10 = malloc_type_realloc(v10, v14, 0x100004077774924uLL);
          v2[7] = v10;
          if (!v10)
          {
LABEL_94:
            abort();
          }

          v11 = v2[8];
        }

        result = memcpy(&v10[v11], v3, v4);
        v15 = (v2[8] + v4);
      }

      v2[8] = v15;
    }
  }

  return result;
}

uint64_t anonymous namespace::Demangler::parseIdentifier(uint64_t this, uint64_t a2)
{
  if (*(a2 + 49))
  {
    goto LABEL_20;
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  if (v3 < v2 && *(*(a2 + 24) + v3) == 117)
  {
    *(a2 + 40) = ++v3;
    v4 = 1;
    if (v3 >= v2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4 = 0;
    if (v3 >= v2)
    {
LABEL_20:
      *(a2 + 49) = 1;
      *this = 0;
      *(this + 8) = 0;
      *(this + 16) = 0;
      return this;
    }
  }

  v5 = *(a2 + 24);
  v6 = *(v5 + v3);
  if ((v6 - 48) > 9)
  {
    goto LABEL_20;
  }

  if (v6 == 48)
  {
    v7 = 0;
    *(a2 + 40) = ++v3;
  }

  else
  {
    v7 = 0;
    while (*(v5 + v3) - 48 <= 9)
    {
      if (v7 > 0x1999999999999999)
      {
        goto LABEL_20;
      }

      v8 = 10 * v7;
      v9 = v3 + 1;
      *(a2 + 40) = v3 + 1;
      v10 = *(v5 + v3);
      if (v8 > 47 - v10)
      {
        goto LABEL_20;
      }

      v7 = v8 + v10 - 48;
      v3 = v9;
      if (v2 == v9)
      {
        v3 = v2;
        goto LABEL_19;
      }
    }
  }

  if (v3 < v2 && *(v5 + v3) == 95)
  {
    *(a2 + 40) = ++v3;
  }

LABEL_19:
  if (v7 > v2 - v3)
  {
    goto LABEL_20;
  }

  if (v2 < v3)
  {
    abort();
  }

  v11 = (v5 + v3);
  *(a2 + 40) = v3 + v7;
  if (v7)
  {
    v12 = v7;
    v13 = v11;
    do
    {
      v14 = *v13;
      if ((v14 - 48) >= 0xA && (v14 - 97) >= 0x1A && v14 != 95 && (v14 - 65) >= 0x1A)
      {
        goto LABEL_20;
      }

      ++v13;
    }

    while (--v12);
  }

  *this = v11;
  *(this + 8) = v7;
  *(this + 16) = v4;
  return this;
}

unint64_t *anonymous namespace::Demangler::demangleType(unint64_t *this)
{
  if ((*(this + 49) & 1) != 0 || (v1 = this[1], v1 >= *this))
  {
    *(this + 49) = 1;
  }

  else
  {
    this[1] = v1 + 1;
    v2 = this[5];
    if (v2 >= this[4])
    {
      *(this + 49) = 1;
LABEL_22:
      this[5] = v2;
      v15 = this;
    }

    else
    {
      this[5] = v2 + 1;
      v3 = *(this[3] + v2);
      switch(*(this[3] + v2))
      {
        case 'A':
          v15 = this;
          goto LABEL_182;
        case 'B':
          v15 = this;
          goto LABEL_23;
        case 'D':
          v15 = this;
          this = v15;
          if ((*(v15 + 49) & 1) != 0 || (v90 = *(v15 + 40), v90 >= *(v15 + 32)) || *(*(v15 + 24) + v90) != 76)
          {
            *(v15 + 49) = 1;
            *(v15 + 8) = v1;
            return this;
          }

          *(v15 + 40) = v90 + 1;
          this = v15;
          if (!v91)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        case 'F':
          v15 = this;
          goto LABEL_23;
        case 'O':
          v99 = "*mut ";
          v15 = this;
          v100 = 5;
          goto LABEL_165;
        case 'P':
          v99 = "*const ";
          v15 = this;
          v100 = 7;
LABEL_165:
          goto LABEL_23;
        case 'Q':
        case 'R':
          if (*(this + 48) != 1)
          {
            goto LABEL_13;
          }

          v4 = this[7];
          v5 = this[8];
          v6 = v5 + 1;
          v7 = this[9];
          if (v5 + 1 <= v7)
          {
            goto LABEL_12;
          }

          v8 = v5 + 993;
          if (2 * v7 <= v8)
          {
            v9 = v8;
          }

          else
          {
            v9 = 2 * v7;
          }

          this[9] = v9;
          v10 = this;
          v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
          *(v10 + 56) = v4;
          if (!v4)
          {
            goto LABEL_180;
          }

          this = v10;
          v5 = *(v10 + 64);
          v6 = v5 + 1;
LABEL_12:
          this[8] = v6;
          *(v4 + v5) = 38;
          if ((*(this + 49) & 1) == 0)
          {
LABEL_13:
            v11 = this[5];
            if (v11 < this[4] && *(this[3] + v11) == 76)
            {
              this[5] = v11 + 1;
              v12 = this;
              this = v12;
              if (v13)
              {
                this = v12;
              }
            }
          }

          if (v3 == 81)
          {
            v14 = this;
            this = v14;
          }

          v15 = this;
          goto LABEL_23;
        case 'S':
          v15 = this;
LABEL_182:
          v142 = "]";
          goto LABEL_232;
        case 'T':
          v15 = this;
          if (*(v15 + 49))
          {
            goto LABEL_231;
          }

          v133 = v15;
          v134 = 0;
          break;
        case 'a':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v58 = this[8];
          v59 = this[9];
          v18 = (this + 8);
          v60 = this[7];
          if (v58 + 2 <= v59)
          {
            goto LABEL_72;
          }

          v61 = v58 + 994;
          v62 = 2 * v59;
          if (v62 <= v61)
          {
            v63 = v61;
          }

          else
          {
            v63 = v62;
          }

          this[9] = v63;
          v64 = this;
          v60 = malloc_type_realloc(v60, v63, 0x100004077774924uLL);
          *(v64 + 56) = v60;
          if (!v60)
          {
            goto LABEL_180;
          }

          this = v64;
          v58 = *v18;
LABEL_72:
          v65 = 14441;
          goto LABEL_225;
        case 'b':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v26 = this[8];
          v101 = this[9];
          v18 = (this + 8);
          v28 = this[7];
          if (v26 + 4 <= v101)
          {
            goto LABEL_126;
          }

          v102 = v26 + 996;
          v103 = 2 * v101;
          if (v103 <= v102)
          {
            v104 = v102;
          }

          else
          {
            v104 = v103;
          }

          this[9] = v104;
          v105 = this;
          v28 = malloc_type_realloc(v28, v104, 0x100004077774924uLL);
          *(v105 + 56) = v28;
          if (!v28)
          {
            goto LABEL_180;
          }

          this = v105;
          v26 = *v18;
LABEL_126:
          v33 = 1819242338;
          goto LABEL_127;
        case 'c':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v26 = this[8];
          v78 = this[9];
          v18 = (this + 8);
          v28 = this[7];
          if (v26 + 4 <= v78)
          {
            goto LABEL_96;
          }

          v79 = v26 + 996;
          v80 = 2 * v78;
          if (v80 <= v79)
          {
            v81 = v79;
          }

          else
          {
            v81 = v80;
          }

          this[9] = v81;
          v82 = this;
          v28 = malloc_type_realloc(v28, v81, 0x100004077774924uLL);
          *(v82 + 56) = v28;
          if (!v28)
          {
            goto LABEL_180;
          }

          this = v82;
          v26 = *v18;
LABEL_96:
          v33 = 1918986339;
          goto LABEL_127;
        case 'd':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v34 = this[8];
          v35 = this[9];
          v18 = (this + 8);
          v36 = this[7];
          if (v34 + 3 <= v35)
          {
            goto LABEL_48;
          }

          v37 = v34 + 995;
          v38 = 2 * v35;
          if (v38 <= v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = v38;
          }

          this[9] = v39;
          v40 = this;
          v36 = malloc_type_realloc(v36, v39, 0x100004077774924uLL);
          *(v40 + 56) = v36;
          if (!v36)
          {
            goto LABEL_180;
          }

          this = v40;
          v34 = *v18;
LABEL_48:
          v41 = &v36[v34];
          v41[2] = 52;
          v42 = 13926;
          goto LABEL_216;
        case 'e':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v114 = this[8];
          v115 = this[9];
          v18 = (this + 8);
          v116 = this[7];
          if (v114 + 3 <= v115)
          {
            goto LABEL_145;
          }

          v117 = v114 + 995;
          v118 = 2 * v115;
          if (v118 <= v117)
          {
            v119 = v117;
          }

          else
          {
            v119 = v118;
          }

          this[9] = v119;
          v120 = this;
          v116 = malloc_type_realloc(v116, v119, 0x100004077774924uLL);
          *(v120 + 56) = v116;
          if (!v116)
          {
            goto LABEL_180;
          }

          this = v120;
          v114 = *v18;
LABEL_145:
          v41 = &v116[v114];
          v41[2] = 114;
          v42 = 29811;
          goto LABEL_216;
        case 'f':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v121 = this[8];
          v122 = this[9];
          v18 = (this + 8);
          v123 = this[7];
          if (v121 + 3 <= v122)
          {
            goto LABEL_153;
          }

          v124 = v121 + 995;
          v125 = 2 * v122;
          if (v125 <= v124)
          {
            v126 = v124;
          }

          else
          {
            v126 = v125;
          }

          this[9] = v126;
          v127 = this;
          v123 = malloc_type_realloc(v123, v126, 0x100004077774924uLL);
          *(v127 + 56) = v123;
          if (!v123)
          {
            goto LABEL_180;
          }

          this = v127;
          v121 = *v18;
LABEL_153:
          v41 = &v123[v121];
          v41[2] = 50;
          v42 = 13158;
          goto LABEL_216;
        case 'h':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v58 = this[8];
          v150 = this[9];
          v18 = (this + 8);
          v60 = this[7];
          if (v58 + 2 <= v150)
          {
            goto LABEL_199;
          }

          v151 = v58 + 994;
          v152 = 2 * v150;
          if (v152 <= v151)
          {
            v153 = v151;
          }

          else
          {
            v153 = v152;
          }

          this[9] = v153;
          v154 = this;
          v60 = malloc_type_realloc(v60, v153, 0x100004077774924uLL);
          *(v154 + 56) = v60;
          if (!v60)
          {
            goto LABEL_180;
          }

          this = v154;
          v58 = *v18;
LABEL_199:
          v65 = 14453;
          goto LABEL_225;
        case 'i':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v143 = this[8];
          v144 = this[9];
          v18 = (this + 8);
          v145 = this[7];
          if (v143 + 5 <= v144)
          {
            goto LABEL_190;
          }

          v146 = v143 + 997;
          v147 = 2 * v144;
          if (v147 <= v146)
          {
            v148 = v146;
          }

          else
          {
            v148 = v147;
          }

          this[9] = v148;
          v149 = this;
          v145 = malloc_type_realloc(v145, v148, 0x100004077774924uLL);
          *(v149 + 56) = v145;
          if (!v145)
          {
            goto LABEL_180;
          }

          this = v149;
          v143 = *v18;
LABEL_190:
          v24 = &v145[v143];
          v24[4] = 101;
          v25 = 29545;
          goto LABEL_191;
        case 'j':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v16 = this[8];
          v17 = this[9];
          v18 = (this + 8);
          v19 = this[7];
          if (v16 + 5 <= v17)
          {
            goto LABEL_32;
          }

          v20 = v16 + 997;
          v21 = 2 * v17;
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          this[9] = v22;
          v23 = this;
          v19 = malloc_type_realloc(v19, v22, 0x100004077774924uLL);
          *(v23 + 56) = v19;
          if (!v19)
          {
            goto LABEL_180;
          }

          this = v23;
          v16 = *v18;
LABEL_32:
          v24 = &v19[v16];
          v24[4] = 101;
          v25 = 29557;
LABEL_191:
          *v24 = v25 | 0x7A690000;
          v106 = 5;
          goto LABEL_226;
        case 'l':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v83 = this[8];
          v84 = this[9];
          v18 = (this + 8);
          v85 = this[7];
          if (v83 + 3 <= v84)
          {
            goto LABEL_104;
          }

          v86 = v83 + 995;
          v87 = 2 * v84;
          if (v87 <= v86)
          {
            v88 = v86;
          }

          else
          {
            v88 = v87;
          }

          this[9] = v88;
          v89 = this;
          v85 = malloc_type_realloc(v85, v88, 0x100004077774924uLL);
          *(v89 + 56) = v85;
          if (!v85)
          {
            goto LABEL_180;
          }

          this = v89;
          v83 = *v18;
LABEL_104:
          v41 = &v85[v83];
          v41[2] = 50;
          v42 = 13161;
          goto LABEL_216;
        case 'm':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v155 = this[8];
          v156 = this[9];
          v18 = (this + 8);
          v157 = this[7];
          if (v155 + 3 <= v156)
          {
            goto LABEL_207;
          }

          v158 = v155 + 995;
          v159 = 2 * v156;
          if (v159 <= v158)
          {
            v160 = v158;
          }

          else
          {
            v160 = v159;
          }

          this[9] = v160;
          v161 = this;
          v157 = malloc_type_realloc(v157, v160, 0x100004077774924uLL);
          *(v161 + 56) = v157;
          if (!v157)
          {
            goto LABEL_180;
          }

          this = v161;
          v155 = *v18;
LABEL_207:
          v41 = &v157[v155];
          v41[2] = 50;
          v42 = 13173;
          goto LABEL_216;
        case 'n':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v26 = this[8];
          v27 = this[9];
          v18 = (this + 8);
          v28 = this[7];
          if (v26 + 4 <= v27)
          {
            goto LABEL_40;
          }

          v29 = v26 + 996;
          v30 = 2 * v27;
          if (v30 <= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v30;
          }

          this[9] = v31;
          v32 = this;
          v28 = malloc_type_realloc(v28, v31, 0x100004077774924uLL);
          *(v32 + 56) = v28;
          if (!v28)
          {
            goto LABEL_180;
          }

          this = v32;
          v26 = *v18;
LABEL_40:
          v33 = 942813545;
          goto LABEL_127;
        case 'o':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v26 = this[8];
          v73 = this[9];
          v18 = (this + 8);
          v28 = this[7];
          if (v26 + 4 <= v73)
          {
            goto LABEL_88;
          }

          v74 = v26 + 996;
          v75 = 2 * v73;
          if (v75 <= v74)
          {
            v76 = v74;
          }

          else
          {
            v76 = v75;
          }

          this[9] = v76;
          v77 = this;
          v28 = malloc_type_realloc(v28, v76, 0x100004077774924uLL);
          *(v77 + 56) = v28;
          if (!v28)
          {
            goto LABEL_180;
          }

          this = v77;
          v26 = *v18;
LABEL_88:
          v33 = 942813557;
LABEL_127:
          *&v28[v26] = v33;
          v106 = 4;
          goto LABEL_226;
        case 'p':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v50 = this[8];
          v51 = this[9];
          v18 = (this + 8);
          v52 = this[7];
          if (v50 + 1 <= v51)
          {
            goto LABEL_64;
          }

          v53 = v50 + 993;
          v54 = 2 * v51;
          if (v54 <= v53)
          {
            v55 = v53;
          }

          else
          {
            v55 = v54;
          }

          this[9] = v55;
          v56 = this;
          v52 = malloc_type_realloc(v52, v55, 0x100004077774924uLL);
          *(v56 + 56) = v52;
          if (!v52)
          {
            goto LABEL_180;
          }

          this = v56;
          v50 = *v18;
LABEL_64:
          v57 = 95;
          goto LABEL_163;
        case 's':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v107 = this[8];
          v108 = this[9];
          v18 = (this + 8);
          v109 = this[7];
          if (v107 + 3 <= v108)
          {
            goto LABEL_135;
          }

          v110 = v107 + 995;
          v111 = 2 * v108;
          if (v111 <= v110)
          {
            v112 = v110;
          }

          else
          {
            v112 = v111;
          }

          this[9] = v112;
          v113 = this;
          v109 = malloc_type_realloc(v109, v112, 0x100004077774924uLL);
          *(v113 + 56) = v109;
          if (!v109)
          {
            goto LABEL_180;
          }

          this = v113;
          v107 = *v18;
LABEL_135:
          v41 = &v109[v107];
          v41[2] = 54;
          v42 = 12649;
          goto LABEL_216;
        case 't':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v43 = this[8];
          v44 = this[9];
          v18 = (this + 8);
          v45 = this[7];
          if (v43 + 3 <= v44)
          {
            goto LABEL_56;
          }

          v46 = v43 + 995;
          v47 = 2 * v44;
          if (v47 <= v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = v47;
          }

          this[9] = v48;
          v49 = this;
          v45 = malloc_type_realloc(v45, v48, 0x100004077774924uLL);
          *(v49 + 56) = v45;
          if (!v45)
          {
            goto LABEL_180;
          }

          this = v49;
          v43 = *v18;
LABEL_56:
          v41 = &v45[v43];
          v41[2] = 54;
          v42 = 12661;
          goto LABEL_216;
        case 'u':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v58 = this[8];
          v169 = this[9];
          v18 = (this + 8);
          v60 = this[7];
          if (v58 + 2 <= v169)
          {
            goto LABEL_224;
          }

          v170 = v58 + 994;
          v171 = 2 * v169;
          if (v171 <= v170)
          {
            v172 = v170;
          }

          else
          {
            v172 = v171;
          }

          this[9] = v172;
          v173 = this;
          v60 = malloc_type_realloc(v60, v172, 0x100004077774924uLL);
          *(v173 + 56) = v60;
          if (!v60)
          {
            goto LABEL_180;
          }

          this = v173;
          v58 = *v18;
LABEL_224:
          v65 = 10536;
LABEL_225:
          *&v60[v58] = v65;
          v106 = 2;
          goto LABEL_226;
        case 'v':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v162 = this[8];
          v163 = this[9];
          v18 = (this + 8);
          v164 = this[7];
          if (v162 + 3 <= v163)
          {
            goto LABEL_215;
          }

          v165 = v162 + 995;
          v166 = 2 * v163;
          if (v166 <= v165)
          {
            v167 = v165;
          }

          else
          {
            v167 = v166;
          }

          this[9] = v167;
          v168 = this;
          v164 = malloc_type_realloc(v164, v167, 0x100004077774924uLL);
          *(v168 + 56) = v164;
          if (!v164)
          {
            goto LABEL_180;
          }

          this = v168;
          v162 = *v18;
LABEL_215:
          v41 = &v164[v162];
          v41[2] = 46;
          v42 = 11822;
          goto LABEL_216;
        case 'x':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v66 = this[8];
          v67 = this[9];
          v18 = (this + 8);
          v68 = this[7];
          if (v66 + 3 <= v67)
          {
            goto LABEL_80;
          }

          v69 = v66 + 995;
          v70 = 2 * v67;
          if (v70 <= v69)
          {
            v71 = v69;
          }

          else
          {
            v71 = v70;
          }

          this[9] = v71;
          v72 = this;
          v68 = malloc_type_realloc(v68, v71, 0x100004077774924uLL);
          *(v72 + 56) = v68;
          if (!v68)
          {
            goto LABEL_180;
          }

          this = v72;
          v66 = *v18;
LABEL_80:
          v41 = &v68[v66];
          v41[2] = 52;
          v42 = 13929;
          goto LABEL_216;
        case 'y':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v92 = this[8];
          v93 = this[9];
          v18 = (this + 8);
          v94 = this[7];
          if (v92 + 3 <= v93)
          {
            goto LABEL_117;
          }

          v95 = v92 + 995;
          v96 = 2 * v93;
          if (v96 <= v95)
          {
            v97 = v95;
          }

          else
          {
            v97 = v96;
          }

          this[9] = v97;
          v98 = this;
          v94 = malloc_type_realloc(v94, v97, 0x100004077774924uLL);
          *(v98 + 56) = v94;
          if (!v94)
          {
            goto LABEL_180;
          }

          this = v98;
          v92 = *v18;
LABEL_117:
          v41 = &v94[v92];
          v41[2] = 52;
          v42 = 13941;
LABEL_216:
          *v41 = v42;
          v106 = 3;
          goto LABEL_226;
        case 'z':
          if (*(this + 48) != 1)
          {
            goto LABEL_24;
          }

          v50 = this[8];
          v128 = this[9];
          v18 = (this + 8);
          v52 = this[7];
          if (v50 + 1 <= v128)
          {
            goto LABEL_162;
          }

          v129 = v50 + 993;
          v130 = 2 * v128;
          if (v130 <= v129)
          {
            v131 = v129;
          }

          else
          {
            v131 = v130;
          }

          this[9] = v131;
          v132 = this;
          v52 = malloc_type_realloc(v52, v131, 0x100004077774924uLL);
          *(v132 + 56) = v52;
          if (!v52)
          {
            goto LABEL_180;
          }

          this = v132;
          v50 = *v18;
LABEL_162:
          v57 = 33;
LABEL_163:
          *(v52 + v50) = v57;
          v106 = 1;
LABEL_226:
          *v18 += v106;
          this[1] = v1;
          return this;
        default:
          goto LABEL_22;
      }

      while (1)
      {
        v136 = *(v133 + 40);
        if (v136 < *(v133 + 32) && *(*(v133 + 24) + v136) == 69)
        {
          break;
        }

        if (v134 && *(v133 + 48) == 1)
        {
          v137 = *(v133 + 56);
          v135 = *(v133 + 64);
          v138 = *(v133 + 72);
          if (v135 + 2 > v138)
          {
            v139 = v135 + 994;
            v140 = 2 * v138;
            if (v140 <= v139)
            {
              v141 = v139;
            }

            else
            {
              v141 = v140;
            }

            *(v133 + 72) = v141;
            v137 = malloc_type_realloc(v137, v141, 0x100004077774924uLL);
            *(v15 + 56) = v137;
            if (!v137)
            {
LABEL_180:
              abort();
            }

            v133 = v15;
            v135 = *(v15 + 64);
          }

          *&v137[v135] = 8236;
          *(v133 + 64) += 2;
        }

        v133 = v15;
        ++v134;
        if (*(v15 + 49) == 1)
        {
          goto LABEL_229;
        }
      }

      *(v133 + 40) = v136 + 1;
LABEL_229:
      if (v134 == 1)
      {
      }

LABEL_231:
      v142 = ")";
LABEL_232:
    }

LABEL_23:
    this = v15;
LABEL_24:
    this[1] = v1;
  }

  return this;
}

uint64_t anonymous namespace::Demangler::print(uint64_t this, char a2)
{
  if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
  {
    v2 = *(this + 56);
    v3 = *(this + 64);
    v4 = v3 + 1;
    v5 = *(this + 72);
    if (v3 + 1 > v5)
    {
      v6 = a2;
      v7 = v3 + 993;
      if (2 * v5 <= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = 2 * v5;
      }

      *(this + 72) = v8;
      v9 = this;
      v2 = malloc_type_realloc(v2, v8, 0x100004077774924uLL);
      *(v9 + 56) = v2;
      if (!v2)
      {
        abort();
      }

      this = v9;
      v3 = *(v9 + 64);
      v4 = v3 + 1;
      a2 = v6;
    }

    *(this + 64) = v4;
    *(v2 + v3) = a2;
  }

  return this;
}

void *anonymous namespace::Demangler::printDecimalNumber(void *this, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
  {
    v2 = 0;
    do
    {
      v11[v2-- + 20] = (a2 % 0xA) | 0x30;
      v3 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v3);
    if (v2)
    {
      v4 = this[7];
      v5 = this[8];
      v6 = v5 - v2;
      v7 = this[9];
      if (v5 - v2 <= v7)
      {
        v9 = this;
      }

      else
      {
        if (2 * v7 <= v6 + 992)
        {
          v8 = v6 + 992;
        }

        else
        {
          v8 = 2 * v7;
        }

        this[9] = v8;
        v9 = this;
        v10 = malloc_type_realloc(v4, v8, 0x100004077774924uLL);
        v9[7] = v10;
        if (!v10)
        {
          abort();
        }

        v4 = v10;
        v5 = v9[8];
      }

      this = memcpy(&v4[v5], &v11[v2 + 21], -v2);
      v9[8] -= v2;
    }
  }

  return this;
}

unint64_t anonymous namespace::Demangler::parseBase62Number(_anonymous_namespace_::Demangler *this)
{
  if (*(this + 49))
  {
    goto LABEL_22;
  }

  v1 = *(this + 5);
  if (v1 < *(this + 4) && *(*(this + 3) + v1) == 95)
  {
    *(this + 5) = v1 + 1;
    return 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 > v4;
  v6 = v3 - v4;
  if (v5)
  {
    v7 = 0;
    v8 = (*(this + 3) + v4);
    v9 = v4 + 1;
    while (1)
    {
      *(this + 5) = v9;
      v11 = *v8++;
      v10 = v11;
      if (v11 == 95)
      {
        break;
      }

      if ((v10 - 48) >= 0xAu)
      {
        if ((v10 - 97) >= 0x1Au)
        {
          if ((v10 - 65) >= 0x1Au)
          {
            goto LABEL_22;
          }

          v12 = -29;
          if (v7 >= 0x421084210842109)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v12 = -87;
          if (v7 >= 0x421084210842109)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v12 = -48;
        if (v7 >= 0x421084210842109)
        {
          goto LABEL_22;
        }
      }

      v13 = v12 + v10;
      v14 = 62 * v7;
      if (!__CFADD__(v13, v14))
      {
        v7 = v14 + v13;
        ++v9;
        if (--v6)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    if (v7 != -1)
    {
      return v7 + 1;
    }
  }

LABEL_22:
  *(this + 49) = 1;
  return 0;
}

uint64_t anonymous namespace::Demangler::demangleConst(uint64_t this)
{
  v56 = *MEMORY[0x277D85DE8];
  if ((*(this + 49) & 1) == 0)
  {
    v1 = *(this + 8);
    if (v1 < *this)
    {
      *(this + 8) = v1 + 1;
      v2 = *(this + 32);
      v3 = *(this + 40);
      if (v3 >= v2)
      {
        goto LABEL_33;
      }

      v4 = v3 + 1;
      *(this + 40) = v3 + 1;
      v5 = *(this + 24);
      v6 = *(v5 + v3);
      if (v6 > 0x62)
      {
        v7 = v6 - 100;
        if (v6 - 100 <= 0x16)
        {
          if (((1 << v7) & 0x318F70) != 0)
          {
LABEL_7:
            if (v4 < v2 && *(v5 + v4) == 110)
            {
              *(this + 40) = v3 + 2;
              if (*(this + 48) == 1)
              {
                v8 = *(this + 56);
                v9 = *(this + 64);
                v10 = v9 + 1;
                v11 = *(this + 72);
                if (v9 + 1 > v11)
                {
                  v12 = v9 + 993;
                  if (2 * v11 <= v12)
                  {
                    v13 = v12;
                  }

                  else
                  {
                    v13 = 2 * v11;
                  }

                  *(this + 72) = v13;
                  v14 = this;
                  v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
                  *(v14 + 56) = v8;
                  if (!v8)
                  {
                    goto LABEL_81;
                  }

                  this = v14;
                  v9 = *(v14 + 64);
                  v10 = v9 + 1;
                }

                *(this + 64) = v10;
                *(v8 + v9) = 45;
              }
            }

            __src = 0;
            __n = 0;
            v15 = this;
            this = v15;
            v17 = __n;
            if (__n > 0x10)
            {
              if ((*(v15 + 49) & 1) != 0 || *(v15 + 48) != 1)
              {
                goto LABEL_34;
              }

              v26 = *(v15 + 56);
              v27 = *(v15 + 64);
              v28 = *(v15 + 72);
              if (v27 + 2 > v28)
              {
                v29 = v27 + 994;
                v30 = 2 * v28;
                if (v30 <= v29)
                {
                  v31 = v29;
                }

                else
                {
                  v31 = v30;
                }

                *(v15 + 72) = v31;
                v26 = malloc_type_realloc(v26, v31, 0x100004077774924uLL);
                *(v15 + 56) = v26;
                if (!v26)
                {
                  goto LABEL_81;
                }

                this = v15;
                v27 = *(v15 + 64);
              }

              *&v26[v27] = 30768;
              v32 = *(this + 64) + 2;
              *(this + 64) = v32;
              if ((*(this + 49) & 1) != 0 || (*(this + 48) & 1) == 0)
              {
                goto LABEL_34;
              }

              v33 = __src;
              v34 = v32 + v17;
              v35 = *(this + 72);
              v36 = *(this + 56);
              if (v32 + v17 > v35)
              {
                if (2 * v35 <= v34 + 992)
                {
                  v37 = v34 + 992;
                }

                else
                {
                  v37 = 2 * v35;
                }

                *(this + 72) = v37;
                v38 = malloc_type_realloc(v36, v37, 0x100004077774924uLL);
                *(v15 + 56) = v38;
                if (!v38)
                {
                  goto LABEL_81;
                }

                v36 = v38;
                v32 = *(v15 + 64);
              }

              memcpy(&v36[v32], v33, v17);
              this = v15;
              *(v15 + 64) += v17;
              goto LABEL_34;
            }

            if (*(v15 + 49))
            {
              goto LABEL_34;
            }

            if (*(v15 + 48) != 1)
            {
              goto LABEL_34;
            }

            v18 = 0;
            do
            {
              v55[v18-- + 20] = (v16 % 0xA) | 0x30;
              v19 = v16 > 9;
              v16 /= 0xAuLL;
            }

            while (v19);
            if (!v18)
            {
              goto LABEL_34;
            }

            v20 = *(v15 + 56);
            v21 = *(v15 + 64);
            v22 = v21 - v18;
            v23 = *(v15 + 72);
            if (v21 - v18 <= v23)
            {
              goto LABEL_29;
            }

            if (2 * v23 <= v22 + 992)
            {
              v24 = v22 + 992;
            }

            else
            {
              v24 = 2 * v23;
            }

            *(v15 + 72) = v24;
            v25 = malloc_type_realloc(v20, v24, 0x100004077774924uLL);
            *(v15 + 56) = v25;
            if (v25)
            {
              v20 = v25;
              v21 = *(v15 + 64);
LABEL_29:
              memcpy(&v20[v21], &v55[v18 + 21], -v18);
              this = v15;
              *(v15 + 64) -= v18;
LABEL_34:
              *(this + 8) = v1;
              return this;
            }

LABEL_81:
            abort();
          }

          if (((1 << v7) & 0x460007) != 0)
          {
            goto LABEL_33;
          }

          if (v6 == 112)
          {
            v43 = this;
            this = v43;
            goto LABEL_34;
          }
        }

        if (v6 == 99)
        {
          v44 = this;
          this = v44;
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      switch(v6)
      {
        case 'B':
          if (v4 < v2)
          {
            if (*(v5 + v4) == 95)
            {
              v40 = 0;
              v41 = v3 + 2;
              *(this + 40) = v3 + 2;
            }

            else
            {
              v45 = 0;
              v46 = (v5 + v4);
              v41 = v3 + 2;
              while (1)
              {
                *(this + 40) = v41;
                v48 = *v46++;
                v47 = v48;
                if (v48 == 95)
                {
                  break;
                }

                if ((v47 - 48) >= 0xAu)
                {
                  if ((v47 - 97) >= 0x1Au)
                  {
                    if ((v47 - 65) > 0x19u)
                    {
                      goto LABEL_33;
                    }

                    v49 = -29;
                  }

                  else
                  {
                    v49 = -87;
                  }
                }

                else
                {
                  v49 = -48;
                }

                if (v45 <= 0x421084210842108)
                {
                  v50 = v49 + v47;
                  v51 = 62 * v45;
                  if (!__CFADD__(v50, v51))
                  {
                    v45 = v50 + v51;
                    if (v2 != v41++)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_33;
              }

              if (v45 == -1)
              {
                break;
              }

              v40 = v45 + 1;
              if (v45 + 1 >= v41)
              {
                break;
              }
            }

            if (*(this + 48) == 1)
            {
              *(this + 40) = v40;
              v42 = this;
              this = v42;
              *(v42 + 40) = v41;
            }

            goto LABEL_34;
          }

          break;
        case 'a':
          goto LABEL_7;
        case 'b':
          v39 = this;
          this = v39;
          goto LABEL_34;
      }

LABEL_33:
      *(this + 49) = 1;
      goto LABEL_34;
    }
  }

  *(this + 49) = 1;
  return this;
}