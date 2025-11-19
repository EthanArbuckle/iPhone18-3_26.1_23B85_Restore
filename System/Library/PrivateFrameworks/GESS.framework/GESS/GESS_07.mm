void sub_24BD24E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  _Unwind_Resume(exception_object);
}

double sub_24BD25030@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__stem(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t *sub_24BD250F8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BC8E244("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

_DWORD *sub_24BD25150@<X0>(_DWORD *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *result - 1;
  if (v3 < 0xD)
  {
    return MEMORY[0x24C2541D0](a2, off_27916C440[v3]);
  }

  return result;
}

void sub_24BD2519C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD251B8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BC8E244("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

double sub_24BD25210@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

BOOL sub_24BD252D8(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

double sub_24BD25314@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void sub_24BD253DC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _DWORD *a6)
{
  v189 = -1;
  v190[0] = -1;
  v188 = -1;
  sub_24BC836D4(__p, off_27F078F98[0]);
  v183 = 0;
  v184 = 0;
  v10 = sub_24BCB6470((a2 + 8), &v183, __p);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

  v174 = a5;
  if (*a6 == 1)
  {
    sub_24BC836D4(__p, off_27F078FB8[0]);
    sub_24BCB1F74(a2, v190, __p);
    if (v187 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_9;
  }

  if (*a6)
  {
LABEL_9:
    v171 = -1;
    goto LABEL_10;
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  LODWORD(v184) = 0;
  v183 = 0;
  v171 = sub_24BCCAA0C((a2 + 56), &v183, __p);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_10:
  sub_24BC836D4(__p, off_27F078FC8[0]);
  LOWORD(v183) = 0;
  v11 = sub_24BD274E4((a2 + 56), &v183, __p);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v183 = 0;
  v12 = sub_24BCB74D4((a2 + 80), &v183, __p);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FE8[0]);
  sub_24BD265CC(a2, &v189, __p);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FF8);
  sub_24BD26644(a2, &v188, __p);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *(a2 + 56) + 16 * v11;
  v15 = *v13;
  v14 = *(v13 + 8);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v14);
  }

  v16 = *(a2 + 80);
  v17 = (v16 + 16 * v189);
  v19 = *v17;
  v18 = v17[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v18);
    v16 = *(a2 + 80);
  }

  v20 = (v16 + 16 * v188);
  v22 = *v20;
  v21 = v20[1];
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v21);
  }

  v175 = *(v22 + 40);
  v176 = (*(*v19 + 16))(v19);
  sub_24BD278FC(__p, v176);
  v23 = (*(*v15 + 16))(v15);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = v15[5];
    v27 = *v26;
    v28 = __p[0];
    do
    {
      v29 = v26[v24];
      if (v27 != v29)
      {
        v30 = &v28[8 * v27];
        *v30 = v25;
        *(v30 + 1) = v24;
        v25 = v24;
        v27 = v29;
      }

      ++v24;
    }

    while (v23 != v24);
    v31 = &v28[8 * v176];
    *(v31 - 2) = v25;
    *(v31 - 1) = v23;
  }

  v32 = *(a2 + 112) - *(a2 + 104);
  if ((v32 & 0x3FFFFFFFCLL) != 0)
  {
    v33 = 0;
    v34.i64[0] = 0x80000000800000;
    v34.i64[1] = 0x80000000800000;
    v35.i64[0] = 0x80000000800000;
    v35.i64[1] = 0x80000000800000;
    v177 = v35;
    v179 = vnegq_f32(v34);
    v36 = (v32 >> 2);
    do
    {
      v37 = (*(a2 + 8) + 16 * *(a2 + 176));
      v39 = *v37;
      v38 = v37[1];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v38);
      }

      v40 = *(*(v39 + 40) + 16 * v33);
      v177 = vmaxq_f32(v177, v40);
      v179 = vminq_f32(v179, v40);
      ++v33;
    }

    while (v36 != v33);
  }

  v41 = sub_24BC95264(a1, "        def Mesh Mesh (\n", 26);
  v42 = sub_24BC95264(v41, "            prepend apiSchemas = [MaterialBindingAPI]\n", 56);
  sub_24BC95264(v42, "       )\n", 10);
  sub_24BC95264(a1, "        {\n", 10);
  sub_24BC95264(a1, "            float3[] extent = [(", 32);
  v43 = std::ostream::operator<<();
  sub_24BC95264(v43, ", ", 2);
  v44 = std::ostream::operator<<();
  sub_24BC95264(v44, ", ", 2);
  v45 = std::ostream::operator<<();
  sub_24BC95264(v45, "), (", 4);
  v46 = std::ostream::operator<<();
  sub_24BC95264(v46, ", ", 2);
  v47 = std::ostream::operator<<();
  sub_24BC95264(v47, ", ", 2);
  v48 = std::ostream::operator<<();
  sub_24BC95264(v48, ")]\n", 3);
  sub_24BC95264(a1, "            int[] faceVertexCounts = [", 38);
  if (*a6 == 1)
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    if (*(a2 + 160) != *(a2 + 152))
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v182 = v54 - 1;
        sub_24BCB1A9C(a2, &v182, &v183);
        MEMORY[0x24C2543E0](a1, (v184 - v183) >> 2);
        v184 = v183;
        v55 = (*(a2 + 160) - *(a2 + 152)) >> 2;
        if (v55 - 1 != v53)
        {
          sub_24BC95264(a1, ", ", 2);
          v55 = (*(a2 + 160) - *(a2 + 152)) >> 2;
        }

        v53 = v54;
        v52 = v55 > v54++;
      }

      while (v52);
      if (v183)
      {
        v184 = v183;
        operator delete(v183);
      }
    }
  }

  else if (!*a6 && *(a2 + 160) != *(a2 + 152))
  {
    v49 = 0;
    v50 = 1;
    do
    {
      sub_24BC95264(a1, "3", 1);
      v51 = (*(a2 + 160) - *(a2 + 152)) >> 2;
      if (v51 - 1 != v49)
      {
        sub_24BC95264(a1, ", ", 2);
        v51 = (*(a2 + 160) - *(a2 + 152)) >> 2;
      }

      v49 = v50;
      v52 = v51 > v50++;
    }

    while (v52);
  }

  sub_24BC95264(a1, "]\n", 2);
  sub_24BC95264(a1, "            int[] faceVertexIndices = [", 39);
  if (*a6 == 1)
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    if (*(a2 + 160) == *(a2 + 152))
    {
      goto LABEL_70;
    }

    v63 = 0;
    v64 = 0;
    do
    {
      v182 = v64;
      sub_24BCB1A9C(a2, &v182, &v183);
      v65 = v183;
      if (v184 != v183)
      {
        v66 = 0;
        v67 = 1;
        do
        {
          MEMORY[0x24C2543D0](a1, v65[v66]);
          v65 = v183;
          v68 = (v184 - v183) >> 2;
          if (v68 - 1 != v66)
          {
            sub_24BC95264(a1, ", ", 2);
            v65 = v183;
            v68 = (v184 - v183) >> 2;
          }

          v66 = v67;
          v52 = v68 > v67++;
        }

        while (v52);
      }

      v184 = v65;
      v69 = (*(a2 + 160) - *(a2 + 152)) >> 2;
      if (v69 - 1 != v63)
      {
        sub_24BC95264(a1, ", ", 2);
        v69 = (*(a2 + 160) - *(a2 + 152)) >> 2;
      }

      v63 = ++v64;
    }

    while (v69 > v64);
  }

  else
  {
    if (*a6)
    {
      goto LABEL_70;
    }

    sub_24BCB2008(&v183, 3uLL);
    if (*(a2 + 160) != *(a2 + 152))
    {
      v56 = 0;
      v57 = 1;
      do
      {
        v182 = v57 - 1;
        sub_24BCD567C(a2, &v182, &v183);
        v58 = MEMORY[0x24C2543D0](a1, *v183);
        v59 = sub_24BC95264(v58, ", ", 2);
        v60 = MEMORY[0x24C2543D0](v59, *(v183 + 1));
        v61 = sub_24BC95264(v60, ", ", 2);
        MEMORY[0x24C2543D0](v61, *(v183 + 2));
        v62 = (*(a2 + 160) - *(a2 + 152)) >> 2;
        if (v62 - 1 != v56)
        {
          sub_24BC95264(a1, ", ", 2);
          v62 = (*(a2 + 160) - *(a2 + 152)) >> 2;
        }

        v56 = v57;
        v52 = v62 > v57++;
      }

      while (v52);
    }
  }

  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

LABEL_70:
  sub_24BC95264(a1, "]\n", 2);
  v178 = a6;
  if (v10 != -1)
  {
    sub_24BC95264(a1, "            normal3f[] normals = [", 34);
    v180 = v12;
    if (*(a2 + 112) != *(a2 + 104))
    {
      v70 = 0;
      v71 = v10;
      v72 = 1;
      do
      {
        v73 = (*(a2 + 8) + 16 * v71);
        v75 = *v73;
        v74 = v73[1];
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v74);
        }

        v76 = *(v75 + 40);
        sub_24BC95264(a1, "(", 1);
        v77 = (v76 + 16 * v70);
        v78 = *v77;
        v79 = std::ostream::operator<<();
        sub_24BC95264(v79, ", ", 2);
        v80 = v77[1];
        v81 = std::ostream::operator<<();
        sub_24BC95264(v81, ", ", 2);
        v82 = v77[2];
        v83 = std::ostream::operator<<();
        sub_24BC95264(v83, ")", 1);
        v84 = (*(a2 + 112) - *(a2 + 104)) >> 2;
        if (v84 - 1 != v70)
        {
          sub_24BC95264(a1, ", ", 2);
          v84 = (*(a2 + 112) - *(a2 + 104)) >> 2;
        }

        v70 = v72;
        v52 = v84 > v72++;
      }

      while (v52);
    }

    sub_24BC95264(a1, "]\n", 2);
    v12 = v180;
  }

  sub_24BC95264(a1, "            point3f[] points = [", 32);
  if (*(a2 + 112) != *(a2 + 104))
  {
    v85 = 0;
    v86 = 1;
    do
    {
      v87 = (*(a2 + 8) + 16 * *(a2 + 176));
      v89 = *v87;
      v88 = v87[1];
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v88);
      }

      v181 = *(*(v89 + 40) + 16 * v85);
      sub_24BC95264(a1, "(", 1);
      v90 = std::ostream::operator<<();
      sub_24BC95264(v90, ", ", 2);
      v91 = std::ostream::operator<<();
      sub_24BC95264(v91, ", ", 2);
      v92 = std::ostream::operator<<();
      sub_24BC95264(v92, ")", 1);
      v93 = (*(a2 + 112) - *(a2 + 104)) >> 2;
      if (v93 - 1 != v85)
      {
        sub_24BC95264(a1, ", ", 2);
        v93 = (*(a2 + 112) - *(a2 + 104)) >> 2;
      }

      v85 = v86;
      v52 = v93 > v86++;
    }

    while (v52);
  }

  sub_24BC95264(a1, "]\n", 2);
  if (v12 != -1 && (v171 != -1 || v190[0] != -1))
  {
    sub_24BC95264(a1, "            texCoord2f[] primvars:st = [", 40);
    for (i = 0; ; ++i)
    {
      v95 = (*(a2 + 80) + 16 * v12);
      v97 = *v95;
      v96 = v95[1];
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v96);
      }

      if ((*(*v97 + 16))(v97) <= i)
      {
        break;
      }

      v98 = (*(a2 + 80) + 16 * v12);
      v100 = *v98;
      v99 = v98[1];
      if (v99)
      {
        atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v99);
      }

      v101 = *(v100 + 40);
      sub_24BC95264(a1, "(", 1);
      v102 = (v101 + 8 * i);
      v103 = *v102;
      v104 = std::ostream::operator<<();
      sub_24BC95264(v104, ", ", 2);
      v105 = v102[1];
      v106 = std::ostream::operator<<();
      sub_24BC95264(v106, ")", 1);
      v107 = (*(a2 + 80) + 16 * v12);
      v109 = *v107;
      v108 = v107[1];
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v108);
      }

      if ((*(*v109 + 16))(v109) - 1 != i)
      {
        sub_24BC95264(a1, ", ", 2);
      }
    }

    sub_24BC95264(a1, "] (\n", 4);
    sub_24BC95264(a1, "                interpolation = faceVarying\n", 46);
    sub_24BC95264(a1, "           )\n", 14);
    sub_24BC95264(a1, "            int[] primvars:st:indices = [", 41);
    if (*v178)
    {
      if (*v178 == 1 && *(a2 + 160) != *(a2 + 152))
      {
        v110 = 0;
        v111 = 0;
        do
        {
          v112 = (*(a2 + 56) + 16 * v190[0]);
          v114 = *v112;
          v113 = v112[1];
          if (v113)
          {
            atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v113);
          }

          v115 = (*(v114 + 40) + 24 * v110);
          v116 = *v115;
          if (v115[1] != *v115)
          {
            v117 = 0;
            v118 = 1;
            do
            {
              MEMORY[0x24C2543D0](a1, *(v116 + 4 * v117));
              v116 = *v115;
              v119 = (v115[1] - *v115) >> 2;
              if (v119 - 1 != v117)
              {
                sub_24BC95264(a1, ", ", 2);
                v116 = *v115;
                v119 = (v115[1] - *v115) >> 2;
              }

              v117 = v118;
              v52 = v119 > v118++;
            }

            while (v52);
          }

          v120 = (*(a2 + 160) - *(a2 + 152)) >> 2;
          if (v120 - 1 != v110)
          {
            sub_24BC95264(a1, ", ", 2);
            v120 = (*(a2 + 160) - *(a2 + 152)) >> 2;
          }

          v110 = ++v111;
        }

        while (v120 > v111);
      }
    }

    else if (*(a2 + 160) != *(a2 + 152))
    {
      v121 = 0;
      v122 = 1;
      do
      {
        v123 = (*(a2 + 56) + 16 * v171);
        v125 = *v123;
        v124 = v123[1];
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v124);
        }

        v126 = (*(v125 + 40) + 12 * v121);
        v127 = MEMORY[0x24C2543D0](a1, *v126);
        v128 = sub_24BC95264(v127, ", ", 2);
        v129 = MEMORY[0x24C2543D0](v128, v126[1]);
        v130 = sub_24BC95264(v129, ", ", 2);
        MEMORY[0x24C2543D0](v130, v126[2]);
        v131 = (*(a2 + 160) - *(a2 + 152)) >> 2;
        if (v131 - 1 != v121)
        {
          sub_24BC95264(a1, ", ", 2);
          v131 = (*(a2 + 160) - *(a2 + 152)) >> 2;
        }

        v121 = v122;
        v52 = v131 > v122++;
      }

      while (v52);
    }

    sub_24BC95264(a1, "]\n", 2);
  }

  sub_24BC95264(a1, "            uniform token subdivisionScheme = none\n", 53);
  if (v176 < 2u)
  {
    LOWORD(v183) = 0;
    v157 = *(v175 + 8);
    if (v157)
    {
      do
      {
        v158 = v157;
        v157 = *v157;
      }

      while (v157);
      if (v158 != (v175 + 8) && !*(v158 + 16))
      {
        v159 = sub_24BD266BC(v175, &v183);
        if (v174 + 8 != sub_24BD27974(v174, v159))
        {
          v160 = sub_24BD26714(v174, v159);
          v161 = sub_24BC95264(a1, "            rel material:binding = </", 37);
          v162 = *(a3 + 23);
          if (v162 >= 0)
          {
            v163 = a3;
          }

          else
          {
            v163 = *a3;
          }

          if (v162 >= 0)
          {
            v164 = *(a3 + 23);
          }

          else
          {
            v164 = *(a3 + 8);
          }

          v165 = sub_24BC95264(v161, v163, v164);
          v166 = sub_24BC95264(v165, "/Materials/", 11);
          v167 = *(v160 + 23);
          if (v167 >= 0)
          {
            v168 = v160;
          }

          else
          {
            v168 = *v160;
          }

          if (v167 >= 0)
          {
            v169 = *(v160 + 23);
          }

          else
          {
            v169 = *(v160 + 8);
          }

          v170 = sub_24BC95264(v166, v168, v169);
          sub_24BC95264(v170, ">\n", 2);
        }
      }
    }
  }

  else
  {
    sub_24BC95264(a1, "            uniform token subsetFamily:materialBind:familyType = nonOverlapping\n", 82);
    v132 = 0;
    LOWORD(v183) = 0;
    do
    {
      v133 = *a4;
      v134 = sub_24BD266BC(v175, &v183);
      v135 = sub_24BD26714(v174, v134);
      v136 = sub_24BC95264(a1, "            def GeomSubset ", 28);
      v137 = v133 + 24 * v132;
      v138 = *(v137 + 23);
      if (v138 >= 0)
      {
        v139 = v133 + 24 * v132;
      }

      else
      {
        v139 = *v137;
      }

      if (v138 >= 0)
      {
        v140 = *(v137 + 23);
      }

      else
      {
        v140 = *(v137 + 8);
      }

      v141 = sub_24BC95264(v136, v139, v140);
      v142 = sub_24BC95264(v141, " (\n", 4);
      v143 = sub_24BC95264(v142, "                prepend apiSchemas = [MaterialBindingAPI]\n", 60);
      sub_24BC95264(v143, "           )\n", 14);
      sub_24BC95264(a1, "            {\n", 14);
      sub_24BC95264(a1, "                uniform token elementType = face\n", 51);
      sub_24BC95264(a1, "                uniform token familyName = materialBind\n", 58);
      sub_24BC95264(a1, "                int[] indices = [", 33);
      v144 = (__p[0] + 8 * v183);
      v146 = *v144;
      v145 = v144[1];
      while (v146 < v145)
      {
        MEMORY[0x24C2543D0](a1, v146);
        v145 = v144[1];
        if (v146 != v145 - 1)
        {
          sub_24BC95264(a1, ", ", 2);
          v145 = v144[1];
        }

        v146 = (v146 + 1);
      }

      sub_24BC95264(a1, "]\n", 2);
      v147 = sub_24BC95264(a1, "                rel material:binding = </", 41);
      v148 = *(a3 + 23);
      if (v148 >= 0)
      {
        v149 = a3;
      }

      else
      {
        v149 = *a3;
      }

      if (v148 >= 0)
      {
        v150 = *(a3 + 23);
      }

      else
      {
        v150 = *(a3 + 8);
      }

      v151 = sub_24BC95264(v147, v149, v150);
      v152 = sub_24BC95264(v151, "/Materials/", 11);
      v153 = *(v135 + 23);
      if (v153 >= 0)
      {
        v154 = v135;
      }

      else
      {
        v154 = *v135;
      }

      if (v153 >= 0)
      {
        v155 = *(v135 + 23);
      }

      else
      {
        v155 = *(v135 + 8);
      }

      v156 = sub_24BC95264(v152, v154, v155);
      sub_24BC95264(v156, ">\n", 2);
      sub_24BC95264(a1, "            }\n", 14);
      v132 = v183 + 1;
      LOWORD(v183) = v183 + 1;
    }

    while (v183 < v176);
  }

  sub_24BC95264(a1, "        }\n", 10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BD26510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD265CC(uint64_t a1, _DWORD *a2, const void **a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v4 = sub_24BD27620((a1 + 80), __p, a3);
  *a2 = v4;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 != -1;
}

void sub_24BD26628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD26644(uint64_t a1, _DWORD *a2, const void **a3)
{
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v4 = sub_24BD2775C((a1 + 80), &v7, a3);
  *a2 = v4;
  v5 = v4 != -1;
  sub_24BD27898(&v7, v8[0]);
  return v5;
}

uint64_t *sub_24BD266BC(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BC8E244("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 16);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_24BD26714(uint64_t a1, const void **a2)
{
  v2 = *sub_24BC8FDBC(a1, &v4, a2);
  if (!v2)
  {
    sub_24BC8E244("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t sub_24BD26754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5)
{
  v105[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  sub_24BCB0D30(&v103);
  if ((v104[*(v103 - 24) + 24] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    v85 = std::string::insert(&__p, 0, "Unable to write USDA file ");
    v86 = *&v85->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v86;
    v85->__r_.__value_.__l.__size_ = 0;
    v85->__r_.__value_.__r.__words[2] = 0;
    v85->__r_.__value_.__r.__words[0] = 0;
    v87 = std::string::append(&v100, "!");
    v88 = *&v87->__r_.__value_.__l.__data_;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
    *&__dst.__pn_.__r_.__value_.__l.__data_ = v88;
    v87->__r_.__value_.__l.__size_ = 0;
    v87->__r_.__value_.__r.__words[2] = 0;
    v87->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &__dst);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  sub_24BD25030(&__dst, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&v100, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v100 = __p;
  }

  if (*(a4 + 135) < 0)
  {
    sub_24BC8DE9C(&__p, *(a4 + 112), *(a4 + 120));
  }

  else
  {
    __p = *(a4 + 112);
  }

  memset(v98, 0, sizeof(v98));
  memset(v97, 0, sizeof(v97));
  v96[0] = 0;
  v96[1] = 0;
  v95 = v96;
  sub_24BD27328(v97, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  v91 = a4;
  v92 = a1;
  if (a3[1] != *a3)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v10)
      {
        std::to_string(&v94, v10);
        v11 = a3;
        v12 = std::string::insert(&v94, 0, "Texture_");
        v13 = v12->__r_.__value_.__r.__words[0];
        v102[0] = v12->__r_.__value_.__l.__size_;
        *(v102 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v15 = &v97[0][3 * v9];
        if (*(v15 + 23) < 0)
        {
          operator delete(*v15);
        }

        *v15 = v13;
        v15[1] = v102[0];
        *(v15 + 15) = *(v102 + 7);
        *(v15 + 23) = v14;
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        a3 = v11;
      }

      else
      {
        MEMORY[0x24C2541D0](&v97[0][3 * v9], "Texture");
      }

      v16 = v97[0];
      v94.__r_.__value_.__r.__words[0] = *a3 + 48 * v9;
      v17 = sub_24BD27CA8(&v95, v94.__r_.__value_.__l.__data_);
      std::string::operator=((v17 + 56), &v16[3 * v9]);
      v9 = ++v10;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) > v10);
  }

  sub_24BC836D4(&v94, off_27F078FC8[0]);
  LOWORD(v102[0]) = 0;
  v18 = sub_24BD274E4((a2 + 56), v102, &v94.__r_.__value_.__l.__data_);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (v18 == -1)
  {
    v84 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v84, "Unable to find group attribute when writing USDA file!");
    __cxa_throw(v84, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v19 = (*(a2 + 56) + 16 * v18);
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v89 = a3;
  v22 = (*(*v21 + 16))(v21);
  sub_24BD27328(v98, v22);
  for (i = 0; ; i = v28 + 1)
  {
    v24 = (*(a2 + 56) + 16 * v18);
    v26 = *v24;
    v25 = v24[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v25);
    }

    v27 = (*(*v26 + 16))(v26);
    v28 = i;
    if (v27 <= i)
    {
      break;
    }

    if (i)
    {
      std::to_string(&v94, i);
      v29 = std::string::insert(&v94, 0, "Group_");
      v30 = v29->__r_.__value_.__r.__words[0];
      v102[0] = v29->__r_.__value_.__l.__size_;
      *(v102 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v32 = v98[0] + 24 * v28;
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      *v32 = v30;
      *(v32 + 8) = v102[0];
      *(v32 + 15) = *(v102 + 7);
      *(v32 + 23) = v31;
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      MEMORY[0x24C2541D0](v98[0], "Group");
    }
  }

  *&v104[*(v103 - 24) + 8] = 10;
  v33 = sub_24BC95264(&v103, "#usda 1.0\n", 10);
  v34 = sub_24BC95264(v33, "(\n", 2);
  sub_24BC95264(v34, "    customLayerData = {\n", 24);
  if (*(v91 + 95) < 0)
  {
    if (*(v91 + 80))
    {
      goto LABEL_42;
    }

LABEL_50:
    v40 = "        string creator = CorePhotogrammetry Bake\n";
    v39 = &v103;
    v41 = 51;
    goto LABEL_51;
  }

  if (!*(v91 + 95))
  {
    goto LABEL_50;
  }

LABEL_42:
  v35 = sub_24BC95264(&v103, "        string creator = ", 26);
  v36 = *(v91 + 95);
  if (v36 >= 0)
  {
    v37 = v91 + 72;
  }

  else
  {
    v37 = *(v91 + 72);
  }

  if (v36 >= 0)
  {
    v38 = *(v91 + 95);
  }

  else
  {
    v38 = *(v91 + 80);
  }

  v39 = sub_24BC95264(v35, v37, v38);
  v40 = "\n";
  v41 = 2;
LABEL_51:
  sub_24BC95264(v39, v40, v41);
  if (*(v91 + 96) || *(v91 + 100) || *(v91 + 104))
  {
    v42 = sub_24BC95264(&v103, "        int[] creatorVer = [", 28);
    v43 = MEMORY[0x24C2543D0](v42, *(v91 + 96));
    v44 = sub_24BC95264(v43, ", ", 2);
    v45 = MEMORY[0x24C2543D0](v44, *(v91 + 100));
    v46 = sub_24BC95264(v45, ", ", 2);
    v47 = MEMORY[0x24C2543D0](v46, *(v91 + 104));
    sub_24BC95264(v47, "]\n", 2);
  }

  v48 = sub_24BC95264(&v103, "        dictionary Apple = {\n", 29);
  v49 = sub_24BC95264(v48, "            int preferredIblVersion = 2\n", 40);
  sub_24BC95264(v49, "        }\n", 10);
  v50 = sub_24BC95264(&v103, "    }\n", 6);
  v51 = sub_24BC95264(v50, "    defaultPrim = ", 19);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v54 = sub_24BC95264(v51, p_p, size);
  v55 = sub_24BC95264(v54, "\n", 2);
  v56 = sub_24BC95264(v55, "    metersPerUnit = 1\n", 22);
  v57 = sub_24BC95264(v56, "    upAxis = Y\n", 17);
  v58 = sub_24BC95264(v57, ")\n", 2);
  v59 = sub_24BC95264(v58, "\n", 1);
  v60 = sub_24BC95264(v59, "def Xform ", 11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = &__p;
  }

  else
  {
    v61 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = __p.__r_.__value_.__l.__size_;
  }

  v63 = sub_24BC95264(v60, v61, v62);
  v64 = sub_24BC95264(v63, " (\n", 4);
  v65 = sub_24BC95264(v64, "    assetInfo = {\n", 18);
  v66 = sub_24BC95264(v65, "        string name = ", 23);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &__p;
  }

  else
  {
    v67 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v68 = __p.__r_.__value_.__l.__size_;
  }

  v69 = sub_24BC95264(v66, v67, v68);
  v70 = sub_24BC95264(v69, "\n", 2);
  v71 = sub_24BC95264(v70, "    }\n", 6);
  v72 = sub_24BC95264(v71, "    kind = component\n", 23);
  v73 = sub_24BC95264(v72, ")\n", 2);
  v74 = sub_24BC95264(v73, "{\n", 2);
  v75 = sub_24BC95264(v74, "    def Scope Materials\n", 26);
  sub_24BC95264(v75, "    {\n", 6);
  sub_24BD23C24(&v103, v89, &__p, v92, v91 + 16, v97);
  v76 = sub_24BC95264(&v103, "    }\n", 6);
  v77 = sub_24BC95264(v76, "\n", 1);
  v78 = sub_24BC95264(v77, "    def Scope Geometry\n", 25);
  sub_24BC95264(v78, "    {\n", 6);
  sub_24BD253DC(&v103, a2, &__p, v98, &v95, a5);
  v79 = sub_24BC95264(&v103, "    }\n", 6);
  v80 = sub_24BC95264(v79, "}\n", 2);
  sub_24BC95264(v80, "\n", 1);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v104[*(v103 - 24) - 8], *&v104[*(v103 - 24) + 24] | 4);
  }

  sub_24BD27A88(&v95, v96[0]);
  v95 = v97;
  sub_24BC955F4(&v95);
  v97[0] = v98;
  sub_24BC955F4(v97);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v103 = *MEMORY[0x277D82810];
  *&v104[*(v103 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](v104);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v105);
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD271B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    if ((v54 & 1) == 0)
    {
LABEL_10:
      sub_24BD2741C(&a53, MEMORY[0x277D82810]);
      MEMORY[0x24C2547D0](&STACK[0x2A0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v53);
  goto LABEL_10;
}

void sub_24BD27328(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BD27B3C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

uint64_t sub_24BD2741C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x24C2542E0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t sub_24BD274E4(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BD2760C;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_24BD27620(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BD27748;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_24BD2775C(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BD27884;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void sub_24BD27898(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_24BD27898(a1, *a2);
    sub_24BD27898(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void *sub_24BD278FC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BD27958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD27974(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void sub_24BD27A88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24BD27A88(a1, *a2);
    sub_24BD27A88(a1, a2[1]);
    sub_24BD27AE4((a2 + 4));

    operator delete(a2);
  }
}

void sub_24BD27AE4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_24BD27B3C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_24BC8E034(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_24BC8E08C(v18);
  }
}

uint64_t sub_24BD27CA8(uint64_t a1, const void **a2)
{
  v2 = *sub_24BC8FDBC(a1, &v4, a2);
  if (!v2)
  {
    sub_24BD27D50();
  }

  return v2;
}

uint64_t sub_24BD27DF4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BD27AE4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t GESSAlgGetRecommendedQuadOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v21 = 10000;
    v22 = 1;
    v23 = 0x3FF0000000000000;
    v24 = 0;
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    sub_24BE3A3BC(v14, &v21);
    objc_msgSend_setOutputFaceNumber_(v4, v15, v21, v16);
    objc_msgSend_setEnableSimplify_(v4, v17, v22, v18);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t GESSAlgAdaptiveQuadModelConvert(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ((objc_msgSend_valid(v5, v8, v9, v10) & 1) != 0 && objc_msgSend_meshType(v5, v11, v12, v13) == 1 && objc_msgSend_meshType(v6, v14, v15, v16) == 11)
  {
    v17 = objc_alloc_init(GESSAlgAdaptiveQuadModelConvertExtended);
    objc_msgSend_setOptions_(v17, v18, v7, v19);
    v21 = objc_msgSend_run_output_(v17, v20, v5, v6);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_24BD28AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(v69 - 112);
  if (v71)
  {
    sub_24BC9EC78(v71);
  }

  sub_24BD28C48(&a31);
  sub_24BD2A67C(&a67);

  _Unwind_Resume(a1);
}

uint64_t sub_24BD28BFC(uint64_t a1)
{
  sub_24BD2A32C(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BD28C48(uint64_t a1)
{
  sub_24BD2A5FC(a1 + 128);
  sub_24BD2A57C(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

void sub_24BD29628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v46 = *(v44 - 120);
  if (v46)
  {
    sub_24BC9EC78(v46);
  }

  sub_24BD29724(&a26);
  sub_24BD2A67C(&a42);

  _Unwind_Resume(a1);
}

uint64_t sub_24BD29724(uint64_t a1)
{
  sub_24BD2A770(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancement(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ((objc_msgSend_valid(v5, v8, v9, v10) & 1) != 0 && objc_msgSend_meshType(v5, v11, v12, v13) == 1 && objc_msgSend_meshType(v6, v14, v15, v16) == 11)
  {
    v17 = objc_alloc_init(GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementExtended);
    objc_msgSend_setOptions_(v17, v18, v7, v19);
    v21 = objc_msgSend_run_output_(v17, v20, v5, v6);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_24BD29B54(uint64_t a1)
{
  *a1 = 10000;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  sub_24BD29BDC(a1 + 24);
  *(a1 + 656) = 0;
  *(a1 + 88) = 0x100000800;
  *(a1 + 96) = 1;
  *(a1 + 136) = 1;
  *(a1 + 176) = 0;
  *(a1 + 216) = 1;
  *(a1 + 256) = 0;
  *(a1 + 296) = 1;
  *(a1 + 336) = 1;
  *(a1 + 376) = 0;
  *(a1 + 416) = 0;
  *(a1 + 456) = 0;
  *(a1 + 496) = 0;
  *(a1 + 608) = 1;
  return a1;
}

uint64_t sub_24BD29BDC(uint64_t a1)
{
  *(a1 + 4) = 1061997773;
  *(a1 + 8) = xmmword_24BFD28E0;
  *(a1 + 24) = 0x13DCCCCCDLL;
  *(a1 + 32) = 1090519040;
  *(a1 + 36) = 0x200000002;
  *(a1 + 44) = 1065353216;
  *(a1 + 52) = 2139095039;
  *(a1 + 56) = 1;
  sub_24BD29CAC(a1 + 64);
  *(a1 + 584) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 536) = 0u;
  sub_24BC836D4((a1 + 592), "CorePhotogrammetry Bake");
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  return a1;
}

void sub_24BD29C90(_Unwind_Exception *a1)
{
  sub_24BD2A0F4(v2);
  sub_24BD2A138(v1 + 64);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD29CAC(uint64_t a1)
{
  *a1 = 4096;
  *(a1 + 8) = 1;
  sub_24BC836D4((a1 + 16), "png");
  *(a1 + 40) = 1065017672;
  *(a1 + 48) = 1;
  sub_24BC836D4((a1 + 56), "png");
  *(a1 + 80) = 1065017672;
  *(a1 + 88) = 1;
  sub_24BC836D4((a1 + 96), "png");
  *(a1 + 120) = 1065017672;
  *(a1 + 128) = 1;
  sub_24BC836D4((a1 + 136), "png");
  *(a1 + 160) = 1065017672;
  sub_24BC836D4(__p, "exr");
  *(a1 + 168) = 1;
  if (SHIBYTE(v9) < 0)
  {
    sub_24BC8DE9C((a1 + 176), __p[0], __p[1]);
    v2 = SHIBYTE(v9);
    *(a1 + 200) = 1065017672;
    *(a1 + 204) = 1;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 176) = *__p;
    *(a1 + 192) = v9;
    *(a1 + 200) = 1065017672;
    *(a1 + 204) = 1;
  }

  *(a1 + 208) = 1;
  sub_24BC836D4((a1 + 216), "png");
  *(a1 + 240) = 1065017672;
  sub_24BC836D4(__p, "png");
  *(a1 + 248) = 0;
  if (SHIBYTE(v9) < 0)
  {
    sub_24BC8DE9C((a1 + 256), __p[0], __p[1]);
    v3 = SHIBYTE(v9);
    *(a1 + 280) = 1065017672;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 256) = *__p;
    *(a1 + 272) = v9;
    *(a1 + 280) = 1065017672;
  }

  sub_24BC836D4(__p, "png");
  *(a1 + 288) = 0;
  if (SHIBYTE(v9) < 0)
  {
    sub_24BC8DE9C((a1 + 296), __p[0], __p[1]);
    v4 = SHIBYTE(v9);
    *(a1 + 320) = 1065017672;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 296) = *__p;
    *(a1 + 312) = v9;
    *(a1 + 320) = 1065017672;
  }

  sub_24BC836D4(__p, "exr");
  *(a1 + 328) = 0;
  if (SHIBYTE(v9) < 0)
  {
    sub_24BC8DE9C((a1 + 336), __p[0], __p[1]);
    v5 = SHIBYTE(v9);
    *(a1 + 360) = 1065017672;
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 336) = *__p;
    *(a1 + 352) = v9;
    *(a1 + 360) = 1065017672;
  }

  sub_24BC836D4(__p, "exr");
  *(a1 + 368) = 0;
  if (SHIBYTE(v9) < 0)
  {
    sub_24BC8DE9C((a1 + 376), __p[0], __p[1]);
    v6 = SHIBYTE(v9);
    *(a1 + 400) = 1065017672;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 376) = *__p;
    *(a1 + 392) = v9;
    *(a1 + 400) = 1065017672;
  }

  sub_24BD9C400(a1 + 408);
  return a1;
}

void sub_24BD29F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 359) < 0)
  {
    operator delete(*(v15 + 336));
  }

  if (*(v15 + 319) < 0)
  {
    operator delete(*v16);
  }

  if (*(v15 + 279) < 0)
  {
    operator delete(*(v15 + 256));
  }

  if (*(v15 + 239) < 0)
  {
    operator delete(*(v15 + 216));
  }

  if (*(v15 + 199) < 0)
  {
    operator delete(*(v15 + 176));
  }

  if (*(v15 + 159) < 0)
  {
    operator delete(*(v15 + 136));
  }

  if (*(v15 + 119) < 0)
  {
    operator delete(*(v15 + 96));
  }

  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
  }

  if (*(v15 + 39) < 0)
  {
    operator delete(*(v15 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD2A0F4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_24BD2A138(uint64_t a1)
{
  sub_24BD2A214(a1 + 440);
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_24BD2A214(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BD2A294(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BD2A32C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BD2A3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BCA1524(a1, a2);
  sub_24BCA2D38(v4 + 32, a2 + 32);
  sub_24BCA2DD0(a1 + 64, a2 + 64);
  sub_24BD2A44C(a1 + 96, a2 + 96);
  sub_24BD2A4E4(a1 + 128, a2 + 128);
  return a1;
}

void sub_24BD2A408(_Unwind_Exception *a1)
{
  sub_24BD2A57C(v1 + 96);
  sub_24BC9ED38(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD2A44C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BD2A4E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BD2A57C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BD2A5FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BD2A67C(uint64_t a1)
{
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  v2 = *(a1 + 560);
  if (v2)
  {
    *(a1 + 568) = v2;
    operator delete(v2);
  }

  sub_24BD2A138(a1 + 88);
  return a1;
}

uint64_t sub_24BD2A6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BD2A770(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_24BD2A84C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95150;
  sub_24BCB10B4((a1 + 3));
}

void sub_24BD2A8C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD2A9B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95188;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BD2AA74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F951D0;
  a2[1] = v2;
  return result;
}

void sub_24BD2AAA0(uint64_t a1, std::error_code *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v3 = MEMORY[0x277CCACA8];
  std::error_code::message(&v16, &v14);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, &v16, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v16.__r_.__value_.__l.__data_, v5);
  }
  v7 = ;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277CCA450];
  v16.__r_.__value_.__r.__words[0] = v7;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v16, &v15, 1);
  v9 = MEMORY[0x277CCA9B8];
  v10 = sub_24BE7C890();
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, v10, v14.__val_, v8);

  (*(*(**(a1 + 8) + 160) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BD2ACAC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95218;
  a2[1] = v2;
  return result;
}

void *sub_24BD2ACD8(uint64_t a1, const void *a2)
{
  v2 = (**(a1 + 8) + 40);
  result = memmove(v2, a2, 0x68uLL);
  v2[13] = 0;
  return result;
}

void *sub_24BD2AD18(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD2AF70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BD2AFEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95260;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BD2B0AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F952A8;
  a2[1] = v2;
  return result;
}

void sub_24BD2B0D8(uint64_t a1, std::error_code *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v3 = MEMORY[0x277CCACA8];
  std::error_code::message(&v16, &v14);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, &v16, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v16.__r_.__value_.__l.__data_, v5);
  }
  v7 = ;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277CCA450];
  v16.__r_.__value_.__r.__words[0] = v7;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v16, &v15, 1);
  v9 = MEMORY[0x277CCA9B8];
  v10 = sub_24BE7C890();
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, v10, v14.__val_, v8);

  (*(*(**(a1 + 8) + 160) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BD2B2E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F952F0;
  a2[1] = v2;
  return result;
}

__n128 sub_24BD2B310(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8) + 40;
  v4 = *(a2 + 16);
  v3 = *(a2 + 32);
  *v2 = *a2;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v8 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(v2 + 80) = result;
  *(v2 + 96) = v6;
  *(v2 + 48) = v8;
  *(v2 + 64) = v7;
  return result;
}

void *sub_24BD2B348(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD2B5A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void sub_24BD2B5CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD2B620(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_24BC900B8(a1 + 72, *(a1 + 80));
  v3 = (a1 + 48);
  sub_24BCCB404(&v3);
  v3 = v2;
  sub_24BCCB4E0(&v3);
}

uint64_t sub_24BD2B6E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95370;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BD2B7A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F953B8;
  a2[1] = v2;
  return result;
}

void sub_24BD2B7D4(uint64_t a1, std::error_code *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v3 = MEMORY[0x277CCACA8];
  std::error_code::message(&v16, &v14);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, &v16, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v16.__r_.__value_.__l.__data_, v5);
  }
  v7 = ;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277CCA450];
  v16.__r_.__value_.__r.__words[0] = v7;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v16, &v15, 1);
  v9 = MEMORY[0x277CCA9B8];
  v10 = sub_24BE7C890();
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, v10, v14.__val_, v8);

  (*(*(**(a1 + 8) + 216) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BD2B9E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95400;
  a2[1] = v2;
  return result;
}

__n128 sub_24BD2BA0C(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8) + 40;
  v4 = *(a2 + 16);
  v3 = *(a2 + 32);
  *v2 = *a2;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v8 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(v2 + 80) = result;
  *(v2 + 96) = v6;
  *(v2 + 48) = v8;
  *(v2 + 64) = v7;
  return result;
}

void *sub_24BD2BA44(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD2BC9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BD2BCA8(uint64_t a1, const char *a2, uint64_t a3, int *a4, uint64_t a5)
{
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a1, a4);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *a1, a4);
  }
  v10 = ;
  if (*(a3 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, a3, v9);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, *a3, v9);
  }
  v11 = ;
  v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v12, v13, v14);
  if (!objc_msgSend_fileExistsAtPath_(v15, v16, v10, v17) || (objc_msgSend_attributesOfItemAtPath_error_(v15, v18, v10, 0), v19 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend_fileSize(v19, v20, v21, v22), v19, !v23))
  {
    v42 = "Usda file doesn't exist or is empty";
    v43 = 12;
LABEL_14:
    *a4 = v43;
    MEMORY[0x24C2541D0](a5, v42);
    v41 = 0;
    goto LABEL_15;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = MEMORY[0x277CD7B78];
  v28 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v26, v10, v27);
  v31 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v29, v11, v30);
  objc_msgSend_convertToUSDZ_writeToURL_(v25, v32, v28, v31);

  objc_autoreleasePoolPop(v24);
  if (!objc_msgSend_fileExistsAtPath_(v15, v33, v11, v34) || (objc_msgSend_attributesOfItemAtPath_error_(v15, v35, v11, 0), v36 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_fileSize(v36, v37, v38, v39), v36, !v40))
  {
    v42 = "Fail to write usdz";
    v43 = 15;
    goto LABEL_14;
  }

  v41 = 1;
LABEL_15:

  return v41;
}

BOOL sub_24BD2BEA8(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  v98 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v12 = MEMORY[0x277CBEBC0];
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, a1, v11);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, *a1, v11);
  }
  v13 = ;
  v16 = objc_msgSend_fileURLWithPath_(v12, v14, v13, v15);

  v17 = objc_alloc(MEMORY[0x277CD7AD0]);
  v19 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_preserveTopology_error_(v17, v18, v16, 0, 0, 1, 0);
  v23 = v19;
  if (v19)
  {
    objc_msgSend_loadTextures(v19, v20, v21, v22);
    v86 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v24, v25, v26);
    v30 = objc_msgSend_UUIDString(v86, v27, v28, v29);
    v31 = v30;
    v35 = objc_msgSend_UTF8String(v31, v32, v33, v34);
    sub_24BC836D4(&__p, v35);
    sub_24BCDFADC(&__p, &v90);
    v91 = v90;
    memset(&v90, 0, sizeof(v90));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, &v91, v37);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v91.__r_.__value_.__l.__data_, v37);
    }
    v38 = ;
    v42 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v39, v40, v41);
    v90.__r_.__value_.__s.__data_[0] = 0;
    if (!objc_msgSend_fileExistsAtPath_isDirectory_(v42, v43, v38, &v90) || (v90.__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v42, v44, v38, 0, 0, 0);
    }

    sub_24BCCEE48(&__p, "tmp.obj");
    sub_24BCBBCB8(&__p, &v91, &v90);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v47 = MEMORY[0x277CBEBC0];
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, &v90, v46);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v90.__r_.__value_.__l.__data_, v46);
    }
    v48 = ;
    v51 = objc_msgSend_URLWithString_(v47, v49, v48, v50);
    objc_msgSend_exportAssetToURL_(v23, v52, v51, v53);

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    __p.__r_.__value_.__s.__data_[2] = 1;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = 3;
    if (a4)
    {
      memset(v97, 0, 32);
      memset(v96, 0, sizeof(v96));
      memset(v95, 0, sizeof(v95));
      v54 = v95;
      sub_24BD35680(&v90, a2, a3, &__p, v95);
      v55 = v97;
      v56 = v96;
    }

    else
    {
      memset(v94, 0, sizeof(v94));
      memset(v93, 0, sizeof(v93));
      memset(v92, 0, sizeof(v92));
      v54 = v92;
      sub_24BD35560(&v90, a2, a3, &__p, v92);
      v55 = v94;
      v56 = v93;
    }

    sub_24BC9F10C(v55);
    sub_24BC9F08C(v56);
    sub_24BC9F00C(v54);
    v62 = MEMORY[0x277CBEBC0];
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, &v91, v61);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v91.__r_.__value_.__l.__data_, v61);
    }
    v63 = ;
    v66 = objc_msgSend_fileURLWithPath_(v62, v64, v63, v65);

    v70 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v67, v68, v69);
    v74 = objc_msgSend_path(v66, v71, v72, v73);
    v77 = objc_msgSend_fileExistsAtPath_(v70, v75, v74, v76);

    if (v77)
    {
      v81 = objc_msgSend_path(v66, v78, v79, v80);
      v88 = 0;
      objc_msgSend_removeItemAtPath_error_(v70, v82, v81, &v88);
      v83 = v88;
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a5 + 56))
  {
    v57 = sub_24BD6A604(0x130u);
    v59 = v58;
    sub_24BC836D4(&v91, "IO failed when loading USDZ");
    sub_24BC98654(a5 + 32, v57, v59, &v91);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }
  }

  objc_autoreleasePoolPop(context);
  v84 = *MEMORY[0x277D85DE8];
  return v23 != 0;
}

void sub_24BD2C2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD2C464(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v11, a4);
  sub_24BCA2D38(v12, a4 + 32);
  sub_24BCA2DD0(v13, a4 + 64);
  v8 = sub_24BD2BEA8(a1, a2, a3, 0, v11);
  sub_24BC9F10C(v13);
  sub_24BC9F08C(v12);
  sub_24BC9F00C(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_24BD2C538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9ED38(va);
  _Unwind_Resume(a1);
}

BOOL sub_24BD2C574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v11, a4);
  sub_24BCA2D38(v12, a4 + 32);
  sub_24BCA2DD0(v13, a4 + 64);
  v8 = sub_24BD2BEA8(a1, a2, a3, 1, v11);
  sub_24BC9F10C(v13);
  sub_24BC9F08C(v12);
  sub_24BC9F00C(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_24BD2C648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9ED38(va);
  _Unwind_Resume(a1);
}

void sub_24BD2C684(char *a1@<X0>, std::string *a2@<X8>)
{
  sub_24BC836D4(a2, "a");
  v4 = a1[23];
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v6)
  {
    v7 = MEMORY[0x277D85DE0];
    do
    {
      v8 = *v5;
      if ((v8 & 0x80000000) != 0)
      {
        v9 = __maskrune(*v5, 0x500uLL);
      }

      else
      {
        v9 = *(v7 + 4 * v8 + 60) & 0x500;
      }

      if (v9)
      {
        std::string::push_back(a2, v8);
      }

      ++v5;
      --v6;
    }

    while (v6);
  }
}

void sub_24BD2C730(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD2C74C(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = -1;
  v29 = -1;
  v27 = -1;
  sub_24BC836D4(&__p, off_27F078FE8[0]);
  v4 = sub_24BD265CC(a1, &v29, &__p.__r_.__value_.__l.__data_);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_24BC836D4(&__p, off_27F078FE8[0]);
    sub_24BD2CC04(a1);
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_24BC836D4(&__p, off_27F078FF8);
  v6 = sub_24BD26644(a1, &v28, &__p.__r_.__value_.__l.__data_);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_24BC836D4(&__p, off_27F078FF8);
    sub_24BD2CC70(a1);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_24BC836D4(&__p, off_27F078FC8[0]);
  v30[0] = 0;
  v8 = sub_24BD274E4((a1 + 56), v30, &__p.__r_.__value_.__l.__data_);
  v27 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 == -1)
  {
    sub_24BC836D4(&__p, off_27F078FC8[0]);
    sub_24BD2CCDC(a1);
  }

  if (sub_24BCD277C(a2))
  {
    v9 = (*(a1 + 80) + 16 * v29);
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    v12 = (*(*v11 + 16))(v11);
    sub_24BCC3C1C(a2, v12);
    if (a2[1] != *a2)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        std::to_string(&__p, v14);
        v15 = std::string::insert(&__p, 0, "g");
        v16 = v15->__r_.__value_.__r.__words[0];
        *v30 = v15->__r_.__value_.__l.__size_;
        *(&v30[3] + 1) = *(&v15->__r_.__value_.__r.__words[1] + 7);
        v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        v18 = *a2 + v13;
        if (*(v18 + 23) < 0)
        {
          operator delete(*v18);
        }

        *v18 = v16;
        *(v18 + 8) = *v30;
        *(v18 + 15) = *(&v30[3] + 1);
        *(v18 + 23) = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v19 = *a2;
        v20 = (*(a1 + 80) + 16 * v28);
        v22 = *v20;
        v21 = v20[1];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v21);
        }

        v23 = *(v22 + 40);
        v30[0] = v14;
        __p.__r_.__value_.__r.__words[0] = v30;
        v24 = sub_24BD303B8(v23, v30);
        std::string::operator=((v24 + 5), (v19 + v13));
        ++v14;
        v13 += 48;
      }

      while (v14 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_24BD2CBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD2CC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD2CC70(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = v2;
  sub_24BD2E428(a1 + 80);
}

void sub_24BD2CD50(uint64_t a1)
{
  *&v13[4] = *MEMORY[0x277D85DE8];
  v11[0] = xmmword_24BFD2900;
  v11[1] = unk_24BFD2910;
  v11[2] = xmmword_24BFD2920;
  v12 = 13;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_24BD30490(&v8, v11, v13, 0xDuLL);
  v2 = v8;
  v3 = v9;
  if (v8 != v9)
  {
    do
    {
      v4 = *v2 > 0xB || ((1 << *v2) & 0x888) == 0;
      *&v11[0] = v2;
      if (v4)
      {
        v5 = sub_24BD30504(a1 + 16, v2);
        v6 = ".png";
      }

      else
      {
        v5 = sub_24BD30504(a1 + 16, v2);
        v6 = ".exr";
      }

      MEMORY[0x24C2541D0](v5 + 6, v6);
      ++v2;
    }

    while (v2 != v3);
    v2 = v8;
  }

  if (v2)
  {
    v9 = v2;
    operator delete(v2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BD2CED0(const std::__fs::filesystem::path *a1, uint64_t **a2, uint64_t *a3, char a4, uint64_t a5)
{
  context = objc_autoreleasePoolPush();
  sub_24BD2D888(v77);
  v77[0] = 1;
  v79 = 257;
  MEMORY[0x24C2541D0](&v82, "GESS");
  v84 = sub_24BE1A678();
  v85 = sub_24BE1A790();
  v86 = sub_24BE1A968();
  sub_24BD25030(a1, &v74);
  if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&__dst, v74.__pn_.__r_.__value_.__l.__data_, v74.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v74.__pn_;
  }

  sub_24BD2C684(&__dst, &v76);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v76;
  *(&v76.__r_.__value_.__s + 23) = 0;
  v76.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__pn_.__r_.__value_.__l.__data_);
  }

  sub_24BD2C74C(a2, a3);
  sub_24BD2CD50(v77);
  sub_24BD3B790(a2, &v78);
  if (!v78)
  {
    v77[0] = 0;
  }

  v13 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v10, v11, v12, context);
  v17 = objc_msgSend_UUIDString(v13, v14, v15, v16);
  v18 = v17;
  v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
  sub_24BC836D4(&v74, v22);
  sub_24BCDFADC(&v74, &__dst);
  v76 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, &v76, v24);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v76.__r_.__value_.__l.__data_, v24);
  }
  v25 = ;
  v29 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v26, v27, v28);
  __dst.__r_.__value_.__s.__data_[0] = 0;
  if (!objc_msgSend_fileExistsAtPath_isDirectory_(v29, v30, v25, &__dst) || (__dst.__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v29, v31, v25, 0, 0, 0);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  p_replacement = &__replacement;
  sub_24BC8E2D4(&__replacement, size + 5);
  if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(p_replacement, p_p, size);
  }

  strcpy(p_replacement + size, ".usda");
  v74 = __replacement;
  memset(&__replacement, 0, sizeof(__replacement));
  sub_24BCBBCB8(&v74, &v76, &__dst);
  if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&v74, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v74.__pn_ = __dst;
  }

  sub_24BCCEE48(&__replacement.__pn_, ".usdc");
  std::__fs::filesystem::path::replace_extension(&v74, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    if (a4)
    {
      goto LABEL_39;
    }
  }

  else if (a4)
  {
LABEL_39:
    sub_24BD273F0(&__dst, a2, a3, v77);
    goto LABEL_42;
  }

  sub_24BD273C8(&__dst, a2, a3, v77);
LABEL_42:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&__replacement, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __replacement.__pn_ = __dst;
  }

  sub_24BCCEE48(&v72.__pn_, ".mtl");
  std::__fs::filesystem::path::replace_extension(&__replacement, &v72);
  if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__pn_.__r_.__value_.__l.__data_);
  }

  v35 = sub_24BD388B4(&__replacement, a3, v80);
  v71 = 25;
  memset(&v72, 0, sizeof(v72));
  if (v35 && (sub_24BD2BCA8(&__dst, v36, a1, &v71, &v72) & 1) != 0)
  {
    v39 = MEMORY[0x277CBEBC0];
    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, &v76, v38);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v76.__r_.__value_.__l.__data_, v38);
    }
    v40 = ;
    v43 = objc_msgSend_fileURLWithPath_(v39, v41, v40, v42);

    v47 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v44, v45, v46);
    v51 = objc_msgSend_path(v43, v48, v49, v50);
    v54 = objc_msgSend_fileExistsAtPath_(v47, v52, v51, v53);

    if (v54)
    {
      v58 = objc_msgSend_path(v43, v55, v56, v57);
      objc_msgSend_removeItemAtPath_error_(v47, v59, v58, 0);
    }

    v60 = 1;
  }

  else
  {
    if (*(a5 + 56))
    {
      v61 = sub_24BD6A604(v71);
      v63 = v62;
      sub_24BC836D4(v69, "IO failed when saving USDZ");
      sub_24BC98654(a5 + 32, v61, v63, v69);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    v60 = 0;
  }

  if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  sub_24BCC88D8(v81, v81[1]);
  sub_24BCC89B4(v80, v80[1]);
  if (v60)
  {
    v64 = 1;
    v65 = 1;
  }

  else
  {
    v65 = 0;
    v64 = 0;
  }

  objc_autoreleasePoolPop(contexta);
  return v65 & v64;
}

void sub_24BD2D4B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_24BD2D954(&a50);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BD2D474);
}

uint64_t sub_24BD2D668(const std::__fs::filesystem::path *a1, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v11, a4);
  sub_24BCA2D38(v12, a4 + 32);
  sub_24BCA2DD0(v13, a4 + 64);
  v8 = sub_24BD2CED0(a1, a2, a3, 0, v11);
  sub_24BC9F10C(v13);
  sub_24BC9F08C(v12);
  sub_24BC9F00C(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_24BD2D73C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9ED38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD2D778(const std::__fs::filesystem::path *a1, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v11, a4);
  sub_24BCA2D38(v12, a4 + 32);
  sub_24BCA2DD0(v13, a4 + 64);
  v8 = sub_24BD2CED0(a1, a2, a3, 1, v11);
  sub_24BC9F10C(v13);
  sub_24BC9F08C(v12);
  sub_24BC9F00C(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_24BD2D84C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9ED38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD2D888(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  sub_24BD3A2A0(a1 + 16);
  sub_24BC836D4((a1 + 72), "CorePhotogrammetry Bake");
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_24BC836D4((a1 + 112), "ObjectCapture");
  return a1;
}

void sub_24BD2D8EC(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_24BD2D918(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD2D918(uint64_t a1)
{
  sub_24BCC88D8(a1 + 24, *(a1 + 32));
  sub_24BCC89B4(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_24BD2D954(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_24BCC88D8(a1 + 40, *(a1 + 48));
  sub_24BCC89B4(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_24BD2D9B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BD2DAA4();
}

void sub_24BD2DA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD2DB18(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95448;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F95480;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD2DBB8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD2DC34(uint64_t a1)
{
  *a1 = &unk_285F95480;
  v3 = (a1 + 40);
  sub_24BC955F4(&v3);
  return sub_24BCB2264(a1);
}

uint64_t sub_24BD2DC90(uint64_t a1)
{
  *a1 = &unk_285F95480;
  v4 = (a1 + 40);
  sub_24BC955F4(&v4);
  v2 = sub_24BCB2264(a1);
  return MEMORY[0x24C2548B0](v2, 0x10B3C402F26E7C1);
}

void sub_24BD2DD2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  v3 = &v1;
  sub_24BC955F4(&v3);
}

uint64_t sub_24BD2DD70(uint64_t result)
{
  v1 = result;
  v3 = *(result + 48);
  v2 = *(result + 56);
  if (v3 >= v2)
  {
    v5 = result + 40;
    v6 = v1[5];
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v6) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v6) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v1 + 5;
    if (v10)
    {
      sub_24BC8E034(v5, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    v4 = 24 * v7 + 24;
    v12 = v1[5];
    v13 = v1[6] - v12;
    v14 = 24 * v7 - v13;
    memcpy((v11 - v13), v12, v13);
    v15 = v1[5];
    v1[5] = v14;
    v1[6] = v4;
    v16 = v1[7];
    v1[7] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_24BC8E08C(v17);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = (v3 + 3);
    v3[2] = 0;
  }

  v1[6] = v4;
  return result;
}

void sub_24BD2DE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = (v6 + 24 * a2);
  if (*(v7 + 23) < 0)
  {
    sub_24BC8DE9C(&__p, *v7, *(v7 + 1));
    v6 = *(a1 + 40);
  }

  else
  {
    v8 = *v7;
    __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&__p.__r_.__value_.__l.__data_ = v8;
  }

  std::string::operator=((v6 + 24 * a2), (v6 + 24 * a3));
  std::string::operator=((*(a1 + 40) + 24 * a3), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24BD2DF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD2DFE8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC8E034(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void *sub_24BD2E0A4(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F95480;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD2E124((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return a1;
}

uint64_t sub_24BD2E124(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BD2E1AC(result, a4);
  }

  return result;
}

void sub_24BD2E18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC955F4(&a9);
  _Unwind_Resume(a1);
}

void sub_24BD2E1AC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BC8E034(a1, a2);
  }

  sub_24BC8E01C();
}

char *sub_24BD2E1F8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_24BC8DE9C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_24BD2E2B8(v9);
  return v4;
}

uint64_t sub_24BD2E2B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BD2E2F0(a1);
  }

  return a1;
}

void sub_24BD2E2F0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_24BD2E3A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD2E3BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD2E3F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BD2E428(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BD2E51C();
}

void sub_24BD2E504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD2E590(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95528;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F95560;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD2E630(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD2E6AC(uint64_t a1)
{
  *a1 = &unk_285F95560;
  v3 = (a1 + 40);
  sub_24BD2E9F8(&v3);
  return sub_24BCB2264(a1);
}

uint64_t sub_24BD2E708(uint64_t a1)
{
  *a1 = &unk_285F95560;
  v4 = (a1 + 40);
  sub_24BD2E9F8(&v4);
  v2 = sub_24BCB2264(a1);
  return MEMORY[0x24C2548B0](v2, 0x10B3C402F26E7C1);
}

void sub_24BD2E7A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  v3 = &v1;
  sub_24BD2E9F8(&v3);
}

void sub_24BD2E7E8(uint64_t *a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v2 = a1[6];
  if (v2 >= a1[7])
  {
    v3 = sub_24BD2EFBC(a1 + 5, &v4);
  }

  else
  {
    *v2 = v5;
    *(v2 + 8) = v5[0];
    *(v2 + 16) = 0;
    *v2 = v2 + 8;
    v3 = v2 + 24;
  }

  a1[6] = v3;
  sub_24BD27898(&v4, v5[0]);
}

void sub_24BD2E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24BD2F114(&v7, *(a1 + 40) + 24 * a2);
  if (a2 != a3)
  {
    sub_24BD2F53C((*(a1 + 40) + 24 * a2), *(*(a1 + 40) + 24 * a3), (*(a1 + 40) + 24 * a3 + 8));
  }

  v6 = (*(a1 + 40) + 24 * a3);
  if (v6 != &v7)
  {
    sub_24BD2F53C(v6, v7, &v8);
  }

  sub_24BD27898(&v7, v8);
}

uint64_t **sub_24BD2E938(uint64_t **result, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    return sub_24BD2F53C(&result[5][3 * a3], result[5][3 * a2], &result[5][3 * a2 + 1]);
  }

  return result;
}

void sub_24BD2E9F8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        sub_24BD27898((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_24BD2EA84(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BD2EB60(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD2EB4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD2ED18(va);
  _Unwind_Resume(a1);
}

void sub_24BD2EB60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BD2EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      sub_24BD27898(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return sub_24BD2EC94(v13);
}

uint64_t sub_24BD2EC94(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BD2ECCC(a1);
  }

  return a1;
}

void sub_24BD2ECCC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      sub_24BD27898(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_24BD2ED18(void **a1)
{
  sub_24BD2ED4C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BD2ED4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_24BD27898(i - 24, *(i - 16));
  }
}

void sub_24BD2ED94(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BD2EE38(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        sub_24BD27898(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t *sub_24BD2EE38(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 24 * a2;
      v11 = 24 * a2;
      v12 = (v5 + 8);
      do
      {
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v12 += 3;
        v11 -= 24;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      sub_24BD2EB60(result, v9);
    }

    v13 = 24 * v6;
    v20 = 0;
    v21 = 24 * v6;
    *(&v22 + 1) = 0;
    v14 = 24 * a2;
    v15 = (24 * v6 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    *&v22 = v13 + 24 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    sub_24BD2EBB8(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_24BD2ED18(&v20);
  }

  return result;
}

void sub_24BD2EFA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD2ED18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD2EFBC(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_24BD2EB60(a1, v6);
  }

  v7 = 24 * v2;
  v18 = 0;
  v19 = v7;
  *v7 = *a2;
  v8 = a2 + 1;
  v9 = a2[1];
  *(&v20 + 1) = 0;
  *(24 * v2 + 8) = v9;
  v10 = 24 * v2 + 8;
  v11 = a2[2];
  *(v7 + 16) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *a2 = v8;
    *v8 = 0;
    a2[2] = 0;
  }

  else
  {
    *v7 = v10;
  }

  *&v20 = v7 + 24;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  sub_24BD2EBB8(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_24BD2ED18(&v18);
  return v17;
}

void sub_24BD2F100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BD2ED18(va);
  _Unwind_Resume(a1);
}

void *sub_24BD2F114(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_24BD2F16C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_24BD2F16C(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_24BD2F1F4(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_24BD2F1F4(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  result = *sub_24BD2F278(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_24BD2F420();
  }

  return result;
}

uint64_t *sub_24BD2F278(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 16) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_24BD2F4BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BD2F4D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_24BD2F4D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **sub_24BD2F53C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_24BCCF0F8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 16) = *(v9 + 16);
          std::string::operator=((v8 + 5), (v9 + 5));
          sub_24BD2F6AC(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_24BCCF0F8(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_24BD2F71C(&v12);
  }

  if (a2 != a3)
  {
    sub_24BD2F774();
  }

  return result;
}

void sub_24BD2F698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD2F71C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD2F6AC(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 16))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_24BC8FEC4(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_24BD2F71C(uint64_t a1)
{
  sub_24BD27898(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_24BD27898(*a1, v2);
  }

  return a1;
}

void *sub_24BD2F7F8(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F95560;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD2F878((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return a1;
}

uint64_t sub_24BD2F878(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BD2F900(result, a4);
  }

  return result;
}

void sub_24BD2F8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BD2E9F8(&a9);
  _Unwind_Resume(a1);
}

void sub_24BD2F900(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BD2EB60(a1, a2);
  }

  sub_24BC8E01C();
}

void *sub_24BD2F94C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_24BD2F114(v4, v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BD2EC94(v8);
  return v4;
}

void sub_24BD2FA58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD2FA74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD2FAAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BD2FAE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BD2FBD4();
}

void sub_24BD2FBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD2FC48(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95608;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F95640;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD2FCE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD2FD68(void *a1)
{
  sub_24BD2FF84(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD2FDC0(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BD2FDDC(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 1;
    if (v7 <= -2)
    {
      sub_24BC8E01C();
    }

    v8 = v2 - v5;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = v8 >= 0x7FFFFFFFFFFFFFFELL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_24BC92280((a1 + 5), v11);
    }

    v12 = (v3 - v5) >> 1;
    v13 = (2 * v7);
    v14 = (2 * v7 - 2 * v12);
    *v13 = 0;
    v4 = v13 + 1;
    memcpy(v14, v5, v6);
    v15 = a1[5];
    a1[5] = v14;
    a1[6] = v4;
    a1[7] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 2;
  }

  a1[6] = v4;
}

uint64_t sub_24BD2FEAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 2 * a2);
  *(v3 + 2 * a2) = *(v3 + 2 * a3);
  *(v3 + 2 * a3) = v4;
  return result;
}

uint64_t sub_24BD2FF84(void *a1)
{
  *a1 = &unk_285F95640;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BD2FFE4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      sub_24BC92280(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD30080(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_24BD300B0(a1, a2 - v2);
  }
}

void sub_24BD300B0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_24BC92280(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_24BD301D8(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F95640;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD3024C((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 1);
  return a1;
}

uint64_t sub_24BD3024C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_24BC92248(result, a4);
  }

  return result;
}

void sub_24BD302AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD30330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD3034C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD30384(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_24BD303B8(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_24BD30490(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BD304E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD30504(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BD305C0();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_24BD3065C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BD30678(v3, v2);
  _Unwind_Resume(a1);
}

void sub_24BD30678(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t GESSAlgFillHole(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v33[1] = 0;
    v33[3] = objc_msgSend_fillHoleMethod(v4, v15, v16, v17) != 0;
    objc_msgSend_maxBoundaryLengthRatio(v4, v18, v19, v20);
    v33[0] = v21;
    v33[2] = objc_msgSend_maxBoundaryVertexSize(v4, v22, v23, v24);
    v34 = objc_msgSend_enableVertexNormalInitialization(v4, v25, v26, v27);
    v35 = objc_msgSend_enableFilledTrianglesRemeshing(v4, v28, v29, v30);
    v31 = sub_24BE4250C(v14, v33);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

uint64_t sub_24BD308D4(uint64_t a1, const void **a2, uint64_t a3)
{
  v63[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  sub_24BCB0EF0(v61);
  v38 = a2;
  a2[1] = *a2;
  *(a3 + 8) = *a3;
  v7 = v61[0];
  if ((v62[*(v61[0] - 24) + 16] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    v34 = std::string::insert(&__dst, 0, "Unable to open OBJ file ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    *&v58 = *(&v34->__r_.__value_.__l + 2);
    v57 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v57, "!");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v45 = v36->__r_.__value_.__r.__words[2];
    *&v44[0].__locale_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, v44);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v55 = 0.0;
  memset(&__dst, 0, sizeof(__dst));
  v53 = 0.0;
  v54 = 0.0;
  memset(&v51, 0, sizeof(v51));
  memset(&v52, 0, sizeof(v52));
  memset(&v49, 0, sizeof(v49));
  memset(&v50, 0, sizeof(v50));
  *&v60[16] = -1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *v60 = v8;
  v59 = v8;
  v58 = v8;
  v57 = v8;
  v9 = *MEMORY[0x277D82820];
  v10 = *(MEMORY[0x277D82820] + 24);
  while (1)
  {
    std::ios_base::getloc((v61 + *(v7 - 24)));
    v11 = std::locale::use_facet(v44, MEMORY[0x277D82680]);
    v12 = (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v44);
    v13 = sub_24BD3BD8C(v61, &__dst, v12);
    if ((*(v13 + *(*v13 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_24BD31178(v44, &__dst, 8);
    __p = 0;
    v42 = 0;
    v43 = 0;
    sub_24BD312FC(v44, &__p);
    if (SHIBYTE(v43) < 0)
    {
      if (v42 == 1 && *__p == 118)
      {
LABEL_30:
        v24 = MEMORY[0x24C254310](v44, &v55);
        v25 = MEMORY[0x24C254310](v24, &v54);
        MEMORY[0x24C254310](v25, &v53);
        v26 = v55;
        *&v39 = v26;
        sub_24BCBA418(v38, &v39);
        v27 = v54;
        *&v39 = v27;
        sub_24BCBA418(v38, &v39);
        v28 = v53;
        *&v39 = v28;
        sub_24BCBA418(v38, &v39);
        goto LABEL_31;
      }

      if (v42 == 2 && *__p == 29814)
      {
        goto LABEL_31;
      }

      v14 = v42;
      if (v42 == 2)
      {
        if (*__p == 28278)
        {
          goto LABEL_31;
        }

        v14 = v42;
      }

      if (v14 != 1)
      {
        goto LABEL_31;
      }

      v15 = *__p;
    }

    else
    {
      if (HIBYTE(v43) != 1)
      {
        goto LABEL_31;
      }

      v15 = __p;
      if (__p == 118)
      {
        goto LABEL_30;
      }
    }

    if (v15 == 102)
    {
      v16 = sub_24BD312FC(v44, &v52);
      v17 = sub_24BD312FC(v16, &v51);
      v18 = sub_24BD312FC(v17, &v50);
      sub_24BD312FC(v18, &v49);
      sub_24BD31674(&v39, &v52);
      *&v57 = v39;
      DWORD2(v57) = v40;
      sub_24BD31674(&v39, &v51);
      *(&v57 | 0xC) = v39;
      *((&v57 | 0xC) + 8) = v40;
      sub_24BD31674(&v39, &v50);
      *(&v58 + 1) = v39;
      LODWORD(v59) = v40;
      v19 = v57;
      v20 = HIDWORD(v57);
      if (v57 != HIDWORD(v57))
      {
        v21 = DWORD2(v58);
        if (HIDWORD(v57) != DWORD2(v58) && DWORD2(v58) != v57)
        {
          size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v49.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            v23 = 3;
LABEL_37:
            v29 = &v57;
            do
            {
              v30 = *v29;
              v29 += 3;
              LODWORD(v39) = v30 - 1;
              sub_24BC97D60(a3, &v39);
              --v23;
            }

            while (v23);
            goto LABEL_31;
          }

          sub_24BD31674(&v39, &v49);
          *(&v59 + 4) = v39;
          HIDWORD(v59) = v40;
          if (v21 != v39 && v19 != v39 && v20 != v39)
          {
            *v60 = v57;
            *&v60[8] = DWORD2(v57);
            *&v60[12] = *(&v58 + 1);
            *&v60[20] = v59;
            MEMORY[0x24C2541D0](&v49, &unk_24C0435AF);
            v23 = 6;
            goto LABEL_37;
          }
        }
      }
    }

LABEL_31:
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p);
    }

    v44[0].__locale_ = v9;
    *(&v44[0].__locale_ + *(v9 - 3)) = v10;
    v45 = MEMORY[0x277D82878] + 16;
    if (v47 < 0)
    {
      operator delete(v46[7].__locale_);
    }

    v45 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v46);
    std::istream::~istream();
    MEMORY[0x24C2547D0](&v48);
    v7 = v61[0];
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v61[0] = *MEMORY[0x277D82808];
  *(v61 + *(v61[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v62);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v63);
  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BD31040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(*(v74 + 152));
  }

  if (a72 < 0)
  {
    operator delete(*(v74 + 120));
    if ((v73 & 1) == 0)
    {
LABEL_10:
      sub_24BC9E4D8(&STACK[0x238]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v73)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v72);
  goto LABEL_10;
}

uint64_t *sub_24BD31178(uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_24BD3BF80((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_24BD312D4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BD312FC(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x24C2542F0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_24BD31540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x24BD31500);
  }

  __cxa_rethrow();
}

BOOL sub_24BD315F0(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_24BD2237C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_24BD31674(uint64_t a1, const std::string *a2)
{
  *a1 = -1;
  *(a1 + 8) = -1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_24BD3BAD4(&v15, a2, 24);
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v3 = sub_24BD3BD8C(&v15, &__p, 0x2Fu);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_24BC8DCA8(&v11, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v15 = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v4;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x24C2547D0](&v20);
  if (v12 == v11 || 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v9 = std::string::append(&__p, "");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v16 = v9->__r_.__value_.__r.__words[2];
    v15 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &v15);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  *a1 = sub_24BD3B998(v11);
  v5 = v11;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
  if (v6 < 2)
  {
    goto LABEL_22;
  }

  if ((v11[47] & 0x8000000000000000) != 0)
  {
    if (!*(v11 + 4))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v11[47])
  {
LABEL_15:
    *(a1 + 4) = sub_24BD3B998(v11 + 24);
    v5 = v11;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
  }

LABEL_16:
  if (v6 >= 3)
  {
    if ((v5[71] & 0x8000000000000000) == 0)
    {
      if (!v5[71])
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (*(v5 + 7))
    {
LABEL_21:
      *(a1 + 8) = sub_24BD3B998(v5 + 48);
    }
  }

LABEL_22:
  *&v15 = &v11;
  sub_24BC955F4(&v15);
  return a1;
}

void sub_24BD319A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      __p = &a9;
      sub_24BC955F4(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t sub_24BD31A68(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x24C2547D0](a1 + 120);
  return a1;
}

uint64_t sub_24BD31B98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 112) - *(a1 + 104);
  v7 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  sub_24BC8CAB0(a2, 3 * (v6 >> 2));
  sub_24BC8CAB0(a3, (3 * v7));
  v8 = (*(a1 + 8) + 16 * *(a1 + 176));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  if ((v6 & 0x3FFFFFFFCLL) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(v10 + 40);
    v14 = *a2;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        *(v14 + 4 * v16++) = *(v13 + v15);
        v15 += 4;
      }

      while (v15 != 12);
      ++v12;
      v11 += 3;
      v13 += 16;
    }

    while (v12 != (v6 >> 2));
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_24BC9A554(&v28, 3uLL);
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_24BD3C250(&__p, *(a1 + 152), *(a1 + 160), (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v24 = v18;
      sub_24BCD567C(a1, &v24, &v28);
      v19 = 0;
      v20 = v28;
      v21 = *a3;
      v22 = v17;
      do
      {
        *(v21 + 4 * v22++) = *&v20[v19];
        v19 += 4;
      }

      while (v19 != 12);
      ++v18;
      v17 += 3;
    }

    while (v18 != v7);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return 1;
}

void sub_24BD31D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD31D60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 112) - *(a1 + 104);
  v7 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  sub_24BC92930(a2, 3 * (v6 >> 2));
  sub_24BC8CAB0(a3, (3 * v7));
  v8 = (*(a1 + 8) + 16 * *(a1 + 176));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  if ((v6 & 0x3FFFFFFFCLL) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(v10 + 40);
    v14 = *a2;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        *(v14 + 8 * v16++) = *(v13 + v15);
        v15 += 4;
      }

      while (v15 != 12);
      ++v12;
      v11 += 3;
      v13 += 16;
    }

    while (v12 != (v6 >> 2));
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_24BC9A554(&v28, 3uLL);
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_24BD3C250(&__p, *(a1 + 152), *(a1 + 160), (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v24 = v18;
      sub_24BCD567C(a1, &v24, &v28);
      v19 = 0;
      v20 = v28;
      v21 = *a3;
      v22 = v17;
      do
      {
        *(v21 + 4 * v22++) = *&v20[v19];
        v19 += 4;
      }

      while (v19 != 12);
      ++v18;
      v17 += 3;
    }

    while (v18 != v7);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return 1;
}

void sub_24BD31EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD31F2C(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = ((*(a1 + 112) - *(a1 + 104)) >> 2);
  v7 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BC8CAB0(a2, 3 * v6);
  sub_24BC92930(a3, 3 * v7);
  v8 = (*(a1 + 8) + 16 * *(a1 + 176));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  if (v6)
  {
    v11 = 0;
    v12 = *(v10 + 40);
    v13 = *a2;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v13 + i) = *(v12 + i);
      }

      ++v11;
      v13 += 12;
      v12 += 16;
    }

    while (v11 != v6);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_24BC9A554(&v25, 3uLL);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_24BD3C250(&__p, *(a1 + 152), *(a1 + 160), (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (v7)
  {
    v15 = 0;
    for (j = 0; j != v7; ++j)
    {
      v21 = j;
      sub_24BCD567C(a1, &v21, &v25);
      v17 = 0;
      v18 = v25;
      v19 = *a3 + v15;
      do
      {
        *(v19 + 8 * v17) = v18[v17];
        ++v17;
      }

      while (v17 != 3);
      v15 += 24;
    }
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return 1;
}

void sub_24BD320B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD320EC(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = ((*(a1 + 112) - *(a1 + 104)) >> 2);
  v7 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BC92930(a2, 3 * v6);
  sub_24BC92930(a3, 3 * v7);
  v8 = (*(a1 + 8) + 16 * *(a1 + 176));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  if (v6)
  {
    v11 = 0;
    v12 = *(v10 + 40);
    v13 = *a2;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(v13 + 8 * i) = *(v12 + 4 * i);
      }

      ++v11;
      v13 += 24;
      v12 += 16;
    }

    while (v11 != v6);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_24BC9A554(&v25, 3uLL);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_24BD3C250(&__p, *(a1 + 152), *(a1 + 160), (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (v7)
  {
    v15 = 0;
    for (j = 0; j != v7; ++j)
    {
      v21 = j;
      sub_24BCD567C(a1, &v21, &v25);
      v17 = 0;
      v18 = v25;
      v19 = *a3 + v15;
      do
      {
        *(v19 + 8 * v17) = v18[v17];
        ++v17;
      }

      while (v17 != 3);
      v15 += 24;
    }
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return 1;
}

void sub_24BD32278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD322B0(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (sub_24BD308D4(a1, &v7, &__p))
  {
    sub_24BCD4998(a2, &v7, &__p);
  }

  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return 0;
}

void sub_24BD32338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD32364(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 & 1) != 0 || (a3[1] & 1) != 0 || (a3[2])
  {
    memset(v4, 0, sizeof(v4));
    v5 = v6;
    memset(v6, 0, sizeof(v6));
    v7 = 1;
    sub_24BD324D4(a1, v4);
  }

  return sub_24BD322B0(a1, a2);
}

void sub_24BD324A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BD3C054(&a16);
  _Unwind_Resume(a1);
}

void sub_24BD324D4(__int128 *a1, uint64_t a2)
{
  v58[72] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  sub_24BCB0EF0(v58);
  sub_24BD33A30(a2);
  if ((*(&v58[4] + *(v58[0] - 24)) & 5) == 0)
  {
    v37 = 0;
    v38 = 0;
    memset(&v35, 0, sizeof(v35));
    v36 = 0;
    v33 = 0;
    memset(&__str, 0, sizeof(__str));
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v19 = 0;
    v20 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v57 = -1;
    *&v5 = -1;
    *(&v5 + 1) = -1;
    v55 = v5;
    v56 = v5;
    __dst = v5;
    __dst_16 = v5;
    v14 = 3;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    memset(v45, 0, sizeof(v45));
    v44 = -1;
    v42 = v5;
    v43 = v5;
    v40 = v5;
    v41 = v5;
    v13 = 0;
    v39 = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    *&__dst_16 = *(a1 + 2);
  }

  v7 = std::string::insert(&__dst, 0, "Unable to open OBJ file ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  *&v45[16] = *(&v7->__r_.__value_.__l + 2);
  *v45 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(v45, "!");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v12 = v9->__r_.__value_.__r.__words[2];
  *&v11[0].__locale_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x24C254100](exception, v11);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD336A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v75 + 24));
  }

  sub_24BD31A68(&__p);
  sub_24BD33C00(&STACK[0x2C0]);
  v77 = 0;
  while (1)
  {
    if (*(&STACK[0x330] + v77 + 143) < 0)
    {
      operator delete(*(&STACK[0x330] + v77 + 120));
    }

    v77 -= 24;
    if (v77 == -144)
    {
      if (a68 < 0)
      {
        operator delete(a63);
      }

      if (a72 < 0)
      {
        operator delete(a69);
      }

      if (a74 < 0)
      {
        operator delete(a73);
      }

      if (SLOBYTE(STACK[0x20F]) < 0)
      {
        operator delete(a75);
      }

      if (SLOBYTE(STACK[0x25F]) < 0)
      {
        operator delete(STACK[0x248]);
      }

      if (SLOBYTE(STACK[0x277]) < 0)
      {
        operator delete(STACK[0x260]);
      }

      if (SLOBYTE(STACK[0x28F]) < 0)
      {
        operator delete(STACK[0x278]);
      }

      sub_24BC9E4D8(&STACK[0x408]);
      _Unwind_Resume(a1);
    }
  }
}

void sub_24BD338FC(__int128 *a1)
{
  memset(v1, 0, sizeof(v1));
  v2 = v3;
  memset(v3, 0, sizeof(v3));
  v4 = 1;
  sub_24BD324D4(a1, v1);
}

void sub_24BD339F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BD3C054(&a16);
  _Unwind_Resume(a1);
}

void sub_24BD33A30(uint64_t a1)
{
  *(a1 + 8) = *a1;
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 176) = *(a1 + 168);
  *(a1 + 200) = *(a1 + 192);
  sub_24BC8DC58((a1 + 216));
  sub_24BD27898(a1 + 240, *(a1 + 248));
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = a1 + 248;
  if (*(a1 + 287) < 0)
  {
    **(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  else
  {
    *(a1 + 264) = 0;
    *(a1 + 287) = 0;
  }
}

uint64_t sub_24BD33AD0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_24BD33B24(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_24BC8E01C();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_24BC92280(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_24BD33C00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL sub_24BD33C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6)
{
  v82 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v78 = 0uLL;
    v77 = 0uLL;
    v76 = 0uLL;
    v75 = 0uLL;
    v74 = 0uLL;
    v73 = 0uLL;
    sub_24BD338FC(a1);
  }

  memset(v81, 0, 32);
  memset(v80, 0, sizeof(v80));
  memset(v79, 0, sizeof(v79));
  v11 = sub_24BD32364(a1, a2, a4);
  sub_24BC9F10C(v81);
  sub_24BC9F08C(v80);
  sub_24BC9F00C(v79);
  if ((v11 & 1) == 0)
  {
    if (*(a6 + 56))
    {
      v12 = sub_24BD6A604(0x12Fu);
      v14 = v13;
      sub_24BC836D4(&__dst, "unknown failure in obj loading");
      sub_24BC98654(a6 + 32, v12, v14, &__dst);
      goto LABEL_77;
    }

LABEL_79:
    v35 = 0;
    goto LABEL_80;
  }

  v66 = -1;
  if (*(a4 + 2) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_24BC836D4(&v65, off_27F078FF0[0]);
    v15 = sub_24BD265CC(a2, &v66, &v65.__pn_.__r_.__value_.__l.__data_);
    v16 = v15;
    if (SHIBYTE(v65.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__pn_.__r_.__value_.__l.__data_);
      if (v16)
      {
LABEL_12:
        v17 = (*(a2 + 80) + 16 * v66);
        v19 = *v17;
        v18 = v17[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v18);
        }

        v20 = *(v19 + 40);
        sub_24BD25314(&__dst, &v64);
        sub_24BCCA6F0(&__p, v20);
        sub_24BCBBCB8(&__p, &v64, &v65);
        std::__fs::filesystem::__status(&v65, 0);
        v21 = v68;
        if (SHIBYTE(v65.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__pn_.__r_.__value_.__l.__data_);
        }

        if (v21 == 255 || !v21)
        {
          sub_24BD25030(&__dst, &v64);
          if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_24BC8DE9C(&v65, v64.__pn_.__r_.__value_.__l.__data_, v64.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v65 = v64;
          }

          v22 = std::string::append(&v65.__pn_, ".mtl");
          v23 = v22->__r_.__value_.__r.__words[0];
          __p.__r_.__value_.__r.__words[0] = v22->__r_.__value_.__l.__size_;
          *(__p.__r_.__value_.__r.__words + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
          v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v25 = (*(a2 + 80) + 16 * v66);
          v27 = *v25;
          v26 = v25[1];
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v26);
          }

          v28 = *(v27 + 40);
          if (*(v28 + 23) < 0)
          {
            operator delete(*v28);
          }

          *v28 = v23;
          *(v28 + 8) = __p.__r_.__value_.__r.__words[0];
          *(v28 + 15) = *(__p.__r_.__value_.__r.__words + 7);
          *(v28 + 23) = v24;
          if (SHIBYTE(v65.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__pn_.__r_.__value_.__l.__data_);
          }
        }

        v29 = (*(a2 + 80) + 16 * v66);
        v31 = *v29;
        v30 = v29[1];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v30);
        }

        v32 = *(v31 + 40);
        sub_24BD25314(&__dst, &v64);
        sub_24BCCA6F0(&__p, v32);
        sub_24BCBBCB8(&__p, &v64, &v65);
        v33 = *(a4 + 4);
        sub_24BCA1524(v69, a6);
        sub_24BCA2D38(v70, a6 + 32);
        sub_24BCA2DD0(v71, a6 + 64);
        v34 = sub_24BD345A0(&v65, a3, v33, v69);
        sub_24BC9F10C(v71);
        sub_24BC9F08C(v70);
        sub_24BC9F00C(v69);
        if (SHIBYTE(v65.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
          if (!v34)
          {
            goto LABEL_79;
          }
        }

        else if (!v34)
        {
          goto LABEL_79;
        }

        goto LABEL_47;
      }
    }

    else if (v15)
    {
      goto LABEL_12;
    }

    sub_24BC836D4(&v65, off_27F078FF0[0]);
    sub_24BD2CC04(a2);
  }

LABEL_47:
  LODWORD(v65.__pn_.__r_.__value_.__l.__data_) = -1;
  sub_24BC836D4(&__dst, off_27F078FE8[0]);
  sub_24BD265CC(a2, &v65, &__dst.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (LODWORD(v65.__pn_.__r_.__value_.__l.__data_) == -1)
  {
    if (*(a6 + 56))
    {
      v56 = sub_24BD6A604(0x12Eu);
      v58 = v57;
      sub_24BC836D4(&__dst, "obj loading failed with invalid mesh attributes");
      sub_24BC98654(a6 + 32, v56, v58, &__dst);
LABEL_77:
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }

      goto LABEL_79;
    }

    goto LABEL_79;
  }

  LODWORD(v64.__pn_.__r_.__value_.__l.__data_) = -1;
  sub_24BC836D4(&__dst, off_27F078FF8);
  sub_24BD26644(a2, &v64, &__dst.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v35 = LODWORD(v64.__pn_.__r_.__value_.__l.__data_) != 0xFFFFFFFFLL;
  if (LODWORD(v64.__pn_.__r_.__value_.__l.__data_) == -1)
  {
    if (*(a6 + 56))
    {
      v61 = sub_24BD6A604(0x12Eu);
      v63 = v62;
      sub_24BC836D4(&__dst, "obj loading failed with invalid mesh attributes");
      sub_24BC98654(a6 + 32, v61, v63, &__dst);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v36 = (*(a2 + 80) + 16 * LODWORD(v64.__pn_.__r_.__value_.__l.__data_));
    v38 = *v36;
    v37 = v36[1];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v37);
    }

    v39 = *(v38 + 40);
    if (!*(v39 + 16) && a3[1] != *a3)
    {
      v40 = (*(a2 + 80) + 16 * LODWORD(v65.__pn_.__r_.__value_.__l.__data_));
      v42 = *v40;
      v41 = v40[1];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v41);
      }

      if ((*(*v42 + 16))(v42))
      {
        v44 = *a3;
        v43 = a3[1];
        v45 = (*(a2 + 80) + 16 * LODWORD(v65.__pn_.__r_.__value_.__l.__data_));
        v47 = *v45;
        v46 = v45[1];
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v46);
        }

        v48 = (*(*v47 + 16))(v47);
        v49 = a3[6];
        if (v49 != a3 + 7)
        {
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v44) >> 4);
          if (v48 < v50)
          {
            LOWORD(v50) = v48;
          }

          v51 = v50;
          do
          {
            if (v51 > *(v49 + 28))
            {
              __dst.__pn_.__r_.__value_.__r.__words[0] = (v49 + 7);
              v52 = sub_24BD303B8(v39, v49 + 28);
              std::string::operator=((v52 + 5), (v49 + 4));
            }

            v53 = v49[1];
            if (v53)
            {
              do
              {
                v54 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = v49[2];
                v55 = *v54 == v49;
                v49 = v54;
              }

              while (!v55);
            }

            v49 = v54;
          }

          while (v54 != a3 + 7);
        }
      }
    }
  }

LABEL_80:
  v59 = *MEMORY[0x277D85DE8];
  return v35;
}

void sub_24BD34460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD345A0(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v86[19] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid image loading mode: UNKNOWN");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  sub_24BCB0EF0(v84);
  if ((v85[*(v84[0] - 24) + 16] & 5) != 0)
  {
    if (*(a4 + 56))
    {
      v9 = sub_24BD6A604(0x12Du);
      v11 = v10;
      sub_24BC836D4(v70, "Load mtl file failed to open file stream");
      sub_24BC98654(a4 + 32, v9, v11, v70);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70[0]);
      }
    }

    v12 = 0;
    goto LABEL_170;
  }

  sub_24BD36748(a2);
  v56 = a4;
  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  memset(&v82, 0, sizeof(v82));
  v80 = 0;
  v81 = 0;
  v77 = 0uLL;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v57 = *(MEMORY[0x277D82820] + 24);
  v58 = *MEMORY[0x277D82820];
  while (1)
  {
    std::ios_base::getloc((v84 + *(v84[0] - 24)));
    v13 = std::locale::use_facet(&v64, MEMORY[0x277D82680]);
    v14 = (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v64);
    v15 = sub_24BD3BD8C(v84, &v82, v14);
    v12 = (*(v15 + *(*v15 - 24) + 32) & 5) != 0;
    if ((*(v15 + *(*v15 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_24BD31178(v70, &v82, 8);
    v68 = 0;
    v69 = 0uLL;
    sub_24BD312FC(v70, &v68);
    v17 = v79;
    v16 = v80;
    while (v16 != v17)
    {
      v18 = *(v16 - 1);
      v16 -= 3;
      if (v18 < 0)
      {
        operator delete(*v16);
      }
    }

    v80 = v17;
    while (1)
    {
      v19 = sub_24BD312FC(v70, &v77);
      if ((*(v19 + *(*v19 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_24BC8DCA8(&v79, &v77);
    }

    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
      if (HIBYTE(v69) > 7u)
      {
        if (HIBYTE(v69) == 8)
        {
          if (v68 != 0x706D75625F70616DLL)
          {
            goto LABEL_86;
          }

LABEL_88:
          sub_24BD25314(&__dst, v61);
          sub_24BCCA6F0(&__p, v80 - 1);
          sub_24BCBBCB8(&__p, v61, &v64);
          v59 = 2;
          v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
          goto LABEL_137;
        }

        if (HIBYTE(v69) != 13)
        {
          if (HIBYTE(v69) != 22)
          {
            goto LABEL_86;
          }

          v20 = v68 == 0x676E61745F70616DLL && v69 == 0x6563617053746E65;
          if (!v20 || *(&v69 + 6) != 0x6C616D726F4E6563)
          {
            goto LABEL_86;
          }

          goto LABEL_88;
        }

        goto LABEL_81;
      }

      if (HIBYTE(v69) == 4)
      {
        if (v68 == 1836216174 || v68 == 1886221666)
        {
          goto LABEL_88;
        }

LABEL_78:
        if (HIBYTE(v69) == 4)
        {
          if (v68 != 1886611812)
          {
            goto LABEL_86;
          }

LABEL_135:
          sub_24BD25314(&__dst, v61);
          sub_24BCCA6F0(&__p, v80 - 1);
          sub_24BCBBCB8(&__p, v61, &v64);
          v59 = 3;
          v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
          goto LABEL_137;
        }

        if (HIBYTE(v69) != 6)
        {
          if (HIBYTE(v69) != 13)
          {
            goto LABEL_86;
          }

          goto LABEL_81;
        }
      }

      else
      {
        if (HIBYTE(v69) != 6)
        {
          goto LABEL_86;
        }

        if (v68 == 1836541294 && WORD2(v68) == 27764)
        {
          goto LABEL_101;
        }

        if (v68 == 1601200493 && WORD2(v68) == 25675)
        {
LABEL_103:
          sub_24BD25314(&__dst, v61);
          sub_24BCCA6F0(&__p, v80 - 1);
          sub_24BCBBCB8(&__p, v61, &v64);
          v59 = 1;
          v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
          goto LABEL_137;
        }
      }

      if (v68 != 1601200493 || WORD2(v68) != 28513)
      {
        goto LABEL_123;
      }

      goto LABEL_136;
    }

    if (v69 == 4)
    {
      if (*v68 == 1836216174 || *v68 == 1886221666)
      {
        goto LABEL_88;
      }
    }

    else if (v69 == 6)
    {
      if (*v68 == 1836541294 && *(v68 + 2) == 27764)
      {
LABEL_101:
        v35 = v79;
        if (*(v79 + 23) < 0)
        {
          sub_24BC8DE9C(&v63, *v79, *(v79 + 1));
        }

        else
        {
          v36 = *v79;
          v63.__pn_.__r_.__value_.__r.__words[2] = *(v79 + 2);
          *&v63.__pn_.__r_.__value_.__l.__data_ = v36;
        }

        if (SHIBYTE(v63.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_24BC8DE9C(&v64, v63.__pn_.__r_.__value_.__l.__data_, v63.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          v64 = v63;
        }

        v66 = 0;
        v67 = 0;
        v65 = &v66;
        v39 = a2[1];
        if (v39 >= a2[2])
        {
          v44 = sub_24BD3CF14(a2, &v64);
        }

        else
        {
          v40 = *&v64.__pn_.__r_.__value_.__l.__data_;
          *(v39 + 16) = *(&v64.__pn_.__r_.__value_.__l + 2);
          *v39 = v40;
          memset(&v64, 0, sizeof(v64));
          *(v39 + 24) = v65;
          v41 = v66;
          *(v39 + 32) = v66;
          v42 = v39 + 32;
          v43 = v67;
          *(v39 + 40) = v67;
          if (v43)
          {
            v41[2] = v42;
            v65 = &v66;
            v66 = 0;
            v67 = 0;
          }

          else
          {
            *(v39 + 24) = v42;
          }

          v44 = v39 + 48;
        }

        a2[1] = v44;
        sub_24BCC8A84(&v65, v66);
        if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__pn_.__r_.__value_.__l.__data_);
        }

        v48 = *a2;
        v49 = a2[1];
        v64.__pn_.__r_.__value_.__r.__words[0] = v35;
        *(sub_24BD3D084((a2 + 6), v35) + 56) = -1 - 21845 * ((v49 - v48) >> 4);
        goto LABEL_144;
      }

      if (*v68 == 1601200493 && *(v68 + 2) == 25675)
      {
        goto LABEL_103;
      }
    }

    v26 = v69;
    if (v69 == 8)
    {
      if (*v68 == 0x706D75625F70616DLL)
      {
        goto LABEL_88;
      }

      if ((HIBYTE(v69) & 0x80) == 0)
      {
        goto LABEL_78;
      }

      v26 = v69;
    }

    if (v26 == 22)
    {
      if (*v68 == 0x676E61745F70616DLL && *(v68 + 1) == 0x6563617053746E65 && *(v68 + 14) == 0x6C616D726F4E6563)
      {
        goto LABEL_88;
      }

      if ((HIBYTE(v69) & 0x80) == 0)
      {
        goto LABEL_78;
      }
    }

    if (v69 == 4)
    {
      if (*v68 == 1886611812)
      {
        goto LABEL_135;
      }

      if ((HIBYTE(v69) & 0x80) == 0)
      {
        goto LABEL_86;
      }
    }

    if (v69 != 6)
    {
      goto LABEL_104;
    }

    if (*v68 != 1601200493 || *(v68 + 2) != 28513)
    {
      if ((HIBYTE(v69) & 0x80) != 0)
      {
LABEL_104:
        v37 = v69;
        if (v69 == 6)
        {
          if (*v68 == 1601200493 && *(v68 + 2) == 29264)
          {
            goto LABEL_130;
          }

          v37 = v69;
        }

        if (v37 != 13)
        {
          goto LABEL_86;
        }

        v29 = v68;
      }

      else
      {
        if (HIBYTE(v69) != 13)
        {
          if (HIBYTE(v69) != 6)
          {
            goto LABEL_86;
          }

LABEL_123:
          if (v68 != 1601200493 || WORD2(v68) != 29264)
          {
LABEL_86:
            if (sub_24BD315F0(&v68, "map_metallic"))
            {
              sub_24BD25314(&__dst, v61);
              sub_24BCCA6F0(&__p, v80 - 1);
              sub_24BCBBCB8(&__p, v61, &v64);
              v59 = 6;
              v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
            }

            else
            {
              if (!sub_24BD315F0(&v68, "map_onorm"))
              {
                goto LABEL_144;
              }

              sub_24BD25314(&__dst, v61);
              sub_24BCCA6F0(&__p, v80 - 1);
              sub_24BCBBCB8(&__p, v61, &v64);
              v59 = 7;
              v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
            }

            goto LABEL_137;
          }

LABEL_130:
          sub_24BD25314(&__dst, v61);
          sub_24BCCA6F0(&__p, v80 - 1);
          sub_24BCBBCB8(&__p, v61, &v64);
          v59 = 5;
          v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
          goto LABEL_137;
        }

LABEL_81:
        v29 = &v68;
      }

      v30 = *v29;
      v31 = *(v29 + 5);
      if (v30 != 0x67756F725F70616DLL || v31 != 0x7373656E6867756FLL)
      {
        goto LABEL_86;
      }

      goto LABEL_130;
    }

LABEL_136:
    sub_24BD25314(&__dst, v61);
    sub_24BCCA6F0(&__p, v80 - 1);
    sub_24BCBBCB8(&__p, v61, &v64);
    v59 = 4;
    v33 = sub_24BD367D4(a2, &v64, &v59, a3, &v76);
LABEL_137:
    v47 = v33;
    if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    if (!v47)
    {
      if (*(v56 + 56))
      {
        v50 = sub_24BD6A604(v76);
        v52 = v51;
        sub_24BC836D4(&v64, "Load mtl file failed");
        sub_24BC98654(v56 + 32, v50, v52, &v64);
        if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__pn_.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v69) < 0)
      {
        operator delete(v68);
      }

      v70[0] = v58;
      *(v70 + *(v58 - 3)) = v57;
      v71 = MEMORY[0x277D82878] + 16;
      if (v74 < 0)
      {
        operator delete(v73);
      }

      v71 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v72);
      std::istream::~istream();
      MEMORY[0x24C2547D0](v75);
      break;
    }

LABEL_144:
    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }

    v70[0] = v58;
    *(v70 + *(v58 - 3)) = v57;
    v71 = MEMORY[0x277D82878] + 16;
    if (v74 < 0)
    {
      operator delete(v73);
    }

    v71 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v72);
    std::istream::~istream();
    MEMORY[0x24C2547D0](v75);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v70[0] = &v79;
  sub_24BC955F4(v70);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_170:
  v84[0] = *MEMORY[0x277D82808];
  *(v84 + *(v84[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v85);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v86);
  v53 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24BD35394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(*v72);
  }

  sub_24BD31A68(&a41);
  if (a72 < 0)
  {
    operator delete(*(v72 + 304));
  }

  *(v72 + 24) = &STACK[0x200];
  sub_24BC955F4(&a41);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(*(v72 + 352));
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  sub_24BC9E4D8(&STACK[0x248]);
  _Unwind_Resume(a1);
}

BOOL sub_24BD35560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v13, a5);
  sub_24BCA2D38(v14, a5 + 32);
  sub_24BCA2DD0(v15, a5 + 64);
  v10 = sub_24BD33C80(a1, a2, a3, a4, 0, v13);
  sub_24BC9F10C(v15);
  sub_24BC9F08C(v14);
  sub_24BC9F00C(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_24BD35644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9ED38(va);
  _Unwind_Resume(a1);
}

BOOL sub_24BD35680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v13, a5);
  sub_24BCA2D38(v14, a5 + 32);
  sub_24BCA2DD0(v15, a5 + 64);
  v10 = sub_24BD33C80(a1, a2, a3, a4, 1, v13);
  sub_24BC9F10C(v15);
  sub_24BC9F08C(v14);
  sub_24BC9F00C(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_24BD35764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9ED38(va);
  _Unwind_Resume(a1);
}

void sub_24BD357A0(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    sub_24BCB13BC(a1, a2, (a2 + 6), a2 + 18);
  }

  sub_24BCD4998(a1, a2, a2 + 6);
}

void sub_24BD36624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD3672C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD36748(uint64_t *a1)
{
  v3 = *a1;
  for (i = a1[1]; i != v3; sub_24BCCB568(a1, i))
  {
    i -= 48;
  }

  v4 = a1[3];
  a1[1] = v3;
  for (j = a1[4]; j != v4; sub_24BCCB48C((a1 + 3), j))
  {
    j -= 48;
  }

  v7 = a1[7];
  v6 = a1 + 7;
  *(v6 - 3) = v4;
  sub_24BC900B8((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

BOOL sub_24BD367D4(uint64_t a1, std::__fs::filesystem::path *a2, int *a3, int a4, _DWORD *a5)
{
  std::__fs::filesystem::__status(a2, 0);
  v10 = v16.__r_.__value_.__s.__data_[0];
  if (v16.__r_.__value_.__s.__data_[0] == -1 || v16.__r_.__value_.__s.__data_[0] == 0)
  {
    *a5 = 300;
  }

  else
  {
    switch(a4)
    {
      case 1:
        WORD2(v16.__r_.__value_.__r.__words[0]) = 0;
        *&v16.__r_.__value_.__r.__words[1] = 0u;
        *__p = 0u;
        v18 = 0;
        sub_24BD3C17C(&v16, a2);
        LODWORD(v16.__r_.__value_.__l.__data_) = *a3;
        sub_24BCC3CB8((a1 + 24), &v16);
        break;
      case 2:
        WORD2(v16.__r_.__value_.__r.__words[0]) = 0;
        *&v16.__r_.__value_.__r.__words[1] = 0u;
        *__p = 0u;
        v18 = 0;
        sub_24BD3C17C(&v16, a2);
        operator new();
      case 3:
        sub_24BCD2190(&v16, a2, a3);
      default:
        WORD2(v16.__r_.__value_.__r.__words[0]) = 0;
        *&v16.__r_.__value_.__r.__words[1] = 0u;
        *__p = 0u;
        v18 = 0;
        LODWORD(v16.__r_.__value_.__l.__data_) = *a3;
        sub_24BCC3CB8((a1 + 24), &v16);
        break;
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v16.__r_.__value_.__r.__words[2])
    {
      sub_24BC9EC78(v16.__r_.__value_.__r.__words[2]);
    }

    v12 = *(a1 + 8) - 24;
    v13 = -21845 * ((*(a1 + 32) - *(a1 + 24)) >> 4) - 1;
    v16.__r_.__value_.__r.__words[0] = a3;
    *(sub_24BCCFB80(v12, a3) + 16) = v13;
  }

  if (v10)
  {
    v14 = v10 == 255;
  }

  else
  {
    v14 = 1;
  }

  return !v14;
}

void sub_24BD36A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC3CF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD36A64(uint64_t a1, uint64_t a2)
{
  v37[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  sub_24BCB0D30(&v35);
  v5 = &v35 + *(v35 - 24);
  if ((v5[32] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&v31, *a1, *(a1 + 8));
    }

    else
    {
      v31 = *a1;
    }

    v27 = std::string::insert(&v31, 0, "Unable to open OBJ file ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v32, "!");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v34 = v29->__r_.__value_.__r.__words[2];
    *&v33[0].__locale_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, v33);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  *(v5 + 2) = 10;
  sub_24BC95264(&v35, "#  \n", 4);
  sub_24BC95264(&v35, "#  Wavefront OBJ\n", 17);
  sub_24BC95264(&v35, "#  \n", 4);
  v6 = *(a2 + 104);
  v7 = *(a2 + 112);
  if (v6 != v7)
  {
    v8 = MEMORY[0x277D82680];
    v9 = *(a2 + 104);
    do
    {
      v10 = sub_24BC95264(&v35, "v ", 2);
      v11 = *(a2 + 104);
      v12 = (*(a2 + 8) + 16 * *(a2 + 176));
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      *&v33[0].__locale_ = *(*(v14 + 40) + 16 * ((v6 - v11) >> 2));
      sub_24BD36FE4(v10, v33);
      std::ios_base::getloc((&v35 + *(v35 - 24)));
      v15 = std::locale::use_facet(v33, v8);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(v33);
      std::ostream::put();
      std::ostream::flush();
      v9 += 4;
      v6 += 4;
    }

    while (v9 != v7);
  }

  v33[0].__locale_ = 0;
  v33[1].__locale_ = 0;
  v34 = 0;
  v17 = *(a2 + 152);
  v16 = *(a2 + 160);
  sub_24BC9A554(v33, 3uLL);
  v18 = (v16 - v17) >> 2;
  if (v18)
  {
    v19 = 0;
    v20 = MEMORY[0x277D82680];
    do
    {
      sub_24BC95264(&v35, "f ", 2);
      LODWORD(v32.__r_.__value_.__l.__data_) = v19;
      sub_24BCD567C(a2, &v32, v33);
      for (i = 0; i != 12; i += 4)
      {
        v22 = MEMORY[0x24C2543D0](&v35, (*(v33[0].__locale_ + i) + 1));
        sub_24BC95264(v22, " ", 1);
      }

      std::ios_base::getloc((&v35 + *(v35 - 24)));
      v23 = std::locale::use_facet(&v32, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
      ++v19;
    }

    while (v19 != v18);
  }

  if (v33[0].__locale_)
  {
    v33[1] = v33[0];
    operator delete(v33[0].__locale_);
  }

  v35 = *MEMORY[0x277D82810];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](&v36);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v37);
  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BD36F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16.__locale_);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v30 & 1) == 0)
    {
LABEL_10:
      sub_24BC9E284(&a29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

uint64_t sub_24BD36FE4(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = std::ostream::operator<<();
  sub_24BC95264(v4, " ", 1);
  v5 = a2[1];
  v6 = std::ostream::operator<<();
  sub_24BC95264(v6, " ", 1);
  v7 = a2[2];

  return std::ostream::operator<<();
}

uint64_t sub_24BD37048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v170[19] = *MEMORY[0x277D85DE8];
  if ((*a3 & 1) == 0 && (*(a3 + 8) & 1) == 0 && (*(a3 + 9) & 1) == 0)
  {
    sub_24BD36A64(a1, a2);
    goto LABEL_166;
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  sub_24BCB0D30(&v168);
  v6 = &v168 + *(v168 - 24);
  if ((v6[32] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&v165, *a1, *(a1 + 8));
    }

    else
    {
      v165 = *a1;
    }

    v153 = std::string::insert(&v165.__pn_, 0, "Unable to open OBJ file ");
    v154 = *&v153->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v154;
    v153->__r_.__value_.__l.__size_ = 0;
    v153->__r_.__value_.__r.__words[2] = 0;
    v153->__r_.__value_.__r.__words[0] = 0;
    v155 = std::string::append(&__p, "!");
    v156 = *&v155->__r_.__value_.__l.__data_;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
    *&__dst.__pn_.__r_.__value_.__l.__data_ = v156;
    v155->__r_.__value_.__l.__size_ = 0;
    v155->__r_.__value_.__r.__words[2] = 0;
    v155->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &__dst);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  *(v6 + 2) = 10;
  sub_24BC95264(&v168, "#  \n", 4);
  sub_24BC95264(&v168, "#  Wavefront OBJ\n", 17);
  sub_24BC95264(&v168, "#  \n", 4);
  if (*(a3 + 9) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_24BD25210(&__dst, &v165);
    sub_24BCCEE48(&__replacement.__pn_, ".mtl");
    v7 = std::__fs::filesystem::path::replace_extension(&v165, &__replacement);
    if (SHIBYTE(v7->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&__p, v7->__pn_.__r_.__value_.__l.__data_, v7->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = *&v7->__pn_.__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v7->__pn_.__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v8;
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v165.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v165.__pn_.__r_.__value_.__l.__data_);
    }

    v9 = sub_24BC95264(&v168, "mtllib ", 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v12 = sub_24BC95264(v9, p_p, size);
    sub_24BC95264(v12, "\n\n", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 8) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078F90[0]);
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v13 = sub_24BCB6470((a2 + 8), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    v14 = v13 != -1;
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0xFFFFFFFFLL;
  }

  v159 = v15;
  v16 = sub_24BC95264(&v168, "# ", 2);
  v17 = MEMORY[0x24C2543E0](v16, (*(a2 + 112) - *(a2 + 104)) >> 2);
  sub_24BC95264(v17, " vertices\n", 10);
  v18 = *(a2 + 104);
  v19 = *(a2 + 112);
  if (v18 != v19)
  {
    v20 = MEMORY[0x277D82680];
    v21 = *(a2 + 104);
    do
    {
      v22 = *(a2 + 104);
      v23 = sub_24BC95264(&v168, "v ", 2);
      v24 = (*(a2 + 8) + 16 * *(a2 + 176));
      v26 = *v24;
      v25 = v24[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v25);
      }

      v27 = v18 - v22;
      *&__dst.__pn_.__r_.__value_.__l.__data_ = *(*(v26 + 40) + 16 * (v27 >> 2));
      sub_24BD36FE4(v23, &__dst);
      if (v14)
      {
        v28 = sub_24BC95264(&v168, " ", 1);
        v29 = (*(a2 + 8) + 16 * v159);
        v31 = *v29;
        v30 = v29[1];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v30);
        }

        sub_24BD36FE4(v28, (*(v31 + 40) + 16 * (v27 >> 2)));
      }

      std::ios_base::getloc((&v168 + *(v168 - 24)));
      v32 = std::locale::use_facet(&__dst, v20);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
      v21 += 4;
      v18 += 4;
    }

    while (v21 != v19);
  }

  std::ios_base::getloc((&v168 + *(v168 - 24)));
  v33 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (*a3 != 1)
  {
    goto LABEL_70;
  }

  v34 = *(a3 + 4);
  if (v34 == 1)
  {
    sub_24BC836D4(&__dst, off_27F078F98[0]);
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v35 = sub_24BCB6470((a2 + 8), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v35 != -1)
    {
      v36 = *(a2 + 8) + 16 * v35;
      v38 = *v36;
      v37 = *(v36 + 8);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v37);
      }

      v39 = 0;
      v40 = MEMORY[0x277D82680];
      while ((*(*v38 + 16))(v38) > v39)
      {
        v41 = sub_24BC95264(&v168, "vn ", 3);
        v42 = sub_24BD36FE4(v41, (v38[5] + 16 * v39));
        std::ios_base::getloc((v42 + *(*v42 - 24)));
        v43 = std::locale::use_facet(&__dst, v40);
        (v43->__vftable[2].~facet_0)(v43, 10);
        std::locale::~locale(&__dst);
        std::ostream::put();
        std::ostream::flush();
        ++v39;
      }

LABEL_52:
      std::ios_base::getloc((&v168 + *(v168 - 24)));
      v44 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v44->__vftable[2].~facet_0)(v44, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
LABEL_70:
      v55 = -1;
      goto LABEL_71;
    }

    v34 = *(a3 + 4);
  }

  if (v34 == 2)
  {
    sub_24BC836D4(&__dst, off_27F078FD0[0]);
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v45 = sub_24BCB6470((a2 + 56), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v45 != -1)
    {
      v46 = *(a2 + 56) + 16 * v45;
      v48 = *v46;
      v47 = *(v46 + 8);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v47);
      }

      v49 = 0;
      v50 = MEMORY[0x277D82680];
      while ((*(*v48 + 16))(v48) > v49)
      {
        v51 = sub_24BC95264(&v168, "vn ", 3);
        v52 = sub_24BD36FE4(v51, (v48[5] + 16 * v49));
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v53 = std::locale::use_facet(&__dst, v50);
        (v53->__vftable[2].~facet_0)(v53, 10);
        std::locale::~locale(&__dst);
        std::ostream::put();
        std::ostream::flush();
        ++v49;
      }

      goto LABEL_52;
    }

    v34 = *(a3 + 4);
  }

  if (v34 != 3)
  {
    goto LABEL_70;
  }

  sub_24BC836D4(&__dst, off_27F078FE0[0]);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  v54 = sub_24BCB6470((a2 + 80), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
  if (v54 == -1)
  {
    v56 = 0;
    v55 = -1;
  }

  else
  {
    sub_24BC836D4(&__p, off_27F078FC0[0]);
    LODWORD(v165.__pn_.__r_.__value_.__r.__words[1]) = 0;
    v165.__pn_.__r_.__value_.__r.__words[0] = 0;
    v55 = sub_24BCCAA0C((a2 + 56), &v165, &__p.__r_.__value_.__l.__data_);
    v56 = v55 != -1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (v56)
  {
    v144 = *(a2 + 80) + 16 * v54;
    v146 = *v144;
    v145 = *(v144 + 8);
    if (v145)
    {
      atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v145);
    }

    v147 = 0;
    v148 = MEMORY[0x277D82680];
    while ((*(*v146 + 16))(v146) > v147)
    {
      v149 = sub_24BC95264(&v168, "vn ", 3);
      v150 = sub_24BD36FE4(v149, (v146[5] + 16 * v147));
      std::ios_base::getloc((v150 + *(*v150 - 24)));
      v151 = std::locale::use_facet(&__dst, v148);
      (v151->__vftable[2].~facet_0)(v151, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
      ++v147;
    }
  }

LABEL_71:
  v160 = v55;
  if (*(a3 + 9) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078F78[0]);
    __p.__r_.__value_.__r.__words[0] = 0;
    v57 = sub_24BCB74D4((a2 + 80), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v57 != -1)
    {
      v58 = *(a2 + 80) + 16 * v57;
      v60 = *v58;
      v59 = *(v58 + 8);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v59);
      }

      v61 = (*(*v60 + 16))(v60);
      v62 = sub_24BC95264(&v168, "# ", 2);
      v63 = MEMORY[0x24C2543D0](v62, v61);
      sub_24BC95264(v63, " texcoords\n", 11);
      if (v61)
      {
        v64 = 0;
        v65 = MEMORY[0x277D82680];
        do
        {
          v66 = sub_24BC95264(&v168, "vt ", 3);
          v67 = sub_24BD38770(v66, (v60[5] + v64));
          std::ios_base::getloc((v67 + *(*v67 - 24)));
          v68 = std::locale::use_facet(&__dst, v65);
          (v68->__vftable[2].~facet_0)(v68, 10);
          std::locale::~locale(&__dst);
          std::ostream::put();
          std::ostream::flush();
          v64 += 8;
        }

        while (8 * v61 != v64);
      }

      std::ios_base::getloc((&v168 + *(v168 - 24)));
      v69 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v69->__vftable[2].~facet_0)(v69, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v70 = -1;
  v163 = -1;
  LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = -1;
  if (*(a3 + 9) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078FE8[0]);
    if (sub_24BD265CC(a2, &__replacement, &__dst.__pn_.__r_.__value_.__l.__data_))
    {
      sub_24BC836D4(&__p, off_27F078FC8[0]);
      LOWORD(v165.__pn_.__r_.__value_.__l.__data_) = 0;
      v70 = sub_24BD274E4((a2 + 56), &v165, &__p.__r_.__value_.__l.__data_);
      v71 = v70 != -1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v71 = 0;
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      if (v71)
      {
        goto LABEL_88;
      }
    }

    else if (v71)
    {
LABEL_88:
      v72 = (*(a2 + 80) + 16 * LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_));
      v74 = *v72;
      v73 = v72[1];
      if (v73)
      {
        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v73);
      }

      v75 = (*(*v74 + 16))(v74);
      v76 = sub_24BC95264(&v168, "# ", 2);
      v77 = MEMORY[0x24C254400](v76, v75);
      sub_24BC95264(v77, " groups\n", 8);
      sub_24BC836D4(&__dst, off_27F078FF8);
      sub_24BD26644(a2, &v163, &__dst.__pn_.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }

      v158 = 1;
      goto LABEL_95;
    }
  }

  v158 = 0;
LABEL_95:
  if (*(a3 + 9) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078FB8[0]);
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    v78 = sub_24BCCAA0C((a2 + 56), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    v79 = v78 != -1;
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    v80 = v78;
  }

  else
  {
    v79 = 0;
    v80 = 0xFFFFFFFFLL;
  }

  v157 = v80;
  v82 = *(a2 + 152);
  v81 = *(a2 + 160);
  v83 = sub_24BC95264(&v168, "# ", 2);
  v84 = v81 - v82;
  v85 = MEMORY[0x24C2543D0](v83, v84 >> 2);
  sub_24BC95264(v85, " faces (triangles)\n", 19);
  sub_24BCB2008(&__dst, 3uLL);
  LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  v162 = 0;
  if ((v84 >> 2))
  {
    v86 = 0;
    v87 = 0;
    do
    {
      if ((v158 & *(a3 + 9)) == 1)
      {
        v88 = v162;
        v89 = (*(a2 + 56) + 16 * v70);
        v91 = *v89;
        v90 = v89[1];
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v90);
        }

        if (v88 == *(*(v91 + 40) + 2 * v87))
        {
          v92 = v162;
          v93 = (*(a2 + 80) + 16 * LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_));
          v95 = *v93;
          v94 = v93[1];
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v94);
          }

          v96 = *(v95 + 40);
          v97 = sub_24BC95264(&v168, "\ng ", 3);
          v98 = v96 + 24 * v92;
          v99 = *(v98 + 23);
          if (v99 >= 0)
          {
            v100 = v96 + 24 * v92;
          }

          else
          {
            v100 = *v98;
          }

          if (v99 >= 0)
          {
            v101 = *(v98 + 23);
          }

          else
          {
            v101 = *(v98 + 8);
          }

          v102 = sub_24BC95264(v97, v100, v101);
          std::ios_base::getloc((v102 + *(*v102 - 24)));
          v103 = std::locale::use_facet(&v165, MEMORY[0x277D82680]);
          (v103->__vftable[2].~facet_0)(v103, 10);
          std::locale::~locale(&v165);
          std::ostream::put();
          std::ostream::flush();
          if (v163 != -1)
          {
            v104 = (*(a2 + 80) + 16 * v163);
            v106 = *v104;
            v105 = v104[1];
            if (v105)
            {
              atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v105);
            }

            v107 = *(v106 + 40);
            v110 = *(v107 + 8);
            v108 = v107 + 8;
            v109 = v110;
            if (!v110)
            {
              goto LABEL_125;
            }

            v111 = v108;
            do
            {
              v112 = *(v109 + 32);
              v113 = v112 >= v162;
              v114 = v112 < v162;
              if (v113)
              {
                v111 = v109;
              }

              v109 = *(v109 + 8 * v114);
            }

            while (v109);
            if (v111 == v108 || v162 < *(v111 + 32))
            {
LABEL_125:
              v111 = v108;
            }

            v115 = (*(a2 + 80) + 16 * v163);
            v117 = *v115;
            v116 = v115[1];
            if (v116)
            {
              atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v116);
            }

            if (v111 != *(v117 + 40) + 8)
            {
              v118 = (*(a2 + 80) + 16 * v163);
              v120 = *v118;
              v119 = v118[1];
              if (v119)
              {
                atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v119);
              }

              v121 = sub_24BD266BC(*(v120 + 40), &v162);
              v122 = sub_24BC95264(&v168, "usemtl ", 7);
              v123 = *(v121 + 23);
              if (v123 >= 0)
              {
                v124 = v121;
              }

              else
              {
                v124 = *v121;
              }

              if (v123 >= 0)
              {
                v125 = *(v121 + 23);
              }

              else
              {
                v125 = v121[1];
              }

              v126 = sub_24BC95264(v122, v124, v125);
              std::ios_base::getloc((v126 + *(*v126 - 24)));
              v127 = std::locale::use_facet(&v165, MEMORY[0x277D82680]);
              (v127->__vftable[2].~facet_0)(v127, 10);
              std::locale::~locale(&v165);
              std::ostream::put();
              std::ostream::flush();
            }
          }

          ++v162;
        }
      }

      sub_24BC95264(&v168, "f ", 2);
      LODWORD(v165.__pn_.__r_.__value_.__l.__data_) = v87;
      sub_24BCD567C(a2, &v165, &__dst);
      if (v79)
      {
        v128 = (*(a2 + 56) + 16 * v157);
        v130 = *v128;
        v129 = v128[1];
        if (v129)
        {
          atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v129);
        }

        v131 = *(v130 + 40) + 12 * v87;
        __p.__r_.__value_.__r.__words[0] = *v131;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v131 + 8);
      }

      v132 = 0;
      ++v87;
      while (1)
      {
        MEMORY[0x24C2543D0](&v168, (*(__dst.__pn_.__r_.__value_.__r.__words[0] + v132) + 1));
        if (!v79)
        {
          if (*a3 != 1)
          {
            goto LABEL_160;
          }

          v165.__pn_.__r_.__value_.__s.__data_[0] = 47;
          sub_24BC95264(&v168, &v165, 1);
LABEL_149:
          v134 = *(a3 + 4);
          switch(v134)
          {
            case 3:
              if (v160 == -1)
              {
                goto LABEL_160;
              }

              v165.__pn_.__r_.__value_.__s.__data_[0] = 47;
              v135 = sub_24BC95264(&v168, &v165, 1);
              v138 = (*(a2 + 56) + 16 * v160);
              v140 = *v138;
              v139 = v138[1];
              if (v139)
              {
                atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v139);
              }

              v136 = *(v140 + 40) + v86;
LABEL_158:
              v137 = (*(v136 + v132) + 1);
              break;
            case 2:
              v165.__pn_.__r_.__value_.__s.__data_[0] = 47;
              v135 = sub_24BC95264(&v168, &v165, 1);
              v137 = v87;
              break;
            case 1:
              v165.__pn_.__r_.__value_.__s.__data_[0] = 47;
              v135 = sub_24BC95264(&v168, &v165, 1);
              v136 = __dst.__pn_.__r_.__value_.__r.__words[0];
              goto LABEL_158;
            default:
              goto LABEL_160;
          }

          MEMORY[0x24C2543D0](v135, v137);
          goto LABEL_160;
        }

        v165.__pn_.__r_.__value_.__s.__data_[0] = 47;
        v133 = sub_24BC95264(&v168, &v165, 1);
        MEMORY[0x24C2543D0](v133, (*(&__p.__r_.__value_.__l.__data_ + v132) + 1));
        if (*a3)
        {
          goto LABEL_149;
        }

LABEL_160:
        if (v132 == 8)
        {
          break;
        }

        sub_24BC95264(&v168, " ", 1);
        v132 += 4;
      }

      std::ios_base::getloc((&v168 + *(v168 - 24)));
      v141 = std::locale::use_facet(&v165, MEMORY[0x277D82680]);
      (v141->__vftable[2].~facet_0)(v141, 10);
      std::locale::~locale(&v165);
      std::ostream::put();
      std::ostream::flush();
      v86 += 12;
    }

    while (v87 != (v84 >> 2));
  }

  if (__dst.__pn_.__r_.__value_.__r.__words[0])
  {
    __dst.__pn_.__r_.__value_.__l.__size_ = __dst.__pn_.__r_.__value_.__r.__words[0];
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v168 = *MEMORY[0x277D82810];
  *(&v168 + *(v168 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](&v169);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v170);
LABEL_166:
  v142 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BD38588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::locale a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, std::locale a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38.__locale_);
  }

  sub_24BC9E284(&a44);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD38770(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = std::ostream::operator<<();
  sub_24BC95264(v4, " ", 1);
  v5 = a2[1];

  return std::ostream::operator<<();
}

uint64_t sub_24BD387BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_24BD37048(a1, a2, a4);
  if (*(a4 + 9) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_24BCCEE48(&__replacement.__pn_, ".mtl");
    v7 = std::__fs::filesystem::path::replace_extension(&__dst, &__replacement);
    sub_24BD388B4(v7, a3, a4 + 16);
    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void sub_24BD38880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD388B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v112[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  sub_24BCB0D30(&v110);
  if ((v111[*(v110 - 24) + 24] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    v91 = std::string::insert(&__p, 0, "Unable to save MTL file ");
    v92 = *&v91->__r_.__value_.__l.__data_;
    v108.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
    *&v108.__r_.__value_.__l.__data_ = v92;
    v91->__r_.__value_.__l.__size_ = 0;
    v91->__r_.__value_.__r.__words[2] = 0;
    v91->__r_.__value_.__r.__words[0] = 0;
    v93 = std::string::append(&v108, "!");
    v94 = *&v93->__r_.__value_.__l.__data_;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
    *&__dst.__pn_.__r_.__value_.__l.__data_ = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &__dst);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  sub_24BD25030(&__dst, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&v108, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v108 = __p;
  }

  v7 = sub_24BC95264(&v110, "#  \n", 4);
  sub_24BC95264(v7, "#  Wavefront MTL\n", 17);
  sub_24BC95264(&v110, "#  \n", 4);
  sub_24BC95264(&v110, "#  \n\n", 5);
  v9 = *a2;
  v8 = a2[1];
  if (v8 != *a2)
  {
    v10 = 0;
    v11 = MEMORY[0x277D82680];
    while (1)
    {
      v12 = sub_24BC95264(&v110, "newmtl ", 7);
      v13 = v9 + 48 * v10;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      v17 = sub_24BC95264(v12, v15, v16);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&__p, v11);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&__p);
      std::ostream::put();
      std::ostream::flush();
      if (*(v13 + 40))
      {
        v19 = *(v13 + 24);
        v20 = (v13 + 32);
        if (v19 != v20)
        {
          break;
        }
      }

LABEL_111:
      sub_24BC95264(&v110, "#  ", 3);
      std::ios_base::getloc(&v111[*(v110 - 24) - 8]);
      v58 = std::locale::use_facet(&__p, v11);
      (v58->__vftable[2].~facet_0)(v58, 10);
      std::locale::~locale(&__p);
      std::ostream::put();
      std::ostream::flush();
      ++v10;
      v9 = *a2;
      v8 = a2[1];
      if (v10 >= 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 4))
      {
        goto LABEL_112;
      }
    }

    while (1)
    {
      v105 = *(v19 + 7);
      v106 = *(v19 + 16);
      memset(&__p, 0, sizeof(__p));
      if ((v105 - 1) < 0xD)
      {
        MEMORY[0x24C2541D0](&__p, off_27916C4A8[v105 - 1]);
      }

      v21 = sub_24BD251B8(a3, &v105);
      sub_24BD25150((a2[3] + 48 * v106), &v104);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v108.__r_.__value_.__l.__size_;
      }

      sub_24BC8E2D4(&v100, size + 1);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v100;
      }

      else
      {
        v23 = v100.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v108;
        }

        else
        {
          v24 = v108.__r_.__value_.__r.__words[0];
        }

        memmove(v23, v24, size);
      }

      *(&v23->__r_.__value_.__l.__data_ + size) = 95;
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v104;
      }

      else
      {
        v25 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v104.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v100, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v99, v10);
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v99;
      }

      else
      {
        v29 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v99.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v101, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = *(v21 + 31);
      if (v33 >= 0)
      {
        v34 = (v21 + 1);
      }

      else
      {
        v34 = v21[1];
      }

      if (v33 >= 0)
      {
        v35 = *(v21 + 31);
      }

      else
      {
        v35 = v21[2];
      }

      v36 = std::string::append(&v102, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v39 = __p.__r_.__value_.__l.__size_;
      }

      v40 = sub_24BC95264(&v110, p_p, v39);
      v41 = sub_24BC95264(v40, " ", 1);
      if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v103;
      }

      else
      {
        v42 = v103.__r_.__value_.__r.__words[0];
      }

      if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v103.__r_.__value_.__l.__size_;
      }

      v44 = sub_24BC95264(v41, v42, v43);
      std::ios_base::getloc((v44 + *(*v44 - 24)));
      v45 = std::locale::use_facet(&v102, v11);
      (v45->__vftable[2].~facet_0)(v45, 10);
      std::locale::~locale(&v102);
      std::ostream::put();
      std::ostream::flush();
      v46 = a2[3] + 48 * v106;
      if (*(v46 + 4) == 1)
      {
        v47 = sub_24BD251B8(a3 + 24, &v105);
        sub_24BD25314(&__dst, &v101);
        sub_24BCCA6F0(&v100, &v103);
        sub_24BCBBCB8(&v100, &v101, &v102);
        v48 = a2[3] + 48 * v106;
        v49 = *(v48 + 8);
        v50 = *(v48 + 16);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v51 = v47[3];
        if (!v51)
        {
          sub_24BCA1F3C();
        }

        (*(*v51 + 48))(v51, &v102, v49, v21);
        if (v50)
        {
          sub_24BC9EC78(v50);
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_99;
        }

        v52 = v101.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (*(v46 + 5) != 1)
        {
          goto LABEL_99;
        }

        if (*(v46 + 47) < 0)
        {
          sub_24BC8DE9C(&v102, *(v46 + 24), *(v46 + 32));
        }

        else
        {
          v53 = *(v46 + 24);
          v102.__r_.__value_.__r.__words[2] = *(v46 + 40);
          *&v102.__r_.__value_.__l.__data_ = v53;
        }

        sub_24BD25314(&__dst, &v100);
        sub_24BCCA6F0(&v99, &v103);
        sub_24BCBBCB8(&v99, &v100, &v101);
        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        v54.__data_ = &v101;
        if (sub_24BD3A44C(&v102, v54))
        {
          operator new();
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_99;
        }

        v52 = v102.__r_.__value_.__r.__words[0];
      }

      operator delete(v52);
LABEL_99:
      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v55 = v19[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v19[2];
          v57 = *v56 == v19;
          v19 = v56;
        }

        while (!v57);
      }

      v19 = v56;
      if (v56 == v20)
      {
        goto LABEL_111;
      }
    }
  }

LABEL_112:
  if (v8 != v9 && (*(a3 + 48) & 1) != 0)
  {
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4); ++i)
    {
      v60 = v9 + 48 * i;
      if (!*(v60 + 40))
      {
        goto LABEL_198;
      }

      v62 = (v60 + 32);
      v61 = *(v60 + 32);
      __val = i;
      if (!v61)
      {
        v98 = 0;
        v70 = 0;
        v71 = 0;
        v96 = 0;
        v68 = 0;
        v69 = 0;
        goto LABEL_178;
      }

      v63 = v62;
      v64 = v61;
      do
      {
        if (v64[7] >= 4)
        {
          v63 = v64;
        }

        v64 = *&v64[2 * (v64[7] < 4)];
      }

      while (v64);
      if (v63 != v62 && v63[7] <= 4)
      {
        v65 = v62;
        do
        {
          if (v61[7] >= 4)
          {
            v65 = v61;
          }

          v61 = *&v61[2 * (v61[7] < 4)];
        }

        while (v61);
        if (v65 == v62 || v65[7] >= 5)
        {
          v65 = v62;
        }

        v66 = a2[3] + 48 * *(v65 + 16);
        if (*(v66 + 4) == 1)
        {
          v68 = *(v66 + 8);
          v67 = *(v66 + 16);
          v69 = 1;
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_137;
        }

        if (*(v66 + 5) == 1)
        {
          operator new();
        }
      }

      v67 = 0;
      v68 = 0;
      v69 = 0;
LABEL_137:
      v72 = *v62;
      v96 = v67;
      if (*v62)
      {
        v73 = v62;
        v74 = *v62;
        do
        {
          if (v74[7] >= 5)
          {
            v73 = v74;
          }

          v74 = *&v74[2 * (v74[7] < 5)];
        }

        while (v74);
        if (v73 != v62 && v73[7] <= 5)
        {
          v75 = v62;
          do
          {
            if (v72[7] >= 5)
            {
              v75 = v72;
            }

            v72 = *&v72[2 * (v72[7] < 5)];
          }

          while (v72);
          if (v75 == v62 || v75[7] >= 6)
          {
            v75 = v62;
          }

          v76 = a2[3] + 48 * *(v75 + 16);
          if (*(v76 + 4) == 1)
          {
            v70 = *(v76 + 8);
            v71 = *(v76 + 16);
            v98 = 1;
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

LABEL_158:
            v77 = *v62;
            if (*v62)
            {
              v78 = v62;
              v79 = *v62;
              do
              {
                if (v79[7] >= 6)
                {
                  v78 = v79;
                }

                v79 = *&v79[2 * (v79[7] < 6)];
              }

              while (v79);
              if (v78 != v62 && v78[7] <= 6)
              {
                v80 = v62;
                do
                {
                  if (v77[7] >= 6)
                  {
                    v80 = v77;
                  }

                  v77 = *&v77[2 * (v77[7] < 6)];
                }

                while (v77);
                if (v80 == v62 || v80[7] >= 7)
                {
                  v80 = v62;
                }

                v81 = a2[3] + 48 * *(v80 + 16);
                if (*(v81 + 4) == 1)
                {
                  v83 = *(v81 + 8);
                  v82 = *(v81 + 16);
                  if (v82)
                  {
                    v95 = *(v81 + 16);
                    v84 = 1;
                    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
                    if ((v69 & 1) == 0)
                    {
                      goto LABEL_192;
                    }

                    goto LABEL_181;
                  }

                  v84 = 1;
LABEL_180:
                  if (v69)
                  {
LABEL_181:
                    v85 = *v68;
                    if ((v98 & 1) != 0 && (v86 = *v70, v70[1] < v68[1]))
                    {
                      if (v84)
                      {
LABEL_192:
                        v87 = v83[1];
                        *v83;
                      }
                    }

                    else if (v84)
                    {
                      goto LABEL_192;
                    }
                  }

                  else if (v98)
                  {
                    if (v84)
                    {
                      goto LABEL_192;
                    }
                  }

                  else if (v84)
                  {
                    goto LABEL_192;
                  }

                  operator new[]();
                }

                if (*(v81 + 5) == 1)
                {
                  operator new();
                }
              }
            }

            goto LABEL_178;
          }

          if (*(v76 + 5) == 1)
          {
            operator new();
          }
        }

        v71 = 0;
        v70 = 0;
        v98 = 0;
        goto LABEL_158;
      }

      v98 = 0;
      v70 = 0;
      v71 = 0;
LABEL_178:
      v83 = 0;
      v84 = 0;
      if (v69 & 1) != 0 || (v98)
      {
        goto LABEL_180;
      }

      i = __val;
      if (v71)
      {
        sub_24BC9EC78(v71);
      }

      if (v96)
      {
        sub_24BC9EC78(v96);
      }

LABEL_198:
      v9 = *a2;
    }
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v110 = *MEMORY[0x277D82810];
  *&v111[*(v110 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](v111);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v112);
  v88 = *MEMORY[0x277D85DE8];
  return 1;
}