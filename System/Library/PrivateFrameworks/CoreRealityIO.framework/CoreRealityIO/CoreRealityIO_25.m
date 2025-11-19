unint64_t *pugi::impl::anonymous namespace::text_output(unint64_t *this, const char *a2, int a3, char a4)
{
  v4 = this;
  if ((a4 & 0x10) != 0)
  {
  }

  else if (*a2)
  {
    while (1)
    {
      v6 = (a2 + 1);
      while (1)
      {
        {
          --v6;
          goto LABEL_11;
        }

        {
          goto LABEL_11;
        }

        {
          break;
        }

        v6 += 4;
        if ((v7 & a3) != 0)
        {
          v6 -= 2;
          goto LABEL_11;
        }
      }

      ++v6;
LABEL_11:
      v8 = v6 - a2;
      v9 = v4[1281];
      v10 = v6 - a2 + v9;
      if (v10 > 0x800)
      {
      }

      else
      {
        this = memcpy(v4 + v9, a2, v8);
        v4[1281] = v10;
      }

      v11 = *v6;
      if (v11 <= 0x3B)
      {
        break;
      }

      if (v11 == 60)
      {
        v14 = v4[1281];
        if (v14 >= 0x800)
        {
          v14 = 0;
        }

        *(v4 + v14) = 60;
      }

      else
      {
        if (v11 != 62)
        {
          goto LABEL_33;
        }

        v14 = v4[1281];
        if (v14 >= 0x800)
        {
          v14 = 0;
        }

        *(v4 + v14) = 62;
      }

      v17 = v14 + 1;
LABEL_37:
      v4[1281] = v17;
      a2 = (v6 + 1);
      if (!v6[1])
      {
        return this;
      }
    }

    if (v11 == 34)
    {
      v15 = v4[1281];
      if (v15 >= 0x7FB)
      {
        v15 = 0;
      }

      v16 = v4 + v15;
      *v16 = 1869967654;
      *(v16 + 2) = 15220;
      v17 = v15 + 6;
      goto LABEL_37;
    }

    if (v11 == 38)
    {
      v12 = v4[1281];
      if (v12 >= 0x7FC)
      {
        v12 = 0;
      }

      v13 = v4 + v12;
      *v13 = 1886216486;
      v13[4] = 59;
    }

    else
    {
      if (!*v6)
      {
        return this;
      }

LABEL_33:
      v12 = v4[1281];
      if (v12 >= 0x7FC)
      {
        v12 = 0;
      }

      v18 = v4 + v12;
      *v18 = 8998;
      v18[2] = v11 / 0xAu + 48;
      v18[3] = (v11 % 0xAu) | 0x30;
      v18[4] = 59;
    }

    v17 = v12 + 5;
    goto LABEL_37;
  }

  return this;
}

uint64_t pugi::impl::anonymous namespace::node_output_attributes(uint64_t this, void *a2, char *a3, int64_t a4, char a5, int a6)
{
  if (a2)
  {
    v10 = a2;
    v11 = this;
    v12 = a5 & 0x44;
    v13 = *(this + 10248);
    do
    {
      if (v12 == 64)
      {
        if (v13 >= 0x800)
        {
          v13 = 0;
        }

        *(v11 + v13) = 10;
        *(v11 + 10248) = v13 + 1;
      }

      else
      {
        if (v13 >= 0x800)
        {
          v13 = 0;
        }

        *(v11 + v13) = 32;
        *(v11 + 10248) = v13 + 1;
      }

      if (v10[1])
      {
        v14 = v10[1];
      }

      else
      {
        v14 = ":anonymous";
      }

      v15 = *(v11 + 10248);
      if (v15 >= 0x7FF)
      {
        v15 = 0;
      }

      *(v11 + v15) = 8765;
      v16 = v15 + 2;
      *(v11 + 10248) = v16;
      v17 = v10[2];
      if (v17)
      {
        v16 = *(v11 + 10248);
      }

      if (v16 >= 0x800)
      {
        v16 = 0;
      }

      *(v11 + v16) = 34;
      v13 = v16 + 1;
      *(v11 + 10248) = v13;
      v10 = v10[4];
    }

    while (v10);
  }

  return this;
}

void *pugi::impl::anonymous namespace::xml_buffered_writer::write_direct(pugi::impl::_anonymous_namespace_::xml_buffered_writer *this, const char *a2, size_t a3)
{
  *(this + 1281) = 0;
  if (a3 < 0x801)
  {
LABEL_12:
    result = memcpy(this, a2, a3);
    *(this + 1281) += a3;
    return result;
  }

  if (*(this + 2564) != 1)
  {
    do
    {
      v8 = 2047;
      while ((a2[v8] & 0xC0) == 0x80)
      {
        if (--v8 == 2043)
        {
          v8 = 2048;
          break;
        }
      }

      a2 += v8;
      a3 -= v8;
    }

    while (a3 > 0x800);
    *(this + 1281) = 0;
    goto LABEL_12;
  }

  v6 = *(**(this + 1280) + 16);

  return v6();
}

uint64_t pugi::impl::anonymous namespace::xml_buffered_writer::flush(uint64_t this, const char *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = *(this + 10256);
    if (v4 == 1)
    {
      return (*(**(this + 10240) + 16))(*(this + 10240), a2);
    }

    else
    {
      v5 = this + 2048;
      if ((v4 & 0xFFFFFFFE) == 2)
      {
        v6 = 2048;
        do
        {
          v7 = (this + v6);
          v8 = *v3;
          if (*v3 < 0)
          {
            v16 = a3 - 1;
            if (a3 != 1 && (v8 & 0xE0) == 0xC0 && (v17 = v3[1], (v17 & 0xC0) == 0x80))
            {
              *v7 = v17 & 0x3F | ((v8 & 0x1F) << 6);
              v6 += 2;
              v10 = (v3 + 2);
              a3 -= 2;
            }

            else if (a3 >= 3 && (v8 & 0xF0) == 0xE0 && (v18 = v3[1], (v18 & 0xC0) == 0x80) && (v3[2] & 0xC0) == 0x80)
            {
              *v7 = (v8 << 12) | ((v18 & 0x3F) << 6) | v3[2] & 0x3F;
              v6 += 2;
              v10 = (v3 + 3);
              a3 -= 3;
            }

            else
            {
              v19 = a3 >= 4;
              a3 -= 4;
              if (v19 && (v8 & 0xF8) == 0xF0 && (v20 = v3[1], (v20 & 0xC0) == 0x80) && (v21 = *(v3 + 2), (v21 & 0xC0) == 0x80) && (v22 = v3[3], (v22 & 0xC0) == 0x80))
              {
                *v7 = (((((v20 & 0x3F) << 12) & 0xFFE3F3FF | ((v8 & 7) << 18) | (((v21 >> 4) & 3) << 10)) + 67043328) >> 10) - 10240;
                v7[1] = v22 & 0x3F | (v21 << 6) & 0x3FF | 0xDC00;
                v6 += 4;
                v10 = (v3 + 4);
              }

              else
              {
                v10 = (v3 + 1);
                a3 = v16;
              }
            }
          }

          else
          {
            *v7 = v8;
            v9 = v6 + 2;
            v10 = (v3 + 1);
            if (--a3 >= 4 && (v10 & 3) == 0)
            {
              v11 = 0;
              v12 = this + v6;
              while (1)
              {
                v13 = &v3[v11];
                v14 = *&v3[v11 + 1];
                if ((v14 & 0x80808080) != 0)
                {
                  break;
                }

                v15 = (v12 + 2 * v11);
                v15[1] = v14 & 0x7F;
                v15[2] = v13[2];
                v15[3] = v13[3];
                v15[4] = v13[4];
                v9 += 8;
                a3 -= 4;
                v11 += 4;
                if (a3 <= 3)
                {
                  v10 = &v3[v11 + 1];
                  goto LABEL_32;
                }
              }

              v10 = (v13 + 1);
            }

LABEL_32:
            v6 = v9;
          }

          v3 = v10;
        }

        while (a3);
        if (v4 != 2)
        {
          v23 = v6 - 2048;
          if (v6 != 2048)
          {
            v24 = (this + 2048);
            do
            {
              *v24 = bswap32(*v24) >> 16;
              ++v24;
              v23 -= 2;
            }

            while (v23);
          }
        }

        v25 = (v6 - 2048);
      }

      else if ((v4 - 5) > 1)
      {
        if (v4 == 9)
        {
          v43 = (this + 2048);
          do
          {
            v44 = *v3;
            if (v44 < 0)
            {
              v50 = a3 - 1;
              if (a3 != 1 && (v44 & 0xE0) == 0xC0 && (v51 = v3[1], (v51 & 0xC0) == 0x80))
              {
                v52 = v51 & 0x3F | (v44 << 6);
                if ((v44 & 0x1C) != 0)
                {
                  v53 = 63;
                }

                else
                {
                  v53 = v52;
                }

                *v43++ = v53;
                v45 = v3 + 2;
                a3 -= 2;
              }

              else if (a3 >= 3 && (v44 & 0xF0) == 0xE0 && (v54 = *(v3 + 1), (v54 & 0xC0) == 0x80) && (v55 = v3[2], (v55 & 0xC0) == 0x80))
              {
                v56 = (v54 << 6) | v55 & 0x3F;
                if ((v54 << 6) & 0xF00 | ((v44 & 0xF) << 12))
                {
                  v56 = 63;
                }

                *v43++ = v56;
                v45 = v3 + 3;
                a3 -= 3;
              }

              else
              {
                v19 = a3 >= 4;
                a3 -= 4;
                if (v19 && (v44 & 0xF8) == 0xF0 && (v3[1] & 0xC0) == 0x80 && (v3[2] & 0xC0) == 0x80 && (v3[3] & 0xC0) == 0x80)
                {
                  *v43++ = 63;
                  v45 = v3 + 4;
                }

                else
                {
                  v45 = v3 + 1;
                  a3 = v50;
                }
              }
            }

            else
            {
              *v43 = v44;
              v45 = v3 + 1;
              if (--a3 < 4 || (v45 & 3) != 0)
              {
                ++v43;
              }

              else
              {
                v46 = v43 + 4;
                v47 = (v3 + 4);
                do
                {
                  v48 = *(v47 - 3);
                  if ((v48 & 0x80808080) != 0)
                  {
                    break;
                  }

                  *(v46 - 3) = v48;
                  *(v46 - 2) = *(v47 - 2);
                  *(v46 - 1) = *(v47 - 1);
                  v49 = *v47;
                  v47 += 4;
                  *v46 = v49;
                  v46 += 4;
                  a3 -= 4;
                }

                while (a3 > 3);
                v43 = v46 - 3;
                v45 = v47 - 3;
              }
            }

            v3 = v45;
          }

          while (a3);
          v25 = &v43[-v5];
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v26 = 2048;
        do
        {
          v27 = *v3;
          if (*v3 < 0)
          {
            v34 = a3 - 1;
            if (a3 != 1 && (v27 & 0xE0) == 0xC0 && (v35 = v3[1], (v35 & 0xC0) == 0x80))
            {
              *(this + v26) = v35 & 0x3F | ((v27 & 0x1F) << 6);
              v26 += 4;
              v29 = (v3 + 2);
              a3 -= 2;
            }

            else if (a3 >= 3 && (v27 & 0xF0) == 0xE0 && (v36 = v3[1], (v36 & 0xC0) == 0x80) && (v37 = v3[2], (v37 & 0xC0) == 0x80))
            {
              *(this + v26) = ((v27 & 0xF) << 12) | ((v36 & 0x3F) << 6) | v37 & 0x3F;
              v26 += 4;
              v29 = (v3 + 3);
              a3 -= 3;
            }

            else
            {
              v19 = a3 >= 4;
              a3 -= 4;
              if (v19 && (v27 & 0xF8) == 0xF0 && (v38 = v3[1], (v38 & 0xC0) == 0x80) && (v39 = v3[2], (v39 & 0xC0) == 0x80) && (v40 = v3[3], (v40 & 0xC0) == 0x80))
              {
                *(this + v26) = ((v27 & 7) << 18) | ((v38 & 0x3F) << 12) | ((v39 & 0x3F) << 6) | v40 & 0x3F;
                v26 += 4;
                v29 = (v3 + 4);
              }

              else
              {
                v29 = (v3 + 1);
                a3 = v34;
              }
            }
          }

          else
          {
            *(this + v26) = v27;
            v28 = v26 + 4;
            v29 = (v3 + 1);
            if (--a3 >= 4 && (v29 & 3) == 0)
            {
              v30 = 0;
              v31 = this + v26;
              while (1)
              {
                v32 = &v3[v30];
                if ((*&v3[v30 + 1] & 0x80808080) != 0)
                {
                  break;
                }

                v33 = (v31 + 4 * v30);
                v33[1] = *&v3[v30 + 1] & 0x7F;
                v33[2] = v32[2];
                v33[3] = v32[3];
                v33[4] = v32[4];
                v28 += 16;
                a3 -= 4;
                v30 += 4;
                if (a3 <= 3)
                {
                  v29 = &v3[v30 + 1];
                  goto LABEL_66;
                }
              }

              v29 = (v32 + 1);
            }

LABEL_66:
            v26 = v28;
          }

          v3 = v29;
        }

        while (a3);
        if (v4 != 5)
        {
          v41 = v26 - 2048;
          if (v26 != 2048)
          {
            v42 = (this + 2048);
            do
            {
              *v42 = bswap32(*v42);
              ++v42;
              v41 -= 4;
            }

            while (v41);
          }
        }

        v25 = (v26 - 2048);
      }

      return (*(**(this + 10240) + 16))(*(this + 10240), v5, v25);
    }
  }

  return this;
}

uint64_t realityio::RIOIESInfoLoadFromString(_BYTE *__src, size_t __n, uint64_t a3, int a4, uint64_t a5)
{
  if (__n <= 4)
  {
    MEMORY[0x24C1A8D40](a5, "corrupt or invalid IES header");
    return 0;
  }

  if (a4)
  {
    if (*__src != 1314080073 || __src[4] != 65)
    {
      return 0;
    }
  }

  *(a3 + 160) = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __n;
  memcpy(&__dst, __src, __n);
  __dst.__r_.__value_.__s.__data_[__n] = 0;
  memset(&__str, 0, sizeof(__str));
  memset(&v86, 0, sizeof(v86));
  v65[0] = 0;
  v65[1] = 0;
  v66 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  *v78 = 0u;
  *v79 = 0u;
  v80 = 0u;
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v86.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((*(&v86.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      v14 = v86.__r_.__value_.__r.__words[0];
      if (v86.__r_.__value_.__l.__size_ != 7)
      {
        if (v86.__r_.__value_.__l.__size_ != 16)
        {
          goto LABEL_56;
        }

        if (*v86.__r_.__value_.__l.__data_ != 0x4D4C3A414E534549 || *(v86.__r_.__value_.__r.__words[0] + 8) != 0x353939312D33362DLL)
        {
          if (*v86.__r_.__value_.__l.__data_ != 0x4D4C3A414E534549 || *(v86.__r_.__value_.__r.__words[0] + 8) != 0x323030322D33362DLL)
          {
            goto LABEL_56;
          }

LABEL_42:
          v14 = "IESNA:LM-63-2002";
LABEL_56:
          MEMORY[0x24C1A8D40](v65, v14);
          while (1)
          {
            v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v19 = __str.__r_.__value_.__l.__size_;
            }

            if (!v19)
            {
              break;
            }

            memset(&__p, 0, sizeof(__p));
            v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__l.__size_ >= 9)
              {
                v21 = 9;
              }

              else
              {
                v21 = __p.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 9)
              {
                v21 = 9;
              }

              else
              {
                v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              p_p = &__p;
            }

            v23 = memcmp(p_p, "TILT=NONE", v21);
            if (v21 >= 9 && v23 == 0)
            {
              goto LABEL_102;
            }

            if ((v20 & 0x80000000) != 0)
            {
              v26 = __p.__r_.__value_.__r.__words[0];
              v25 = __p.__r_.__value_.__l.__size_ >= 0xA ? 10 : __p.__r_.__value_.__l.__size_;
            }

            else
            {
              v25 = v20 >= 0xA ? 10 : v20;
              v26 = &__p;
            }

            v27 = memcmp(v26, "TILT= NONE", v25);
            if (v25 >= 0xA && !v27)
            {
              goto LABEL_102;
            }

            if ((v20 & 0x80000000) != 0)
            {
              v29 = __p.__r_.__value_.__r.__words[0];
              v28 = __p.__r_.__value_.__l.__size_ >= 0xA ? 10 : __p.__r_.__value_.__l.__size_;
            }

            else
            {
              v28 = v20 >= 0xA ? 10 : v20;
              v29 = &__p;
            }

            if (((v30 = memcmp(v29, "TILT =NONE", v28), v28 < 0xA) || v30) && ((v20 & 0x80000000) != 0 ? ((v32 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xB) ? (v31 = 11) : (v31 = __p.__r_.__value_.__l.__size_)) : (v20 >= 0xB ? (v31 = 11) : (v31 = v20), v32 = &__p), (v33 = memcmp(v32, "TILT = NONE", v31), v31 < 0xB) || v33))
            {
              if ((v20 & 0x80000000) != 0)
              {
                v36 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__l.__size_ >= 5)
                {
                  v35 = 5;
                }

                else
                {
                  v35 = __p.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                if (v20 >= 5)
                {
                  v35 = 5;
                }

                else
                {
                  v35 = v20;
                }

                v36 = &__p;
              }

              v37 = memcmp(v36, "TILT=", v35);
              if (v35 >= 5 && !v37 || ((v20 & 0x80000000) != 0 ? ((v39 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 5) ? (v38 = 5) : (v38 = __p.__r_.__value_.__l.__size_)) : (v20 >= 5 ? (v38 = 5) : (v38 = v20), v39 = &__p), (v40 = memcmp(v39, "TILT =", v38), v34 = 0, v38 >= 5) && !v40))
              {
                MEMORY[0x24C1A8D40](a5, "TILT not supported");
                v34 = 1;
                LOBYTE(v20) = *(&__p.__r_.__value_.__s + 23);
              }
            }

            else
            {
LABEL_102:
              v34 = 3;
            }

            if ((v20 & 0x80) != 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v34)
              {
LABEL_129:
                if (v34 != 3)
                {
                  goto LABEL_141;
                }

                break;
              }
            }

            else if (v34)
            {
              goto LABEL_129;
            }
          }

          v13 = "Light Count is not valid";
          if (v67 < 0.0 || v67 > 32767.0)
          {
            goto LABEL_140;
          }

          if (v68 < 0.0)
          {
            MEMORY[0x24C1A8D40](a5, "Absolute photometry/non-positive TotalLumens unsupported", v68);
            v68 = 1.0;
          }

          if (v69 < 0.0)
          {
            v13 = "CandelaMult is not positive number";
            goto LABEL_140;
          }

          if (v70 >> 15)
          {
            v13 = "VAnglesNum is not valid";
            goto LABEL_140;
          }

          if (v71 >= 0x8000)
          {
            v13 = "HAnglesNum is not valid";
            goto LABEL_140;
          }

          std::vector<float>::resize(v78, v70);
          std::vector<float>::resize(&v79[1], v71);
          v42 = v70;
          if (v70 >= 1)
          {
            v43 = 0;
            v44 = -3.4028e38;
            while (1)
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              v45 = *&__p.__r_.__value_.__l.__data_;
              if (*&__p.__r_.__value_.__l.__data_ < v44)
              {
                break;
              }

              *(v78[0] + v43++) = __p.__r_.__value_.__l.__data_;
              v42 = v70;
              v44 = v45;
              if (v43 >= v70)
              {
                goto LABEL_163;
              }
            }

            std::vector<float>::resize(v78, 0);
            std::vector<float>::resize(&v79[1], 0);
            MEMORY[0x24C1A8D40](a5, "V Values is not valid");
            goto LABEL_141;
          }

          v45 = -3.4028e38;
LABEL_163:
          v46 = v71;
          if (v71 >= 1)
          {
            v47 = 0;
            v48 = -3.4028e38;
            while (1)
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              v49 = *&__p.__r_.__value_.__l.__data_;
              if (*&__p.__r_.__value_.__l.__data_ < v48)
              {
                break;
              }

              *(v79[1] + v47++) = __p.__r_.__value_.__l.__data_;
              v46 = v71;
              v48 = v49;
              if (v47 >= v71)
              {
                v42 = v70;
                goto LABEL_170;
              }
            }

            std::vector<float>::resize(v78, 0);
            std::vector<float>::resize(&v79[1], 0);
            MEMORY[0x24C1A8D40](a5, "H Values is not valid");
            goto LABEL_141;
          }

          v49 = -3.4028e38;
LABEL_170:
          v82[1] = v49;
          std::vector<float>::resize(&v83, (v46 * v42));
          v50 = v71;
          if (v71 < 1)
          {
            v53 = 0.0;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0.0;
            v54 = v70;
            v55 = 0.0;
            do
            {
              if (v54 >= 1)
              {
                v56 = 0;
                do
                {
                  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                  v57 = *&__p.__r_.__value_.__l.__data_;
                  if (*&__p.__r_.__value_.__l.__data_ != 0.0 && v55 < *(v78[0] + v56))
                  {
                    v55 = *(v78[0] + v56);
                  }

                  *(v83 + (v52 + v56)) = *&__p.__r_.__value_.__l.__data_ * v69;
                  if (v57 >= v53)
                  {
                    v53 = v57;
                  }

                  ++v56;
                  v54 = v70;
                }

                while (v56 < v70);
                v50 = v71;
                v52 += v56;
              }

              ++v51;
            }

            while (v51 < v50);
          }

          v82[2] = v45;
          v82[3] = v53 * v69;
          switch(v72)
          {
            case 3:
              v61 = "TypeA Photometric data not supported";
              break;
            case 2:
              v61 = "TypeB Photometric data not supported";
              break;
            case 1:
              if (*v79[1] == 0.0)
              {
                v60 = *(v80 - 4);
                if (v60 != 0.0)
                {
                  if (v60 == 90.0)
                  {
                  }

                  else if (v60 != 180.0)
                  {
                    goto LABEL_198;
                  }
                }
              }

LABEL_198:
              v62 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v62 = __str.__r_.__value_.__l.__size_;
              }

              if (v62)
              {
                memset(&__p, 0, sizeof(__p));
                if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "END"))
                {
                }

                v63 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v63 = __str.__r_.__value_.__l.__size_;
                }

                if (v63)
                {
                  std::vector<float>::resize(v78, 0);
                  std::vector<float>::resize(&v79[1], 0);
                  MEMORY[0x24C1A8D40](a5, "Unexpected content after END.");
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_141;
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              realityio::RIOIESInfo::operator=(a3, v65);
              MEMORY[0x24C1A8D40](a5, "");
              v9 = 1;
              goto LABEL_142;
            default:
              v61 = "Unknown PhotometricType";
              break;
          }

          MEMORY[0x24C1A8D40](a5, v61, v59);
          goto LABEL_141;
        }

LABEL_49:
        v14 = "IESNA:LM-63-1995";
        goto LABEL_56;
      }

      if (*v86.__r_.__value_.__l.__data_ != 1314080073 || *(v86.__r_.__value_.__r.__words[0] + 3) != 825835854)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (HIBYTE(v86.__r_.__value_.__r.__words[2]) != 7)
      {
        if (HIBYTE(v86.__r_.__value_.__r.__words[2]) != 16)
        {
LABEL_47:
          v14 = &v86;
          goto LABEL_56;
        }

        if (v86.__r_.__value_.__r.__words[0] != 0x4D4C3A414E534549 || v86.__r_.__value_.__l.__size_ != 0x353939312D33362DLL)
        {
          if (v86.__r_.__value_.__r.__words[0] != 0x4D4C3A414E534549 || v86.__r_.__value_.__l.__size_ != 0x323030322D33362DLL)
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

        goto LABEL_49;
      }

      if (LODWORD(v86.__r_.__value_.__l.__data_) != 1314080073 || *(v86.__r_.__value_.__r.__words + 3) != 825835854)
      {
        goto LABEL_47;
      }
    }

    v14 = "IESNA91";
    goto LABEL_56;
  }

  v13 = "Empty IES version";
LABEL_140:
  MEMORY[0x24C1A8D40](a5, v13);
LABEL_141:
  v9 = 0;
LABEL_142:
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v79[1])
  {
    *&v80 = v79[1];
    operator delete(v79[1]);
  }

  if (v78[0])
  {
    v78[1] = v78[0];
    operator delete(v78[0]);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_24762D604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  realityio::RIOIESInfo::~RIOIESInfo(&a15);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 145) < 0)
  {
    operator delete(*(v41 - 168));
  }

  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  _Unwind_Resume(a1);
}

double realityio::anonymous namespace::getLineContent(std::string *a1, std::string *a2, std::string *a3, char a4, int a5)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v12 = v11 + size;
  v13 = v11;
  if (size >= 1)
  {
    do
    {
      v14 = v13->__r_.__value_.__s.__data_[0];
      if (v14 == 10 || v14 == 13)
      {
        break;
      }

      v16 = v14 < 33 ? a4 : 0;
      v17 = v14 == 44 ? a5 : 0;
      if (v16)
      {
        break;
      }

      if (v17)
      {
        break;
      }

      v13 = (v13 + 1);
    }

    while (v13 < v12);
  }

  std::string::assign(a3, a1, 0, v13 - v11);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::assign(a2, a1, v13 - v18, v12 - v13);
}

float realityio::anonymous namespace::getFloat(std::string *a1, std::string *a2, float *a3, int a4)
{
  memset(&v8, 0, sizeof(v8));
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v8.__r_.__value_.__r.__words[0];
    v7 = atof(v8.__r_.__value_.__l.__data_);
    *a3 = v7;
    operator delete(v6);
  }

  else
  {
    result = atof(&v8);
    *a3 = result;
  }

  return result;
}

void sub_24762D804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::anonymous namespace::getInt(std::string *a1, std::string *a2, int *a3)
{
  memset(&v5, 0, sizeof(v5));
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = v5.__r_.__value_.__r.__words[0];
    *a3 = atoi(v5.__r_.__value_.__l.__data_);
    operator delete(v4);
  }

  else
  {
    *a3 = atoi(&v5);
  }
}

void sub_24762D890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double realityio::anonymous namespace::skipSpaceAndLineEnd(std::string *__str, uint64_t a2, int a3)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = size;
  v7 = 0;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = __str->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v8 = __str;
    }

    while (1)
    {
      v9 = v8->__r_.__value_.__s.__data_[v7];
      v10 = v9 == 10 || v9 == 13;
      if (!v10 && v9 > 32)
      {
        break;
      }

      if (size == ++v7)
      {
LABEL_21:
        v7 = size;
        goto LABEL_22;
      }
    }
  }

  if (v7 < size && a3 != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v12 = __str;
    }

    while (v12->__r_.__value_.__s.__data_[v7] == 44)
    {
      if (size == ++v7)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  std::string::basic_string(&v14, __str, v7, size - v7, &v15);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v14.__r_.__value_.__l.__data_;
  *a2 = v14;
  return result;
}

float realityio::anonymous namespace::mirrorData(realityio::_anonymous_namespace_ *this, realityio::RIOIESInfo *a2, float a3)
{
  v5 = *(this + 13);
  v6 = this + 96;
  v7 = v5 - *(this + 12);
  if (v7)
  {
    v8 = v7 >> 2;
    v9 = (v7 >> 2) - 1;
    do
    {
      --v8;
      v10 = *(this + 12);
      v11 = *(this + 13);
      v12 = (a3 + a3) - v10[v8];
      v13 = *(this + 14);
      if (v11 >= v13)
      {
        v15 = v11 - v10;
        v16 = v11 - v10;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
LABEL_36:
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        v18 = v13 - v10;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v6, v19);
        }

        v20 = v11 - v10;
        v21 = (4 * v16);
        v22 = (4 * v16 - 4 * v20);
        *v21 = v12;
        v14 = v21 + 1;
        memcpy(v22, v10, v15);
        v23 = *(this + 12);
        *(this + 12) = v22;
        *(this + 13) = v14;
        *(this + 14) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v11 = v12;
        v14 = v11 + 1;
      }

      *(this + 13) = v14;
      v24 = *(this + 9);
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = *(this + 19);
        do
        {
          v27 = *(this + 10) - 1;
          if (v9 < v27)
          {
            v27 = v9;
          }

          v28 = *(this + 18);
          v29 = *&v28[4 * v25 + 4 * v24 * (v27 & ~(v27 >> 31))];
          v30 = *(this + 20);
          if (v26 >= v30)
          {
            v31 = v26 - v28;
            v32 = (v26 - v28) >> 2;
            v33 = v32 + 1;
            if ((v32 + 1) >> 62)
            {
              goto LABEL_36;
            }

            v34 = v30 - v28;
            if (v34 >> 1 > v33)
            {
              v33 = v34 >> 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v35 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 144, v35);
            }

            v36 = (v26 - v28) >> 2;
            v37 = (4 * v32);
            v38 = (4 * v32 - 4 * v36);
            *v37 = v29;
            v26 = (v37 + 1);
            memcpy(v38, v28, v31);
            v39 = *(this + 18);
            *(this + 18) = v38;
            *(this + 19) = v26;
            *(this + 20) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v26 = v29;
            v26 += 4;
          }

          *(this + 19) = v26;
          v24 = *(this + 9);
          ++v25;
        }

        while (v25 < v24);
      }

      --v9;
    }

    while (v8);
    v5 = *(this + 12);
    v40 = *(this + 13);
  }

  else
  {
    v40 = *(this + 13);
  }

  result = a3 + a3;
  *(this + 32) = a3 + a3;
  *(this + 10) = (v40 - v5) >> 2;
  return result;
}

uint64_t realityio::RIOIESInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  v4 = *(a2 + 52);
  v5 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v5;
  *(a1 + 52) = v4;
  if (a1 == a2)
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 2);
  }

  return a1;
}

float realityio::anonymous namespace::computeFilterPos(realityio::_anonymous_namespace_ *this, float a2, float *a3)
{
  v3 = *this;
  v4 = 0.0;
  if (*this <= a2)
  {
    v5 = a3 - 1;
    if (*(this + v5) >= a2)
    {
      v6 = 0;
      if (a3 != 1)
      {
        do
        {
          v7 = (v6 + v5 + 1) >> 1;
          if (*(this + v7) <= a2)
          {
            v6 = (v6 + v5 + 1) >> 1;
          }

          else
          {
            v5 = v7 - 1;
          }
        }

        while (v6 < v5);
        v3 = *(this + v6);
      }

      v8 = 0.0;
      if (v6 + 1 < a3)
      {
        v9 = *(this + v6 + 1) - v3;
        if (v9 > 0.0001)
        {
          v8 = (a2 - v3) / v9;
        }
      }

      return v8 + v6;
    }

    else
    {
      return v5;
    }
  }

  return v4;
}

uint64_t realityio::RIOIESInfoGenerateTexture2D(uint64_t a1, int32x4_t *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  if (!a4)
  {
    v79 = 1;
    return v79 & 1;
  }

  v9 = 0;
  v10 = 0;
  v82 = a4;
  v90 = a3;
  __asm
  {
    FMOV            V3.4S, #3.0
    FMOV            V2.4S, #-3.0
  }

  v88 = _Q2;
  v89 = _Q3;
  __asm { FMOV            V2.4S, #5.0 }

  v87 = _Q2;
  v18 = 1.0 / *(a1 + 136);
  __asm { FMOV            V0.4S, #1.0 }

  v85 = _Q0;
  v20 = a2;
  v86 = a2;
  v21 = a2;
  v91 = a3;
  do
  {
    v84 = v10;
    if (a3)
    {
      v81 = v9;
      v22 = ((((v10 / v82) * 180.0) / 360.0) + (((v10 / v82) * 180.0) / 360.0)) * 3.14159265;
      v23 = __sincosf_stret(v22);
      v24 = 0;
      v25 = acosf(v23.__cosval) / -6.28318531 * 360.0;
      v26 = v25 + 180.0;
      do
      {
        v27 = ((((v24 / v90) * 360.0) / 360.0) + (((v24 / v90) * 360.0) / 360.0)) * 3.14159265;
        v28 = __sincosf_stret(v27);
        v29 = atan2f(v23.__sinval * v28.__sinval, v23.__sinval * v28.__cosval) / 6.28318531 * 360.0;
          ;
        }

        v31 = *(a1 + 36);
        v33 = *(a1 + 40);
        v35 = vcvtms_s32_f32(v34);
        v36 = vcvtms_s32_f32(v32);
        v37 = v34 - floorf(v34);
        v38 = floorf(v32);
        v39 = v35 - 1;
        v40 = v36 - 1;
        v41 = v33 - 1;
        if ((v33 - 1) < v35 - 1)
        {
          v39 = v33 - 1;
        }

        v42 = v39 & ~(v39 >> 31);
        v43 = v31 - 1;
        if ((v31 - 1) < v40)
        {
          v40 = v31 - 1;
        }

        v44 = v40 & ~(v40 >> 31);
        v45 = v42 * v31;
        v46 = v42 * v31 + v44;
        v47 = *(a1 + 144);
        if (v41 >= v35)
        {
          v48 = v35;
        }

        else
        {
          v48 = v33 - 1;
        }

        v49 = (v48 & ~(v48 >> 31)) * v31;
        v50 = vmul_s32(vmax_s32(vmin_s32(vdup_n_s32(v41), vadd_s32(vdup_n_s32(v35), 0x200000001)), 0), vdup_n_s32(v31));
        v51 = vadd_s32(v50, vdup_n_s32(v44));
        v52 = (v47 + 4 * (v49 + v44));
        v53 = (v47 + 4 * v51.i32[0]);
        v54 = (v47 + 4 * v51.i32[1]);
        v55.i32[0] = *(v47 + 4 * v46);
        v55.i32[1] = *v52;
        v55.i32[2] = *v53;
        v55.i32[3] = *v54;
        v56 = v38;
        if (v43 >= v36)
        {
          v57 = v36;
        }

        else
        {
          v57 = v31 - 1;
        }

        v58 = v57 & ~(v57 >> 31);
        v59.i32[0] = *(v47 + 4 * (v45 + v58));
        v59.i32[1] = *(v47 + 4 * (v49 + v58));
        v59.i32[2] = *(v47 + 4 * (v50.i32[0] + v58));
        v59.i32[3] = *(v47 + 4 * (v50.i32[1] + v58));
        if (v43 >= v36 + 1)
        {
          v60 = v36 + 1;
        }

        else
        {
          v60 = v31 - 1;
        }

        v61 = v60 & ~(v60 >> 31);
        v63 = v36 + 2;
        if (v43 < v63)
        {
          v63 = v31 - 1;
        }

        v64 = v63 & ~(v63 >> 31);
        _Q5.i32[0] = *(v47 + 4 * (v45 + v64));
        _Q5.i32[1] = *(v47 + 4 * (v49 + v64));
        _Q5.i32[2] = *(v47 + 4 * (v50.i32[0] + v64));
        _Q5.i32[3] = *(v47 + 4 * (v50.i32[1] + v64));
        v66.i64[0] = 0x3F0000003F000000;
        v66.i64[1] = 0x3F0000003F000000;
        v62.i32[3] = *(v47 + 4 * (v50.i32[1] + v61));
        v62.i32[2] = *(v47 + 4 * (v50.i32[0] + v61));
        v62.i32[1] = *(v47 + 4 * (v49 + v61));
        v62.i32[0] = *(v47 + 4 * (v45 + v61));
        _Q1 = vmlaq_n_f32(v59, vmlaq_n_f32(vmulq_f32(vsubq_f32(v62, v55), v66), vmlaq_n_f32(vaddq_f32(v62, vaddq_f32(v62, vmlsq_f32(v55, v66, vmlaq_f32(_Q5, v87, v59)))), vmlaq_f32(vmlaq_f32(vmlsq_f32(vmulq_f32(vmulq_f32(v59, v89), v66), v66, v55), v66, vmulq_f32(v62, v88)), v66, _Q5), v32 - v56), v32 - v56), v32 - v56);
        _S6 = 3.0;
        __asm { FMLA            S5, S6, V1.S[1] }

        _S6 = -3.0;
        __asm { FMLA            S5, S6, V1.S[2] }

        _S6 = 5.0;
        __asm { FMLA            S4, S6, V1.S[1] }

        _S0 = v18 * (_Q1.f32[1] + ((((_Q1.f32[2] - _Q1.f32[0]) * 0.5) + (((_Q1.f32[2] + (_Q1.f32[2] + (_Q1.f32[0] - (_S4 * 0.5)))) + (((_Q1.f32[3] + _Q5.f32[0]) * 0.5) * v37)) * v37)) * v37));
        if (a6 == 1)
        {
          v76 = ((_S0 * 255.0) + 0.5);
          a3 = v91;
          if (a5 == 4)
          {
            v20->i8[0] = v76;
            v20->i8[1] = v76;
            v20->i8[2] = v76;
            v20->i8[3] = -1;
            v20 = (v20 + 4);
          }

          else
          {
            if (a5 != 1)
            {
LABEL_41:
              v79 = v81;
              return v79 & 1;
            }

            v20->i8[0] = v76;
            v20 = (v20 + 1);
          }
        }

        else
        {
          a3 = v91;
          if (a6 == 2)
          {
            __asm { FCVT            H0, S0 }

            v75 = _H0;
            if (a5 == 4)
            {
              v21->i16[0] = v75;
              v21->i16[1] = v75;
              v21->i16[2] = v75;
              v21->i16[3] = -1;
              v21 = (v21 + 8);
            }

            else
            {
              if (a5 != 1)
              {
                goto LABEL_41;
              }

              v21->i16[0] = v75;
              v21 = (v21 + 2);
            }
          }

          else
          {
            if (a6 != 4)
            {
              goto LABEL_41;
            }

            if (a5 == 4)
            {
              v77 = v85;
              *v77.i32 = _S0;
              v78 = vzip1q_s32(v77, v77);
              *&v78.i32[2] = _S0;
              *v86 = v78;
              v73 = v86 + 1;
            }

            else
            {
              if (a5 != 1)
              {
                goto LABEL_41;
              }

              *v86->i32 = _S0;
              v73 = (v86->i64 + 4);
            }

            v86 = v73;
          }
        }

        ++v24;
      }

      while (v24 != a3);
    }

    v10 = v84 + 1;
    v9 = v84 + 1 >= a4;
  }

  while (v84 + 1 != a4);
  v79 = 1;
  return v79 & 1;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void realityio::RIOIESInfo::~RIOIESInfo(realityio::RIOIESInfo *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType *realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType::SpatialAudioBuilderTokens_StaticTokenType(realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType *this)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "auralMode", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "endTime", 0);
  MEMORY[0x24C1A5DF0](this + 16, "endTimeCode", 0);
  MEMORY[0x24C1A5DF0](this + 24, "filePath", 0);
  MEMORY[0x24C1A5DF0](this + 32, "gain", 0);
  MEMORY[0x24C1A5DF0](this + 40, "loop", 0);
  MEMORY[0x24C1A5DF0](this + 48, "loopFromStage", 0);
  MEMORY[0x24C1A5DF0](this + 56, "loopFromStart", 0);
  MEMORY[0x24C1A5DF0](this + 64, "loopFromStartToEnd", 0);
  MEMORY[0x24C1A5DF0](this + 72, "mediaOffset", 0);
  MEMORY[0x24C1A5DF0](this + 80, "nonSpatial", 0);
  MEMORY[0x24C1A5DF0](this + 88, "onceFromStart", 0);
  MEMORY[0x24C1A5DF0](this + 96, "onceFromStartToEnd", 0);
  MEMORY[0x24C1A5DF0](this + 104, "playbackMode", 0);
  MEMORY[0x24C1A5DF0](this + 112, "SpatialAudio", 0);
  MEMORY[0x24C1A5DF0](this + 120, "spatial", 0);
  MEMORY[0x24C1A5DF0](this + 128, "startTime", 0);
  MEMORY[0x24C1A5DF0](this + 136, "timeCodesPerSecond", 0);
  MEMORY[0x24C1A5DF0](this + 144, "timeSamples", 0);
  v3 = (this + 152);
  v4 = *this;
  v27 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v28 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v29 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v30 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v31 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v32 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v33 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v34 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v35 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v36 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v37 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v38 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v39 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v40 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v41 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v42 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v43 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v44 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v45 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v27, &v46, 0x13uLL);
  for (i = 144; i != -8; i -= 8)
  {
    v24 = *(&v27 + i);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_24762E944(_Unwind_Exception *a1)
{
  v3 = 144;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[18];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[17];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[16];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[15];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[14];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[13];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[12];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[11];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[10];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[9];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[8];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[7];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[6];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[5];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[4];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[3];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[2];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateSpatialAudioDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53218))
  {
    operator new();
  }

  v3 = unk_27EE53210;
  *a1 = _MergedGlobals_31;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24762F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51)
{
  MEMORY[0x24C1A91B0](v52, 0x10A1C40F82F910ELL);
  a51 = &a40;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a51);
  v56 = 24;
  while (1)
  {
    v57 = *(v54 - 144 + v56);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v56 -= 16;
    if (v56 == -8)
    {
      if (a36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a36);
      }

      if (a38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a38);
      }

      MEMORY[0x24C1A91B0](v51, 0x10A1C401BF1BAA1);
      MEMORY[0x24C1A91B0](v53, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53218);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t RIOPxrUsdVariantSetsGetTypeID()
{
  if (RIOPxrUsdVariantSetsGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdVariantSetsGetTypeID::onceToken, &__block_literal_global_19);
  }

  return RIOPxrUsdVariantSetsGetTypeID::typeID;
}

void __RIOPxrUsdVariantSetsGetTypeID_block_invoke()
{
  if (!RIOPxrUsdVariantSetsGetTypeID::typeID)
  {
    RIOPxrUsdVariantSetsGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdVariantSetsCreateVariantSet(uint64_t a1, char *a2)
{
  v16 = *(a1 + 16);
  v4 = *(a1 + 24);
  v17 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, (a1 + 36));
  v5 = *(a1 + 40);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::AddVariantSet();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6 = RIOPxrUsdVariantSetCreate<pxrInternal__aapl__pxrReserved__::UsdVariantSet &>(v10);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  return v6;
}

void sub_24762F904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::~UsdVariantSet(&a15);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets((v15 - 64));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetCreate<pxrInternal__aapl__pxrReserved__::UsdVariantSet &>(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdVariantSetGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdVariantSetGetTypeID::onceToken, &__block_literal_global_4);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = *a1;
    v5 = *(a1 + 8);
    *(Instance + 24) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 32), (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 36), (a1 + 20));
    v6 = *(a1 + 24);
    *(v4 + 40) = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(v4 + 40) &= 0xFFFFFFFFFFFFFFF8;
    }

    if (*(a1 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 48), *(a1 + 32), *(a1 + 40));
    }

    else
    {
      v7 = *(a1 + 32);
      *(v4 + 64) = *(a1 + 48);
      *(v4 + 48) = v7;
    }
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets(pxrInternal__aapl__pxrReserved__::UsdVariantSets *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

__CFArray *RIOPxrUsdVariantSetsCopySetNames(uint64_t a1)
{
  v10 = *(a1 + 16);
  v2 = *(a1 + 24);
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (a1 + 36));
  v3 = *(a1 + 40);
  v14 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetNames(v9, &v10);
  v5 = v9[0];
  v6 = v9[1];
  while (v5 != v6)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v15 = CFStringCreateWithCString(0, v7, 0x8000100u);
    CFArrayAppendValue(Mutable, v15);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v15);
    v5 += 24;
  }

  v15 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return Mutable;
}

void sub_24762FC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetsCopyVariantSet(uint64_t a1, char *a2)
{
  v16 = *(a1 + 16);
  v4 = *(a1 + 24);
  v17 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, (a1 + 36));
  v5 = *(a1 + 40);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6 = RIOPxrUsdVariantSetCreate<pxrInternal__aapl__pxrReserved__::UsdVariantSet &>(v10);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  return v6;
}

void sub_24762FDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::~UsdVariantSet(&a15);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets((v15 - 64));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetsHasVariantSet(uint64_t a1, char *a2)
{
  v10 = *(a1 + 16);
  v4 = *(a1 + 24);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (a1 + 36));
  v5 = *(a1 + 40);
  v14 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  HasVariantSet = pxrInternal__aapl__pxrReserved__::UsdVariantSets::HasVariantSet();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return HasVariantSet;
}

void sub_24762FEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets(&a16);
  _Unwind_Resume(a1);
}

CFStringRef RIOPxrUsdVariantSetsCopyVariantSelection(uint64_t a1, char *a2)
{
  v13 = *(a1 + 16);
  v4 = *(a1 + 24);
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, (a1 + 36));
  v5 = *(a1 + 40);
  v17 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSelection();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v12 >= 0)
  {
    v6 = &v11;
  }

  else
  {
    v6 = v11;
  }

  v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  return v7;
}

void sub_247630060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets(&a21);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetsSetSelection(uint64_t a1, char *a2, char *a3)
{
  v30 = *(a1 + 16);
  v6 = *(a1 + 24);
  v31 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v32, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v33, (a1 + 36));
  v7 = *(a1 + 40);
  v34 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  VariantSet = pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v9 = realityio::UsdLayerMutexTracker::instance(VariantSet);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v24))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&__p, v24);
    v10 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&__p);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v10);
    v12 = *(EditTarget + 8);
    v18 = *EditTarget;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    }

    v13 = v22;
    if (v22 && atomic_fetch_add_explicit((v22 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v14 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v9, &v18);
  v15 = v19;
  if (v19 && atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v15 + 8))(v15);
  }

  std::recursive_mutex::lock(v14);
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  std::string::basic_string[abi:ne200100]<0>(&v18, a3);
  v16 = pxrInternal__aapl__pxrReserved__::UsdVariantSets::SetSelection();
  if (v20 < 0)
  {
    operator delete(v18);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v14);
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
  }

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31);
  }

  return v16;
}

void sub_24763032C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::recursive_mutex::unlock(v22);
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::~UsdVariantSet(&a22);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets((v23 - 64));
  _Unwind_Resume(a1);
}

__CFDictionary *RIOPxrUsdVariantSetsCopyAllVariantSelections(uint64_t a1)
{
  v16 = *(a1 + 16);
  v2 = *(a1 + 24);
  v17 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, (a1 + 36));
  v3 = *(a1 + 40);
  v20 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetAllVariantSelections(&v14, &v16);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = v14;
  if (v14 != v15)
  {
    do
    {
      v6 = (v5 + 4);
      if (*(v5 + 55) < 0)
      {
        v6 = *v6;
      }

      key = CFStringCreateWithCString(0, v6, 0x8000100u);
      v7 = (v5 + 7);
      if (*(v5 + 79) < 0)
      {
        v7 = *v7;
      }

      v12 = CFStringCreateWithCString(0, v7, 0x8000100u);
      CFDictionaryAddValue(Mutable, key, v12);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v12);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&key);
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v15);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v14, v15[0]);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  return Mutable;
}

void sub_2476305C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(va, v7);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::~UsdVariantSets(va1);
  _Unwind_Resume(a1);
}

uint64_t _RIOPxrUsdVariantSetsCFFinalize(void *a1)
{
  v2 = a1[5];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));
  result = a1[3];
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

uint64_t RIOCancellableGetTypeID()
{
  if (RIOCancellableGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOCancellableGetTypeID::onceToken, &__block_literal_global_20);
  }

  return RIOCancellableGetTypeID::typeID;
}

void __RIOCancellableGetTypeID_block_invoke()
{
  if (!RIOCancellableGetTypeID::typeID)
  {
    RIOCancellableGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOCancellableCancel(uint64_t result)
{
  if (result)
  {
    return (*(**(result + 16) + 16))();
  }

  return result;
}

uint64_t _RIOCancellableCFFinalize(void *a1)
{
  result = a1[2];
  a1[2] = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void realityio::DirectionalLightComponentBuilder::DirectionalLightComponentBuilder(realityio::DirectionalLightComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[24] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "DirectionalLightComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kDirectionalLightComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE53240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53240))
  {
    operator new();
  }

  if (*algn_27EE53238)
  {
    atomic_fetch_add_explicit((*algn_27EE53238 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_2859560C8;
  v7[3] = v7;
  v6[0] = &unk_285956148;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247630F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  MEMORY[0x24C1A91B0](v50, 0x10A1C40F82F910ELL);
  *(v53 - 256) = &a50;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v53 - 256));
  MEMORY[0x24C1A91B0](v51, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v52, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE53240);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void realityio::DirectionalLightComponentBuilder::run(realityio::DirectionalLightComponentBuilder *this, realityio::Inputs *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v2 = (a2 + 32);
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v18, v3, v2);
  v4 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (v4)
  {
    realityio::getAttributeColor4FAndGamut(&v18, (v4 + 72), &v22, xmmword_247766550);
    v20 = v22;
    v21 = v23;
    v5 = atomic_load(&realityio::tokens::LightBuilderTokens);
    if (v5)
    {
      realityio::getAttributeValue<float>(&v18, (v5 + 56), &v22);
      v6 = v22.n128_u8[0];
      v7 = v22.n128_f32[2];
      if ((v22.n128_u8[0] & 1) == 0 && v25 < 0)
      {
        operator delete(__p);
      }

      v8 = 1.0;
      if (v6)
      {
        v8 = v7;
      }

      v17 = v8;
      v9 = atomic_load(&realityio::tokens::LightBuilderTokens);
      if (v9)
      {
        realityio::getAttributeValue<float>(&v18, (v9 + 64), &v22);
        v11 = v22.n128_u8[0];
        v12 = v22.n128_f32[2];
        if ((v22.n128_u8[0] & 1) == 0 && v25 < 0)
        {
          operator delete(__p);
        }

        v13 = 0.0;
        if (v11)
        {
          v13 = v12;
        }

        v16 = v13;
        v17 = realityio::scaleLightIntensityByStageUnits(&v18, v10, *MEMORY[0x277D00828] * v17);
        v15 = 0;
        v14 = *(v19 + 6);
        operator new();
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
}

void sub_2476316F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x24C1A91B0](v5, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE53228);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::DirectionalLightComponentBuilder::clear(realityio::DirectionalLightComponentBuilder *this, realityio::Inputs *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v5 = a2;
  v6[0] = &unk_285956348;
  v6[1] = &v5;
  v6[3] = v6;
  (*(*v2 + 16))(v2, v6);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247631954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::DirectionalLightComponentBuilder::~DirectionalLightComponentBuilder(realityio::DirectionalLightComponentBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void sub_247631C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::DirectionalLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::DirectionalLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::DirectionalLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::DirectionalLightComponentBuilder::DirectionalLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::DirectionalLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859561C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = **(a1 + 8);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v3, v4, v14);
  if (v14[0])
  {
    v5 = v15;
    v13 = v15;
    if (v15)
    {
      RERetain();
      REDirectionalLightComponentGetComponentType();
      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      v18 = 0;
      operator new();
    }
  }

  else
  {
    v13 = 0;
  }

  v6 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 16), &v12);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v12);
    *buf = 136315138;
    v17 = Text;
    _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_DEFAULT, "Stopping operation to set directionalLight component because entity no longer exists for prim %s", buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v14);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247632168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio32DirectionalLightComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285956238;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio32DirectionalLightComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  **(a1 + 16) = v3;
  v4 = **(a1 + 24);
  exp2f(**(a1 + 32));
  REDirectionalLightComponentSetIntensity();
  v5 = *(a1 + 40);
  v6 = *v5;
  v7 = v5[1].n128_u8[0];

  return MEMORY[0x282153F28](v3, v7, v6);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio32DirectionalLightComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio32DirectionalLightComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<REComponent *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859562C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285956348;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v1 = **(a1 + 1);
  v2 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v1, v2, v5);
  if (v5[0])
  {
    v4 = v6;
    if (v6)
    {
      RERetain();
      REDirectionalLightComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }
  }

  else
  {
    v4 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v4);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v5);
}

void sub_247632554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::DirectionalLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::DirectionalLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType *realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType::CapsuleMeshBuilderTokens_StaticTokenType(atomic_uint **this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Capsule", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "axis", 0);
  MEMORY[0x24C1A5DF0](this + 2, "height", 0);
  MEMORY[0x24C1A5DF0](this + 3, "radius", 0);
  MEMORY[0x24C1A5DF0](this + 4, "material:binding", 0);
  v3 = this + 5;
  v4 = *this;
  v18 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v5;
    }
  }

  v6 = this[1];
  v19 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v7;
    }
  }

  v8 = this[2];
  v20 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v9;
    }
  }

  v10 = this[3];
  v21 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v11;
    }
  }

  v12 = this[4];
  v22 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v13;
    }
  }

  *v3 = 0;
  this[6] = 0;
  this[7] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v18, &v23, 5uLL);
  for (i = 4; i != -1; --i)
  {
    v15 = (&v18)[i];
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_247632778(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_247632BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x24C1A91B0](v30, 0x10A1C40F82F910ELL);
  *(v31 - 176) = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
  MEMORY[0x24C1A91B0](v29, v28);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Backdrop::CONTAINS_ATTRIBUTE(RIO_MTLX::Backdrop *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_33, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_33))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53250, "contains");

    __cxa_guard_release(&_MergedGlobals_33);
  }
}

void RIO_MTLX::Node::getNodeDef(std::string *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, RIO_MTLX::InterfaceElement **a4@<X8>)
{
  v8 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(a1);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&a1[6].__r_.__value_.__r.__words[2], v8))
  {
    NodeDefString = RIO_MTLX::InterfaceElement::getNodeDefString(a1);

    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(a1, NodeDefString, a4);
  }

  else
  {
    RIO_MTLX::Element::getDocument(a1, &p_p);
    v10 = p_p;
    RIO_MTLX::Element::getQualifiedName(a1, a1 + 1, &__p);
    RIO_MTLX::Document::getMatchingNodeDefs(v10, &__p.__r_.__value_.__l.__data_, &v38);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    RIO_MTLX::Element::getDocument(a1, &p_p);
    RIO_MTLX::Document::getMatchingNodeDefs(p_p, &a1[1].__r_.__value_.__l.__data_, &__p);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    p_p = 0;
    v35 = 0;
    v36 = 0;
    std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>,std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>>(&v38, v39, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4);
    v11 = v38;
    v12 = v39;
    if (v38 != v39)
    {
      v13 = a3 ^ 1;
      do
      {
        v14 = *v11;
        *a4 = *v11;
        v15 = v11[1];
        a4[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
          v14 = *a4;
        }

        Target = RIO_MTLX::InterfaceElement::getTarget(v14);
        if (RIO_MTLX::targetStringsMatch(Target, a2))
        {
          v17 = *a4;
          VersionString = RIO_MTLX::InterfaceElement::getVersionString(a1);
          if (RIO_MTLX::NodeDef::isVersionCompatible(v17, VersionString))
          {
            v19 = (*(**a4 + 56))(*a4);
            v20 = (*(a1->__r_.__value_.__r.__words[0] + 56))(a1);
            v21 = *(v19 + 23);
            if (v21 >= 0)
            {
              v22 = *(v19 + 23);
            }

            else
            {
              v22 = *(v19 + 8);
            }

            v23 = *(v20 + 23);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v20 + 8);
            }

            if (v22 == v23)
            {
              v25 = v21 >= 0 ? v19 : *v19;
              v26 = v24 >= 0 ? v20 : *v20;
              if (!memcmp(v25, v26, v22))
              {
                v27 = a4[1];
                v32 = *a4;
                v33 = v27;
                if (v27)
                {
                  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                hasExactInputMatch = RIO_MTLX::InterfaceElement::hasExactInputMatch(a1, &v32, 0);
                if (v33)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                }

                if ((hasExactInputMatch | v13))
                {
                  if (hasExactInputMatch)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&p_p, a4);
                }
              }
            }
          }
        }

        v29 = a4[1];
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    v30 = p_p;
    if (p_p == v35)
    {
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = p_p->__r_.__value_.__r.__words[0];
      size = v30->__r_.__value_.__l.__size_;
      a4[1] = size;
      if (size)
      {
        atomic_fetch_add_explicit(size + 1, 1uLL, memory_order_relaxed);
      }
    }

LABEL_45:
    v40 = &p_p;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v40);
    p_p = &__p;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    __p.__r_.__value_.__r.__words[0] = &v38;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_247633260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void **p_p, uint64_t a12, uint64_t a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v23 = *(v20 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  *(v21 - 72) = &p_p;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v21 - 72));
  p_p = &__p;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  __p = &a20;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Node::getUpstreamEdge(RIO_MTLX::Node *this@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = (*(*this + 24))(this);
  if (v6 <= a2)
  {
    goto LABEL_24;
  }

  v7 = RIO_MTLX::EMPTY_STRING(v6);
  RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(this, v7, v20);
  v8 = *(v20[0] + 16 * a2);
  v17 = v8;
  v9 = *(v20[0] + 16 * a2 + 8);
  if (v8.n128_u64[1])
  {
    atomic_fetch_add_explicit((v8.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  v21 = v20;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v6 = (*(*v17.n128_u64[0] + 64))(v20, v17);
  v11 = v20[0];
  v10 = v20[1];
  if (v20[0])
  {
    RIO_MTLX::Element::getSelfNonConst(this, &v18);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v19;
    a3->n128_u64[0] = v18;
    a3->n128_u64[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[1] = v17;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[2].n128_u64[0] = v11;
    a3[2].n128_u64[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v6 = v19;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v11)
  {
LABEL_24:
    v13 = RIO_MTLX::NULL_EDGE(v6);
    v14 = *(v13 + 1);
    a3->n128_u64[0] = *v13;
    a3->n128_u64[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v13 + 3);
    a3[1].n128_u64[0] = *(v13 + 2);
    a3[1].n128_u64[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v13 + 5);
    a3[2].n128_u64[0] = *(v13 + 4);
    a3[2].n128_u64[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_2476334EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Node::getDownstreamPorts(const void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  RIO_MTLX::Element::getDocument(this, &v17);
  RIO_MTLX::Document::getMatchingPorts(v17, this + 6, &v18);
  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  v4 = v18;
  for (i = v19; v4 != i; v4 += 2)
  {
    v6 = *v4;
    v7 = v4[1];
    *&v17 = *v4;
    *(&v17 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 64))(&v15);
    std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v13, this + 1);
    v8 = v15;
    v9 = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v8 == v9)
    {
      std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a2, &v17);
    }

    if (*(&v17 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
    }
  }

  *&v17 = &v18;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v10 = *(a2 + 8);
  v11 = 126 - 2 * __clz((v10 - *a2) >> 4);
  if (v10 == *a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,false>(*a2, v10, v12, 1);
}

void sub_247633660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::Node::validate(uint64_t a1, std::string *a2)
{
  v26 = 1;
  v4 = *(a1 + 47);
  if (v4 < 0)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 != 0;
  std::string::basic_string[abi:ne200100]<0>(v24, "Node element is missing a category");
  RIO_MTLX::Element::validateRequire(a1, v5, &v26, a2, v24);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v7 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v6);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), v7) != 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Node element is missing a type");
  RIO_MTLX::Element::validateRequire(a1, v8, &v26, a2, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = RIO_MTLX::EMPTY_STRING(v9);
  RIO_MTLX::Node::getNodeDef(a1, v10, 1, &v20);
  if (v20)
  {
    memset(&v19, 0, sizeof(v19));
    v17 = v20;
    v18 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    hasExactInputMatch = RIO_MTLX::InterfaceElement::hasExactInputMatch(a1, &v17, &v19);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    std::operator+<char>();
    RIO_MTLX::Element::validateRequire(a1, hasExactInputMatch, &v26, a2, &v15);
    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  v12 = RIO_MTLX::Element::validate(a1, a2);
  v13 = v26;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v12 & v13;
}

void sub_247633870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GraphElement::addMaterialNode(RIO_MTLX *a1, uint64_t a2, std::string **a3)
{
  v6 = RIO_MTLX::SURFACE_MATERIAL_NODE_STRING(a1);
  if (v6[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    v17.__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&v17.__r_.__value_.__l.__data_ = v7;
  }

  v8 = *a3;
  if (*a3)
  {
    v9 = (*(v8->__r_.__value_.__r.__words[0] + 56))(v8);
    v8 = RIO_MTLX::VOLUME_MATERIAL_NODE_STRING(v9);
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    size = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v13 = size;
    if ((size & 0x80u) != 0)
    {
      size = v8->__r_.__value_.__l.__size_;
    }

    if (v11 == size)
    {
      if (v10 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = *v9;
      }

      if (v13 >= 0)
      {
        v15 = v8;
      }

      else
      {
        v15 = v8->__r_.__value_.__r.__words[0];
      }

      v8 = memcmp(v14, v15, v11);
      if (!v8)
      {
        v16 = RIO_MTLX::VOLUME_SHADER_TYPE_STRING(v8);
        v8 = std::string::operator=(&v17, v16);
      }
    }
  }

  RIO_MTLX::MATERIAL_TYPE_STRING(v8);
  RIO_MTLX::GraphElement::addNode(a1, &v17, a2);
}

void sub_247633AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v18 = *(v16 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::ValueElement>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::ValueElement>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_247633B8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GraphIterator::operator*(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[8];
  if (a1[7] == v2)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = *(v2 - 24);
    v4 = *(v2 - 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v5 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2[2] = v5;
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2[4] = v8;
  a2[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void RIO_MTLX::NodeGraph::getNodeDef(std::string *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  NodeDefString = RIO_MTLX::InterfaceElement::getNodeDefString(this);
  RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(v2, NodeDefString, a2);
  if (!*a2)
  {
    v41 = a2;
    RIO_MTLX::Element::getDocument(v2, &v45);
    v5 = v45;
    v7 = RIO_MTLX::EMPTY_STRING(v6);
    v9 = *(v5 + 136);
    v8 = *(v5 + 144);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if (v9 == v8)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v10 = v7;
      v11 = 0;
      v12 = 0;
      v43 = v2;
      v42 = v8;
      do
      {
        v14 = *v9;
        v13 = v9[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RIO_MTLX::Element::asA<RIO_MTLX::Implementation>(v14, &__p);
        v15 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          v16 = *(v10 + 23);
          v17 = v16 >= 0 ? *(v10 + 23) : v10[1];
          if (!v17)
          {
            goto LABEL_21;
          }

          v18 = *(v14 + 47);
          v19 = v18;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(v14 + 32);
          }

          if (v18 == v17)
          {
            v22 = *(v14 + 24);
            v21 = v14 + 24;
            v20 = v22;
            v23 = (v19 >= 0 ? v21 : v20);
            v24 = v16 >= 0 ? v10 : *v10;
            if (!memcmp(v23, v24, v17))
            {
LABEL_21:
              v25 = v11;
              if (((v11 >> 4) + 1) >> 60)
              {
                v47 = 0;
                v48 = v11;
                v49 = 0;
                std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
              }

              if (v11 >> 4 != -1)
              {
                if (!(((v11 >> 4) + 1) >> 60))
                {
                  operator new();
                }

                v47 = 0;
                v48 = v11;
                v49 = 0;
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v12 = 0;
              size = __p.__r_.__value_.__l.__size_;
              v27 = (16 * (v11 >> 4));
              *v27 = v15;
              v27[1] = size;
              if (size)
              {
                atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
              }

              v11 = (v27 + 2);
              memcpy(0, 0, v25);
              v8 = v42;
              v2 = v43;
            }
          }
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v9 += 2;
      }

      while (v9 != v8);
      v47 = 0;
      v48 = v11;
      v49 = 0;
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      v12 = v47;
      v11 = v48;
    }

    while (v12 != v11)
    {
      v29 = *v12;
      v28 = *(v12 + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      NodeGraph = RIO_MTLX::Implementation::getNodeGraph(v29);
      RIO_MTLX::Element::getQualifiedName(v2, v2 + 2, &__p);
      v31 = *(NodeGraph + 23);
      if (v31 >= 0)
      {
        v32 = *(NodeGraph + 23);
      }

      else
      {
        v32 = NodeGraph[1];
      }

      v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v34 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = __p.__r_.__value_.__l.__size_;
      }

      if (v32 == v33)
      {
        if (v31 >= 0)
        {
          v35 = NodeGraph;
        }

        else
        {
          v35 = *NodeGraph;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v37 = memcmp(v35, p_p, v32) == 0;
        if ((v34 & 0x80000000) == 0)
        {
LABEL_55:
          if (v37)
          {
            goto LABEL_58;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v37 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v37)
      {
LABEL_58:
        v38 = RIO_MTLX::InterfaceElement::getNodeDefString(v29);
        RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(v29, v38, &__p);
        v39 = *&__p.__r_.__value_.__l.__data_;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v40 = v41[1];
        *v41 = v39;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
          }
        }
      }

LABEL_61:
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v12 += 16;
    }

    __p.__r_.__value_.__r.__words[0] = &v47;
    std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_247634024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a9 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::NodeGraph::validate(RIO_MTLX::InterfaceElement *a1, std::string *a2)
{
  v23 = 1;
  v4 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(a1);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, v4) == 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "NodeGraph elements do not support version strings");
  RIO_MTLX::Element::validateRequire(a1, v5, &v23, a2, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v6);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, v7))
  {
    RIO_MTLX::NodeGraph::getNodeDef(a1, &v19);
    v8 = v19;
    std::string::basic_string[abi:ne200100]<0>(v17, "NodeGraph implementation refers to non-existent NodeDef");
    RIO_MTLX::Element::validateRequire(a1, v8 != 0, &v23, a2, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (v19)
    {
      v9 = *(a1 + 33);
      RIO_MTLX::InterfaceElement::getActiveOutputs(v19, v16);
      v11 = v16[0];
      v10 = v16[1];
      std::string::basic_string[abi:ne200100]<0>(v14, "NodeGraph implementation has a different number of outputs than its NodeDef");
      RIO_MTLX::Element::validateRequire(a1, v9 == (v10 - v11) >> 4, &v23, a2, v14);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      v24 = v16;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v24);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  v12 = RIO_MTLX::Element::validate(a1, a2);
  return (v12 & v23);
}

void sub_247634244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *(v31 - 56) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 56));
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

double RIO_MTLX::NodeGraph::getDeclaration@<D0>(std::string *a1@<X0>, _OWORD *a2@<X8>)
{
  RIO_MTLX::NodeGraph::getNodeDef(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void RIO_MTLX::Element::getAncestorOfType<RIO_MTLX::GraphElement>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v9, (a1 + 8));
  shared_weak_owners = v9;
  if (v9)
  {
    do
    {
      RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(shared_weak_owners, a2);
      v4 = *a2 == 0;
      if (*a2)
      {
        break;
      }

      v5 = a2[1];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = v9;
      shared_weak_owners = v9[9].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
        v7 = shared_weak_owners;
        if (shared_weak_owners)
        {
          shared_weak_owners = v6[9].__shared_owners_;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v10;
      v9 = shared_weak_owners;
      v10 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        shared_weak_owners = v9;
      }
    }

    while (shared_weak_owners);
  }

  else
  {
    v4 = 1;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_2476343C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getTypedAttribute<std::vector<std::string>>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), a2))
  {
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), a2);
    if (v6)
    {
      v7 = (v6 + 5);
    }

    else
    {
      v7 = RIO_MTLX::EMPTY_STRING(0);
    }

    RIO_MTLX::fromValueString<std::vector<std::string>>(v7, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t RIO_MTLX::Backdrop::validate(RIO_MTLX::Backdrop *a1, std::string *a2)
{
  v3 = a1;
  v28 = 1;
  RIO_MTLX::Backdrop::CONTAINS_ATTRIBUTE(a1);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v3 + 160), byte_27EE53250))
  {
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "contains");
  RIO_MTLX::Element::getTypedAttribute<std::vector<std::string>>(v3, &__p, v27);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  RIO_MTLX::Element::getAncestorOfType<RIO_MTLX::GraphElement>(v3, &v34);
  if (!v34)
  {
    goto LABEL_30;
  }

  RIO_MTLX::Backdrop::CONTAINS_ATTRIBUTE(v4);
  RIO_MTLX::Element::getTypedAttribute<std::vector<std::string>>(v3, byte_27EE53250, &__p);
  v5 = __p;
  v6 = v32;
  if (__p == v32)
  {
    goto LABEL_29;
  }

  v21 = v3;
  v7 = 0;
  do
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v34 + 96), v5);
    v9 = v8;
    if (v8)
    {
      v10 = v8[5];
      v11 = v9[6];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        RIO_MTLX::Element::asA<RIO_MTLX::TypedElement>(v10, &p_p);
        if (!v11)
        {
          goto LABEL_13;
        }

LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
    }

    p_p = 0;
    v30 = 0;
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (p_p)
    {
      v12 = v7;
      if (((v7 >> 4) + 1) >> 60)
      {
        v25 = v7;
        v26 = 0;
        v24 = 0;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      if (v7 >> 4 != -1)
      {
        if (!(((v7 >> 4) + 1) >> 60))
        {
          operator new();
        }

        v25 = v7;
        v26 = 0;
        v24 = 0;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = v30;
      v14 = (16 * (v7 >> 4));
      *v14 = p_p;
      v14[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (v14 + 2);
      memcpy(0, 0, v12);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    v5 += 3;
  }

  while (v5 != v6);
  v25 = v7;
  v26 = 0;
  v24 = 0;
  v3 = v21;
LABEL_29:
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
LABEL_30:
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v16 = v27[0];
  v15 = v27[1];
  v18 = v24;
  v17 = v25;
  std::string::basic_string[abi:ne200100]<0>(v22, "Invalid element in contains string");
  RIO_MTLX::Element::validateRequire(v3, 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3) == (v17 - v18) >> 4, &v28, a2, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  __p = &v24;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_35:
  v19 = RIO_MTLX::Element::validate(v3, a2);
  return (v19 & v28);
}

void sub_247634764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char **a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a26 = &a17;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a17 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Node::~Node(RIO_MTLX::Node *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

double RIO_MTLX::Node::getDeclaration@<D0>(std::string *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  RIO_MTLX::Node::getNodeDef(a1, a2, 0, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

void RIO_MTLX::NodeGraph::~NodeGraph(RIO_MTLX::NodeGraph *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Backdrop::~Backdrop(RIO_MTLX::Backdrop *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Node>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Node>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_247634A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::set<std::shared_ptr<RIO_MTLX::Element>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::shared_ptr<RIO_MTLX::Element>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<RIO_MTLX::Element>,std::__tree_node<std::shared_ptr<RIO_MTLX::Element>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<std::shared_ptr<RIO_MTLX::Element>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<RIO_MTLX::Element>,std::__tree_node<std::shared_ptr<RIO_MTLX::Element>,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::shared_ptr<RIO_MTLX::Element>>::__emplace_hint_unique_key_args<std::shared_ptr<RIO_MTLX::Element>,std::shared_ptr<RIO_MTLX::Element> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::shared_ptr<RIO_MTLX::Element>>::__emplace_hint_unique_key_args<std::shared_ptr<RIO_MTLX::Element>,std::shared_ptr<RIO_MTLX::Element> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__find_equal<std::shared_ptr<RIO_MTLX::Element const>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void RIO_MTLX::GraphIterator::~GraphIterator(RIO_MTLX::GraphIterator *this)
{
  v4 = (this + 56);
  std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(this + 32, *(this + 5));
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,false>(uint64_t *j, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v486 = a2 - 2;
  while (1)
  {
    v7 = j;
    v8 = (v6 - j) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(j, j + 2, v486);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(j, j + 2, j + 4, v486);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(j, j + 2, j + 4, j + 6, v486);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      v6 = a2;
      if (v8 == 2)
      {
        v210 = *(a2 - 2);
        v211 = *(a2 - 1);
        if (v211)
        {
          atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v212 = *j;
        v213 = j[1];
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v216 = *(v210 + 48);
        v214 = v210 + 48;
        v215 = v216;
        v217 = *(v214 + 23);
        v220 = *(v212 + 48);
        v218 = v212 + 48;
        v219 = v220;
        v221 = *(v218 + 23);
        if (v221 >= 0)
        {
          v222 = *(v218 + 23);
        }

        else
        {
          v222 = *(v218 + 8);
        }

        if (v221 >= 0)
        {
          v223 = v218;
        }

        else
        {
          v223 = v219;
        }

        if (v217 >= 0)
        {
          v224 = *(v214 + 23);
        }

        else
        {
          v224 = *(v214 + 8);
        }

        if (v217 >= 0)
        {
          v225 = v214;
        }

        else
        {
          v225 = v215;
        }

        if (v224 >= v222)
        {
          v226 = v222;
        }

        else
        {
          v226 = v224;
        }

        v227 = memcmp(v223, v225, v226);
        if (v227)
        {
          v228 = v227 < 0;
        }

        else
        {
          v228 = v222 < v224;
        }

        if (v213)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v213);
        }

        if (v211)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v211);
        }

        if (v228)
        {
          v229 = *j;
          *j = *(a2 - 2);
          *(a2 - 2) = v229;
          v230 = j[1];
          j[1] = *(a2 - 1);
          *(a2 - 1) = v230;
        }

        return;
      }
    }

    v495 = j;
    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j == v6)
      {
        return;
      }

      v278 = (v8 - 2) >> 1;
      v279 = v278;
      while (1)
      {
        v280 = v279;
        if (v278 < v279)
        {
          goto LABEL_615;
        }

        v483 = v279;
        v281 = (2 * v279) | 1;
        v282 = &v495[2 * v281];
        v283 = 2 * v279 + 2;
        if (v283 >= v8)
        {
          goto LABEL_524;
        }

        v284 = *v282;
        v285 = v282[1];
        if (v285)
        {
          atomic_fetch_add_explicit(&v285->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v286 = v281;
        v287 = v282[2];
        v288 = v282[3];
        if (v288)
        {
          atomic_fetch_add_explicit(&v288->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v291 = *(v284 + 48);
        v289 = v284 + 48;
        v290 = v291;
        v292 = *(v289 + 23);
        v295 = *(v287 + 48);
        v293 = v287 + 48;
        v294 = v295;
        v296 = *(v293 + 23);
        if (v296 >= 0)
        {
          v297 = *(v293 + 23);
        }

        else
        {
          v297 = *(v293 + 8);
        }

        if (v296 >= 0)
        {
          v298 = v293;
        }

        else
        {
          v298 = v294;
        }

        if (v292 >= 0)
        {
          v299 = *(v289 + 23);
        }

        else
        {
          v299 = *(v289 + 8);
        }

        if (v292 >= 0)
        {
          v300 = v289;
        }

        else
        {
          v300 = v290;
        }

        if (v299 >= v297)
        {
          v301 = v297;
        }

        else
        {
          v301 = v299;
        }

        v302 = memcmp(v298, v300, v301);
        if (v302)
        {
          v303 = v302 < 0;
        }

        else
        {
          v303 = v297 < v299;
        }

        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v281 = v286;
        if (!v285)
        {
          break;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v285);
        if (v303)
        {
          goto LABEL_523;
        }

LABEL_524:
        v304 = *v282;
        v305 = v282[1];
        if (v305)
        {
          atomic_fetch_add_explicit(&v305->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v306 = &v495[2 * v483];
        v307 = *v306;
        v308 = v306[1];
        if (v308)
        {
          atomic_fetch_add_explicit(&v308->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v311 = *(v304 + 48);
        v309 = v304 + 48;
        v310 = v311;
        v312 = *(v309 + 23);
        v315 = *(v307 + 48);
        v313 = v307 + 48;
        v314 = v315;
        v316 = *(v313 + 23);
        if (v316 >= 0)
        {
          v317 = *(v313 + 23);
        }

        else
        {
          v317 = *(v313 + 8);
        }

        if (v316 >= 0)
        {
          v318 = v313;
        }

        else
        {
          v318 = v314;
        }

        if (v312 >= 0)
        {
          v319 = *(v309 + 23);
        }

        else
        {
          v319 = *(v309 + 8);
        }

        if (v312 >= 0)
        {
          v320 = v309;
        }

        else
        {
          v320 = v310;
        }

        if (v319 >= v317)
        {
          v321 = v317;
        }

        else
        {
          v321 = v319;
        }

        v322 = memcmp(v318, v320, v321);
        if (v322)
        {
          v323 = v322 < 0;
        }

        else
        {
          v323 = v317 < v319;
        }

        v278 = (v8 - 2) >> 1;
        if (v308)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v308);
        }

        if (v305)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v305);
        }

        v280 = v483;
        if (!v323)
        {
          v324 = *v306;
          v325 = v306[1];
          *v306 = 0;
          v306[1] = 0;
          v490 = v324;
          v487 = (v324 + 48);
          while (1)
          {
            v326 = v306;
            v306 = v282;
            v327 = *v282;
            *v282 = 0;
            v282[1] = 0;
            v328 = v326[1];
            *v326 = v327;
            if (v328)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v328);
            }

            if (v278 < v281)
            {
LABEL_613:
              v362 = v306[1];
              *v306 = v490;
              v306[1] = v325;
              v280 = v483;
              if (v362)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v362);
              }

              break;
            }

            v282 = &v495[2 * ((2 * v281) | 1)];
            v493 = (2 * v281) | 1;
            if (2 * v281 + 2 < v8)
            {
              v329 = *v282;
              v330 = v282[1];
              if (v330)
              {
                atomic_fetch_add_explicit(&v330->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v331 = v282[2];
              v332 = v282[3];
              if (v332)
              {
                atomic_fetch_add_explicit(&v332->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v335 = *(v329 + 48);
              v333 = v329 + 48;
              v334 = v335;
              v336 = *(v333 + 23);
              v339 = *(v331 + 48);
              v337 = v331 + 48;
              v338 = v339;
              v340 = *(v337 + 23);
              if (v340 >= 0)
              {
                v341 = *(v337 + 23);
              }

              else
              {
                v341 = *(v337 + 8);
              }

              if (v340 >= 0)
              {
                v342 = v337;
              }

              else
              {
                v342 = v338;
              }

              if (v336 >= 0)
              {
                v343 = *(v333 + 23);
              }

              else
              {
                v343 = *(v333 + 8);
              }

              if (v336 >= 0)
              {
                v344 = v333;
              }

              else
              {
                v344 = v334;
              }

              if (v343 >= v341)
              {
                v345 = v341;
              }

              else
              {
                v345 = v343;
              }

              v346 = memcmp(v342, v344, v345);
              if (v346)
              {
                v347 = v346 < 0;
              }

              else
              {
                v347 = v341 < v343;
              }

              if (v332)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v332);
              }

              v278 = (v8 - 2) >> 1;
              if (!v330)
              {
                if (!v347)
                {
                  goto LABEL_583;
                }

LABEL_582:
                v282 += 2;
                v493 = 2 * v281 + 2;
                goto LABEL_583;
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v330);
              if (v347)
              {
                goto LABEL_582;
              }
            }

LABEL_583:
            v348 = *v282;
            v349 = v282[1];
            if (v349)
            {
              atomic_fetch_add_explicit(&v349->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v325)
            {
              atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v352 = *(v348 + 48);
            v350 = v348 + 48;
            v351 = v352;
            v353 = *(v350 + 23);
            v354 = *(v490 + 71);
            if (v354 >= 0)
            {
              v355 = *(v490 + 71);
            }

            else
            {
              v355 = *(v490 + 56);
            }

            if (v354 >= 0)
            {
              v356 = v487;
            }

            else
            {
              v356 = *(v490 + 48);
            }

            if (v353 >= 0)
            {
              v357 = *(v350 + 23);
            }

            else
            {
              v357 = *(v350 + 8);
            }

            if (v353 >= 0)
            {
              v358 = v350;
            }

            else
            {
              v358 = v351;
            }

            if (v357 >= v355)
            {
              v359 = v355;
            }

            else
            {
              v359 = v357;
            }

            v360 = memcmp(v356, v358, v359);
            if (v360)
            {
              v361 = v360 < 0;
            }

            else
            {
              v361 = v355 < v357;
            }

            if (v325)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v325);
            }

            v281 = v493;
            if (v349)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v349);
            }

            if (v361)
            {
              goto LABEL_613;
            }
          }
        }

LABEL_615:
        v279 = v280 - 1;
        if (!v280)
        {
          v363 = v495;
          while (1)
          {
            v364 = v363;
            v365 = 0;
            v485 = *v363;
            v488 = a2;
            v491 = v363[1];
            *v363 = 0;
            v363[1] = 0;
            v366 = (v8 - 2) >> 1;
            v494 = v366;
            do
            {
              v367 = &v364[2 * v365];
              v368 = v367 + 2;
              v369 = 2 * v365;
              v365 = (2 * v365) | 1;
              v370 = v369 + 2;
              if (v369 + 2 >= v8)
              {
                goto LABEL_648;
              }

              v371 = v367[2];
              v372 = v367[3];
              if (v372)
              {
                atomic_fetch_add_explicit(&v372->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v373 = v8;
              v374 = v367[4];
              v375 = v367[5];
              v376 = v367 + 4;
              if (v375)
              {
                atomic_fetch_add_explicit(&v375->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v379 = *(v371 + 48);
              v377 = v371 + 48;
              v378 = v379;
              v380 = *(v377 + 23);
              v383 = *(v374 + 48);
              v381 = v374 + 48;
              v382 = v383;
              v384 = *(v381 + 23);
              if (v384 >= 0)
              {
                v385 = *(v381 + 23);
              }

              else
              {
                v385 = *(v381 + 8);
              }

              if (v384 >= 0)
              {
                v386 = v381;
              }

              else
              {
                v386 = v382;
              }

              if (v380 >= 0)
              {
                v387 = *(v377 + 23);
              }

              else
              {
                v387 = *(v377 + 8);
              }

              if (v380 >= 0)
              {
                v388 = v377;
              }

              else
              {
                v388 = v378;
              }

              if (v387 >= v385)
              {
                v389 = v385;
              }

              else
              {
                v389 = v387;
              }

              v390 = memcmp(v386, v388, v389);
              if (v390)
              {
                v391 = v390 < 0;
              }

              else
              {
                v391 = v385 < v387;
              }

              if (v375)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v375);
              }

              v8 = v373;
              if (v372)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v372);
                v366 = v494;
                if (!v391)
                {
                  goto LABEL_648;
                }

LABEL_647:
                v368 = v376;
                v365 = v370;
                goto LABEL_648;
              }

              v366 = v494;
              if (v391)
              {
                goto LABEL_647;
              }

LABEL_648:
              v392 = *v368;
              *v368 = 0;
              v368[1] = 0;
              v393 = v364[1];
              *v364 = v392;
              if (v393)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v393);
              }

              v364 = v368;
            }

            while (v365 <= v366);
            v394 = a2 - 2;
            a2 -= 2;
            if (v368 == v488 - 2)
            {
              v441 = v368[1];
              *v368 = v485;
              v368[1] = v491;
              goto LABEL_720;
            }

            v395 = *(v488 - 1);
            *v394 = 0;
            v394[1] = 0;
            v396 = v368[1];
            *v368 = v395;
            v363 = v495;
            if (v396)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v396);
            }

            v397 = *(v488 - 1);
            *(v488 - 2) = v485;
            *(v488 - 1) = v491;
            if (v397)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v397);
            }

            v398 = ((v368 + 2) - v495) >> 4;
            v399 = v398 < 2;
            v400 = v398 - 2;
            if (!v399)
            {
              v401 = v400 >> 1;
              v402 = &v495[2 * (v400 >> 1)];
              v403 = *v402;
              v404 = v402[1];
              if (v404)
              {
                atomic_fetch_add_explicit(&v404->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v405 = *v368;
              v406 = v368[1];
              if (v406)
              {
                atomic_fetch_add_explicit(&v406->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v409 = *(v403 + 48);
              v407 = v403 + 48;
              v408 = v409;
              v410 = *(v407 + 23);
              v413 = *(v405 + 48);
              v411 = v405 + 48;
              v412 = v413;
              v414 = *(v411 + 23);
              if (v414 >= 0)
              {
                v415 = *(v411 + 23);
              }

              else
              {
                v415 = *(v411 + 8);
              }

              if (v414 >= 0)
              {
                v416 = v411;
              }

              else
              {
                v416 = v412;
              }

              if (v410 >= 0)
              {
                v417 = *(v407 + 23);
              }

              else
              {
                v417 = *(v407 + 8);
              }

              if (v410 >= 0)
              {
                v418 = v407;
              }

              else
              {
                v418 = v408;
              }

              if (v417 >= v415)
              {
                v419 = v415;
              }

              else
              {
                v419 = v417;
              }

              v420 = memcmp(v416, v418, v419);
              if (v420)
              {
                v421 = v420 < 0;
              }

              else
              {
                v421 = v415 < v417;
              }

              if (v406)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v406);
              }

              if (v404)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v404);
              }

              if (v421)
              {
                v423 = *v368;
                v422 = v368[1];
                *v368 = 0;
                v368[1] = 0;
                do
                {
                  v424 = v368;
                  v368 = v402;
                  v425 = *v402;
                  *v402 = 0;
                  v402[1] = 0;
                  v426 = v424[1];
                  *v424 = v425;
                  if (v426)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v426);
                  }

                  if (!v401)
                  {
                    break;
                  }

                  v401 = (v401 - 1) >> 1;
                  v402 = &v495[2 * v401];
                  v427 = *v402;
                  v428 = v402[1];
                  if (v428)
                  {
                    atomic_fetch_add_explicit(&v428->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v422)
                  {
                    atomic_fetch_add_explicit(&v422->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v431 = *(v427 + 48);
                  v429 = v427 + 48;
                  v430 = v431;
                  v432 = *(v429 + 23);
                  v433 = *(v423 + 71);
                  if (v433 >= 0)
                  {
                    v434 = *(v423 + 71);
                  }

                  else
                  {
                    v434 = *(v423 + 56);
                  }

                  if (v433 >= 0)
                  {
                    v435 = (v423 + 48);
                  }

                  else
                  {
                    v435 = *(v423 + 48);
                  }

                  if (v432 >= 0)
                  {
                    v436 = *(v429 + 23);
                  }

                  else
                  {
                    v436 = *(v429 + 8);
                  }

                  if (v432 >= 0)
                  {
                    v437 = v429;
                  }

                  else
                  {
                    v437 = v430;
                  }

                  if (v436 >= v434)
                  {
                    v438 = v434;
                  }

                  else
                  {
                    v438 = v436;
                  }

                  v439 = memcmp(v435, v437, v438);
                  if (v439)
                  {
                    v440 = v439 < 0;
                  }

                  else
                  {
                    v440 = v434 < v436;
                  }

                  if (v422)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v422);
                  }

                  if (v428)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v428);
                  }
                }

                while (v440);
                v441 = v368[1];
                *v368 = v423;
                v368[1] = v422;
LABEL_720:
                v363 = v495;
                if (v441)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v441);
                }
              }
            }

            v399 = v8-- <= 2;
            if (v399)
            {
              return;
            }
          }
        }
      }

      if (!v303)
      {
        goto LABEL_524;
      }

LABEL_523:
      v282 += 2;
      v281 = v283;
      goto LABEL_524;
    }

    v9 = &j[2 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(&v7[2 * (v8 >> 1)], v7, v486);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(v7, &v7[2 * (v8 >> 1)], v486);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(v7 + 2, v9 - 2, a2 - 4);
      v10 = &v7[2 * (v8 >> 1) + 2];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(v495 + 4, v10, a2 - 6);
      v7 = v495;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(v9 - 2, v9, v10);
      v11 = *v495;
      *v495 = *v9;
      *v9 = v11;
    }

    --a3;
    if (a4)
    {
      goto LABEL_41;
    }

    v12 = *(v7 - 2);
    v13 = *(v7 - 1);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *v7;
    v15 = v7[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v12 + 48);
    v16 = v12 + 48;
    v17 = v18;
    v19 = *(v16 + 23);
    v22 = *(v14 + 48);
    v20 = v14 + 48;
    v21 = v22;
    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    if (v23 >= 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = v21;
    }

    if (v19 >= 0)
    {
      v26 = *(v16 + 23);
    }

    else
    {
      v26 = *(v16 + 8);
    }

    if (v19 >= 0)
    {
      v27 = v16;
    }

    else
    {
      v27 = v17;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    if (v29)
    {
      v30 = v29 >= 0;
    }

    else
    {
      v30 = v24 >= v26;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (v30)
      {
        goto LABEL_202;
      }

LABEL_41:
      v31 = 0;
      v32 = *v7;
      v33 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      do
      {
        v34 = v7[v31 + 2];
        v35 = v7[v31 + 3];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(v34 + 48);
        v36 = v34 + 48;
        v37 = v38;
        v39 = *(v36 + 23);
        v40 = *(v32 + 71);
        if (v40 >= 0)
        {
          v41 = *(v32 + 71);
        }

        else
        {
          v41 = *(v32 + 56);
        }

        if (v40 >= 0)
        {
          v42 = (v32 + 48);
        }

        else
        {
          v42 = *(v32 + 48);
        }

        if (v39 >= 0)
        {
          v43 = *(v36 + 23);
        }

        else
        {
          v43 = *(v36 + 8);
        }

        if (v39 >= 0)
        {
          v44 = v36;
        }

        else
        {
          v44 = v37;
        }

        if (v43 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v43;
        }

        v46 = memcmp(v42, v44, v45);
        if (v46)
        {
          v47 = v46 < 0;
        }

        else
        {
          v47 = v41 < v43;
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        v31 += 2;
      }

      while (v47);
      v48 = &v7[v31];
      i = a2;
      if (v31 == 2)
      {
        i = a2;
        if (v48 < a2)
        {
          for (i = a2 - 2; ; i -= 2)
          {
            v64 = *i;
            v65 = i[1];
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v68 = *(v64 + 48);
            v66 = v64 + 48;
            v67 = v68;
            v69 = *(v66 + 23);
            v70 = *(v32 + 71);
            if (v70 >= 0)
            {
              v71 = *(v32 + 71);
            }

            else
            {
              v71 = *(v32 + 56);
            }

            if (v70 >= 0)
            {
              v72 = (v32 + 48);
            }

            else
            {
              v72 = *(v32 + 48);
            }

            if (v69 >= 0)
            {
              v73 = *(v66 + 23);
            }

            else
            {
              v73 = *(v66 + 8);
            }

            if (v69 >= 0)
            {
              v74 = v66;
            }

            else
            {
              v74 = v67;
            }

            if (v73 >= v71)
            {
              v75 = v71;
            }

            else
            {
              v75 = v73;
            }

            v76 = memcmp(v72, v74, v75);
            if (v76)
            {
              v77 = v76 >= 0;
            }

            else
            {
              v77 = v71 >= v73;
            }

            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
              if (v48 >= i || !v77)
              {
                break;
              }
            }

            else
            {
              v79 = !v77;
              if (v48 >= i)
              {
                v79 = 1;
              }

              if (v79)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        do
        {
          v50 = *(i - 2);
          v51 = *(i - 1);
          i -= 2;
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v54 = *(v50 + 48);
          v52 = v50 + 48;
          v53 = v54;
          v55 = *(v52 + 23);
          v56 = *(v32 + 71);
          if (v56 >= 0)
          {
            v57 = *(v32 + 71);
          }

          else
          {
            v57 = *(v32 + 56);
          }

          if (v56 >= 0)
          {
            v58 = (v32 + 48);
          }

          else
          {
            v58 = *(v32 + 48);
          }

          if (v55 >= 0)
          {
            v59 = *(v52 + 23);
          }

          else
          {
            v59 = *(v52 + 8);
          }

          if (v55 >= 0)
          {
            v60 = v52;
          }

          else
          {
            v60 = v53;
          }

          if (v59 >= v57)
          {
            v61 = v57;
          }

          else
          {
            v61 = v59;
          }

          v62 = memcmp(v58, v60, v61);
          if (v62)
          {
            v63 = v62 < 0;
          }

          else
          {
            v63 = v57 < v59;
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }
        }

        while (!v63);
      }

      v489 = v48;
      j = v48;
      if (v48 < i)
      {
        v80 = i;
        do
        {
          v81 = *j;
          *j = *v80;
          *v80 = v81;
          v82 = j[1];
          j[1] = v80[1];
          v80[1] = v82;
          do
          {
            v83 = j[2];
            v84 = j[3];
            j += 2;
            if (v84)
            {
              atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v87 = *(v83 + 48);
            v85 = v83 + 48;
            v86 = v87;
            v88 = *(v85 + 23);
            v89 = *(v32 + 71);
            if (v89 >= 0)
            {
              v90 = *(v32 + 71);
            }

            else
            {
              v90 = *(v32 + 56);
            }

            if (v89 >= 0)
            {
              v91 = (v32 + 48);
            }

            else
            {
              v91 = *(v32 + 48);
            }

            if (v88 >= 0)
            {
              v92 = *(v85 + 23);
            }

            else
            {
              v92 = *(v85 + 8);
            }

            if (v88 >= 0)
            {
              v93 = v85;
            }

            else
            {
              v93 = v86;
            }

            if (v92 >= v90)
            {
              v94 = v90;
            }

            else
            {
              v94 = v92;
            }

            v95 = memcmp(v91, v93, v94);
            if (v95)
            {
              v96 = v95 < 0;
            }

            else
            {
              v96 = v90 < v92;
            }

            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }
          }

          while (v96);
          do
          {
            v97 = *(v80 - 2);
            v98 = *(v80 - 1);
            v80 -= 2;
            if (v98)
            {
              atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v101 = *(v97 + 48);
            v99 = v97 + 48;
            v100 = v101;
            v102 = *(v99 + 23);
            v103 = *(v32 + 71);
            if (v103 >= 0)
            {
              v104 = *(v32 + 71);
            }

            else
            {
              v104 = *(v32 + 56);
            }

            if (v103 >= 0)
            {
              v105 = (v32 + 48);
            }

            else
            {
              v105 = *(v32 + 48);
            }

            if (v102 >= 0)
            {
              v106 = *(v99 + 23);
            }

            else
            {
              v106 = *(v99 + 8);
            }

            if (v102 >= 0)
            {
              v107 = v99;
            }

            else
            {
              v107 = v100;
            }

            if (v106 >= v104)
            {
              v108 = v104;
            }

            else
            {
              v108 = v106;
            }

            v109 = memcmp(v105, v107, v108);
            if (v109)
            {
              v110 = v109 < 0;
            }

            else
            {
              v110 = v104 < v106;
            }

            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            if (v98)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v98);
            }
          }

          while (!v110);
        }

        while (j < v80);
      }

      v111 = j - 2;
      if (j - 2 != v495)
      {
        v112 = *v111;
        *v111 = 0;
        *(j - 1) = 0;
        v113 = v495[1];
        *v495 = v112;
        if (v113)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v113);
        }
      }

      v114 = *(j - 1);
      *(j - 2) = v32;
      *(j - 1) = v33;
      v6 = a2;
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      if (v489 < i)
      {
LABEL_200:
        std::__introsort<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,false>(v495, j - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v115 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *>(v495, j - 2);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *>(j, a2))
        {
          a2 = j - 2;
          j = v495;
          if (v115)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v115)
        {
          goto LABEL_200;
        }
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_41;
      }

LABEL_202:
      v116 = v7;
      v117 = *v7;
      v118 = v116[1];
      *v116 = 0;
      v116[1] = 0;
      if (v118)
      {
        atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v119 = *(a2 - 2);
      v120 = *(a2 - 1);
      if (v120)
      {
        atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v121 = *(v117 + 71);
      v124 = *(v119 + 48);
      v122 = v119 + 48;
      v123 = v124;
      v125 = *(v122 + 23);
      if (v125 >= 0)
      {
        v126 = *(v122 + 23);
      }

      else
      {
        v126 = *(v122 + 8);
      }

      if (v125 >= 0)
      {
        v127 = v122;
      }

      else
      {
        v127 = v123;
      }

      if (v121 >= 0)
      {
        v128 = *(v117 + 71);
      }

      else
      {
        v128 = *(v117 + 56);
      }

      if (v121 >= 0)
      {
        v129 = (v117 + 48);
      }

      else
      {
        v129 = *(v117 + 48);
      }

      if (v128 >= v126)
      {
        v130 = v126;
      }

      else
      {
        v130 = v128;
      }

      v131 = memcmp(v127, v129, v130);
      if (v131)
      {
        v132 = v131 < 0;
      }

      else
      {
        v132 = v126 < v128;
      }

      if (v120)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v120);
      }

      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v118);
      }

      if (v132)
      {
        j = v495;
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v133 = j[2];
          v134 = j[3];
          if (v134)
          {
            atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v135 = *(v117 + 71);
          v138 = *(v133 + 48);
          v136 = v133 + 48;
          v137 = v138;
          v139 = *(v136 + 23);
          if (v139 >= 0)
          {
            v140 = *(v136 + 23);
          }

          else
          {
            v140 = *(v136 + 8);
          }

          if (v139 >= 0)
          {
            v141 = v136;
          }

          else
          {
            v141 = v137;
          }

          if (v135 >= 0)
          {
            v142 = *(v117 + 71);
          }

          else
          {
            v142 = *(v117 + 56);
          }

          if (v135 >= 0)
          {
            v143 = (v117 + 48);
          }

          else
          {
            v143 = *(v117 + 48);
          }

          if (v142 >= v140)
          {
            v144 = v140;
          }

          else
          {
            v144 = v142;
          }

          v145 = memcmp(v141, v143, v144);
          if (v145)
          {
            v146 = v145 < 0;
          }

          else
          {
            v146 = v140 < v142;
          }

          if (v134)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v134);
          }

          if (v118)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v118);
          }

          j += 2;
        }

        while (!v146);
      }

      else
      {
        for (j = v495 + 2; j < a2; j += 2)
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v196 = *j;
          v197 = j[1];
          if (v197)
          {
            atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v198 = *(v117 + 71);
          v201 = *(v196 + 48);
          v199 = v196 + 48;
          v200 = v201;
          v202 = *(v199 + 23);
          if (v202 >= 0)
          {
            v203 = *(v199 + 23);
          }

          else
          {
            v203 = *(v199 + 8);
          }

          if (v202 >= 0)
          {
            v204 = v199;
          }

          else
          {
            v204 = v200;
          }

          if (v198 >= 0)
          {
            v205 = *(v117 + 71);
          }

          else
          {
            v205 = *(v117 + 56);
          }

          if (v198 >= 0)
          {
            v206 = (v117 + 48);
          }

          else
          {
            v206 = *(v117 + 48);
          }

          if (v205 >= v203)
          {
            v207 = v203;
          }

          else
          {
            v207 = v205;
          }

          v208 = memcmp(v204, v206, v207);
          if (v208)
          {
            v209 = v208 >= 0;
          }

          else
          {
            v209 = v203 >= v205;
          }

          if (v197)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v197);
          }

          if (v118)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v118);
            if (!v209)
            {
              break;
            }
          }

          else if (!v209)
          {
            break;
          }
        }
      }

      v147 = a2;
      if (j < a2)
      {
        v147 = a2;
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v148 = *(v147 - 2);
          v149 = *(v147 - 1);
          if (v149)
          {
            atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v150 = *(v117 + 71);
          v153 = *(v148 + 48);
          v151 = v148 + 48;
          v152 = v153;
          v154 = *(v151 + 23);
          if (v154 >= 0)
          {
            v155 = *(v151 + 23);
          }

          else
          {
            v155 = *(v151 + 8);
          }

          if (v154 >= 0)
          {
            v156 = v151;
          }

          else
          {
            v156 = v152;
          }

          if (v150 >= 0)
          {
            v157 = *(v117 + 71);
          }

          else
          {
            v157 = *(v117 + 56);
          }

          if (v150 >= 0)
          {
            v158 = (v117 + 48);
          }

          else
          {
            v158 = *(v117 + 48);
          }

          if (v157 >= v155)
          {
            v159 = v155;
          }

          else
          {
            v159 = v157;
          }

          v160 = memcmp(v156, v158, v159);
          if (v160)
          {
            v161 = v160 < 0;
          }

          else
          {
            v161 = v155 < v157;
          }

          if (v149)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v149);
          }

          if (v118)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v118);
          }

          v147 -= 2;
        }

        while (v161);
      }

      while (j < v147)
      {
        v162 = *j;
        *j = *v147;
        *v147 = v162;
        v163 = j[1];
        j[1] = v147[1];
        v147[1] = v163;
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v164 = j[2];
          v165 = j[3];
          if (v165)
          {
            atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v166 = *(v117 + 71);
          v169 = *(v164 + 48);
          v167 = v164 + 48;
          v168 = v169;
          v170 = *(v167 + 23);
          if (v170 >= 0)
          {
            v171 = *(v167 + 23);
          }

          else
          {
            v171 = *(v167 + 8);
          }

          if (v170 >= 0)
          {
            v172 = v167;
          }

          else
          {
            v172 = v168;
          }

          if (v166 >= 0)
          {
            v173 = *(v117 + 71);
          }

          else
          {
            v173 = *(v117 + 56);
          }

          if (v166 >= 0)
          {
            v174 = (v117 + 48);
          }

          else
          {
            v174 = *(v117 + 48);
          }

          if (v173 >= v171)
          {
            v175 = v171;
          }

          else
          {
            v175 = v173;
          }

          v176 = memcmp(v172, v174, v175);
          if (v176)
          {
            v177 = v176 < 0;
          }

          else
          {
            v177 = v171 < v173;
          }

          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          if (v118)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v118);
          }

          j += 2;
        }

        while (!v177);
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v178 = *(v147 - 2);
          v179 = *(v147 - 1);
          if (v179)
          {
            atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v180 = *(v117 + 71);
          v183 = *(v178 + 48);
          v181 = v178 + 48;
          v182 = v183;
          v184 = *(v181 + 23);
          if (v184 >= 0)
          {
            v185 = *(v181 + 23);
          }

          else
          {
            v185 = *(v181 + 8);
          }

          if (v184 >= 0)
          {
            v186 = v181;
          }

          else
          {
            v186 = v182;
          }

          if (v180 >= 0)
          {
            v187 = *(v117 + 71);
          }

          else
          {
            v187 = *(v117 + 56);
          }

          if (v180 >= 0)
          {
            v188 = (v117 + 48);
          }

          else
          {
            v188 = *(v117 + 48);
          }

          if (v187 >= v185)
          {
            v189 = v185;
          }

          else
          {
            v189 = v187;
          }

          v190 = memcmp(v186, v188, v189);
          if (v190)
          {
            v191 = v190 < 0;
          }

          else
          {
            v191 = v185 < v187;
          }

          if (v179)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v179);
          }

          if (v118)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v118);
          }

          v147 -= 2;
        }

        while (v191);
      }

      v192 = j - 2;
      v6 = a2;
      if (j - 2 != v495)
      {
        v193 = *v192;
        *v192 = 0;
        *(j - 1) = 0;
        v194 = v495[1];
        *v495 = v193;
        if (v194)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v194);
        }
      }

      a4 = 0;
      v195 = *(j - 1);
      *(j - 2) = v117;
      *(j - 1) = v118;
      if (v195)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v195);
        a4 = 0;
      }
    }
  }

  v231 = j + 2;
  v233 = j == v6 || v231 == v6;
  if ((a4 & 1) == 0)
  {
    if (!v233)
    {
      v442 = (j + 3);
      do
      {
        v443 = v7;
        v7 = v231;
        v444 = v443[2];
        v445 = v443[3];
        if (v445)
        {
          atomic_fetch_add_explicit(&v445->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v446 = *v443;
        v447 = v443[1];
        if (v447)
        {
          atomic_fetch_add_explicit(&v447->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v450 = *(v444 + 48);
        v448 = v444 + 48;
        v449 = v450;
        v451 = *(v448 + 23);
        v454 = *(v446 + 48);
        v452 = v446 + 48;
        v453 = v454;
        v455 = *(v452 + 23);
        if (v455 >= 0)
        {
          v456 = *(v452 + 23);
        }

        else
        {
          v456 = *(v452 + 8);
        }

        if (v455 >= 0)
        {
          v457 = v452;
        }

        else
        {
          v457 = v453;
        }

        if (v451 >= 0)
        {
          v458 = *(v448 + 23);
        }

        else
        {
          v458 = *(v448 + 8);
        }

        if (v451 >= 0)
        {
          v459 = v448;
        }

        else
        {
          v459 = v449;
        }

        if (v458 >= v456)
        {
          v460 = v456;
        }

        else
        {
          v460 = v458;
        }

        v461 = memcmp(v457, v459, v460);
        if (v461)
        {
          v462 = v461 < 0;
        }

        else
        {
          v462 = v456 < v458;
        }

        if (v447)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v447);
        }

        if (v445)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v445);
        }

        if (v462)
        {
          v463 = *v7;
          v464 = v443[3];
          *v7 = 0;
          v7[1] = 0;
          v465 = v442;
          do
          {
            v466 = *(v465 - 3);
            *(v465 - 3) = 0;
            *(v465 - 2) = 0;
            v467 = *v465;
            *(v465 - 1) = v466;
            if (v467)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v467);
            }

            if (v464)
            {
              atomic_fetch_add_explicit(&v464->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v468 = *(v465 - 5);
            v469 = *(v465 - 4);
            if (v469)
            {
              atomic_fetch_add_explicit(&v469->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v470 = *(v463 + 71);
            v473 = *(v468 + 48);
            v471 = v468 + 48;
            v472 = v473;
            v474 = *(v471 + 23);
            if (v474 >= 0)
            {
              v475 = *(v471 + 23);
            }

            else
            {
              v475 = *(v471 + 8);
            }

            if (v474 >= 0)
            {
              v476 = v471;
            }

            else
            {
              v476 = v472;
            }

            if (v470 >= 0)
            {
              v477 = *(v463 + 71);
            }

            else
            {
              v477 = *(v463 + 56);
            }

            if (v470 >= 0)
            {
              v478 = (v463 + 48);
            }

            else
            {
              v478 = *(v463 + 48);
            }

            if (v477 >= v475)
            {
              v479 = v475;
            }

            else
            {
              v479 = v477;
            }

            v480 = memcmp(v476, v478, v479);
            if (v480)
            {
              v481 = v480 < 0;
            }

            else
            {
              v481 = v475 < v477;
            }

            if (v469)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v469);
            }

            if (v464)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v464);
            }

            v465 -= 2;
          }

          while (v481);
          v482 = *v465;
          *(v465 - 1) = v463;
          *v465 = v464;
          if (v482)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v482);
          }
        }

        v231 = v7 + 2;
        v442 += 2;
      }

      while (v7 + 2 != a2);
    }

    return;
  }

  if (v233)
  {
    return;
  }

  v234 = 0;
  v235 = j;
  while (2)
  {
    v236 = v235;
    v235 = v231;
    v237 = v236[2];
    v238 = v236[3];
    if (v238)
    {
      atomic_fetch_add_explicit(&v238->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v239 = *v236;
    v240 = v236[1];
    if (v240)
    {
      atomic_fetch_add_explicit(&v240->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v243 = *(v237 + 48);
    v241 = v237 + 48;
    v242 = v243;
    v244 = *(v241 + 23);
    v247 = *(v239 + 48);
    v245 = v239 + 48;
    v246 = v247;
    v248 = *(v245 + 23);
    if (v248 >= 0)
    {
      v249 = *(v245 + 23);
    }

    else
    {
      v249 = *(v245 + 8);
    }

    if (v248 >= 0)
    {
      v250 = v245;
    }

    else
    {
      v250 = v246;
    }

    if (v244 >= 0)
    {
      v251 = *(v241 + 23);
    }

    else
    {
      v251 = *(v241 + 8);
    }

    if (v244 >= 0)
    {
      v252 = v241;
    }

    else
    {
      v252 = v242;
    }

    if (v251 >= v249)
    {
      v253 = v249;
    }

    else
    {
      v253 = v251;
    }

    v254 = memcmp(v250, v252, v253);
    if (v254)
    {
      v255 = v254 < 0;
    }

    else
    {
      v255 = v249 < v251;
    }

    if (v240)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v240);
    }

    if (v238)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v238);
    }

    if (!v255)
    {
      goto LABEL_491;
    }

    v256 = *v235;
    v257 = v236[3];
    *v235 = 0;
    v235[1] = 0;
    v258 = v234;
    while (2)
    {
      v259 = v7 + v258;
      v260 = *(v7 + v258);
      *v259 = 0;
      *(v259 + 1) = 0;
      v261 = *(v7 + v258 + 24);
      *(v259 + 1) = v260;
      if (v261)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v261);
      }

      if (!v258)
      {
        v276 = v7;
        goto LABEL_489;
      }

      if (v257)
      {
        atomic_fetch_add_explicit(&v257->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v262 = *(v7 + v258 - 16);
      v263 = *(v7 + v258 - 8);
      if (v263)
      {
        atomic_fetch_add_explicit(&v263->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v264 = *(v256 + 71);
      v267 = *(v262 + 48);
      v265 = v262 + 48;
      v266 = v267;
      v268 = *(v265 + 23);
      if (v268 >= 0)
      {
        v269 = *(v265 + 23);
      }

      else
      {
        v269 = *(v265 + 8);
      }

      if (v268 >= 0)
      {
        v270 = v265;
      }

      else
      {
        v270 = v266;
      }

      if (v264 >= 0)
      {
        v271 = *(v256 + 71);
      }

      else
      {
        v271 = *(v256 + 56);
      }

      if (v264 >= 0)
      {
        v272 = (v256 + 48);
      }

      else
      {
        v272 = *(v256 + 48);
      }

      if (v271 >= v269)
      {
        v273 = v269;
      }

      else
      {
        v273 = v271;
      }

      v274 = memcmp(v270, v272, v273);
      if (v274)
      {
        v275 = v274 < 0;
      }

      else
      {
        v275 = v269 < v271;
      }

      if (v263)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v263);
      }

      if (v257)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v257);
        v7 = v495;
        if (!v275)
        {
          break;
        }

        goto LABEL_486;
      }

      v7 = v495;
      if (v275)
      {
LABEL_486:
        v258 -= 16;
        continue;
      }

      break;
    }

    v276 = (v7 + v258);
LABEL_489:
    v277 = v276[1];
    *v276 = v256;
    v276[1] = v257;
    if (v277)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v277);
    }

LABEL_491:
    v231 = v235 + 2;
    v234 += 16;
    if (v235 + 2 != a2)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(void *a1, void *a2, void *a3)
{
  v6 = *a2;
  v8 = (a2 + 1);
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a1;
  v11 = (a1 + 1);
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v6 + 48);
  v12 = v6 + 48;
  v13 = v14;
  v15 = *(v12 + 23);
  v18 = *(v9 + 48);
  v16 = v9 + 48;
  v17 = v18;
  v19 = *(v16 + 23);
  if (v19 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  if (v19 >= 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  if (v15 >= 0)
  {
    v22 = *(v12 + 23);
  }

  else
  {
    v22 = *(v12 + 8);
  }

  if (v15 >= 0)
  {
    v23 = v12;
  }

  else
  {
    v23 = v13;
  }

  if (v22 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v21, v23, v24);
  if (v25)
  {
    v26 = v25 < 0;
  }

  else
  {
    v26 = v20 < v22;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v27 = *a3;
  v28 = a3[1];
  if (v26)
  {
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *a2;
    v30 = a2[1];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *(v27 + 48);
    v31 = v27 + 48;
    v32 = v33;
    v34 = *(v31 + 23);
    v37 = *(v29 + 48);
    v35 = v29 + 48;
    v36 = v37;
    v38 = *(v35 + 23);
    if (v38 >= 0)
    {
      v39 = *(v35 + 23);
    }

    else
    {
      v39 = *(v35 + 8);
    }

    if (v38 >= 0)
    {
      v40 = v35;
    }

    else
    {
      v40 = v36;
    }

    if (v34 >= 0)
    {
      v41 = *(v31 + 23);
    }

    else
    {
      v41 = *(v31 + 8);
    }

    if (v34 >= 0)
    {
      v42 = v31;
    }

    else
    {
      v42 = v32;
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    v44 = memcmp(v40, v42, v43);
    if (v44)
    {
      v45 = v44 < 0;
    }

    else
    {
      v45 = v39 < v41;
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v46 = *a1;
    if (v45)
    {
      *a1 = *a3;
      *a3 = v46;
LABEL_139:
      v8 = (a3 + 1);
      goto LABEL_140;
    }

    *a1 = *a2;
    *a2 = v46;
    v86 = a1[1];
    a1[1] = a2[1];
    a2[1] = v86;
    v87 = *a3;
    v88 = a3[1];
    if (v88)
    {
      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
      v86 = *v8;
    }

    v89 = *a2;
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v92 = *(v87 + 48);
    v90 = v87 + 48;
    v91 = v92;
    v93 = *(v90 + 23);
    v96 = *(v89 + 48);
    v94 = v89 + 48;
    v95 = v96;
    v97 = *(v94 + 23);
    if (v97 >= 0)
    {
      v98 = *(v94 + 23);
    }

    else
    {
      v98 = *(v94 + 8);
    }

    if (v97 >= 0)
    {
      v99 = v94;
    }

    else
    {
      v99 = v95;
    }

    if (v93 >= 0)
    {
      v100 = *(v90 + 23);
    }

    else
    {
      v100 = *(v90 + 8);
    }

    if (v93 >= 0)
    {
      v101 = v90;
    }

    else
    {
      v101 = v91;
    }

    if (v100 >= v98)
    {
      v102 = v98;
    }

    else
    {
      v102 = v100;
    }

    v103 = memcmp(v99, v101, v102);
    if (v103)
    {
      v104 = v103 < 0;
    }

    else
    {
      v104 = v98 < v100;
    }

    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (v104)
    {
      v105 = *a2;
      *a2 = *a3;
      *a3 = v105;
      v11 = v8;
      goto LABEL_139;
    }
  }

  else
  {
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = *a2;
    v48 = a2[1];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = *(v27 + 48);
    v49 = v27 + 48;
    v50 = v51;
    v52 = *(v49 + 23);
    v55 = *(v47 + 48);
    v53 = v47 + 48;
    v54 = v55;
    v56 = *(v53 + 23);
    if (v56 >= 0)
    {
      v57 = *(v53 + 23);
    }

    else
    {
      v57 = *(v53 + 8);
    }

    if (v56 >= 0)
    {
      v58 = v53;
    }

    else
    {
      v58 = v54;
    }

    if (v52 >= 0)
    {
      v59 = *(v49 + 23);
    }

    else
    {
      v59 = *(v49 + 8);
    }

    if (v52 >= 0)
    {
      v60 = v49;
    }

    else
    {
      v60 = v50;
    }

    if (v59 >= v57)
    {
      v61 = v57;
    }

    else
    {
      v61 = v59;
    }

    v62 = memcmp(v58, v60, v61);
    if (v62)
    {
      v63 = v62 < 0;
    }

    else
    {
      v63 = v57 < v59;
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v63)
    {
      v64 = *a2;
      *a2 = *a3;
      *a3 = v64;
      v65 = a2[1];
      a2[1] = a3[1];
      a3[1] = v65;
      v66 = *a2;
      v67 = a2[1];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68 = *a1;
      v69 = a1[1];
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v72 = *(v66 + 48);
      v70 = v66 + 48;
      v71 = v72;
      v73 = *(v70 + 23);
      v76 = *(v68 + 48);
      v74 = v68 + 48;
      v75 = v76;
      v77 = *(v74 + 23);
      if (v77 >= 0)
      {
        v78 = *(v74 + 23);
      }

      else
      {
        v78 = *(v74 + 8);
      }

      if (v77 >= 0)
      {
        v79 = v74;
      }

      else
      {
        v79 = v75;
      }

      if (v73 >= 0)
      {
        v80 = *(v70 + 23);
      }

      else
      {
        v80 = *(v70 + 8);
      }

      if (v73 >= 0)
      {
        v81 = v70;
      }

      else
      {
        v81 = v71;
      }

      if (v80 >= v78)
      {
        v82 = v78;
      }

      else
      {
        v82 = v80;
      }

      v83 = memcmp(v79, v81, v82);
      if (v83)
      {
        v84 = v83 < 0;
      }

      else
      {
        v84 = v78 < v80;
      }

      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      if (v84)
      {
        v85 = *a1;
        *a1 = *a2;
        *a2 = v85;
LABEL_140:
        v106 = *v11;
        *v11 = *v8;
        *v8 = v106;
      }
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(a1, a2, a3);
  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v8 + 48);
  v12 = v8 + 48;
  v13 = v14;
  v15 = *(v12 + 23);
  v18 = *(v10 + 48);
  v16 = v10 + 48;
  v17 = v18;
  v19 = *(v16 + 23);
  if (v19 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  if (v19 >= 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  if (v15 >= 0)
  {
    v22 = *(v12 + 23);
  }

  else
  {
    v22 = *(v12 + 8);
  }

  if (v15 >= 0)
  {
    v23 = v12;
  }

  else
  {
    v23 = v13;
  }

  if (v22 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v21, v23, v24);
  if (v25)
  {
    v26 = v25 < 0;
  }

  else
  {
    v26 = v20 < v22;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v26)
  {
    v27 = *a3;
    *a3 = *a4;
    *a4 = v27;
    v28 = a3[1];
    a3[1] = a4[1];
    a4[1] = v28;
    v29 = *a3;
    v30 = a3[1];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = *a2;
    v32 = a2[1];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = *(v29 + 48);
    v33 = v29 + 48;
    v34 = v35;
    v36 = *(v33 + 23);
    v39 = *(v31 + 48);
    v37 = v31 + 48;
    v38 = v39;
    v40 = *(v37 + 23);
    if (v40 >= 0)
    {
      v41 = *(v37 + 23);
    }

    else
    {
      v41 = *(v37 + 8);
    }

    if (v40 >= 0)
    {
      v42 = v37;
    }

    else
    {
      v42 = v38;
    }

    if (v36 >= 0)
    {
      v43 = *(v33 + 23);
    }

    else
    {
      v43 = *(v33 + 8);
    }

    if (v36 >= 0)
    {
      v44 = v33;
    }

    else
    {
      v44 = v34;
    }

    if (v43 >= v41)
    {
      v45 = v41;
    }

    else
    {
      v45 = v43;
    }

    v46 = memcmp(v42, v44, v45);
    if (v46)
    {
      v47 = v46 < 0;
    }

    else
    {
      v47 = v41 < v43;
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v47)
    {
      v48 = *a2;
      *a2 = *a3;
      *a3 = v48;
      v49 = a2[1];
      a2[1] = a3[1];
      a3[1] = v49;
      v50 = *a2;
      v51 = a2[1];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *a1;
      v53 = a1[1];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v56 = *(v50 + 48);
      v54 = v50 + 48;
      v55 = v56;
      v57 = *(v54 + 23);
      v60 = *(v52 + 48);
      v58 = v52 + 48;
      v59 = v60;
      v61 = *(v58 + 23);
      if (v61 >= 0)
      {
        v62 = *(v58 + 23);
      }

      else
      {
        v62 = *(v58 + 8);
      }

      if (v61 >= 0)
      {
        v63 = v58;
      }

      else
      {
        v63 = v59;
      }

      if (v57 >= 0)
      {
        v64 = *(v54 + 23);
      }

      else
      {
        v64 = *(v54 + 8);
      }

      if (v57 >= 0)
      {
        v65 = v54;
      }

      else
      {
        v65 = v55;
      }

      if (v64 >= v62)
      {
        v66 = v62;
      }

      else
      {
        v66 = v64;
      }

      v67 = memcmp(v63, v65, v66);
      if (v67)
      {
        v68 = v67 < 0;
      }

      else
      {
        v68 = v62 < v64;
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v68)
      {
        v69 = *a1;
        *a1 = *a2;
        *a2 = v69;
        v70 = a1[1];
        a1[1] = a2[1];
        a2[1] = v70;
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = a5[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v10 + 48);
  v14 = v10 + 48;
  v15 = v16;
  v17 = *(v14 + 23);
  v20 = *(v12 + 48);
  v18 = v12 + 48;
  v19 = v20;
  v21 = *(v18 + 23);
  if (v21 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = *(v18 + 8);
  }

  if (v21 >= 0)
  {
    v23 = v18;
  }

  else
  {
    v23 = v19;
  }

  if (v17 >= 0)
  {
    v24 = *(v14 + 23);
  }

  else
  {
    v24 = *(v14 + 8);
  }

  if (v17 >= 0)
  {
    v25 = v14;
  }

  else
  {
    v25 = v15;
  }

  if (v24 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  v27 = memcmp(v23, v25, v26);
  if (v27)
  {
    v28 = v27 < 0;
  }

  else
  {
    v28 = v22 < v24;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v28)
  {
    v29 = *a4;
    *a4 = *a5;
    *a5 = v29;
    v30 = a4[1];
    a4[1] = a5[1];
    a5[1] = v30;
    v31 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *a3;
    v34 = a3[1];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = *(v31 + 48);
    v35 = v31 + 48;
    v36 = v37;
    v38 = *(v35 + 23);
    v41 = *(v33 + 48);
    v39 = v33 + 48;
    v40 = v41;
    v42 = *(v39 + 23);
    if (v42 >= 0)
    {
      v43 = *(v39 + 23);
    }

    else
    {
      v43 = *(v39 + 8);
    }

    if (v42 >= 0)
    {
      v44 = v39;
    }

    else
    {
      v44 = v40;
    }

    if (v38 >= 0)
    {
      v45 = *(v35 + 23);
    }

    else
    {
      v45 = *(v35 + 8);
    }

    if (v38 >= 0)
    {
      v46 = v35;
    }

    else
    {
      v46 = v36;
    }

    if (v45 >= v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    v48 = memcmp(v44, v46, v47);
    if (v48)
    {
      v49 = v48 < 0;
    }

    else
    {
      v49 = v43 < v45;
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v49)
    {
      v50 = *a3;
      *a3 = *a4;
      *a4 = v50;
      v51 = a3[1];
      a3[1] = a4[1];
      a4[1] = v51;
      v52 = *a3;
      v53 = a3[1];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = *a2;
      v55 = a2[1];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = *(v52 + 48);
      v56 = v52 + 48;
      v57 = v58;
      v59 = *(v56 + 23);
      v62 = *(v54 + 48);
      v60 = v54 + 48;
      v61 = v62;
      v63 = *(v60 + 23);
      if (v63 >= 0)
      {
        v64 = *(v60 + 23);
      }

      else
      {
        v64 = *(v60 + 8);
      }

      if (v63 >= 0)
      {
        v65 = v60;
      }

      else
      {
        v65 = v61;
      }

      if (v59 >= 0)
      {
        v66 = *(v56 + 23);
      }

      else
      {
        v66 = *(v56 + 8);
      }

      if (v59 >= 0)
      {
        v67 = v56;
      }

      else
      {
        v67 = v57;
      }

      if (v66 >= v64)
      {
        v68 = v64;
      }

      else
      {
        v68 = v66;
      }

      v69 = memcmp(v65, v67, v68);
      if (v69)
      {
        v70 = v69 < 0;
      }

      else
      {
        v70 = v64 < v66;
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (v70)
      {
        v71 = *a2;
        *a2 = *a3;
        *a3 = v71;
        v72 = a2[1];
        a2[1] = a3[1];
        a3[1] = v72;
        v73 = *a2;
        v74 = a2[1];
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v75 = *a1;
        v76 = a1[1];
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v79 = *(v73 + 48);
        v77 = v73 + 48;
        v78 = v79;
        v80 = *(v77 + 23);
        v83 = *(v75 + 48);
        v81 = v75 + 48;
        v82 = v83;
        v84 = *(v81 + 23);
        if (v84 >= 0)
        {
          v85 = *(v81 + 23);
        }

        else
        {
          v85 = *(v81 + 8);
        }

        if (v84 >= 0)
        {
          v86 = v81;
        }

        else
        {
          v86 = v82;
        }

        if (v80 >= 0)
        {
          v87 = *(v77 + 23);
        }

        else
        {
          v87 = *(v77 + 8);
        }

        if (v80 >= 0)
        {
          v88 = v77;
        }

        else
        {
          v88 = v78;
        }

        if (v87 >= v85)
        {
          v89 = v85;
        }

        else
        {
          v89 = v87;
        }

        v90 = memcmp(v86, v88, v89);
        if (v90)
        {
          v91 = v90 < 0;
        }

        else
        {
          v91 = v85 < v87;
        }

        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        if (v91)
        {
          v92 = *a1;
          *a1 = *a2;
          *a2 = v92;
          v93 = a1[1];
          a1[1] = a2[1];
          a2[1] = v93;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 2);
      v6 = *(a2 - 1);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *a1;
      v8 = a1[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(v5 + 48);
      v9 = v5 + 48;
      v10 = v11;
      v12 = *(v9 + 23);
      v15 = *(v7 + 48);
      v13 = v7 + 48;
      v14 = v15;
      v16 = *(v13 + 23);
      if (v16 >= 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = *(v13 + 8);
      }

      if (v16 >= 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = v14;
      }

      if (v12 >= 0)
      {
        v19 = *(v9 + 23);
      }

      else
      {
        v19 = *(v9 + 8);
      }

      if (v12 >= 0)
      {
        v20 = v9;
      }

      else
      {
        v20 = v10;
      }

      if (v19 >= v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v19;
      }

      v22 = memcmp(v18, v20, v21);
      if (v22)
      {
        v23 = v22 < 0;
      }

      else
      {
        v23 = v17 < v19;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v23)
      {
        v24 = *a1;
        *a1 = *(v2 - 2);
        *(v2 - 2) = v24;
        v25 = a1[1];
        a1[1] = *(v2 - 1);
        *(v2 - 1) = v25;
      }

      return 1;
    }
  }

  v26 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RIO_MTLX::Node::getDownstreamPorts(void)::$_0 &,std::shared_ptr<RIO_MTLX::PortElement> *,0>(a1, a1 + 2, a1 + 4);
  v27 = a1 + 6;
  if (a1 + 6 == v2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  v72 = v2;
  while (2)
  {
    v30 = *v27;
    v31 = v27[1];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *v26;
    v33 = v26[1];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *(v30 + 48);
    v34 = v30 + 48;
    v35 = v36;
    v37 = *(v34 + 23);
    v40 = *(v32 + 48);
    v38 = v32 + 48;
    v39 = v40;
    v41 = *(v38 + 23);
    if (v41 >= 0)
    {
      v42 = *(v38 + 23);
    }

    else
    {
      v42 = *(v38 + 8);
    }

    if (v41 >= 0)
    {
      v43 = v38;
    }

    else
    {
      v43 = v39;
    }

    if (v37 >= 0)
    {
      v44 = *(v34 + 23);
    }

    else
    {
      v44 = *(v34 + 8);
    }

    if (v37 >= 0)
    {
      v45 = v34;
    }

    else
    {
      v45 = v35;
    }

    if (v44 >= v42)
    {
      v46 = v42;
    }

    else
    {
      v46 = v44;
    }

    v47 = memcmp(v43, v45, v46);
    if (v47)
    {
      v48 = v47 < 0;
    }

    else
    {
      v48 = v42 < v44;
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (!v48)
    {
      goto LABEL_104;
    }

    v73 = v29;
    v50 = *v27;
    v49 = v27[1];
    *v27 = 0;
    v27[1] = 0;
    for (i = v28; ; i -= 16)
    {
      v52 = a1 + i;
      v53 = *(a1 + i + 32);
      *(v52 + 4) = 0;
      *(v52 + 5) = 0;
      v54 = *(a1 + i + 56);
      *(v52 + 3) = v53;
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

      if (i == -32)
      {
        v69 = a1;
        goto LABEL_101;
      }

      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v55 = *(a1 + i + 16);
      v56 = *(a1 + i + 24);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(v50 + 71);
      v60 = *(v55 + 48);
      v58 = v55 + 48;
      v59 = v60;
      v61 = *(v58 + 23);
      if (v61 >= 0)
      {
        v62 = *(v58 + 23);
      }

      else
      {
        v62 = *(v58 + 8);
      }

      if (v61 >= 0)
      {
        v63 = v58;
      }

      else
      {
        v63 = v59;
      }

      if (v57 >= 0)
      {
        v64 = *(v50 + 71);
      }

      else
      {
        v64 = *(v50 + 56);
      }

      if (v57 >= 0)
      {
        v65 = (v50 + 48);
      }

      else
      {
        v65 = *(v50 + 48);
      }

      if (v64 >= v62)
      {
        v66 = v62;
      }

      else
      {
        v66 = v64;
      }

      v67 = memcmp(v63, v65, v66);
      if (v67)
      {
        v68 = v67 < 0;
      }

      else
      {
        v68 = v62 < v64;
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (!v49)
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      if (!v68)
      {
        goto LABEL_100;
      }

LABEL_98:
      ;
    }

    if (v68)
    {
      goto LABEL_98;
    }

LABEL_100:
    v69 = (a1 + i + 32);
LABEL_101:
    v70 = v69[1];
    *v69 = v50;
    v69[1] = v49;
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    v29 = v73 + 1;
    v2 = v72;
    if (v73 != 7)
    {
LABEL_104:
      v26 = v27;
      v28 += 16;
      v27 += 2;
      if (v27 == v2)
      {
        return 1;
      }

      continue;
    }

    return v27 + 2 == v72;
  }
}

void realityio::mtlx::UsdMtlxDiscoveryPlugin::DiscoverNodes(RIO_MTLX *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  realityio::mtlx::UsdMtlxGetDocument(__p, &v4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "mtlx");
    std::string::basic_string[abi:ne200100]<0>(&v11, "mtlx");
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7, v8);
    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  realityio::mtlx::UsdMtlxStandardFileExtensions(&v7);
  std::string::basic_string[abi:ne200100]<0>(&v4, "USDMTLX_PLUGIN_FOLLOW_SYMLINKS");
  pxrInternal__aapl__pxrReserved__::TfGetenvBool();
  pxrInternal__aapl__pxrReserved__::NdrFsHelpersDiscoverFiles();
  if (v6 < 0)
  {
    operator delete(v4);
  }

  v4 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = __p[0];
  v3 = __p[1];
  while (v2 != v3)
  {
    realityio::mtlx::UsdMtlxGetDocument((v2 + 24), &v4);
    if (v4)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7, v8);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v2 += 3;
  }

  v7 = __p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_247637110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a15, a16);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&__p);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_DiscoverNodes(RIO_MTLX *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = RIO_MTLX::EMPTY_STRING(a1);
  RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(a2, v7, &v78);
  v8 = v78;
  v67 = v79;
  if (v78 != v79)
  {
    v9 = (a4 + 8);
    v65 = (a4 + 8);
    v66 = (a3 + 24);
    do
    {
      v77 = 0;
      MEMORY[0x24C1A5E00](&v76, *v8 + 48);
      v10 = v8[1];
      v72 = *v8;
      v73 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Version = realityio::mtlx::UsdMtlxGetVersion(&v72, &v77);
      v75 = v11;
      v69 = v8;
      v12 = *v8;
      v13 = *v8 + 48;
      v14 = v9;
      v15 = *v9;
      if (!v15)
      {
        goto LABEL_44;
      }

      v16 = *(v12 + 71);
      v17 = v16 >= 0 ? *(v12 + 71) : *(v12 + 56);
      v18 = v16 >= 0 ? v13 : *(v12 + 48);
      v19 = v14;
      do
      {
        v20 = *(v15 + 55);
        if (v20 >= 0)
        {
          v21 = *(v15 + 55);
        }

        else
        {
          v21 = *(v15 + 40);
        }

        if (v20 >= 0)
        {
          v22 = (v15 + 32);
        }

        else
        {
          v22 = *(v15 + 32);
        }

        if (v17 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v17;
        }

        v24 = memcmp(v22, v18, v23);
        v25 = v21 < v17;
        if (v24)
        {
          v25 = v24 < 0;
        }

        v26 = !v25;
        if (v25)
        {
          v27 = 8;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v19 = v15;
        }

        v15 = *(v15 + v27);
      }

      while (v15);
      v14 = v65;
      if (v19 == v65)
      {
        goto LABEL_44;
      }

      v28 = *(v19 + 55);
      if (v28 >= 0)
      {
        v29 = *(v19 + 55);
      }

      else
      {
        v29 = v19[5];
      }

      if (v28 >= 0)
      {
        v30 = v19 + 4;
      }

      else
      {
        v30 = v19[4];
      }

      if (v29 >= v17)
      {
        v31 = v17;
      }

      else
      {
        v31 = v29;
      }

      v32 = memcmp(v18, v30, v31);
      v33 = v17 < v29;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (v33)
      {
LABEL_44:
        v19 = v14;
      }

      v34 = (v19 + 7);
      if (v14 == v19)
      {
        v34 = v13;
      }

      v9 = v14;
      if (*(v34 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, *v34, *(v34 + 8));
        v35 = v69;
        v12 = *v69;
      }

      else
      {
        v71 = *v34;
        v35 = v69;
      }

      NodeString = RIO_MTLX::NodeDef::getNodeString(v12);
      MEMORY[0x24C1A5E00](&v70, NodeString);
      if (!v37)
      {
      }

      if (!v38)
      {
      }

      v40 = *(a1 + 1);
      v39 = *(a1 + 2);
      if (v40 >= v39)
      {
        v42 = 0x84BDA12F684BDA13 * ((v40 - *a1) >> 3);
        v43 = v42 + 1;
        if (v42 + 1 > 0x12F684BDA12F684)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v44 = 0x84BDA12F684BDA13 * ((v39 - *a1) >> 3);
        if (2 * v44 > v43)
        {
          v43 = 2 * v44;
        }

        if (v44 >= 0x97B425ED097B42)
        {
          v45 = 0x12F684BDA12F684;
        }

        else
        {
          v45 = v43;
        }

        v84 = a1;
        if (v45)
        {
          if (v45 <= 0x12F684BDA12F684)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v80 = 0;
        v81 = 216 * v42;
        v82 = 216 * v42;
        v83 = 0;
        std::allocator<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::NdrVersion,std::string,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&,pxrInternal__aapl__pxrReserved__::TfToken&,std::string const&,std::string const&>(216 * v42, v76, &Version, &v71, &v70, v37, v38, a3, v66);
        v41 = v82 + 216;
        v82 += 216;
        v46 = *a1;
        v47 = *(a1 + 1);
        v48 = v81 + *a1 - v47;
        if (*a1 != v47)
        {
          v49 = 0;
          do
          {
            v50 = v48 + v49;
            v51 = v46 + v49;
            *v50 = *(v46 + v49);
            *v51 = 0;
            v52 = *(v46 + v49 + 8);
            *(v50 + 16) = *(v46 + v49 + 16);
            *(v50 + 8) = v52;
            v53 = *(v46 + v49 + 24);
            *(v50 + 40) = *(v46 + v49 + 40);
            *(v50 + 24) = v53;
            *(v51 + 4) = 0;
            *(v51 + 5) = 0;
            *(v51 + 3) = 0;
            *(v50 + 48) = *(v46 + v49 + 48);
            *(v51 + 6) = 0;
            *(v50 + 56) = *(v46 + v49 + 56);
            *(v51 + 7) = 0;
            *(v50 + 64) = *(v46 + v49 + 64);
            *(v51 + 8) = 0;
            v54 = *(v46 + v49 + 72);
            *(v50 + 88) = *(v46 + v49 + 88);
            *(v50 + 72) = v54;
            *(v51 + 10) = 0;
            *(v51 + 11) = 0;
            *(v51 + 9) = 0;
            v55 = *(v46 + v49 + 96);
            *(v50 + 112) = *(v46 + v49 + 112);
            *(v50 + 96) = v55;
            *(v51 + 13) = 0;
            *(v51 + 14) = 0;
            *(v51 + 12) = 0;
            v56 = *(v46 + v49 + 120);
            *(v50 + 136) = *(v46 + v49 + 136);
            *(v50 + 120) = v56;
            *(v51 + 15) = 0;
            *(v51 + 16) = 0;
            v57 = *(v46 + v49 + 144);
            *(v51 + 17) = 0;
            *(v51 + 18) = 0;
            *(v50 + 144) = v57;
            v58 = *(v46 + v49 + 160);
            *(v50 + 152) = *(v46 + v49 + 152);
            *(v46 + v49 + 152) = 0;
            *(v48 + v49 + 160) = v58;
            v59 = *(v46 + v49 + 168);
            *(v50 + 168) = v59;
            *(v50 + 176) = *(v46 + v49 + 176);
            if (v59)
            {
              v60 = *(v58 + 8);
              v61 = *(v50 + 152);
              if ((v61 & (v61 - 1)) != 0)
              {
                if (v60 >= v61)
                {
                  v60 %= v61;
                }
              }

              else
              {
                v60 &= v61 - 1;
              }

              *(v57 + 8 * v60) = v48 + v49 + 160;
              *(v46 + v49 + 160) = 0;
              *(v46 + v49 + 168) = 0;
            }

            v62 = *(v51 + 184);
            *(v50 + 200) = *(v51 + 25);
            *(v50 + 184) = v62;
            *(v51 + 24) = 0;
            *(v51 + 25) = 0;
            *(v51 + 23) = 0;
            *(v50 + 208) = *(v51 + 26);
            *(v51 + 26) = 0;
            v49 += 216;
          }

          while ((v46 + v49) != v47);
          do
          {
            pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult::~NdrNodeDiscoveryResult(v46);
            v46 = (v63 + 216);
          }

          while (v46 != v47);
          v46 = *a1;
          v41 = v82;
        }

        *a1 = v48;
        *(a1 + 1) = v41;
        v64 = *(a1 + 2);
        *(a1 + 2) = v83;
        v82 = v46;
        v83 = v64;
        v80 = v46;
        v81 = v46;
        std::__split_buffer<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::~__split_buffer(&v80);
      }

      else
      {
        std::allocator<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::NdrVersion,std::string,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&,pxrInternal__aapl__pxrReserved__::TfToken&,std::string const&,std::string const&>(v40, v76, &Version, &v71, &v70, v37, v38, a3, v66);
        v41 = v40 + 216;
        *(a1 + 1) = v40 + 216;
      }

      *(a1 + 1) = v41;
      if ((v70 & 7) != 0)
      {
        atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }

      if ((v76 & 7) != 0)
      {
        atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v35 + 2;
    }

    while (v8 != v67);
  }

  v80 = &v78;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v80);
}