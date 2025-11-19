void *sub_1D9D1E1E4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D9D11E00(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

void *sub_1D9D1E280(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D9D12920(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

uint64_t sub_1D9D1E33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_1D9D3F478(a8);
    if (a7)
    {
      sub_1D9D12110(a7);
      sub_1D9D3377C(&v46, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v46, a9);
      if (!*a8)
      {
        v40 = a8;
        sub_1D9D3F478(a8);
        sub_1D9D12110(a7);
        sub_1D9D1E800(a7, SLODWORD(v49.__locale_));
        if (v50)
        {
          v19 = (v50 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (LODWORD(v49.__locale_))
        {
          v41 = &v19[SLODWORD(v49.__locale_)];
          do
          {
            v20 = *v19;
            __src = 0;
            v44 = 0;
            v45 = 0;
            sub_1D9D1E89C(&__src, *(v20 + 56));
            v21 = *(v20 + 64);
            if (v21)
            {
              v22 = v21 + 8;
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v20 + 56);
            if (v23)
            {
              v24 = v44;
              v25 = 8 * v23;
              do
              {
                v26 = *(*v22 + 64);
                if (v24 >= v45)
                {
                  v27 = __src;
                  v28 = v24 - __src;
                  v29 = (v24 - __src) >> 2;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 62)
                  {
                    sub_1D9D84AB0();
                  }

                  v31 = v45 - __src;
                  if ((v45 - __src) >> 1 > v30)
                  {
                    v30 = v31 >> 1;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    sub_1D9D12A0C(&__src, v32);
                  }

                  v33 = v29;
                  v34 = (4 * v29);
                  v35 = &v34[-v33];
                  *v34 = v26;
                  v24 = (v34 + 1);
                  memcpy(v35, v27, v28);
                  v36 = __src;
                  __src = v35;
                  v44 = v24;
                  v45 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  *v24 = v26;
                  v24 += 4;
                }

                v44 = v24;
                v22 += 8;
                v25 -= 8;
              }

              while (v25);
            }

            v42 = *(v20 + 80);
            v37 = a7[1];
            if (v37 >= a7[2])
            {
              v38 = sub_1D9D2A4D4(a7, &__src, &v42);
            }

            else
            {
              sub_1D9D2A46C(a7, &__src, &v42);
              v38 = (v37 + 32);
            }

            a7[1] = v38;
            if (__src)
            {
              v44 = __src;
              operator delete(__src);
            }

            ++v19;
          }

          while (v19 != v41);
        }

        sub_1D9D3F470(v40);
      }

      return sub_1D9D33838(&v46);
    }

    else
    {
      v46 = 13;
      v39 = sub_1D9D100A8(&v47);
      sub_1D9D12280(v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v47, "(", 1);
      MEMORY[0x1DA741080](&v47, 560);
      sub_1D9D12280(&v47, ") [", 3);
      sub_1D9D12280(&v47, "ids", 3);
      sub_1D9D12280(&v47, "] ", 2);
      sub_1D9D12280(&v47, "output container is null", 24);
      sub_1D9D0CE90(&v46, a8);
      v47 = *MEMORY[0x1E69E54E8];
      *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v48 = MEMORY[0x1E69E5548] + 16;
      if (v52 < 0)
      {
        operator delete(__p);
      }

      v48 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v49);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v53);
    }
  }

  return result;
}

void *sub_1D9D1E800(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D9D2A38C(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

void *sub_1D9D1E89C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_1D9D12A0C(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

void *sub_1D9D1E93C@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 8);
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = sub_1D9D100A8(&__p[1]);
        sub_1D9D12280(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&__p[1], "(", 1);
        MEMORY[0x1DA741080](&__p[1], 591);
        sub_1D9D12280(&__p[1], ") [", 3);
        sub_1D9D12280(&__p[1], "!w.empty()", 10);
        sub_1D9D12280(&__p[1], "] ", 2);
        sub_1D9D12280(&__p[1], "Empty piece is not allowed.", 27);
        sub_1D9D0CE90(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 16);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            sub_1D9D28640(__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_1D9D40664((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = sub_1D9D33E90(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        sub_1D9D53A28(a7 + 48, v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = sub_1D9D100A8(&__p[1]);
        sub_1D9D12280(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&__p[1], "(", 1);
        MEMORY[0x1DA741080](&__p[1], 605);
        sub_1D9D12280(&__p[1], ") [", 3);
        sub_1D9D12280(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        sub_1D9D12280(&__p[1], "] ", 2);
        sub_1D9D0CE90(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = sub_1D9D100A8(&__p[1]);
        sub_1D9D12280(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&__p[1], "(", 1);
        MEMORY[0x1DA741080](&__p[1], 606);
        sub_1D9D12280(&__p[1], ") [", 3);
        sub_1D9D12280(&__p[1], "(end) < (norm_to_orig.size())", 29);
        sub_1D9D12280(&__p[1], "] ", 2);
        sub_1D9D0CE90(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = sub_1D9D100A8(&__p[1]);
        sub_1D9D12280(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&__p[1], "(", 1);
        MEMORY[0x1DA741080](&__p[1], 609);
        sub_1D9D12280(&__p[1], ") [", 3);
        sub_1D9D12280(&__p[1], "(orig_begin) <= (input.size())", 30);
        sub_1D9D12280(&__p[1], "] ", 2);
        sub_1D9D0CE90(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = sub_1D9D100A8(&__p[1]);
        sub_1D9D12280(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&__p[1], "(", 1);
        MEMORY[0x1DA741080](&__p[1], 610);
        sub_1D9D12280(&__p[1], ") [", 3);
        sub_1D9D12280(&__p[1], "(orig_end) <= (input.size())", 28);
        sub_1D9D12280(&__p[1], "] ", 2);
        sub_1D9D0CE90(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = sub_1D9D100A8(&__p[1]);
        sub_1D9D12280(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&__p[1], "(", 1);
        MEMORY[0x1DA741080](&__p[1], 611);
        sub_1D9D12280(&__p[1], ") [", 3);
        sub_1D9D12280(&__p[1], "(orig_begin) <= (orig_end)", 26);
        sub_1D9D12280(&__p[1], "] ", 2);
        sub_1D9D0CE90(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                sub_1D9D53A28(a7 + 48, v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = sub_1D9D33E90(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sub_1D9D0DEB4(v27, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            sub_1D9D28640(__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_1D9D40664((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              sub_1D9D28640(__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              sub_1D9D40664((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = sub_1D9D28C54(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_1D9D40664(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            sub_1D9D12168();
          }

          v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_1D9D40664((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          sub_1D9D53A28(a7 + 48, v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = sub_1D9D33E90(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      sub_1D9D28640(__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1D9D40664((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      sub_1D9D28640(__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1D9D40664((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 24;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sub_1D9D1F7F0(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sub_1D9D3F478(a8);
      *(a7 + 40) |= 1u;
      sub_1D9D28640(__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1D9D40664((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sub_1D9D3F470(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = sub_1D9D100A8(&__p[1]);
  sub_1D9D12280(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  sub_1D9D12280(&__p[1], "(", 1);
  MEMORY[0x1DA741080](&__p[1], 662);
  sub_1D9D12280(&__p[1], ") [", 3);
  sub_1D9D12280(&__p[1], "(consumed) == (normalized.size())", 33);
  sub_1D9D12280(&__p[1], "] ", 2);
  sub_1D9D12280(&__p[1], "all normalized characters are not consumed.", 43);
  sub_1D9D0CE90(__p, a8);
LABEL_130:
  __p[1] = *MEMORY[0x1E69E54E8];
  *(&__p[1] + *(__p[1] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v97 = MEMORY[0x1E69E5548] + 16;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  v97 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v98);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v100);
}

void sub_1D9D1F744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D1F7F0@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sub_1D9D3F470(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sub_1D9D32A14(v25, v26);
            }

            else
            {
              sub_1D9D4CED4(v25, v26);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sub_1D9D3F5DC(a4, 13, "unknown extra_option type.", 26);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        sub_1D9D53A28(a3 + 48, v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = sub_1D9D33E90(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      sub_1D9D418C4(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = sub_1D9D418DC(__p, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v56, &v47->__r_.__value_.__l.__data_);
      sub_1D9D41A20(__p);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sub_1D9D0D2A0(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 504))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sub_1D9D0D2A0(a1[1]);
    sub_1D9D0D2A0(a1[1]);
    *(v48 + 40) |= 1u;
    sub_1D9D28640(__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_1D9D40664((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sub_1D9D3F470(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sub_1D9D0D324(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 504))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sub_1D9D0D324(a1[1]);
        sub_1D9D0D324(a1[1]);
        *(v33 + 40) |= 1u;
        sub_1D9D28640(__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        sub_1D9D40664((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = sub_1D9D33E90(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    sub_1D9D53A28(a3 + 48, v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = sub_1D9D28C54(a3 + 48, v14);
        if ((*(*a1 + 528))(a1, *(v15 + 64)))
        {
          v16 = sub_1D9D0D21C(a1[1]);
          sub_1D9D0D21C(a1[1]);
          *(v15 + 40) |= 1u;
          sub_1D9D28640(__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_1D9D40664((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sub_1D9D3F5DC(a4, 13, "unknown extra_option type.", 26);
}

void sub_1D9D1FD38(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sub_1D9D3F478(a5);
    if (a4)
    {
      sub_1D9D32E58(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sub_1D9D3F478(a5);
        (*(*a1[1] + 40))(__p);
        if (v19 >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sub_1D9D1E93C(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          v11 = sub_1D9D3F478(a5);
          sub_1D9D3F470(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = sub_1D9D100A8(&v18);
      sub_1D9D12280(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v18, "(", 1);
      MEMORY[0x1DA741080](&v18, 674);
      sub_1D9D12280(&v18, ") [", 3);
      sub_1D9D12280(&v18, "spt", 3);
      sub_1D9D12280(&v18, "] ", 2);
      sub_1D9D12280(&v18, "output proto is null", 20);
      sub_1D9D0CE90(&v17, a5);
      v18 = *MEMORY[0x1E69E54E8];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v19 = MEMORY[0x1E69E5548] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      MEMORY[0x1DA7411E0](&v22);
    }
  }
}

void sub_1D9D20090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D200EC(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (*a5)
  {
    return;
  }

  sub_1D9D3F478(a5);
  if (a4)
  {
    sub_1D9D33874(a4);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v26, &v23);
    if (!*a5)
    {
      sub_1D9D3F478(a5);
      if ((*(*a1[1] + 88))(a1[1]))
      {
        (*(*a1[1] + 48))(&v21);
        v10 = v21;
        v11 = v22;
        if (v21 != v22)
        {
          while (1)
          {
            v12 = *(a4 + 32);
            if (!v12)
            {
              break;
            }

            v13 = *(a4 + 24);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a4 + 28))
              {
LABEL_12:
                sub_1D9D53A28(a4 + 16, v14 + 1);
                v12 = *(a4 + 32);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v15 = sub_1D9D33F60(*(a4 + 16));
              v16 = *(a4 + 24);
              v17 = *(a4 + 32) + 8 * v16;
              *(a4 + 24) = v16 + 1;
              *(v17 + 8) = v15;
              goto LABEL_14;
            }

            *(a4 + 24) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_14:
            v18 = *(v10 + 24);
            *(v15 + 40) |= 2u;
            *(v15 + 80) = v18;
            if (v28 >= 0)
            {
              v19 = HIBYTE(v28);
            }

            else
            {
              v19 = v27;
            }

            sub_1D9D1E93C(a1, a2, a3, v19, &v23, v10, v15, a5);
            if (*a5)
            {
              goto LABEL_29;
            }

            sub_1D9D3F478(a5);
            v10 += 32;
            if (v10 == v11)
            {
              sub_1D9D3F470(a5);
              goto LABEL_29;
            }
          }

          v14 = *(a4 + 28);
          goto LABEL_12;
        }

        LODWORD(v29) = 13;
        sub_1D9D100A8(&v30);
        sub_1D9D12280(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&v30, "(", 1);
        MEMORY[0x1DA741080](&v30, 700);
        sub_1D9D12280(&v30, ") [", 3);
        sub_1D9D12280(&v30, "!nbests.empty()", 15);
        sub_1D9D12280(&v30, "] ", 2);
        sub_1D9D12280(&v30, "NBestEncode returns empty result.", 33);
        sub_1D9D0CE90(&v29, a5);
        v30 = *MEMORY[0x1E69E54E8];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        v31 = MEMORY[0x1E69E5548] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x1DA7411E0](v35);
LABEL_29:
        v29 = &v21;
        sub_1D9D120BC(&v29);
      }

      else
      {
        LODWORD(v29) = 13;
        sub_1D9D100A8(&v30);
        sub_1D9D12280(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&v30, "(", 1);
        MEMORY[0x1DA741080](&v30, 696);
        sub_1D9D12280(&v30, ") [", 3);
        sub_1D9D12280(&v30, "model_->IsNBestEncodeAvailable()", 32);
        sub_1D9D12280(&v30, "] ", 2);
        sub_1D9D12280(&v30, "NBestEncode is not available for the current model.", 51);
        sub_1D9D0CE90(&v29, a5);
        v30 = *MEMORY[0x1E69E54E8];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        v31 = MEMORY[0x1E69E5548] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x1DA7411E0](v35);
      }
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    LODWORD(v29) = 13;
    v20 = sub_1D9D100A8(&v30);
    sub_1D9D12280(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v30, "(", 1);
    MEMORY[0x1DA741080](&v30, 690);
    sub_1D9D12280(&v30, ") [", 3);
    sub_1D9D12280(&v30, "nbest_spt", 9);
    sub_1D9D12280(&v30, "] ", 2);
    sub_1D9D12280(&v30, "output proto is null", 20);
    sub_1D9D0CE90(&v29, a5);
    v30 = *MEMORY[0x1E69E54E8];
    *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v31 = MEMORY[0x1E69E5548] + 16;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v31 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v32);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v35);
  }
}

void sub_1D9D20880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_1D9D120BC(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D20910(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  ((*a1)[11])(a1);
  if (*a6)
  {
    return;
  }

  sub_1D9D3F478(a6);
  if (a5)
  {
    sub_1D9D32E58(a5);
    if (a4 < 513)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v33 = 0;
      v34 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v35, &__p);
      if (*a6)
      {
LABEL_5:
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v35);
        }

        return;
      }

      sub_1D9D3F478(a6);
      v16 = (*(*a1[1] + 88))(a1[1]);
      if (a4 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        if (a4 > 1)
        {
          (*(*a1[1] + 48))(&v30);
          if (v30 == v31)
          {
            LODWORD(v38) = 13;
            sub_1D9D100A8(&v39);
            sub_1D9D12280(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_1D9D12280(&v39, "(", 1);
            MEMORY[0x1DA741080](&v39, 735);
            sub_1D9D12280(&v39, ") [", 3);
            sub_1D9D12280(&v39, "!nbests.empty()", 15);
            sub_1D9D12280(&v39, "] ", 2);
            sub_1D9D12280(&v39, "NBestEncode returns empty result.", 33);
            sub_1D9D0CE90(&v38, a6);
            sub_1D9D0CF20(&v38);
          }

          else
          {
            LODWORD(v28) = 0;
            sub_1D9D2A5F0(&v38, (v31 - v30) >> 5);
            if (v31 != v30)
            {
              v19 = v38;
              if (((v31 - v30) >> 5) <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = (v31 - v30) >> 5;
              }

              v21 = (v30 + 24);
              do
              {
                v22 = *v21;
                v21 += 8;
                *v19++ = expf(v22 * a7);
                --v20;
              }

              while (v20);
            }

            v23 = sub_1D9D3D64C();
            sub_1D9D2A704(&v28, v38, v39);
            v24 = HIBYTE(v37);
            v25 = v36;
            v26 = sub_1D9D2AA6C(&v28, v23, &v28);
            if ((v24 & 0x80u) == 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            sub_1D9D1E93C(a1, a2, a3, v27, &__p, (v30 + 32 * v26), a5, a6);
            if (!*a6)
            {
              sub_1D9D3F478(a6);
              if (v28)
              {
                v29 = v28;
                operator delete(v28);
              }

              if (v38)
              {
                v39 = v38;
                operator delete(v38);
              }

              v38 = &v30;
              sub_1D9D120BC(&v38);
LABEL_55:
              sub_1D9D3F470(a6);
              goto LABEL_5;
            }

            if (v28)
            {
              v29 = v28;
              operator delete(v28);
            }

            if (v38)
            {
              v39 = v38;
              operator delete(v38);
            }
          }

          v38 = &v30;
          sub_1D9D120BC(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 40))(&v38);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      else
      {
        if (((*(*a1[1] + 80))(a1[1]) & 1) == 0)
        {
          LODWORD(v38) = 13;
          sub_1D9D100A8(&v39);
          sub_1D9D12280(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
          sub_1D9D12280(&v39, "(", 1);
          MEMORY[0x1DA741080](&v39, 724);
          sub_1D9D12280(&v39, ") [", 3);
          sub_1D9D12280(&v39, "model_->IsSampleEncodeAvailable()", 33);
          sub_1D9D12280(&v39, "] ", 2);
          sub_1D9D12280(&v39, "SampleEncode is not available for the current model.", 52);
          sub_1D9D0CE90(&v38, a6);
          sub_1D9D0CF20(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 56))(&v38, a7);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      sub_1D9D1E93C(a1, a2, a3, v18, &__p, &v38, a5, a6);
      if (*a6)
      {
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        goto LABEL_5;
      }

      sub_1D9D3F478(a6);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      goto LABEL_55;
    }

    LODWORD(v38) = 13;
    v15 = sub_1D9D100A8(&v39);
    sub_1D9D12280(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v39, "(", 1);
    MEMORY[0x1DA741080](&v39, 717);
    sub_1D9D12280(&v39, ") [", 3);
    sub_1D9D12280(&v39, "(nbest_size) <= (512)", 21);
    sub_1D9D12280(&v39, "] ", 2);
    sub_1D9D12280(&v39, "nbest_size must be nbest_size <= 512", 36);
    sub_1D9D0CE90(&v38, a6);
  }

  else
  {
    LODWORD(v38) = 13;
    v14 = sub_1D9D100A8(&v39);
    sub_1D9D12280(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v39, "(", 1);
    MEMORY[0x1DA741080](&v39, 715);
    sub_1D9D12280(&v39, ") [", 3);
    sub_1D9D12280(&v39, "spt", 3);
    sub_1D9D12280(&v39, "] ", 2);
    sub_1D9D12280(&v39, "output proto is null", 20);
    sub_1D9D0CE90(&v38, a6);
  }

  v39 = *MEMORY[0x1E69E54E8];
  *(&v39 + *(v39 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v43);
}

void sub_1D9D21124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25)
{
  a24 = &a12;
  sub_1D9D120BC(&a24);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D21210(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X6>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(*a1[1] + 96))(a1[1]))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v28, &v25);
    if (!*a5)
    {
      sub_1D9D3F478(a5);
      (*(*a1[1] + 64))(&v23, a6);
      v12 = v23;
      v13 = v24;
      if (v23 != v24)
      {
        while (1)
        {
          v14 = *(a4 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a4 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a4 + 28))
            {
LABEL_9:
              sub_1D9D53A28(a4 + 16, v16 + 1);
              v14 = *(a4 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = sub_1D9D33F60(*(a4 + 16));
            v18 = *(a4 + 24);
            v19 = *(a4 + 32) + 8 * v18;
            *(a4 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            goto LABEL_11;
          }

          *(a4 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_11:
          v20 = *(v12 + 24);
          *(v17 + 40) |= 2u;
          *(v17 + 80) = v20;
          if (v30 >= 0)
          {
            v21 = HIBYTE(v30);
          }

          else
          {
            v21 = v29;
          }

          sub_1D9D1E93C(a1, a2, a3, v21, &v25, v12, v17, a5);
          if (*a5)
          {
            goto LABEL_23;
          }

          sub_1D9D3F478(a5);
          v12 += 32;
          if (v12 == v13)
          {
            sub_1D9D3F470(a5);
            goto LABEL_23;
          }
        }

        v16 = *(a4 + 28);
        goto LABEL_9;
      }

      LODWORD(v31) = 13;
      sub_1D9D100A8(&v32);
      sub_1D9D12280(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v32, "(", 1);
      MEMORY[0x1DA741080](&v32, 762);
      sub_1D9D12280(&v32, ") [", 3);
      sub_1D9D12280(&v32, "!results.empty()", 16);
      sub_1D9D12280(&v32, "] ", 2);
      sub_1D9D12280(&v32, "SampleEncodeAndScore returns empty result.", 42);
      sub_1D9D0CE90(&v31, a5);
      v32 = *MEMORY[0x1E69E54E8];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v33 = MEMORY[0x1E69E5548] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x1DA7411E0](v37);
LABEL_23:
      v31 = &v23;
      sub_1D9D120BC(&v31);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    LODWORD(v31) = 13;
    v22 = sub_1D9D100A8(&v32);
    sub_1D9D12280(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v32, "(", 1);
    MEMORY[0x1DA741080](&v32, 754);
    sub_1D9D12280(&v32, ") [", 3);
    sub_1D9D12280(&v32, "model_->IsSampleEncodeAndScoreAvailable()", 41);
    sub_1D9D12280(&v32, "] ", 2);
    sub_1D9D12280(&v32, "SampleEncodeAndScore is not available for the current model.", 60);
    sub_1D9D0CE90(&v31, a5);
    v32 = *MEMORY[0x1E69E54E8];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v33 = MEMORY[0x1E69E5548] + 16;
    if (v36 < 0)
    {
      operator delete(__p);
    }

    v33 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v37);
  }
}

void sub_1D9D217D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_1D9D120BC(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D21850(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(**(a1 + 8) + 104))(*(a1 + 8)))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, &v18, &__p);
    if (!*a5)
    {
      sub_1D9D3F478(a5);
      if (v20 >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      if (v20 >= 0)
      {
        v13 = HIBYTE(v20);
      }

      else
      {
        v13 = v19;
      }

      *a4 = (*(**(a1 + 8) + 72))(*(a1 + 8), v12, v13, a6);
      sub_1D9D3F470(a5);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    LODWORD(v18) = 13;
    v14 = sub_1D9D100A8(&v19);
    sub_1D9D12280(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v19, "(", 1);
    MEMORY[0x1DA741080](&v19, 778);
    sub_1D9D12280(&v19, ") [", 3);
    sub_1D9D12280(&v19, "model_->IsCalculateEntropyAvailable()", 37);
    sub_1D9D12280(&v19, "] ", 2);
    sub_1D9D12280(&v19, "CalculateEntropy is not available for the current model.", 56);
    sub_1D9D0CE90(&v18, a5);
    v19 = *MEMORY[0x1E69E54E8];
    *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v20 = MEMORY[0x1E69E5548] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v21);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](&v23);
  }
}

void sub_1D9D21B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D21B84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1D9D1BF58(a2, __p);
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9D21C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D21C30(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v74[19] = *MEMORY[0x1E69E9840];
  v62 = a3;
  (*(*a1 + 88))(a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sub_1D9D3F478(a4);
  if (!v4)
  {
    LODWORD(__dst) = 13;
    sub_1D9D100A8(&__dst + 1);
    sub_1D9D12280(&__dst + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&__dst + 1, "(", 1);
    MEMORY[0x1DA741080](&__dst + 8, 796);
    sub_1D9D12280(&__dst + 1, ") [", 3);
    sub_1D9D12280(&__dst + 1, "spt", 3);
    sub_1D9D12280(&__dst + 1, "] ", 2);
    sub_1D9D12280(&__dst + 1, "output proto is null", 20);
    sub_1D9D0CE90(&__dst, a4);
    *(&__dst + 1) = *MEMORY[0x1E69E54E8];
    *(&__dst + *(*(&__dst + 1) - 24) + 8) = *(MEMORY[0x1E69E54E8] + 24);
    v69 = (MEMORY[0x1E69E5548] + 16);
    if (v73 < 0)
    {
      operator delete(__p);
    }

    v69 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&v70);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v74);
    goto LABEL_2;
  }

  sub_1D9D32E58(v4);
  v9 = a1[4];
  if (v9 && (*(*v9 + 72))(v9))
  {
    v10 = (*(*a1[4] + 24))(a1[4]);
  }

  else
  {
    v10 = &unk_1D9DDCE9D;
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = v62;
      v16 = *(v62 + 64);
      if (!v16)
      {
        break;
      }

      v17 = *(v62 + 56);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(v62 + 60))
        {
LABEL_18:
          sub_1D9D53A28(v62 + 48, v18 + 1);
          v16 = *(v62 + 64);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = sub_1D9D33E90(*(v15 + 48));
        v20 = *(v15 + 56);
        v21 = *(v15 + 64) + 8 * v20;
        *(v15 + 56) = v20 + 1;
        *(v21 + 8) = v19;
        goto LABEL_20;
      }

      *(v62 + 56) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_20:
      *(v19 + 40) |= 1u;
      v22 = *(v19 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_1D9D40688((v19 + 48), v22);
      MEMORY[0x1DA740EE0](v23, v13, v14);
      v24 = (*(*a1 + 504))(a1, v13, v14);
      *(v19 + 40) |= 4u;
      *(v19 + 64) = v24;
      v11 += 2;
      if (v11 == v12)
      {
        v4 = v62;
        goto LABEL_24;
      }
    }

    v18 = *(v62 + 60);
    goto LABEL_18;
  }

LABEL_24:
  sub_1D9D1F7F0(a1, a1 + 8, v4, a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sub_1D9D3F478(a4);
  *(v4 + 40) |= 1u;
  v25 = *(v4 + 8);
  if (v25)
  {
    v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
  }

  v60[1] = &v61;
  v61 = sub_1D9D40688((v4 + 72), v25);
  v58 = 0;
  v59[0] = &v62;
  v59[1] = v60;
  v60[0] = &v62;
  v57[0] = 0;
  v57[1] = 0;
  v26 = *(v4 + 56);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = sub_1D9D27D6C(v4 + 48, v29);
      if (!(*(*a1 + 552))(a1, *(v31 + 64)))
      {
        break;
      }

      ++v29;
LABEL_69:
      v4 = v62;
      v26 = *(v62 + 56);
      if (v29 >= v26)
      {
        goto LABEL_87;
      }
    }

    sub_1D9D2261C(v59, v28, v29, a4);
    if (*a4)
    {
      goto LABEL_95;
    }

    sub_1D9D3F478(a4);
    if (v27)
    {
      goto LABEL_36;
    }

    v32 = *(v61 + 23);
    if (v32 < 0)
    {
      v32 = v61[1];
    }

    if (v32)
    {
LABEL_36:
      v30 = 0;
    }

    v33 = *(v31 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    if ((v34 & 0x8000000000000000) != 0)
    {
      v35 = *v33;
      v34 = *(v33 + 8);
    }

    else
    {
      v35 = (*(v31 + 48) & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = *(v31 + 64);
    if ((*(*a1 + 536))(a1, v36))
    {
      sub_1D9D94D70(&v54, "");
    }

    else
    {
      if (!(*(*a1 + 528))(a1, v36))
      {
        if (v30 & 1) != 0 && ((v39 = a1[4]) == 0 || (v40 = (*(*v39 + 152))(v39), ((*(*v40 + 16))(v40)) || (v41 = (*(*a1[4] + 152))(a1[4]), (*(*v41 + 24))(v41))))
        {
          if (v34 >= 3)
          {
            v46 = *v35 != 38626 || v35[2] != 129;
            if (!v46)
            {
              v35 += 3;
              v34 -= 3;
            }

            v42 = !v46;
          }

          else
          {
            v42 = 0;
          }

          v47 = a1[4];
          if (v47)
          {
            v48 = (*(*v47 + 152))(v47);
            if ((*(*v48 + 24))(v48))
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        *&__dst = &unk_1D9DDCF32;
        *(&__dst + 1) = 3;
        v69 = " ";
        v70.__locale_ = 1;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        sub_1D9D28924(&v63, &__dst, &v71, 1uLL);
        sub_1D9D286F0(v35, v34, &v63, &v66);
        v54 = v66;
        v55 = v67;
        v67 = 0;
        v66 = 0uLL;
        v56 = v42;
        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        goto LABEL_60;
      }

      v37 = (*(*a1 + 512))(a1, v36);
      if (v38 == v34 && !memcmp(v37, v35, v34))
      {
        sub_1D9D94D70(&v54, v10);
      }

      else
      {
        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1D9D12168();
        }

        if (v34 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v69) = v34;
        if (v34)
        {
          memmove(&__dst, v35, v34);
        }

        *(&__dst + v34) = 0;
        v54 = __dst;
        v55 = v69;
      }
    }

    v56 = 0;
LABEL_60:
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v58 = v55;
    *v57 = v54;
    v27 = v56;
    if (SHIBYTE(v55) >= 0)
    {
      v43 = v57;
    }

    else
    {
      v43 = v54;
    }

    if (SHIBYTE(v55) >= 0)
    {
      v44 = v55 >> 56;
    }

    else
    {
      v44 = *(&v54 + 1);
    }

    sub_1D9D22BC8(v60, v29++, v43, v44);
    v28 = v29;
    goto LABEL_69;
  }

  v28 = 0;
LABEL_87:
  sub_1D9D2261C(v59, v28, v26, a4);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    v49 = a1[3];
    if (v49)
    {
      if ((*(v61 + 23) & 0x8000000000000000) != 0)
      {
        v50 = *v61;
        v51 = v61[1];
      }

      (*(*v49 + 40))(&__dst);
      v52 = v61;
      if (*(v61 + 23) < 0)
      {
        operator delete(*v61);
      }

      v53 = __dst;
      v52[2] = v69;
      *v52 = v53;
    }

    sub_1D9D3F470(a4);
  }

LABEL_95:
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

LABEL_2:
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1D9D225BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2261C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a2 >= a3)
  {

    sub_1D9D3F470(a4);
  }

  else
  {
    memset(&v37, 0, sizeof(v37));
    v8 = a2;
    do
    {
      v9 = *(sub_1D9D27D6C(**a1 + 48, v8) + 48);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
      v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v10 = *v10;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v12 = sub_1D9D0E9F8(v10, v11);
      if (v12 < 0)
      {
        v31 = 13;
        sub_1D9D100A8(&v32);
        sub_1D9D12280(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&v32, "(", 1);
        MEMORY[0x1DA741080](&v32, 868);
        sub_1D9D12280(&v32, ") [", 3);
        sub_1D9D12280(&v32, "(0) <= (byte)", 13);
        sub_1D9D12280(&v32, "] ", 2);
        sub_1D9D0CE90(&v31, a4);
        goto LABEL_51;
      }

      std::string::append(&v37, 1uLL, v12);
      ++v8;
    }

    while (a3 != v8);
    v29 = a4;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v37.__r_.__value_.__r.__words[1];
    }

    if (v13 >= 1)
    {
      v14 = 0;
      while (1)
      {
        v30 = 0;
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v37.__r_.__value_.__l.__size_;
        }

        if (size < v14)
        {
          sub_1D9D28A1C("string_view::substr");
        }

        v16 = v14;
        v17 = v37.__r_.__value_.__r.__words[0];
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v37;
        }

        if (sub_1D9D3D4FC(v17 + v16, v17 + size, &v30) != 65533)
        {
          break;
        }

        v18 = v16 + a2;
        if (v30 != 1)
        {
          if (v30 != 3)
          {
            v31 = 13;
            sub_1D9D100A8(&v32);
            sub_1D9D12280(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_1D9D12280(&v32, "(", 1);
            MEMORY[0x1DA741080](&v32, 887);
            sub_1D9D12280(&v32, ") [", 3);
            sub_1D9D12280(&v32, "(consumed) == (1)", 17);
            sub_1D9D12280(&v32, "] ", 2);
            sub_1D9D0CE90(&v31, v29);
            goto LABEL_51;
          }

          goto LABEL_22;
        }

        sub_1D9D22BC8(*(a1 + 8), v16 + a2, &unk_1D9DDCF2E, 3uLL);
        LODWORD(v21) = v30;
LABEL_41:
        v14 = v16 + v21;
        if (v14 >= v13)
        {
          goto LABEL_48;
        }
      }

      v18 = v16 + a2;
LABEL_22:
      v19 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v37.__r_.__value_.__l.__size_;
      }

      v20 = v19 - v16;
      if (v19 < v16)
      {
        sub_1D9D28A1C("string_view::substr");
      }

      v21 = v30;
      v22 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v37.__r_.__value_.__r.__words[0];
      }

      if (v20 >= v30)
      {
        v23 = v30;
      }

      else
      {
        v23 = v20;
      }

      if (v30)
      {
        v24 = 0;
        v25 = v22 + v16;
        do
        {
          v26 = v21 - 1;
          if (v24 == v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = "";
          }

          if (v24 == v26)
          {
            v28 = v23;
          }

          else
          {
            v28 = 0;
          }

          sub_1D9D22BC8(*(a1 + 8), v18, v27, v28);
          ++v24;
          v21 = v30;
          ++v18;
        }

        while (v30 > v24);
      }

      goto LABEL_41;
    }

    v14 = 0;
LABEL_48:
    if (v14 + a2 == a3)
    {
      sub_1D9D3F470(v29);
      goto LABEL_54;
    }

    v31 = 13;
    sub_1D9D100A8(&v32);
    sub_1D9D12280(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v32, "(", 1);
    MEMORY[0x1DA741080](&v32, 905);
    sub_1D9D12280(&v32, ") [", 3);
    sub_1D9D12280(&v32, "(token_index_begin + offset) == (token_index_end)", 49);
    sub_1D9D12280(&v32, "] ", 2);
    sub_1D9D0CE90(&v31, v29);
LABEL_51:
    v32 = *MEMORY[0x1E69E54E8];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v33 = MEMORY[0x1E69E5548] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](&v36);
LABEL_54:
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1D9D22B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D9D22BC8(uint64_t a1, int a2, const void *a3, size_t a4)
{
  v7 = sub_1D9D28C54(**a1 + 48, a2);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v8 = v7;
  if (a4 >= 0x17)
  {
    operator new();
  }

  v17 = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  *(&__dst + a4) = 0;
  *(v8 + 40) |= 2u;
  v9 = *(v8 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_1D9D40664((v8 + 56), &__dst, v9);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(*v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  v13 = *(v8 + 40);
  *(v8 + 40) = v13 | 8;
  *(v8 + 68) = v12;
  v14 = *(v11 + 23);
  if (v14 < 0)
  {
    v14 = *(v11 + 8);
  }

  *(v8 + 40) = v13 | 0x18;
  *(v8 + 72) = v14 + a4;
  return std::string::append(v11, a3, a4);
}

void sub_1D9D22D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D22D34(uint64_t a1@<X0>, signed int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = (*(*a1 + 496))(a1);
  sub_1D9D1E280(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    v13 = v20;
    if (v20 >= v21)
    {
      v14 = sub_1D9D12788(&v19, &__p);
    }

    else
    {
      sub_1D9D126C4(&v19, &__p);
      v14 = v13 + 24;
    }

    v20 = v14;
    ++v10;
  }

  sub_1D9D22F34("Invalid id: ", 0xCuLL, &v18, &__p);
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

  sub_1D9D3F5DC(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  sub_1D9D28538(&__p);
}

void sub_1D9D22EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_1D9D28538(&__p);
  _Unwind_Resume(a1);
}

void sub_1D9D22F34(void *__src@<X0>, size_t __len@<X1>, unsigned int *a3@<X2>, std::string *a4@<X8>)
{
  sub_1D9D28640(&__dst, __src, __len);
  sub_1D9D2ABBC(*a3);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&__dst, v6, v7);
  *a4 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D22FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D2300C(void **a1)
{
  ((*a1)[11])(&v16);
  v2 = v16;
  sub_1D9D3F478(&v16);
  if (!v2)
  {
    return (*(*a1[1] + 128))(a1[1]);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v15 = 0;
    v3 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v4 = sub_1D9D12280(v3, "(", 1);
    v5 = MEMORY[0x1DA741080](v4, 961);
    v6 = sub_1D9D12280(v5, ") ", 2);
    v7 = sub_1D9D12280(v6, "LOG(", 4);
    v8 = sub_1D9D12280(v7, "ERROR", 5);
    v9 = sub_1D9D12280(v8, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v10 = sub_1D9D3F770(&v16);
    v11 = strlen(v10);
    v12 = sub_1D9D12280(v9, v10, v11);
    v13 = sub_1D9D12280(v12, "\nReturns default value ", 23);
    MEMORY[0x1DA741080](v13, 0);
    sub_1D9D3F478(&v16);
    sub_1D9D103D8(&v15);
  }

  return 0;
}

uint64_t sub_1D9D231BC(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v20);
  v6 = v20;
  sub_1D9D3F478(&v20);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v19 = 0;
    v7 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v8 = sub_1D9D12280(v7, "(", 1);
    v9 = MEMORY[0x1DA741080](v8, 966);
    v10 = sub_1D9D12280(v9, ") ", 2);
    v11 = sub_1D9D12280(v10, "LOG(", 4);
    v12 = sub_1D9D12280(v11, "ERROR", 5);
    v13 = sub_1D9D12280(v12, ") ", 2);
    ((*a1)[11])(&v20, a1);
    v14 = sub_1D9D3F770(&v20);
    v15 = strlen(v14);
    v16 = sub_1D9D12280(v13, v14, v15);
    v17 = sub_1D9D12280(v16, "\nReturns default value ", 23);
    MEMORY[0x1DA741080](v17, 0);
    sub_1D9D3F478(&v20);
    sub_1D9D103D8(&v19);
  }

  return 0;
}

const char *sub_1D9D23384(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_1D9D3F478(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 120))(a1[1], a2);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v17 = 0;
    v5 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v6 = sub_1D9D12280(v5, "(", 1);
    v7 = MEMORY[0x1DA741080](v6, 971);
    v8 = sub_1D9D12280(v7, ") ", 2);
    v9 = sub_1D9D12280(v8, "LOG(", 4);
    v10 = sub_1D9D12280(v9, "ERROR", 5);
    v11 = sub_1D9D12280(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_1D9D3F770(&v18);
    v13 = strlen(v12);
    v14 = sub_1D9D12280(v11, v12, v13);
    v15 = sub_1D9D12280(v14, "\nReturns default value ", 23);
    sub_1D9D12280(v15, "", 0);
    sub_1D9D3F478(&v18);
    sub_1D9D103D8(&v17);
  }

  return "";
}

float sub_1D9D23554(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v19);
  v4 = v19;
  sub_1D9D3F478(&v19);
  if (!v4)
  {
    return (*(*a1[1] + 136))(a1[1], a2);
  }

  v5 = 0.0;
  if (sub_1D9D3D4EC() <= 2)
  {
    v18 = 0;
    v6 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v7 = sub_1D9D12280(v6, "(", 1);
    v8 = MEMORY[0x1DA741080](v7, 976);
    v9 = sub_1D9D12280(v8, ") ", 2);
    v10 = sub_1D9D12280(v9, "LOG(", 4);
    v11 = sub_1D9D12280(v10, "ERROR", 5);
    v12 = sub_1D9D12280(v11, ") ", 2);
    ((*a1)[11])(&v19, a1);
    v13 = sub_1D9D3F770(&v19);
    v14 = strlen(v13);
    v15 = sub_1D9D12280(v12, v13, v14);
    v16 = sub_1D9D12280(v15, "\nReturns default value ", 23);
    MEMORY[0x1DA741060](v16, 0.0);
    sub_1D9D3F478(&v19);
    sub_1D9D103D8(&v18);
  }

  return v5;
}

uint64_t sub_1D9D23724(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_1D9D3F478(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 152))(a1[1], a2);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v17 = 0;
    v5 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v6 = sub_1D9D12280(v5, "(", 1);
    v7 = MEMORY[0x1DA741080](v6, 981);
    v8 = sub_1D9D12280(v7, ") ", 2);
    v9 = sub_1D9D12280(v8, "LOG(", 4);
    v10 = sub_1D9D12280(v9, "ERROR", 5);
    v11 = sub_1D9D12280(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_1D9D3F770(&v18);
    v13 = strlen(v12);
    v14 = sub_1D9D12280(v11, v12, v13);
    v15 = sub_1D9D12280(v14, "\nReturns default value ", 23);
    MEMORY[0x1DA741080](v15, 0);
    sub_1D9D3F478(&v18);
    sub_1D9D103D8(&v17);
  }

  return 0;
}

uint64_t sub_1D9D238E4(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_1D9D3F478(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 144))(a1[1], a2);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v17 = 0;
    v5 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v6 = sub_1D9D12280(v5, "(", 1);
    v7 = MEMORY[0x1DA741080](v6, 986);
    v8 = sub_1D9D12280(v7, ") ", 2);
    v9 = sub_1D9D12280(v8, "LOG(", 4);
    v10 = sub_1D9D12280(v9, "ERROR", 5);
    v11 = sub_1D9D12280(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_1D9D3F770(&v18);
    v13 = strlen(v12);
    v14 = sub_1D9D12280(v11, v12, v13);
    v15 = sub_1D9D12280(v14, "\nReturns default value ", 23);
    MEMORY[0x1DA741080](v15, 0);
    sub_1D9D3F478(&v18);
    sub_1D9D103D8(&v17);
  }

  return 0;
}

uint64_t sub_1D9D23AA4(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_1D9D3F478(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 160))(a1[1], a2);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v17 = 0;
    v5 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v6 = sub_1D9D12280(v5, "(", 1);
    v7 = MEMORY[0x1DA741080](v6, 991);
    v8 = sub_1D9D12280(v7, ") ", 2);
    v9 = sub_1D9D12280(v8, "LOG(", 4);
    v10 = sub_1D9D12280(v9, "ERROR", 5);
    v11 = sub_1D9D12280(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_1D9D3F770(&v18);
    v13 = strlen(v12);
    v14 = sub_1D9D12280(v11, v12, v13);
    v15 = sub_1D9D12280(v14, "\nReturns default value ", 23);
    MEMORY[0x1DA741050](v15, 0);
    sub_1D9D3F478(&v18);
    sub_1D9D103D8(&v17);
  }

  return 0;
}

uint64_t sub_1D9D23C64(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_1D9D3F478(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 176))(a1[1], a2);
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    v17 = 0;
    v5 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v6 = sub_1D9D12280(v5, "(", 1);
    v7 = MEMORY[0x1DA741080](v6, 996);
    v8 = sub_1D9D12280(v7, ") ", 2);
    v9 = sub_1D9D12280(v8, "LOG(", 4);
    v10 = sub_1D9D12280(v9, "ERROR", 5);
    v11 = sub_1D9D12280(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_1D9D3F770(&v18);
    v13 = strlen(v12);
    v14 = sub_1D9D12280(v11, v12, v13);
    v15 = sub_1D9D12280(v14, "\nReturns default value ", 23);
    MEMORY[0x1DA741050](v15, 0);
    sub_1D9D3F478(&v18);
    sub_1D9D103D8(&v17);
  }

  return 0;
}

uint64_t sub_1D9D23E24(uint64_t *a1)
{
  v2 = sub_1D9D0D21C(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 528))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D9D23EE4(uint64_t *a1)
{
  v2 = sub_1D9D0D2A0(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D9D23FA4(uint64_t *a1)
{
  v2 = sub_1D9D0D324(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D9D24064(uint64_t *a1)
{
  v2 = sub_1D9D0D3A8(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D9D24124@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    if (a3)
    {
      sub_1D9D1C31C(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 200);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1D9D100A8(&v14);
      sub_1D9D12280(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v14, "(", 1);
      MEMORY[0x1DA741080](&v14, 1027);
      sub_1D9D12280(&v14, ") [", 3);
      sub_1D9D12280(&v14, "pieces", 6);
      sub_1D9D12280(&v14, "] ", 2);
      sub_1D9D12280(&v14, "output container is null", 24);
      sub_1D9D0CE90(&v13, a4);
      v14 = *MEMORY[0x1E69E54E8];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v15 = MEMORY[0x1E69E5548] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v18);
    }
  }

  return result;
}

uint64_t sub_1D9D243D8@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 208);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1D9D100A8(&v14);
      sub_1D9D12280(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v14, "(", 1);
      MEMORY[0x1DA741080](&v14, 1033);
      sub_1D9D12280(&v14, ") [", 3);
      sub_1D9D12280(&v14, "ids", 3);
      sub_1D9D12280(&v14, "] ", 2);
      sub_1D9D12280(&v14, "output container is null", 24);
      sub_1D9D0CE90(&v13, a4);
      v14 = *MEMORY[0x1E69E54E8];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v15 = MEMORY[0x1E69E5548] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v18);
    }
  }

  return result;
}

uint64_t sub_1D9D2468C@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    if (a3)
    {
      sub_1D9D1C31C(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 216);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1D9D100A8(&v14);
      sub_1D9D12280(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v14, "(", 1);
      MEMORY[0x1DA741080](&v14, 1039);
      sub_1D9D12280(&v14, ") [", 3);
      sub_1D9D12280(&v14, "pieces", 6);
      sub_1D9D12280(&v14, "] ", 2);
      sub_1D9D12280(&v14, "output container is null", 24);
      sub_1D9D0CE90(&v13, a4);
      v14 = *MEMORY[0x1E69E54E8];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v15 = MEMORY[0x1E69E5548] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v18);
    }
  }

  return result;
}

uint64_t sub_1D9D24938@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 224);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1D9D100A8(&v14);
      sub_1D9D12280(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v14, "(", 1);
      MEMORY[0x1DA741080](&v14, 1045);
      sub_1D9D12280(&v14, ") [", 3);
      sub_1D9D12280(&v14, "ids", 3);
      sub_1D9D12280(&v14, "] ", 2);
      sub_1D9D12280(&v14, "output container is null", 24);
      sub_1D9D0CE90(&v13, a4);
      v14 = *MEMORY[0x1E69E54E8];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v15 = MEMORY[0x1E69E5548] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v18);
    }
  }

  return result;
}

uint64_t sub_1D9D24BE4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 16);

    return v2();
  }

  return result;
}

uint64_t sub_1D9D24C58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 24);

    return v2();
  }

  return result;
}

uint64_t sub_1D9D24CCC@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (*a4)
  {
    return result;
  }

  sub_1D9D3F478(a4);
  if (a2)
  {
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

    result = ((*a1)[11])(a1);
    if (*a4)
    {
      return result;
    }

    sub_1D9D3F478(a4);
    if (a3)
    {
      a3[1] = *a3;
      v10 = *(*a1[2] + 32);

      return v10();
    }

    v12 = 13;
    v11 = sub_1D9D100A8(&v13);
    sub_1D9D12280(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v13, "(", 1);
    MEMORY[0x1DA741080](&v13, 1062);
    sub_1D9D12280(&v13, ") [", 3);
    sub_1D9D12280(&v13, "norm_to_orig", 12);
    sub_1D9D12280(&v13, "] ", 2);
    sub_1D9D12280(&v13, "output container is null", 24);
    sub_1D9D0CE90(&v12, a4);
  }

  else
  {
    v12 = 13;
    v9 = sub_1D9D100A8(&v13);
    sub_1D9D12280(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v13, "(", 1);
    MEMORY[0x1DA741080](&v13, 1061);
    sub_1D9D12280(&v13, ") [", 3);
    sub_1D9D12280(&v13, "normalized", 10);
    sub_1D9D12280(&v13, "] ", 2);
    sub_1D9D12280(&v13, "output container is null", 24);
    sub_1D9D0CE90(&v12, a4);
  }

  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v17);
}

void *sub_1D9D250C0@<X0>(_DWORD *a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v9) = 13;
    v6 = sub_1D9D100A8(&v10);
    sub_1D9D12280(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v10, "(", 1);
    MEMORY[0x1DA741080](&v10, 1230);
    sub_1D9D12280(&v10, ") [", 3);
    sub_1D9D12280(&v10, "(size) >= (sizeof(MMapHeader))", 30);
    sub_1D9D12280(&v10, "] ", 2);
    sub_1D9D0CE90(&v9, a3);
  }

  else if (*a1)
  {
    LODWORD(v9) = 13;
    v5 = sub_1D9D100A8(&v10);
    sub_1D9D12280(v5, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v10, "(", 1);
    MEMORY[0x1DA741080](&v10, 1233);
    sub_1D9D12280(&v10, ") [", 3);
    sub_1D9D12280(&v10, "header->sentinel == 0", 21);
    sub_1D9D12280(&v10, "] ", 2);
    sub_1D9D12280(&v10, "This file format is not for mmap-based loading.", 47);
    sub_1D9D0CE90(&v9, a3);
  }

  else
  {
    result = sub_1D9D3D904(&v15, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sub_1D9D3F478(a3);
    if (v16 >= a1[1])
    {
      operator new();
    }

    LODWORD(v9) = 13;
    v8 = sub_1D9D100A8(&v10);
    sub_1D9D12280(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v10, "(", 1);
    MEMORY[0x1DA741080](&v10, 1238);
    sub_1D9D12280(&v10, ") [", 3);
    sub_1D9D12280(&v10, "(blob.size()) >= (header->model_proto_size)", 43);
    sub_1D9D12280(&v10, "] ", 2);
    sub_1D9D0CE90(&v9, a3);
  }

  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v14);
}

void sub_1D9D25C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D25D28(uint64_t a1)
{
  v2 = a1 + 96;
  MEMORY[0x1DA740EE0](a1 + 96);
  v3 = *(a1 + 119);
  if (v3 < 0)
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 104);
  }

  v4 = *(*a1 + 48);

  return v4(a1, v2, v3);
}

void sub_1D9D25ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D25EEC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sub_1D9D2AED8(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_1D9D12B94(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    v11 = sub_1D9D100A8(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_1D9D12280(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x1DA741080](&__p.__pn_.__r_.__value_.__r.__words[1], 66);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    sub_1D9D2B0B0(&__p.__pn_.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sub_1D9D0CE90(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v30);
    return;
  }

  sub_1D9D2AF20(a2, &v32);
  sub_1D9D2AFE8(a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__pn_.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D9D12B94(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    sub_1D9D100A8(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x1DA741080](&__p.__pn_.__r_.__value_.__r.__words[1], 59);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    sub_1D9D2B0B0(&__p.__pn_.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sub_1D9D0CE90(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D9D12B94(&__p, v31.__pn_.__r_.__value_.__l.__data_, v31.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v22 = sub_1D9D100A8(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_1D9D12280(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x1DA741080](&__p.__pn_.__r_.__value_.__r.__words[1], 70);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sub_1D9D3F470(a4);
        return;
      }

      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v23 = sub_1D9D100A8(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_1D9D12280(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x1DA741080](&__p.__pn_.__r_.__value_.__r.__words[1], 78);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
  sub_1D9D100A8(&__p.__pn_.__r_.__value_.__l.__size_);
  sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x1DA741080](&__p.__pn_.__r_.__value_.__r.__words[1], 64);
  sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
  sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "fd >= 0", 7);
  sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
  sub_1D9D12280(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  sub_1D9D2B0B0(&__p.__pn_.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sub_1D9D0CE90(&__p, a4);
  __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](v30);
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D26860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D26A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D26A58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 136))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D28538(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D26AD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 144))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26B38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D26B54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 176))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D28AAC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D26BD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 184))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D28B20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D26C4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D28538(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D26CC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26D2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D26D48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D28B74(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D26DC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D120BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D26E40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26EA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D26EC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26F24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D26F40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v3);
  return sub_1D9D3F478(&v3);
}

void sub_1D9D26FA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_1D9D26FC0(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sub_1D9D3F478(&v3);
  return v1;
}

void sub_1D9D27024(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &unk_1F554CD28;
  v12 = 0;
  v13 = 0;
  v11 = sub_1D9D32E18();
  v8 = sub_1D9D184F4(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  sub_1D9D4D8BC(v11, a4);
  sub_1D9D3F478(&v9);
  v10 = &unk_1F554CD28;
  if (v13)
  {
    sub_1D9D28BE8(v13);
  }
}

void sub_1D9D270FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1D9D3F478(&a10);
  if (a14)
  {
    sub_1D9D28BE8(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D27128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = &unk_1F554CD28;
  v16 = 0;
  v17 = 0;
  v15 = sub_1D9D32E18();
  v12 = sub_1D9D184F4(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  sub_1D9D4D8BC(v15, a5);
  sub_1D9D3F478(&v13);
  v14 = &unk_1F554CD28;
  if (v17)
  {
    sub_1D9D28BE8(v17);
  }
}

void sub_1D9D27218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1D9D3F478(&a10);
  if (a14)
  {
    sub_1D9D28BE8(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D27244(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = &unk_1F554CD48;
  v10 = sub_1D9D18614(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sub_1D9D18678(v12, a5);
  sub_1D9D3F478(&v11);
  v12[0] = &unk_1F554CD48;
  if (v13)
  {
    sub_1D9D28BE8(v13);
  }
}

void sub_1D9D2731C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_1D9D3F478(&a9);
  if (a12)
  {
    sub_1D9D28BE8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D27348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, float a8@<S0>)
{
  v18[1] = 0;
  v19 = 0;
  v18[0] = &unk_1F554CD48;
  v16 = sub_1D9D18614(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sub_1D9D18678(v18, a7);
  sub_1D9D3F478(&v17);
  v18[0] = &unk_1F554CD48;
  if (v19)
  {
    sub_1D9D28BE8(v19);
  }
}

void sub_1D9D27450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_1D9D3F478(&a9);
  if (a12)
  {
    sub_1D9D28BE8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D2747C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_1F554CD28;
  v10 = 0;
  v11 = 0;
  v9 = sub_1D9D32E18();
  v6 = sub_1D9D184F4(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  sub_1D9D4D8BC(v9, a3);
  sub_1D9D3F478(&v7);
  v8 = &unk_1F554CD28;
  if (v11)
  {
    sub_1D9D28BE8(v11);
  }
}

void sub_1D9D2754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1D9D3F478(&a10);
  if (a14)
  {
    sub_1D9D28BE8(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D27578(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_1F554CD28;
  v10 = 0;
  v11 = 0;
  v9 = sub_1D9D32E18();
  v6 = sub_1D9D184F4(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  sub_1D9D4D8BC(v9, a3);
  sub_1D9D3F478(&v7);
  v8 = &unk_1F554CD28;
  if (v11)
  {
    sub_1D9D28BE8(v11);
  }
}

void sub_1D9D27648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1D9D3F478(&a10);
  if (a14)
  {
    sub_1D9D28BE8(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D27674(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_1F554CD28;
  v10 = 0;
  v11 = 0;
  v9 = sub_1D9D32E18();
  v6 = sub_1D9D184F4(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  sub_1D9D4D8BC(v9, a3);
  sub_1D9D3F478(&v7);
  v8 = &unk_1F554CD28;
  if (v11)
  {
    sub_1D9D28BE8(v11);
  }
}

void sub_1D9D27744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1D9D3F478(&a10);
  if (a14)
  {
    sub_1D9D28BE8(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D27770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = &unk_1F554CD28;
  v8 = sub_1D9D32E18();
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v8;
  v9 = sub_1D9D184F4(a4);
  (*(*a1 + 232))(&v11, a1, a2, a3, v9);
  return sub_1D9D3F478(&v11);
}

void sub_1D9D27828(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D27844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, float a6@<S0>)
{
  *a5 = &unk_1F554CD28;
  v12 = sub_1D9D32E18();
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = v12;
  v13 = sub_1D9D184F4(a5);
  (*(*a1 + 248))(&v15, a1, a2, a3, a4, v13, a6);
  return sub_1D9D3F478(&v15);
}

void sub_1D9D27914(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D27930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = 0;
  a5[2] = 0;
  *a5 = &unk_1F554CD48;
  v9 = sub_1D9D18614(a5);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v9);
  return sub_1D9D3F478(&v11);
}

void sub_1D9D279E8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D27A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  a7[1] = 0;
  a7[2] = 0;
  *a7 = &unk_1F554CD48;
  v15 = sub_1D9D18614(a7);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v15, a8);
  return sub_1D9D3F478(&v17);
}

void sub_1D9D27AEC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D27B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F554CD28;
  v6 = sub_1D9D32E18();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_1D9D184F4(a3);
  (*(*a1 + 264))(&v9, a1, a2, v7);
  return sub_1D9D3F478(&v9);
}

void sub_1D9D27BB8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D27BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F554CD28;
  v6 = sub_1D9D32E18();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_1D9D184F4(a3);
  (*(*a1 + 272))(&v9, a1, a2, v7);
  return sub_1D9D3F478(&v9);
}

void sub_1D9D27C84(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D27CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F554CD28;
  v6 = sub_1D9D32E18();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_1D9D184F4(a3);
  (*(*a1 + 280))(&v9, a1, a2, v7);
  return sub_1D9D3F478(&v9);
}

void sub_1D9D27D50(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1D9D28BE8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D27D6C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D27E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D27E4C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1D9D12A0C(a1, a2);
  }

  sub_1D9D84AB0();
}

uint64_t sub_1D9D27E88(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D27F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D27F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1DA740F90](a1 + 2);

  return std::istream::~istream();
}

uint64_t sub_1D9D28030(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_1D9D2814C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D2820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D2822C(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v9 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 && a3)
  {
    v9 = 0;
    v13 = (a2 + a3);
    while (2)
    {
      v14 = &v9[a2];
      v15 = &v9[a2];
LABEL_5:
      v16 = a5;
      v17 = a4;
      while (*v15 != *v17)
      {
        ++v17;
        if (!--v16)
        {
          if (++v15 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }
      }

      if (v15 != v13)
      {
        v18 = &v15[-a2];
        if (&v15[-a2] != -1)
        {
          v19 = (v18 - v9);
          v20 = v18 >= v9;
          if (!a6)
          {
            v20 = v18 > v9;
          }

          if (v20)
          {
            v21 = (a3 - v9);
            if (v21 >= v19)
            {
              v21 = v19;
            }

            *&v23 = v14;
            *(&v23 + 1) = v21;
            sub_1D9D28370(a1, &v23);
          }

          v9 = v18 + 1;
          if (a3 > (v18 + 1))
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_19:
  if (a3 > v9)
  {
    *&v23 = &v9[a2];
    *(&v23 + 1) = a3 - v9;
    sub_1D9D28370(a1, &v23);
  }

  return a1;
}

void sub_1D9D28350(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D28370(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1D9D84AB0();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1D9D134C8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_1D9D28448(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D9D284EC(result, a2);
  }

  return result;
}

void sub_1D9D284EC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1D9D12920(a1, a2);
  }

  sub_1D9D84AB0();
}

void sub_1D9D28538(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D9D1C31C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1D9D2858C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D9D28604(result, a2);
  }

  return result;
}

void sub_1D9D285E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D28604(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D9D134C8(a1, a2);
  }

  sub_1D9D84AB0();
}

_BYTE *sub_1D9D28640(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_1D9D286F0(void *__src@<X0>, size_t __len@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D9D28640(&__dst, __src, __len);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_1D9D287E8(p_dst, size, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 1, a4);
    std::string::operator=(&__dst, a4);
    v7 += 32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D287BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D9D287E8(std::string::value_type *__s, std::string::size_type __n, char *a3, int64_t a4, const std::string::value_type *a5, std::string::size_type a6, char a7, std::string *this)
{
  if (a4)
  {
    v12 = 0;
    v13 = &__s[__n];
LABEL_3:
    v14 = __n - v12;
    if (__n < v12 || v14 < a4)
    {
LABEL_14:
      v14 = __n - v12;
    }

    else
    {
      v15 = *a3;
      v16 = (__n - v12);
      v17 = &__s[v12];
      do
      {
        v18 = &v16[-a4];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v15, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, a3, a4))
        {
          if (v20 != v13)
          {
            v21 = v20 - __s;
            if (v20 - __s != -1)
            {
              std::string::append(this, &__s[v12], v21 - v12);
              std::string::append(this, a5, a6);
              v12 = v21 + a4;
              if (a7)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v20 + 1;
        v16 = (v13 - (v20 + 1));
      }

      while (v16 >= a4);
    }

    v22 = &__s[v12];
    v23 = this;
    v24 = v14;
  }

  else
  {
    v23 = this;
    v22 = __s;
    v24 = __n;
  }

  return std::string::append(v23, v22, v24);
}

uint64_t sub_1D9D28924(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D9D28998(result, a4);
  }

  return result;
}

void sub_1D9D2897C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D28998(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1D9D289D4(a1, a2);
  }

  sub_1D9D84AB0();
}

void sub_1D9D289D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

void sub_1D9D28A1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1D9D28A78(exception, a1);
  __cxa_throw(exception, off_1E858DD40, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1D9D28A78(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_1D9D28AAC(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1D9D28538(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1D9D28B20(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D9D1D5E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D9D28B74(void ***a1)
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
        v4 -= 4;
        v6 = v4;
        sub_1D9D28538(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1D9D28BE8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1D9D28C54(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D28D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D28D90(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F554D030;
  sub_1D9D32CB4(a1 + 3, 0);
  return a1;
}

void sub_1D9D28E10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554D030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D28ECC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F554D080;
  sub_1D9D3377C(a1 + 3, 0);
  return a1;
}

void sub_1D9D28F4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554D080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D28FAC(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, char *a4@<X3>, void **a5@<X4>, std::string *a6@<X8>)
{
  sub_1D9D28640(&__dst, __src, __len);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  sub_1D9D290B0(v11, v12, a4, a5, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a6 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D2907C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D290B0(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, std::string *a5@<X8>)
{
  sub_1D9D28640(&__dst, __src, __len);
  v8 = strlen(a3);
  sub_1D9D291A4(a3, v8, a4, &__p);
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

  v11 = std::string::append(&__dst, p_p, size);
  *a5 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D29170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D291A4(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, std::string *a4@<X8>)
{
  sub_1D9D28640(&__dst, __src, __len);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  sub_1D9D28640(__p, v7, v8);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&__dst, v9, v10);
  *a4 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D2925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D29290(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1D9D29314(a1, v4, v6);
      v6 += 16;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_1D9D29314(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1D9D293AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1D9D293AC(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1D9D130E0(a1, a5, (a2 + 4)))
  {
    if (!sub_1D9D130E0(a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1D9D130E0(a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1D9D130E0(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1D9D12FEC(a1, a3, a5);
}

uint64_t sub_1D9D29550(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1D9D130E0(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_1D9D130E0(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_1D9D295E0(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1D9D10214((a1 + 3), 24);
  return a1;
}

void sub_1D9D2985C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D29884(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_1D9D299D4(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1D9D12B94(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1D9D29A34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1D9D29BD0(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1D9D29A94(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1D9D84AB0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1D9D29D98(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1D9D29BD0(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1D9D29DF0(&v14);
  return v8;
}

void sub_1D9D29BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D29DF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D29BD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D9D284EC(result, a4);
  }

  return result;
}

void sub_1D9D29C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D9D28538(&a9);
  _Unwind_Resume(a1);
}

char *sub_1D9D29C58(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
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
        sub_1D9D12B94(v4, *v6, *(v6 + 1));
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
  sub_1D9D29D18(v9);
  return v4;
}

uint64_t sub_1D9D29D18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D9D29D50(a1);
  }

  return a1;
}

void sub_1D9D29D50(uint64_t a1)
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

void sub_1D9D29D98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D9D10E9C();
}

void **sub_1D9D29DF0(void **a1)
{
  sub_1D9D29E24(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D29E24(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1D9D28538(&v5);
  }
}

uint64_t sub_1D9D29E78(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1D9D29FFC(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1D9D29ECC(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1D9D84AB0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1D9D2A078(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1D9D29FFC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1D9D2A0D0(&v14);
  return v8;
}

void sub_1D9D29FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D2A0D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D29FFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D9D27E4C(result, a4);
  }

  return result;
}

void sub_1D9D2A05C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2A078(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D2A0D0(uint64_t a1)
{
  sub_1D9D2A108(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D2A108(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void **sub_1D9D2A168(void **a1)
{
  sub_1D9D2A19C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D2A19C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1D9D28538(&v5);
  }
}

float sub_1D9D2A1F0(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_1D9D29BD0(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_1D9D2A264(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1D9D84AB0();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_1D9D11E00(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1D9D29BD0(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1D9D2A168(&v17);
  return v11;
}

void sub_1D9D2A378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D2A168(va);
  _Unwind_Resume(a1);
}

void sub_1D9D2A38C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D2A3D4(uint64_t a1)
{
  sub_1D9D2A40C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D2A40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

float sub_1D9D2A46C(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_1D9D29FFC(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_1D9D2A4D4(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1D9D84AB0();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_1D9D2A38C(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1D9D29FFC(v10, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1D9D2A3D4(&v17);
  return v11;
}

void sub_1D9D2A5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D2A3D4(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D2A5F0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D9D27E4C(result, a2);
  }

  return result;
}

void sub_1D9D2A6E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D2A704(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1D9D2A86C(a1, a2, a3, (a3 - a2) >> 2);
  sub_1D9D2A760(a1);
  return a1;
}

void sub_1D9D2A744(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2A760(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      sub_1D9D2A920(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      sub_1D9D2A9F4(&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t sub_1D9D2A86C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D9D2A8E4(result, a4);
  }

  return result;
}

void sub_1D9D2A8C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2A8E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1D9D12DA4(a1, a2);
  }

  sub_1D9D84AB0();
}

void sub_1D9D2A920(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1D9D12DA4(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_1D9D2A9F4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D9D2A8E4(result, a2);
  }

  return result;
}

void sub_1D9D2AA50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1D9D2AA6C(uint64_t a1, uint64_t a2, double **a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = sub_1D9D2AB1C(a2);
  v8 = sub_1D9D2AB1C(a2);
  if (v6 != v5)
  {
    v9 = v6 - v5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v5[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if ((v7 + v8 * 4294967300.0) * 5.42101086e-20 < v13)
      {
        v9 = v10;
      }

      else
      {
        v5 = v12;
      }
    }

    while (v9);
    v6 = v5;
  }

  return (v6 - *a3) >> 3;
}

uint64_t sub_1D9D2AB1C(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_1D9D2ABBC(uint64_t a1)
{
  sub_1D9D100A8(&v3);
  MEMORY[0x1DA741080](&v3, a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v7);
}

void sub_1D9D2AD0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D28030(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7411E0](v2 + 112);
  _Unwind_Resume(a1);
}

void *sub_1D9D2AD30(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_1D9D2ADB4(a1, v4, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1D9D2ADB4(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1D9D293AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1D9D2AE58(void *a1)
{
  sub_1D9D2AE90(a1);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D2AE90(void *a1)
{
  *a1 = &unk_1F554D0D0;
  sub_1D9D2AED8(a1);
  return a1;
}

void *sub_1D9D2AED8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

double sub_1D9D2AF20@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
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

double sub_1D9D2AFE8@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
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

void *sub_1D9D2B0B0(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = sub_1D9D12280(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1D9D2B194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D9D2B1B4(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_1D9D2B214(this, v3, v4);
  return this;
}

void sub_1D9D2B1F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D9D2B214(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_1D9D2B38C(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1D9D2B370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1D9D2B38C(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t sub_1D9D2B468(uint64_t a1)
{
  *a1 = &unk_1F554D100;
  sub_1D9D30710((a1 + 96));
  v4 = (a1 + 72);
  sub_1D9D28B20(&v4);
  v4 = (a1 + 48);
  sub_1D9D28B20(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D9D2B4EC(uint64_t a1)
{
  sub_1D9D2B468(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D2B524(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 48 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_1D9D2B600(void *a1)
{
  sub_1D9D1D5E8(a1 + 6);
  sub_1D9D1D5E8(a1 + 9);
  a1[1] = "";
  a1[2] = 0;
  a1[4] = a1[3];

  sub_1D9D2B658((a1 + 12));
}

void sub_1D9D2B658(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 + 1 < ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      bzero(*(*(a1 + 8) + v4), 48 * *(a1 + 48));
      v4 += 8;
    }

    while (v5 != v4);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

void sub_1D9D2B6D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_1D9D2B600(a1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_1D9D17ADC((a1 + 24), a3 + 1);
  for (; a3; a3 -= v6)
  {
    if (a3 >= asc_1D9DED443[*a2 >> 4])
    {
      v6 = asc_1D9DED443[*a2 >> 4];
    }

    else
    {
      v6 = a3;
    }

    v15 = a2;
    sub_1D9D2B854(a1 + 24, &v15);
    a2 += v6;
  }

  v15 = a2;
  sub_1D9D2B854(a1 + 24, &v15);
  v7 = ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
  v8 = v7 & ~(v7 >> 31);
  sub_1D9D2B928((a1 + 48), v8 + 1);
  sub_1D9D2B928((a1 + 72), v8 + 1);
  v9 = 0;
  do
  {
    sub_1D9D2B9D0((*(a1 + 48) + v9), 0x10uLL);
    sub_1D9D2B9D0((*(a1 + 72) + v9), 0x10uLL);
    v9 += 24;
  }

  while (24 * v8 + 24 != v9);
  v10 = sub_1D9D2B524((a1 + 96));
  v11 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v15 = v10;
  v10[6] = v11;
  v10[7] = -1;
  v10[4] = 0;
  sub_1D9D2BA70(*(a1 + 72), &v15);
  v12 = sub_1D9D2B524((a1 + 96));
  v13 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v14 = v12;
  v12[6] = v13;
  v12[7] = -1;
  v12[4] = v8;
  sub_1D9D2BA70(*(a1 + 48) + 24 * v8, &v14);
}

void sub_1D9D2B854(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1D9D84AB0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1D9D1360C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1D9D2B928(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1D9D307A4(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *sub_1D9D2B9D0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1D9D10ED0(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

void sub_1D9D2BA70(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1D9D84AB0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1D9D10ED0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1D9D2BB44(uint64_t a1, int a2, int a3)
{
  v6 = sub_1D9D2B524((a1 + 96));
  v7 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  *(v6 + 20) = a3;
  *(v6 + 24) = v7;
  v12 = v6;
  *(v6 + 16) = a2;
  v8 = *(a1 + 24);
  v9 = *(v8 + 8 * (a3 + a2));
  v10 = *(v8 + 8 * a2);
  *v6 = v10;
  *(v6 + 8) = v9 - v10;
  sub_1D9D2BA70(*(a1 + 48) + 24 * a2, &v12);
  sub_1D9D2BA70(*(a1 + 72) + 24 * (*(v12 + 20) + a2), &v12);
  return v12;
}

void sub_1D9D2BBF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = ((a1[4] - a1[3]) >> 3) - 1;
  v5 = v4 & ~(v4 >> 31);
  v6 = a1[6];
  while (1)
  {
    v7 = (v6 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    if (v8 != v9)
    {
      break;
    }

LABEL_14:
    if (++v3 == v5 + 1)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      v21 = *(v6 + 24 * v5);
      v22 = *(*v21 + 36);
      while (1)
      {
        v37 = *(*v21 + 40);
        if (!*(v37 + 40))
        {
          break;
        }

        v21 = &v37;
        sub_1D9D2BA70(&__p, &v37);
      }

      v30 = __p;
      v31 = v39;
      v32 = v39 - 8;
      if (__p != v39 && v32 > __p)
      {
        v34 = __p + 8;
        do
        {
          v35 = *(v34 - 1);
          *(v34 - 1) = *v32;
          *v32 = v35;
          v32 -= 8;
          v36 = v34 >= v32;
          v34 += 8;
        }

        while (!v36);
        v30 = __p;
        v31 = v39;
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_1D9D305A4(a2, v30, v31, (v31 - v30) >> 3);
      *(a2 + 24) = v22;
      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      return;
    }
  }

  v10 = (a1[9] + 24 * v3);
  v11 = *v10;
  v12 = v10[1];
  while (1)
  {
    v13 = *v8;
    *(*v8 + 40) = 0;
    if (v11 == v12)
    {
      break;
    }

    v14 = 0;
    v15 = 0.0;
    v16 = v11;
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = *(v18 + 36) + *(v13 + 32);
      if (v19 > v15 || v14 == 0)
      {
        v14 = v17;
        v15 = v19;
      }
    }

    while (v16 != v12);
    if (!v14)
    {
      break;
    }

    *(v13 + 40) = v14;
    *(v13 + 36) = v15;
    if (++v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    LOBYTE(__p) = 0;
    v23 = sub_1D9D12280(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v24 = sub_1D9D12280(v23, "(", 1);
    v25 = MEMORY[0x1DA741080](v24, 179);
    v26 = sub_1D9D12280(v25, ") ", 2);
    v27 = sub_1D9D12280(v26, "LOG(", 4);
    v28 = sub_1D9D12280(v27, "ERROR", 5);
    v29 = sub_1D9D12280(v28, ") ", 2);
    sub_1D9D12280(v29, "Failed to find the best path in Viterbi.", 40);
    sub_1D9D103D8(&__p);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void sub_1D9D2BE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2BE50(void *a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>)
{
  v5 = ((a1[4] - a1[3]) >> 3) - 1;
  sub_1D9D2A5F0(a2, a1[16] + a1[17] * a1[18]);
  v6 = 0;
  v25 = a1[6];
  v23 = a1;
  v24 = (v5 & ~(v5 >> 31)) + 1;
  do
  {
    v7 = (v25 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = v23[9] + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *a2;
      do
      {
        if (v12 != v11)
        {
          v14 = *(*v8 + 24);
          v15 = *v12;
          v16 = *(v13 + 4 * v14);
          v17 = v12;
          do
          {
            v18 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
            if (*v17 != v15)
            {
              if (v18 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
              }

              if (v16 >= v18)
              {
                v18 = v16;
              }

              if (v18 <= (v19 + 50.0))
              {
                v20 = v18;
                v21 = exp((v19 - v18));
                v18 = log(v21 + 1.0) + v20;
              }
            }

            *(v13 + 4 * v14) = v18;
            ++v17;
            v16 = v18;
          }

          while (v17 != v11);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }

    ++v6;
  }

  while (v6 != v24);
}

float sub_1D9D2BFD8(void *a1, float a2)
{
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[16] + a1[17] * a1[18];
  LODWORD(__p[0]) = 0;
  sub_1D9D2A5F0(v29, v6);
  sub_1D9D2BE50(a1, __p, a2);
  v7 = 0;
  v27 = a1[6];
  v25 = (((v4 - v5) >> 3) - 1) & ~((((v4 - v5) >> 3) - 1) >> 31);
  v26 = a1;
  do
  {
    v8 = (v27 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      v11 = (v26[9] + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = __p[0];
      v15 = v29[0];
      do
      {
        if (v12 != v13)
        {
          v16 = *(*v9 + 24);
          v17 = v15[v16];
          v18 = v12;
          do
          {
            v19 = *v18++;
            v20 = *(v19 + 24);
            v21 = (v14[v20] + (a2 * *(v19 + 32))) - v14[v16];
            v17 = v17 + (expf(v21) * (v21 + v15[v20]));
            v15[v16] = v17;
          }

          while (v18 != v13);
        }

        v9 += 8;
      }

      while (v9 != v10);
    }

    ++v7;
  }

  while (v7 != v25 + 1);
  v22 = v29[0];
  v23 = *(v29[0] + *(**(v27 + 24 * v25) + 24));
  if (!__p[0] || (__p[1] = __p[0], operator delete(__p[0]), (v22 = v29[0]) != 0))
  {
    v29[1] = v22;
    operator delete(v22);
  }

  return -v23;
}

void sub_1D9D2C17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2C198(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>, float a5@<S0>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v157 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    if ((a3 & 1) == 0)
    {
      sub_1D9D2BBF4(a1, &v153);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_1D9D30A68(a4, &v153, &v155[1], 1uLL);
      if (v153)
      {
        *&v154 = v153;
        operator delete(v153);
      }

      goto LABEL_128;
    }
  }

  else if (!a2)
  {
    if (sub_1D9D3D4EC() <= 1)
    {
      LOBYTE(v153) = 0;
      v10 = sub_1D9D12280(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
      v11 = sub_1D9D12280(v10, "(", 1);
      v12 = MEMORY[0x1DA741080](v11, 351);
      v13 = sub_1D9D12280(v12, ") ", 2);
      v14 = sub_1D9D12280(v13, "LOG(", 4);
      v15 = sub_1D9D12280(v14, "WARNING", 7);
      v16 = sub_1D9D12280(v15, ") ", 2);
      sub_1D9D12280(v16, "nbest_size >= 1. Returns empty result.", 38);
      sub_1D9D103D8(&v153);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_128;
  }

  v154 = 0u;
  memset(v155, 0, sizeof(v155));
  v153 = &unk_1F554D278;
  v156 = 512;
  v151 = 0;
  v152 = 0uLL;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v17 = sub_1D9D2D2A0(&v153);
  v147 = v17;
  v18 = ((v8[4] - v8[3]) >> 3) - 1;
  *v17 = **(v8[6] + 24 * (v18 & ~(v18 >> 31)));
  *(v17 + 8) = 0;
  *(v17 + 20) = 0;
  v19 = v8[16] + v8[17] * v8[18];
  *v139 = 0;
  sub_1D9D2A5F0(__p, v19);
  if (v6)
  {
    sub_1D9D2BE50(v8, v139, a5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v139;
    __p[2] = *&v139[16];
    v20 = sub_1D9D3D64C();
    v21 = sub_1D9D2AB1C(v20);
    v22 = logf((vcvts_n_f32_u32(v21, 0x20uLL) + 0.0) + 0.0000001);
    v23 = -logf(-v22);
  }

  else
  {
    sub_1D9D2BBF4(v8, v145);
    if (v145[0])
    {
      v145[1] = v145[0];
      operator delete(v145[0]);
    }

    v23 = *(*v17 + 36);
  }

  *(v17 + 16) = v23;
  sub_1D9D30968(&v151, &v147);
  v24 = v152;
  sub_1D9D30CA0(v151, v152, (v152 - v151) >> 3);
  v130 = 0;
  v129 = (10 * v7);
  if (10 * v7 >= 512)
  {
    v25 = 512;
  }

  else
  {
    v25 = 10 * v7;
  }

  v128 = v25;
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v133 = v26;
  v134 = v6;
  while (1)
  {
    v27 = v151;
    if (v151 == v24)
    {
      break;
    }

    v28 = *v151;
    v29 = (v24 - v151) >> 3;
    if (v29 >= 2)
    {
      v30 = 0;
      v31 = v151;
      do
      {
        v32 = v31;
        v31 += v30 + 1;
        v33 = 2 * v30;
        v30 = (2 * v30) | 1;
        v34 = v33 + 2;
        if (v34 < v29 && *(*v31 + 16) < *(v31[1] + 16))
        {
          ++v31;
          v30 = v34;
        }

        *v32 = *v31;
      }

      while (v30 <= ((v29 - 2) >> 1));
      v35 = v24 - 8;
      if (v31 == (v24 - 8))
      {
        *v31 = v28;
      }

      else
      {
        *v31 = *v35;
        *v35 = v28;
        sub_1D9D30CA0(v27, (v31 + 1), ((v31 + 1) - v27) >> 3);
      }
    }

    v24 = (v152 - 8);
    *&v152 = v152 - 8;
    v36 = *v28;
    v37 = v8[9];
    if (*v28 == **v37)
    {
      sub_1D9D2D360(a4, ((a4[1] - *a4) >> 5) + 1);
      v38 = (v28 + 1);
      while (1)
      {
        v39 = *v38;
        v40 = *v38;
        v41 = v40[1];
        v38 = (v40 + 1);
        if (!v41)
        {
          break;
        }

        sub_1D9D2BA70(a4[1] - 32, v39);
      }

      v42 = a4[1];
      *(v42 - 8) = *(v28 + 4);
      if (v7 == (v42 - *a4) >> 5)
      {
        break;
      }
    }

    else
    {
      v43 = (v37[3 * *(v36 + 16) + 1] - v37[3 * *(v36 + 16)]);
      *v139 = 0;
      sub_1D9D2A5F0(v144, v43);
      *v139 = 0;
      sub_1D9D2A5F0(v143, v43);
      v131 = v7;
      *v139 = 0;
      sub_1D9D30E24(&v141, v43);
      v44 = *(v36 + 16);
      v45 = v8[9];
      if (v6)
      {
        v46 = *(v45 + 24 * v44);
        v47 = -100000000.0;
        if (*(v45 + 24 * v44 + 8) != v46)
        {
          v48 = 0;
          v49 = *(__p[0] + *(v36 + 24));
          v47 = -100000000.0;
          do
          {
            v50 = ((*(v28 + 5) + *(__p[0] + *(*(v46 + 8 * v48) + 24))) + (a5 * *(*(v46 + 8 * v48) + 32))) - v49;
            *(v144[0] + v48) = v50;
            v51 = sub_1D9D3D64C();
            v52 = sub_1D9D2AB1C(v51);
            v53 = logf((vcvts_n_f32_u32(v52, 0x20uLL) + 0.0) + 0.0000001);
            v54 = v50 - logf(-v53);
            *(v143[0] + v48) = v54;
            if (v54 > v47)
            {
              v47 = v54;
            }

            ++v48;
            v55 = *(v36 + 16);
            v45 = v8[9];
            v46 = *(v45 + 24 * v55);
          }

          while (v48 < (*(v45 + 24 * v55 + 8) - v46) >> 3);
          v44 = *(v36 + 16);
        }

        v56 = v141;
        if (v142 != v141)
        {
          v57 = *(v28 + 4);
          v58 = v143[0];
          if (((v142 - v141) >> 3) <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = (v142 - v141) >> 3;
          }

          do
          {
            v60 = *v58++;
            v61 = expf(v60 - v47);
            v62 = (v57 - v60) + log1pf(-v61);
            v63 = v57 - fmaxf(v62, 0.0);
            v64 = expf(-fabsf(v62));
            *v56++ = (v63 - log1pf(v64));
            --v59;
          }

          while (v59);
        }

        v6 = v134;
      }

      v65 = *(v45 + 24 * v44);
      if (*(v45 + 24 * v44 + 8) != v65)
      {
        v66 = 0;
        do
        {
          v67 = *(v65 + 8 * v66);
          v68 = sub_1D9D2D2A0(&v153);
          *v139 = v68;
          *v68 = v67;
          if (v6)
          {
            *(v68 + 20) = *(v144[0] + v66);
            v69 = *(v141 + v66);
          }

          else
          {
            *(v68 + 20) = *(v67 + 32) + *(v28 + 5);
            v69 = *(v67 + 36) + *(v28 + 5);
          }

          *(v68 + 16) = v69;
          *(v68 + 8) = v28;
          sub_1D9D30968(&v151, v139);
          v24 = v152;
          sub_1D9D30CA0(v151, v152, (v152 - v151) >> 3);
          ++v66;
          v65 = *(v8[9] + 24 * *(v36 + 16));
        }

        while (v66 < (*(v8[9] + 24 * *(v36 + 16) + 8) - v65) >> 3);
      }

      v7 = v131;
      if (!(((v155[1] + v155[2] * v156) < 0x3B9ACA00) | v130 & 1))
      {
        if (sub_1D9D3D4EC() <= 1)
        {
          v139[0] = 0;
          v70 = sub_1D9D12280(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
          v71 = sub_1D9D12280(v70, "(", 1);
          v72 = MEMORY[0x1DA741080](v71, 475);
          v73 = sub_1D9D12280(v72, ") ", 2);
          v74 = sub_1D9D12280(v73, "LOG(", 4);
          v75 = sub_1D9D12280(v74, "WARNING", 7);
          v76 = sub_1D9D12280(v75, ") ", 2);
          v77 = sub_1D9D12280(v76, "Allocator size exceeds ", 23);
          v78 = MEMORY[0x1DA741080](v77, 1000000000);
          v79 = sub_1D9D12280(v78, " with an example of length ", 27);
          v80 = ((v8[4] - v8[3]) >> 3) - 1;
          MEMORY[0x1DA741080](v79, v80 & ~(v80 >> 31));
          sub_1D9D103D8(v139);
        }

        v130 = 1;
      }

      v81 = v151;
      if (((v24 - v151) >> 3) >> 4 < 0x271)
      {
        v6 = v134;
      }

      else
      {
        v149 = 0;
        v150 = 0uLL;
        memset(&v139[8], 0, 40);
        *v139 = &unk_1F554D278;
        v140 = 512;
        *v136 = 0u;
        v137 = 0u;
        v138 = 1065353216;
        ++HIDWORD(v129);
        if (sub_1D9D3D4EC() <= 1)
        {
          LOBYTE(v148) = 0;
          v82 = sub_1D9D12280(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
          v83 = sub_1D9D12280(v82, "(", 1);
          v84 = MEMORY[0x1DA741080](v83, 495);
          v85 = sub_1D9D12280(v84, ") ", 2);
          v86 = sub_1D9D12280(v85, "LOG(", 4);
          v87 = sub_1D9D12280(v86, "WARNING", 7);
          v88 = sub_1D9D12280(v87, ") ", 2);
          v89 = sub_1D9D12280(v88, "Too big agenda size ", 20);
          v90 = MEMORY[0x1DA7410A0](v89, (v24 - v81) >> 3);
          v91 = sub_1D9D12280(v90, ". Shrinking (round ", 19);
          v92 = MEMORY[0x1DA741080](v91, HIDWORD(v129));
          v93 = sub_1D9D12280(v92, ") down to ", 10);
          v94 = MEMORY[0x1DA741080](v93, v128);
          sub_1D9D12280(v94, ".", 1);
          sub_1D9D103D8(&v148);
        }

        if (v129 >= 1)
        {
          v127 = v8;
          v95 = 0;
          while (1)
          {
            v96 = v151;
            v97 = *v151;
            v148 = 0;
            if (!v97)
            {
              goto LABEL_101;
            }

            v98 = &v148;
            do
            {
              v99 = 0x9DDFEA08EB382D69 * ((8 * (v97 & 0x1FFFFFFF) + 8) ^ HIDWORD(v97));
              v100 = 0x9DDFEA08EB382D69 * (HIDWORD(v97) ^ (v99 >> 47) ^ v99);
              v101 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
              if (v136[1])
              {
                v102 = vcnt_s8(v136[1]);
                v102.i16[0] = vaddlv_u8(v102);
                if (v102.u32[0] > 1uLL)
                {
                  v103 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
                  if (v101 >= v136[1])
                  {
                    v103 = v101 % v136[1];
                  }
                }

                else
                {
                  v103 = v101 & (v136[1] - 1);
                }

                v104 = *(v136[0] + v103);
                if (v104)
                {
                  for (i = *v104; i; i = *i)
                  {
                    v106 = i[1];
                    if (v106 == v101)
                    {
                      if (i[2] == v97)
                      {
                        *v98 = i[3];
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                      if (v102.u32[0] > 1uLL)
                      {
                        if (v106 >= v136[1])
                        {
                          v106 %= v136[1];
                        }
                      }

                      else
                      {
                        v106 &= v136[1] - 1;
                      }

                      if (v106 != v103)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v107 = sub_1D9D2D2A0(v139);
              v108 = *v97;
              *(v107 + 16) = *(v97 + 16);
              *v107 = v108;
              *v98 = v107;
              if (!v136[1])
              {
                goto LABEL_99;
              }

              v109 = vcnt_s8(v136[1]);
              v109.i16[0] = vaddlv_u8(v109);
              if (v109.u32[0] > 1uLL)
              {
                v110 = v101;
                if (v101 >= v136[1])
                {
                  v110 = v101 % v136[1];
                }
              }

              else
              {
                v110 = (v136[1] - 1) & v101;
              }

              v111 = *(v136[0] + v110);
              if (!v111 || (v112 = *v111) == 0)
              {
LABEL_99:
                operator new();
              }

              while (1)
              {
                v113 = v112[1];
                if (v113 == v101)
                {
                  break;
                }

                if (v109.u32[0] > 1uLL)
                {
                  if (v113 >= v136[1])
                  {
                    v113 %= v136[1];
                  }
                }

                else
                {
                  v113 &= v136[1] - 1;
                }

                if (v113 != v110)
                {
                  goto LABEL_99;
                }

LABEL_98:
                v112 = *v112;
                if (!v112)
                {
                  goto LABEL_99;
                }
              }

              if (v112[2] != v97)
              {
                goto LABEL_98;
              }

              v97 = *(v97 + 8);
              v98 = (v107 + 8);
            }

            while (v97);
LABEL_101:
            v135 = v148;
            sub_1D9D30968(&v149, &v135);
            sub_1D9D30CA0(v149, v150, (v150 - v149) >> 3);
            v114 = (v24 - v96) >> 3;
            v6 = v134;
            v7 = v131;
            if (v114 >= 2)
            {
              v115 = 0;
              v116 = *v96;
              v117 = v96;
              do
              {
                v118 = v117;
                v117 += v115 + 1;
                v119 = 2 * v115;
                v115 = (2 * v115) | 1;
                v120 = v119 + 2;
                if (v120 < v114 && *(*v117 + 16) < *(v117[1] + 16))
                {
                  ++v117;
                  v115 = v120;
                }

                *v118 = *v117;
              }

              while (v115 <= ((v114 - 2) >> 1));
              v121 = v24 - 8;
              if (v117 == (v24 - 8))
              {
                *v117 = v116;
              }

              else
              {
                *v117 = *v121;
                *v121 = v116;
                sub_1D9D30CA0(v96, (v117 + 1), v117 + 1 - v96);
              }
            }

            v24 = (v152 - 8);
            *&v152 = v152 - 8;
            if (++v95 == v133)
            {
              v81 = v151;
              v8 = v127;
              goto LABEL_114;
            }
          }
        }

        v6 = v134;
LABEL_114:
        if (v81)
        {
          *&v152 = v81;
          operator delete(v81);
        }

        v151 = v149;
        v132 = v150;
        v152 = v150;
        v122 = v154;
        v154 = *&v139[8];
        *&v139[8] = v122;
        v123 = *&v139[24];
        v124 = v156;
        *&v139[24] = v155[0];
        v125 = *&v155[1];
        *&v155[1] = *&v139[32];
        *&v139[32] = v125;
        v155[0] = v123;
        v156 = v140;
        v140 = v124;
        sub_1D9D2D3FC(v136);
        sub_1D9D2D448(v139);
        v24 = v132;
      }

      if (v141)
      {
        v142 = v141;
        operator delete(v141);
      }

      if (v143[0])
      {
        v143[1] = v143[0];
        operator delete(v143[0]);
      }

      if (v144[0])
      {
        v144[1] = v144[0];
        operator delete(v144[0]);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v151)
  {
    operator delete(v151);
  }

  sub_1D9D2D448(&v153);
LABEL_128:
  v126 = *MEMORY[0x1E69E9840];
}

void sub_1D9D2D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51)
{
  sub_1D9D2D3FC(&a19);
  sub_1D9D2D448(&a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  v53 = *(v51 - 256);
  sub_1D9D120BC(&a25);
  if (v53)
  {
    operator delete(v53);
  }

  sub_1D9D2D448((v51 - 224));
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D2D2A0(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 24 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_1D9D2D360(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1D9D30CFC(a1, v5);
  }
}

uint64_t sub_1D9D2D3FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1D9D2D448(void *a1)
{
  *a1 = &unk_1F554D278;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1DA741250](*v2, 0x1020C8062D53EE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D9D2D4DC(void *a1@<X0>, unint64_t *a2@<X8>, float a3@<S0>)
{
  if ((((a1[4] - a1[3]) >> 3) - 1) <= 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6 = a1[16] + a1[17] * a1[18];
    LODWORD(__src[0]) = 0;
    sub_1D9D2A5F0(__p, v6);
    sub_1D9D2BE50(a1, __src, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v42 = v40;
    v7 = sub_1D9D3D64C();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    __src[0] = 0;
    __src[1] = 0;
    v40 = 0;
    v8 = ((a1[4] - a1[3]) >> 3) - 1;
    v9 = **(a1[6] + 24 * (v8 & ~(v8 >> 31)));
    v10 = *(__p[0] + *(v9 + 24));
    v38 = v9;
    do
    {
      v11 = __src[0];
      __src[1] = __src[0];
      v12 = (a1[9] + 24 * *(v38 + 16));
      v13 = *v12;
      v14 = v12[1];
      v15 = __src[0];
      if (*v12 != v14)
      {
        do
        {
          v16 = exp(((*(__p[0] + *(*v13 + 24)) + (a3 * *(*v13 + 32))) - v10));
          if (v11 >= v40)
          {
            v17 = __src[0];
            v18 = v11 - __src[0];
            v19 = (v11 - __src[0]) >> 2;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              sub_1D9D84AB0();
            }

            v21 = v40 - __src[0];
            if ((v40 - __src[0]) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              sub_1D9D12A0C(__src, v22);
            }

            v23 = v19;
            v24 = (4 * v19);
            v25 = &v24[-v23];
            *v24 = v16;
            v11 = v24 + 1;
            memcpy(v25, v17, v18);
            v26 = __src[0];
            __src[0] = v25;
            __src[1] = v11;
            v40 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v11++ = v16;
          }

          __src[1] = v11;
          v13 += 8;
        }

        while (v13 != v14);
        v15 = __src[0];
      }

      sub_1D9D2A704(v37, v15, v11);
      v27 = *(v38 + 16);
      v28 = a1[9];
      v29 = *(*(v28 + 24 * v27) + 8 * sub_1D9D2AA6C(v37, v7, v37));
      v38 = v29;
      v30 = **a1[9];
      if (v29 != v30)
      {
        v10 = *(__p[0] + *(v29 + 24));
        sub_1D9D2BA70(a2, &v38);
      }

      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }
    }

    while (v29 != v30);
    v32 = *a2;
    v31 = a2[1];
    if (*a2 != v31)
    {
      v33 = (v31 - 8);
      if (v33 > v32)
      {
        v34 = v32 + 8;
        do
        {
          v35 = *(v34 - 8);
          *(v34 - 8) = *v33;
          *v33-- = v35;
          v36 = v34 >= v33;
          v34 += 8;
        }

        while (!v36);
      }
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1D9D2D7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D2D854(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  v5 = ((a2[4] - a2[3]) >> 3) - 1;
  v6 = a2[1];
  v7 = a2[2];
  sub_1D9D12610(&__p, *(a1 + 92) + 1);
  v43 = v5;
  if (v5 < 1)
  {
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = v4 + -10.0;
  v42 = v6 + v7;
  do
  {
    v10 = *(a2[3] + 8 * v8);
    v11 = __p;
    v12 = (v47 - __p) >> 4;
    v13 = *(a1 + 40);
    v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
    if ((v42 - v10) << 32)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v10[v15];
        v18 = v14 ^ v17;
        v19 = v13[v18];
        if ((v19 & 0x800000FF) != v17)
        {
          break;
        }

        v14 = v18 ^ (v19 >> 10 << ((v19 >> 6) & 8));
        if ((v19 & 0x100) != 0)
        {
          if (v16 < v12)
          {
            v20 = &v11[16 * v16];
            *v20 = v13[v14] & 0x7FFFFFFF;
            *(v20 + 1) = v15 + 1;
          }

          ++v16;
        }

        ++v15;
      }

      while (v42 - v10 != v15);
    }

    else
    {
      v21 = *v10;
      if (*v10)
      {
        v16 = 0;
        v22 = 1;
        do
        {
          v23 = v14 ^ v21;
          v24 = v13[v23];
          if ((v24 & 0x800000FF) != v21)
          {
            break;
          }

          v14 = v23 ^ (v24 >> 10 << ((v24 >> 6) & 8));
          if ((v24 & 0x100) != 0)
          {
            if (v16 < v12)
            {
              v25 = &v11[16 * v16];
              *v25 = v13[v14] & 0x7FFFFFFF;
              *(v25 + 1) = v22;
            }

            ++v16;
          }

          v21 = v10[v22++];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }
    }

    if (v16 >= v12)
    {
      v45 = 1;
      v26 = sub_1D9D12280(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
      v27 = sub_1D9D12280(v26, "(", 1);
      v28 = MEMORY[0x1DA741080](v27, 572);
      v29 = sub_1D9D12280(v28, ") [", 3);
      v30 = sub_1D9D12280(v29, "(num_nodes) < (trie_results.size())", 35);
      sub_1D9D12280(v30, "] ", 2);
      sub_1D9D103D8(&v45);
    }

    if (!v16)
    {
LABEL_38:
      v41 = sub_1D9D2BB44(a2, v8, 1);
      *(v41 + 28) = *(a1 + 88);
      *(v41 + 32) = v9;
      goto LABEL_39;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      while (1)
      {
        v33 = (__p + 16 * v31);
        v34 = (a2[3] + v44);
        v35 = -1;
        do
        {
          v36 = *v34++;
          ++v35;
        }

        while (v36 < &v10[*(v33 + 1)]);
        v37 = *v33;
        if ((*(**(a1 + 8) + 128))(*(a1 + 8), v37))
        {
          break;
        }

        v38 = v8;
        v39 = sub_1D9D2BB44(a2, v8, v35);
        *(v39 + 28) = v37;
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v37))
        {
          v40 = (*(a1 + 108) * v35) + -0.1;
        }

        else
        {
          v40 = (*(**(a1 + 8) + 96))(*(a1 + 8), v37);
        }

        *(v39 + 32) = v40;
        if (!v32)
        {
          v32 = *(v39 + 20) == 1;
          v8 = v38;
          break;
        }

        ++v31;
        v32 = 1;
        v8 = v38;
        if (v31 == v16)
        {
          goto LABEL_39;
        }
      }

      ++v31;
    }

    while (v31 != v16);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_39:
    ++v8;
    v44 += 8;
  }

  while (v8 != v43);
LABEL_40:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_1D9D2DC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D2DC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9D2DDBC(a1);
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *v4 = &unk_1F554D120;
  *(v4 + 8) = a2 + 16;
  sub_1D9D0E29C(v4);
  v5 = 0;
  *(a1 + 104) = 0x8000007F7FFFFFLL;
  while (v5 < (*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if ((*(**(a1 + 8) + 104))(*(a1 + 8), v5))
    {
      v6 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (v6 >= *(a1 + 104))
      {
        v6 = *(a1 + 104);
      }

      *(a1 + 104) = v6;
      v7 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (*(a1 + 108) >= v7)
      {
        v7 = *(a1 + 108);
      }

      *(a1 + 108) = v7;
    }

    ++v5;
  }

  return a1;
}

uint64_t sub_1D9D2DDBC(uint64_t a1)
{
  *a1 = &unk_1F554CB40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F554CC60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F554CC60;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_1D9D3F470((a1 + 96));
  return a1;
}

void sub_1D9D2DE60(_Unwind_Exception *a1)
{
  sub_1D9D0C1C8(v3);
  sub_1D9D0C1C8(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    sub_1D9D12204(v1, v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D2DE94(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v7 = a4 > 7;
  if (a4 <= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - 8;
  }

  if (v7)
  {
    v9 = (a3 + 2);
  }

  else
  {
    v9 = "";
  }

  v10 = sub_1D9D0C22C(a1, a2, v9, v8);
  *v10 = &unk_1F554D120;
  *(v10 + 104) = 0;
  v11 = (v10 + 104);
  *(v10 + 108) = 0;
  v12 = (v10 + 108);
  *(v10 + 112) = 0;
  sub_1D9D3F68C(&v16, a1 + 12);
  v13 = v16;
  sub_1D9D3F478(&v16);
  if (!v13)
  {
    sub_1D9D2E004(a3, a4, v11, &v16);
    sub_1D9D3F690(a1 + 12, &v16);
    sub_1D9D3F478(&v16);
    (*(*a1 + 16))(&v16, a1);
    v14 = v16;
    sub_1D9D3F478(&v16);
    if (!v14)
    {
      sub_1D9D2E004(a3 + 1, a4 - 4, v12, &v16);
      sub_1D9D3F690(a1 + 12, &v16);
      sub_1D9D3F478(&v16);
    }
  }

  return a1;
}

void sub_1D9D2DFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D3F478(va);
  sub_1D9D0D13C(v2);
  _Unwind_Resume(a1);
}

void *sub_1D9D2E004@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1D9D100A8(&v8);
    sub_1D9D12280(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1D9D12280(&v8, "(", 1);
    MEMORY[0x1DA741080](&v8, 448);
    sub_1D9D12280(&v8, ") [", 3);
    sub_1D9D12280(&v8, "string.size() >= sizeof(T)", 26);
    sub_1D9D12280(&v8, "] ", 2);
    sub_1D9D0CE90(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1DA7411E0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_1D9D3F470(a4);
  }
}

void sub_1D9D2E218(void *a1)
{
  sub_1D9D0D13C(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D2E250(_DWORD *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1[28])
  {
    (*(*a1 + 16))(&v23, a1);
    if (v23)
    {
      sub_1D9D3F478(&v23);
LABEL_4:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    sub_1D9D3F478(&v23);
    if (!a3)
    {
      goto LABEL_4;
    }

    v23 = &unk_1F554D100;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = &unk_1F554D248;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v34 = 1024;
    sub_1D9D2B6D4(&v23, a2, a3);
    sub_1D9D2D854(a1, &v23);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sub_1D9D2BBF4(&v23, &v21);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = *(a4 + 8);
      do
      {
        v11 = *v8;
        v12 = *(a4 + 16);
        if (v10 >= v12)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1D9D84AB0();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            sub_1D9D11FDC(a4, v16);
          }

          v17 = 24 * v13;
          *v17 = *v11;
          *(v17 + 16) = *(v11 + 28);
          v10 = 24 * v13 + 24;
          v18 = *(a4 + 8) - *a4;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a4, v18);
          v20 = *a4;
          *a4 = v19;
          *(a4 + 8) = v10;
          *(a4 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = *v11;
          *(v10 + 16) = *(v11 + 28);
          v10 += 24;
        }

        *(a4 + 8) = v10;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }

    sub_1D9D2B468(&v23);
  }

  else
  {

    sub_1D9D2E540(a1, a2, a3, a4);
  }
}

void sub_1D9D2E4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sub_1D9D2B468(&a13);
  _Unwind_Resume(a1);
}

void sub_1D9D2E540(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  (*(*a1 + 16))(&v52);
  if (v52)
  {
    sub_1D9D3F478(&v52);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sub_1D9D3F478(&v52);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a3 << 32 != 0xFFFFFFFF00000000)
  {
    if ((((a3 << 32) + 0x100000000) >> 32) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (a3 <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 104) + -10.0;
    v10 = a3 & 0x7FFFFFFF;
    v49 = -v10;
    v50 = a4;
    v51 = a3;
    v47 = v10;
    v48 = a2;
    do
    {
      v11 = *(12 * v8 + 4);
      if (a3 - v8 >= asc_1D9DED443[*(a2 + v8) >> 4])
      {
        v12 = asc_1D9DED443[*(a2 + v8) >> 4];
      }

      else
      {
        v12 = a3 - v8;
      }

      if (v10 <= v8)
      {
        goto LABEL_27;
      }

      v13 = 0;
      v14 = 0;
      v15 = (12 * v8 + 20);
      v16 = 1;
      do
      {
        v17 = *(a1 + 40);
        v18 = *(a2 + v8 + v16 - 1);
        LODWORD(v14) = (*(v17 + 4 * v14) >> 10 << ((*(v17 + 4 * v14) >> 6) & 8)) ^ v14 ^ v18;
        v19 = *(v17 + 4 * v14);
        if ((v19 & 0x800000FF) != v18)
        {
          break;
        }

        if ((v19 & 0x100) != 0)
        {
          v20 = *(v17 + 4 * ((v19 >> 10 << ((v19 >> 6) & 8)) ^ v14)) & 0x7FFFFFFF;
          if (((*(**(a1 + 8) + 128))(*(a1 + 8), v20) & 1) == 0)
          {
            if ((*(**(a1 + 8) + 136))(*(a1 + 8), v20))
            {
              v21 = (*(a1 + 108) * v16) + -0.1;
            }

            else
            {
              v21 = (*(**(a1 + 8) + 96))(*(a1 + 8), v20);
            }

            v22 = v21 + v11;
            if (*v15 == -1 || v22 > *(v15 - 1))
            {
              v23 = v22;
              *(v15 - 1) = v23;
              *v15 = v8;
              *(v15 - 2) = v20;
            }

            v13 |= v12 == v16;
          }
        }

        ++v16;
        v15 += 3;
      }

      while (v49 + v8 + v16 != 1);
      a3 = v51;
      v10 = v47;
      a2 = v48;
      if ((v13 & 1) == 0)
      {
LABEL_27:
        v24 = v9 + v11;
        if (*(12 * (v12 + v8) + 8) == -1 || v24 > *(12 * (v12 + v8) + 4))
        {
          *(12 * (v12 + v8) + 4) = v24;
          *(12 * (v12 + v8) + 8) = v8;
          *(12 * (v12 + v8)) = *(a1 + 88);
        }
      }

      v8 += v12;
    }

    while (v8 < a3);
    v26 = 0;
    v27 = v50;
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
    v28 = a3;
    do
    {
      v29 = 12 * v28;
      v30 = *(v29 + 8);
      if (a3 < v30)
      {
        sub_1D9D28A1C("string_view::substr");
      }

      v31 = v28 - v30;
      v32 = a2 + v30;
      if (a3 - v30 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = a3 - v30;
      }

      v34 = v27[2];
      if (v26 >= v34)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v27) >> 3);
        v36 = v35 + 1;
        if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D9D84AB0();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v27) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          sub_1D9D11FDC(v27, v38);
        }

        v39 = 24 * v35;
        *v39 = v32;
        *(v39 + 8) = v33;
        *(v39 + 16) = *v29;
        v26 = 24 * v35 + 24;
        v40 = v50[1] - *v50;
        v41 = v39 - v40;
        memcpy((v39 - v40), *v50, v40);
        v42 = *v50;
        *v50 = v41;
        v50[1] = v26;
        v50[2] = 0;
        v27 = v50;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v26 = v32;
        *(v26 + 8) = v33;
        *(v26 + 16) = *v29;
        v26 += 24;
      }

      a3 = v51;
      v27[1] = v26;
      v28 = *(v29 + 8);
    }

    while (v28 > 0);
    v43 = *v27;
    if (*v27 == v26 || (v44 = v26 - 24, v26 - 24 <= v43))
    {
      operator delete(0);
    }

    else
    {
      do
      {
        v52 = *v43;
        v45 = v52;
        *v43 = *v44;
        *v44 = v45;
        v46 = *(v43 + 16);
        *(v43 + 16) = *(v44 + 16);
        *(v44 + 16) = v46;
        v43 += 24;
        v44 -= 24;
      }

      while (v43 < v44);
    }
  }
}

void sub_1D9D2EA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  v17 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v17;
    operator delete(v17);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1D9D2EAA0(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(__p);
  if (__p[0])
  {
    sub_1D9D3F478(__p);
    goto LABEL_3;
  }

  sub_1D9D3F478(__p);
  if (!a3)
  {
LABEL_3:
    memset(__p, 0, 24);
    sub_1D9D11F10(__p, 0, 0, 0);
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_1D9D11D3C(a5, __p, &__p[4], 1uLL);
    v10 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
LABEL_5:
      operator delete(v10);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a4 >= 1024)
  {
    v12 = 1024;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a4 > 1)
  {
    __p[0] = &unk_1F554D100;
    memset(&__p[1], 0, 88);
    __p[12] = &unk_1F554D248;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v37 = 1024;
    sub_1D9D2B6D4(__p, a2, a3);
    sub_1D9D2D854(a1, __p);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_1D9D2C198(__p, v13, 0, &v31, 0.0);
    v27 = *(&v31 + 1);
    for (i = v31; i != v27; i += 32)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v15 = *i;
      v16 = *(i + 8);
      if (*i != v16)
      {
        v17 = 0;
        do
        {
          v18 = *v15;
          if (v17 >= v30)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v28) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1D9D84AB0();
            }

            if (0x5555555555555556 * ((v30 - v28) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v30 - v28) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v30 - v28) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              sub_1D9D11FDC(&v28, v21);
            }

            v22 = 24 * v19;
            *v22 = *v18;
            *(v22 + 16) = *(v18 + 28);
            v17 = 24 * v19 + 24;
            v23 = (v22 - (v29 - v28));
            memcpy(v23, v28, v29 - v28);
            v24 = v28;
            v28 = v23;
            v29 = v17;
            v30 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v17 = *v18;
            *(v17 + 16) = *(v18 + 28);
            v17 += 24;
          }

          v29 = v17;
          ++v15;
        }

        while (v15 != v16);
      }

      v25 = a5[1];
      if (v25 >= a5[2])
      {
        v26 = sub_1D9D30F70(a5, &v28, (i + 24));
      }

      else
      {
        sub_1D9D30EFC(a5, &v28, (i + 24));
        v26 = (v25 + 32);
      }

      a5[1] = v26;
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }

    v28 = &v31;
    sub_1D9D120BC(&v28);
    sub_1D9D2B468(__p);
  }

  else
  {
    (*(*a1 + 40))(&v31, a1, a2, a3);
    *__p = v31;
    __p[2] = v32;
    v32 = 0;
    v31 = 0uLL;
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_1D9D11D3C(a5, __p, &__p[4], 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = v31;
    if (v31)
    {
      *(&v31 + 1) = v31;
      goto LABEL_5;
    }
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1D9D2EEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a12 = a11;
  sub_1D9D120BC(&a12);
  sub_1D9D2B468(&__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D2EF48@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(&v26);
  if (v26)
  {
    result = sub_1D9D3F478(&v26);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  result = sub_1D9D3F478(&v26);
  if (!a3)
  {
    goto LABEL_3;
  }

  v26 = &unk_1F554D100;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = &unk_1F554D248;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 1024;
  sub_1D9D2B6D4(&v26, a2, a3);
  sub_1D9D2D854(a1, &v26);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_1D9D2D4DC(&v26, &v24, a5);
  v11 = v24;
  v12 = v25;
  if (v24 != v25)
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = *(a4 + 16);
      if (v13 >= v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D9D84AB0();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_1D9D11FDC(a4, v19);
        }

        v20 = 24 * v16;
        *v20 = *v14;
        *(v20 + 16) = *(v14 + 28);
        v13 = 24 * v16 + 24;
        v21 = *(a4 + 8) - *a4;
        v22 = v20 - v21;
        memcpy((v20 - v21), *a4, v21);
        v23 = *a4;
        *a4 = v22;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v13 = *v14;
        *(v13 + 16) = *(v14 + 28);
        v13 += 24;
      }

      *(a4 + 8) = v13;
      ++v11;
    }

    while (v11 != v12);
    v11 = v24;
  }

  if (v11)
  {
    v25 = v11;
    operator delete(v11);
  }

  return sub_1D9D2B468(&v26);
}

void sub_1D9D2F1F8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t *j@<X8>, float a8@<S0>)
{
  v14 = a1;
  (*(*a1 + 16))(&v123);
  if (v123)
  {
    sub_1D9D3F478(&v123);
LABEL_3:
    *j = 0;
    j[1] = 0;
    j[2] = 0;
    return;
  }

  sub_1D9D3F478(&v123);
  if (!a3)
  {
    goto LABEL_3;
  }

  v135 = 0;
  v136 = 0;
  v137 = 0;
  v123 = &unk_1F554D100;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0;
  v130 = &unk_1F554D248;
  v131 = 0u;
  v132 = 0u;
  v133 = 0;
  v134 = 1024;
  sub_1D9D2B6D4(&v123, a2, a3);
  sub_1D9D2D854(v14, &v123);
  sub_1D9D2BE50(&v123, v122, a8);
  v16 = *(v122[0] + *(**(*(&v126 + 1) + 24 * ((((*(&v125 + 1) - v125) >> 3) - 1) & ~((((*(&v125 + 1) - v125) >> 3) - 1) >> 31))) + 24));
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v97 = a2;
    v99 = a3;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    sub_1D9D2BBF4(&v123, &__p);
    v101 = v14;
    v17 = __p;
    v18 = v106;
    if (__p != v106)
    {
      v19 = v120;
      do
      {
        v20 = *v17;
        if (v19 >= v121)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v119) >> 3);
          v22 = v21 + 1;
          if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1D9D84AB0();
          }

          if (0x5555555555555556 * ((v121 - v119) >> 3) > v22)
          {
            v22 = 0x5555555555555556 * ((v121 - v119) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v121 - v119) >> 3) >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_1D9D11FDC(&v119, v23);
          }

          v24 = 24 * v21;
          *v24 = *v20;
          *(v24 + 16) = v20[1].n128_u32[3];
          v19 = (24 * v21 + 24);
          v25 = (v24 - (v120 - v119));
          memcpy(v25, v119, v120 - v119);
          v26 = v119;
          v119 = v25;
          v120 = v19;
          v121 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v19 = *v20;
          v19[1].n128_u32[0] = v20[1].n128_u32[3];
          v19 = (v19 + 24);
        }

        v120 = v19;
        ++v17;
      }

      while (v17 != v18);
    }

    v117 = 0.0;
    v27 = v136;
    if (v136 >= v137)
    {
      v29 = sub_1D9D31098(&v135, &v119, &v117);
    }

    else
    {
      *v136 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      sub_1D9D11F10(v27, v119, v120, 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3));
      v28 = v117;
      *(v27 + 24) = v28;
      v29 = (v27 + 32);
    }

    a2 = v97;
    a3 = v99;
    v14 = v101;
    v136 = v29;
    if (__p)
    {
      *&v106 = __p;
      operator delete(__p);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

LABEL_31:
    if (a5)
    {
      sub_1D9D2C198(&v123, a4 + 1, 1, &v119, a8);
      v96 = j;
      if (a6)
      {
        sub_1D9D311C4(&v117, (v120 - v119) >> 5);
        v38 = v119;
        v37 = v120;
        if (v120 != v119)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          do
          {
            if (&v38[v39] != (*&v117 + v40))
            {
              sub_1D9D312B4((*&v117 + v40), v38[v39].n128_u64[0], v38[v39].n128_u64[1], (v38[v39].n128_u64[1] - v38[v39].n128_u64[0]) >> 3);
              v38 = v119;
              v37 = v120;
            }

            ++v41;
            v40 += 24;
            v39 += 2;
          }

          while (v41 < (v37 - v38) >> 5);
        }

        sub_1D9D2BBF4(&v123, &__p);
        v42 = v117;
        v43 = v118;
        if (*&v117 == *&v118)
        {
          v46 = v117;
        }

        else
        {
          v44 = __p;
          v45 = v106 - __p;
          v46 = v117;
          while (*(*&v46 + 8) - **&v46 != v45 || memcmp(**&v46, v44, v45))
          {
            *&v46 += 24;
            if (*&v46 == *&v43)
            {
              v46 = v43;
              break;
            }
          }
        }

        v62 = 0xAAAAAAAAAAAAAAABLL * ((*&v46 - *&v42) >> 3);
        v63 = v120;
        if (v62 == (v120 - v119) >> 5)
        {
          v65 = v120 - 2;
          v64 = v120[-2].n128_u64[0];
          if (v64)
          {
            v120[-2].n128_u64[1] = v64;
            operator delete(v64);
          }
        }

        else
        {
          v65 = &v119[2 * v62];
          if (&v65[2] != v120)
          {
            do
            {
              v66 = v65 + 2;
              sub_1D9D313E0(v65, v65 + 2);
              v65[1].n128_u32[2] = v65[3].n128_u32[2];
              v67 = v65 + 4;
              v65 += 2;
            }

            while (v67 != v63);
            v63 = v120;
            v65 = v66;
          }

          if (v63 != v65)
          {
            v68 = v63;
            do
            {
              v70 = v68[-2].n128_u64[0];
              v68 -= 2;
              v69 = v70;
              if (v70)
              {
                v63[-2].n128_u64[1] = v69;
                operator delete(v69);
              }

              v63 = v68;
            }

            while (v68 != v65);
          }
        }

        v120 = v65;
        if (__p)
        {
          *&v106 = __p;
          operator delete(__p);
        }

        __p = &v117;
        sub_1D9D28B20(&__p);
      }

      v71 = v120[-2].n128_u64[0];
      v103 = v120 - 2;
      v72 = v120[-1].n128_f32[2];
      if (v71)
      {
        v120[-2].n128_u64[1] = v71;
        operator delete(v71);
      }

      v120 = v103;
      for (i = v119; i != v103; i += 2)
      {
        __p = 0;
        v106 = 0uLL;
        v74 = i->n128_u64[0];
        v75 = i->n128_i64[1];
        if (i->n128_u64[0] == v75)
        {
          v77 = 0.0;
        }

        else
        {
          v76 = 0;
          v77 = 0.0;
          do
          {
            v78 = *v74;
            v79 = *(*v74 + 32);
            if (v76 >= *(&v106 + 1))
            {
              v80 = 0xAAAAAAAAAAAAAAABLL * ((v76 - __p) >> 3);
              v81 = v80 + 1;
              if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1D9D84AB0();
              }

              if (0x5555555555555556 * ((*(&v106 + 1) - __p) >> 3) > v81)
              {
                v81 = 0x5555555555555556 * ((*(&v106 + 1) - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v106 + 1) - __p) >> 3) >= 0x555555555555555)
              {
                v82 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v82 = v81;
              }

              if (v82)
              {
                sub_1D9D11FDC(&__p, v82);
              }

              v83 = 24 * v80;
              *v83 = *v78;
              *(v83 + 16) = *(v78 + 28);
              v76 = 24 * v80 + 24;
              v84 = (v83 - (v106 - __p));
              memcpy(v84, __p, v106 - __p);
              v85 = __p;
              __p = v84;
              v106 = v76;
              if (v85)
              {
                operator delete(v85);
              }
            }

            else
            {
              *v76 = *v78;
              *(v76 + 16) = *(v78 + 28);
              v76 += 24;
            }

            *&v106 = v76;
            v77 = v77 + (a8 * v79);
            ++v74;
          }

          while (v74 != v75);
        }

        *&v117 = v77 - v16;
        v86 = v136;
        if (v136 >= v137)
        {
          v87 = sub_1D9D31434(&v135, &__p, &v117);
        }

        else
        {
          *v136 = 0;
          *(v86 + 8) = 0;
          *(v86 + 16) = 0;
          sub_1D9D11F10(v86, __p, v106, 0xAAAAAAAAAAAAAAABLL * ((v106 - __p) >> 3));
          *(v86 + 24) = LODWORD(v117);
          v87 = (v86 + 32);
        }

        v136 = v87;
        if (__p)
        {
          *&v106 = __p;
          operator delete(__p);
        }
      }

      v88 = v135;
      v89 = v136;
      for (j = v96; v88 != v89; v88 += 32)
      {
        v90 = *(v88 + 24);
        if (v90 != 0.0)
        {
          v91 = v90 - v72;
          v92 = exp(v91);
          if (v91 <= -10.0)
          {
            v94 = v91 + v92 * -0.5 + v92 * v92 / 24.0 + pow(v92, 4.0) / -2880.0;
          }

          else
          {
            v93 = expm1(-v92);
            v94 = log(-v93);
          }

          v95 = v94;
          *(v88 + 24) = v95;
        }
      }

      __p = &v119;
      sub_1D9D120BC(&__p);
      v48 = v135;
      v47 = v136;
    }

    else
    {
      v48 = v135;
      v47 = v136;
      if (a4 > (&v136[-v135] >> 5))
      {
        v98 = a2;
        v100 = a3;
        v102 = v14;
        do
        {
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0;
          __p = &unk_1F554D100;
          v112 = &unk_1F554D248;
          v113 = 0u;
          v114 = 0u;
          v115 = 0;
          v116 = 1024;
          sub_1D9D2B6D4(&__p, a2, a3);
          sub_1D9D2D854(v14, &__p);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          sub_1D9D2D4DC(&__p, &v117, a8);
          v50 = v117;
          v49 = v118;
          v51 = 0.0;
          if (*&v117 != *&v118)
          {
            v52 = v120;
            do
            {
              v53 = **&v50;
              if (v52 >= v121)
              {
                v54 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v119) >> 3);
                v55 = v54 + 1;
                if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1D9D84AB0();
                }

                if (0x5555555555555556 * ((v121 - v119) >> 3) > v55)
                {
                  v55 = 0x5555555555555556 * ((v121 - v119) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v121 - v119) >> 3) >= 0x555555555555555)
                {
                  v56 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v56 = v55;
                }

                if (v56)
                {
                  sub_1D9D11FDC(&v119, v56);
                }

                v57 = 24 * v54;
                *v57 = *v53;
                *(v57 + 16) = v53[1].n128_u32[3];
                v52 = (24 * v54 + 24);
                v58 = (v57 - (v120 - v119));
                memcpy(v58, v119, v120 - v119);
                v59 = v119;
                v119 = v58;
                v120 = v52;
                v121 = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v52 = *v53;
                v52[1].n128_u32[0] = v53[1].n128_u32[3];
                v52 = (v52 + 24);
              }

              v120 = v52;
              v51 = v51 + (a8 * v53[2].n128_f32[0]);
              *&v50 += 8;
            }

            while (*&v50 != *&v49);
          }

          v104 = v51 - v16;
          v60 = v136;
          if (v136 >= v137)
          {
            v61 = sub_1D9D31434(&v135, &v119, &v104);
            v14 = v102;
          }

          else
          {
            *v136 = 0;
            *(v60 + 8) = 0;
            *(v60 + 16) = 0;
            sub_1D9D11F10(v60, v119, v120, 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3));
            v14 = v102;
            *(v60 + 24) = v104;
            v61 = (v60 + 32);
          }

          a2 = v98;
          a3 = v100;
          v136 = v61;
          if (v117 != 0.0)
          {
            v118 = v117;
            operator delete(*&v117);
          }

          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          sub_1D9D2B468(&__p);
          v48 = v135;
          v47 = v136;
        }

        while (a4 > (&v136[-v135] >> 5));
      }
    }

    *j = v48;
    j[1] = v47;
    j[2] = v137;
    j = &v135;
    goto LABEL_120;
  }

  if (sub_1D9D3D4EC() <= 2)
  {
    LOBYTE(__p) = 0;
    v30 = sub_1D9D12280(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v31 = sub_1D9D12280(v30, "(", 1);
    v32 = MEMORY[0x1DA741080](v31, 717);
    v33 = sub_1D9D12280(v32, ") ", 2);
    v34 = sub_1D9D12280(v33, "LOG(", 4);
    v35 = sub_1D9D12280(v34, "ERROR", 5);
    v36 = sub_1D9D12280(v35, ") ", 2);
    sub_1D9D12280(v36, "include_best not supported for wor false", 40);
    sub_1D9D103D8(&__p);
  }

LABEL_120:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  if (v122[0])
  {
    v122[1] = v122[0];
    operator delete(v122[0]);
  }

  sub_1D9D2B468(&v123);
  v123 = &v135;
  sub_1D9D120BC(&v123);
}