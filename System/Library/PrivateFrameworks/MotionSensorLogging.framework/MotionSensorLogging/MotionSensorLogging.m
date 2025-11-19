uint64_t sub_25AAE5D30(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v13 = 0;
  if ([v2 fileExistsAtPath:v4 isDirectory:&v13])
  {
    if ((v13 & 1) == 0)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    v5 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
    v6 = v12;
    v7 = v6;
    if ((v5 & 1) == 0)
    {
      if (qword_27FA11570 != -1)
      {
        dispatch_once(&qword_27FA11570, &unk_286C1DE68);
      }

      v9 = qword_27FA11568;
      if (os_log_type_enabled(qword_27FA11568, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v15 = v4;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_25AAE5000, v9, OS_LOG_TYPE_INFO, "Unable to create directory at path: %{public}@, error, %{public}@", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  v8 = 1;
LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_25AAE5EE0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = MEMORY[0x277CBEBC0];
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v10 = [v7 fileURLWithPath:v9];
  v45[0] = 0;
  v39 = [v6 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:4 error:v45];
  v40 = v45[0];

  if (v40)
  {
    if (qword_27FA11570 != -1)
    {
      dispatch_once(&qword_27FA11570, &unk_286C1DE68);
    }

    v11 = qword_27FA11568;
    if (os_log_type_enabled(qword_27FA11568, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      *buf = 136446466;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v40;
      _os_log_impl(&dword_25AAE5000, v11, OS_LOG_TYPE_INFO, "Unable to list files at path: %{public}s, error, %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v13, v39}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v39;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v16)
    {
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v41 + 1) + 8 * i);
          v20 = [v19 pathExtension];
          v21 = [v20 compare:v14 options:1] == 0;

          if (v21)
          {
            v22 = v19;
            v23 = [v19 fileSystemRepresentation];
            v25 = *(a3 + 8);
            v24 = *(a3 + 16);
            if (v25 >= v24)
            {
              v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *a3) >> 3);
              v28 = v27 + 1;
              if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_25AAE66B8();
              }

              v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a3) >> 3);
              if (2 * v29 > v28)
              {
                v28 = 2 * v29;
              }

              if (v29 >= 0x555555555555555)
              {
                v30 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v30 = v28;
              }

              v49 = a3;
              if (v30)
              {
                sub_25AAE66D0(a3, v30);
              }

              *buf = 0;
              *&buf[8] = 24 * v27;
              *&buf[16] = 24 * v27;
              v48 = 0;
              sub_25AAE6524((24 * v27), v23);
              v26 = *&buf[16] + 24;
              v31 = *(a3 + 8) - *a3;
              v32 = *&buf[8] - v31;
              memcpy((*&buf[8] - v31), *a3, v31);
              v33 = *a3;
              *a3 = v32;
              *(a3 + 8) = v26;
              v34 = *(a3 + 16);
              *(a3 + 16) = v48;
              *&buf[16] = v33;
              v48 = v34;
              *buf = v33;
              *&buf[8] = v33;
              sub_25AAE6728(buf);
            }

            else
            {
              sub_25AAE6524(*(a3 + 8), v23);
              v26 = v25 + 24;
            }

            *(a3 + 8) = v26;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v16);
    }

    v35 = *(a3 + 8);
    v36 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v35 - *a3) >> 3));
    if (v35 == *a3)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    sub_25AAE67BC(*a3, v35, v37, 1);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_25AAE62C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  sub_25AAE7FA4(va);
  _Unwind_Resume(a1);
}

void sub_25AAE635C(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v10 = 0;
  v5 = [v2 removeItemAtPath:v4 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    if (qword_27FA11570 != -1)
    {
      dispatch_once(&qword_27FA11570, &unk_286C1DE68);
    }

    v7 = qword_27FA11568;
    if (os_log_type_enabled(qword_27FA11568, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      *buf = 136446466;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_25AAE5000, v7, OS_LOG_TYPE_INFO, "Unable to delete file %{public}s, error, %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25AAE64E0()
{
  qword_27FA11568 = os_log_create("com.apple.MotionSensorLogging", "MSL");

  return MEMORY[0x2821F96F8]();
}

_BYTE *sub_25AAE6524(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25AAE65DC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_25AAE65F4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_25AAE6650(exception, a1);
  __cxa_throw(exception, off_279922D88, MEMORY[0x277D825F0]);
}

std::logic_error *sub_25AAE6650(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_25AAE6684()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_25AAE66D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_25AAE6684();
}

uint64_t sub_25AAE6728(uint64_t a1)
{
  sub_25AAE6760(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_25AAE6760(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_25AAE67BC(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v201 = *MEMORY[0x277D85DE8];
LABEL_2:
  v7 = a2 - 3;
  v8 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
  v195 = a2;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_205;
      }

      if (v12 == 2)
      {
        v126 = sub_25AAE7F0C(v7, v10);
        if (v126 < 0)
        {
LABEL_203:
          v190 = *v10;
          v198 = *(v10 + 16);
          v197 = v190;
          v191 = *v7;
          *(v10 + 16) = v7[2];
          *v10 = v191;
          v187 = v197;
          v188 = v198;
LABEL_204:
          v7[2] = v188;
          *v7 = v187;
        }

        goto LABEL_205;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = sub_25AAE7F0C((v10 + 24), v10);
      v128 = sub_25AAE7F0C(v7, (v10 + 24));
      if (v127 < 0)
      {
        if (v128 < 0)
        {
          goto LABEL_203;
        }

        v186 = *v10;
        v198 = *(v10 + 16);
        v197 = v186;
        *v10 = *(v10 + 24);
        *(v10 + 16) = *(v10 + 40);
        *(v10 + 24) = v197;
        *(v10 + 40) = v198;
        if ((sub_25AAE7F0C(v7, (v10 + 24)) & 0x80) != 0)
        {
          v187 = *(v10 + 24);
          v197 = v187;
          v188 = *(v10 + 40);
          v198 = v188;
          v189 = v7[2];
          *(v10 + 24) = *v7;
          *(v10 + 40) = v189;
          goto LABEL_204;
        }

LABEL_205:
        v192 = *MEMORY[0x277D85DE8];
        return;
      }

      if ((v128 & 0x80000000) == 0)
      {
        goto LABEL_205;
      }

      v197 = *(v10 + 24);
      v129 = v197;
      v198 = *(v10 + 40);
      v130 = v198;
      v131 = v7[2];
      *(v10 + 24) = *v7;
      *(v10 + 40) = v131;
      v7[2] = v130;
      *v7 = v129;
LABEL_120:
      if ((sub_25AAE7F0C((v10 + 24), v10) & 0x80) != 0)
      {
        v132 = *v10;
        v198 = *(v10 + 16);
        v197 = v132;
        *v10 = *(v10 + 24);
        *(v10 + 16) = *(v10 + 40);
        *(v10 + 24) = v197;
        *(v10 + 40) = v198;
      }

      goto LABEL_205;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      sub_25AAE7914(v10, (v10 + 24), (v10 + 48), (v10 + 72));
      if ((sub_25AAE7F0C(v7, (v10 + 72)) & 0x80) == 0)
      {
        goto LABEL_205;
      }

      v197 = *(v10 + 72);
      v119 = v197;
      v198 = *(v10 + 88);
      v120 = v198;
      v121 = v7[2];
      *(v10 + 72) = *v7;
      *(v10 + 88) = v121;
      v7[2] = v120;
      *v7 = v119;
      if ((sub_25AAE7F0C((v10 + 72), (v10 + 48)) & 0x80) == 0)
      {
        goto LABEL_205;
      }

      v122 = *(v10 + 64);
      v123 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v123;
      *(v10 + 88) = v122;
      if ((sub_25AAE7F0C((v10 + 48), (v10 + 24)) & 0x80) == 0)
      {
        goto LABEL_205;
      }

      v124 = *(v10 + 40);
      v125 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v125;
      *(v10 + 64) = v124;
      goto LABEL_120;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = (v10 + 24);
      v136 = v10 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v10;
          do
          {
            v139 = v138;
            v138 = v134;
            if ((sub_25AAE7F0C(v134, v139) & 0x80) != 0)
            {
              v140 = *v138;
              v198 = v138[2];
              v197 = v140;
              v138[1] = 0;
              v138[2] = 0;
              *v138 = 0;
              v141 = v137;
              do
              {
                v142 = v10 + v141;
                if (*(v10 + v141 + 47) < 0)
                {
                  operator delete(*(v142 + 24));
                }

                *(v142 + 24) = *v142;
                *(v142 + 40) = *(v142 + 16);
                *(v142 + 23) = 0;
                *v142 = 0;
                if (!v141)
                {
                  v144 = v10;
                  goto LABEL_143;
                }

                v141 -= 24;
              }

              while ((sub_25AAE7F0C(&v197, (v141 + v10)) & 0x80) != 0);
              v143 = *(v10 + v141 + 47);
              v144 = v10 + v141 + 24;
              if (v143 < 0)
              {
                operator delete(*v144);
              }

LABEL_143:
              v145 = v197;
              *(v144 + 16) = v198;
              *v144 = v145;
              a2 = v195;
            }

            v134 = v138 + 3;
            v137 += 24;
          }

          while (v138 + 3 != a2);
        }
      }

      else if (!v136)
      {
        v180 = v10 - 24;
        do
        {
          v181 = a1;
          a1 = v134;
          if ((sub_25AAE7F0C(v134, v181) & 0x80) != 0)
          {
            v182 = *a1;
            v198 = *(a1 + 16);
            v197 = v182;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v183 = v180;
            do
            {
              if (*(v183 + 71) < 0)
              {
                operator delete(*(v183 + 48));
              }

              *(v183 + 48) = *(v183 + 24);
              *(v183 + 64) = *(v183 + 40);
              *(v183 + 47) = 0;
              *(v183 + 24) = 0;
              v184 = sub_25AAE7F0C(&v197, v183);
              v183 -= 24;
            }

            while (v184 < 0);
            if (*(v183 + 71) < 0)
            {
              operator delete(*(v183 + 48));
            }

            v185 = v197;
            *(v183 + 64) = v198;
            *(v183 + 48) = v185;
          }

          v134 = (a1 + 24);
          v180 += 24;
        }

        while ((a1 + 24) != a2);
      }

      goto LABEL_205;
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v146 = v13 >> 1;
        v147 = v13 >> 1;
        do
        {
          v148 = v147;
          if (v146 >= v147)
          {
            v149 = (2 * v147) | 1;
            v150 = a1 + 24 * v149;
            if (2 * v147 + 2 < v12 && (sub_25AAE7F0C((a1 + 24 * v149), (v150 + 24)) & 0x80u) != 0)
            {
              v150 += 24;
              v149 = 2 * v148 + 2;
            }

            v151 = a1 + 24 * v148;
            if ((sub_25AAE7F0C(v150, v151) & 0x80) == 0)
            {
              v152 = *v151;
              v198 = *(v151 + 16);
              v197 = v152;
              *(v151 + 8) = 0;
              *(v151 + 16) = 0;
              *v151 = 0;
              while (1)
              {
                v153 = v150;
                if (*(v151 + 23) < 0)
                {
                  operator delete(*v151);
                }

                v154 = *v150;
                *(v151 + 16) = *(v150 + 16);
                *v151 = v154;
                *(v150 + 23) = 0;
                *v150 = 0;
                if (v146 < v149)
                {
                  break;
                }

                v155 = (2 * v149) | 1;
                v150 = a1 + 24 * v155;
                v156 = 2 * v149 + 2;
                if (v156 < v12 && (sub_25AAE7F0C((a1 + 24 * v155), (v150 + 24)) & 0x80u) != 0)
                {
                  v150 += 24;
                  v155 = v156;
                }

                v151 = v153;
                v149 = v155;
                if ((sub_25AAE7F0C(v150, &v197) & 0x80) != 0)
                {
                  if (*(v153 + 23) < 0)
                  {
                    operator delete(*v153);
                  }

                  break;
                }
              }

              v157 = v197;
              *(v153 + 16) = v198;
              *v153 = v157;
            }
          }

          v147 = v148 - 1;
        }

        while (v148);
        v158 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v159 = v195;
        do
        {
          v160 = 0;
          v161 = v159;
          v194 = *a1;
          *&v199 = *(a1 + 8);
          *(&v199 + 7) = *(a1 + 15);
          v196 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v162 = a1;
          do
          {
            v163 = v162;
            v164 = v162 + 24 * v160;
            v162 = v164 + 24;
            v165 = 2 * v160;
            v160 = (2 * v160) | 1;
            v166 = v165 + 2;
            if (v165 + 2 < v158)
            {
              v167 = v164 + 48;
              if ((sub_25AAE7F0C((v164 + 24), (v164 + 48)) & 0x80u) != 0)
              {
                v162 = v167;
                v160 = v166;
              }

              if (*(v163 + 23) < 0)
              {
                operator delete(*v163);
              }
            }

            v168 = *v162;
            *(v163 + 16) = *(v162 + 16);
            *v163 = v168;
            *(v162 + 23) = 0;
            *v162 = 0;
          }

          while (v160 <= (v158 - 2) / 2);
          if (v162 == v159 - 3)
          {
            v159 -= 3;
            *v162 = v194;
            v178 = *(&v199 + 7);
            *(v162 + 8) = v199;
            *(v162 + 15) = v178;
            *(v162 + 23) = v196;
          }

          else
          {
            v169 = *(v159 - 3);
            v159 -= 3;
            *(v162 + 16) = *(v161 - 1);
            *v162 = v169;
            *(v161 - 3) = v194;
            v170 = v199;
            *(v161 - 9) = *(&v199 + 7);
            *(v161 - 2) = v170;
            *(v161 - 1) = v196;
            v171 = v162 - a1 + 24;
            if (v171 >= 25)
            {
              v172 = (-2 - 0x5555555555555555 * (v171 >> 3)) >> 1;
              v173 = a1 + 24 * v172;
              if ((sub_25AAE7F0C(v173, v162) & 0x80) != 0)
              {
                v174 = *v162;
                v198 = *(v162 + 16);
                v197 = v174;
                *(v162 + 8) = 0;
                *(v162 + 16) = 0;
                *v162 = 0;
                while (1)
                {
                  v175 = v173;
                  if (*(v162 + 23) < 0)
                  {
                    operator delete(*v162);
                  }

                  v176 = *v173;
                  *(v162 + 16) = *(v173 + 16);
                  *v162 = v176;
                  *(v173 + 23) = 0;
                  *v173 = 0;
                  if (!v172)
                  {
                    break;
                  }

                  v172 = (v172 - 1) >> 1;
                  v173 = a1 + 24 * v172;
                  v162 = v175;
                  if ((sub_25AAE7F0C(v173, &v197) & 0x80) == 0)
                  {
                    if (*(v175 + 23) < 0)
                    {
                      operator delete(*v175);
                    }

                    break;
                  }
                }

                v177 = v197;
                *(v175 + 16) = v198;
                *v175 = v177;
              }
            }
          }
        }

        while (v158-- > 2);
      }

      goto LABEL_205;
    }

    v14 = v12 >> 1;
    v15 = (v10 + 24 * v14);
    if (v11 >= 0xC01)
    {
      v16 = sub_25AAE7F0C((a1 + 24 * v14), a1);
      v17 = sub_25AAE7F0C(v7, (a1 + 24 * v14));
      if (v16 < 0)
      {
        if (v17 < 0)
        {
          v42 = *a1;
          v198 = *(a1 + 16);
          v197 = v42;
          v43 = *v7;
          *(a1 + 16) = v7[2];
          *a1 = v43;
        }

        else
        {
          v32 = *a1;
          v198 = *(a1 + 16);
          v197 = v32;
          v33 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v33;
          v34 = v197;
          v15[2] = v198;
          *v15 = v34;
          if ((sub_25AAE7F0C(v7, (a1 + 24 * v14)) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v35 = *v15;
          v198 = v15[2];
          v197 = v35;
          v36 = *v7;
          v15[2] = v7[2];
          *v15 = v36;
        }

        v44 = v197;
        v7[2] = v198;
        *v7 = v44;
      }

      else if (v17 < 0)
      {
        v18 = *v15;
        v198 = v15[2];
        v197 = v18;
        v19 = *v7;
        v15[2] = v7[2];
        *v15 = v19;
        v20 = v197;
        v7[2] = v198;
        *v7 = v20;
        if ((sub_25AAE7F0C((a1 + 24 * v14), a1) & 0x80) != 0)
        {
          v21 = *a1;
          v198 = *(a1 + 16);
          v197 = v21;
          v22 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v22;
          v23 = v197;
          v15[2] = v198;
          *v15 = v23;
        }
      }

LABEL_29:
      v45 = (a1 + 24 * v14 - 24);
      v46 = sub_25AAE7F0C(v45, (a1 + 24));
      v47 = sub_25AAE7F0C(v8, v45);
      if (v46 < 0)
      {
        if (v47 < 0)
        {
          v59 = *(a1 + 24);
          v197 = v59;
          v60 = *(a1 + 40);
          v198 = v60;
          v64 = v8[2];
          *(a1 + 24) = *v8;
          *(a1 + 40) = v64;
        }

        else
        {
          v197 = *(a1 + 24);
          v54 = v197;
          v198 = *(a1 + 40);
          v55 = v198;
          v56 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v45;
          *(a1 + 40) = v56;
          *(a1 + 24 * v14 - 8) = v55;
          *v45 = v54;
          if ((sub_25AAE7F0C(v8, v45) & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v57 = *v45;
          v198 = *(a1 + 24 * v14 - 8);
          v197 = v57;
          v58 = *v8;
          *(a1 + 24 * v14 - 8) = v8[2];
          *v45 = v58;
          v59 = v197;
          v60 = v198;
        }

        v8[2] = v60;
        *v8 = v59;
      }

      else if (v47 < 0)
      {
        v48 = *v45;
        v198 = *(a1 + 24 * v14 - 8);
        v197 = v48;
        v49 = *v8;
        *(a1 + 24 * v14 - 8) = v8[2];
        *v45 = v49;
        v50 = v197;
        v8[2] = v198;
        *v8 = v50;
        if ((sub_25AAE7F0C(v45, (a1 + 24)) & 0x80) != 0)
        {
          v197 = *(a1 + 24);
          v51 = v197;
          v198 = *(a1 + 40);
          v52 = v198;
          v53 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v45;
          *(a1 + 40) = v53;
          *(a1 + 24 * v14 - 8) = v52;
          *v45 = v51;
        }
      }

LABEL_40:
      v65 = a1 + 24 * v14;
      v66 = sub_25AAE7F0C((v65 + 24), (a1 + 48));
      v67 = sub_25AAE7F0C(v9, (v65 + 24));
      if (v66 < 0)
      {
        if (v67 < 0)
        {
          v79 = *(a1 + 48);
          v197 = v79;
          v80 = *(a1 + 64);
          v198 = v80;
          v81 = v9[2];
          *(a1 + 48) = *v9;
          *(a1 + 64) = v81;
        }

        else
        {
          v197 = *(a1 + 48);
          v74 = v197;
          v198 = *(a1 + 64);
          v75 = v198;
          v76 = *(v65 + 40);
          *(a1 + 48) = *(v65 + 24);
          *(a1 + 64) = v76;
          *(v65 + 40) = v75;
          *(v65 + 24) = v74;
          if ((sub_25AAE7F0C(v9, (v65 + 24)) & 0x80) == 0)
          {
            goto LABEL_49;
          }

          v77 = *(v65 + 24);
          v198 = *(v65 + 40);
          v197 = v77;
          v78 = *v9;
          *(v65 + 40) = v9[2];
          *(v65 + 24) = v78;
          v79 = v197;
          v80 = v198;
        }

        v9[2] = v80;
        *v9 = v79;
      }

      else if (v67 < 0)
      {
        v68 = *(v65 + 24);
        v198 = *(v65 + 40);
        v197 = v68;
        v69 = *v9;
        *(v65 + 40) = v9[2];
        *(v65 + 24) = v69;
        v70 = v197;
        v9[2] = v198;
        *v9 = v70;
        if ((sub_25AAE7F0C((v65 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v197 = *(a1 + 48);
          v71 = v197;
          v198 = *(a1 + 64);
          v72 = v198;
          v73 = *(v65 + 40);
          *(a1 + 48) = *(v65 + 24);
          *(a1 + 64) = v73;
          *(v65 + 40) = v72;
          *(v65 + 24) = v71;
        }
      }

LABEL_49:
      v82 = sub_25AAE7F0C(v15, v45);
      v83 = sub_25AAE7F0C((v65 + 24), v15);
      if ((v82 & 0x80) == 0)
      {
        if (v83 < 0)
        {
          v84 = *v15;
          v198 = v15[2];
          v197 = v84;
          *v15 = *(v65 + 24);
          v15[2] = *(v65 + 40);
          v85 = v197;
          *(v65 + 40) = v198;
          *(v65 + 24) = v85;
          if ((sub_25AAE7F0C(v15, v45) & 0x80) != 0)
          {
            v86 = *v45;
            v198 = v45[2];
            v197 = v86;
            *v45 = *v15;
            v45[2] = v15[2];
            v87 = v197;
            v15[2] = v198;
            *v15 = v87;
          }
        }

        goto LABEL_58;
      }

      if (v83 < 0)
      {
        v91 = *v45;
        v198 = v45[2];
        v197 = v91;
        *v45 = *(v65 + 24);
        v45[2] = *(v65 + 40);
      }

      else
      {
        v88 = *v45;
        v198 = v45[2];
        v197 = v88;
        *v45 = *v15;
        v45[2] = v15[2];
        v89 = v197;
        v15[2] = v198;
        *v15 = v89;
        if ((sub_25AAE7F0C((v65 + 24), v15) & 0x80) == 0)
        {
LABEL_58:
          v93 = *a1;
          v198 = *(a1 + 16);
          v197 = v93;
          v94 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v94;
          v95 = v197;
          v15[2] = v198;
          *v15 = v95;
          goto LABEL_59;
        }

        v90 = *v15;
        v198 = v15[2];
        v197 = v90;
        *v15 = *(v65 + 24);
        v15[2] = *(v65 + 40);
      }

      v92 = v197;
      *(v65 + 40) = v198;
      *(v65 + 24) = v92;
      goto LABEL_58;
    }

    v24 = sub_25AAE7F0C(a1, (a1 + 24 * v14));
    v25 = sub_25AAE7F0C(v7, a1);
    if ((v24 & 0x80) == 0)
    {
      if (v25 < 0)
      {
        v26 = *a1;
        v198 = *(a1 + 16);
        v197 = v26;
        v27 = *v7;
        *(a1 + 16) = v7[2];
        *a1 = v27;
        v28 = v197;
        v7[2] = v198;
        *v7 = v28;
        if ((sub_25AAE7F0C(a1, (a1 + 24 * v14)) & 0x80) != 0)
        {
          v29 = *v15;
          v198 = v15[2];
          v197 = v29;
          v30 = *a1;
          v15[2] = *(a1 + 16);
          *v15 = v30;
          v31 = v197;
          *(a1 + 16) = v198;
          *a1 = v31;
        }
      }

      goto LABEL_59;
    }

    if (v25 < 0)
    {
      v61 = *v15;
      v198 = v15[2];
      v197 = v61;
      v62 = *v7;
      v15[2] = v7[2];
      *v15 = v62;
    }

    else
    {
      v37 = *v15;
      v198 = v15[2];
      v197 = v37;
      v38 = *a1;
      v15[2] = *(a1 + 16);
      *v15 = v38;
      v39 = v197;
      *(a1 + 16) = v198;
      *a1 = v39;
      if ((sub_25AAE7F0C(v7, a1) & 0x80) == 0)
      {
        goto LABEL_59;
      }

      v40 = *a1;
      v198 = *(a1 + 16);
      v197 = v40;
      v41 = *v7;
      *(a1 + 16) = v7[2];
      *a1 = v41;
    }

    v63 = v197;
    v7[2] = v198;
    *v7 = v63;
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || (sub_25AAE7F0C((a1 - 24), a1) & 0x80) != 0)
    {
      v96 = 0;
      v97 = *a1;
      v200 = *(a1 + 16);
      v199 = v97;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      do
      {
        v96 += 24;
      }

      while ((sub_25AAE7F0C((v96 + a1), &v199) & 0x80) != 0);
      v98 = a1 + v96;
      v99 = v195;
      if (v96 == 24)
      {
        v99 = v195;
        do
        {
          if (v98 >= v99)
          {
            break;
          }

          v99 -= 3;
        }

        while ((sub_25AAE7F0C(v99, &v199) & 0x80) == 0);
      }

      else
      {
        do
        {
          v99 -= 3;
        }

        while ((sub_25AAE7F0C(v99, &v199) & 0x80) == 0);
      }

      v10 = a1 + v96;
      if (v98 >= v99)
      {
        a2 = v195;
      }

      else
      {
        v100 = v99;
        a2 = v195;
        do
        {
          v101 = *v10;
          v198 = *(v10 + 16);
          v197 = v101;
          v102 = *v100;
          *(v10 + 16) = v100[2];
          *v10 = v102;
          v103 = v197;
          v100[2] = v198;
          *v100 = v103;
          do
          {
            v10 += 24;
          }

          while ((sub_25AAE7F0C(v10, &v199) & 0x80) != 0);
          do
          {
            v100 -= 3;
          }

          while ((sub_25AAE7F0C(v100, &v199) & 0x80) == 0);
        }

        while (v10 < v100);
      }

      v104 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v105 = *v104;
        *(a1 + 16) = *(v10 - 8);
        *a1 = v105;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v106 = v199;
      *(v10 - 8) = v200;
      *v104 = v106;
      if (v98 < v99)
      {
        goto LABEL_86;
      }

      v107 = sub_25AAE7AD4(a1, (v10 - 24));
      if (sub_25AAE7AD4(v10, a2))
      {
        a2 = (v10 - 24);
        if (!v107)
        {
          goto LABEL_2;
        }

        goto LABEL_205;
      }

      if (!v107)
      {
LABEL_86:
        sub_25AAE67BC(a1, v10 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v108 = *a1;
      v200 = *(a1 + 16);
      v199 = v108;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if ((sub_25AAE7F0C(&v199, v7) & 0x80) != 0)
      {
        v10 = a1;
        v110 = v195;
        do
        {
          v10 += 24;
        }

        while ((sub_25AAE7F0C(&v199, v10) & 0x80) == 0);
      }

      else
      {
        v109 = (a1 + 24);
        v110 = v195;
        do
        {
          v10 = v109;
          if (v109 >= v195)
          {
            break;
          }

          v111 = sub_25AAE7F0C(&v199, v109);
          v109 = (v10 + 24);
        }

        while ((v111 & 0x80) == 0);
      }

      v112 = v110;
      if (v10 < v110)
      {
        v112 = v110;
        do
        {
          v112 -= 24;
        }

        while ((sub_25AAE7F0C(&v199, v112) & 0x80) != 0);
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v198 = *(v10 + 16);
        v197 = v113;
        v114 = *v112;
        *(v10 + 16) = *(v112 + 16);
        *v10 = v114;
        v115 = v197;
        *(v112 + 16) = v198;
        *v112 = v115;
        do
        {
          v10 += 24;
        }

        while ((sub_25AAE7F0C(&v199, v10) & 0x80) == 0);
        do
        {
          v112 -= 24;
        }

        while ((sub_25AAE7F0C(&v199, v112) & 0x80) != 0);
      }

      v116 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 16) = *(v10 - 8);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v199;
      *(v10 - 8) = v200;
      *v116 = v118;
      a2 = v195;
    }
  }

  v133 = *MEMORY[0x277D85DE8];

  sub_25AAE7914(v10, (v10 + 24), (v10 + 48), v7);
}

__n128 sub_25AAE7914(void **a1, void **a2, void **a3, void *a4)
{
  v8 = sub_25AAE7F0C(a2, a1);
  v9 = sub_25AAE7F0C(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((sub_25AAE7F0C(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((sub_25AAE7F0C(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((sub_25AAE7F0C(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((sub_25AAE7F0C(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((sub_25AAE7F0C(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL sub_25AAE7AD4(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = sub_25AAE7F0C((a1 + 24), a1);
        v15 = sub_25AAE7F0C(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((sub_25AAE7F0C(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        sub_25AAE7914(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        sub_25AAE7914(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((sub_25AAE7F0C(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((sub_25AAE7F0C((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((sub_25AAE7F0C((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((sub_25AAE7F0C((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((sub_25AAE7F0C(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = sub_25AAE7F0C((a1 + 24), a1);
  v23 = sub_25AAE7F0C((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((sub_25AAE7F0C((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((sub_25AAE7F0C((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((sub_25AAE7F0C(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = sub_25AAE7F0C(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_25AAE7F0C(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_25AAE7F44(a1, v2, v5, v6);
}

uint64_t sub_25AAE7F44(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_25AAE7FA4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_25AAE7FF8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_25AAE7FF8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

double sub_25AAE8048(unint64_t a1)
{
  v2 = *&qword_27FA115C8;
  if (*&qword_27FA115C8 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_27FA115C8 = v2;
  }

  return v2 * a1;
}

CMMsl::Writer *CMMsl::Writer::Writer(CMMsl::Writer *this)
{
  *this = 0;
  v2 = dispatch_queue_create("CMMsl.Writer", 0);
  *(this + 1) = v2;
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 300;
  *(this + 10) = -1;
  v4 = MEMORY[0x277D85DD0];
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  handler[0] = v4;
  handler[1] = 0x40000000;
  handler[2] = sub_25AAE820C;
  handler[3] = &unk_279922DB0;
  handler[4] = this;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_source_set_timer(*(this + 2), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(this + 2));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  deflateInit_((this + 80), -1, "1.2.12", 112);
  return this;
}

void CMMsl::Writer::closeSensRecord(CMMsl::Writer *this)
{
  v1 = this + 56;
  if (*(this + 7))
  {
    while (1)
    {
      v3 = deflate((this + 80), 4);
      if (v3)
      {
        break;
      }

      CMMsl::Writer::growZlibStream(this);
    }

    if (v3 == 1)
    {
      v4 = *(this + 15);
      v5 = v4 + 28;
      v6 = (v4 + 35) & 0xFFFFFFFFFFFFFFF8;
      v7 = *(this + 7);
      v7[3] = v4 + 12;
      if (v4 + 28 < v6)
      {
        do
        {
          *(*v1 + v5++) = 0;
        }

        while (v6 != v5);
        v7 = *v1;
      }

      if (*this)
      {
        (*(**this + 24))(*this, v7, v6);
        free(*v1);
      }

      else
      {
        v8 = *(this + 1);
        destructor[0] = MEMORY[0x277D85DD0];
        destructor[1] = 0x40000000;
        destructor[2] = sub_25AAE8D74;
        destructor[3] = &unk_279922EB8;
        destructor[4] = v7;
        v9 = dispatch_data_create(v7, v6, v8, destructor);
        dispatch_io_write(*(this + 3), *(this + 6), v9, *(this + 1), &unk_286C1DE88);
        dispatch_release(v9);
      }

      *(this + 6) += v6;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0;
      *v1 = 0;
      deflateReset((this + 80));
      dispatch_source_set_timer(*(this + 2), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, (1000000000 * *(this + 4)) >> 1);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "zstream status? Msl %d\n", v3);
    }
  }
}

void CMMsl::Writer::setFlushTimeoutSeconds(CMMsl::Writer *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_25AAE844C;
  v3[3] = &unk_279922DD0;
  v3[4] = this;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

uint64_t sub_25AAE844C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 40) != -1)
  {
    __assert_rtn("setFlushTimeoutSeconds_block_invoke", "MSLWriter.cpp", 56, "(fFd == -1) && (Writer::setFlushTimeout() must be called before ::open().)");
  }

  *(v1 + 32) = *(result + 40);
  return result;
}

void CMMsl::Writer::~Writer(CMMsl::Writer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  else
  {
    v5 = *(this + 10);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }
  }

  free(*(this + 7));
  deflateEnd((this + 80));
}

uint64_t CMMsl::Writer::open(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = *(a1 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = sub_25AAE85CC;
  v6[3] = &unk_279922E18;
  v6[5] = a1;
  v6[6] = a2;
  v7 = a3;
  v6[4] = &v8;
  dispatch_sync(v3, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

dispatch_io_t sub_25AAE85CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = open_dprotected_np(*(a1 + 48), 16777730, *(a1 + 56), 0, 438);
  *(v2 + 40) = v3;
  if (v3 < 0)
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = "Cannot open Msl file\n";
    v9 = 21;
  }

  else
  {
    v4 = lseek(v3, 0, 2);
    if (v4 < 0)
    {
      v7 = *MEMORY[0x277D85DF8];
      v8 = "Cannot seek to end of Msl file\n";
      v9 = 31;
    }

    else
    {
      v5 = v4;
      if ((lseek(*(v2 + 40), 0, 0) & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          __buf = 0;
          if (pread(*(v2 + 40), &__buf, 8uLL, 0) == 8)
          {
            if (__buf == 0xE020C5BE006C536DLL)
            {
              v6 = (v5 + 7) & 0x7FFFFFFFFFFFFFF8;
LABEL_15:
              *(v2 + 48) = v6;
              v11 = *(v2 + 40);
              v12 = *(v2 + 8);
              cleanup_handler[0] = MEMORY[0x277D85DD0];
              cleanup_handler[1] = 0x40000000;
              cleanup_handler[2] = sub_25AAE8800;
              cleanup_handler[3] = &unk_279922DF0;
              v17 = v11;
              result = dispatch_io_create(1uLL, v11, v12, cleanup_handler);
              *(v2 + 24) = result;
              if (result)
              {
                *(*(*(a1 + 32) + 8) + 24) = 1;
                return result;
              }

              v13 = *MEMORY[0x277D85DF8];
              v14 = "Cannot create dispatch_io for Msl file\n";
              v15 = 39;
              return fwrite(v14, v15, 1uLL, v13);
            }

            v13 = *MEMORY[0x277D85DF8];
            v14 = "Bad signature in Msl file\n";
            v15 = 26;
          }

          else
          {
            v13 = *MEMORY[0x277D85DF8];
            v14 = "Short signature in Msl file\n";
            v15 = 28;
          }

          return fwrite(v14, v15, 1uLL, v13);
        }

        v6 = 8;
        pwrite(*(v2 + 40), &unk_25AD37E30, 8uLL, 0);
        goto LABEL_15;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = "Cannot seek to start of Msl file\n";
      v9 = 33;
    }
  }

  return fwrite(v8, v9, 1uLL, v7);
}

uint64_t CMMsl::Writer::open(void *a1, uint64_t a2, char a3)
{
  *a1 = a2;
  if ((a3 & 1) == 0)
  {
    (*(*a2 + 24))(a2, &unk_25AD37E30, 8);
    a1[6] = 8;
  }

  return 1;
}

void CMMsl::Writer::writeItem(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_25AAE88EC;
  v3[3] = &unk_279922E38;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void sub_25AAE88EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  PB::Writer::Writer(&v5);
  (*(**(a1 + 40) + 24))(*(a1 + 40), &v5);
  v3 = *(v2 + 7);
  if (!v3)
  {
    CMMsl::Writer::openSensRecord(v2);
    v3 = *(v2 + 7);
  }

  ++*(v3 + 16);
  *v4 = v5 - v6;
  CMMsl::Writer::pumpZlib(v2, v4, 4);
  CMMsl::Writer::pumpZlib(v2, v6, v5 - v6);
  if (!*(v2 + 9))
  {
    CMMsl::Writer::closeSensRecord(v2);
  }

  PB::Writer::~Writer(&v5);
}

void sub_25AAE89B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void CMMsl::Writer::openSensRecord(CMMsl::Writer *this)
{
  *(this + 7) = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  *(this + 4) = xmmword_25AD37E20;
  gettimeofday(&v7, 0);
  v2 = *(this + 7);
  *v2 = 0x5979AAB3D5E07959;
  *(v2 + 8) = 1936614771;
  tv_sec = v7.tv_sec;
  *(v2 + 16) = 0;
  *(v2 + 20) = tv_sec;
  *(v2 + 24) = 1000 * v7.tv_usec;
  *(this + 13) = v2 + 28;
  *(this + 28) = *(this + 16) - 28;
  v4 = 1000000000 * *(this + 4);
  v5 = *(this + 2);
  v6 = dispatch_time(0, v4);

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, v4 >> 1);
}

void **CMMsl::Writer::pumpZlib(void **this, const unsigned __int8 *a2, int a3)
{
  this[10] = a2;
  v3 = (this + 10);
  *(this + 22) = a3;
  if (a3)
  {
    v4 = this;
    do
    {
      this = deflate(v3, 0);
      if (!this && !*(v4 + 112))
      {
        this = CMMsl::Writer::growZlibStream(v4);
      }
    }

    while (*(v4 + 88));
  }

  return this;
}

void CMMsl::Writer::flush(CMMsl::Writer *this)
{
  v1 = *(this + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_25AAE8B84;
  block[3] = &unk_279922E58;
  block[4] = this;
  dispatch_sync(v1, block);
}

void CMMsl::Writer::sync(CMMsl::Writer *this)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(this + 1);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_25AAE8C14;
  v4[3] = &unk_279922E98;
  v4[4] = this;
  v4[5] = v2;
  dispatch_sync(v3, v4);
}

void sub_25AAE8C14(uint64_t a1)
{
  v2 = *(a1 + 32);
  CMMsl::Writer::closeSensRecord(v2);
  v3 = *(v2 + 3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = sub_25AAE8CB4;
  v5[3] = &unk_279922E78;
  v4 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v4;
  dispatch_io_barrier(v3, v5);
  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 40));
}

intptr_t sub_25AAE8CB4(uint64_t a1)
{
  fsync(*(*(a1 + 32) + 40));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void **CMMsl::Writer::growZlibStream(void **this)
{
  v1 = this;
  v3 = this[8];
  v2 = this[9];
  if (v2)
  {
    *(this + 28) += v2;
    this[8] = &v2[v3];
    this[9] = 0;
  }

  else
  {
    this[8] = (2 * v3);
    this = malloc_type_realloc(this[7], 2 * v3, 0x100004077774924uLL);
    v1[7] = this;
    v4 = v1[15];
    v1[13] = &v4[this + 28];
    *(v1 + 28) = *(v1 + 16) - v4;
  }

  return this;
}

void sub_25AAE8D7C(int a1, char a2, int a3, int __errnum)
{
  if (__errnum || (a2 & 1) == 0)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = strerror(__errnum);
    fprintf(v4, "Msl dispatch io write error %s\n", v5);
  }
}

id sub_25AAE8DE4()
{
  v3[9] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FA11580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FA11580))
  {
    v3[0] = @"LoggingEnabled";
    v3[1] = @"FilePrefix";
    v3[2] = @"FileBasePath";
    v3[3] = @"FileSize";
    v3[4] = @"FileTimeInterval";
    v3[5] = @"FilesToKeep";
    v3[6] = @"FileExtension";
    v3[7] = @"ProtectionClass";
    v3[8] = @"FlushTimeout";
    qword_27FA11578 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
    __cxa_guard_release(&qword_27FA11580);
  }

  v0 = qword_27FA11578;
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t sub_25AAE8F10()
{
  qword_27FA11588 = dispatch_queue_create("com.apple.Msl.DefaultsQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_25AAE8F50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1048576000;
  *(a2 + 8) = 0x3200015180;
  sub_25AAE6524((a2 + 16), "/tmp/");
  sub_25AAE6524((a2 + 40), &unk_25AD403BB);
  sub_25AAE6524((a2 + 64), "msl");
  *(a2 + 88) = 2;
  *(a2 + 96) = 300;
  v12 = [*(a1 + 16) allKeys];
  if ([v12 containsObject:@"FilePrefix"])
  {
    v4 = [*(a1 + 16) valueForKey:@"FilePrefix"];
    sub_25AAE9E48((a2 + 40), [v4 UTF8String]);
  }

  if ([v12 containsObject:@"FileBasePath"])
  {
    v5 = [*(a1 + 16) valueForKey:@"FileBasePath"];
    sub_25AAE9E48((a2 + 16), [v5 UTF8String]);
  }

  if ([v12 containsObject:@"FileExtension"])
  {
    v6 = [*(a1 + 16) valueForKey:@"FileExtension"];
    sub_25AAE9E48((a2 + 64), [v6 UTF8String]);
  }

  if ([v12 containsObject:@"FileTimeInterval"])
  {
    v7 = [*(a1 + 16) valueForKey:@"FileTimeInterval"];
    *(a2 + 8) = [v7 unsignedIntValue];
  }

  if ([v12 containsObject:@"FilesToKeep"])
  {
    v8 = [*(a1 + 16) valueForKey:@"FilesToKeep"];
    *(a2 + 12) = [v8 unsignedIntValue];
  }

  if ([v12 containsObject:@"FileSize"])
  {
    v9 = [*(a1 + 16) valueForKey:@"FileSize"];
    *a2 = [v9 unsignedIntValue];
  }

  if ([v12 containsObject:@"ProtectionClass"])
  {
    v10 = [*(a1 + 16) valueForKey:@"ProtectionClass"];
    *(a2 + 88) = [v10 unsignedIntValue];
  }

  if ([v12 containsObject:@"FlushTimeout"])
  {
    v11 = [*(a1 + 16) valueForKey:@"FlushTimeout"];
    *(a2 + 96) = [v11 longLongValue];
  }
}

uint64_t sub_25AAE925C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_25AAE92B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = [MEMORY[0x277CBEB38] dictionary];
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  *(a1 + 24) = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  *(a1 + 32) = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:*(a1 + 24)];
  *(a1 + 40) = objc_opt_new();
  if (!*(a1 + 32))
  {
    if (qword_27FA115A0 != -1)
    {
      dispatch_once(&qword_27FA115A0, &unk_286C1DEC8);
    }

    v8 = qword_27FA11598;
    if (os_log_type_enabled(qword_27FA11598, OS_LOG_TYPE_FAULT))
    {
      v45 = *(a1 + 24);
      *v57 = 138412290;
      v58 = v45;
      _os_log_fault_impl(&dword_25AAE5000, v8, OS_LOG_TYPE_FAULT, "fUserDefaults returned nil for domain: %@", v57, 0xCu);
    }
  }

  v9 = *(a1 + 16);
  if (*(a4 + 63) >= 0)
  {
    v10 = a4 + 40;
  }

  else
  {
    v10 = *(a4 + 40);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [v9 setValue:v11 forKey:@"FilePrefix"];

  v12 = *(a1 + 16);
  if (*(a4 + 39) >= 0)
  {
    v13 = a4 + 16;
  }

  else
  {
    v13 = *(a4 + 16);
  }

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
  [v12 setValue:v14 forKey:@"FileBasePath"];

  v15 = *(a1 + 16);
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:*a4];
  [v15 setValue:v16 forKey:@"FileSize"];

  v17 = *(a1 + 16);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a4 + 8)];
  [v17 setValue:v18 forKey:@"FileTimeInterval"];

  v19 = *(a1 + 16);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a4 + 12)];
  [v19 setValue:v20 forKey:@"FilesToKeep"];

  v21 = *(a1 + 16);
  if (*(a4 + 87) >= 0)
  {
    v22 = a4 + 64;
  }

  else
  {
    v22 = *(a4 + 64);
  }

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
  [v21 setValue:v23 forKey:@"FileExtension"];

  v24 = *(a1 + 16);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a4 + 88)];
  [v24 setValue:v25 forKey:@"ProtectionClass"];

  v26 = *(a1 + 16);
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a4 + 96)];
  [v26 setValue:v27 forKey:@"FlushTimeout"];

  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = sub_25AAE8DE4();
  v29 = [v28 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v29)
  {
    v30 = *v51;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v50 + 1) + 8 * i);
        v33 = [*(a1 + 32) objectForKey:v32];
        v34 = [*(a1 + 32) objectForKey:v32];
        v35 = v34 == 0;

        if (!v35)
        {
          v36 = [v33 copy];
          [*(a1 + 16) setObject:v36 forKeyedSubscript:v32];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v29);
  }

  if (qword_27FA115A0 != -1)
  {
    dispatch_once(&qword_27FA115A0, &unk_286C1DEC8);
  }

  v37 = qword_27FA11598;
  if (os_log_type_enabled(qword_27FA11598, OS_LOG_TYPE_DEBUG))
  {
    v44 = *(a1 + 16);
    *buf = 138412290;
    v56 = v44;
    _os_log_debug_impl(&dword_25AAE5000, v37, OS_LOG_TYPE_DEBUG, "MSL config updated from user defaults %@", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = sub_25AAE8DE4();
  v39 = [v38 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v39)
  {
    v40 = *v47;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v38);
        }

        [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:*(*(&v46 + 1) + 8 * j) options:1 context:{a1, v46}];
      }

      v39 = [v38 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v39);
  }

  v42 = *MEMORY[0x277D85DE8];
  return a1;
}

id *sub_25AAE9880(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = sub_25AAE8DE4();
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [a1[4] removeObserver:a1[5] forKeyPath:*(*(&v8 + 1) + 8 * v5++) context:{a1, v8}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25AAE999C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_25AAE8500(a1);
  }

  _Unwind_Resume(a1);
}

void sub_25AAE99B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((*(v1 + 8) + 24));
  v2 = *(v1 + 8);
  operator new();
}

void sub_25AAE9A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25AAE925C(va);
  MEMORY[0x25F8548F0](v2, 0x1032C4044EE41C5);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_25AAE9AB8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_25AD29CDC(result);

    JUMPOUT(0x25F8548F0);
  }

  return result;
}

uint64_t sub_25AAE9B04(uint64_t a1)
{
  v1 = [*(a1 + 16) objectForKey:@"LoggingEnabled"];
  v2 = [v1 BOOLValue];

  return v2;
}

std::string *sub_25AAE9D8C(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_25AAE9E48(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_25AAE9D8C(a1, __s, v4);
}

uint64_t sub_25AAE9E90()
{
  qword_27FA11598 = os_log_create("com.apple.MotionSensorLogging", "MSL");

  return MEMORY[0x2821F96F8]();
}

void *CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(void *this)
{
  *this = &unk_286C1DEF8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1DEF8;
  this[1] = 0;
  return this;
}

void CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(CMMsl::AFDeviceMotionConfig *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1DEF8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(void *this, const CMMsl::AFDeviceMotionConfig *a2)
{
  *this = &unk_286C1DEF8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AFDeviceMotionConfig *CMMsl::AFDeviceMotionConfig::operator=(const CMMsl::AFDeviceMotionConfig *a1, const CMMsl::AFDeviceMotionConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AFDeviceMotionConfig *a2, CMMsl::AFDeviceMotionConfig *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1DEF8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1DEF8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::AFDeviceMotionConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1DEF8;
    v6[1] = v4;
    CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::AFDeviceMotionConfig::formatText(CMMsl::AFDeviceMotionConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AFDeviceMotionConfig::readFrom(CMMsl::AFDeviceMotionConfig *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

double CMMsl::AccessoryDeviceMotionConfig::AccessoryDeviceMotionConfig(CMMsl::AccessoryDeviceMotionConfig *this)
{
  *this = &unk_286C1E438;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_286C1E438;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CMMsl::AFDeviceMotionConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::AFDeviceMotionConfig::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryDeviceMotionConfig::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::AccessoryDeviceMotionConfig::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !CMMsl::AccessoryConfig::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 44);
  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  if (v8 == v7)
  {
    return 1;
  }

  v10 = v8 + 4;
  do
  {
    v11 = *v9++;
    result = *(v10 - 4) == v11;
    v13 = *(v10 - 4) != v11 || v10 == v7;
    v10 += 4;
  }

  while (!v13);
  return result;
}

CMMsl::AccessoryDeviceMotionConfig *CMMsl::AFDeviceMotionConfig::hash_value(CMMsl::AFDeviceMotionConfig *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryDeviceMotionConfig::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AFDeviceMotionConfig::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AFHeartRate::AFHeartRate(void *this)
{
  *this = &unk_286C1DF30;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1DF30;
  this[1] = 0;
  return this;
}

void CMMsl::AFHeartRate::~AFHeartRate(CMMsl::AFHeartRate *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1DF30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AFHeartRate::~AFHeartRate(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::AFHeartRate::AFHeartRate(void *this, const CMMsl::AFHeartRate *a2)
{
  *this = &unk_286C1DF30;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AFHeartRate *CMMsl::AFHeartRate::operator=(const CMMsl::AFHeartRate *a1, const CMMsl::AFHeartRate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AFHeartRate::AFHeartRate(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AFHeartRate::~AFHeartRate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AFHeartRate *a2, CMMsl::AFHeartRate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AFHeartRate::AFHeartRate(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1DF30;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1DF30;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::AFHeartRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1DF30;
    v6[1] = v4;
    CMMsl::AFHeartRate::~AFHeartRate(v6);
  }

  return a1;
}

uint64_t CMMsl::AFHeartRate::formatText(CMMsl::AFHeartRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AFHeartRate::readFrom(CMMsl::AFHeartRate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::AccessoryHeartRate::AccessoryHeartRate(uint64_t this)
{
  *this = &unk_286C1E550;
  *(this + 56) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C1E550;
  *(this + 56) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::AFHeartRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::AFHeartRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryHeartRate::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::AccessoryHeartRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x100) != 0)
  {
    if ((*(a2 + 68) & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x200) != 0)
  {
    if ((*(a2 + 68) & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x200) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

CMMsl::AccessoryHeartRate *CMMsl::AFHeartRate::hash_value(CMMsl::AFHeartRate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryHeartRate::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AFHeartRate::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::ALSData::ALSData(uint64_t this)
{
  *this = &unk_286C1DF68;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C1DF68;
  *(this + 12) = 0;
  return this;
}

void CMMsl::ALSData::~ALSData(CMMsl::ALSData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ALSData::ALSData(CMMsl::ALSData *this, const CMMsl::ALSData *a2)
{
  *this = &unk_286C1DF68;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

{
  *this = &unk_286C1DF68;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::ALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C1DF68;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v8 = &unk_286C1DF68;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ALSData *a2, CMMsl::ALSData *a3)
{
  v3 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float CMMsl::ALSData::ALSData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1DF68;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C1DF68;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::ALSData::formatText(CMMsl::ALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "alsTrustedLux", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ALSData::readFrom(CMMsl::ALSData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_23;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::ALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

BOOL CMMsl::ALSData::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

float CMMsl::ALSData::hash_value(CMMsl::ALSData *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  return result;
}

uint64_t CMMsl::ALSPhone::ALSPhone(uint64_t this)
{
  *this = &unk_286C1DFA0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1DFA0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::ALSPhone::~ALSPhone(CMMsl::ALSPhone *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ALSPhone::ALSPhone(CMMsl::ALSPhone *this, const CMMsl::ALSPhone *a2)
{
  *this = &unk_286C1DFA0;
  *(this + 5) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 1) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = result;
  }

  return result;
}

uint64_t CMMsl::ALSPhone::operator=(uint64_t a1, const CMMsl::ALSPhone *a2)
{
  if (a1 != a2)
  {
    CMMsl::ALSPhone::ALSPhone(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ALSPhone *a2, CMMsl::ALSPhone *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::ALSPhone::ALSPhone(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1DFA0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C1DFA0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::ALSPhone::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = &unk_286C1DFA0;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::ALSPhone::formatText(CMMsl::ALSPhone *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "lux", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ALSPhone::readFrom(CMMsl::ALSPhone *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          v32 = (v23 + v22);
          v33 = v2 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_45:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::ALSPhone::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

BOOL CMMsl::ALSPhone::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::ALSPhone::hash_value(CMMsl::ALSPhone *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 1);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void *CMMsl::APSleep::APSleep(void *this)
{
  *this = &unk_286C1DFD8;
  return this;
}

{
  *this = &unk_286C1DFD8;
  return this;
}

void CMMsl::APSleep::~APSleep(CMMsl::APSleep *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::APSleep::APSleep(void *this, const CMMsl::APSleep *a2)
{
  *this = &unk_286C1DFD8;
  return this;
}

{
  *this = &unk_286C1DFD8;
  return this;
}

uint64_t CMMsl::APSleep::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = &unk_286C1DFD8;
    PB::Base::~Base(&v4);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = &unk_286C1DFD8;
    PB::Base::~Base(&v4);
  }

  return a1;
}

void *CMMsl::APSleep::APSleep(void *result)
{
  *result = &unk_286C1DFD8;
  return result;
}

{
  *result = &unk_286C1DFD8;
  return result;
}

uint64_t CMMsl::APSleep::formatText(CMMsl::APSleep *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::APSleep::readFrom(CMMsl::APSleep *this, PB::Reader *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    v5 = *(a2 + 24);
    v6 = v3 - v4;
    if (v3 <= v4 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_23;
    }

    v7 = *a2;
    v8 = v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v3;
    if (v8)
    {
      break;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (v7 + v4);
    v18 = v4 + 1;
    while (1)
    {
      *(a2 + 1) = v18;
      v19 = *v17++;
      v16 |= (v19 & 0x7F) << v14;
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      ++v18;
      v8 = v15++ > 8;
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    if ((v16 & 7) == 4)
    {
      v5 = 0;
LABEL_23:
      v20 = v5 ^ 1;
      return v20 & 1;
    }

LABEL_19:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v20 = 0;
      return v20 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v16 = 0;
  v11 = (v7 + v4);
  v12 = v4 + 1;
  while (v6)
  {
    v13 = *v11;
    *(a2 + 1) = v12;
    v16 |= (v13 & 0x7F) << v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v9 += 7;
    ++v11;
    --v6;
    ++v12;
    v8 = v10++ > 8;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  v20 = 0;
  *(a2 + 24) = 1;
  return v20 & 1;
}

void *CMMsl::APWake::APWake(void *this)
{
  *this = &unk_286C1E010;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1E010;
  this[1] = 0;
  return this;
}

void CMMsl::APWake::~APWake(CMMsl::APWake *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1E010;
  *(this + 1) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::APWake::~APWake(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::APWake::APWake(void *this, const CMMsl::APWake *a2)
{
  *this = &unk_286C1E010;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::APWake *CMMsl::APWake::operator=(const CMMsl::APWake *a1, const CMMsl::APWake *a2)
{
  if (a1 != a2)
  {
    CMMsl::APWake::APWake(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::APWake::~APWake(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::APWake *a2, CMMsl::APWake *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::APWake::APWake(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1E010;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    sub_25AD28A30(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1E010;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    sub_25AD28A30(v4);
  }

  return a1;
}

uint64_t CMMsl::APWake::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1E010;
    v6[1] = v4;
    CMMsl::APWake::~APWake(v6);
  }

  return a1;
}

uint64_t CMMsl::APWake::formatText(CMMsl::APWake *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::APWake::readFrom(CMMsl::APWake *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if (!PB::Reader::skip(a2))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::APWake::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::APWake::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_25AAEC4C4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

unint64_t CMMsl::APWake::hash_value(CMMsl::APWake *this)
{
  result = *(this + 1);
  if (result)
  {
    return sub_25AD28AE4(result);
  }

  return result;
}

uint64_t CMMsl::ARKitWorldPose::ARKitWorldPose(uint64_t this)
{
  *this = &unk_286C1E048;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C1E048;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  return this;
}

void CMMsl::ARKitWorldPose::~ARKitWorldPose(CMMsl::ARKitWorldPose *this)
{
  *this = &unk_286C1E048;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ARKitWorldPose::~ARKitWorldPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::ARKitWorldPose *CMMsl::ARKitWorldPose::ARKitWorldPose(CMMsl::ARKitWorldPose *this, const CMMsl::ARKitWorldPose *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_286C1E048;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v7 = *(a2 + 4);
    v6 = 1;
    *(this + 56) = 1;
    *(this + 4) = v7;
    v5 = *(a2 + 56);
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
LABEL_5:
    v8 = *(a2 + 11);
    v6 |= 4u;
    *(this + 56) = v6;
    *(this + 11) = v8;
    v5 = *(a2 + 56);
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = *(a2 + 12);
  v6 |= 8u;
  *(this + 56) = v6;
  *(this + 12) = v12;
  if ((*(a2 + 56) & 0x10) != 0)
  {
LABEL_8:
    v9 = *(a2 + 13);
    *(this + 56) = v6 | 0x10;
    *(this + 13) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  if ((*(a2 + 56) & 2) != 0)
  {
    v10 = *(a2 + 10);
    *(this + 56) |= 2u;
    *(this + 10) = v10;
  }

  return this;
}

uint64_t CMMsl::ARKitWorldPose::operator=(uint64_t a1, const CMMsl::ARKitWorldPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::ARKitWorldPose::ARKitWorldPose(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v4;
    v5 = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v5;
    LODWORD(v4) = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v7;
    LODWORD(v7) = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    CMMsl::ARKitWorldPose::~ARKitWorldPose(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ARKitWorldPose *a2, CMMsl::ARKitWorldPose *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LODWORD(v8) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  return result;
}

uint64_t CMMsl::ARKitWorldPose::ARKitWorldPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E048;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  sub_25AD28758(a1 + 8, (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::ARKitWorldPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ARKitWorldPose::ARKitWorldPose(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v4;
    v5 = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v5;
    LODWORD(v4) = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v7;
    LODWORD(v7) = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    CMMsl::ARKitWorldPose::~ARKitWorldPose(&v9);
  }

  return a1;
}

uint64_t CMMsl::ARKitWorldPose::formatText(CMMsl::ARKitWorldPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "attitude", v7);
  }

  v8 = *(this + 56);
  if ((v8 & 2) != 0)
  {
    v9 = *(this + 10);
    PB::TextFormatter::format(a2, "status");
    v8 = *(this + 56);
    if ((v8 & 1) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  v8 = *(this + 56);
  if ((v8 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "x", *(this + 11));
  v8 = *(this + 56);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "y", *(this + 12));
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "z", *(this + 13));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ARKitWorldPose::readFrom(CMMsl::ARKitWorldPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_103;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_103;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v22 == 4)
      {
        *(this + 56) |= 0x10u;
        v34 = *(a2 + 1);
        if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
        {
          goto LABEL_95;
        }

        *(this + 13) = *(*a2 + v34);
LABEL_46:
        v36 = *(a2 + 1) + 4;
LABEL_98:
        *(a2 + 1) = v36;
        goto LABEL_99;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          *(this + 56) |= 2u;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v53 = 0;
            v54 = 0;
            v29 = 0;
            v55 = (v26 + v25);
            v18 = v24 >= v25;
            v56 = v24 - v25;
            if (!v18)
            {
              v56 = 0;
            }

            v57 = v25 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_88;
              }

              v58 = *v55;
              *(a2 + 1) = v57;
              v29 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v55;
              --v56;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
LABEL_74:
                LODWORD(v29) = 0;
                goto LABEL_88;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            while (1)
            {
              *(a2 + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
              if (v14)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_88:
          *(this + 10) = v29;
          goto LABEL_99;
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_99;
      }

      if ((v10 & 7) != 2)
      {
        v60 = *(this + 2);
        v59 = *(this + 3);
        if (v60 >= v59)
        {
          v62 = *(this + 1);
          v63 = v60 - v62;
          v64 = (v60 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
LABEL_107:
            sub_25AAE66B8();
          }

          v66 = v59 - v62;
          if (v66 >> 2 > v65)
          {
            v65 = v66 >> 2;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v67 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_25AD28710(v67);
          }

          v68 = (v60 - v62) >> 3;
          v69 = (8 * v64);
          v70 = (8 * v64 - 8 * v68);
          *v69 = 0;
          v61 = v69 + 1;
          memcpy(v70, v62, v63);
          v71 = *(this + 1);
          *(this + 1) = v70;
          *(this + 2) = v61;
          *(this + 3) = 0;
          if (v71)
          {
            operator delete(v71);
          }
        }

        else
        {
          *v60 = 0;
          v61 = v60 + 8;
        }

        *(this + 2) = v61;
        v72 = *(a2 + 1);
        if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
        {
LABEL_95:
          *(a2 + 24) = 1;
          goto LABEL_99;
        }

        *(v61 - 1) = *(*a2 + v72);
LABEL_97:
        v36 = *(a2 + 1) + 8;
        goto LABEL_98;
      }

      if (PB::Reader::placeMark())
      {
LABEL_105:
        v73 = 0;
        return v73 & 1;
      }

      v37 = *(a2 + 1);
      v38 = *(a2 + 2);
      while (v37 < v38 && (*(a2 + 24) & 1) == 0)
      {
        v40 = *(this + 2);
        v39 = *(this + 3);
        if (v40 >= v39)
        {
          v42 = *(this + 1);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
            goto LABEL_107;
          }

          v46 = v39 - v42;
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_25AD28710(v47);
          }

          v48 = (v40 - v42) >> 3;
          v49 = (8 * v44);
          v50 = (8 * v44 - 8 * v48);
          *v49 = 0;
          v41 = v49 + 1;
          memcpy(v50, v42, v43);
          v51 = *(this + 1);
          *(this + 1) = v50;
          *(this + 2) = v41;
          *(this + 3) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v40 = 0;
          v41 = v40 + 8;
        }

        *(this + 2) = v41;
        v52 = *(a2 + 1);
        if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v41 - 1) = *(*a2 + v52);
        v38 = *(a2 + 2);
        v37 = *(a2 + 1) + 8;
        *(a2 + 1) = v37;
      }

      PB::Reader::recallMark();
LABEL_99:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    switch(v22)
    {
      case 1:
        *(this + 56) |= 1u;
        v33 = *(a2 + 1);
        if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(a2 + 2))
        {
          goto LABEL_95;
        }

        *(this + 4) = *(*a2 + v33);
        goto LABEL_97;
      case 2:
        *(this + 56) |= 4u;
        v35 = *(a2 + 1);
        if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
        {
          goto LABEL_95;
        }

        *(this + 11) = *(*a2 + v35);
        goto LABEL_46;
      case 3:
        *(this + 56) |= 8u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
        {
          goto LABEL_95;
        }

        *(this + 12) = *(*a2 + v23);
        goto LABEL_46;
    }

    goto LABEL_17;
  }

LABEL_103:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t CMMsl::ARKitWorldPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      this = PB::Writer::write(a2, *(v3 + 48));
      if ((*(v3 + 56) & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0x10) != 0)
  {
LABEL_5:
    this = PB::Writer::write(a2, *(v3 + 52));
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  if ((*(v3 + 56) & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::ARKitWorldPose::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v5 = (*(a2 + 56) & 2) == 0;
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*(a2 + 56) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

uint64_t CMMsl::ARKitWorldPose::hash_value(CMMsl::ARKitWorldPose *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v4 = 0;
    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (*(this + 4) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 4);
  }

  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = *(this + 11);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = LODWORD(v3);
  }

  if ((*(this + 56) & 8) != 0)
  {
LABEL_7:
    v5 = *(this + 12);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = LODWORD(v5);
    }

    if ((*(this + 56) & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_11:
    v7 = *(this + 13);
    if (v7 == 0.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = LODWORD(v7);
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
LABEL_21:
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = PBHashBytes();
  if ((*(this + 56) & 2) != 0)
  {
    v12 = *(this + 10);
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v12 ^ v11;
}

void *CMMsl::ARSessionState::ARSessionState(void *this)
{
  *this = &unk_286C1E080;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1E080;
  this[1] = 0;
  return this;
}

void CMMsl::ARSessionState::~ARSessionState(CMMsl::ARSessionState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ARSessionState::ARSessionState(uint64_t this, const CMMsl::ARSessionState *a2)
{
  *this = &unk_286C1E080;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_286C1E080;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::ARSessionState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C1E080;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C1E080;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ARSessionState *a2, CMMsl::ARSessionState *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::ARSessionState::ARSessionState(uint64_t result, uint64_t a2)
{
  *result = &unk_286C1E080;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C1E080;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::ARSessionState::formatText(CMMsl::ARSessionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "state");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ARSessionState::readFrom(CMMsl::ARSessionState *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::ARSessionState::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::ARSessionState::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::ARSessionState::hash_value(CMMsl::ARSessionState *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::Accel::Accel(uint64_t this)
{
  *this = &unk_286C1E0B8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C1E0B8;
  *(this + 32) = 0;
  return this;
}

void CMMsl::Accel::~Accel(CMMsl::Accel *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Accel::Accel(uint64_t this, const CMMsl::Accel *a2)
{
  *this = &unk_286C1E0B8;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 28) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::Accel::operator=(uint64_t a1, const CMMsl::Accel *a2)
{
  if (a1 != a2)
  {
    CMMsl::Accel::Accel(v8, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v4;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::Accel *a2, CMMsl::Accel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

float CMMsl::Accel::Accel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E0B8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1E0B8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::Accel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = &unk_286C1E0B8;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v16 = *(a1 + 32);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v8 = *(a1 + 20);
    v9 = *(a2 + 20);
    *(a1 + 32) = v3;
    *(a1 + 20) = v9;
    v14 = v8;
    LODWORD(v8) = *(a1 + 28);
    *(a1 + 28) = v5;
    v15 = v8;
    v10 = *(a1 + 16);
    *(a1 + 16) = v6;
    v13 = v10;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::Accel::formatText(CMMsl::Accel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "location");
    v5 = *(this + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "x", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "y", *(this + 6));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "z", *(this + 7));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Accel::readFrom(CMMsl::Accel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_45:
          *(a2 + 24) = 1;
          goto LABEL_61;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_45;
        }

        *(this + 5) = *(*a2 + v2);
LABEL_42:
        v2 = *(a2 + 1) + 4;
LABEL_55:
        *(a2 + 1) = v2;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        case 4:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_42;
        case 5:
          *(this + 32) |= 2u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v31 = 0;
            v32 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v33 = (v24 + v23);
            v34 = v2 - v23;
            v35 = v23 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_60;
              }

              v36 = v35;
              v37 = *v33;
              *(a2 + 1) = v36;
              v27 |= (v37 & 0x7F) << v31;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              ++v33;
              --v34;
              v35 = v36 + 1;
              v14 = v32++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_59;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_59:
            v2 = v36;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_60:
          *(this + 4) = v27;
          goto LABEL_61;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_61:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::Accel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 28));
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::Accel::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::Accel::hash_value(CMMsl::Accel *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_9:
    v6 = *(this + 7);
    v7 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v8 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
  }

LABEL_18:
  v7 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v8 = *(this + 4);
  return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
}

void *CMMsl::Accel800::Accel800(void *this)
{
  *this = &unk_286C1E0F0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1E0F0;
  this[1] = 0;
  return this;
}

void CMMsl::Accel800::~Accel800(CMMsl::Accel800 *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1E0F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::Accel800::~Accel800(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::Accel800::Accel800(void *this, const CMMsl::Accel800 *a2)
{
  *this = &unk_286C1E0F0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::Accel800 *CMMsl::Accel800::operator=(const CMMsl::Accel800 *a1, const CMMsl::Accel800 *a2)
{
  if (a1 != a2)
  {
    CMMsl::Accel800::Accel800(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::Accel800::~Accel800(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::Accel800 *a2, CMMsl::Accel800 *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::Accel800::Accel800(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1E0F0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1E0F0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::Accel800::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1E0F0;
    v6[1] = v4;
    CMMsl::Accel800::~Accel800(v6);
  }

  return a1;
}

uint64_t CMMsl::Accel800::formatText(CMMsl::Accel800 *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Accel800::readFrom(CMMsl::Accel800 *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::Accel800::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::Accel800::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

CMMsl::Accel *CMMsl::Accel800::hash_value(CMMsl::Accel800 *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::Accel800::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccelBatch::AccelBatch(uint64_t this)
{
  *this = &unk_286C1E128;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C1E128;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccelBatch::~AccelBatch(CMMsl::AccelBatch *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::AccelBatch::AccelBatch(uint64_t this, const CMMsl::AccelBatch *a2)
{
  *this = &unk_286C1E128;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 28) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::AccelBatch::operator=(uint64_t a1, const CMMsl::AccelBatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelBatch::AccelBatch(v8, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v4;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccelBatch *a2, CMMsl::AccelBatch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

float CMMsl::AccelBatch::AccelBatch(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E128;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1E128;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::AccelBatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = &unk_286C1E128;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v16 = *(a1 + 32);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v8 = *(a1 + 20);
    v9 = *(a2 + 20);
    *(a1 + 32) = v3;
    *(a1 + 20) = v9;
    v14 = v8;
    LODWORD(v8) = *(a1 + 28);
    *(a1 + 28) = v5;
    v15 = v8;
    v10 = *(a1 + 16);
    *(a1 + 16) = v6;
    v13 = v10;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::AccelBatch::formatText(CMMsl::AccelBatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "batch");
    v5 = *(this + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "x", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "y", *(this + 6));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "z", *(this + 7));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AccelBatch::readFrom(CMMsl::AccelBatch *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_45:
          *(a2 + 24) = 1;
          goto LABEL_61;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_45;
        }

        *(this + 5) = *(*a2 + v2);
LABEL_42:
        v2 = *(a2 + 1) + 4;
LABEL_55:
        *(a2 + 1) = v2;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        case 4:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_42;
        case 5:
          *(this + 32) |= 2u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v31 = 0;
            v32 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v33 = (v24 + v23);
            v34 = v2 - v23;
            v35 = v23 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_60;
              }

              v36 = v35;
              v37 = *v33;
              *(a2 + 1) = v36;
              v27 |= (v37 & 0x7F) << v31;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              ++v33;
              --v34;
              v35 = v36 + 1;
              v14 = v32++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_59;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_59:
            v2 = v36;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_60:
          *(this + 4) = v27;
          goto LABEL_61;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_61:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::AccelBatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 28));
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::AccelBatch::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::AccelBatch::hash_value(CMMsl::AccelBatch *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_9:
    v6 = *(this + 7);
    v7 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v8 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
  }

LABEL_18:
  v7 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v8 = *(this + 4);
  return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
}

double CMMsl::AccelBiasEstimate::AccelBiasEstimate(CMMsl::AccelBiasEstimate *this)
{
  *this = &unk_286C1E160;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C1E160;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::AccelBiasEstimate::~AccelBiasEstimate(CMMsl::AccelBiasEstimate *this)
{
  *this = &unk_286C1E160;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccelBiasEstimate::~AccelBiasEstimate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::AccelBiasEstimate *CMMsl::AccelBiasEstimate::AccelBiasEstimate(CMMsl::AccelBiasEstimate *this, const CMMsl::AccelBiasEstimate *a2)
{
  *this = &unk_286C1E160;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 80) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 80) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v6 = *(a2 + 80);
  if ((v6 & 8) == 0)
  {
    if ((*(a2 + 80) & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(a2 + 18);
    *(this + 80) |= 4u;
    *(this + 18) = v10;
    if ((*(a2 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_8;
  }

  v9 = *(a2 + 76);
  *(this + 80) |= 8u;
  *(this + 76) = v9;
  v6 = *(a2 + 80);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    v7 = *(a2 + 7);
    *(this + 80) |= 1u;
    *(this + 7) = v7;
  }

  return this;
}

uint64_t CMMsl::AccelBiasEstimate::operator=(uint64_t a1, const CMMsl::AccelBiasEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelBiasEstimate::AccelBiasEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::AccelBiasEstimate::~AccelBiasEstimate(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccelBiasEstimate *a2, CMMsl::AccelBiasEstimate *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  LOBYTE(v10) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v10;
  LODWORD(v10) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::AccelBiasEstimate::AccelBiasEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E160;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::AccelBiasEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelBiasEstimate::AccelBiasEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::AccelBiasEstimate::~AccelBiasEstimate(v11);
  }

  return a1;
}

uint64_t CMMsl::AccelBiasEstimate::formatText(CMMsl::AccelBiasEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "covUT", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "est", v10);
  }

  v11 = *(this + 80);
  if ((v11 & 8) != 0)
  {
    v12 = *(this + 76);
    PB::TextFormatter::format(a2, "isCandidate");
    v11 = *(this + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(this + 18);
  PB::TextFormatter::format(a2, "numSamplesInAverage");
  v11 = *(this + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "temperature", *(this + 7));
  if ((*(this + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AccelBiasEstimate::readFrom(CMMsl::AccelBiasEstimate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      if (v23 == 4)
      {
        *(this + 80) |= 8u;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2))
        {
          v45 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v43 = v42 + 1;
          v44 = *(*a2 + v42);
          *(a2 + 1) = v43;
          v45 = v44 != 0;
        }

        *(this + 76) = v45;
        goto LABEL_129;
      }

      if (v23 == 5)
      {
        *(this + 80) |= 4u;
        v63 = *(a2 + 1);
        v62 = *(a2 + 2);
        v64 = *a2;
        if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
        {
          v71 = 0;
          v72 = 0;
          v67 = 0;
          v73 = (v64 + v63);
          v18 = v62 >= v63;
          v74 = v62 - v63;
          if (!v18)
          {
            v74 = 0;
          }

          v75 = v63 + 1;
          while (1)
          {
            if (!v74)
            {
              LODWORD(v67) = 0;
              *(a2 + 24) = 1;
              goto LABEL_117;
            }

            v76 = *v73;
            *(a2 + 1) = v75;
            v67 |= (v76 & 0x7F) << v71;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            ++v73;
            --v74;
            ++v75;
            v14 = v72++ > 8;
            if (v14)
            {
LABEL_91:
              LODWORD(v67) = 0;
              goto LABEL_117;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v67) = 0;
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = (v64 + v63);
          v69 = v63 + 1;
          while (1)
          {
            *(a2 + 1) = v69;
            v70 = *v68++;
            v67 |= (v70 & 0x7F) << v65;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            ++v69;
            v14 = v66++ > 8;
            if (v14)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_117:
        *(this + 18) = v67;
        goto LABEL_129;
      }

      if (v23 != 6)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_129;
      }

      *(this + 80) |= 1u;
      v40 = *(a2 + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
      {
        goto LABEL_126;
      }

      *(this + 7) = *(*a2 + v40);
    }

    else if (v23 == 1)
    {
      *(this + 80) |= 2u;
      v41 = *(a2 + 1);
      if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
      {
        goto LABEL_126;
      }

      *(this + 8) = *(*a2 + v41);
    }

    else
    {
      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_135:
            v103 = 0;
            return v103 & 1;
          }

          v46 = *(a2 + 1);
          v47 = *(a2 + 2);
          while (v46 < v47 && (*(a2 + 24) & 1) == 0)
          {
            v49 = *(this + 5);
            v48 = *(this + 6);
            if (v49 >= v48)
            {
              v51 = *(this + 4);
              v52 = v49 - v51;
              v53 = (v49 - v51) >> 3;
              v54 = v53 + 1;
              if ((v53 + 1) >> 61)
              {
                goto LABEL_137;
              }

              v55 = v48 - v51;
              if (v55 >> 2 > v54)
              {
                v54 = v55 >> 2;
              }

              if (v55 >= 0x7FFFFFFFFFFFFFF8)
              {
                v56 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v56 = v54;
              }

              if (v56)
              {
                sub_25AD28710(v56);
              }

              v57 = (v49 - v51) >> 3;
              v58 = (8 * v53);
              v59 = (8 * v53 - 8 * v57);
              *v58 = 0;
              v50 = v58 + 1;
              memcpy(v59, v51, v52);
              v60 = *(this + 4);
              *(this + 4) = v59;
              *(this + 5) = v50;
              *(this + 6) = 0;
              if (v60)
              {
                operator delete(v60);
              }
            }

            else
            {
              *v49 = 0;
              v50 = v49 + 8;
            }

            *(this + 5) = v50;
            v61 = *(a2 + 1);
            if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
            {
LABEL_96:
              *(a2 + 24) = 1;
              goto LABEL_97;
            }

            *(v50 - 1) = *(*a2 + v61);
            v47 = *(a2 + 2);
            v46 = *(a2 + 1) + 8;
            *(a2 + 1) = v46;
          }

          goto LABEL_97;
        }

        v81 = *(this + 5);
        v80 = *(this + 6);
        if (v81 >= v80)
        {
          v88 = *(this + 4);
          v89 = v81 - v88;
          v90 = (v81 - v88) >> 3;
          v91 = v90 + 1;
          if ((v90 + 1) >> 61)
          {
LABEL_137:
            sub_25AAE66B8();
          }

          v92 = v80 - v88;
          if (v92 >> 2 > v91)
          {
            v91 = v92 >> 2;
          }

          if (v92 >= 0x7FFFFFFFFFFFFFF8)
          {
            v93 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v93 = v91;
          }

          if (v93)
          {
            sub_25AD28710(v93);
          }

          v98 = (v81 - v88) >> 3;
          v99 = (8 * v90);
          v100 = (8 * v90 - 8 * v98);
          *v99 = 0;
          v79 = v99 + 1;
          memcpy(v100, v88, v89);
          v101 = *(this + 4);
          *(this + 4) = v100;
          *(this + 5) = v79;
          *(this + 6) = 0;
          if (v101)
          {
            operator delete(v101);
          }
        }

        else
        {
          *v81 = 0;
          v79 = v81 + 8;
        }

        *(this + 5) = v79;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_135;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 2);
            v26 = *(this + 3);
            if (v27 >= v26)
            {
              v29 = *(this + 1);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_137;
              }

              v33 = v26 - v29;
              if (v33 >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_25AD28710(v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 1);
              *(this + 1) = v37;
              *(this + 2) = v28;
              *(this + 3) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              *v27 = 0;
              v28 = v27 + 8;
            }

            *(this + 2) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_96;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_97:
          PB::Reader::recallMark();
          goto LABEL_129;
        }

        v78 = *(this + 2);
        v77 = *(this + 3);
        if (v78 >= v77)
        {
          v82 = *(this + 1);
          v83 = v78 - v82;
          v84 = (v78 - v82) >> 3;
          v85 = v84 + 1;
          if ((v84 + 1) >> 61)
          {
            goto LABEL_137;
          }

          v86 = v77 - v82;
          if (v86 >> 2 > v85)
          {
            v85 = v86 >> 2;
          }

          if (v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v87 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v87 = v85;
          }

          if (v87)
          {
            sub_25AD28710(v87);
          }

          v94 = (v78 - v82) >> 3;
          v95 = (8 * v84);
          v96 = (8 * v84 - 8 * v94);
          *v95 = 0;
          v79 = v95 + 1;
          memcpy(v96, v82, v83);
          v97 = *(this + 1);
          *(this + 1) = v96;
          *(this + 2) = v79;
          *(this + 3) = 0;
          if (v97)
          {
            operator delete(v97);
          }
        }

        else
        {
          *v78 = 0;
          v79 = v78 + 8;
        }

        *(this + 2) = v79;
      }

      v102 = *(a2 + 1);
      if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(a2 + 2))
      {
LABEL_126:
        *(a2 + 24) = 1;
        goto LABEL_129;
      }

      *(v79 - 1) = *(*a2 + v102);
    }

    *(a2 + 1) += 8;
LABEL_129:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}

uint64_t CMMsl::AccelBiasEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 80) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 80);
  if ((v10 & 8) == 0)
  {
    if ((*(v3 + 80) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

  v11 = *(v3 + 76);
  this = PB::Writer::write(a2);
  v10 = *(v3 + 80);
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return this;
  }

LABEL_15:
  v13 = *(v3 + 56);

  return PB::Writer::write(a2, v13);
}

BOOL CMMsl::AccelBiasEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  if ((*(a1 + 80) & 8) != 0)
  {
    if ((*(a2 + 80) & 8) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    if ((*(a2 + 80) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 4) != 0)
  {
    return 0;
  }

  v8 = (*(a2 + 80) & 1) == 0;
  if (*(a1 + 80))
  {
    return (*(a2 + 80) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::AccelBiasEstimate::hash_value(CMMsl::AccelBiasEstimate *this)
{
  if ((*(this + 80) & 2) != 0)
  {
    if (*(this + 8) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  if ((*(this + 80) & 8) != 0)
  {
    v9 = *(this + 76);
    if ((*(this + 80) & 4) != 0)
    {
LABEL_8:
      v10 = *(this + 18);
      if (*(this + 80))
      {
        goto LABEL_9;
      }

LABEL_14:
      v11 = 0.0;
      return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
    }
  }

  else
  {
    v9 = 0;
    if ((*(this + 80) & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = *(this + 7);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
}

void *CMMsl::AccelGesture::AccelGesture(void *this)
{
  *this = &unk_286C1E198;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1E198;
  this[1] = 0;
  return this;
}

void CMMsl::AccelGesture::~AccelGesture(CMMsl::AccelGesture *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1E198;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccelGesture::~AccelGesture(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::AccelGesture::AccelGesture(void *this, const CMMsl::AccelGesture *a2)
{
  *this = &unk_286C1E198;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccelGesture *CMMsl::AccelGesture::operator=(const CMMsl::AccelGesture *a1, const CMMsl::AccelGesture *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelGesture::AccelGesture(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccelGesture::~AccelGesture(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccelGesture *a2, CMMsl::AccelGesture *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccelGesture::AccelGesture(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1E198;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1E198;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::AccelGesture::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1E198;
    v6[1] = v4;
    CMMsl::AccelGesture::~AccelGesture(v6);
  }

  return a1;
}

uint64_t CMMsl::AccelGesture::formatText(CMMsl::AccelGesture *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AccelGesture::readFrom(CMMsl::AccelGesture *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::AccelGesture::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::AccelGesture::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

CMMsl::Accel *CMMsl::AccelGesture::hash_value(CMMsl::AccelGesture *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AccelGesture::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccelGps::AccelGps(uint64_t this)
{
  *this = &unk_286C1E1D0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1E1D0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::AccelGps::~AccelGps(CMMsl::AccelGps *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::AccelGps::AccelGps(CMMsl::AccelGps *this, const CMMsl::AccelGps *a2)
{
  *this = &unk_286C1E1D0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 6);
  *(this + 28) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::AccelGps::operator=(uint64_t a1, const CMMsl::AccelGps *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelGps::AccelGps(&v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    v6 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v6;
    v10 = v4;
    v11 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccelGps *a2, CMMsl::AccelGps *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::AccelGps::AccelGps(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E1D0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C1E1D0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::AccelGps::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    v9[0] = &unk_286C1E1D0;
    v11 = *(a1 + 28);
    *(a1 + 28) = v3;
    v9[1] = v5;
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::AccelGps::formatText(CMMsl::AccelGps *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "x", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "y", *(this + 5));
  if ((*(this + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "z", *(this + 6));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AccelGps::readFrom(CMMsl::AccelGps *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_40;
        }

        *(this + 5) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
LABEL_39:
        *(a2 + 1) = v2;
        goto LABEL_40;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_40:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::AccelGps::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::AccelGps::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::AccelGps::hash_value(CMMsl::AccelGps *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}