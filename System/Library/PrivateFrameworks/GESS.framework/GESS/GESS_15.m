uint64_t sub_24BDBA62C(uint64_t **a1, uint64_t a2, const void **a3)
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
      v15 = *(*v3 + 32) == sub_24BDBA754;
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

void sub_24BDBA84C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD4C0A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDBA884(uint64_t *a1)
{
  v29 = a1;
  v1 = std::__thread_local_data();
  v2 = *v29;
  *v29 = 0;
  pthread_setspecific(v1->__key_, v2);
  v3 = v29;
  v4 = v29[1];
  v5 = v29[5];
  pthread_set_qos_class_self_np(*v29[4], 0);
  v6 = v5 >> 6;
  v7 = 1 << v5;
  v8 = ~(1 << v5);
  do
  {
    v9 = *(v4 + 40);
    if (v9)
    {
      if ((*(*v9 + 48))(v9))
      {
        break;
      }
    }

    v36 = 0uLL;
    v37 = 0;
    std::mutex::lock((v4 + 208));
    v10 = v3[2];
    if (v10[5])
    {
      v11 = *(v10[1] + 8 * (v10[4] / 0xAAuLL)) + 24 * (v10[4] % 0xAAuLL);
      v13 = *v11;
      v12 = *(v11 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(&v36 + 1);
      *&v36 = v13;
      *(&v36 + 1) = v12;
      if (v14)
      {
        sub_24BC9EC78(v14);
      }

      v37 = *(v11 + 16);
      sub_24BDBAD88(v3[2]);
      *(*v3[3] + 8 * v6) &= v8;
    }

    std::mutex::unlock((v4 + 208));
    if (v36)
    {
      __ns.__rep_ = 0;
      v34 = 0;
      v35 = 0;
      memset(__p, 0, sizeof(__p));
      v15 = *(&v36 + 1);
      v31 = v36;
      if (*(&v36 + 1))
      {
        atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v16 = sub_24BDB8A14(v4, &v31, v37, &__ns.__rep_, __p);
      if (v15)
      {
        sub_24BC9EC78(v15);
      }

      v17 = *(v4 + 40);
      if (v17 && ((*(*v17 + 48))(v17) & 1) != 0)
      {
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        __p[0] = &__ns;
        sub_24BCB7FC8(__p);
        goto LABEL_36;
      }

      if (v16)
      {
        std::mutex::lock((v4 + 208));
        sub_24BCB820C((v4 + 152), &v36);
      }

      else
      {
        std::mutex::lock((v4 + 208));
        rep = __ns.__rep_;
        if (v34 != __ns.__rep_)
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = v3[2];
            v30[0] = __p[0] + 8 * (v25 >> 6);
            v30[1] = 1 << v25;
            sub_24BDBA1A4(v26, (rep + v24), v30);
            ++v25;
            rep = __ns.__rep_;
            v24 += 16;
          }

          while (v25 < (v34 - __ns.__rep_) >> 4);
        }
      }

      std::mutex::unlock((v4 + 208));
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      __p[0] = &__ns;
      sub_24BCB7FC8(__p);
    }

    else
    {
      __ns.__rep_ = 100000000;
      std::this_thread::sleep_for (&__ns);
      std::mutex::lock((v4 + 208));
      *(*v3[3] + 8 * v6) |= v7;
      std::mutex::unlock((v4 + 208));
      std::mutex::lock((v4 + 208));
      v18 = v3[3];
      v19 = v18[1];
      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = 0;
      v21 = *v18;
      v22 = 1;
      do
      {
        v22 &= *(v21 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20;
        ++v20;
      }

      while (v19 != v20);
      if (v22)
      {
LABEL_26:
        if (!*(v3[2] + 5))
        {
          std::mutex::unlock((v4 + 208));
LABEL_36:
          v27 = 0;
          goto LABEL_37;
        }
      }

      std::mutex::unlock((v4 + 208));
    }

    v27 = 1;
LABEL_37:
    if (*(&v36 + 1))
    {
      sub_24BC9EC78(*(&v36 + 1));
    }
  }

  while ((v27 & 1) != 0);
  sub_24BDBAD40(&v29);
  return 0;
}

uint64_t **sub_24BDBAD40(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_24BD4C0A8(v2);
    MEMORY[0x24C2548B0](v3, 0x1030C408CF434AALL);
  }

  return a1;
}

uint64_t sub_24BDBAD88(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA) + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_24BDBAE0C(a1, 1);
}

uint64_t sub_24BDBAE0C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

std::thread *sub_24BDBAE6C(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_24BDBAF14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24BDBAF64(uint64_t **a1, uint64_t a2, const void **a3)
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
      v15 = *(*v3 + 32) == sub_24BDBB08C;
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

void *sub_24BDBB0A0(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_24BDBB174(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 2;
  v242 = a2 - 6;
  v243 = a2 - 4;
  k = a1;
  v251 = a2;
  v245 = a2 - 2;
  while (1)
  {
    a1 = k;
    v11 = (a2 - k) >> 4;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          sub_24BDBC2C8(a1, a1 + 2, v9, a3);
          return;
        case 4:
          sub_24BDBC59C(a1, a1 + 2, a1 + 4, v9, a3);
          return;
        case 5:
          sub_24BDBC788(a1, a1 + 2, a1 + 4, a1 + 6, v9, a3);
          return;
      }

      goto LABEL_9;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v125 = a1 + 2;
      v127 = a1 == a2 || v125 == a2;
      if (a5)
      {
        if (v127)
        {
          return;
        }

        v128 = 0;
        v129 = a1;
        while (1)
        {
          v130 = v129;
          v129 = v125;
          v131 = v130[2];
          v132 = (*(v131 + 160) - *(v131 + 152)) >> 2;
          v133 = *(*v130 + 160) - *(*v130 + 152);
          if (v132 < v133 >> 2)
          {
            goto LABEL_117;
          }

          if (v132 == v133 >> 2)
          {
            v144 = *a3;
            v254 = v130[2];
            v145 = *sub_24BDBCD18(v144, &v254);
            v146 = *a3;
            v253 = *v130;
            if (v145 < *sub_24BDBCD18(v146, &v253))
            {
              break;
            }
          }

LABEL_132:
          v125 = v129 + 2;
          v128 += 16;
          if (v129 + 2 == a2)
          {
            return;
          }
        }

        v131 = *v129;
LABEL_117:
        v134 = v130[3];
        v135 = v128;
        *v129 = 0;
        v129[1] = 0;
        while (1)
        {
          v136 = a1 + v135;
          v137 = *(a1 + v135);
          *v136 = 0;
          *(v136 + 1) = 0;
          v138 = *(a1 + v135 + 24);
          *(v136 + 1) = v137;
          if (v138)
          {
            sub_24BC9EC78(v138);
          }

          if (!v135)
          {
            v147 = a1;
            goto LABEL_130;
          }

          v139 = (*(v131 + 160) - *(v131 + 152)) >> 2;
          v140 = *(*(a1 + v135 - 16) + 160) - *(*(a1 + v135 - 16) + 152);
          if (v139 >= v140 >> 2)
          {
            if (v139 != v140 >> 2)
            {
              break;
            }

            v141 = *a3;
            v254 = v131;
            v142 = *sub_24BDBCD18(v141, &v254);
            v143 = *a3;
            v253 = *(a1 + v135 - 16);
            if (v142 >= *sub_24BDBCD18(v143, &v253))
            {
              break;
            }
          }

          v135 -= 16;
        }

        v147 = (a1 + v135);
LABEL_130:
        v148 = v147[1];
        *v147 = v131;
        v147[1] = v134;
        if (v148)
        {
          sub_24BC9EC78(v148);
        }

        goto LABEL_132;
      }

      if (v127)
      {
        return;
      }

      for (i = a1 + 1; ; i += 2)
      {
        v225 = a1;
        a1 = v125;
        v226 = v225[2];
        v227 = (*(v226 + 160) - *(v226 + 152)) >> 2;
        v228 = *(*v225 + 160) - *(*v225 + 152);
        if (v227 < v228 >> 2)
        {
          goto LABEL_208;
        }

        if (v227 == v228 >> 2)
        {
          v239 = *a3;
          v254 = v225[2];
          v240 = *sub_24BDBCD18(v239, &v254);
          v241 = *a3;
          v253 = *v225;
          if (v240 < *sub_24BDBCD18(v241, &v253))
          {
            break;
          }
        }

LABEL_220:
        v125 = a1 + 2;
        if (a1 + 2 == a2)
        {
          return;
        }
      }

      v226 = *a1;
LABEL_208:
      v229 = v225[3];
      v230 = i;
      *a1 = 0;
      a1[1] = 0;
      while (1)
      {
        v231 = *(v230 - 1);
        *(v230 - 1) = 0;
        *v230 = 0;
        v232 = v230[2];
        *(v230 + 1) = v231;
        if (v232)
        {
          sub_24BC9EC78(v232);
        }

        v233 = (*(v226 + 160) - *(v226 + 152)) >> 2;
        v234 = *(*(v230 - 3) + 160) - *(*(v230 - 3) + 152);
        if (v233 >= v234 >> 2)
        {
          if (v233 != v234 >> 2)
          {
            break;
          }

          v235 = *a3;
          v254 = v226;
          v236 = *sub_24BDBCD18(v235, &v254);
          v237 = *a3;
          v253 = *(v230 - 3);
          if (v236 >= *sub_24BDBCD18(v237, &v253))
          {
            break;
          }
        }

        v230 -= 2;
      }

      v238 = *v230;
      *(v230 - 1) = v226;
      *v230 = v229;
      if (v238)
      {
        sub_24BC9EC78(v238);
      }

      goto LABEL_220;
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v149 = (v11 - 2) >> 1;
      v150 = v149;
      while (1)
      {
        v151 = v150;
        if (v149 >= v150)
        {
          v244 = v150;
          v152 = (2 * v150) | 1;
          v153 = &a1[2 * v152];
          v154 = 2 * v150 + 2;
          if (v154 < v11)
          {
            v155 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
            v156 = *(v153[2] + 160) - *(v153[2] + 152);
            if (v155 < v156 >> 2 || v155 == v156 >> 2 && (v157 = *a3, v254 = *v153, v158 = *sub_24BDBCD18(v157, &v254), v159 = *a3, v253 = v153[2], v70 = v158 >= *sub_24BDBCD18(v159, &v253), v149 = (v11 - 2) >> 1, !v70))
            {
              v153 += 2;
              v152 = v154;
            }
          }

          v151 = v244;
          v160 = &a1[2 * v244];
          v161 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
          v162 = *v160;
          v163 = *(*v160 + 160) - *(*v160 + 152);
          if (v161 >= v163 >> 2)
          {
            if (v161 != v163 >> 2)
            {
              goto LABEL_149;
            }

            v164 = *a3;
            v254 = *v153;
            v165 = *sub_24BDBCD18(v164, &v254);
            v166 = *a3;
            v253 = *v160;
            v70 = v165 >= *sub_24BDBCD18(v166, &v253);
            v151 = v244;
            a2 = v251;
            if (v70)
            {
              v162 = *v160;
LABEL_149:
              v248 = v160[1];
              *v160 = 0;
              v160[1] = 0;
              while (1)
              {
                v167 = v153;
                v168 = *v153;
                *v153 = 0;
                v153[1] = 0;
                v169 = v160[1];
                *v160 = v168;
                if (v169)
                {
                  sub_24BC9EC78(v169);
                }

                if (v149 < v152)
                {
                  break;
                }

                v170 = 2 * v152;
                v152 = (2 * v152) | 1;
                v153 = &a1[2 * v152];
                v171 = v170 + 2;
                if (v170 + 2 < v11)
                {
                  v172 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
                  v173 = *(v153[2] + 160) - *(v153[2] + 152);
                  if (v172 < v173 >> 2 || v172 == v173 >> 2 && (v174 = *a3, v254 = *v153, v175 = *sub_24BDBCD18(v174, &v254), v176 = *a3, v253 = v153[2], v70 = v175 >= *sub_24BDBCD18(v176, &v253), v149 = (v11 - 2) >> 1, !v70))
                  {
                    v153 += 2;
                    v152 = v171;
                  }
                }

                v177 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
                v178 = *(v162 + 160) - *(v162 + 152);
                if (v177 < v178 >> 2)
                {
                  break;
                }

                if (v177 == v178 >> 2)
                {
                  v179 = *a3;
                  v254 = *v153;
                  v180 = *sub_24BDBCD18(v179, &v254);
                  v181 = *a3;
                  v253 = v162;
                  v160 = v167;
                  v149 = (v11 - 2) >> 1;
                  if (v180 < *sub_24BDBCD18(v181, &v253))
                  {
                    break;
                  }
                }

                else
                {
                  v160 = v167;
                }
              }

              v182 = v167[1];
              *v167 = v162;
              v167[1] = v248;
              a2 = v251;
              v151 = v244;
              if (v182)
              {
                sub_24BC9EC78(v182);
              }
            }
          }

          else
          {
            a2 = v251;
          }
        }

        v150 = v151 - 1;
        if (!v151)
        {
          while (1)
          {
            v187 = 0;
            v246 = *a1;
            v249 = a1[1];
            v252 = a2;
            *a1 = 0;
            a1[1] = 0;
            v188 = a1;
            do
            {
              v189 = &v188[2 * v187];
              v190 = v189 + 2;
              v191 = 2 * v187;
              v187 = (2 * v187) | 1;
              v192 = v191 + 2;
              if (v191 + 2 < v11)
              {
                v194 = v189[4];
                v193 = v189 + 4;
                v195 = (*(*(v193 - 2) + 160) - *(*(v193 - 2) + 152)) >> 2;
                v196 = *(v194 + 160) - *(v194 + 152);
                if (v195 < v196 >> 2 || v195 == v196 >> 2 && (v197 = *a3, v254 = *(v193 - 2), v198 = *sub_24BDBCD18(v197, &v254), v199 = *a3, v253 = *v193, v198 < *sub_24BDBCD18(v199, &v253)))
                {
                  v190 = v193;
                  v187 = v192;
                }
              }

              v200 = *v190;
              *v190 = 0;
              v190[1] = 0;
              v201 = v188[1];
              *v188 = v200;
              if (v201)
              {
                sub_24BC9EC78(v201);
              }

              v188 = v190;
            }

            while (v187 <= ((v11 - 2) >> 1));
            a2 = v252 - 2;
            if (v190 != v252 - 2)
            {
              break;
            }

            v220 = v190[1];
            *v190 = v246;
            v190[1] = v249;
            if (v220)
            {
              goto LABEL_198;
            }

LABEL_199:
            v206 = v11-- <= 2;
            if (v206)
            {
              return;
            }
          }

          v202 = *(v252 - 1);
          *a2 = 0;
          *(v252 - 1) = 0;
          v203 = v190[1];
          *v190 = v202;
          if (v203)
          {
            sub_24BC9EC78(v203);
          }

          v204 = *(v252 - 1);
          *(v252 - 2) = v246;
          *(v252 - 1) = v249;
          if (v204)
          {
            sub_24BC9EC78(v204);
          }

          v205 = ((v190 + 2) - a1) >> 4;
          v206 = v205 < 2;
          v207 = v205 - 2;
          if (v206)
          {
            goto LABEL_199;
          }

          v208 = v207 >> 1;
          v209 = &a1[2 * (v207 >> 1)];
          v210 = (*(*v209 + 160) - *(*v209 + 152)) >> 2;
          v186 = *v190;
          v211 = *(*v190 + 160) - *(*v190 + 152);
          if (v210 >= v211 >> 2)
          {
            if (v210 != v211 >> 2)
            {
              goto LABEL_199;
            }

            v183 = *a3;
            v254 = *v209;
            v184 = *sub_24BDBCD18(v183, &v254);
            v185 = *a3;
            v253 = *v190;
            if (v184 >= *sub_24BDBCD18(v185, &v253))
            {
              goto LABEL_199;
            }

            v186 = *v190;
          }

          v250 = v190[1];
          *v190 = 0;
          v190[1] = 0;
          while (1)
          {
            v212 = v209;
            v213 = *v209;
            *v209 = 0;
            v209[1] = 0;
            v214 = v190[1];
            *v190 = v213;
            if (v214)
            {
              sub_24BC9EC78(v214);
            }

            if (!v208)
            {
              break;
            }

            v208 = (v208 - 1) >> 1;
            v209 = &a1[2 * v208];
            v215 = (*(*v209 + 160) - *(*v209 + 152)) >> 2;
            v216 = *(v186 + 160) - *(v186 + 152);
            if (v215 >= v216 >> 2)
            {
              if (v215 != v216 >> 2)
              {
                break;
              }

              v217 = *a3;
              v254 = *v209;
              v218 = *sub_24BDBCD18(v217, &v254);
              v219 = *a3;
              v253 = v186;
              v190 = v212;
              if (v218 >= *sub_24BDBCD18(v219, &v253))
              {
                break;
              }
            }

            else
            {
              v190 = v212;
            }
          }

          v220 = v212[1];
          *v212 = v186;
          v212[1] = v250;
          if (!v220)
          {
            goto LABEL_199;
          }

LABEL_198:
          sub_24BC9EC78(v220);
          goto LABEL_199;
        }
      }
    }

    v12 = &a1[2 * (v11 >> 1)];
    if (v11 < 0x81)
    {
      sub_24BDBC2C8(&a1[2 * (v11 >> 1)], a1, v9, a3);
    }

    else
    {
      sub_24BDBC2C8(a1, &a1[2 * (v11 >> 1)], v9, a3);
      sub_24BDBC2C8(a1 + 2, v12 - 2, v243, a3);
      sub_24BDBC2C8(a1 + 4, &a1[2 * (v11 >> 1) + 2], v242, a3);
      sub_24BDBC2C8(v12 - 2, &a1[2 * (v11 >> 1)], &a1[2 * (v11 >> 1) + 2], a3);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
    }

    --a4;
    if ((a5 & 1) != 0 || (v14 = (*(*(a1 - 2) + 160) - *(*(a1 - 2) + 152)) >> 2, v15 = *(*a1 + 160) - *(*a1 + 152), v14 < v15 >> 2) || v14 == v15 >> 2 && (v16 = *a3, v254 = *(a1 - 2), v17 = *sub_24BDBCD18(v16, &v254), v18 = *a3, v253 = *a1, v17 < *sub_24BDBCD18(v18, &v253)))
    {
      v19 = *a1;
      v20 = a1[1];
      v21 = 2;
      *a1 = 0;
      a1[1] = 0;
      while (1)
      {
        v22 = (*(a1[v21] + 160) - *(a1[v21] + 152)) >> 2;
        v23 = *(v19 + 160) - *(v19 + 152);
        if (v22 >= v23 >> 2)
        {
          if (v22 != v23 >> 2)
          {
            break;
          }

          v24 = *a3;
          v254 = a1[v21];
          v25 = *sub_24BDBCD18(v24, &v254);
          v26 = *a3;
          v253 = v19;
          if (v25 >= *sub_24BDBCD18(v26, &v253))
          {
            break;
          }
        }

        v21 += 2;
      }

      v27 = &a1[v21];
      if (v21 == 2)
      {
        v32 = v251;
        if (v27 < v251)
        {
          v38 = *v9;
          v39 = (*(*v9 + 160) - *(*v9 + 152)) >> 2;
          v41 = *(v19 + 152);
          v40 = *(v19 + 160);
          v32 = v9;
          if (v39 >= (v40 - v41) >> 2)
          {
            v42 = (v40 - v41) >> 2;
            v32 = v9;
            do
            {
              if (v39 == v42)
              {
                v43 = *a3;
                v254 = v38;
                v44 = *sub_24BDBCD18(v43, &v254);
                v45 = *a3;
                v253 = v19;
                v46 = sub_24BDBCD18(v45, &v253);
                if (v27 >= v32 || v44 < *v46)
                {
                  break;
                }

                v41 = *(v19 + 152);
                v40 = *(v19 + 160);
              }

              else if (v27 >= v32)
              {
                break;
              }

              v47 = *(v32 - 2);
              v32 -= 2;
              v38 = v47;
              v39 = (*(v47 + 160) - *(v47 + 152)) >> 2;
              v42 = (v40 - v41) >> 2;
            }

            while (v39 >= v42);
          }
        }
      }

      else
      {
        v28 = *v9;
        v29 = (*(*v9 + 160) - *(*v9 + 152)) >> 2;
        v31 = *(v19 + 152);
        v30 = *(v19 + 160);
        v32 = v9;
        if (v29 >= (v30 - v31) >> 2)
        {
          v33 = (v30 - v31) >> 2;
          v32 = v9;
          do
          {
            if (v29 == v33)
            {
              v34 = *a3;
              v254 = v28;
              v35 = *sub_24BDBCD18(v34, &v254);
              v36 = *a3;
              v253 = v19;
              if (v35 < *sub_24BDBCD18(v36, &v253))
              {
                break;
              }

              v31 = *(v19 + 152);
              v30 = *(v19 + 160);
            }

            v37 = *(v32 - 2);
            v32 -= 2;
            v28 = v37;
            v29 = (*(v37 + 160) - *(v37 + 152)) >> 2;
            v33 = (v30 - v31) >> 2;
          }

          while (v29 >= v33);
        }
      }

      v48 = v20;
      k = v27;
      if (v27 < v32)
      {
        v49 = v32;
        do
        {
          v50 = *k;
          *k = *v49;
          *v49 = v50;
          v51 = k[1];
          k[1] = v49[1];
          v49[1] = v51;
          while (1)
          {
            do
            {
              k += 2;
              v52 = (*(*k + 160) - *(*k + 152)) >> 2;
              v54 = *(v19 + 152);
              v53 = *(v19 + 160);
            }

            while (v52 < (v53 - v54) >> 2);
            v55 = (v53 - v54) >> 2;
            if (v52 != v55)
            {
              break;
            }

            v56 = *a3;
            v254 = *k;
            v57 = *sub_24BDBCD18(v56, &v254);
            v58 = *a3;
            v253 = v19;
            if (v57 >= *sub_24BDBCD18(v58, &v253))
            {
              v54 = *(v19 + 152);
              v53 = *(v19 + 160);
              v55 = (v53 - v54) >> 2;
              break;
            }
          }

          v60 = *(v49 - 2);
          v49 -= 2;
          v59 = v60;
          for (j = (*(v60 + 160) - *(v60 + 152)) >> 2; j >= v55; v55 = (v53 - v54) >> 2)
          {
            if (j == v55)
            {
              v62 = *a3;
              v254 = v59;
              v63 = *sub_24BDBCD18(v62, &v254);
              v64 = *a3;
              v253 = v19;
              if (v63 < *sub_24BDBCD18(v64, &v253))
              {
                break;
              }

              v54 = *(v19 + 152);
              v53 = *(v19 + 160);
            }

            v65 = *(v49 - 2);
            v49 -= 2;
            v59 = v65;
            j = (*(v65 + 160) - *(v65 + 152)) >> 2;
          }
        }

        while (k < v49);
      }

      v66 = k - 2;
      if (k - 2 != a1)
      {
        v67 = *v66;
        *v66 = 0;
        *(k - 1) = 0;
        v68 = a1[1];
        *a1 = v67;
        if (v68)
        {
          sub_24BC9EC78(v68);
        }
      }

      v69 = *(k - 1);
      *(k - 2) = v19;
      *(k - 1) = v48;
      if (v69)
      {
        sub_24BC9EC78(v69);
      }

      v70 = v27 >= v32;
      a2 = v251;
      v9 = v245;
      if (v70)
      {
        v71 = sub_24BDBCA08(a1, k - 2, a3);
        if (sub_24BDBCA08(k, v251, a3))
        {
          a2 = k - 2;
          if (v71)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v71)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_62:
        sub_24BDBB174(a1, k - 2, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v72 = v9;
      v73 = *a1;
      v74 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v76 = *(v73 + 152);
      v75 = *(v73 + 160);
      v77 = (v75 - v76) >> 2;
      v78 = *(*v72 + 160) - *(*v72 + 152);
      if (v77 >= v78 >> 2)
      {
        if (v77 != v78 >> 2 || (v113 = *a3, v254 = v73, v114 = *sub_24BDBCD18(v113, &v254), v115 = *a3, v253 = *v245, v114 >= *sub_24BDBCD18(v115, &v253)))
        {
          for (k = a1 + 2; k < a2; k += 2)
          {
            v116 = (*(v73 + 160) - *(v73 + 152)) >> 2;
            v117 = *(*k + 160) - *(*k + 152);
            if (v116 < v117 >> 2)
            {
              break;
            }

            if (v116 == v117 >> 2)
            {
              v118 = *a3;
              v254 = v73;
              v119 = *sub_24BDBCD18(v118, &v254);
              v120 = *a3;
              v253 = *k;
              if (v119 < *sub_24BDBCD18(v120, &v253))
              {
                break;
              }
            }
          }

          goto LABEL_70;
        }

        v76 = *(v73 + 152);
        v75 = *(v73 + 160);
        v77 = (v75 - v76) >> 2;
      }

      k = a1 + 2;
      v79 = *(a1[2] + 160) - *(a1[2] + 152);
      if (v77 >= v79 >> 2)
      {
        v80 = v79 >> 2;
        do
        {
          if (v77 == v80)
          {
            v81 = *a3;
            v254 = v73;
            v82 = *sub_24BDBCD18(v81, &v254);
            v83 = *a3;
            v253 = *k;
            if (v82 < *sub_24BDBCD18(v83, &v253))
            {
              break;
            }

            v76 = *(v73 + 152);
            v75 = *(v73 + 160);
          }

          v84 = k[2];
          k += 2;
          v77 = (v75 - v76) >> 2;
          v80 = (*(v84 + 160) - *(v84 + 152)) >> 2;
        }

        while (v77 >= v80);
      }

LABEL_70:
      m = a2;
      if (k < a2)
      {
        for (m = v245; ; m -= 2)
        {
          v86 = (*(v73 + 160) - *(v73 + 152)) >> 2;
          v87 = *(*m + 160) - *(*m + 152);
          if (v86 >= v87 >> 2)
          {
            if (v86 != v87 >> 2)
            {
              break;
            }

            v88 = *a3;
            v254 = v73;
            v89 = *sub_24BDBCD18(v88, &v254);
            v90 = *a3;
            v253 = *m;
            if (v89 >= *sub_24BDBCD18(v90, &v253))
            {
              break;
            }
          }
        }
      }

      while (k < m)
      {
        v91 = *k;
        *k = *m;
        *m = v91;
        v92 = k[1];
        k[1] = m[1];
        m[1] = v92;
        v93 = k[2];
        k += 2;
        v95 = *(v73 + 152);
        v94 = *(v73 + 160);
        v96 = (v94 - v95) >> 2;
        v97 = *(v93 + 160) - *(v93 + 152);
        if (v96 >= v97 >> 2)
        {
          v98 = v97 >> 2;
          do
          {
            if (v96 == v98)
            {
              v99 = *a3;
              v254 = v73;
              v100 = *sub_24BDBCD18(v99, &v254);
              v101 = *a3;
              v253 = *k;
              if (v100 < *sub_24BDBCD18(v101, &v253))
              {
                goto LABEL_82;
              }

              v95 = *(v73 + 152);
              v94 = *(v73 + 160);
            }

            v102 = k[2];
            k += 2;
            v96 = (v94 - v95) >> 2;
            v98 = (*(v102 + 160) - *(v102 + 152)) >> 2;
          }

          while (v96 >= v98);
        }

        do
        {
          do
          {
LABEL_82:
            v103 = (*(v73 + 160) - *(v73 + 152)) >> 2;
            v104 = *(m - 2);
            m -= 2;
            v105 = *(v104 + 160) - *(v104 + 152);
          }

          while (v103 < v105 >> 2);
          if (v103 != v105 >> 2)
          {
            break;
          }

          v106 = *a3;
          v254 = v73;
          v107 = *sub_24BDBCD18(v106, &v254);
          v108 = *a3;
          v253 = *m;
        }

        while (v107 < *sub_24BDBCD18(v108, &v253));
      }

      v109 = k - 2;
      if (k - 2 != a1)
      {
        v110 = *v109;
        *v109 = 0;
        *(k - 1) = 0;
        v111 = a1[1];
        *a1 = v110;
        if (v111)
        {
          sub_24BC9EC78(v111);
        }
      }

      a5 = 0;
      v112 = *(k - 1);
      *(k - 2) = v73;
      *(k - 1) = v74;
      v9 = v245;
      if (v112)
      {
        sub_24BC9EC78(v112);
        a5 = 0;
      }
    }
  }

  v121 = (*(*(a2 - 2) + 160) - *(*(a2 - 2) + 152)) >> 2;
  v122 = *(*a1 + 160) - *(*a1 + 152);
  if (v121 < v122 >> 2 || v121 == v122 >> 2 && (v221 = *a3, v254 = *(a2 - 2), v222 = *sub_24BDBCD18(v221, &v254), v223 = *a3, v253 = *a1, v222 < *sub_24BDBCD18(v223, &v253)))
  {
    v123 = *a1;
    *a1 = *(a2 - 2);
    *(a2 - 2) = v123;
    v124 = a1[1];
    a1[1] = *(a2 - 1);
    *(a2 - 1) = v124;
  }
}

void sub_24BDBC258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_24BDBC2C8(unint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v10 = *(*result + 160) - *(*result + 152);
  if (v9 < v10 >> 2)
  {
    goto LABEL_2;
  }

  if (v9 == v10 >> 2)
  {
    v15 = *a4;
    v45 = *a2;
    v16 = *sub_24BDBCD18(v15, &v45);
    v17 = *a4;
    v44 = *v7;
    result = sub_24BDBCD18(v17, &v44);
    v8 = *a2;
    v9 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
    if (v16 < *result)
    {
LABEL_2:
      v11 = *a3;
      v12 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
      if (v12 < v9)
      {
LABEL_3:
        v13 = *v7;
        *v7 = v11;
        *a3 = v13;
        v14 = v7[1];
        v7[1] = a3[1];
        goto LABEL_21;
      }

      if (v12 == v9)
      {
        v26 = *a4;
        v45 = *a3;
        v27 = *sub_24BDBCD18(v26, &v45);
        v28 = *a4;
        v44 = *a2;
        result = sub_24BDBCD18(v28, &v44);
        if (v27 < *result)
        {
          v11 = *a3;
          goto LABEL_3;
        }

        v8 = *a2;
      }

      v35 = *v7;
      *v7 = v8;
      *a2 = v35;
      v36 = v7[1];
      v7[1] = a2[1];
      a2[1] = v36;
      v37 = *a3;
      v38 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
      v39 = *a2;
      v40 = *(*a2 + 160) - *(*a2 + 152);
      if (v38 >= v40 >> 2)
      {
        if (v38 != v40 >> 2)
        {
          return result;
        }

        v41 = *a4;
        v45 = *a3;
        v42 = *sub_24BDBCD18(v41, &v45);
        v43 = *a4;
        v44 = *a2;
        result = sub_24BDBCD18(v43, &v44);
        if (v42 >= *result)
        {
          return result;
        }

        v39 = *a2;
        v37 = *a3;
      }

      *a2 = v37;
      *a3 = v39;
      v14 = a2[1];
      a2[1] = a3[1];
LABEL_21:
      a3[1] = v14;
      return result;
    }
  }

  v18 = *a3;
  v19 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
  if (v19 >= v9)
  {
    if (v19 != v9)
    {
      return result;
    }

    v29 = *a4;
    v45 = *a3;
    v30 = *sub_24BDBCD18(v29, &v45);
    v31 = *a4;
    v44 = *a2;
    result = sub_24BDBCD18(v31, &v44);
    if (v30 >= *result)
    {
      return result;
    }

    v8 = *a2;
    v18 = *a3;
  }

  *a2 = v18;
  *a3 = v8;
  v20 = a2[1];
  a2[1] = a3[1];
  a3[1] = v20;
  v21 = *a2;
  v22 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v23 = *v7;
  v24 = *(*v7 + 160) - *(*v7 + 152);
  if (v22 < v24 >> 2)
  {
LABEL_8:
    *v7 = v21;
    *a2 = v23;
    v25 = v7[1];
    v7[1] = a2[1];
    a2[1] = v25;
    return result;
  }

  if (v22 == v24 >> 2)
  {
    v32 = *a4;
    v45 = *a2;
    v33 = *sub_24BDBCD18(v32, &v45);
    v34 = *a4;
    v44 = *v7;
    result = sub_24BDBCD18(v34, &v44);
    if (v33 < *result)
    {
      v23 = *v7;
      v21 = *a2;
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_24BDBC59C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  result = sub_24BDBC2C8(a1, a2, a3, a5);
  v11 = *a4;
  v12 = (*(*a4 + 160) - *(*a4 + 152)) >> 2;
  v13 = *a3;
  v14 = *(*a3 + 160) - *(*a3 + 152);
  if (v12 >= v14 >> 2)
  {
    if (v12 != v14 >> 2)
    {
      return result;
    }

    v26 = *a5;
    v36 = *a4;
    v27 = *sub_24BDBCD18(v26, &v36);
    v28 = *a5;
    v35 = *a3;
    result = sub_24BDBCD18(v28, &v35);
    if (v27 >= *result)
    {
      return result;
    }

    v13 = *a3;
    v11 = *a4;
  }

  *a3 = v11;
  *a4 = v13;
  v15 = a3[1];
  a3[1] = a4[1];
  a4[1] = v15;
  v16 = *a3;
  v17 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
  v18 = *a2;
  v19 = *(*a2 + 160) - *(*a2 + 152);
  if (v17 >= v19 >> 2)
  {
    if (v17 != v19 >> 2)
    {
      return result;
    }

    v29 = *a5;
    v36 = *a3;
    v30 = *sub_24BDBCD18(v29, &v36);
    v31 = *a5;
    v35 = *a2;
    result = sub_24BDBCD18(v31, &v35);
    if (v30 >= *result)
    {
      return result;
    }

    v18 = *a2;
    v16 = *a3;
  }

  *a2 = v16;
  *a3 = v18;
  v20 = a2[1];
  a2[1] = a3[1];
  a3[1] = v20;
  v21 = *a2;
  v22 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v23 = *a1;
  v24 = *(*a1 + 160) - *(*a1 + 152);
  if (v22 < v24 >> 2)
  {
LABEL_4:
    *a1 = v21;
    *a2 = v23;
    v25 = a1[1];
    a1[1] = a2[1];
    a2[1] = v25;
    return result;
  }

  if (v22 == v24 >> 2)
  {
    v32 = *a5;
    v36 = *a2;
    v33 = *sub_24BDBCD18(v32, &v36);
    v34 = *a5;
    v35 = *a1;
    result = sub_24BDBCD18(v34, &v35);
    if (v33 < *result)
    {
      v23 = *a1;
      v21 = *a2;
      goto LABEL_4;
    }
  }

  return result;
}

unint64_t *sub_24BDBC788(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  result = sub_24BDBC59C(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = (*(*a5 + 160) - *(*a5 + 152)) >> 2;
  v15 = *a4;
  v16 = *(*a4 + 160) - *(*a4 + 152);
  if (v14 >= v16 >> 2)
  {
    if (v14 != v16 >> 2)
    {
      return result;
    }

    v33 = *a6;
    v46 = *a5;
    v34 = *sub_24BDBCD18(v33, &v46);
    v35 = *a6;
    v45 = *a4;
    result = sub_24BDBCD18(v35, &v45);
    if (v34 >= *result)
    {
      return result;
    }

    v15 = *a4;
    v13 = *a5;
  }

  *a4 = v13;
  *a5 = v15;
  v17 = a4[1];
  a4[1] = a5[1];
  a5[1] = v17;
  v18 = *a4;
  v19 = (*(*a4 + 160) - *(*a4 + 152)) >> 2;
  v20 = *a3;
  v21 = *(*a3 + 160) - *(*a3 + 152);
  if (v19 >= v21 >> 2)
  {
    if (v19 != v21 >> 2)
    {
      return result;
    }

    v36 = *a6;
    v46 = *a4;
    v37 = *sub_24BDBCD18(v36, &v46);
    v38 = *a6;
    v45 = *a3;
    result = sub_24BDBCD18(v38, &v45);
    if (v37 >= *result)
    {
      return result;
    }

    v20 = *a3;
    v18 = *a4;
  }

  *a3 = v18;
  *a4 = v20;
  v22 = a3[1];
  a3[1] = a4[1];
  a4[1] = v22;
  v23 = *a3;
  v24 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
  v25 = *a2;
  v26 = *(*a2 + 160) - *(*a2 + 152);
  if (v24 >= v26 >> 2)
  {
    if (v24 != v26 >> 2)
    {
      return result;
    }

    v39 = *a6;
    v46 = *a3;
    v40 = *sub_24BDBCD18(v39, &v46);
    v41 = *a6;
    v45 = *a2;
    result = sub_24BDBCD18(v41, &v45);
    if (v40 >= *result)
    {
      return result;
    }

    v25 = *a2;
    v23 = *a3;
  }

  *a2 = v23;
  *a3 = v25;
  v27 = a2[1];
  a2[1] = a3[1];
  a3[1] = v27;
  v28 = *a2;
  v29 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v30 = *a1;
  v31 = *(*a1 + 160) - *(*a1 + 152);
  if (v29 < v31 >> 2)
  {
LABEL_5:
    *a1 = v28;
    *a2 = v30;
    v32 = a1[1];
    a1[1] = a2[1];
    a2[1] = v32;
    return result;
  }

  if (v29 == v31 >> 2)
  {
    v42 = *a6;
    v46 = *a2;
    v43 = *sub_24BDBCD18(v42, &v46);
    v44 = *a6;
    v45 = *a1;
    result = sub_24BDBCD18(v44, &v45);
    if (v43 < *result)
    {
      v30 = *a1;
      v28 = *a2;
      goto LABEL_5;
    }
  }

  return result;
}

BOOL sub_24BDBCA08(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_24BDBC2C8(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        sub_24BDBC59C(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        sub_24BDBC788(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 2);
      v8 = (*(v7 + 160) - *(v7 + 152)) >> 2;
      v9 = *a1;
      v10 = *(*a1 + 160) - *(*a1 + 152);
      if (v8 >= v10 >> 2)
      {
        if (v8 != v10 >> 2)
        {
          return 1;
        }

        v35 = *a3;
        v40 = *(a2 - 2);
        v36 = *sub_24BDBCD18(v35, &v40);
        v37 = *a3;
        v39 = *a1;
        if (v36 >= *sub_24BDBCD18(v37, &v39))
        {
          return 1;
        }

        v9 = *a1;
        v7 = *(v4 - 2);
      }

      *a1 = v7;
      *(v4 - 2) = v9;
      v11 = a1[1];
      a1[1] = *(v4 - 1);
      *(v4 - 1) = v11;
      return 1;
    }
  }

  v12 = a1 + 4;
  sub_24BDBC2C8(a1, a1 + 2, a1 + 4, a3);
  v13 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v38 = v4;
  while (1)
  {
    v16 = *v13;
    v17 = (*(*v13 + 160) - *(*v13 + 152)) >> 2;
    v18 = *(*v12 + 160) - *(*v12 + 152);
    if (v17 < v18 >> 2)
    {
      break;
    }

    if (v17 == v18 >> 2)
    {
      v29 = *a3;
      v40 = *v13;
      v30 = *sub_24BDBCD18(v29, &v40);
      v31 = *a3;
      v39 = *v12;
      if (v30 < *sub_24BDBCD18(v31, &v39))
      {
        v16 = *v13;
        break;
      }
    }

LABEL_30:
    v12 = v13;
    v14 += 16;
    v13 += 2;
    if (v13 == v4)
    {
      return 1;
    }
  }

  v19 = v13[1];
  v20 = v14;
  *v13 = 0;
  v13[1] = 0;
  while (1)
  {
    v21 = a1 + v20;
    v22 = *(a1 + v20 + 32);
    *(v21 + 4) = 0;
    *(v21 + 5) = 0;
    v23 = *(a1 + v20 + 56);
    *(v21 + 3) = v22;
    if (v23)
    {
      sub_24BC9EC78(v23);
    }

    if (v20 == -32)
    {
      v32 = a1;
      goto LABEL_27;
    }

    v24 = (*(v16 + 160) - *(v16 + 152)) >> 2;
    v25 = *(*(a1 + v20 + 16) + 160) - *(*(a1 + v20 + 16) + 152);
    if (v24 >= v25 >> 2)
    {
      if (v24 != v25 >> 2)
      {
        break;
      }

      v26 = *a3;
      v40 = v16;
      v27 = *sub_24BDBCD18(v26, &v40);
      v28 = *a3;
      v39 = *(a1 + v20 + 16);
      if (v27 >= *sub_24BDBCD18(v28, &v39))
      {
        break;
      }
    }

    v20 -= 16;
  }

  v32 = (a1 + v20 + 32);
LABEL_27:
  v33 = v32[1];
  *v32 = v16;
  v32[1] = v19;
  v4 = v38;
  if (v33)
  {
    sub_24BC9EC78(v33);
  }

  if (++v15 != 8)
  {
    goto LABEL_30;
  }

  return v13 + 2 == v38;
}

void sub_24BDBCD00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDBCD18(uint64_t a1, unint64_t *a2)
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
      v4 = v2[4];
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

float sub_24BDBCD70(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_24BDBCDF8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void *sub_24BDBCDF8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BDBD3F4(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BDBCFCC(a1, &v10);
}

void sub_24BDBCF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_24BDBCFCC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24BDBD3F4(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24BDBD0D4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BDBD3F4(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_24BDBD1E0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24BDBD3F4(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24BDBD2E8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BDBD3F4(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_24BDBD3F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BDBD43C(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v23 = *a1;
  v25 = *a2;
  v27 = *a3;
  v24 = 0x3FF0000000000000;
  v26 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  v17 = *a4;
  v19 = *a5;
  v21 = *a6;
  v18 = *(a4 + 2);
  v20 = *(a5 + 2);
  v22 = *(a6 + 2);
  sub_24BDBD540(&v23);
  v9 = 0;
  *(a7 + 64) = 0x3FF0000000000000;
  *a7 = xmmword_24BFED240;
  *(a7 + 16) = *algn_24BFED250;
  *(a7 + 32) = xmmword_24BFED260;
  *(a7 + 48) = unk_24BFED270;
  v10 = &v17;
  do
  {
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = 0;
      v14 = 0.0;
      v15 = v10;
      do
      {
        v16 = *v15;
        v15 += 3;
        v14 = v14 + v16 * *(v12 + v13);
        v13 += 8;
      }

      while (v13 != 24);
      *(a7 + 8 * v9 + 24 * v11++) = v14;
      v12 += 24;
    }

    while (v11 != 3);
    ++v9;
    v10 = (v10 + 8);
  }

  while (v9 != 3);
}

double sub_24BDBD540(double *a1)
{
  v1 = 0;
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a1[2];
  v7 = a1[3];
  v9 = v2 * v7 - v5 * v6;
  v11 = *a1;
  v10 = a1[1];
  v18[0] = v2 * v4 - v5 * v3;
  v18[1] = -(v2 * v10 - v8 * v3);
  v19 = v3 * v7 - v4 * v6;
  v20 = -(v3 * v11 - v10 * v6);
  v18[2] = v5 * v10 - v8 * v4;
  v18[3] = -v9;
  v18[4] = v2 * v11 - v8 * v6;
  v18[5] = -(v5 * v11 - v8 * v7);
  v21 = v4 * v11 - v10 * v7;
  v12 = 1.0 / (v11 * v18[0] - v10 * v9 + v8 * v19);
  v26 = 0x3FF0000000000000;
  v22 = xmmword_24BFED240;
  v23 = *algn_24BFED250;
  v24 = xmmword_24BFED260;
  v25 = unk_24BFED270;
  do
  {
    *(&v22 + v1 * 8) = v12 * v18[v1];
    ++v1;
  }

  while (v1 != 9);
  result = *&v24;
  v14 = v25;
  v15 = v26;
  v17 = v22;
  v16 = v23;
  *(a1 + 2) = v24;
  *(a1 + 3) = v14;
  *(a1 + 8) = v15;
  *a1 = v17;
  *(a1 + 1) = v16;
  return result;
}

double sub_24BDBD63C@<D0>(double *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v6 = *a2 - *a1;
  v7 = a2[1] - v5;
  v8 = v7 * v7 + v6 * v6;
  v9 = v6 / v8;
  v10 = v7 / v8;
  v11 = -(v10 * v5) - v9 * *a1;
  v12 = a3[1].f64[0];
  v13 = a4[1].f64[0] - v12;
  v14 = *a3;
  v15 = vsubq_f64(*a4, *a3);
  *a5 = vmulq_n_f64(v15, v9);
  *(a5 + 16) = v9 * v13;
  *(a5 + 24) = vmulq_n_f64(v15, v10);
  *(a5 + 40) = v10 * v13;
  result = v12 + v11 * v13;
  *(a5 + 48) = vaddq_f64(v14, vmulq_n_f64(v15, v11));
  *(a5 + 64) = result;
  return result;
}

uint64_t sub_24BDBD6B8@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = (result + 24);
  do
  {
    *&a2[v4] = *&a2[v4] + v5[3] + *v5 * a4 + *(v5 - 3) * a3;
    ++v5;
    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_24BDBD74C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a2[1] - *a2;
  if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) != (*(a1 + 160) - *(a1 + 152)) >> 2 || a3[1] - *a3 != v4 || a4[1] - *a4 != v4)
  {
    return 0;
  }

  sub_24BCB2008(v66, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      LODWORD(v64.f64[0]) = v8;
      sub_24BCD567C(a1, &v64, v66);
      v9 = *(v66[0] + 1);
      v10 = (*(a1 + 8) + 16 * *(a1 + 176));
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v11);
      }

      v13 = 0;
      v63 = *(*(v12 + 40) + 16 * v9);
      do
      {
        v64.f64[v13] = *(&v63 + v13);
        ++v13;
      }

      while (v13 != 3);
      v14 = *v66[0];
      v15 = (*(a1 + 8) + 16 * *(a1 + 176));
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
      }

      v18 = 0;
      v60 = *(*(v17 + 40) + 16 * v14);
      do
      {
        v61.f64[v18] = *(&v60 + v18);
        ++v18;
      }

      while (v18 != 3);
      v19 = vsubq_f64(v64, v61);
      v20 = v65 - v62;
      v21 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v19, v19).f64[1]) + v19.f64[0] * v19.f64[0] + v20 * v20);
      v22 = 0.0;
      _Q18 = xmmword_24BFD29A0;
      if (v21 > 0.0)
      {
        _Q18 = vdivq_f64(v19, vdupq_lane_s64(*&v21, 0));
        v22 = v20 / v21;
      }

      v24 = *(v66[0] + 2);
      v25 = (*(a1 + 8) + 16 * *(a1 + 176));
      v27 = *v25;
      v26 = v25[1];
      v59 = _Q18;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v26);
        _Q18 = v59;
      }

      v28 = 0;
      v63 = *(*(v27 + 40) + 16 * v24);
      do
      {
        v64.f64[v28] = *(&v63 + v28);
        ++v28;
      }

      while (v28 != 3);
      v29 = *v66[0];
      v30 = (*(a1 + 8) + 16 * *(a1 + 176));
      v32 = *v30;
      v31 = v30[1];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v31);
        _Q18 = v59;
      }

      v33 = 0;
      v60 = *(*(v32 + 40) + 16 * v29);
      do
      {
        v61.f64[v33] = *(&v60 + v33);
        ++v33;
      }

      while (v33 != 3);
      _D2 = v65 - v62;
      __asm { FMLA            D6, D2, V18.D[1] }

      v40 = v22 * (v64.f64[0] - v61.f64[0]) - _Q18.f64[0] * (v65 - v62);
      v41 = _Q18.f64[0] * (v64.f64[1] - v61.f64[1]) - _Q18.f64[1] * (v64.f64[0] - v61.f64[0]);
      v42 = sqrt(v40 * v40 + _D6 * _D6 + v41 * v41);
      v43 = 0.0;
      v44 = 1.0;
      v45 = 1.0;
      v46 = 0.0;
      v47 = 0.0;
      if (v42 > 0.0)
      {
        v45 = _D6 / v42;
        v46 = v40 / v42;
        v47 = v41 / v42;
      }

      v48 = v46 * -v22 + _Q18.f64[1] * v47;
      v49 = v47 * -_Q18.f64[0] + v22 * v45;
      v50 = v45 * -_Q18.f64[1] + _Q18.f64[0] * v46;
      v51 = sqrt(v49 * v49 + v48 * v48 + v50 * v50);
      v52 = 0.0;
      if (v51 > 0.0)
      {
        v44 = v48 / v51;
        v43 = v49 / v51;
        v52 = v50 / v51;
      }

      v53 = *a2 + 24 * v7;
      *v53 = _Q18;
      *(v53 + 16) = v22;
      v54 = (*a3 + 24 * v7);
      *v54 = -v44;
      v54[1] = -v43;
      v54[2] = -v52;
      v55 = (*a4 + 24 * v7);
      *v55 = v45;
      v55[1] = v46;
      v55[2] = v47;
      v7 = ++v8;
    }

    while (v8 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  return 1;
}

void sub_24BDBDB1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDBDB38(uint64_t a1, int a2, int a3)
{
  v25 = a3;
  v26 = a2;
  sub_24BC9FEFC(&v24, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
  sub_24BCB7458(__p, 3uLL);
  v22[0] = a1;
  v22[1] = __p;
  v22[2] = &v26;
  v22[3] = &v25;
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v6 >> 6;
      v9 = 1 << v6;
      if ((*(v24 + (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

LABEL_14:
      v6 = v7;
      if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) <= v7++)
      {
        goto LABEL_15;
      }
    }

    v21 = v7 - 1;
    v27 = v7 - 1;
    if (*(sub_24BCB9024(a1 + 104, &v27) + 12) != -1)
    {
      v10 = *sub_24BCB9024(a1 + 104, &v21);
      v11 = v24;
      *(v24 + v8) |= v9;
      *&v11[(v10 >> 3) & 0x1FFFFFF8] |= 1 << v10;
      v12 = sub_24BC9ECE4(a1, *(a1 + 180), v21);
      v13 = v21;
      if ((*v12 & v14) != 0)
      {
        v21 = v10;
        v15 = v10;
        LODWORD(v10) = v13;
      }

      else
      {
        v15 = v21;
      }

      v16 = sub_24BDBDD6C(v22, v15);
      v17 = sub_24BC9ECE4(a1, *(a1 + 180), v10);
      if ((*v17 & v18) == 0)
      {
        if (!v16 || !sub_24BDBDD6C(v22, v10))
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      if (v16)
      {
LABEL_10:
        sub_24BCD87D0(a1, &v21, 0, 4);
      }
    }

LABEL_13:
    v5 = *(a1 + 128);
    v4 = *(a1 + 136);
    goto LABEL_14;
  }

LABEL_15:
  sub_24BD79520(a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v24)
  {
    operator delete(v24);
  }

  return 1;
}

void sub_24BDBDD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDBDD6C(uint64_t a1, unsigned int a2)
{
  v21 = a2;
  v20 = *(sub_24BCB9024(*a1 + 104, &v21) + 16);
  sub_24BCD573C(*a1, &v20, *(a1 + 8));
  v3 = 0;
  v4 = -1;
  do
  {
    if (*(**(a1 + 8) + 4 * v3) == v21)
    {
      v4 = v3;
    }

    ++v3;
  }

  while (v3 != 3);
  v5 = *a1;
  v6 = (*(*a1 + 56) + 16 * **(a1 + 24));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
    v5 = *a1;
  }

  v9 = *(v8 + 40) + 12 * v20;
  v10 = (*(v5 + 80) + 16 * **(a1 + 16));
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
    v13 = (*(*a1 + 80) + 16 * **(a1 + 16));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v9 + 4 * v4);
    v17 = *(v12 + 40);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v14);
    }

    v12 = v15;
  }

  else
  {
    v16 = *(v9 + 4 * v4);
    v17 = *(v12 + 40);
  }

  v18 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3F50624DD2F1A9FCuLL), vabdq_f64(vcvtq_f64_f32(*(v17 + 8 * v16)), vcvtq_f64_f32(*(*(v12 + 40) + 8 * *(v9 + 4 * (v4 + 1 - 3 * ((21846 * (v4 + 1)) >> 16))))))));
  return v18.i32[0] & v18.i32[1] & 1;
}

void sub_24BDBDF18(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v63 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160) != *(a1 + 152))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      sub_24BCB2008(__p, 3uLL);
      LODWORD(v57.f64[0]) = v11;
      sub_24BCD567C(a1, &v57, __p);
      v12 = 0;
      v13 = *a3 + 24 * *__p[0];
      do
      {
        v54.f64[v12] = *(v13 + v12 * 8);
        ++v12;
      }

      while (v12 != 3);
      v14 = v54;
      v15 = 1;
      v16 = v55;
      do
      {
        v17 = 0;
        v18 = *(__p[0] + v15);
        v19 = (*a3 + 24 * v18);
        do
        {
          v57.f64[v17] = v19->f64[v17];
          ++v17;
        }

        while (v17 != 3);
        v20 = -v19[1].f64[0];
        v59 = vnegq_f64(*v19);
        v60 = v20;
        v21 = (*a4 + 24 * v18);
        v22 = v21;
        for (i = 6; i != 9; ++i)
        {
          v24 = *v22++;
          v57.f64[i] = v24;
        }

        v25 = -v21[1].f64[0];
        v61 = vnegq_f64(*v21);
        v62 = v25;
        v52 = 0;
        v53 = 0;
        v51 = 0;
        sub_24BDC0C74(&v51, &v57, &v63, 4uLL);
        v28 = 0uLL;
        v29 = 0.0;
        if (v51 != v52)
        {
          v26.i32[0] = -8388609;
          v30 = v51;
          do
          {
            *v27.i64 = vmuld_lane_f64(v14.f64[1], *v30, 1) + v30->f64[0] * v14.f64[0] + v30[1].f64[0] * v16;
            v27.f32[0] = *v27.i64;
            v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v27, v26), 0), *v30, v28);
            if (v26.f32[0] < v27.f32[0])
            {
              v29 = v30[1].f64[0];
              v26.f32[0] = v27.f32[0];
            }

            v30 = (v30 + 24);
          }

          while (v30 != v52);
        }

        v54 = vaddq_f64(v28, v54);
        v55 = v29 + v55;
        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        ++v15;
      }

      while (v15 != 3);
      v51 = 0;
      v52 = 0;
      v53 = 0;
      sub_24BD3E458(&v51, &v54, (*a2 + 24 * v10), &v57);
      v31 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v57, v57).f64[1]) + v57.f64[0] * v57.f64[0] + v58 * v58);
      v32 = 0.0;
      v33 = xmmword_24BFD29A0;
      if (v31 > 0.0)
      {
        v33 = vdivq_f64(v57, vdupq_lane_s64(*&v31, 0));
        v32 = v58 / v31;
      }

      v57 = v33;
      v58 = v32;
      v34 = *a5 + 24 * v10;
      *v34 = v33.f64[0];
      *(v34 + 8) = v57.f64[1];
      *(v34 + 16) = v58;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v35 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      v10 = ++v11;
    }

    while (v35 > v11);
    if (v35)
    {
      v36 = (*a2 + 8);
      v37 = (*a5 + 8);
      v38 = (*a6 + 16);
      v39 = 1;
      do
      {
        *&v40.f64[0] = vdupq_laneq_s64(*v36, 1).u64[0];
        *&v40.f64[1] = v36[-1].i64[1];
        *&v41.f64[0] = vdupq_laneq_s64(*v37, 1).u64[0];
        *&v41.f64[1] = v37[-1].i64[1];
        v42 = vmlaq_f64(vmulq_f64(*v37, vnegq_f64(v40)), v41, *v36);
        v43 = *&v36[-1].i64[1] * *v37->i64 - *v36->i64 * v41.f64[1];
        v44 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v42, v42).f64[1]) + v42.f64[0] * v42.f64[0] + v43 * v43);
        v45 = 0.0;
        v46 = xmmword_24BFD29A0;
        if (v44 > 0.0)
        {
          v46 = vdivq_f64(v42, vdupq_lane_s64(*&v44, 0));
          v45 = v43 / v44;
        }

        *(v38 - 1) = v46;
        *v38 = v45;
        v38 += 3;
        v36 = (v36 + 24);
        v37 = (v37 + 24);
      }

      while (v35 > v39++);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_24BDBE2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDBE2E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v84 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160) != *(a1 + 152))
  {
    v14 = a1;
    v15 = 0;
    v68 = 0;
    do
    {
      sub_24BCB2008(v77, 3uLL);
      LODWORD(v78.f64[0]) = v68;
      sub_24BCD567C(v14, &v78, v77);
      v16 = 0;
      v17 = *v77[0];
      v18 = *a3 + 24 * v17;
      do
      {
        v75.f64[v16] = *(v18 + v16 * 8);
        ++v16;
      }

      while (v16 != 3);
      v19 = *(*a5 + 8 * v17);
      v20 = *(*a6 + 8 * v17);
      v21 = v75;
      v22 = v76;
      for (i = 1; i != 3; ++i)
      {
        v24 = 0;
        v25 = *(v77[0] + i);
        v26 = (*a3 + 24 * v25);
        do
        {
          v78.f64[v24] = v26->f64[v24];
          ++v24;
        }

        while (v24 != 3);
        v27 = -v26[1].f64[0];
        v80 = vnegq_f64(*v26);
        v81 = v27;
        v28 = (*a4 + 24 * v25);
        v29 = v28;
        for (j = 6; j != 9; ++j)
        {
          v31 = *v29++;
          v78.f64[j] = v31;
        }

        v32 = -v28[1].f64[0];
        v82 = vnegq_f64(*v28);
        v83 = v32;
        v73 = 0;
        v74 = 0;
        v72 = 0;
        sub_24BDC0C74(&v72, &v78, &v84, 4uLL);
        v33 = *(v77[0] + i);
        v78.f64[0] = *(*a5 + 8 * v33);
        v78.f64[1] = v78.f64[0];
        v79 = *(*a6 + 8 * v33);
        v80.f64[0] = v79;
        v70 = 0;
        v71 = 0;
        __p = 0;
        sub_24BDC0D00(&__p, &v78, &v80.f64[1], 4uLL);
        if (v73 == v72)
        {
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = (v72 + 16);
          v36 = 1;
          v37 = -3.4028e38;
          do
          {
            v38 = *(v35 - 2);
            v39 = *(v35 - 1);
            v40 = *v35;
            v35 += 3;
            v41 = v39 * v21.f64[1] + v38 * v21.f64[0] + v40 * v22;
            if (v37 < v41)
            {
              v37 = v41;
              v34 = v36 - 1;
            }

            v42 = 0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 3) > v36++;
          }

          while (v42);
        }

        v43 = (v72 + 24 * v34);
        v44 = v76 + v43[1].f64[0];
        v75 = vaddq_f64(v75, *v43);
        v76 = v44;
        v45 = *(__p + v34);
        v46 = *(__p + (v34 & 3 ^ 2));
        v70 = __p;
        operator delete(__p);
        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        v19 = v19 + v45;
        v20 = v20 + v46;
      }

      v72 = 0;
      v73 = 0;
      v74 = 0;
      sub_24BD3E458(&v72, &v75, (*a2 + 24 * v15), &v78);
      v47 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v78, v78).f64[1]) + v78.f64[0] * v78.f64[0] + v79 * v79);
      v48 = 0.0;
      v49 = xmmword_24BFD29A0;
      v14 = a1;
      if (v47 > 0.0)
      {
        v49 = vdivq_f64(v78, vdupq_lane_s64(*&v47, 0));
        v48 = v79 / v47;
      }

      v78 = v49;
      v79 = v48;
      v50 = *a7 + 24 * v15;
      *v50 = v49.f64[0];
      *(v50 + 8) = v78.f64[1];
      *(v50 + 16) = v79;
      *(*a9 + 8 * v15) = v19 / 3.0;
      *(*a10 + 8 * v15) = v20 / 3.0;
      if (v77[0])
      {
        v77[1] = v77[0];
        operator delete(v77[0]);
      }

      v51 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      v15 = ++v68;
    }

    while (v51 > v68);
    if (v51)
    {
      v52 = (*a2 + 8);
      v53 = (*a7 + 8);
      v54 = (*a8 + 16);
      v55 = 1;
      do
      {
        *&v56.f64[0] = vdupq_laneq_s64(*v52, 1).u64[0];
        *&v56.f64[1] = v52[-1].i64[1];
        *&v57.f64[0] = vdupq_laneq_s64(*v53, 1).u64[0];
        *&v57.f64[1] = v53[-1].i64[1];
        v58 = vmlaq_f64(vmulq_f64(*v53, vnegq_f64(v56)), v57, *v52);
        v59 = *&v52[-1].i64[1] * *v53->i64 - *v52->i64 * v57.f64[1];
        v60 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v58, v58).f64[1]) + v58.f64[0] * v58.f64[0] + v59 * v59);
        v61 = 0.0;
        v62 = xmmword_24BFD29A0;
        if (v60 > 0.0)
        {
          v62 = vdivq_f64(v58, vdupq_lane_s64(*&v60, 0));
          v61 = v59 / v60;
        }

        *(v54 - 1) = v62;
        *v54 = v61;
        v54 += 3;
        v52 = (v52 + 24);
        v53 = (v53 + 24);
        v42 = v51 > v55++;
      }

      while (v42);
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_24BDBE778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDBE7BC(uint64_t a1, void *a2, void *a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v20) = 0;
  sub_24BC9FEFC(&__p, v6);
  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  v9 = __p;
  if (v7 == v8)
  {
    if (!__p)
    {
      return;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v10 >> 6;
      v14 = 1 << v10;
      if ((v9[v10 >> 6] & (1 << v10)) == 0)
      {
        v15 = v12 - 1;
        v20 = v12 - 1;
        *(*a2 + 4 * v10) = v11;
        *(*a2 + 4 * *sub_24BCB9024(a1 + 104, &v20)) = v11;
        v16 = sub_24BC9ECE4(a1, *(a1 + 180), v20);
        if ((*v16 & v17) != 0)
        {
          v15 = *sub_24BCB9024(a1 + 104, &v20);
        }

        *(*a3 + 4 * v11) = v15;
        *(__p + v13) |= v14;
        v18 = *sub_24BCB9024(a1 + 104, &v20);
        v9 = __p;
        *(__p + ((v18 >> 3) & 0x1FFFFFF8)) |= 1 << v18;
        ++v11;
        v8 = *(a1 + 128);
        v7 = *(a1 + 136);
      }

      v10 = v12;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 2) > v12++);
  }

  operator delete(v9);
}

void sub_24BDBE930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDBE94C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 160) != *(a1 + 152))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      sub_24BCB7458(__p, 3uLL);
      v20 = v7;
      sub_24BCD573C(a1, &v20, __p);
      v8 = 0;
      v9 = 24 * v6;
      do
      {
        v10 = sub_24BCB9024(a1 + 104, (__p[0] + v8));
        *(*(*a2 + v9) + v8) = *(sub_24BCB9024(a1 + 104, v10) + 16);
        v8 += 4;
      }

      while (v8 != 12);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v11 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      v6 = ++v7;
    }

    while (v11 > v7);
    if (v11)
    {
      v12 = 0;
      v13 = *a2;
      do
      {
        v14 = 0;
        v15 = *(v13 + 24 * v12);
        v16 = *a3;
        do
        {
          v17 = *(v15 + 4 * v14);
          if (v17 != -1)
          {
            v18 = 0;
            v19 = *(v13 + 24 * v17);
            while (v12 != *(v19 + 4 * v18))
            {
              if (++v18 == 3)
              {
                goto LABEL_19;
              }
            }

            *(*(v16 + 24 * v12) + 4 * v14) = v18;
          }

LABEL_19:
          ++v14;
        }

        while (v14 != 3);
        ++v12;
      }

      while (v11 > v12);
    }
  }
}

void sub_24BDBEAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDBEAD8(uint64_t *a1, void *a2, void *a3, void *a4, double a5)
{
  v5 = a4[1] - *a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (v5 == v8 && v7 != v6)
  {
    v11 = (*a4 + 16);
    v12 = (v6 + 16);
    v13 = (*a2 + 16);
    v14 = (*a3 + 16);
    v15 = 1;
    do
    {
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;
      v12 += 3;
      v19 = v18;
      v20 = sqrt(v17 * v17 + v16 * v16 + v19 * v19);
      v21 = *(v14 - 2);
      v22 = *(v14 - 1);
      v23 = *v14;
      v14 += 3;
      v24 = v23;
      v25 = v17 * v22 + v21 * v16 + v23 * v19;
      v26 = *(v13 - 2);
      v27 = *(v13 - 1);
      v28 = *v13;
      v13 += 3;
      v29 = atan2(v25, v17 * v27 + v26 * v16 + v28 * v19);
      v30 = __sincos_stret(v29 + a5);
      *(v11 - 2) = v26 * (v20 * v30.__cosval) + v21 * (v20 * v30.__sinval);
      *(v11 - 1) = v27 * (v20 * v30.__cosval) + v22 * (v20 * v30.__sinval);
      v31 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) > v15++;
      *v11 = v28 * (v20 * v30.__cosval) + v24 * (v20 * v30.__sinval);
      v11 += 3;
    }

    while (v31);
  }

  return v5 == v8;
}

uint64_t sub_24BDBEC0C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6)
{
  v6 = *a3;
  v7 = a3[1] - *a3;
  if (v7)
  {
    v8 = 0;
    v33 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = *a2;
    v10 = *a1;
    v11 = *a6;
    v12 = *a5 + 16;
    v13 = *a4 + 8;
    v14 = 1;
    do
    {
      v15 = *(v9 + v8 + 8);
      v34 = *(v9 + v8);
      v16 = *(v9 + v8 + 16);
      v18 = *(v10 + v8);
      v17 = *(v10 + v8 + 8);
      v19 = *(v10 + v8 + 16);
      v20 = atan2(v15 * *(v6 + v8 + 8) + v34 * *(v6 + v8) + v16 * *(v6 + v8 + 16), *(v6 + v8 + 8) * v17 + v18 * *(v6 + v8) + v19 * *(v6 + v8 + 16));
      v21 = fmod(v20 + ceil(fmax(-v20, 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v22 = atan2(v15 * *(v13 + v8) + v34 * *(v13 + v8 - 8) + v16 * *(v13 + v8 + 8), v17 * *(v13 + v8) + v18 * *(v13 + v8 - 8) + v19 * *(v13 + v8 + 8));
      v23 = fmod(v22 + ceil(fmax(-v22, 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v24 = fmod((v21 + v23) * 0.5 + ceil(fmax(-((v21 + v23) * 0.5), 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v25 = fmod(v24 + 1.57079633 + ceil(fmax(-(v24 + 1.57079633), 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v26 = __sincos_stret(v24);
      v27 = (v12 + v8);
      *(v27 - 2) = v18 * v26.__cosval + v34 * v26.__sinval;
      *(v27 - 1) = v17 * v26.__cosval + v15 * v26.__sinval;
      *v27 = v19 * v26.__cosval + v16 * v26.__sinval;
      v28 = __sincos_stret(v25);
      v29 = *(v10 + v8 + 16) * v28.__cosval + *(v9 + v8 + 16) * v28.__sinval;
      v30 = (v11 + v8);
      *v30 = vaddq_f64(vmulq_n_f64(*(v10 + v8), v28.__cosval), vmulq_n_f64(*(v9 + v8), v28.__sinval));
      v30[1].f64[0] = v29;
      v8 += 24;
    }

    while (v33 > v14++);
  }

  return 1;
}

void sub_24BDBEE5C(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0x3FF0000000000000;
  *a3 = xmmword_24BFED240;
  *(a3 + 16) = *algn_24BFED250;
  *(a3 + 32) = xmmword_24BFED260;
  *(a3 + 48) = unk_24BFED270;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = sqrt(v5 * v5 + v4 * v4 + v6 * v6);
  v8 = 0.0;
  v9 = 1.0;
  v10 = 1.0;
  v11 = 0.0;
  v12 = 0.0;
  if (v7 > 0.0)
  {
    v10 = v4 / v7;
    v11 = v5 / v7;
    v12 = v6 / v7;
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = sqrt(v14 * v14 + v13 * v13 + v15 * v15);
  v17 = 0.0;
  if (v16 > 0.0)
  {
    v9 = v13 / v16;
    v8 = v14 / v16;
    v17 = v15 / v16;
  }

  if (sqrt((v5 - v14) * (v5 - v14) + (v4 - v13) * (v4 - v13) + (v6 - v15) * (v6 - v15)) < 0.00000001)
  {
    *a3 = xmmword_24BFD29A0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = xmmword_24BFD29A0;
    *(a3 + 48) = 0u;
    v18 = 0x3FF0000000000000;
LABEL_9:
    *(a3 + 64) = v18;
    return;
  }

  if (sqrt((v5 + v14) * (v5 + v14) + (v4 + v13) * (v4 + v13) + (v6 + v15) * (v6 + v15)) < 0.00000001)
  {
    *a3 = xmmword_24BFD29A0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = xmmword_24BFED230;
    *(a3 + 48) = 0u;
    v18 = 0xBFF0000000000000;
    goto LABEL_9;
  }

  v19 = v11 * v8 + v10 * v9 + v12 * v17;
  v20 = v5 * v15 - v6 * v14;
  v21 = v6 * v13 - v4 * v15;
  v22 = v4 * v14 - v5 * v13;
  v23 = sqrt(v21 * v21 + v20 * v20 + v22 * v22);
  v24 = 0.0;
  v25 = 1.0;
  v26 = 0.0;
  if (v23 > 0.0)
  {
    v25 = v20 / v23;
    v24 = v21 / v23;
    v26 = v22 / v23;
  }

  v27 = acos(v19);
  v28 = __sincos_stret(v27);
  v29 = (1.0 - v28.__cosval) * (v25 * v24);
  *a3 = v28.__cosval + v25 * v25 * (1.0 - v28.__cosval);
  *(a3 + 8) = v29 + v26 * v28.__sinval;
  v30 = (1.0 - v28.__cosval) * (v25 * v26);
  *(a3 + 16) = v30 - v24 * v28.__sinval;
  *(a3 + 24) = v29 - v26 * v28.__sinval;
  v31 = (1.0 - v28.__cosval) * (v24 * v26);
  *(a3 + 32) = v28.__cosval + v24 * v24 * (1.0 - v28.__cosval);
  *(a3 + 40) = v31 + v25 * v28.__sinval;
  *(a3 + 48) = v30 + v24 * v28.__sinval;
  *(a3 + 56) = v31 - v25 * v28.__sinval;
  *(a3 + 64) = v28.__cosval + v26 * v26 * (1.0 - v28.__cosval);
}

double sub_24BDBF070(double a1)
{
  v1 = a1 <= 0.0;
  result = -1.0;
  if (!v1)
  {
    return 1.0;
  }

  return result;
}

double sub_24BDBF084@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v5 = a3[1];
  v4 = a3[2];
  v7 = a1[1];
  v6 = a1[2];
  v8 = *a1;
  v9 = v7 * v4 - v6 * v5;
  v10 = v6 * *a3 - *a1 * v4;
  v11 = *a1 * v5 - v7 * *a3;
  v12 = sqrt(v10 * v10 + v9 * v9 + v11 * v11);
  v13 = 0.0;
  v14 = 1.0;
  v15 = 1.0;
  v16 = 0.0;
  if (v12 > 0.0)
  {
    v15 = v9 / v12;
    v13 = v10 / v12;
    v16 = v11 / v12;
  }

  v17 = a2[1];
  v18 = a2[2];
  v19 = v7 * v17 + v8 * *a2 + v6 * v18;
  v20 = v17 * v13 + v15 * *a2 + v16 * v18;
  v21 = fabs(v19);
  v22 = fabs(v20);
  if (v21 < v22)
  {
    v8 = v15;
    v7 = v13;
  }

  else
  {
    v20 = v19;
  }

  if (v21 < v22)
  {
    v6 = v16;
  }

  if (v20 <= 0.0)
  {
    v14 = -1.0;
  }

  result = v6 * v14;
  *a4 = v8 * v14;
  a4[1] = v7 * v14;
  a4[2] = result;
  return result;
}

uint64_t sub_24BDBF140(uint64_t a1, uint64_t *a2, char **a3, char **a4, char **a5, char **a6)
{
  if (a5 != a3)
  {
    sub_24BDC0D74(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  if (a6 != a4)
  {
    sub_24BDC0D74(a6, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  }

  v10 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(v73.f64[0]) = 0;
  sub_24BC9FEFC(&v87, v10);
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  v11 = v88 & 0x3F;
  if (v88 > 0x3F || v11 != 0)
  {
    v13 = v87;
    v14 = &v87[v88 >> 6];
    do
    {
      v15 = 0;
      v16 = v14;
      v17 = v13;
      while (((*v17 >> v15) & 1) != 0)
      {
        if (v15 == 63)
        {
          v16 = v14;
        }

        v17 += v15 == 63;
        if (v15 == 63)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        if (v15 == v11 && v17 == v16)
        {
          goto LABEL_60;
        }
      }

      LODWORD(v18) = -1;
      do
      {
        v18 = (v18 + 1);
      }

      while (((*(v13 + ((v18 >> 3) & 0x1FFFFFF8)) >> v18) & 1) != 0);
      v84 = v18;
      sub_24BCA09A8(v85, &v84);
      *(v87 + ((v84 >> 3) & 0x1FFFFFF8)) |= 1 << v84;
      v19 = *(&v86 + 1);
      if (*(&v86 + 1))
      {
        v69 = a1;
        do
        {
          v64 = *(*(*(&v85[0] + 1) + ((v86 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v86 & 0x3FF));
          *&v86 = v86 + 1;
          *(&v86 + 1) = v19 - 1;
          if (v86 >= 0x800)
          {
            operator delete(**(&v85[0] + 1));
            *(&v85[0] + 1) += 8;
            *&v86 = v86 - 1024;
          }

          sub_24BCB7458(v83, 3uLL);
          LODWORD(v73.f64[0]) = v64;
          sub_24BCD573C(a1, &v73, v83);
          for (i = 0; i != 3; ++i)
          {
            v21 = sub_24BCB9024(a1 + 104, v83[0] + i);
            v22 = *(sub_24BCB9024(a1 + 104, v21) + 16);
            if (v22 != -1 && (v87[v22 >> 6] & (1 << v22)) == 0)
            {
              v67 = v87[v22 >> 6];
              v68 = v87;
              v23 = 0;
              v24 = &(*a5)[24 * v64];
              *&v25 = vcvt_f32_f64(*v24);
              *&v26 = v24[1].f64[0];
              *(&v25 + 1) = v26;
              v27 = &(*a5)[24 * v22];
              *v28.i8 = vcvt_f32_f64(*v27);
              v66 = v27;
              *&v29 = v27[1].f64[0];
              v28.i64[1] = v29;
              v30 = *a2;
              v31 = (*a2 + 24 * v64);
              *&v32 = vcvt_f32_f64(*v31);
              *&v33 = v31[1].f64[0];
              *(&v32 + 1) = v33;
              v82 = v22;
              v80 = v28;
              v81 = v25;
              v79 = v32;
              v34 = (v30 + 24 * v22);
              *v28.i8 = vcvt_f32_f64(*v34);
              *&v25 = v34[1].f64[0];
              v28.i64[1] = v25;
              v65 = v28;
              v78 = v28;
              do
              {
                v72[v23] = *(&v79 + v23);
                ++v23;
              }

              while (v23 != 3);
              for (j = 0; j != 3; ++j)
              {
                v71[j] = *&v78.i32[j];
              }

              sub_24BDBEE5C(v72, v71, &v73);
              for (k = 0; k != 3; ++k)
              {
                *&v70.i64[k] = *(&v81 + k);
              }

              v37 = 0;
              v75 = 0uLL;
              v38 = &v73;
              v76 = 0.0;
              do
              {
                v39 = 0;
                v40 = 0.0;
                v41 = v38;
                do
                {
                  v42 = *v41;
                  v41 += 3;
                  v40 = v40 + v42 * *&v70.i64[v39++];
                }

                while (v39 != 3);
                v75.f64[v37++] = v40;
                v38 = (v38 + 8);
              }

              while (v37 != 3);
              *v44.f32 = vcvt_f32_f64(v75);
              *&v43 = v76;
              v44.i64[1] = v43;
              v45 = vmulq_f32(v44, v44);
              v45.i32[3] = 0;
              v46 = vpaddq_f32(v45, v45);
              v47 = vpaddq_f32(v46, v46);
              v48 = xmmword_24BFBD1C0;
              if (v47.f32[0] > 0.0)
              {
                v48 = vdivq_f32(v44, vsqrtq_f32(v47));
              }

              v49 = 0;
              v77 = v48;
              do
              {
                v75.f64[v49] = *&v80.i32[v49];
                ++v49;
              }

              while (v49 != 3);
              for (m = 0; m != 3; ++m)
              {
                v72[m] = v77.f32[m];
              }

              for (n = 0; n != 3; ++n)
              {
                v71[n] = *&v78.i32[n];
              }

              sub_24BDBF084(v75.f64, v72, v71, v73.f64);
              v52 = 0;
              *v54.i8 = vcvt_f32_f64(v73);
              *&v53 = v74;
              v54.i64[1] = v53;
              v70 = v54;
              do
              {
                v73.f64[v52] = *&v70.i32[v52];
                ++v52;
              }

              while (v52 != 3);
              *v66 = v73;
              v66[1].f64[0] = v74;
              v55 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v65, vextq_s8(v65, v65, 0xCuLL)), v65), vuzp2q_s32(vextq_s8(v54, v54, 4uLL), v54)), vzip2q_s32(vzip1q_s32(v54, vextq_s8(v54, v54, 0xCuLL)), v54), vuzp2q_s32(vextq_s8(v65, v65, 4uLL), v65));
              v56 = vmulq_f32(v55, v55);
              v56.i32[3] = 0;
              v57 = vpaddq_f32(v56, v56);
              v58 = vpaddq_f32(v57, v57);
              v59 = xmmword_24BFBD1C0;
              if (v58.f32[0] > 0.0)
              {
                v59 = vdivq_f32(v55, vsqrtq_f32(v58));
              }

              v60 = 0;
              v75 = v59;
              do
              {
                v73.f64[v60] = *(v75.f64 + v60);
                ++v60;
              }

              while (v60 != 3);
              v61 = &(*a6)[24 * v22];
              *v61 = v73;
              v61[1].f64[0] = v74;
              v68[v22 >> 6] = v67 | (1 << v22);
              sub_24BCA09A8(v85, &v82);
            }

            a1 = v69;
          }

          if (v83[0])
          {
            v83[1] = v83[0];
            operator delete(v83[0]);
          }

          v19 = *(&v86 + 1);
        }

        while (*(&v86 + 1));
      }

      v13 = v87;
      v14 = &v87[v88 >> 6];
      v11 = v88 & 0x3F;
    }

    while (v88 > 0x3F || (v88 & 0x3F) != 0);
  }

LABEL_60:
  sub_24BCA102C(v85);
  if (v87)
  {
    operator delete(v87);
  }

  return 1;
}

void sub_24BDBF72C(_Unwind_Exception *a1)
{
  sub_24BCA102C((v1 - 160));
  v3 = *(v1 - 112);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BDBF770(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v6 = *a1;
  v7 = *a1 + 24 * a5;
  v31 = *v7;
  v32 = *(v7 + 16);
  v8 = a4;
  v9 = *a3;
  v10 = *a3 + 24 * a4;
  v29 = *v10;
  v30 = *(v10 + 16);
  v11 = (v9 + 24 * a5);
  v27 = *v11;
  v28 = *(v11 + 2);
  v12 = v23;
  sub_24BDBEE5C(&v27, &v29, v23);
  v13 = 0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  do
  {
    v14 = 0;
    v15 = 0.0;
    v16 = v12;
    do
    {
      v17 = *v16;
      v16 += 3;
      v15 = v15 + v17 * *(&v31 + v14);
      v14 += 8;
    }

    while (v14 != 24);
    *(&v24 + v13++) = v15;
    ++v12;
  }

  while (v13 != 3);
  v18 = sqrt(v25 * v25 + v24 * v24 + v26 * v26);
  if (v18 <= 0.0)
  {
    v20 = 0.0;
    v19 = 1.0;
    v21 = 0.0;
  }

  else
  {
    v19 = v24 / v18;
    v20 = v25 / v18;
    v21 = v26 / v18;
  }

  return vcvtmd_s64_f64(atan2(v20 * *(*a2 + 24 * v8 + 8) + v19 * *(*a2 + 24 * v8) + v21 * *(*a2 + 24 * v8 + 16), v20 * *(v6 + 24 * v8 + 8) + v19 * *(v6 + 24 * v8) + v21 * *(v6 + 24 * v8 + 16)) / 1.57079633 + 0.5) & 3;
}

uint64_t sub_24BDBF8E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v35[0]) = 0;
  sub_24BC9FEFC(&v36, v8);
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LODWORD(__p[0]) = 0;
  sub_24BD0E524(v35, v9);
  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10 != v11)
  {
    v12 = 0;
    v13 = v36;
    v14 = 1;
    do
    {
      if ((v13[v12 >> 6] & (1 << v12)) == 0)
      {
        LODWORD(__p[0]) = v14 - 1;
        v34 = *sub_24BCB9024(a1 + 104, __p);
        v15 = sub_24BC9ECE4(a1, *(a1 + 180), __p[0]);
        if ((*v15 & v16) == 0)
        {
          v17 = sub_24BCB9024(a1 + 104, __p);
          v18 = sub_24BC9ECE4(a1, *(a1 + 180), *v17);
          if ((*v18 & v19) == 0)
          {
            v20 = *(sub_24BCB9024(a1 + 104, __p) + 16);
            v21 = sub_24BCB9024(a1 + 104, &v34);
            v22 = sub_24BDBF770(a3, a4, a2, v20, *(v21 + 16));
            v23 = v35[0];
            *(v35[0] + v12) = v22;
            v23[v34] = -v22 & 3;
          }
        }

        v13 = v36;
        *(v36 + (v12 >> 6)) |= 1 << v12;
        *(v13 + ((v34 >> 3) & 0x1FFFFFF8)) |= 1 << v34;
        v11 = *(a1 + 128);
        v10 = *(a1 + 136);
      }

      v12 = v14;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 2) > v14++);
  }

  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v25) = 0;
    do
    {
      sub_24BCB7458(__p, 3uLL);
      v34 = v25;
      sub_24BCD573C(a1, &v34, __p);
      v26 = 0;
      v27 = __p[0];
      v28 = v35[0];
      v29 = *a5 + 12 * v25;
      do
      {
        *(v29 + v26) = v28[*&v27[v26]];
        v26 += 4;
      }

      while (v26 != 12);
      __p[1] = v27;
      operator delete(v27);
      v25 = (v25 + 1);
    }

    while (v25 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v36)
  {
    operator delete(v36);
  }

  return 1;
}

void sub_24BDBFB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDBFB9C(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v27[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v7 = *a1;
  }

  sub_24BCB0D30(&v25);
  v9 = *(a2 + 104);
  v8 = *(a2 + 112);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D82680];
    v12 = 1;
    do
    {
      if (*(*a3 + 4 * v10))
      {
        v23[0] = 0;
        v23[1] = 0;
        *(v23 + *(*a4 + 4 * v10) - 1) = 1065353216;
        v13 = sub_24BC95264(&v25, "v ", 2);
        v14 = (*(a2 + 8) + 16 * *(a2 + 176));
        v16 = *v14;
        v15 = v14[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v15);
        }

        v17 = sub_24BD36FE4(v13, (*(v16 + 40) + 16 * v10));
        v18 = sub_24BC95264(v17, " ", 1);
        v19 = sub_24BD36FE4(v18, v23);
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v20 = std::locale::use_facet(&v24, v11);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(&v24);
        std::ostream::put();
        std::ostream::flush();
        v9 = *(a2 + 104);
        v8 = *(a2 + 112);
      }

      v10 = v12++;
    }

    while (v10 < (v8 - v9) >> 2);
  }

  v25 = *MEMORY[0x277D82810];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](&v26);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v27);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BDBFE60(void *a1, void *a2, uint64_t *a3, void *a4, _DWORD *a5)
{
  v8 = a1[20] - a1[19];
  v9 = (v8 >> 2);
  sub_24BCB2008(__p, 3uLL);
  sub_24BD41DF4(v28, v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v8 & 0x3FFFFFFFCLL) != 0)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      LODWORD(__p[0]) = v11;
      sub_24BCD567C(a1, __p, v28[0] + v10);
      ++v11;
      v10 += 24;
    }

    while (v9 != v11);
  }

  if (a1[14] != a1[13])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      LODWORD(__p[0]) = v13;
      if (!sub_24BCD93B0(a1, __p))
      {
        v26 = v13;
        sub_24BCB9454(__p, a1 + 13, &v26);
        v26 = sub_24BCB947C(__p);
        if (v26 != -1)
        {
          v15 = 0;
          while (1)
          {
            v16 = sub_24BCB9024((a1 + 13), &v26);
            v17 = 0;
            v18 = *(v16 + 16);
            v19 = -1;
            do
            {
              if (*(*(v28[0] + 24 * v18) + 4 * v17) == v13)
              {
                v19 = v17;
              }

              ++v17;
            }

            while (v17 != 3);
            if (v19 == -1)
            {
              break;
            }

            v15 += *(*a2 + 12 * v18 + 4 * v19);
            v26 = sub_24BCB947C(__p);
            if (v26 == -1)
            {
              v20 = v15 & 3;
              goto LABEL_19;
            }
          }

          v22 = 0;
          goto LABEL_26;
        }

        v20 = 0;
LABEL_19:
        v21 = *a3;
        *(*a3 + 4 * v12) = v20 != 0;
        *(*a4 + 4 * v12) = v20;
        if (*(v21 + 4 * v12))
        {
          ++v14;
        }
      }

      v12 = ++v13;
      if (v13 >= ((a1[14] - a1[13]) >> 2))
      {
        goto LABEL_25;
      }
    }
  }

  v14 = 0;
LABEL_25:
  *a5 += v14;
  v22 = 1;
LABEL_26:
  __p[0] = v28;
  sub_24BC8EE84(__p);
  return v22;
}

void sub_24BDC007C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDC00C4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (a1[20] - a1[19]) >> 2;
  v7 = v6;
  sub_24BDC0F0C(__p, 3uLL);
  sub_24BDC0F88(v70, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  LODWORD(v68) = -1;
  sub_24BD0E524(__p, 3uLL);
  sub_24BDC10C0(v69, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_24BDBE94C(a1, v70, v69);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v68, v6);
  LODWORD(v64[0]) = 0;
  if (v6)
  {
    v8 = 0;
    v58 = v6;
    do
    {
      v9 = v8 >> 6;
      if ((*(v68 + v9) & (1 << v8)) == 0)
      {
        v66 = 0u;
        v67 = 0u;
        *__p = 0u;
        *(v68 + v9) |= 1 << v8;
        sub_24BCA09A8(__p, v64);
        while (*(&v67 + 1))
        {
          v10 = *(*(__p[1] + ((v67 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v67 & 0x3FF));
          *&v67 = v67 + 1;
          --*(&v67 + 1);
          if (v67 >= 0x800)
          {
            operator delete(*__p[1]);
            __p[1] = __p[1] + 8;
            *&v67 = v67 - 1024;
          }

          v11 = 0;
          v12 = 12 * v10;
          do
          {
            v13 = *(*(v70[0] + 24 * v10) + 4 * v11);
            LODWORD(v60) = v13;
            v14 = *(*(v69[0] + 24 * v10) + 4 * v11);
            if (v14 == -1)
            {
              v15 = v10;
            }

            else
            {
              v15 = v13;
            }

            LODWORD(v60) = v15;
            if (!*(*a2 + v12 + 4 * v11))
            {
              if (v14 == -1)
              {
                v16 = v11;
              }

              else
              {
                v16 = v14;
              }

              if (!*(*a2 + 12 * v15 + 4 * v16))
              {
                v17 = v68;
                if (((*(v68 + ((v15 >> 3) & 0x1FFFFFF8)) >> v15) & 1) == 0)
                {
                  v18 = *a3;
                  *(*a3 + v12 + 4 * v11) = 0;
                  *(v18 + 12 * v60 + 4 * v16) = 0;
                  *&v17[(v60 >> 3) & 0x1FFFFFF8] |= 1 << v60;
                  sub_24BCA09A8(__p, &v60);
                }
              }
            }

            ++v11;
          }

          while (v11 != 3);
        }

        sub_24BCA102C(__p);
        v8 = v64[0];
        LODWORD(v6) = v58;
      }

      LODWORD(v64[0]) = ++v8;
    }

    while (v8 < v6);
  }

  v19 = (a1[14] - a1[13]) >> 2;
  LODWORD(v64[0]) = 0;
  sub_24BD0E524(__p, v19);
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((a1[17] - a1[16]) >> 2);
  LOBYTE(v60) = 0;
  sub_24BC9FEFC(v64, v20);
  v22 = a1[16];
  v21 = a1[17];
  if (v21 == v22)
  {
LABEL_44:
    v35 = 0;
    do
    {
      if (!v6)
      {
        break;
      }

      v36 = 0;
      v37 = 0;
      v38 = 1;
      do
      {
        sub_24BCB2008(&v60, 3uLL);
        LODWORD(v59[0]) = v37;
        sub_24BCD567C(a1, v59, &v60);
        v39 = 0;
        v40 = *a3;
        v41 = v60;
        v42 = __p[0];
        v43 = v70[0];
        v44 = v69[0];
        v45 = *a2 + v36;
        v46 = *a3 + v36;
        do
        {
          if (*(v46 + 4 * v39) && !*(v45 + 4 * v39) && v42[v41[v39]] == 1)
          {
            *(v46 + 4 * v39) = 0;
            v47 = *(*(v43 + 24 * v37) + 4 * v39);
            if (v47 != -1)
            {
              *(v40 + 12 * v47 + 4 * *(*(v44 + 24 * v37) + 4 * v39)) = 0;
            }

            v38 = 0;
            --v42[v41[v39]];
            if (v39 == 2)
            {
              v48 = 0;
            }

            else
            {
              v48 = v39 + 1;
            }

            --v42[v41[v48]];
          }

          ++v39;
        }

        while (v39 != 3);
        if (v60)
        {
          v61 = v60;
          operator delete(v60);
        }

        ++v37;
        v36 += 12;
      }

      while (v37 != v7);
      v49 = v35++ > 0x2710;
      v50 = v49;
    }

    while (((v50 | v38) & 1) == 0);
    if (v64[0])
    {
      operator delete(v64[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v51 = 1;
    if (v6)
    {
      v52 = 0;
      v53 = 0;
      v54 = *a2;
      do
      {
        v55 = 0;
        v56 = *a3 + v52;
        do
        {
          if (*(v54 + v55))
          {
            *(v56 + v55) = 1;
          }

          v55 += 4;
        }

        while (v55 != 12);
        ++v53;
        v52 += 12;
        v54 += 12;
      }

      while (v53 != v7);
      v51 = 1;
    }

    goto LABEL_77;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = v23 >> 6;
    v26 = 1 << v23;
    v27 = *(v64[0] + v25);
    if ((v27 & v26) == 0)
    {
      break;
    }

LABEL_43:
    v23 = ++v24;
    if (0xCCCCCCCCCCCCCCCDLL * ((v21 - v22) >> 2) <= v24)
    {
      goto LABEL_44;
    }
  }

  v63 = v24;
  *(v64[0] + v25) = v27 | v26;
  v28 = sub_24BCB9024((a1 + 13), &v63);
  *(v64[0] + ((*v28 >> 3) & 0x1FFFFFF8)) |= 1 << *v28;
  v62 = *(sub_24BCB9024((a1 + 13), &v63) + 16);
  if (v62 != -1 || (v63 = *sub_24BCB9024((a1 + 13), &v63), v62 = *(sub_24BCB9024((a1 + 13), &v63) + 16), v62 != -1))
  {
    sub_24BCB7458(&v60, 3uLL);
    sub_24BCD573C(a1, &v62, &v60);
    sub_24BCB2008(v59, 3uLL);
    sub_24BCD567C(a1, &v62, v59);
    v29 = 0;
    v30 = v60;
    while (*(v60 + v29) != v63)
    {
      if (++v29 == 3)
      {
        v31 = 3;
        goto LABEL_37;
      }
    }

    v31 = v29;
LABEL_37:
    v32 = v59[0];
    if (*(*a3 + 12 * v62 + 4 * v31))
    {
      v33 = __p[0];
      ++*(__p[0] + *(v59[0] + v31));
      v34 = v32[v31 + 1 - 3 * (((v31 + 1) * 0x5555555555555556uLL) >> 64)];
      ++v33[v34];
    }

    else if (!v59[0])
    {
      goto LABEL_41;
    }

    v59[1] = v32;
    operator delete(v32);
    v30 = v60;
    if (!v60)
    {
LABEL_42:
      v22 = a1[16];
      v21 = a1[17];
      goto LABEL_43;
    }

LABEL_41:
    v61 = v30;
    operator delete(v30);
    goto LABEL_42;
  }

  if (v64[0])
  {
    operator delete(v64[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = 0;
LABEL_77:
  if (v68)
  {
    operator delete(v68);
  }

  __p[0] = v69;
  sub_24BC8EE84(__p);
  __p[0] = v70;
  sub_24BC8EE84(__p);
  return v51;
}

void sub_24BDC0718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  __p = (v27 - 136);
  sub_24BC8EE84(&__p);
  __p = (v27 - 112);
  sub_24BC8EE84(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDC0818(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 160);
  v9 = (a1 + 152);
  sub_24BD4308C(v66, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BD4308C(v65, (*v8 - *v9) >> 2);
  sub_24BD4308C(__p, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BDBD74C(a1, v66, v65, __p);
  v10 = *a2;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = 0;
      v14 = (v10 + 24 * v11);
      v15 = v10 + 24 * v12;
      do
      {
        (&v67)[v13] = *(v15 + v13 * 8);
        ++v13;
      }

      while (v13 != 3);
      v16 = -v14[1].f64[0];
      v69 = vnegq_f64(*v14);
      v70 = v16;
      v17 = (*a3 + 24 * v11);
      v18 = (*a3 + 24 * v12);
      for (i = 6; i != 9; ++i)
      {
        v20 = *v18++;
        (&v67)[i] = v20;
      }

      v21 = -v17[1].f64[0];
      v71 = vnegq_f64(*v17);
      v72 = v21;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      sub_24BDC0C74(&v61, &v67, &v73, 4uLL);
      sub_24BCA1A48(&v67, 4uLL);
      v22 = 3 * v11;
      v23 = (v65[0] + 8 * v22);
      v24 = (*a4 + 8 * v22);
      v25 = (v66[0] + 8 * v22);
      v26 = atan2(v23[1] * v24[1] + *v23 * *v24 + v23[2] * v24[2], v24[1] * v25[1] + *v25 * *v24 + v25[2] * v24[2]);
      v27 = 0;
      v28 = v61;
      v29 = v61 + 2;
      v30 = v67;
      do
      {
        v31 = *(v29 - 2);
        v32 = *(v29 - 1);
        v33 = *v29;
        v29 += 3;
        v34 = atan2(v23[1] * v32 + *v23 * v31 + v23[2] * v33, v32 * v25[1] + *v25 * v31 + v25[2] * v33);
        v30[v27++] = fmod(v34 - v26 + ceil(fmax(-(v34 - v26), 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      }

      while (v27 != 4);
      v35 = 0;
      if (v30 == v68)
      {
        v37 = v30;
      }

      else
      {
        v36 = v30 + 1;
        v37 = v30;
        if (v30 + 1 != v68)
        {
          v38 = *v30;
          v39 = *v30;
          v40 = v30 + 1;
          v41 = v30;
          v42 = v30 + 1;
          do
          {
            v43 = *v42++;
            v44 = v43;
            if (v43 < v39)
            {
              v39 = v44;
              v41 = v40;
            }

            v40 = v42;
          }

          while (v42 != v68);
          v45 = v41 - v30;
          v37 = v30;
          v46 = v30 + 1;
          do
          {
            v47 = *v46++;
            v48 = v47;
            if (v38 < v47)
            {
              v38 = v48;
              v37 = v36;
            }

            v36 = v46;
          }

          while (v46 != v68);
          v35 = v45 >> 3;
        }
      }

      v49 = v37 - v30;
      v50 = &v28[3 * v35];
      v51 = (*a6 + 8 * v22);
      *v51 = *v50;
      v51[1] = *(v50 + 1);
      v51[2] = *(v50 + 2);
      v52 = &v28[3 * (v49 >> 3)];
      v53 = (*a7 + 8 * v22);
      *v53 = *v52;
      v53[1] = *(v52 + 1);
      v53[2] = *(v52 + 2);
      if (!v30 || (v68 = v30, operator delete(v30), (v28 = v61) != 0))
      {
        v62 = v28;
        operator delete(v28);
      }

      v10 = *a2;
      v11 = ++v12;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  v54 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BDC0C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDC0C74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCDD9BC(result, a4);
  }

  return result;
}

void sub_24BDC0CE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDC0D00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BDC0D58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BDC0D74(char **a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_24BCDD9BC(a1, v11);
    }

    sub_24BC8E01C();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      *(result + 2) = v5[2];
      v5 += 3;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        *(result + 2) = v5[2];
        v5 += 3;
        result += 24;
      }

      while (v5 != v13);
    }

    while (v13 != a3)
    {
      for (i = 0; i != 3; ++i)
      {
        *&v12[i * 8] = v13[i];
      }

      v13 += 3;
      v12 += 24;
    }

    a1[1] = v12;
  }

  return result;
}

void *sub_24BDC0F0C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BDC0F6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDC0F88(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

uint64_t sub_24BDC1044(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BDC10A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDC10C0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA04D4(result, a2);
  }

  return result;
}

uint64_t sub_24BDC117C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, char **a6, double *a7, uint64_t a8, int a9, int a10, char a11, uint64_t a12)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_24BC94F74(v32, *(a2 + 24));
  sub_24BCA1524(v34, a12);
  sub_24BDC1450(a1, a2, a6, v32, v34);
  sub_24BC9F00C(v34);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *v26 = 0u;
  *v24 = 0u;
  sub_24BDC1F2C(a1, a2, a3, a4, a5, a6, v32, &v29, v24);
  if (*(a12 + 24))
  {
    sub_24BC836D4(__p, &unk_24C0435AF);
    sub_24BC976F4(a12, __p, 0.6);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_24BCA1524(v33, a12);
  v19 = sub_24BD4D76C(v24, a4, a5, a6, a7, 0, a10, a11, v33);
  sub_24BC9F00C(v33);
  if (v19)
  {
    sub_24BDC2498(a1, a2, v32, &v29);
    sub_24BDC2524(a1, a2, a4, v32, &v29);
    if (*(a12 + 24))
    {
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BC976F4(a12, __p, 0.9);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v24[1])
  {
    *&v25 = v24[1];
    operator delete(v24[1]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_24BDC13C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9EE94(&a16);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_24BDC1450(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  sub_24BDC287C(a2);
  v9 = *(a2 + 24);
  v89 = a1;
  v12 = *(a1 + 128);
  v11 = a1 + 128;
  v10 = v12;
  *(v11 + 24) = v9;
  *(v11 + 28) = v9;
    ;
  }

  *(v89 + 136) = v10;
  sub_24BDC28D8(v11, v9);
  if (v9)
  {
    v14 = 0;
    do
    {
      *sub_24BDC2964(v11, v14, v14) = 0x3FF0000000000000;
      ++v14;
    }

    while (v9 != v14);
  }

  v15 = *(a2 + 28);
  a4[1] = *a4;
  v16 = *(a2 + 24);
  LODWORD(v107[0]) = -1;
  sub_24BD7B3FC(a4, v16, v107);
  LOBYTE(v107[0]) = 0;
  sub_24BC9FEFC(&v112, v15);
  v17 = *a3;
  v18 = a3[1] - *a3;
  if (v18)
  {
    v19 = v18 >> 2;
    v20 = v112;
    v21 = 1;
    do
    {
      v22 = *v17;
      v17 += 4;
      *&v20[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    }

    while (v19 > v21++);
  }

  v24 = sub_24BDC3328(v111, *(a2 + 24), *(a2 + 28));
  sub_24BDC29D8(v24, a2);
  memset(v107, 0, sizeof(v107));
  v109 = 0;
  v110 = 0;
  v108 = &v109;
  LODWORD(__p) = 0;
  sub_24BD7B3FC(v107, v9, &__p);
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v26 = (*a2 + 40 * j);
      v27 = v26[2];
      if (v27)
      {
        v28 = 0;
        do
        {
          if (v27[3] != 0.0)
          {
            ++v28;
          }

          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        v28 = 0;
      }

      LODWORD(__p) = v15 - 1;
      v29 = sub_24BD80E70(v26, &__p);
      if (v29 && *(v29 + 3) != 0.0)
      {
        --v28;
      }

      v30 = *(v107[0] + j) + 1;
      *(v107[0] + j) = v30;
      __p = __PAIR64__(j, v28);
      v100 = v30;
      sub_24BDC3664(&v108, &__p);
    }
  }

  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v106, v9);
  __src = 0;
  v104 = 0;
  v105 = 0;
  sub_24BCB8D20(&__src, v9);
  if (*(a5 + 24))
  {
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BC976F4(a5, &__p, 0.41);
    if (SHIBYTE(v101) < 0)
    {
      operator delete(__p);
    }
  }

  v88 = v110;
  v87 = v110;
  v31 = v15 - 1;
  while ((sub_24BDC2AF8(v107) & 1) == 0)
  {
    v32 = v110;
    if (__ROR8__(0x1CAC083126E978D5 * v110, 3) <= 0x4189374BC6A7EFuLL)
    {
      if (*(a5 + 24))
      {
        sub_24BC836D4(&__p, &unk_24C0435AF);
        v44 = ((v88 - v32) / v87 * 18.9 + 41.0) / 100.0;
        sub_24BC976F4(a5, &__p, v44);
        if (SHIBYTE(v101) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v33 = sub_24BDC2B6C(v107);
    v34 = v33;
    v35 = v104;
    if (v104 >= v105)
    {
      v37 = __src;
      v38 = v104 - __src;
      v39 = (v104 - __src) >> 2;
      v40 = v39 + 1;
      if ((v39 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v41 = v105 - __src;
      if ((v105 - __src) >> 1 > v40)
      {
        v40 = v41 >> 1;
      }

      v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
      v43 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v42)
      {
        v43 = v40;
      }

      if (v43)
      {
        sub_24BC92E0C(&__src, v43);
      }

      *(4 * v39) = v33;
      v36 = 4 * v39 + 4;
      memcpy(0, v37, v38);
      v45 = __src;
      __src = 0;
      v104 = v36;
      v105 = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v104 = v33;
      v36 = (v35 + 4);
    }

    v104 = v36;
    v46 = v34;
    *(v106 + ((v34 >> 3) & 0x1FFFFFF8)) |= 1 << v34;
    v102 = -1;
    sub_24BDC3790(&__p, *a2 + 40 * v34);
    v47 = v101;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    if (v101)
    {
      LODWORD(v48) = 0;
      v49 = v101;
      do
      {
        if (v49[3] == 0.0)
        {
          v48 = v48;
        }

        else
        {
          v48 = (v48 + 1);
        }

        v49 = *v49;
      }

      while (v49);
    }

    else
    {
      v48 = 0;
    }

    LODWORD(p_p) = -1;
    sub_24BD7B3FC(&v96, v48, &p_p);
    v95 = 0;
    if (v47)
    {
      v50 = 0;
      v51 = v112;
      v52 = 1;
      v53 = -1;
      v54 = v96;
      v55 = -1.79769313e308;
      v56 = 1.79769313e308;
      do
      {
        v57 = *(v47 + 3);
        if (v57 != 0.0)
        {
          v58 = *(v47 + 4);
          if (v58 != v31)
          {
            v59 = fabs(v57);
            if ((*&v51[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v58))
            {
              v52 = (v59 == v59) & v52;
              v54[v50] = v59;
              v50 = ++v95;
              v60 = fabs(v59 + -1.0);
              if (v59 > 0.00000001 && v60 < v56)
              {
                v56 = v60;
                v53 = v58;
              }
            }

            else if (v59 > v55)
            {
              v102 = *(v47 + 4);
              v55 = v59;
            }
          }
        }

        v47 = *v47;
      }

      while (v47);
      v61 = v56 > 0.000001;
      if (v55 > 0.00000001)
      {
        v53 = v102;
        goto LABEL_66;
      }
    }

    else
    {
      v61 = 1;
      v53 = -1;
      v52 = 1;
    }

    v102 = v53;
LABEL_66:
    *(*a4 + 4 * v34) = v53;
    v62 = v102;
    if (v102 != -1)
    {
      if (((*&v112[(v102 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v102) & v61 & v52 & 1) == 0 || (sub_24BDC2BD4(v89, a2, v34, &v102, &v96, &v95), v62 = v102, v102 != -1))
      {
        v63 = sub_24BDC2964(a2, v34, v62);
        v64 = *(v111[0] + 40 * v102 + 16);
        if (v64)
        {
          v65 = *v63;
          do
          {
            v66 = *(v64 + 4);
            if (((*(v106 + ((v66 >> 3) & 0x1FFFFFF8)) >> v66) & 1) == 0)
            {
              v67 = *(v64 + 3);
              sub_24BDC3790(v94, *a2 + 40 * v46);
              v68 = -v67 / v65;
              sub_24BDC2C70(v66, v94, a2, v111, v68);
              sub_24BCA3B84(v94);
              *sub_24BDC2964(a2, *(v64 + 4), v102) = 0;
              *sub_24BDC2D54(v111, *(v64 + 4), v102) = 0;
              v69 = *(v64 + 4);
              v70 = *(*a2 + 40 * v69 + 16);
              if (v70)
              {
                v71 = 0;
                do
                {
                  if (v70[3] != 0.0)
                  {
                    ++v71;
                  }

                  v70 = *v70;
                }

                while (v70);
              }

              else
              {
                v71 = 0;
              }

              v72 = *sub_24BDC2964(a2, *(v64 + 4), v31) != 0.0;
              v73 = *(v107[0] + v69) + 1;
              *(v107[0] + v69) = v73;
              LODWORD(p_p) = v71 - v72;
              HIDWORD(p_p) = v69;
              v92 = v73;
              sub_24BDC3664(&v108, &p_p);
              sub_24BDC3790(&p_p, *v11 + 40 * v46);
              v74 = v93;
              if (v93)
              {
                v75 = (*v11 + 40 * *(v64 + 4));
                do
                {
                  v76 = v68 * *(v74 + 3);
                  *(v74 + 3) = v76;
                  v113 = v74 + 2;
                  v77 = sub_24BDC3A38(v75, v74 + 4);
                  *(v77 + 3) = v76 + *(v77 + 3);
                  v74 = *v74;
                }

                while (v74);
              }

              sub_24BCA3B84(&p_p);
            }

            v64 = *v64;
          }

          while (v64);
        }
      }
    }

    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }

    sub_24BCA3B84(&__p);
  }

  sub_24BDC287C(a2);
  sub_24BDC3C70(&__p, *(a2 + 24), *(a2 + 28));
  sub_24BDC2DC8(&__p, a2);
  sub_24BDC3C70(&p_p, *(v89 + 152), *(v89 + 156));
  sub_24BDC2DC8(&p_p, v11);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  sub_24BCC9A1C(&v96, *a4, a4[1], (a4[1] - *a4) >> 2);
  sub_24BC8CAB0(a4, 0);
  LODWORD(v113) = -1;
  sub_24BD7B3FC(a4, (v97 - v96) >> 2, &v113);
  if (v9)
  {
    v78 = 0;
    v79 = __src;
    v80 = 32;
    do
    {
      v81 = *&v79[v78];
      v82 = __p + 40 * v81;
      v83 = (*a2 + v80 - 32);
      if (v83 != v82)
      {
        *(*a2 + v80) = *(v82 + 8);
        sub_24BDC3CEC(v83, *(v82 + 2), 0);
        v79 = __src;
        v81 = *(__src + v78);
      }

      v84 = &p_p[5 * v81];
      v85 = (*v11 + v80 - 32);
      if (v85 != v84)
      {
        *(*v11 + v80) = *(v84 + 8);
        sub_24BDC3CEC(v85, v84[2], 0);
        v79 = __src;
        v81 = *(__src + v78);
      }

      v86 = v96;
      *(*a4 + v78) = *(v96 + v81);
      v78 += 4;
      v80 += 40;
    }

    while (4 * v9 != v78);
LABEL_96:
    v97 = v86;
    operator delete(v86);
  }

  else
  {
    v86 = v96;
    if (v96)
    {
      goto LABEL_96;
    }
  }

  v96 = &p_p;
  sub_24BDC35E0(&v96);
  p_p = &__p;
  sub_24BDC35E0(&p_p);
  if (__src)
  {
    v104 = __src;
    operator delete(__src);
  }

  if (v106)
  {
    operator delete(v106);
  }

  sub_24BDC4258(v107);
  v107[0] = v111;
  sub_24BDC35E0(v107);
  if (v112)
  {
    operator delete(v112);
  }
}

void sub_24BDC1DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  sub_24BDC4258(&a46);
  a46 = v46 - 224;
  sub_24BDC35E0(&a46);
  v48 = *(v46 - 192);
  if (v48)
  {
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void sub_24BDC1F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, int **a6, uint64_t *a7, int **a8, int32x2_t *a9)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_24BCB8D20(&v66, (a7[1] - *a7) >> 2);
  v56 = a8;
  v57 = a5;
  *(a1 + 8) = *a1;
  *(a1 + 32) = *(a1 + 24);
  sub_24BCA1A48(&v64, *(a2 + 24));
  v18 = *a7;
  v17 = a7[1];
  if (v17 != *a7)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v18 + 4 * v19);
      v63 = v21;
      if (v21 != -1)
      {
        v22 = *sub_24BDC2964(a2, v20, v21);
        sub_24BC97D60(&v66, &v63);
        LODWORD(__p[0]) = v63;
        sub_24BC97D60((a1 + 24), __p);
        sub_24BDC3790(__p, *a3 + 40 * v63);
        v23 = (*a2 + 40 * v19);
        LODWORD(v69[0]) = *(a2 + 28) - 1;
        v59[0] = v69;
        v24 = *(sub_24BDC4A90(v23, v69) + 3);
        *(v64 + v19) = -v24;
        LODWORD(v69[0]) = *(a2 + 28) - 1;
        v59[0] = v69;
        sub_24BDC4A90(v23, v69)[3] = 0;
        for (i = v23[2]; i; i = *i)
        {
          for (j = v62; j; j = *j)
          {
            v27 = *(j + 3) * (*(i + 3) / v22);
            if (v27 != 0.0)
            {
              v28 = *(i + 4);
              if (v28 < *(a2 + 28) - 1)
              {
                v29 = sub_24BDC2D54(a3, v28, *(j + 4));
                *v29 = *v29 - v27;
              }
            }
          }

          v30 = *(i + 4);
          if (v30 < *(a2 + 28) - 1)
          {
            sub_24BDC4298(a1, v30, v63, 0, -*(i + 3) / v22);
          }
        }

        sub_24BDC3790(v59, *a3 + 40 * v63);
        for (k = v60; k; k = *k)
        {
          for (m = v23[2]; m; m = *m)
          {
            v33 = *(k + 3) * (*(m + 3) / v22);
            if (v33 != 0.0)
            {
              v34 = *(m + 4);
              if (v34 < *(a2 + 28) - 1)
              {
                v35 = sub_24BDC2D54(a3, *(k + 4), v34);
                *v35 = *v35 - v33;
              }
            }
          }

          sub_24BDC4298(a1, *(k + 4), v20, 1, -*(k + 3) / v22);
        }

        v58 = *(a2 + 28) - 1;
        v69[0] = &v58;
        *(sub_24BDC4A90(v23, &v58) + 3) = v24;
        sub_24BCA3B84(v59);
        sub_24BCA3B84(__p);
        v18 = *a7;
        v17 = a7[1];
      }

      v19 = ++v20;
    }

    while (v20 < ((v17 - v18) >> 2));
  }

  if ((a1 + 184) != &v64)
  {
    sub_24BD07E64((a1 + 184), v64, v65, (v65 - v64) >> 3);
  }

  if ((a1 + 160) != v57)
  {
    sub_24BD07E64((a1 + 160), *v57, v57[1], (v57[1] - *v57) >> 3);
  }

  sub_24BDC43B4(a1, &v64, v57);
  sub_24BDC287C(a3);
  sub_24BDC4430(a3, a9);
  v59[0] = 0;
  sub_24BCA2138(__p, (v67 - v66) >> 2);
  sub_24BDC4560(&v66, __p, a9, a4, v57);
  sub_24BC8CAB0(v56, (*(a3 + 28) + 1));
  v36 = *v56;
  v37 = v56[1];
  v38 = v37 - *v56;
  if (v37 != *v56)
  {
    v39 = 0;
    v40 = v38 >> 2;
    do
    {
      v36[v39] = v39;
      ++v39;
    }

    while (v40 > v39);
  }

  sub_24BDC493C(&v66, v56, -1, -1);
  v41 = *a6;
  v42 = a6[1];
  v43 = v42 - *a6;
  if (v42 == *a6)
  {
    v52 = 0;
  }

  else
  {
    v44 = 0;
    v45 = v43 >> 2;
    v46 = *v56;
    v47 = 1;
    v48 = *a6;
    do
    {
      v49 = *v48++;
      v50 = v46[v49];
      if (v50 != -1)
      {
        v41[v44++] = v50;
      }
    }

    while (v45 > v47++);
    v52 = v44;
  }

  sub_24BC8CAB0(a6, v52);
  v53 = *a6;
  v54 = a6[1];
  std::__sort<std::__less<int,int> &,int *>();
  v55 = sub_24BCA29B4(*a6, a6[1]);
  sub_24BC8CAB0(a6, v55 - *a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_24BDC23F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDC2498(void *a1, uint64_t *a2, char **a3, char **a4)
{
  sub_24BDC2DC8(a1 + 12, a2);
  if (a1 + 6 != a3)
  {
    sub_24BCA2A30(a1 + 6, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  result = a1 + 9;
  if (a1 + 9 != a4)
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = (v9 - *a4) >> 2;

    return sub_24BCA2A30(result, v8, v9, v10);
  }

  return result;
}

void sub_24BDC2524(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  sub_24BC92930(a3, (a5[1] - *a5) >> 2);
  v9 = a3[1];
  *(v9 - 8) = 0x3FF0000000000000;
  v10 = *a5;
  v11 = ((a5[1] - *a5) >> 2) - 2;
  if (v11 >= 0)
  {
    v12 = *a3;
    do
    {
      v13 = *(v10 + 4 * v11);
      if (v13 != -1)
      {
        *(v12 + 8 * v11) = *(v12 + 8 * v13);
      }

      v14 = v11-- <= 0;
    }

    while (!v14);
  }

  v15 = (a4[1] - *a4) >> 2;
  v16 = (v15 - 1);
  if (v15 - 1 >= 0)
  {
    do
    {
      v17 = *(*a4 + 4 * v16);
      if (v17 != -1)
      {
        v18 = sub_24BDC2964(a2, v16, *(*a4 + 4 * v16));
        v19 = *(*a2 + 40 * v16 + 16);
        v20 = *a3;
        for (i = 0.0; v19; v19 = *v19)
        {
          i = i + *(v20 + 8 * *(v19 + 4)) * v19[3];
        }

        *(v20 + 8 * v17) = *(v20 + 8 * v17) - i / *v18;
      }

      v14 = v16-- <= 0;
    }

    while (!v14);
    v9 = a3[1];
  }

  v22 = ((v9 - *a3) >> 3) - 1;

  sub_24BC92930(a3, v22);
}

uint64_t sub_24BDC2670(int **a1, int *a2)
{
  v4 = *a2;
  v5 = -1;
  v6 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v4 >= 2)
    {
      v7 = 0;
      v8 = *a1;
      v9 = 1;
      do
      {
        v10 = v8[v7];
        v11 = v5;
        v12 = v8[v7 + 1];
        if (v10 == 0x80000000)
        {
          v13 = 0;
        }

        else
        {
          v13 = -v10;
        }

        if (v10 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        if (v12 == 0x80000000)
        {
          v15 = 0;
        }

        else
        {
          v15 = -v12;
        }

        if (v12 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        v17 = sub_24BDC2814(v14, v16);
        if (v17 >= 0)
        {
          v5 = v17;
        }

        else
        {
          v5 = -v17;
        }

        v8 = *a1;
        (*a1)[v7] = v5;
        if (v7)
        {
          v9 &= v11 == v5;
        }

        v4 = *a2;
        if (v5 == 2)
        {
          if (v4 < 1)
          {
            v6 = 2;
            goto LABEL_34;
          }

          v18 = *a2;
          v19 = v8;
          while (1)
          {
            v20 = *v19++;
            if (v20)
            {
              break;
            }

            if (!--v18)
            {
              v6 = 2;
              break;
            }
          }
        }

        if (v7 + 1 >= v4 - 1)
        {
          break;
        }

        ++v7;
      }

      while (v5 != 2);
      if (v5 == 2)
      {
        goto LABEL_34;
      }

      if (v4 >= 2 && (v9 & 1) != 0)
      {
        break;
      }
    }

    if (!--v4)
    {
      v22 = *a1;
      goto LABEL_52;
    }

    *a2 = v4;
  }

  v24 = **a1;
  v23 = (*a1)[1];
  if (v24 == 0x80000000)
  {
    v25 = 0;
  }

  else
  {
    v25 = -v24;
  }

  if (v24 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  if (v23 == 0x80000000)
  {
    v27 = 0;
  }

  else
  {
    v27 = -v23;
  }

  if (v23 >= 0)
  {
    v28 = (*a1)[1];
  }

  else
  {
    v28 = v27;
  }

  v29 = sub_24BDC2814(v26, v28);
  if (v29 >= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -v29;
  }

  v22 = *a1;
  **a1 = v30;
  *a2 = 1;
LABEL_52:
  v31 = *v22;
  if (v31 * v31 == 1)
  {
    v6 = v6;
  }

  else
  {
    v6 = v31;
  }

  v4 = 1;
LABEL_34:
  *a2 = v4 - 1;
  return v6;
}

uint64_t sub_24BDC2814(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

uint64_t sub_24BDC287C(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  while (v1 != v2)
  {
    v3 = v1[2];
    while (v3)
    {
      if (*(v3 + 24) == 0.0)
      {
        result = sub_24BD80CF0(v1, v3);
        v3 = result;
      }

      else
      {
        v3 = *v3;
      }
    }

    v1 += 5;
  }

  return result;
}

uint64_t sub_24BDC28D8(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24BDC2EBC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = sub_24BCA3B84(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t *sub_24BDC2964(void *a1, unsigned int a2, unsigned int a3)
{
  v10 = a3;
  v5 = sub_24BD80E70((*a1 + 40 * a2), &v10);
  if (!v5)
  {
    v6 = (*a1 + 40 * a2);
    v8 = v10;
    v9 = 0;
    v5 = sub_24BDC30F8(v6, &v8);
  }

  return v5 + 3;
}

uint64_t sub_24BDC29D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v4;
  v5 = a1[1];
  v6 = *a1;
  if (v5 != *a1)
  {
    do
    {
      v5 = sub_24BCA3B84(v5 - 40);
    }

    while (v5 != v6);
    v4 = *(a1 + 7);
  }

  a1[1] = v6;
  result = sub_24BDC28D8(a1, v4);
  v15 = 0;
  v9 = *a2;
  v8 = a2[1];
  if (v8 != *a2)
  {
    LODWORD(v10) = 0;
    v11 = 0;
    do
    {
      v12 = *(v9 + 40 * v11 + 16);
      if (v12)
      {
        do
        {
          v13 = v12[3];
          v14 = (*a1 + 40 * *(v12 + 4));
          v16 = &v15;
          result = sub_24BDC3A38(v14, &v15);
          *(result + 24) = v13;
          v12 = *v12;
        }

        while (v12);
        LODWORD(v10) = v15;
        v9 = *a2;
        v8 = a2[1];
      }

      v10 = (v10 + 1);
      v15 = v10;
      v11 = v10;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3) > v10);
  }

  return result;
}

uint64_t sub_24BDC2AF8(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  do
  {
    v2 = *(a1 + 24);
    v3 = v2[9];
    v4 = *(*a1 + 4 * v2[8]);
    v5 = v4 != v3;
    if (v4 == v3)
    {
      break;
    }

    sub_24BCADE5C((a1 + 24), *(a1 + 24));
    operator delete(v2);
  }

  while (*(a1 + 40));
  return v5;
}

uint64_t sub_24BDC2B6C(uint64_t a1)
{
  while (*(a1 + 40))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 32);
    v4 = *(v2 + 36);
    sub_24BCADE5C((a1 + 24), v2);
    operator delete(v2);
    if (*(*a1 + 4 * v3) == v4)
    {
      return v3;
    }
  }

  return 0;
}

BOOL sub_24BDC2BD4(uint64_t a1, void *a2, signed int a3, uint64_t a4, int **a5, int *a6)
{
  v8 = sub_24BDC2670(a5, a6);
  v9 = fabs(v8);
  if (v9 != 1.0)
  {
    for (i = *(*a2 + 40 * a3 + 16); i; i = *i)
    {
      v11 = *(i + 3) / v8;
      *sub_24BDC2964(a2, a3, *(i + 4)) = v11;
    }
  }

  return v9 != 1.0;
}

double *sub_24BDC2C70(double *result, uint64_t a2, void *a3, void *a4, double a5)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v9 = result;
    do
    {
      v10 = *(v5 + 3);
      v11 = sub_24BDC2964(a3, v9, *(v5 + 4));
      *v11 = *v11 + a5 * v10;
      v12 = *(v5 + 3);
      v13 = sub_24BDC2D54(a4, v9, *(v5 + 4));
      *v13 = *v13 + a5 * v12;
      result = sub_24BDC2964(a3, v9, *(v5 + 4));
      if (fabs(*result) < 0.00000001)
      {
        *sub_24BDC2964(a3, v9, *(v5 + 4)) = 0;
        result = sub_24BDC2D54(a4, v9, *(v5 + 4));
        *result = 0.0;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_24BDC2D54(void *a1, unsigned int a2, unsigned int a3)
{
  v10 = a2;
  v5 = sub_24BD80E70((*a1 + 40 * a3), &v10);
  if (!v5)
  {
    v6 = (*a1 + 40 * a3);
    v8 = v10;
    v9 = 0;
    v5 = sub_24BDC30F8(v6, &v8);
  }

  return v5 + 3;
}

void sub_24BDC2DC8(uint64_t *a1, uint64_t *a2)
{
  a1[3] = a2[3];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  sub_24BDC33A4(a1, v4, v10);
  sub_24BCA3B84(v10);
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *a2;
      if (v6 != *a2)
      {
        *(v6 + v7 + 32) = *(v9 + v7 + 32);
        sub_24BDC3CEC((v6 + v7), *(v9 + v7 + 16), 0);
        v6 = *a1;
        v5 = a1[1];
      }

      ++v8;
      v7 += 40;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3));
  }
}

uint64_t sub_24BDC2EBC(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_24BC8E01C();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_24BCCCB14(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    sub_24BDC3038(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_24BDC30A8(&v17);
  }

  return result;
}

void sub_24BDC3024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDC30A8(va);
  _Unwind_Resume(a1);
}

void sub_24BDC3038(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_24BD1CBB8(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_24BCA3B84(v6);
      v6 += 40;
    }
  }
}

uint64_t sub_24BDC30A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_24BCA3B84(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_24BDC30F8(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24BDC3328(uint64_t a1, int a2, unsigned int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  sub_24BDC33A4(a1, a3, v5);
  sub_24BCA3B84(v5);
  return a1;
}

void sub_24BDC3384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_24BCA3B84(&a9);
  sub_24BDC35E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BDC33A4(void *a1, unint64_t a2, uint64_t a3)
{
  result = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return sub_24BDC3430(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 40 * a2;
    while (result != v8)
    {
      result = sub_24BCA3B84((result - 5));
    }

    a1[1] = v8;
  }

  return result;
}

void *sub_24BDC3430(void *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        result = sub_24BDC3790(v7, a3);
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    *(v5 + 8) = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      sub_24BC8E01C();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v25 = result;
    if (v11)
    {
      sub_24BCCCB14(result, v11);
    }

    v14 = 40 * v8;
    v22 = 0;
    v23 = v14;
    v24 = v14;
    v15 = 5 * a2;
    v16 = v14 + 40 * a2;
    v17 = 8 * v15;
    do
    {
      sub_24BDC3790(v14, a3);
      v14 += 40;
      v17 -= 40;
    }

    while (v17);
    *&v24 = v16;
    v18 = *(v5 + 8);
    v19 = v23 + *v5 - v18;
    sub_24BDC3038(v5, *v5, v18, v19);
    v20 = *v5;
    *v5 = v19;
    v21 = *(v5 + 16);
    *(v5 + 8) = v24;
    *&v24 = v20;
    *(&v24 + 1) = v21;
    v22 = v20;
    v23 = v20;
    return sub_24BDC30A8(&v22);
  }

  return result;
}

void sub_24BDC35B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDC30A8(va);
  _Unwind_Resume(a1);
}

void sub_24BDC35E0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_24BCA3B84(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24BDC3664(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_24BDC3700(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_24BDC3700(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    do
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 7);
        if (v6 >= v10)
        {
          if (v6 != v10)
          {
            break;
          }

          v11 = *(v9 + 8);
          if (v7 >= v11 && (v7 != v11 || v8 >= *(v9 + 9)))
          {
            break;
          }
        }

        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= v6)
      {
        v12 = *(v9 + 8);
        if (v12 >= v7 && (v12 != v7 || *(v9 + 9) >= v8))
        {
          break;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = result;
  }

LABEL_17:
  *a2 = v9;
  return result;
}

uint64_t sub_24BDC3790(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24BCA3EB4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24BDC3808(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_24BDC3808(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_24BDC3A38(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24BDC3C70(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  sub_24BDC33A4(a1, a2, v5);
  sub_24BCA3B84(v5);
  return a1;
}

void sub_24BDC3CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_24BCA3B84(&a9);
  sub_24BDC35E0(&a9);
  _Unwind_Resume(a1);
}

void sub_24BDC3CEC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_24BDC3E00(a1, v9, v8 + 4);
        sub_24BD1C0D8(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_24BDC41CC();
  }
}

void sub_24BDC3DCC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_24BDC3E00(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_24BDC3F60(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_24BDC3F60(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_24BDC4050(a1, prime);
    }
  }
}

void sub_24BDC4050(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_24BC8DFE8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_24BDC4258(uint64_t a1)
{
  sub_24BCC8A84(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BDC4298(uint64_t a1, int a2, int a3, char a4, double a5)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_24BDC4CC8(a1, v13);
    }

    v14 = 24 * v10;
    *v14 = a2;
    *(v14 + 4) = a3;
    *(v14 + 8) = a5;
    *(v14 + 16) = a4;
    v9 = 24 * v10 + 24;
    v15 = *(a1 + 8) - *a1;
    v16 = (24 * v10 - v15);
    memcpy(v16, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    *(v8 + 4) = a3;
    *(v8 + 8) = a5;
    v9 = v8 + 24;
    *(v8 + 16) = a4;
  }

  *(a1 + 8) = v9;
}

int **sub_24BDC43B4(int **result, uint64_t *a2, uint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = *a3;
    v6 = *a2;
    v7 = -1;
    v8 = 0.0;
    do
    {
      if (*(v4 + 16) == 1)
      {
        *(v5 + 8 * *v4) = *(v5 + 8 * *v4) + v4[1] * *(v6 + 8 * *(v4 + 1));
      }

      else
      {
        v9 = *(v4 + 1);
        if (v9 != v7)
        {
          v8 = *(v5 + 8 * v9);
          v7 = *(v4 + 1);
        }

        *(v5 + 8 * *v4) = *(v5 + 8 * *v4) + v4[1] * v8;
      }

      v4 += 3;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_24BDC4430(uint64_t *a1, unsigned int *a2)
{
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  *a2 = v5;
  a2[1] = v4;
  sub_24BC92930(a2 + 1, v5 + 1);
  v6 = *(a2 + 1);
  *v6 = 0;
  v7 = *a2;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a1;
    do
    {
      v11 = *(v10 + 40 * v9 + 16);
      if (v11)
      {
        LODWORD(v12) = 0;
        do
        {
          if (v11[3] == 0.0)
          {
            v12 = v12;
          }

          else
          {
            v12 = (v12 + 1);
          }

          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v8 += v12;
      v6[++v9] = v8;
    }

    while (v9 != v7);
  }

  sub_24BC92930(a2 + 7, v6[v7]);
  sub_24BC8CAB0(a2 + 4, *(*(a2 + 1) + 8 * *a2));
  v13 = *a2;
  if (*a2 >= 1)
  {
    v14 = 0;
    v15 = *a1;
    do
    {
      v16 = *(v15 + 40 * v14 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = *(a2 + 1);
        v19 = *(a2 + 7);
        v20 = *(a2 + 4);
        do
        {
          v21 = v16[3];
          if (v21 != 0.0)
          {
            v22 = *(v18 + 8 * v14) + v17;
            *(v19 + 8 * v22) = v21;
            *(v20 + 4 * v22) = *(v16 + 4);
          }

          ++v17;
          v16 = *v16;
        }

        while (v16);
        v13 = *a2;
      }

      ++v14;
    }

    while (v14 < v13);
  }
}

void sub_24BDC4560(uint64_t *a1, uint64_t *a2, int32x2_t *a3, uint64_t *a4, uint64_t *a5)
{
  v67 = *a3;
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  v12 = v11 >> 2;
  if ((v11 >> 2))
  {
    v13 = 0;
    v14 = a3[1];
    v15 = a3[4];
    v16 = a3[7];
    v17 = *a2;
    v18 = *a5;
    v19 = (v11 >> 2);
    do
    {
      v20 = *(v9 + 4 * v13);
      v21 = *(*&v14 + 8 * v20);
      v22 = *(*&v14 + 8 + 8 * v20);
      if (v21 < v22)
      {
        v23 = v21;
        v24 = v22;
        v25 = (*&v15 + 4 * v21);
        v26 = (*&v16 + 8 * v23);
        v27 = v24 - v23;
        do
        {
          v29 = *v25++;
          v28 = v29;
          v30 = *v26++;
          *(v18 + 8 * v28) = *(v18 + 8 * v28) - *(v17 + 8 * v13) * v30;
          --v27;
        }

        while (v27);
      }

      ++v13;
    }

    while (v13 != v19);
  }

  __src = 0;
  v71 = 0;
  v72 = 0;
  sub_24BCC9A1C(&__src, v9, v10, v12);
  std::__sort<std::__less<int,int> &,int *>();
  v31 = v71;
  if (v71 >= v72)
  {
    v33 = __src;
    v34 = v71 - __src;
    v35 = (v71 - __src) >> 2;
    v36 = v35 + 1;
    if ((v35 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v37 = v72 - __src;
    if ((v72 - __src) >> 1 > v36)
    {
      v36 = v37 >> 1;
    }

    v38 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
    v39 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v38)
    {
      v39 = v36;
    }

    if (v39)
    {
      sub_24BC92E0C(&__src, v39);
    }

    *(4 * v35) = 0x7FFFFFFF;
    v32 = 4 * v35 + 4;
    memcpy(0, v33, v34);
    v40 = __src;
    __src = 0;
    v71 = v32;
    v72 = 0;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    *v71 = 0x7FFFFFFF;
    v32 = (v31 + 4);
  }

  v41 = (v67.i32[0] - v12);
  v71 = v32;
  sub_24BC91EAC(v69, v41);
  if (v67.i32[0])
  {
    v42 = 0;
    v43 = 0;
    v44 = __src;
    v45 = *a5;
    v46 = *a4;
    v47 = v69[0];
    do
    {
      if (v42 == v44[v43])
      {
        ++v43;
      }

      else
      {
        v48 = v42 - v43;
        *(v45 + 8 * v48) = *(v45 + 8 * v42);
        *(v46 + 8 * v48) = *(v46 + 8 * v42);
        v47[v48] = v42;
      }

      ++v42;
    }

    while (v67.u32[0] != v42);
  }

  sub_24BC92930(a5, v41);
  sub_24BC92930(a4, v41);
  sub_24BD0E524(__p, v67.u32[1]);
  v49 = __src;
  v50 = __p[0];
  if (v67.i32[1] >= 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    do
    {
      if (v51 == *&v49[4 * v53])
      {
        ++v53;
        ++v52;
      }

      else
      {
        v50[v51] = v51 - v52;
      }

      ++v51;
    }

    while (v67.u32[1] != v51);
  }

  if (v67.i32[0])
  {
    v54 = 0;
    LODWORD(v55) = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = a3[1];
    v60 = a3[4];
    do
    {
      if (v54 == *&v49[4 * v56])
      {
        ++v56;
        ++v54;
        v58 += *(*&v59 + 8 * v54) - v55;
        v55 = *(*&v59 + 8 * v54);
      }

      else
      {
        ++v54;
        v55 = *(*&v59 + 8 * v54);
        if (v58 < v55)
        {
          v61 = a3[7];
          v62 = (*&v60 + 4 * v58);
          v63 = (*&v61 + 8 * v58);
          v64 = v55 - v58;
          do
          {
            v65 = *v62++;
            v66 = v50[v65];
            if (v66 != -1)
            {
              *(*&v61 + 8 * v57) = *v63;
              *(*&v60 + 4 * v57++) = v66;
            }

            ++v63;
            --v64;
          }

          while (v64);
          v58 = v55;
        }
      }

      *(*&v59 + 8 * (v54 - v56)) = v57;
    }

    while (v54 != v67.u32[0]);
  }

  *a3 = vadd_s32(vsub_s32(v67, vdup_n_s32((v71 - v49) >> 2)), 0x100000001);
  if (v50)
  {
    __p[1] = v50;
    operator delete(v50);
  }

  if (v69[0])
  {
    v69[1] = v69[0];
    operator delete(v69[0]);
  }

  if (__src)
  {
    v71 = __src;
    operator delete(__src);
  }
}

void sub_24BDC48FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC493C(uint64_t *a1, int **a2, int a3, int a4)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_24BCC9A1C(&__p, *a1, a1[1], (a1[1] - *a1) >> 2);
  std::__sort<std::__less<int,int> &,int *>();
  v7 = (a2[1] - *a2) >> 2;
  if (a4 != -1)
  {
    LODWORD(v7) = a4;
  }

  sub_24BC94F74(&v21, v7);
  v8 = __p;
  v9 = v21;
  if (v22 != v21)
  {
    v10 = 0;
    v11 = 0;
    v12 = (v22 - v21) >> 2;
    v13 = v24;
    v14 = __p;
    do
    {
      if (v14 == v13 || v10 != *v14)
      {
        *&v9[4 * v10] = v10 - v11;
      }

      else
      {
        *&v9[4 * v10] = a3;
        ++v11;
        ++v14;
      }

      ++v10;
    }

    while (v12 > v10);
  }

  v15 = *a2;
  v16 = a2[1] - *a2;
  if (v16)
  {
    v17 = v16 >> 2;
    v18 = 1;
    do
    {
      v19 = *v15;
      if (v19 != a3)
      {
        *v15 = *&v9[4 * v19];
      }

      ++v15;
    }

    while (v17 > v18++);
  }

  if (v9)
  {
    v22 = v9;
    operator delete(v9);
    v8 = __p;
  }

  if (v8)
  {
    v24 = v8;
    operator delete(v8);
  }
}

void sub_24BDC4A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDC4A90(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24BDC4CC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

double sub_24BDC4D20(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 1) + 8 * *a1 * a2;
  do
  {
    result = *(v4 + v3);
    *(a3 + v3) = result;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

double sub_24BDC4D4C(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 1) + 8 * *a1 * a2;
  *a3 = *v3;
  result = *(v3 + 8);
  *(a3 + 8) = result;
  return result;
}

double sub_24BDC4D70(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = *(a1 + 1) + 8 * *a1 * a3;
  do
  {
    result = *(a2 + v3);
    *(v4 + v3) = result;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

double sub_24BDC4D9C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 3 * a2;
  do
  {
    result = *(a1 + 8 * v4);
    *(a3 + v3) = result;
    ++v4;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

double sub_24BDC4DC0(uint64_t a1, int a2, uint64_t a3)
{
  *a3 = *(a1 + 8 * (3 * a2));
  result = *(a1 + 8 * (3 * a2 + 1));
  *(a3 + 8) = result;
  return result;
}

double sub_24BDC4DDC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 3 * a3;
  do
  {
    result = *(a2 + v3);
    *(a1 + 8 * v4++) = result;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

uint64_t sub_24BDC4E00@<X0>(unsigned int *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_24BD07F90(a6, a4, a5);
  if (a4)
  {
    v12 = 0;
    v13 = *a1;
    v14 = *(a1 + 1);
    v15 = *(result + 8);
    v16 = 8 * *result;
    do
    {
      if (a5)
      {
        v17 = a5;
        v18 = v15;
        LODWORD(result) = a3;
        do
        {
          *v18 = *(v14 + 8 * (v12 + a2) + 8 * v13 * result);
          result = (result + 1);
          v18 = (v18 + v16);
          --v17;
        }

        while (v17);
      }

      ++v12;
      ++v15;
    }

    while (v12 != a4);
  }

  return result;
}

void sub_24BDC4EB8(uint64_t a1, unsigned int *a2)
{
  sub_24BD4308C(v66, (*(a1 + 112) - *(a1 + 104)) >> 2);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(a1 + 8) + 16 * *(a1 + 176));
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v7);
      }

      v9 = 0;
      v10 = *(v8 + 40);
      do
      {
        *&v63[v9] = *(v10 + 16 * v5 + 4 * v9);
        ++v9;
      }

      while (v9 != 3);
      v11 = v66[0] + 24 * v4;
      *v11 = *v63;
      *(v11 + 2) = v64;
      v4 = ++v5;
    }

    while (v5 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  v63[1] = 0;
  v64 = 0;
  v65 = 0;
  LODWORD(v63[0]) = (*(a1 + 160) - *(a1 + 152)) >> 2;
  HIDWORD(v63[0]) = 3;
  sub_24BC92930(&v63[1], (3 * LODWORD(v63[0])));
  sub_24BCB2008(v62, 3uLL);
  if (*(a1 + 160) == *(a1 + 152))
  {
    v21 = v63[1];
  }

  else
  {
    v12 = 0;
    v13 = 1;
    do
    {
      LODWORD(v58) = v13 - 1;
      sub_24BCD567C(a1, &v58, v62);
      v14 = v62[0];
      v15 = v66[0];
      v16 = (v66[0] + 24 * *(v62[0] + 1));
      v17 = (v66[0] + 24 * *(v62[0] + 2));
      v18 = v16[1] - v17[1];
      v19 = v16[2] - v17[2];
      v20 = LODWORD(v63[0]);
      v21 = v63[1];
      v22 = (v63[1] + 8 * v12);
      *v22 = v18 * v18 + (*v16 - *v17) * (*v16 - *v17) + v19 * v19;
      v23 = &v15[24 * *v14];
      v24 = v17[1] - v23[1];
      v25 = v17[2] - v23[2];
      v22[v20] = v24 * v24 + (*v17 - *v23) * (*v17 - *v23) + v25 * v25;
      v26 = v23[1] - v16[1];
      v27 = v23[2] - v16[2];
      v22[2 * v20] = v26 * v26 + (*v23 - *v16) * (*v23 - *v16) + v27 * v27;
      v12 = v13++;
    }

    while (v12 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v58 = v63[0];
  v59 = 0;
  v60 = 0;
  v61 = 0;
  sub_24BCA39A4(&v59, v21, v64, (v64 - v21) >> 3);
  v28 = *(a1 + 160) - *(a1 + 152);
  if (v28)
  {
    v29 = (v28 >> 1) + (v28 >> 2);
    v30 = 1;
    v31 = v59;
    do
    {
      *v31 = sqrt(*v31);
      ++v31;
      v32 = v29 > v30++;
    }

    while (v32);
  }

  __p = 0;
  v56 = 0;
  v57 = 0;
  sub_24BC92930(&__p, v58);
  v34 = *(a1 + 152);
  v33 = *(a1 + 160);
  v36 = v33 - v34;
  v35 = v33 == v34;
  v37 = (v33 - v34) >> 2;
  if (!v35)
  {
    v38 = v58;
    v39 = v59;
    v40 = 2 * v58;
    v41 = 1;
    v42 = __p;
    do
    {
      v43 = v39[v38];
      v44 = v39[v40];
      v45 = *v39++;
      *v42++ = sqrt((v45 + v43 - v44) * ((v44 + v45 - v43) * ((v44 - (v45 - v43)) * (v45 + v43 + v44)))) * 0.5;
      v32 = v37 > v41++;
    }

    while (v32);
  }

  *a2 = v36 >> 2;
  a2[1] = 3;
  sub_24BC92930(a2 + 1, (3 * v37));
  v46 = __p;
  if ((v36 >> 2) < 1)
  {
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v47 = LODWORD(v63[0]);
    v48 = v63[1];
    v49 = 2 * LODWORD(v63[0]);
    v50 = *a2;
    v51 = *(a2 + 1);
    v52 = (v36 >> 2) & 0x7FFFFFFF;
    v53 = __p;
    do
    {
      *v51 = (v48[v47] + v48[v49] - *v48) / *v53 * 0.25;
      v51[v50] = (v48[v49] + *v48 - v48[v47]) / *v53 * 0.25;
      v54 = *v53++;
      v51[2 * v50] = (*v48 + v48[v47] - v48[v49]) / v54 * 0.25;
      ++v48;
      ++v51;
      --v52;
    }

    while (v52);
  }

  v56 = v46;
  operator delete(v46);
LABEL_25:
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v63[1])
  {
    v64 = v63[1];
    operator delete(v63[1]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }
}

void sub_24BDC52D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    *(v21 - 80) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC534C(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int *a6)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  v7 = a5 + a3;
  if (v7 > a3)
  {
    v11 = a4 + a2;
    v12 = a3;
    do
    {
      v13 = a1[1];
      v14 = *(v13 + 8 * v12);
      v15 = v12 + 1;
      v16 = *(v13 + 8 * (v12 + 1));
      if (v14 < v16)
      {
        v17 = v12 - a3;
        do
        {
          v18 = *(a1[4] + 4 * v14);
          if (v18 >= a2 && v18 < v11)
          {
            v20 = *(a1[7] + 8 * v14);
            LODWORD(v23) = v18 - a2;
            DWORD1(v23) = v17;
            *(&v23 + 1) = v20;
            sub_24BD6EF1C(&__p, &v23);
          }

          ++v14;
        }

        while (v16 != v14);
      }

      v12 = v15;
    }

    while (v15 != v7);
  }

  sub_24BDCB164(&__p, a5, a4, 1, a6);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_24BDC5454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC5474(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int a5, unsigned int a6)
{
  *v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  *v21 = 0u;
  *v19 = 0u;
  v14[0] = 0xC010000000000000;
  sub_24BDCAA98(a1, v14, v19);
  sub_24BDC534C(v19, 0, 0, a5, a5, a3);
  *v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  *v16 = 0u;
  *v14 = 0u;
  sub_24BDC534C(v19, 0, a5, a5, a6, v14);
  v11 = 0xBFF0000000000000;
  sub_24BDCAA98(v14, &v11, v14);
  sub_24BDC4E00(a2, a5, 0, a6, 3u, &v11);
  sub_24BDCA998(v14, &v11, a4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v14[1])
  {
    *&v15 = v14[1];
    operator delete(v14[1]);
  }

  if (v22[1])
  {
    *&v23 = v22[1];
    operator delete(v22[1]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  if (v19[1])
  {
    *&v20 = v19[1];
    operator delete(v19[1]);
  }
}

void sub_24BDC55DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BC9EE94(&a13);
  sub_24BC9EE94(&a23);
  _Unwind_Resume(a1);
}

void sub_24BDC5624(int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, void *a5, unsigned int a6, unsigned int a7)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  sub_24BDCAB48(a1, a1, &v45);
  v39 = 0x4010000000000000;
  sub_24BDCAA98(&v45, &v39, &v45);
  *a4 = a6 | (a6 << 32);
  v14 = (a4 + 8);
  v13 = *(a4 + 8);
  if (v13)
  {
    *(a4 + 16) = v13;
    operator delete(v13);
    *v14 = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  v16 = (a4 + 32);
  v15 = *(a4 + 32);
  *v14 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v15)
  {
    *(a4 + 40) = v15;
    operator delete(v15);
    *v16 = 0;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
  }

  v18 = (a4 + 56);
  v17 = *(a4 + 56);
  *v16 = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v17)
  {
    *(a4 + 64) = v17;
    operator delete(v17);
    *v18 = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
  }

  *v18 = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  sub_24BDC534C(&v45, 0, 0, a6, a6, a4);
  v39 = __PAIR64__(a6, a7);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  sub_24BDC534C(&v45, 0, a6, a6, a7, &v39);
  *v37 = 0u;
  v38 = 0u;
  sub_24BDC4E00(a2, a6, 0, a7, 3u, __p);
  sub_24BDCA998(&v39, __p, v37);
  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  *__p = 0u;
  v36 = 0u;
  sub_24BDCA998(&v45, a3, __p);
  sub_24BDC4E00(__p, 0, 0, a6, 3u, &v29);
  v32 = v29;
  v33 = 0uLL;
  v34 = 0;
  sub_24BCA39A4(&v33, v30, v31, (v31 - v30) >> 3);
  v19 = v32;
  if (v32)
  {
    v20 = 0;
    v21 = HIDWORD(v32);
    v22 = v37[1];
    v23 = v33;
    v24 = 8 * LODWORD(v37[0]);
    do
    {
      v25 = v22;
      v26 = v23;
      v27 = v21;
      if (v21)
      {
        do
        {
          *v26 = *v26 - *v25;
          v26 += v19;
          v25 = (v25 + v24);
          --v27;
        }

        while (v27);
      }

      ++v20;
      ++v23;
      ++v22;
    }

    while (v20 != v19);
  }

  *a5 = v32;
  v28 = a5[1];
  if (v28)
  {
    a5[2] = v28;
    operator delete(v28);
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = 0;
  }

  *(a5 + 1) = v33;
  a5[3] = v34;
  v34 = 0;
  v33 = 0uLL;
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }

  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v41 + 1))
  {
    *&v42 = *(&v41 + 1);
    operator delete(*(&v41 + 1));
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (*(&v48 + 1))
  {
    *&v49 = *(&v48 + 1);
    operator delete(*(&v48 + 1));
  }

  if (v47)
  {
    *(&v47 + 1) = v47;
    operator delete(v47);
  }

  if (*(&v45 + 1))
  {
    *&v46 = *(&v45 + 1);
    operator delete(*(&v45 + 1));
  }
}

void sub_24BDC5954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_24BC9EE94(&a25);
  sub_24BC9EE94((v25 - 160));
  _Unwind_Resume(a1);
}

__n128 sub_24BDC59CC(uint64_t *a1, void *a2, void *a3)
{
  sub_24BC92930(a3, ((a1[1] - *a1) >> 2) + ((a1[1] - *a1) >> 3));
  v5 = *a1;
  if ((-1431655765 * ((a1[1] - *a1) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (v5 + 24 * v6);
      _Q0 = *v7;
      *&v9 = *(v7 + 2);
      v10 = (*a2 + 24 * v6);
      v11 = v10[1];
      _D3 = v10[2];
      __asm { FMLA            D5, D3, V0.D[1] }

      v18 = *&v9 * *v10 - *&_Q0 * _D3;
      v19 = *&_Q0 * v11 - *(&_Q0 + 1) * *v10;
      v20 = sqrt(v18 * v18 + _D5 * _D5 + v19 * v19);
      if (v20 <= 0.0)
      {
        v22 = 0.0;
        v21 = 1.0;
        v23 = 0.0;
      }

      else
      {
        v21 = _D5 / v20;
        v22 = v18 / v20;
        v23 = v19 / v20;
      }

      *(&v9 + 1) = *v10;
      v67 = _Q0;
      v68 = v9;
      v69 = v11;
      v70 = _D3;
      v71 = v21;
      v72 = v22;
      v73 = v23;
      sub_24BDBD540(&v67);
      v62 = xmmword_24BFED2C0;
      v63 = *algn_24BFED2D0;
      v64 = xmmword_24BFED2E0;
      v65 = unk_24BFED2F0;
      v66 = 0x3FF0000000000000;
      v57 = xmmword_24BFED2C0;
      v58 = *algn_24BFED2D0;
      v59 = xmmword_24BFED2E0;
      v60 = unk_24BFED2F0;
      v61[0] = 1.0;
      v56[0] = 1.0;
      v52 = xmmword_24BFED2C0;
      v53 = *algn_24BFED2D0;
      v54 = xmmword_24BFED2E0;
      v55 = unk_24BFED2F0;
      v24 = &v57;
      sub_24BD05BAC(&v62, &v63 + 1, &v65, &v62 + 1, &v64, &v65 + 1, &v63, &v64 + 1, *&v67, *(&v68 + 1), v71, *(&v67 + 1), v69, v72, *&v68, v70, v73, &v66, &v57, &v58 + 1, &v60, &v57 + 1, &v59, &v60 + 1, &v58, &v59 + 1, v61, &v52, &v53 + 1, &v55, &v52 + 1, &v54, &v55 + 1, &v53, &v54 + 1, v56);
      v25 = 0;
      v51[0] = v52;
      v51[4] = v54;
      v51[1] = *(&v53 + 1);
      v51[2] = v55;
      v51[3] = *(&v52 + 1);
      v51[5] = *(&v55 + 1);
      *&v51[8] = v56[0];
      v51[6] = v53;
      v51[7] = *(&v54 + 1);
      v45 = 0x3FF0000000000000;
      v44[0] = xmmword_24BFED2C0;
      v44[1] = *algn_24BFED2D0;
      v44[2] = xmmword_24BFED2E0;
      v44[3] = unk_24BFED2F0;
      do
      {
        v26 = 0;
        v27 = v51;
        do
        {
          v28 = 0;
          v29 = 0.0;
          v30 = v24;
          do
          {
            v31 = *v30;
            v30 += 3;
            v29 = v29 + v31 * *&v27[v28++];
          }

          while (v28 != 3);
          *(v44 + 3 * v26++ + v25) = v29;
          v27 += 3;
        }

        while (v26 != 3);
        ++v25;
        v24 = (v24 + 8);
      }

      while (v25 != 3);
      v32 = 0;
      v50 = 0x3FF0000000000000;
      v46 = xmmword_24BFED2C0;
      v47 = *algn_24BFED2D0;
      v33 = &v52;
      v48 = xmmword_24BFED2E0;
      v49 = unk_24BFED2F0;
      do
      {
        v34 = 0;
        v35 = v44;
        do
        {
          v36 = 0;
          v37 = 0.0;
          v38 = v33;
          do
          {
            v39 = *v38;
            v38 += 3;
            v37 = v37 + v39 * *(v35 + v36);
            v36 += 8;
          }

          while (v36 != 24);
          *(&v46 + 3 * v34++ + v32) = v37;
          v35 = (v35 + 24);
        }

        while (v34 != 3);
        ++v32;
        v33 = (v33 + 8);
      }

      while (v32 != 3);
      v40 = *a3 + 72 * v6;
      v41 = v49;
      *(v40 + 32) = v48;
      *(v40 + 48) = v41;
      *(v40 + 64) = v50;
      result = v47;
      *v40 = v46;
      *(v40 + 16) = result;
      ++v6;
      v5 = *a1;
    }

    while (v6 < (-1431655765 * ((a1[1] - *a1) >> 3)));
  }

  return result;
}

void sub_24BDC5DA8(uint64_t a1, void *a2)
{
  *a2 = *a1;
  if (a2 != a1)
  {
    sub_24BD07E64(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  }

  srand(2u);
  if (*a2)
  {
    v3 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v5 = rand();
        v6 = *a2;
        v7 = a2[1] + 8 * i * v6;
        *(v7 + 8 * v3) = *(v7 + 8 * v3) + v5 / 2147483650.0 * 0.001 * 0.1;
      }

      ++v3;
    }

    while (v3 < v6);
  }
}

BOOL sub_24BDC5E80(void *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v433 = *MEMORY[0x277D85DE8];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[17] - a1[16]) >> 2);
  sub_24BCA123C(v428, v4);
  sub_24BCA123C(v427, (v4 >> 1));
  sub_24BDBE7BC(v3, v428, v427);
  v333 = v3 + 13;
  sub_24BD07F90(&v424, (v3[14] - v3[13]) >> 2, 3);
  v332 = v3;
  if (v3[14] != v3[13])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v8 = (v332[1] + 16 * *(v332 + 44));
        v10 = *v8;
        v9 = v8[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v9);
        }

        *(v425 + i * v424 + v5) = *(*(v10 + 40) + 16 * v6 + 4 * i);
      }

      v3 = v332;
      v5 = ++v6;
    }

    while (v6 < ((v332[14] - v332[13]) >> 2));
  }

  v423 = 0u;
  *v422 = 0u;
  sub_24BDC5DA8(&v424, v422);
  v421 = ((v3[14] - v3[13]) >> 2) - 1;
  v420 = 0u;
  *v419 = 0u;
  sub_24BDC4EB8(v3, v419);
  v412 = (v3[14] - v3[13]) >> 2;
  v413 = v412;
  v414 = 0u;
  v415 = 0u;
  v416 = 0u;
  v417 = 0u;
  v418 = 0;
  sub_24BDC894C(&v378, 3, 2);
  v11 = v378;
  v12 = HIDWORD(v378) * v378;
  if (v12)
  {
    v13 = &dword_24BFED2A8;
    v14 = v379;
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v11 = v378;
  }

  v407[1] = 0;
  v407[0] = 0;
  *&v408 = 0;
  sub_24BD6EC64(v407, 4 * v11 * ((v3[20] - v3[19]) >> 2));
  sub_24BCB2008(v399, 3uLL);
  if (v3[20] != v3[19])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      LODWORD(__p[0]) = v18;
      sub_24BCD567C(v3, __p, v399);
      v19 = v378;
      if (v378)
      {
        v20 = 0;
        do
        {
          v21 = (v379 + 4 * v20);
          v23 = *(v399[0] + v21[v19]);
          v24 = *(v419[1] + v20 * LODWORD(v419[0]) + v17);
          LODWORD(__p[0]) = *(v399[0] + *v21);
          v22 = __p[0];
          HIDWORD(__p[0]) = v23;
          __p[1] = v24;
          sub_24BD6EF1C(v407, __p);
          v25 = *(v419[1] + v20 * LODWORD(v419[0]) + v17);
          __p[0] = __PAIR64__(v22, v23);
          __p[1] = v25;
          sub_24BD6EF1C(v407, __p);
          v26 = -*(v419[1] + v20 * LODWORD(v419[0]) + v17);
          LODWORD(__p[0]) = v22;
          HIDWORD(__p[0]) = v22;
          __p[1] = *&v26;
          sub_24BD6EF1C(v407, __p);
          v27 = -*(v419[1] + v20 * LODWORD(v419[0]) + v17);
          LODWORD(__p[0]) = v23;
          HIDWORD(__p[0]) = v23;
          __p[1] = *&v27;
          sub_24BD6EF1C(v407, __p);
          ++v20;
          v19 = v378;
        }

        while (v20 < v378);
      }

      v3 = v332;
      v17 = ++v18;
    }

    while (v18 < ((v332[20] - v332[19]) >> 2));
  }

  v28 = 126 - 2 * __clz((v407[1] - v407[0]) >> 4);
  if (v407[1] == v407[0])
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  sub_24BDC89B0(v407[0], v407[1], v29, 1, v16);
  v429[0] = 0;
  sub_24BC9FEFC(__p, (v407[1] - v407[0]) >> 4);
  v30 = v407[0];
  v31 = (v407[1] - v407[0]) >> 4;
  v32 = (v31 - 1);
  if (v32 >= 1)
  {
    v33 = __p[0];
    v34 = v31 - 2;
    v35 = v32 + 1;
    v36 = (v407[0] + 16 * v32 + 8);
    do
    {
      --v35;
      v37 = &v30[16 * v34];
      if (*(v36 - 2) == *v37 && *(v36 - 1) == *(v37 + 1))
      {
        v37[1] = *v36 + v37[1];
        *&v33[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
      }

      --v34;
      v36 -= 2;
    }

    while (v35 > 1);
  }

  sub_24BDC827C(v407, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  sub_24BDCB164(v407, v412, v413, 1, &v412);
  if (v399[0])
  {
    v399[1] = v399[0];
    operator delete(v399[0]);
  }

  if (v407[0])
  {
    v407[1] = v407[0];
    operator delete(v407[0]);
  }

  if (v379)
  {
    v380 = v379;
    operator delete(v379);
  }

  v411 = 0u;
  *v410 = 0u;
  *v409 = 0u;
  v408 = 0u;
  *v407 = 0u;
  v405 = 0;
  v404 = 0;
  v406 = 0;
  v403 = 0u;
  *v402 = 0u;
  *v401 = 0u;
  v400 = 0u;
  *v399 = 0u;
  v398 = 0u;
  *v397 = 0u;
  v396 = 0u;
  *v395 = 0u;
  *v394 = 0u;
  v393 = 0u;
  *__p = 0u;
  v391 = 0u;
  *v390 = 0u;
  sub_24BDC5474(&v412, v422, v399, v397, v421, 1u);
  sub_24BDC5624(&v412, v422, &v424, __p, v390, v421, 1u);
  v388 = 0;
  v387 = 0;
  v389 = 0;
  sub_24BDC59CC(a2, a3, &v387);
  v38 = v3[20] - v3[19];
  sub_24BC92930(&v404, 2 * v38 + (v38 >> 2));
  v386 = 0.1;
  *&v343[0] = 0x3FECCCCCCCCCCCCDLL;
  sub_24BDC839C(v399, v343, &v378);
  sub_24BDC839C(__p, &v386, v429);
  sub_24BDCB600(&v378, v429, v407);
  if (*(&v431 + 1))
  {
    v432 = *(&v431 + 1);
    operator delete(*(&v431 + 1));
  }

  if (v430)
  {
    *(&v430 + 1) = v430;
    operator delete(v430);
  }

  if (*&v429[8])
  {
    *&v429[16] = *&v429[8];
    operator delete(*&v429[8]);
  }

  if (v384)
  {
    v385 = v384;
    operator delete(v384);
  }

  if (v382)
  {
    v383 = v382;
    operator delete(v382);
  }

  if (v379)
  {
    v380 = v379;
    operator delete(v379);
  }

  *v429 = v397[0];
  *&v429[16] = 0uLL;
  sub_24BCA39A4(&v429[8], v397[1], v398, (v398 - v397[1]) >> 3);
  v39 = *v429;
  if (*v429)
  {
    v40 = 0;
    v41 = *&v429[4];
    v42 = *&v429[8];
    do
    {
      v43 = v42;
      v44 = v41;
      if (v41)
      {
        do
        {
          *v43 = *v43 * 0.9;
          v43 += v39;
          --v44;
        }

        while (v44);
      }

      ++v40;
      ++v42;
    }

    while (v40 != v39);
  }

  *&v343[0] = v390[0];
  memset(v343 + 8, 0, 24);
  sub_24BCA39A4(v343 + 8, v390[1], v391, (v391 - v390[1]) >> 3);
  v45 = LODWORD(v343[0]);
  if (LODWORD(v343[0]))
  {
    v46 = 0;
    v47 = DWORD1(v343[0]);
    v48 = *(&v343[0] + 1);
    do
    {
      v49 = v48;
      v50 = v47;
      if (v47)
      {
        do
        {
          *v49 = v386 * *v49;
          v49 += v45;
          --v50;
        }

        while (v50);
      }

      ++v46;
      ++v48;
    }

    while (v46 != v45);
  }

  v378 = *v429;
  v379 = 0;
  v381 = 0;
  v380 = 0;
  sub_24BCA39A4(&v379, *&v429[8], *&v429[16], (*&v429[16] - *&v429[8]) >> 3);
  v51 = v378;
  v52 = v379;
  v53 = *(&v343[0] + 1);
  v318 = v379;
  if (v378)
  {
    v54 = 0;
    v55 = HIDWORD(v378);
    v56 = 8 * LODWORD(v343[0]);
    do
    {
      v57 = v53;
      v58 = v52;
      v59 = v55;
      if (v55)
      {
        do
        {
          *v58 = *v57 + *v58;
          v58 += v51;
          v57 = (v57 + v56);
          --v59;
        }

        while (v59);
      }

      ++v54;
      ++v52;
      ++v53;
    }

    while (v54 != v51);
    v53 = *(&v343[0] + 1);
  }

  v60 = v378;
  v380 = 0;
  v381 = 0;
  v379 = 0;
  if (v53)
  {
    *&v343[1] = v53;
    operator delete(v53);
  }

  if (*&v429[8])
  {
    *&v429[16] = *&v429[8];
    operator delete(*&v429[8]);
  }

  sub_24BDCBF40(&v378);
  v61 = sub_24BDCC1C8(&v378, v407);
  if (v61)
  {
    v63 = v3[19];
    v62 = v3[20];
    sub_24BCB2008(v429, 3uLL);
    sub_24BD41DF4(v377, (v62 - v63) >> 2);
    if (*v429)
    {
      *&v429[8] = *v429;
      operator delete(*v429);
    }

    sub_24BCB2008(&v375, 3uLL);
    if (v3[20] != v3[19])
    {
      v64 = 0;
      v65 = 1;
      do
      {
        *v429 = v65 - 1;
        sub_24BCD567C(v3, v429, &v375);
        v66 = (v377[0] + 24 * v64);
        if (v66 != &v375)
        {
          sub_24BCA2A30(v66, v375, v376, (v376 - v375) >> 2);
        }

        v64 = v65;
        v3 = v332;
        ++v65;
      }

      while (v64 < (v332[20] - v332[19]) >> 2);
    }

    memset(&v374[3], 0, 24);
    sub_24BDC5DA8(&v424, v422);
    v67 = v3;
    v68 = v3[20] - v3[19];
    sub_24BC95764(v374, 2 * v68 + (v68 >> 2));
    if (v3[20] != v3[19])
    {
      v69 = 0;
      v70 = 0;
      do
      {
        *v429 = v70;
        sub_24BCD567C(v3, v429, &v375);
        v71 = 0;
        v72 = v375;
        v73 = v425;
        v74 = 8 * v424;
        v75 = v374[0] + v69;
        do
        {
          v76 = 0;
          v77 = &v73[8 * v72[v71]];
          do
          {
            v78 = *v77;
            *&v75[v76] = v78;
            v77 = (v77 + v74);
            v76 += 4;
          }

          while (v76 != 12);
          ++v71;
          v75 += 12;
        }

        while (v71 != 3);
        ++v70;
        v69 += 36;
      }

      while (v70 < (v3[20] - v3[19]) >> 2);
    }

    sub_24BC95764(&v372, (v388 - v387) >> 3);
    v79 = v372;
    if (v373 != v372)
    {
      v80 = (v373 - v372) >> 2;
      v81 = v387;
      if (v80 <= 1)
      {
        v80 = 1;
      }

      do
      {
        v82 = *v81++;
        v83 = v82;
        *v79++ = v83;
        --v80;
      }

      while (v80);
    }

    sub_24BC95764(&v371, (LODWORD(v419[0]) * HIDWORD(v419[0])));
    v84 = (v3[20] - v3[19]) >> 2;
    if (v3[20] != v3[19])
    {
      v85 = 0;
      v86 = 0;
      v87 = v419[1];
      v88 = v371;
      v89 = 8 * LODWORD(v419[0]);
      do
      {
        v90 = 3;
        v91 = v87;
        v92 = v85;
        do
        {
          v93 = *v91;
          v88[v92++] = v93;
          v91 = (v91 + v89);
          --v90;
        }

        while (v90);
        ++v86;
        v85 += 3;
        ++v87;
      }

      while (v84 > v86);
    }

    sub_24BC95764(&v370, 9 * v84);
    sub_24BD4BD60(&v369, 3uLL);
    v331 = 8 * v60;
    v94 = v3[20];
    if (v94 == v3[19])
    {
      v106 = 0;
      v105 = v3[20];
    }

    else
    {
      v95 = 0;
      v96 = 0;
      do
      {
        *v429 = v96;
        sub_24BCD567C(v3, v429, &v375);
        v97 = 0;
        v98 = v375;
        v99 = v422[1];
        v100 = 8 * LODWORD(v422[0]);
        v101 = v370 + v95;
        do
        {
          v102 = 0;
          v103 = &v99[8 * v98[v97]];
          do
          {
            v104 = *v103;
            *&v101[v102] = v104;
            v103 = (v103 + v100);
            v102 += 4;
          }

          while (v102 != 12);
          ++v97;
          v101 += 12;
        }

        while (v97 != 3);
        ++v96;
        v94 = v3[19];
        v105 = v3[20];
        v95 += 36;
      }

      while (v96 < (v105 - v94) >> 2);
      v106 = (v105 - v94) >> 2;
    }

    if (v106 < 0x400)
    {
      v159 = xmmword_24BFED308;
      v160 = unk_24BFED318;
      v343[0] = xmmword_24BFED308;
      v343[1] = unk_24BFED318;
      LODWORD(v344) = 1065353216;
      *v337 = xmmword_24BFED308;
      *&v337[16] = unk_24BFED318;
      LODWORD(v338) = 1065353216;
      v368 = 0.0;
      *v366 = 0u;
      v367 = 0u;
      if (v105 != v94)
      {
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 6;
        do
        {
          v335 = v163;
          v165 = v374[0];
          v166 = 24;
          v167 = v164;
          do
          {
            v168 = v165[v167 - 3];
            v169 = v165[v167 - 6];
            v170 = (v343 + v166);
            *(v170 - 6) = v168 - v169;
            v171 = v165[v167];
            *(v170 - 3) = v171 - v168;
            *v170 = v169 - v171;
            ++v167;
            v166 += 4;
          }

          while (v166 != 36);
          v172 = 0;
          v365 = 1065353216;
          *v363 = v159;
          v364 = v160;
          v173 = v161;
          v174 = v387;
          do
          {
            v175 = v174[v173];
            *(v363 + v172) = v175;
            ++v173;
            v172 += 4;
          }

          while (v172 != 36);
          v176 = 0;
          v362[0] = 1.0;
          v177 = v363;
          v360 = v159;
          v361 = v160;
          do
          {
            v178 = 0;
            v179 = v343;
            do
            {
              v180 = 0;
              v181 = 0.0;
              v182 = v177;
              do
              {
                v183 = *v182;
                v182 += 3;
                v181 = v181 + (v183 * *(v179 + v180));
                v180 += 4;
              }

              while (v180 != 12);
              *(&v360 + 3 * v178++ + v176) = v181;
              v179 = (v179 + 12);
            }

            while (v178 != 3);
            ++v176;
            v177 = (v177 + 4);
          }

          while (v176 != 3);
          v343[0] = v360;
          v343[1] = v361;
          *&v344 = v362[0];
          v184 = v370;
          v185 = 24;
          v186 = v164;
          do
          {
            v187 = v184[v186 - 3];
            v188 = v184[v186 - 6];
            v189 = &v337[v185];
            *(v189 - 6) = v187 - v188;
            v190 = v184[v186];
            *(v189 - 3) = v190 - v187;
            *v189 = v188 - v190;
            ++v186;
            v185 += 4;
          }

          while (v185 != 36);
          v191 = 0;
          v192 = (v419[1] + 8 * v162);
          v193 = v192[2 * LODWORD(v419[0])];
          *v366 = v193;
          v194 = *v192;
          *&v367 = v194;
          v195 = v192[LODWORD(v419[0])];
          v368 = v195;
          v197 = DWORD2(v343[0]);
          v196 = DWORD1(v343[0]);
          v198 = DWORD1(v343[1]);
          *(v343 + 4) = __PAIR64__(DWORD2(v343[1]), HIDWORD(v343[0]));
          HIDWORD(v343[0]) = v196;
          *(&v343[1] + 4) = __PAIR64__(v197, HIDWORD(v343[1]));
          HIDWORD(v343[1]) = v198;
          v359[0] = 1.0;
          v357 = v159;
          v358 = v160;
          v199 = v366;
          do
          {
            v200 = 0;
            v201 = v343;
            do
            {
              v202 = 0;
              v203 = 0.0;
              v204 = v199;
              do
              {
                v205 = *v204;
                v204 += 3;
                v203 = v203 + (v205 * *(v201 + v202));
                v202 += 4;
              }

              while (v202 != 12);
              *(&v357 + 3 * v200++ + v191) = v203;
              v201 = (v201 + 12);
            }

            while (v200 != 3);
            ++v191;
            v199 = (v199 + 4);
          }

          while (v191 != 3);
          v206 = 0;
          v362[0] = 1.0;
          v207 = v337;
          v360 = v159;
          v361 = v160;
          do
          {
            v208 = 0;
            v209 = &v357;
            do
            {
              v210 = 0;
              v211 = 0.0;
              v212 = v207;
              do
              {
                v213 = *v212;
                v212 += 3;
                v211 = v211 + (v213 * *(v209 + v210));
                v210 += 4;
              }

              while (v210 != 12);
              *(&v360 + 3 * v208++ + v206) = v211;
              v209 = (v209 + 12);
            }

            while (v208 != 3);
            ++v206;
            ++v207;
          }

          while (v206 != 3);
          v214 = v360;
          v215 = v361;
          v216 = v362[0];
          v360 = v159;
          v361 = v160;
          v362[0] = 1.0;
          v359[0] = 1.0;
          v357 = v159;
          v358 = v160;
          v356[0] = 1.0;
          v354 = v159;
          v355 = v160;
          sub_24BD06594(&v360, &v360 + 3, &v361 + 2, &v360 + 1, &v361, &v361 + 3, &v360 + 2, &v361 + 1, *&v214, *(&v214 + 3), *(&v215 + 2), *(&v214 + 1), *&v215, *(&v215 + 3), *(&v214 + 2), *(&v215 + 1), v216, v362, &v357, &v357 + 3, &v358 + 2, &v357 + 1, &v358, &v358 + 3, &v357 + 2, &v358 + 1, v359, &v354, &v354.f64[1] + 1, &v355 + 2, v354.f64 + 1, &v355, &v355 + 3, &v354.f64[1], &v355 + 1, v356);
          v217 = 0;
          v219 = LODWORD(v354.f64[1]);
          v218 = HIDWORD(v354.f64[0]);
          v220 = DWORD1(v355);
          *(v354.f64 + 4) = __PAIR64__(DWORD2(v355), HIDWORD(v354.f64[1]));
          HIDWORD(v354.f64[1]) = v218;
          *(&v355 + 4) = __PAIR64__(v219, HIDWORD(v355));
          HIDWORD(v355) = v220;
          v160 = unk_24BFED318;
          v159 = xmmword_24BFED308;
          *__src = xmmword_24BFED308;
          v352 = unk_24BFED318;
          v221 = &v360;
          v353 = 1.0;
          do
          {
            v222 = 0;
            v223 = &v354;
            do
            {
              v224 = 0;
              v225 = 0.0;
              v226 = v221;
              do
              {
                v227 = *v226;
                v226 += 3;
                v225 = v225 + (v227 * *(v223->f64 + v224));
                v224 += 4;
              }

              while (v224 != 12);
              *(__src + 3 * v222++ + v217) = v225;
              v223 = (v223 + 12);
            }

            while (v222 != 3);
            ++v217;
            v221 = (v221 + 4);
          }

          while (v217 != 3);
          *&v430 = v353;
          *v429 = *__src;
          *&v429[16] = v352;
          if ((((*v429 * ((v353 * *&v352) - (*(&v352 + 1) * *(&v352 + 3)))) - (*&v429[4] * ((v353 * *(&__src[1] + 1)) - (*(&v352 + 1) * *(&v352 + 2))))) + (*&v429[8] * ((*(&v352 + 3) * *(&__src[1] + 1)) - (*&v352 * *(&v352 + 2))))) < 0.0)
          {
            v228 = 0;
            *(&v361 + 1) = vneg_f32(*(&v361 + 8));
            v362[0] = -v362[0];
            *__src = xmmword_24BFED308;
            v352 = unk_24BFED318;
            v353 = 1.0;
            v229 = &v360;
            do
            {
              v230 = 0;
              v231 = &v354;
              do
              {
                v232 = 0;
                v233 = 0.0;
                v234 = v229;
                do
                {
                  v235 = *v234;
                  v234 += 3;
                  v233 = v233 + (v235 * *(v231->f64 + v232));
                  v232 += 4;
                }

                while (v232 != 12);
                *(__src + 3 * v230++ + v228) = v233;
                v231 = (v231 + 12);
              }

              while (v230 != 3);
              ++v228;
              v229 = (v229 + 4);
            }

            while (v228 != 3);
            *v429 = *__src;
            *&v429[16] = v352;
            *&v430 = v353;
          }

          v236 = 0;
          v353 = 1.0;
          v237 = v429;
          *__src = xmmword_24BFED308;
          v352 = unk_24BFED318;
          do
          {
            v238 = 0;
            v239 = v363;
            do
            {
              v240 = 0;
              v241 = 0.0;
              v242 = v237;
              do
              {
                v243 = *v242;
                v242 += 3;
                v241 = v241 + (v243 * *(v239 + v240));
                v240 += 4;
              }

              while (v240 != 12);
              *(__src + 3 * v238++ + v236) = v241;
              v239 = (v239 + 12);
            }

            while (v238 != 3);
            ++v236;
            ++v237;
          }

          while (v236 != 3);
          v244 = 0;
          v245 = v404 + 8 * v161;
          do
          {
            *&v245[8 * v244] = *(__src + v244);
            ++v244;
          }

          while (v244 != 9);
          v162 = (v335 + 1);
          v164 += 9;
          v161 += 9;
          v163 = v335 + 1;
        }

        while (v162 < (v3[20] - v3[19]) >> 2);
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v334 = MTLCreateSystemDefaultDevice();
      sub_24BCCEE48(v429, &unk_24C0435AF);
      v328 = sub_24BD4C428(v334, 0, v429, 1);
      if ((v429[23] & 0x80000000) != 0)
      {
        operator delete(*v429);
      }

      v320 = objc_msgSend_newFunctionWithName_(v328, v107, @"ComputeOptimalRotations", v108);
      v329 = objc_msgSend_newComputePipelineStateWithFunction_error_(v334, v109, v320, 0);
      v327 = objc_msgSend_newCommandQueue(v334, v110, v111, v112);
      v113 = v3[20] - v3[19];
      v114 = 4 * (2 * v113 + (v113 >> 2));
      v326 = objc_msgSend_newBufferWithBytes_length_options_(v334, v115, v374[0], v114, 0);
      v325 = objc_msgSend_newBufferWithBytes_length_options_(v334, v116, v372, v114, 0);
      v117 = v113 >> 2;
      v324 = objc_msgSend_newBufferWithBytes_length_options_(v334, v118, v371, 12 * v117, 0);
      v323 = objc_msgSend_newBufferWithBytes_length_options_(v334, v119, v370, v114, 0);
      sub_24BC95764(v429, (v405 - v404) >> 3);
      v330 = objc_msgSend_newBufferWithBytes_length_options_(v334, v120, *v429, v114, 0);
      v124 = objc_msgSend_commandBuffer(v327, v121, v122, v123);
      v128 = objc_msgSend_computeCommandEncoder(v124, v125, v126, v127);
      objc_msgSend_setComputePipelineState_(v128, v129, v329, v130);
      objc_msgSend_setBuffer_offset_atIndex_(v128, v131, v326, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v128, v132, v325, 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v128, v133, v324, 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v128, v134, v323, 0, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v128, v135, v330, 0, 4);
      v139 = objc_msgSend_maxTotalThreadsPerThreadgroup(v329, v136, v137, v138);
      if (v139 >= v117)
      {
        v141 = v117;
      }

      else
      {
        v141 = v139;
      }

      *&v343[0] = v117;
      *(v343 + 8) = vdupq_n_s64(1uLL);
      *v337 = v141;
      *&v337[8] = *(v343 + 8);
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v128, v140, v343, v337);
      objc_msgSend_endEncoding(v128, v142, v143, v144);
      objc_msgSend_commit(v124, v145, v146, v147);
      objc_msgSend_waitUntilCompleted(v124, v148, v149, v150);
      v151 = v330;
      v155 = objc_msgSend_contents(v330, v152, v153, v154);
      v156 = v404;
      if (v405 != v404)
      {
        v157 = (v405 - v404) >> 3;
        if (v157 <= 1)
        {
          v157 = 1;
        }

        do
        {
          v158 = *v155++;
          *v156++ = v158;
          --v157;
        }

        while (v157);
      }

      if (*v429)
      {
        *&v429[8] = *v429;
        operator delete(*v429);
      }

      objc_autoreleasePoolPop(context);
    }

    sub_24BD07F90(v366, v421, 3);
    v363[1] = 0;
    v364 = 0uLL;
    v360 = 0uLL;
    *&v361 = 0;
    v357 = 0uLL;
    *&v358 = 0;
    v354 = 0uLL;
    *&v355 = 0;
    v363[0] = (v421 | 0x300000000);
    sub_24BC92930(&v363[1], 3 * v421);
    if (v421 >= 1)
    {
      v246 = 0;
      v247 = 0;
      do
      {
        v248 = LODWORD(v366[0]);
        v249 = v366[1] + 8 * v247;
        *v249 = 0;
        v249[v248] = 0;
        v249[2 * v248] = 0;
        __src[1] = 0;
        __src[0] = 0;
        *&v352 = 0;
        v336 = v247;
        *v429 = v247;
        sub_24BCB9454(v350, v333, v429);
        for (j = sub_24BCB947C(v350); ; j = sub_24BCB947C(v350))
        {
          v349 = j;
          if (j == -1)
          {
            break;
          }

          v251 = sub_24BC9ECE4(v67, *(v67 + 180), j);
          if ((*v251 & v252) == 0)
          {
            v253 = sub_24BCB9024(v333, &v349);
            v254 = __src[1];
            if (__src[1] >= v352)
            {
              v256 = (__src[1] - __src[0]) >> 2;
              if ((v256 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v257 = (v352 - __src[0]) >> 1;
              if (v257 <= v256 + 1)
              {
                v257 = v256 + 1;
              }

              if (v352 - __src[0] >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v258 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v258 = v257;
              }

              if (v258)
              {
                sub_24BC92E0C(__src, v258);
              }

              v259 = (4 * v256);
              *v259 = *(v253 + 16);
              v255 = (4 * v256 + 4);
              v260 = v259 - (__src[1] - __src[0]);
              memcpy(v260, __src[0], __src[1] - __src[0]);
              v261 = __src[0];
              __src[0] = v260;
              __src[1] = v255;
              *&v352 = 0;
              if (v261)
              {
                operator delete(v261);
              }

              v67 = v332;
            }

            else
            {
              *__src[1] = *(v253 + 16);
              v255 = v254 + 4;
            }

            __src[1] = v255;
          }
        }

        v262 = __src[0];
        if (((__src[1] - __src[0]) >> 2) >= 1)
        {
          v263 = 0;
          v264 = v377[0];
          v265 = v425;
          v266 = v419[0];
          v267 = v419[1];
          v268 = v404;
          v269 = ((__src[1] - __src[0]) >> 2) & 0x7FFFFFFF;
          v270 = v366[1];
          v271 = 8 * v424;
          v272 = 8 * LODWORD(v366[0]);
          do
          {
            v273 = v262[v263];
            v274 = *(v264 + 24 * v273);
            v275 = v274 + 1;
            if (v336 == *v274)
            {
              v276 = 1;
              v277 = 2;
            }

            else if (v336 == v274[1])
            {
              v277 = 0;
              v275 = v274 + 2;
              v276 = 2;
            }

            else
            {
              if (v336 == v274[2])
              {
                v278 = 2;
              }

              else
              {
                v278 = 3;
              }

              v276 = v278 - 2;
              v275 = &v274[v278 - 2];
              v277 = (v278 - 1);
            }

            v279 = 0;
            v280 = *v275;
            v281 = v274[v277];
            v282 = v265;
            do
            {
              v283 = v282[v246];
              *(&v360 + v279) = v282[v280] - v283;
              *(&v357 + v279) = v282[v281] - v283;
              v282 = (v282 + v271);
              v279 += 8;
            }

            while (v279 != 24);
            v284 = 0;
            v285 = v267[v277 * v266 + v273];
            v286 = v267[v276 * v266 + v273];
            v287 = &v268[72 * v273];
            *&v429[16] = *(v287 + 1);
            v430 = *(v287 + 2);
            v431 = *(v287 + 3);
            v432 = *(v287 + 8);
            *v429 = *v287;
            v343[0] = xmmword_24BFED2C0;
            v343[1] = *algn_24BFED2D0;
            v344 = xmmword_24BFED2E0;
            v345 = unk_24BFED2F0;
            v346 = 0x3FF0000000000000;
            do
            {
              *(v343 + v284) = v285 * *&v429[v284];
              v284 += 8;
            }

            while (v284 != 72);
            v288 = 0;
            v347 = 0uLL;
            v289 = v343;
            v348 = 0.0;
            do
            {
              v290 = 0;
              v291 = 0.0;
              v292 = v289;
              do
              {
                v293 = *v292;
                v292 += 3;
                v291 = v291 + v293 * *(&v360 + v290);
                v290 += 8;
              }

              while (v290 != 24);
              v347.f64[v288++] = v291;
              v289 = (v289 + 8);
            }

            while (v288 != 3);
            v294 = 0;
            *v337 = xmmword_24BFED2C0;
            *&v337[16] = *algn_24BFED2D0;
            v338 = xmmword_24BFED2E0;
            v339 = unk_24BFED2F0;
            v340 = 0x3FF0000000000000;
            do
            {
              *&v337[v294] = v286 * *&v429[v294];
              v294 += 8;
            }

            while (v294 != 72);
            v295 = 0;
            v341 = 0uLL;
            v296 = v337;
            v342 = 0.0;
            do
            {
              v297 = 0;
              v298 = 0.0;
              v299 = v296;
              do
              {
                v300 = *v299;
                v299 += 3;
                v298 = v298 + v300 * *(&v357 + v297);
                v297 += 8;
              }

              while (v297 != 24);
              v341.f64[v295++] = v298;
              ++v296;
            }

            while (v295 != 3);
            v301 = 0;
            v354 = vaddq_f64(v347, v341);
            *&v355 = v348 + v342;
            v302 = v270;
            do
            {
              *&v302[v246 * 8] = v354.f64[v301] + *&v302[v246 * 8];
              v302 += v272;
              ++v301;
            }

            while (v301 != 3);
            ++v263;
          }

          while (v263 != v269);
        }

        if (v262)
        {
          __src[1] = v262;
          operator delete(v262);
        }

        v247 = v336 + 1;
        ++v246;
      }

      while (v336 + 1 < v421);
    }

    v303 = LODWORD(v366[0]);
    if (LODWORD(v366[0]))
    {
      v304 = 0;
      v305 = HIDWORD(v366[0]);
      v306 = v366[1];
      v307 = 8 * LODWORD(v366[0]);
      do
      {
        v308 = v306;
        v309 = v305;
        if (v305)
        {
          do
          {
            *v308 = *v308 * -1.8;
            v308 = (v308 + v307);
            --v309;
          }

          while (v309);
        }

        ++v304;
        ++v306;
      }

      while (v304 != v303);
      v310 = 0;
      v311 = v366[1];
      v312 = v318;
      do
      {
        v313 = v312;
        v314 = v311;
        v315 = v305;
        if (v305)
        {
          do
          {
            *v314 = *v313 + *v314;
            v314 = (v314 + v307);
            v313 = (v313 + v331);
            --v315;
          }

          while (v315);
        }

        ++v310;
        ++v311;
        ++v312;
      }

      while (v310 != v303);
    }

    *&v429[24] = 0;
    operator new();
  }

  sub_24BDCBFAC(&v378);
  if (v387)
  {
    v388 = v387;
    operator delete(v387);
  }

  if (v390[1])
  {
    operator delete(v390[1]);
  }

  if (v395[1])
  {
    *&v396 = v395[1];
    operator delete(v395[1]);
  }

  if (v394[0])
  {
    v394[1] = v394[0];
    operator delete(v394[0]);
  }

  if (__p[1])
  {
    *&v393 = __p[1];
    operator delete(__p[1]);
  }

  if (v397[1])
  {
    *&v398 = v397[1];
    operator delete(v397[1]);
  }

  if (v402[1])
  {
    *&v403 = v402[1];
    operator delete(v402[1]);
  }

  if (v401[0])
  {
    v401[1] = v401[0];
    operator delete(v401[0]);
  }

  if (v399[1])
  {
    *&v400 = v399[1];
    operator delete(v399[1]);
  }

  if (v404)
  {
    v405 = v404;
    operator delete(v404);
  }

  if (v318)
  {
    operator delete(v318);
  }

  if (v410[1])
  {
    *&v411 = v410[1];
    operator delete(v410[1]);
  }

  if (v409[0])
  {
    v409[1] = v409[0];
    operator delete(v409[0]);
  }

  if (v407[1])
  {
    *&v408 = v407[1];
    operator delete(v407[1]);
  }

  if (v417)
  {
    *(&v417 + 1) = v417;
    operator delete(v417);
  }

  if (*(&v415 + 1))
  {
    *&v416 = *(&v415 + 1);
    operator delete(*(&v415 + 1));
  }

  if (v414)
  {
    *(&v414 + 1) = v414;
    operator delete(v414);
  }

  if (v419[1])
  {
    *&v420 = v419[1];
    operator delete(v419[1]);
  }

  if (v422[1])
  {
    *&v423 = v422[1];
    operator delete(v422[1]);
  }

  if (v425)
  {
    v426 = v425;
    operator delete(v425);
  }

  if (v427[0])
  {
    v427[1] = v427[0];
    operator delete(v427[0]);
  }

  if (v428[0])
  {
    v428[1] = v428[0];
    operator delete(v428[0]);
  }

  v316 = *MEMORY[0x277D85DE8];
  return v61;
}