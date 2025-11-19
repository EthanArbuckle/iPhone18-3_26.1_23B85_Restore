size_t *sub_255BE9CD0(size_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  a1[1] = 0;
  a1[2] = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_255C07708(v6, v3[2], v4);
    }

    v3[1] = memptr;
  }

  v7 = *(a2 + 24);
  v3[5] = *(a2 + 40);
  *(v3 + 3) = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 44) >> 1;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 28) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 32))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 24);
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  v89 = *(a2 + 44) >> 1;
  v91 = v15 * v10;
  if (v15 * v10 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v16 = qword_27F7DD608, v17 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_27:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_28;
      }
    }

    else
    {
      v16 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_113;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v15)
  {
    v18 = HIDWORD(v14) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v14 == 0)
  {
    return v3;
  }

  v20 = v3[1];
  v21 = *(v3 + 36);
  v22 = *(v3 + 11) >> 1;
  if (*(v3 + 7))
  {
    v23 = *(v3 + 6) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v3 + 8);
  if (v23)
  {
    v24 = 0;
  }

  if (v24 * v22 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    v85 = v3;
    v87 = v22;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v25 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_48:
        v3 = v85;
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v22 = v87;
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27F7DD608;
      v26 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_113;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_27F7DD630)
    {
      goto LABEL_48;
    }

LABEL_113:
    abort();
  }

LABEL_49:
  v27 = v9 & 0xFFFFFFFE;
  v28 = v21 & 0xFFFFFFFE;
  v29 = v9 >> 33;
  v30 = v21 >> 33;
  if (v27 != 2 || v28 != 2)
  {
    v33 = v14 - 1;
    v34 = HIDWORD(v14) - 1;
    v35 = v15 - 1;
    if (v15 == 1)
    {
      v36 = v9;
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
LABEL_105:
          *v20 = *v8;
          return v3;
        }

        v56 = v9 >> 1;
        do
        {
LABEL_92:
          *v20 = *v8;
          v8 += v56;
          v20 = (v20 + v28);
          --v33;
        }

        while (v33);
        goto LABEL_105;
      }
    }

    else
    {
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
          do
          {
            *v20 = *v8;
            v8 += v89;
            v20 += v22;
            --v35;
          }

          while (v35);
          goto LABEL_105;
        }

        v75 = 0;
        v56 = v9 >> 1;
        do
        {
          v76 = v20;
          v77 = v8;
          v78 = v14 - 1;
          do
          {
            *v76 = *v77;
            v77 = (v77 + v27);
            v76 = (v76 + v28);
            --v78;
          }

          while (v78);
          *v76 = *v77;
          v8 += v89;
          v20 += v22;
          ++v75;
        }

        while (v75 != v35);
        goto LABEL_92;
      }

      if (v14 == 1)
      {
        v79 = 0;
        do
        {
          v80 = v20;
          v81 = v8;
          v82 = HIDWORD(v14) - 1;
          do
          {
            *v80 = *v81;
            v81 += v29;
            v80 += v30;
            --v82;
          }

          while (v82);
          *v80 = *v81;
          v8 += v89;
          v20 += v22;
          ++v79;
        }

        while (v79 != v35);
        goto LABEL_98;
      }

      v36 = v9;
      v37 = 0;
      v38 = 2 * v89;
      v39 = v29;
      v40 = 2 * v22;
      v41 = v30;
      v42 = &v8[v29];
      v43 = &v20[v30];
      do
      {
        v44 = 0;
        v45 = v43;
        v46 = v42;
        v47 = v20;
        v48 = v8;
        do
        {
          v49 = v46;
          v50 = v45;
          v51 = v47;
          v52 = v48;
          v53 = v14 - 1;
          do
          {
            *v51 = *v52;
            v52 = (v52 + v27);
            v51 = (v51 + v28);
            --v53;
          }

          while (v53);
          *v51 = *v52;
          v48 = (v48 + v39 * 2);
          v47 = (v47 + v41 * 2);
          ++v44;
          v46 = &v49[v39];
          v45 = &v50[v41];
        }

        while (v44 != v34);
        v54 = v14 - 1;
        do
        {
          *v50 = *v49;
          v49 = (v49 + v27);
          v50 = (v50 + v28);
          --v54;
        }

        while (v54);
        *v50 = *v49;
        v8 = (v8 + v38);
        v20 = (v20 + v40);
        ++v37;
        v42 = (v42 + v38);
        v43 = (v43 + v40);
      }

      while (v37 != v35);
    }

    if (v14 != 1)
    {
      v55 = 0;
      v56 = v36 >> 1;
      v57 = 2 * v29;
      v58 = 2 * v30;
      do
      {
        v59 = v20;
        v60 = v8;
        v61 = v14 - 1;
        do
        {
          *v59 = *v60;
          v60 = (v60 + v27);
          v59 = (v59 + v28);
          --v61;
        }

        while (v61);
        *v59 = *v60;
        v8 = (v8 + v57);
        v20 = (v20 + v58);
        ++v55;
      }

      while (v55 != v34);
      goto LABEL_92;
    }

    do
    {
LABEL_98:
      *v20 = *v8;
      v8 += v29;
      v20 += v30;
      --v34;
    }

    while (v34);
    goto LABEL_105;
  }

  if (v29 == v30 && v29 == v14)
  {
    v31 = (HIDWORD(v14) * v14);
    if (v89 == v22 && v89 == v31)
    {
      if (v91)
      {
        v32 = 2 * v91;
LABEL_112:
        memmove(v20, v8, v32);
      }
    }

    else if (v29)
    {
      v72 = v22;
      v73 = v15 - 1;
      if (v15 == 1)
      {
        v74 = v3;
      }

      else
      {
        if (!v31)
        {
          return v3;
        }

        v74 = v3;
        v84 = 2 * v72;
        do
        {
          memmove(v20, v8, 2 * v31);
          v8 += v89;
          v20 = (v20 + v84);
          --v73;
        }

        while (v73);
      }

      v3 = v74;
      if (v31)
      {
        v32 = 2 * v31;
        goto LABEL_112;
      }
    }
  }

  else
  {
    v86 = v3;
    v62 = 2 * v14;
    v63 = HIDWORD(v14) - 1;
    v64 = 2 * v29;
    v65 = 2 * v30;
    v66 = v15 - 1;
    if (v15 != 1)
    {
      v67 = v22;
      if (v63)
      {
        v68 = 0;
        v88 = 2 * v67;
        v90 = 2 * v89;
        v92 = v15 - 1;
        do
        {
          v69 = v20;
          v70 = v8;
          v71 = v63;
          do
          {
            memmove(v69, v70, v62);
            v70 += v64;
            v69 += v65;
            --v71;
          }

          while (v71);
          memmove(v69, v70, v62);
          v8 = (v8 + v90);
          v20 = (v20 + v88);
          ++v68;
        }

        while (v68 != v92);
      }

      else
      {
        do
        {
          memmove(v20, v8, v62);
          v8 += v89;
          v20 += v22;
          --v66;
        }

        while (v66);
      }
    }

    for (; v63; --v63)
    {
      memmove(v20, v8, v62);
      v8 = (v8 + v64);
      v20 = (v20 + v65);
    }

    memmove(v20, v8, v62);
    return v86;
  }

  return v3;
}

uint64_t sub_255BEA46C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 44) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_255BEA5D4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_255C07708(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 44) >> 1;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 28) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 32))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 24);
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  if (v15 * v10 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_27:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_28;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_85;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v15)
  {
    v18 = HIDWORD(v14) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v14 != 0)
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 36);
    v22 = *(a1 + 44) >> 1;
    if (*(a1 + 28))
    {
      v23 = *(a1 + 24) == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = *(a1 + 32);
    if (v23)
    {
      v24 = 0;
    }

    if (v24 * v22 != -1)
    {
LABEL_49:
      v27 = v14 - 1;
      v28 = HIDWORD(v14) - 1;
      v29 = v9 >> 33;
      v30 = v21 >> 33;
      v31 = 2 * (v9 >> 1);
      v32 = 2 * (v21 >> 1);
      v33 = v15 - 1;
      if (v15 != 1)
      {
        if (HIDWORD(v14) == 1)
        {
          if (v14 == 1)
          {
            do
            {
              *v20 = *v8;
              v8 += v10;
              v20 += v22;
              --v33;
            }

            while (v33);
          }

          else
          {
            v55 = 0;
            do
            {
              v56 = v20;
              v57 = v8;
              v58 = v14 - 1;
              do
              {
                *v56 = *v57;
                v57 = (v57 + v31);
                v56 = (v56 + v32);
                --v58;
              }

              while (v58);
              *v56 = *v57;
              v8 += v10;
              v20 += v22;
              ++v55;
            }

            while (v55 != v33);
          }
        }

        else
        {
          v34 = 0;
          v35 = 2 * v10;
          v36 = v29;
          v37 = 2 * v22;
          v38 = v30;
          if (v14 == 1)
          {
            do
            {
              v52 = HIDWORD(v14) - 1;
              v53 = v20;
              v54 = v8;
              do
              {
                *v53 = *v54;
                v54 = (v54 + v36 * 2);
                v53 = (v53 + v38 * 2);
                --v52;
              }

              while (v52);
              *v53 = *v54;
              v8 = (v8 + v35);
              v20 = (v20 + v37);
              ++v34;
            }

            while (v34 != v33);
LABEL_73:
            if (v14 != 1)
            {
              v59 = 0;
              v60 = 2 * v29;
              v61 = 2 * v30;
              do
              {
                v62 = v20;
                v63 = v8;
                v64 = v14 - 1;
                do
                {
                  *v62 = *v63;
                  v63 = (v63 + v31);
                  v62 = (v62 + v32);
                  --v64;
                }

                while (v64);
                *v62 = *v63;
                v8 = (v8 + v60);
                v20 = (v20 + v61);
                ++v59;
              }

              while (v59 != v28);
              goto LABEL_82;
            }

            v65 = 2 * v29;
            v66 = 2 * v30;
            do
            {
              *v20 = *v8;
              v8 = (v8 + v65);
              v20 = (v20 + v66);
              --v28;
            }

            while (v28);
LABEL_81:
            if (v14 == 1)
            {
LABEL_83:
              *v20 = *v8;
              return a1;
            }

            do
            {
LABEL_82:
              *v20 = *v8;
              v8 = (v8 + v31);
              v20 = (v20 + v32);
              --v27;
            }

            while (v27);
            goto LABEL_83;
          }

          v39 = &v8[v36];
          v40 = &v20[v38];
          do
          {
            v41 = 0;
            v42 = v40;
            v43 = v39;
            v44 = v20;
            v45 = v8;
            do
            {
              v46 = v43;
              v47 = v42;
              v48 = v44;
              v49 = v45;
              v50 = v14 - 1;
              do
              {
                *v48 = *v49;
                v49 = (v49 + v31);
                v48 = (v48 + v32);
                --v50;
              }

              while (v50);
              *v48 = *v49;
              v45 = (v45 + v36 * 2);
              v44 = (v44 + v38 * 2);
              ++v41;
              v43 = &v46[v36];
              v42 = &v47[v38];
            }

            while (v41 != v28);
            v51 = v14 - 1;
            do
            {
              *v47 = *v46;
              v46 = (v46 + v31);
              v47 = (v47 + v32);
              --v51;
            }

            while (v51);
            *v47 = *v46;
            v8 = (v8 + v35);
            v20 = (v20 + v37);
            ++v34;
            v39 = (v39 + v35);
            v40 = (v40 + v37);
          }

          while (v34 != v33);
        }
      }

      if (HIDWORD(v14) == 1)
      {
        goto LABEL_81;
      }

      goto LABEL_73;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    v68 = v21;
    v69 = v10;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v25 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_48:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v21 = v68;
        v10 = v69;
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27F7DD608;
      v26 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_85;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_27F7DD630)
    {
      goto LABEL_48;
    }

LABEL_85:
    abort();
  }

  return a1;
}

size_t *sub_255BEAB68(size_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  a1[1] = 0;
  a1[2] = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_255C07708(v6, v3[2], v4);
    }

    v3[1] = memptr;
  }

  v7 = *(a2 + 24);
  v3[5] = *(a2 + 40);
  *(v3 + 3) = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 44) >> 2;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 28) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 32))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 24);
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  v89 = *(a2 + 44) >> 2;
  v91 = v15 * v10;
  if (v15 * v10 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v16 = qword_27F7DD608, v17 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_27:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_28;
      }
    }

    else
    {
      v16 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_113;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v15)
  {
    v18 = HIDWORD(v14) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v14 == 0)
  {
    return v3;
  }

  v20 = v3[1];
  v21 = *(v3 + 36);
  v22 = *(v3 + 11) >> 2;
  if (*(v3 + 7))
  {
    v23 = *(v3 + 6) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v3 + 8);
  if (v23)
  {
    v24 = 0;
  }

  if (v24 * v22 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    v85 = v3;
    v87 = v22;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v25 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_48:
        v3 = v85;
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v22 = v87;
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27F7DD608;
      v26 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_113;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_27F7DD630)
    {
      goto LABEL_48;
    }

LABEL_113:
    abort();
  }

LABEL_49:
  v27 = v9 & 0xFFFFFFFC;
  v28 = v21 & 0xFFFFFFFC;
  v29 = v9 >> 34;
  v30 = v21 >> 34;
  if (v27 != 4 || v28 != 4)
  {
    v33 = v14 - 1;
    v34 = HIDWORD(v14) - 1;
    v35 = v15 - 1;
    if (v15 == 1)
    {
      v36 = v9;
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
LABEL_105:
          *v20 = *v8;
          return v3;
        }

        v56 = v9 >> 2;
        do
        {
LABEL_92:
          *v20 = *v8;
          v8 += v56;
          v20 = (v20 + v28);
          --v33;
        }

        while (v33);
        goto LABEL_105;
      }
    }

    else
    {
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
          do
          {
            *v20 = *v8;
            v8 += v89;
            v20 += v22;
            --v35;
          }

          while (v35);
          goto LABEL_105;
        }

        v75 = 0;
        v56 = v9 >> 2;
        do
        {
          v76 = v20;
          v77 = v8;
          v78 = v14 - 1;
          do
          {
            *v76 = *v77;
            v77 = (v77 + v27);
            v76 = (v76 + v28);
            --v78;
          }

          while (v78);
          *v76 = *v77;
          v8 += v89;
          v20 += v22;
          ++v75;
        }

        while (v75 != v35);
        goto LABEL_92;
      }

      if (v14 == 1)
      {
        v79 = 0;
        do
        {
          v80 = v20;
          v81 = v8;
          v82 = HIDWORD(v14) - 1;
          do
          {
            *v80 = *v81;
            v81 += v29;
            v80 += v30;
            --v82;
          }

          while (v82);
          *v80 = *v81;
          v8 += v89;
          v20 += v22;
          ++v79;
        }

        while (v79 != v35);
        goto LABEL_98;
      }

      v36 = v9;
      v37 = 0;
      v38 = 4 * v89;
      v39 = v29;
      v40 = 4 * v22;
      v41 = v30;
      v42 = &v8[v29];
      v43 = &v20[v30];
      do
      {
        v44 = 0;
        v45 = v43;
        v46 = v42;
        v47 = v20;
        v48 = v8;
        do
        {
          v49 = v46;
          v50 = v45;
          v51 = v47;
          v52 = v48;
          v53 = v14 - 1;
          do
          {
            *v51 = *v52;
            v52 = (v52 + v27);
            v51 = (v51 + v28);
            --v53;
          }

          while (v53);
          *v51 = *v52;
          v48 = (v48 + v39 * 4);
          v47 = (v47 + v41 * 4);
          ++v44;
          v46 = &v49[v39];
          v45 = &v50[v41];
        }

        while (v44 != v34);
        v54 = v14 - 1;
        do
        {
          *v50 = *v49;
          v49 = (v49 + v27);
          v50 = (v50 + v28);
          --v54;
        }

        while (v54);
        *v50 = *v49;
        v8 = (v8 + v38);
        v20 = (v20 + v40);
        ++v37;
        v42 = (v42 + v38);
        v43 = (v43 + v40);
      }

      while (v37 != v35);
    }

    if (v14 != 1)
    {
      v55 = 0;
      v56 = v36 >> 2;
      v57 = 4 * v29;
      v58 = 4 * v30;
      do
      {
        v59 = v20;
        v60 = v8;
        v61 = v14 - 1;
        do
        {
          *v59 = *v60;
          v60 = (v60 + v27);
          v59 = (v59 + v28);
          --v61;
        }

        while (v61);
        *v59 = *v60;
        v8 = (v8 + v57);
        v20 = (v20 + v58);
        ++v55;
      }

      while (v55 != v34);
      goto LABEL_92;
    }

    do
    {
LABEL_98:
      *v20 = *v8;
      v8 += v29;
      v20 += v30;
      --v34;
    }

    while (v34);
    goto LABEL_105;
  }

  if (v29 == v30 && v29 == v14)
  {
    v31 = (HIDWORD(v14) * v14);
    if (v89 == v22 && v89 == v31)
    {
      if (v91)
      {
        v32 = 4 * v91;
LABEL_112:
        memmove(v20, v8, v32);
      }
    }

    else if (v29)
    {
      v72 = v22;
      v73 = v15 - 1;
      if (v15 == 1)
      {
        v74 = v3;
      }

      else
      {
        if (!v31)
        {
          return v3;
        }

        v74 = v3;
        v84 = 4 * v72;
        do
        {
          memmove(v20, v8, 4 * v31);
          v8 += v89;
          v20 = (v20 + v84);
          --v73;
        }

        while (v73);
      }

      v3 = v74;
      if (v31)
      {
        v32 = 4 * v31;
        goto LABEL_112;
      }
    }
  }

  else
  {
    v86 = v3;
    v62 = 4 * v14;
    v63 = HIDWORD(v14) - 1;
    v64 = 4 * v29;
    v65 = 4 * v30;
    v66 = v15 - 1;
    if (v15 != 1)
    {
      v67 = v22;
      if (v63)
      {
        v68 = 0;
        v88 = 4 * v67;
        v90 = 4 * v89;
        v92 = v15 - 1;
        do
        {
          v69 = v20;
          v70 = v8;
          v71 = v63;
          do
          {
            memmove(v69, v70, v62);
            v70 += v64;
            v69 += v65;
            --v71;
          }

          while (v71);
          memmove(v69, v70, v62);
          v8 = (v8 + v90);
          v20 = (v20 + v88);
          ++v68;
        }

        while (v68 != v92);
      }

      else
      {
        do
        {
          memmove(v20, v8, v62);
          v8 += v89;
          v20 += v22;
          --v66;
        }

        while (v66);
      }
    }

    for (; v63; --v63)
    {
      memmove(v20, v8, v62);
      v8 = (v8 + v64);
      v20 = (v20 + v65);
    }

    memmove(v20, v8, v62);
    return v86;
  }

  return v3;
}

void sub_255BEB340(uint64_t a1, int a2, unint64_t a3)
{
  v156 = *MEMORY[0x277D85DE8];
  v135 = a3;
  switch(a2)
  {
    case 1:
      *v149 = &unk_2867C6000;
      sub_255BE6CB4(&v135, &v141);
      operator new();
    case 2:
      *v149 = &unk_2867C5D80;
      sub_255BE709C(&v135, &v141);
      operator new();
    case 3:
      if (a3)
      {
        v87 = HIDWORD(a3) == 0;
      }

      else
      {
        v87 = 1;
      }

      v88 = v87;
      if (v87)
      {
        v89 = 0;
      }

      else
      {
        v89 = a3;
      }

      v90 = 0;
      if (v89 > 0x100000000)
      {
        v90 = v89;
      }

      *v149 = v89;
      *&v149[8] = (v89 != 0) | (v90 << 32);
      v149[16] = 0;
      v149[24] = 0;
      v139 = *&v149[8];
      if (!v89)
      {
        v88 = 1;
      }

      if (v88)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89;
      }

      v136 = &unk_2867C5AC0;
      v137 = v91;
      if (((2 * v90) & (2 * v90 - 1)) != 0)
      {
        v92 = 2;
      }

      else
      {
        v92 = 2 * v90;
      }

      sub_255BF1E44(&v150, &v137, &v139, 1, 0, 0, v92);
      v141 = &unk_2867C6540;
      *v142 = *v149;
      *&v142[12] = *&v149[12];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      operator new();
    case 4:
      *v149 = &unk_2867C5A40;
      sub_255BE71D0(&v135, &v141);
      operator new();
    case 5:
      *v149 = &unk_2867C59E0;
      sub_255BE7308(&v135, &v141);
      operator new();
    case 6:
      v139 = &unk_2867C59C0;
      sub_255BF8508(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6340;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 7:
      v136 = &unk_2867C5960;
      if (HIDWORD(a3))
      {
        v31 = a3 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = a3;
      }

      v33 = 2 * (v32 != 0);
      LODWORD(v34) = v33 * v32;
      *v149 = 2;
      *&v149[4] = v32;
      v35 = *v149;
      v36 = HIDWORD(v32);
      if (HIDWORD(*v149))
      {
        v37 = *v149 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37;
      if (v36)
      {
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      v39 = v33 & 0x1FFFFFFFFLL | ((v34 >> 1) << 33);
      *&v149[4] = v39;
      *v149 = 1;
      v40 = *v149;
      *v149 = v35;
      *&v149[8] = HIDWORD(v32);
      *&v149[12] = v40;
      *&v149[20] = v34;
      *&v149[24] = v32;
      *&v150 = v39;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v40;
      v140 = v34;
      if (v36)
      {
        v41 = v38;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v35;
      }

      v137 = v42;
      if (v38)
      {
        v43 = 0;
      }

      else
      {
        v43 = v36;
      }

      v138 = v43;
      if (((2 * v34) & (2 * v34 - 1)) != 0)
      {
        v44 = 2;
      }

      else
      {
        v44 = 2 * v34;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v44);
      *v142 = *v149;
      v141 = &unk_2867C62C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 8:
      v139 = &unk_2867C5900;
      sub_255BF86D4(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6240;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 9:
      *v149 = &unk_2867C58E0;
      sub_255BE74E0(&v135, &v141);
      operator new();
    case 10:
      v139 = &unk_2867C61A0;
      sub_255BF88A4(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C7540;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 11:
      v136 = &unk_2867C6180;
      if (HIDWORD(a3))
      {
        v93 = a3 == 0;
      }

      else
      {
        v93 = 1;
      }

      if (v93)
      {
        v94 = 0;
      }

      else
      {
        v94 = a3;
      }

      *&v149[4] = v94;
      *v149 = 3;
      if (v94)
      {
        v95 = 3;
      }

      else
      {
        v95 = 0;
      }

      LODWORD(v96) = v95 * v94;
      *v149 = 3;
      *&v149[4] = v94;
      v97 = *v149;
      v98 = HIDWORD(v94);
      if (HIDWORD(*v149))
      {
        v99 = *v149 == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = v99;
      if (v98)
      {
        v96 = v96;
      }

      else
      {
        v96 = 0;
      }

      v101 = v95 | (v96 << 32);
      *&v149[4] = v101;
      *v149 = 1;
      v102 = *v149;
      *v149 = v97;
      *&v149[8] = HIDWORD(v94);
      *&v149[12] = v102;
      *&v149[20] = v96;
      *&v149[24] = v94;
      *&v150 = v101;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v102;
      v140 = v96;
      if (v98)
      {
        v103 = v100;
      }

      else
      {
        v103 = 1;
      }

      if (v103)
      {
        v104 = 0;
      }

      else
      {
        v104 = v97;
      }

      v137 = v104;
      if (v100)
      {
        v105 = 0;
      }

      else
      {
        v105 = v98;
      }

      v138 = v105;
      if (((2 * v96) & (2 * v96 - 1)) != 0)
      {
        v106 = 2;
      }

      else
      {
        v106 = 2 * v96;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v106);
      *v142 = *v149;
      v141 = &unk_2867C74C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 12:
      v139 = &unk_2867C6160;
      sub_255BF8A68(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C7440;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 13:
      *v149 = &unk_2867C6140;
      sub_255BE76B0(&v135, &v141);
      operator new();
    case 14:
      v139 = &unk_2867C6120;
      sub_255BF8C2C(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C7340;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 15:
      v136 = &unk_2867C6100;
      if (HIDWORD(a3))
      {
        v107 = a3 == 0;
      }

      else
      {
        v107 = 1;
      }

      if (v107)
      {
        v108 = 0;
      }

      else
      {
        v108 = a3;
      }

      v109 = 4 * (v108 != 0);
      LODWORD(v110) = v109 * v108;
      *v149 = 4;
      *&v149[4] = v108;
      v111 = *v149;
      v112 = HIDWORD(v108);
      if (HIDWORD(*v149))
      {
        v113 = *v149 == 0;
      }

      else
      {
        v113 = 1;
      }

      v114 = v113;
      if (v112)
      {
        v110 = v110;
      }

      else
      {
        v110 = 0;
      }

      v115 = v109 & 0x3FFFFFFFFLL | ((v110 >> 2) << 34);
      *&v149[4] = v115;
      *v149 = 1;
      v116 = *v149;
      *v149 = v111;
      *&v149[8] = HIDWORD(v108);
      *&v149[12] = v116;
      *&v149[20] = v110;
      *&v149[24] = v108;
      *&v150 = v115;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v116;
      v140 = v110;
      if (v112)
      {
        v117 = v114;
      }

      else
      {
        v117 = 1;
      }

      if (v117)
      {
        v118 = 0;
      }

      else
      {
        v118 = v111;
      }

      v137 = v118;
      if (v114)
      {
        v119 = 0;
      }

      else
      {
        v119 = v112;
      }

      v138 = v119;
      if (((2 * v110) & (2 * v110 - 1)) != 0)
      {
        v120 = 2;
      }

      else
      {
        v120 = 2 * v110;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v120);
      *v142 = *v149;
      v141 = &unk_2867C72C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 16:
      v139 = &unk_2867C60E0;
      sub_255BF8DF8(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C7240;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 17:
      *v149 = &unk_2867C60A0;
      sub_255BE7888(&v135, &v141);
      operator new();
    case 18:
      v139 = &unk_2867C6080;
      sub_255BF88A4(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C7140;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 19:
      v136 = &unk_2867C6060;
      if (HIDWORD(a3))
      {
        v17 = a3 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = a3;
      }

      *&v149[4] = v18;
      *v149 = 3;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      LODWORD(v20) = v19 * v18;
      *v149 = 3;
      *&v149[4] = v18;
      v21 = *v149;
      v22 = HIDWORD(v18);
      if (HIDWORD(*v149))
      {
        v23 = *v149 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = v23;
      if (v22)
      {
        v20 = v20;
      }

      else
      {
        v20 = 0;
      }

      v25 = v19 | (v20 << 32);
      *&v149[4] = v25;
      *v149 = 1;
      v26 = *v149;
      *v149 = v21;
      *&v149[8] = HIDWORD(v18);
      *&v149[12] = v26;
      *&v149[20] = v20;
      *&v149[24] = v18;
      *&v150 = v25;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v26;
      v140 = v20;
      if (v22)
      {
        v27 = v24;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v21;
      }

      v137 = v28;
      if (v24)
      {
        v29 = 0;
      }

      else
      {
        v29 = v22;
      }

      v138 = v29;
      if (((2 * v20) & (2 * v20 - 1)) != 0)
      {
        v30 = 2;
      }

      else
      {
        v30 = 2 * v20;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v30);
      *v142 = *v149;
      v141 = &unk_2867C70C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 20:
      v139 = &unk_2867C5FE0;
      sub_255BF8A68(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6FC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 21:
      *v149 = &unk_2867C5F80;
      sub_255BE7A58(&v135, &v141);
      operator new();
    case 22:
      v139 = &unk_2867C5F20;
      sub_255BF88A4(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6EC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 23:
      v136 = &unk_2867C5F00;
      if (HIDWORD(a3))
      {
        v121 = a3 == 0;
      }

      else
      {
        v121 = 1;
      }

      if (v121)
      {
        v122 = 0;
      }

      else
      {
        v122 = a3;
      }

      *&v149[4] = v122;
      *v149 = 3;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 0;
      }

      LODWORD(v124) = v123 * v122;
      *v149 = 3;
      *&v149[4] = v122;
      v125 = *v149;
      v126 = HIDWORD(v122);
      if (HIDWORD(*v149))
      {
        v127 = *v149 == 0;
      }

      else
      {
        v127 = 1;
      }

      v128 = v127;
      if (v126)
      {
        v124 = v124;
      }

      else
      {
        v124 = 0;
      }

      v129 = v123 | (v124 << 32);
      *&v149[4] = v129;
      *v149 = 1;
      v130 = *v149;
      *v149 = v125;
      *&v149[8] = HIDWORD(v122);
      *&v149[12] = v130;
      *&v149[20] = v124;
      *&v149[24] = v122;
      *&v150 = v129;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v130;
      v140 = v124;
      if (v126)
      {
        v131 = v128;
      }

      else
      {
        v131 = 1;
      }

      if (v131)
      {
        v132 = 0;
      }

      else
      {
        v132 = v125;
      }

      v137 = v132;
      if (v128)
      {
        v133 = 0;
      }

      else
      {
        v133 = v126;
      }

      v138 = v133;
      if (((2 * v124) & (2 * v124 - 1)) != 0)
      {
        v134 = 2;
      }

      else
      {
        v134 = 2 * v124;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v134);
      *v142 = *v149;
      v141 = &unk_2867C6E40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 24:
      v139 = &unk_2867C5EE0;
      sub_255BF8A68(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6DC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 25:
      *v149 = &unk_2867C5E80;
      sub_255BE7C28(&v135, &v141);
      operator new();
    case 26:
      v139 = &unk_2867C5E60;
      sub_255BF8C2C(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6CC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 27:
      v136 = &unk_2867C5E40;
      if (HIDWORD(a3))
      {
        v3 = a3 == 0;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = a3;
      }

      v5 = 4 * (v4 != 0);
      LODWORD(v6) = v5 * v4;
      *v149 = 4;
      *&v149[4] = v4;
      v7 = *v149;
      v8 = HIDWORD(v4);
      if (HIDWORD(*v149))
      {
        v9 = *v149 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = v9;
      if (v8)
      {
        v6 = v6;
      }

      else
      {
        v6 = 0;
      }

      v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v149[4] = v11;
      *v149 = 1;
      v12 = *v149;
      *v149 = v7;
      *&v149[8] = HIDWORD(v4);
      *&v149[12] = v12;
      *&v149[20] = v6;
      *&v149[24] = v4;
      *&v150 = v11;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v12;
      v140 = v6;
      if (v8)
      {
        v13 = v10;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v7;
      }

      v137 = v14;
      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      v138 = v15;
      if (((2 * v6) & (2 * v6 - 1)) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 2 * v6;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v16);
      *v142 = *v149;
      v141 = &unk_2867C6C40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 28:
      v139 = &unk_2867C5E20;
      sub_255BF8DF8(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6BC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 29:
      *v149 = &unk_2867C5DE0;
      sub_255BE7E00(&v135, &v141);
      operator new();
    case 30:
      v139 = &unk_2867C5D60;
      sub_255BF8C2C(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6A40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 31:
      v136 = &unk_2867C5D00;
      if (HIDWORD(a3))
      {
        v59 = a3 == 0;
      }

      else
      {
        v59 = 1;
      }

      if (v59)
      {
        v60 = 0;
      }

      else
      {
        v60 = a3;
      }

      v61 = 4 * (v60 != 0);
      LODWORD(v62) = v61 * v60;
      *v149 = 4;
      *&v149[4] = v60;
      v63 = *v149;
      v64 = HIDWORD(v60);
      if (HIDWORD(*v149))
      {
        v65 = *v149 == 0;
      }

      else
      {
        v65 = 1;
      }

      v66 = v65;
      if (v64)
      {
        v62 = v62;
      }

      else
      {
        v62 = 0;
      }

      v67 = v61 & 0x3FFFFFFFFLL | ((v62 >> 2) << 34);
      *&v149[4] = v67;
      *v149 = 1;
      v68 = *v149;
      *v149 = v63;
      *&v149[8] = HIDWORD(v60);
      *&v149[12] = v68;
      *&v149[20] = v62;
      *&v149[24] = v60;
      *&v150 = v67;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v68;
      v140 = v62;
      if (v64)
      {
        v69 = v66;
      }

      else
      {
        v69 = 1;
      }

      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = v63;
      }

      v137 = v70;
      if (v66)
      {
        v71 = 0;
      }

      else
      {
        v71 = v64;
      }

      v138 = v71;
      if (((2 * v62) & (2 * v62 - 1)) != 0)
      {
        v72 = 2;
      }

      else
      {
        v72 = 2 * v62;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v72);
      *v142 = *v149;
      v141 = &unk_2867C69C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 32:
      v139 = &unk_2867C5CA0;
      sub_255BF8DF8(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6940;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 33:
      *v149 = &unk_2867C5C60;
      sub_255BE7FD8(&v135, &v141);
      operator new();
    case 34:
      v139 = &unk_2867C5C40;
      sub_255BF8C2C(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6840;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 35:
      v136 = &unk_2867C5C20;
      if (HIDWORD(a3))
      {
        v73 = a3 == 0;
      }

      else
      {
        v73 = 1;
      }

      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v74 = a3;
      }

      v75 = 4 * (v74 != 0);
      LODWORD(v76) = v75 * v74;
      *v149 = 4;
      *&v149[4] = v74;
      v77 = *v149;
      v78 = HIDWORD(v74);
      if (HIDWORD(*v149))
      {
        v79 = *v149 == 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = v79;
      if (v78)
      {
        v76 = v76;
      }

      else
      {
        v76 = 0;
      }

      v81 = v75 & 0x3FFFFFFFFLL | ((v76 >> 2) << 34);
      *&v149[4] = v81;
      *v149 = 1;
      v82 = *v149;
      *v149 = v77;
      *&v149[8] = HIDWORD(v74);
      *&v149[12] = v82;
      *&v149[20] = v76;
      *&v149[24] = v74;
      *&v150 = v81;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v82;
      v140 = v76;
      if (v78)
      {
        v83 = v80;
      }

      else
      {
        v83 = 1;
      }

      if (v83)
      {
        v84 = 0;
      }

      else
      {
        v84 = v77;
      }

      v137 = v84;
      if (v80)
      {
        v85 = 0;
      }

      else
      {
        v85 = v78;
      }

      v138 = v85;
      if (((2 * v76) & (2 * v76 - 1)) != 0)
      {
        v86 = 2;
      }

      else
      {
        v86 = 2 * v76;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v86);
      *v142 = *v149;
      v141 = &unk_2867C67C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 36:
      v139 = &unk_2867C5C00;
      sub_255BF8DF8(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6740;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 37:
      *v149 = &unk_2867C5BA0;
      sub_255BE81B0(&v135, &v141);
      operator new();
    case 38:
      v139 = &unk_2867C5B40;
      sub_255BF8C2C(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C6640;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 39:
      v136 = &unk_2867C5B20;
      if (HIDWORD(a3))
      {
        v45 = a3 == 0;
      }

      else
      {
        v45 = 1;
      }

      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = a3;
      }

      v47 = 4 * (v46 != 0);
      LODWORD(v48) = v47 * v46;
      *v149 = 4;
      *&v149[4] = v46;
      v49 = *v149;
      v50 = HIDWORD(v46);
      if (HIDWORD(*v149))
      {
        v51 = *v149 == 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = v51;
      if (v50)
      {
        v48 = v48;
      }

      else
      {
        v48 = 0;
      }

      v53 = v47 & 0x3FFFFFFFFLL | ((v48 >> 2) << 34);
      *&v149[4] = v53;
      *v149 = 1;
      v54 = *v149;
      *v149 = v49;
      *&v149[8] = HIDWORD(v46);
      *&v149[12] = v54;
      *&v149[20] = v48;
      *&v149[24] = v46;
      *&v150 = v53;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v54;
      v140 = v48;
      if (v50)
      {
        v55 = v52;
      }

      else
      {
        v55 = 1;
      }

      if (v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = v49;
      }

      v137 = v56;
      if (v52)
      {
        v57 = 0;
      }

      else
      {
        v57 = v50;
      }

      v138 = v57;
      if (((2 * v48) & (2 * v48 - 1)) != 0)
      {
        v58 = 2;
      }

      else
      {
        v58 = 2 * v48;
      }

      sub_255BF3604(&v152, &v137, &v139, 1, 0, 0, v58);
      *v142 = *v149;
      v141 = &unk_2867C65C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 40:
      v139 = &unk_2867C5AA0;
      sub_255BF8DF8(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2867C64C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255BED974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a24)
  {
    free(a24);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BEDC30(int32x2_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v539 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      *v532 = &unk_2867C6000;
      LOBYTE(v530) = 0;
      sub_255BE6A10(a4, &v530, &v518);
      operator new();
    case 2:
      *v532 = &unk_2867C5D80;
      LOWORD(v530) = 0;
      sub_255BE6DE0(a4, &v530, &v518);
      operator new();
    case 3:
      v527 = &unk_2867C5AC0;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v373 = *a4 == 0;
      }

      else
      {
        v373 = 1;
      }

      v374 = *a4;
      if (v373)
      {
        v374 = 0;
      }

      v375 = 0;
      if (v374 > 0x100000000)
      {
        v375 = v374;
      }

      *v532 = v374;
      *&v532[8] = (v374 != 0) | (v375 << 32);
      v532[16] = 0;
      v532[24] = 0;
      v530 = *&v532[8];
      if (v374)
      {
        v376 = HIDWORD(v374) == 0;
      }

      else
      {
        v376 = 1;
      }

      if (v376)
      {
        v374 = 0;
      }

      v528 = v374;
      if (((2 * v375) & (2 * v375 - 1)) != 0)
      {
        v377 = 2;
      }

      else
      {
        v377 = 2 * v375;
      }

      sub_255BF1E44(&v533, &v528, &v530, 1, &v526, 1, v377);
      v518 = &unk_2867C6540;
      *v519 = *v532;
      *&v519[12] = *&v532[12];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      operator new();
    case 4:
      v527 = &unk_2867C5A40;
      v526 = 0;
      if (a4[1])
      {
        v228 = *a4 == 0;
      }

      else
      {
        v228 = 1;
      }

      v229 = *a4;
      if (v228)
      {
        v229 = 0;
      }

      v230 = 0;
      if (v229 > 0x100000000)
      {
        v230 = v229;
      }

      *v532 = v229;
      *&v532[8] = (v229 != 0) | (v230 << 32);
      v532[16] = 0;
      v532[24] = 0;
      v530 = *&v532[8];
      if (v229)
      {
        v231 = HIDWORD(v229) == 0;
      }

      else
      {
        v231 = 1;
      }

      if (v231)
      {
        v229 = 0;
      }

      v528 = v229;
      if (((4 * v230) & (4 * v230 - 1)) != 0)
      {
        v232 = 4;
      }

      else
      {
        v232 = 4 * v230;
      }

      sub_255BF2304(&v533, &v528, &v530, 1, &v526, 1, v232);
      v518 = &unk_2867C6440;
      *v519 = *v532;
      *&v519[12] = *&v532[12];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      operator new();
    case 5:
      v527 = &unk_2867C59E0;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v331 = *a4 == 0;
      }

      else
      {
        v331 = 1;
      }

      v332 = *a4;
      if (v331)
      {
        v332 = 0;
      }

      v333 = 2 * (v332 != 0);
      LODWORD(v334) = v333 * v332;
      *v532 = 2;
      *&v532[4] = v332;
      v335 = *v532;
      v336 = HIDWORD(v332);
      if (HIDWORD(*v532))
      {
        v337 = *v532 == 0;
      }

      else
      {
        v337 = 1;
      }

      v338 = v337;
      if (v336)
      {
        v334 = v334;
      }

      else
      {
        v334 = 0;
      }

      v339 = v333 & 0x1FFFFFFFFLL | ((v334 >> 1) << 33);
      *&v532[4] = v339;
      *v532 = 1;
      v340 = *v532;
      *v532 = v335;
      *&v532[8] = HIDWORD(v332);
      *&v532[12] = v340;
      *&v532[20] = v334;
      *&v532[24] = v332;
      *&v533 = v339;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v340;
      v531 = v334;
      if (v336)
      {
        v341 = v338;
      }

      else
      {
        v341 = 1;
      }

      if (v341)
      {
        v342 = 0;
      }

      else
      {
        v342 = v335;
      }

      v528 = v342;
      if (v338)
      {
        v343 = 0;
      }

      else
      {
        v343 = v336;
      }

      v529 = v343;
      if ((v334 & (v334 - 1)) != 0)
      {
        v344 = 1;
      }

      else
      {
        v344 = v334;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v344);
      *v519 = *v532;
      v518 = &unk_2867C63C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 6:
      v527 = &unk_2867C59C0;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v214 = *a4 == 0;
      }

      else
      {
        v214 = 1;
      }

      if (v214)
      {
        v215 = 0;
      }

      else
      {
        v215 = *a4;
      }

      v216 = 2 * (v215 != 0);
      LODWORD(v217) = v216 * v215;
      *v532 = 2;
      *&v532[4] = v215;
      v218 = *v532;
      v219 = HIDWORD(v215);
      if (HIDWORD(*v532))
      {
        v220 = *v532 == 0;
      }

      else
      {
        v220 = 1;
      }

      v221 = v220;
      if (v219)
      {
        v217 = v217;
      }

      else
      {
        v217 = 0;
      }

      v222 = v216 & 0x1FFFFFFFFLL | ((v217 >> 1) << 33);
      *&v532[4] = v222;
      *v532 = 1;
      v223 = *v532;
      *v532 = v218;
      *&v532[8] = HIDWORD(v215);
      *&v532[12] = v223;
      *&v532[20] = v217;
      *&v532[24] = v215;
      *&v533 = v222;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v223;
      v531 = v217;
      if (v219)
      {
        v224 = v221;
      }

      else
      {
        v224 = 1;
      }

      if (v224)
      {
        v225 = 0;
      }

      else
      {
        v225 = v218;
      }

      v528 = v225;
      if (v221)
      {
        v226 = 0;
      }

      else
      {
        v226 = v219;
      }

      v529 = v226;
      if (((2 * v217) & (2 * v217 - 1)) != 0)
      {
        v227 = 2;
      }

      else
      {
        v227 = 2 * v217;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v227);
      *v519 = *v532;
      v518 = &unk_2867C6340;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 7:
      v527 = &unk_2867C5960;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v144 = *a4 == 0;
      }

      else
      {
        v144 = 1;
      }

      if (v144)
      {
        v145 = 0;
      }

      else
      {
        v145 = *a4;
      }

      v146 = 2 * (v145 != 0);
      LODWORD(v147) = v146 * v145;
      *v532 = 2;
      *&v532[4] = v145;
      v148 = *v532;
      v149 = HIDWORD(v145);
      if (HIDWORD(*v532))
      {
        v150 = *v532 == 0;
      }

      else
      {
        v150 = 1;
      }

      v151 = v150;
      if (v149)
      {
        v147 = v147;
      }

      else
      {
        v147 = 0;
      }

      v152 = v146 & 0x1FFFFFFFFLL | ((v147 >> 1) << 33);
      *&v532[4] = v152;
      *v532 = 1;
      v153 = *v532;
      *v532 = v148;
      *&v532[8] = HIDWORD(v145);
      *&v532[12] = v153;
      *&v532[20] = v147;
      *&v532[24] = v145;
      *&v533 = v152;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v153;
      v531 = v147;
      if (v149)
      {
        v154 = v151;
      }

      else
      {
        v154 = 1;
      }

      if (v154)
      {
        v155 = 0;
      }

      else
      {
        v155 = v148;
      }

      v528 = v155;
      if (v151)
      {
        v156 = 0;
      }

      else
      {
        v156 = v149;
      }

      v529 = v156;
      if (((2 * v147) & (2 * v147 - 1)) != 0)
      {
        v157 = 2;
      }

      else
      {
        v157 = 2 * v147;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v157);
      *v519 = *v532;
      v518 = &unk_2867C62C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 8:
      v527 = &unk_2867C5900;
      v526 = 0;
      if (a4[1])
      {
        v359 = *a4 == 0;
      }

      else
      {
        v359 = 1;
      }

      v360 = *a4;
      if (v359)
      {
        v360 = 0;
      }

      v361 = 2 * (v360 != 0);
      LODWORD(v362) = v361 * v360;
      *v532 = 2;
      *&v532[4] = v360;
      v363 = *v532;
      v364 = HIDWORD(v360);
      if (HIDWORD(*v532))
      {
        v365 = *v532 == 0;
      }

      else
      {
        v365 = 1;
      }

      v366 = v365;
      if (v364)
      {
        v362 = v362;
      }

      else
      {
        v362 = 0;
      }

      v367 = v361 & 0x1FFFFFFFFLL | ((v362 >> 1) << 33);
      *&v532[4] = v367;
      *v532 = 1;
      v368 = *v532;
      *v532 = v363;
      *&v532[8] = HIDWORD(v360);
      *&v532[12] = v368;
      *&v532[20] = v362;
      *&v532[24] = v360;
      *&v533 = v367;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v368;
      v531 = v362;
      if (v364)
      {
        v369 = v366;
      }

      else
      {
        v369 = 1;
      }

      if (v369)
      {
        v370 = 0;
      }

      else
      {
        v370 = v363;
      }

      v528 = v370;
      if (v366)
      {
        v371 = 0;
      }

      else
      {
        v371 = v364;
      }

      v529 = v371;
      if (((4 * v362) & (4 * v362 - 1)) != 0)
      {
        v372 = 4;
      }

      else
      {
        v372 = 4 * v362;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v372, a1);
      *v519 = *v532;
      v518 = &unk_2867C6240;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 9:
      v527 = &unk_2867C58E0;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v317 = *a4 == 0;
      }

      else
      {
        v317 = 1;
      }

      v318 = *a4;
      if (v317)
      {
        v318 = 0;
      }

      *&v532[4] = v318;
      *v532 = 3;
      if (v318)
      {
        v319 = 3;
      }

      else
      {
        v319 = 0;
      }

      LODWORD(v320) = v319 * v318;
      *v532 = 3;
      *&v532[4] = v318;
      v321 = *v532;
      v322 = HIDWORD(v318);
      if (HIDWORD(*v532))
      {
        v323 = *v532 == 0;
      }

      else
      {
        v323 = 1;
      }

      v324 = v323;
      if (v322)
      {
        v320 = v320;
      }

      else
      {
        v320 = 0;
      }

      v325 = v319 | (v320 << 32);
      *&v532[4] = v325;
      *v532 = 1;
      v326 = *v532;
      *v532 = v321;
      *&v532[8] = HIDWORD(v318);
      *&v532[12] = v326;
      *&v532[20] = v320;
      *&v532[24] = v318;
      *&v533 = v325;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v326;
      v531 = v320;
      if (v322)
      {
        v327 = v324;
      }

      else
      {
        v327 = 1;
      }

      if (v327)
      {
        v328 = 0;
      }

      else
      {
        v328 = v321;
      }

      v528 = v328;
      if (v324)
      {
        v329 = 0;
      }

      else
      {
        v329 = v322;
      }

      v529 = v329;
      if ((v320 & (v320 - 1)) != 0)
      {
        v330 = 1;
      }

      else
      {
        v330 = v320;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v330);
      *v519 = *v532;
      v518 = &unk_2867C61C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 10:
      v527 = &unk_2867C61A0;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v406 = *a4 == 0;
      }

      else
      {
        v406 = 1;
      }

      v407 = *a4;
      if (v406)
      {
        v407 = 0;
      }

      *&v532[4] = v407;
      *v532 = 3;
      if (v407)
      {
        v408 = 3;
      }

      else
      {
        v408 = 0;
      }

      LODWORD(v409) = v408 * v407;
      *v532 = 3;
      *&v532[4] = v407;
      v410 = *v532;
      v411 = HIDWORD(v407);
      if (HIDWORD(*v532))
      {
        v412 = *v532 == 0;
      }

      else
      {
        v412 = 1;
      }

      v413 = v412;
      if (v411)
      {
        v409 = v409;
      }

      else
      {
        v409 = 0;
      }

      v414 = v408 | (v409 << 32);
      *&v532[4] = v414;
      *v532 = 1;
      v415 = *v532;
      *v532 = v410;
      *&v532[8] = HIDWORD(v407);
      *&v532[12] = v415;
      *&v532[20] = v409;
      *&v532[24] = v407;
      *&v533 = v414;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v415;
      v531 = v409;
      if (v411)
      {
        v416 = v413;
      }

      else
      {
        v416 = 1;
      }

      if (v416)
      {
        v417 = 0;
      }

      else
      {
        v417 = v410;
      }

      v528 = v417;
      if (v413)
      {
        v418 = 0;
      }

      else
      {
        v418 = v411;
      }

      v529 = v418;
      if (((2 * v409) & (2 * v409 - 1)) != 0)
      {
        v419 = 2;
      }

      else
      {
        v419 = 2 * v409;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v419);
      *v519 = *v532;
      v518 = &unk_2867C7540;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 11:
      v527 = &unk_2867C6180;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v392 = *a4 == 0;
      }

      else
      {
        v392 = 1;
      }

      v393 = *a4;
      if (v392)
      {
        v393 = 0;
      }

      *&v532[4] = v393;
      *v532 = 3;
      if (v393)
      {
        v394 = 3;
      }

      else
      {
        v394 = 0;
      }

      LODWORD(v395) = v394 * v393;
      *v532 = 3;
      *&v532[4] = v393;
      v396 = *v532;
      v397 = HIDWORD(v393);
      if (HIDWORD(*v532))
      {
        v398 = *v532 == 0;
      }

      else
      {
        v398 = 1;
      }

      v399 = v398;
      if (v397)
      {
        v395 = v395;
      }

      else
      {
        v395 = 0;
      }

      v400 = v394 | (v395 << 32);
      *&v532[4] = v400;
      *v532 = 1;
      v401 = *v532;
      *v532 = v396;
      *&v532[8] = HIDWORD(v393);
      *&v532[12] = v401;
      *&v532[20] = v395;
      *&v532[24] = v393;
      *&v533 = v400;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v401;
      v531 = v395;
      if (v397)
      {
        v402 = v399;
      }

      else
      {
        v402 = 1;
      }

      if (v402)
      {
        v403 = 0;
      }

      else
      {
        v403 = v396;
      }

      v528 = v403;
      if (v399)
      {
        v404 = 0;
      }

      else
      {
        v404 = v397;
      }

      v529 = v404;
      if (((2 * v395) & (2 * v395 - 1)) != 0)
      {
        v405 = 2;
      }

      else
      {
        v405 = 2 * v395;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v405);
      *v519 = *v532;
      v518 = &unk_2867C74C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 12:
      v527 = &unk_2867C6160;
      v526 = 0;
      if (a4[1])
      {
        v46 = *a4 == 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = *a4;
      if (v46)
      {
        v47 = 0;
      }

      *&v532[4] = v47;
      *v532 = 3;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 0;
      }

      LODWORD(v49) = v48 * v47;
      *v532 = 3;
      *&v532[4] = v47;
      v50 = *v532;
      v51 = HIDWORD(v47);
      if (HIDWORD(*v532))
      {
        v52 = *v532 == 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52;
      if (v51)
      {
        v49 = v49;
      }

      else
      {
        v49 = 0;
      }

      v54 = v48 | (v49 << 32);
      *&v532[4] = v54;
      *v532 = 1;
      v55 = *v532;
      *v532 = v50;
      *&v532[8] = HIDWORD(v47);
      *&v532[12] = v55;
      *&v532[20] = v49;
      *&v532[24] = v47;
      *&v533 = v54;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v55;
      v531 = v49;
      if (v51)
      {
        v56 = v53;
      }

      else
      {
        v56 = 1;
      }

      if (v56)
      {
        v57 = 0;
      }

      else
      {
        v57 = v50;
      }

      v528 = v57;
      if (v53)
      {
        v58 = 0;
      }

      else
      {
        v58 = v51;
      }

      v529 = v58;
      if (((4 * v49) & (4 * v49 - 1)) != 0)
      {
        v59 = 4;
      }

      else
      {
        v59 = 4 * v49;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v59, a1);
      *v519 = *v532;
      v518 = &unk_2867C7440;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 13:
      v527 = &unk_2867C6140;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v102 = *a4 == 0;
      }

      else
      {
        v102 = 1;
      }

      v103 = *a4;
      if (v102)
      {
        v103 = 0;
      }

      v104 = 4 * (v103 != 0);
      LODWORD(v105) = v104 * v103;
      *v532 = 4;
      *&v532[4] = v103;
      v106 = *v532;
      v107 = HIDWORD(v103);
      if (HIDWORD(*v532))
      {
        v108 = *v532 == 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = v108;
      if (v107)
      {
        v105 = v105;
      }

      else
      {
        v105 = 0;
      }

      v110 = v104 & 0x3FFFFFFFFLL | ((v105 >> 2) << 34);
      *&v532[4] = v110;
      *v532 = 1;
      v111 = *v532;
      *v532 = v106;
      *&v532[8] = HIDWORD(v103);
      *&v532[12] = v111;
      *&v532[20] = v105;
      *&v532[24] = v103;
      *&v533 = v110;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v111;
      v531 = v105;
      if (v107)
      {
        v112 = v109;
      }

      else
      {
        v112 = 1;
      }

      if (v112)
      {
        v113 = 0;
      }

      else
      {
        v113 = v106;
      }

      v528 = v113;
      if (v109)
      {
        v114 = 0;
      }

      else
      {
        v114 = v107;
      }

      v529 = v114;
      if ((v105 & (v105 - 1)) != 0)
      {
        v115 = 1;
      }

      else
      {
        v115 = v105;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v115);
      *v519 = *v532;
      v518 = &unk_2867C73C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 14:
      v527 = &unk_2867C6120;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v88 = *a4 == 0;
      }

      else
      {
        v88 = 1;
      }

      v89 = *a4;
      if (v88)
      {
        v89 = 0;
      }

      v90 = 4 * (v89 != 0);
      LODWORD(v91) = v90 * v89;
      *v532 = 4;
      *&v532[4] = v89;
      v92 = *v532;
      v93 = HIDWORD(v89);
      if (HIDWORD(*v532))
      {
        v94 = *v532 == 0;
      }

      else
      {
        v94 = 1;
      }

      v95 = v94;
      if (v93)
      {
        v91 = v91;
      }

      else
      {
        v91 = 0;
      }

      v96 = v90 & 0x3FFFFFFFFLL | ((v91 >> 2) << 34);
      *&v532[4] = v96;
      *v532 = 1;
      v97 = *v532;
      *v532 = v92;
      *&v532[8] = HIDWORD(v89);
      *&v532[12] = v97;
      *&v532[20] = v91;
      *&v532[24] = v89;
      *&v533 = v96;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v97;
      v531 = v91;
      if (v93)
      {
        v98 = v95;
      }

      else
      {
        v98 = 1;
      }

      if (v98)
      {
        v99 = 0;
      }

      else
      {
        v99 = v92;
      }

      v528 = v99;
      if (v95)
      {
        v100 = 0;
      }

      else
      {
        v100 = v93;
      }

      v529 = v100;
      if (((2 * v91) & (2 * v91 - 1)) != 0)
      {
        v101 = 2;
      }

      else
      {
        v101 = 2 * v91;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v101);
      *v519 = *v532;
      v518 = &unk_2867C7340;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 15:
      v527 = &unk_2867C6100;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v462 = *a4 == 0;
      }

      else
      {
        v462 = 1;
      }

      v463 = *a4;
      if (v462)
      {
        v463 = 0;
      }

      v464 = 4 * (v463 != 0);
      LODWORD(v465) = v464 * v463;
      *v532 = 4;
      *&v532[4] = v463;
      v466 = *v532;
      v467 = HIDWORD(v463);
      if (HIDWORD(*v532))
      {
        v468 = *v532 == 0;
      }

      else
      {
        v468 = 1;
      }

      v469 = v468;
      if (v467)
      {
        v465 = v465;
      }

      else
      {
        v465 = 0;
      }

      v470 = v464 & 0x3FFFFFFFFLL | ((v465 >> 2) << 34);
      *&v532[4] = v470;
      *v532 = 1;
      v471 = *v532;
      *v532 = v466;
      *&v532[8] = HIDWORD(v463);
      *&v532[12] = v471;
      *&v532[20] = v465;
      *&v532[24] = v463;
      *&v533 = v470;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v471;
      v531 = v465;
      if (v467)
      {
        v472 = v469;
      }

      else
      {
        v472 = 1;
      }

      if (v472)
      {
        v473 = 0;
      }

      else
      {
        v473 = v466;
      }

      v528 = v473;
      if (v469)
      {
        v474 = 0;
      }

      else
      {
        v474 = v467;
      }

      v529 = v474;
      if (((2 * v465) & (2 * v465 - 1)) != 0)
      {
        v475 = 2;
      }

      else
      {
        v475 = 2 * v465;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v475);
      *v519 = *v532;
      v518 = &unk_2867C72C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 16:
      v527 = &unk_2867C60E0;
      v526 = 0;
      if (a4[1])
      {
        v345 = *a4 == 0;
      }

      else
      {
        v345 = 1;
      }

      if (v345)
      {
        v346 = 0;
      }

      else
      {
        v346 = *a4;
      }

      v347 = 4 * (v346 != 0);
      LODWORD(v348) = v347 * v346;
      *v532 = 4;
      *&v532[4] = v346;
      v349 = *v532;
      v350 = HIDWORD(v346);
      if (HIDWORD(*v532))
      {
        v351 = *v532 == 0;
      }

      else
      {
        v351 = 1;
      }

      v352 = v351;
      if (v350)
      {
        v348 = v348;
      }

      else
      {
        v348 = 0;
      }

      v353 = v347 & 0x3FFFFFFFFLL | ((v348 >> 2) << 34);
      *&v532[4] = v353;
      *v532 = 1;
      v354 = *v532;
      *v532 = v349;
      *&v532[8] = HIDWORD(v346);
      *&v532[12] = v354;
      *&v532[20] = v348;
      *&v532[24] = v346;
      *&v533 = v353;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v354;
      v531 = v348;
      if (v350)
      {
        v355 = v352;
      }

      else
      {
        v355 = 1;
      }

      if (v355)
      {
        v356 = 0;
      }

      else
      {
        v356 = v349;
      }

      v528 = v356;
      if (v352)
      {
        v357 = 0;
      }

      else
      {
        v357 = v350;
      }

      v529 = v357;
      if (((4 * v348) & (4 * v348 - 1)) != 0)
      {
        v358 = 4;
      }

      else
      {
        v358 = 4 * v348;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v358, a1);
      *v519 = *v532;
      v518 = &unk_2867C7240;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 17:
      v527 = &unk_2867C60A0;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v476 = *a4 == 0;
      }

      else
      {
        v476 = 1;
      }

      v477 = *a4;
      if (v476)
      {
        v477 = 0;
      }

      *&v532[4] = v477;
      *v532 = 3;
      if (v477)
      {
        v478 = 3;
      }

      else
      {
        v478 = 0;
      }

      LODWORD(v479) = v478 * v477;
      *v532 = 3;
      *&v532[4] = v477;
      v480 = *v532;
      v481 = HIDWORD(v477);
      if (HIDWORD(*v532))
      {
        v482 = *v532 == 0;
      }

      else
      {
        v482 = 1;
      }

      v483 = v482;
      if (v481)
      {
        v479 = v479;
      }

      else
      {
        v479 = 0;
      }

      v484 = v478 | (v479 << 32);
      *&v532[4] = v484;
      *v532 = 1;
      v485 = *v532;
      *v532 = v480;
      *&v532[8] = HIDWORD(v477);
      *&v532[12] = v485;
      *&v532[20] = v479;
      *&v532[24] = v477;
      *&v533 = v484;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v485;
      v531 = v479;
      if (v481)
      {
        v486 = v483;
      }

      else
      {
        v486 = 1;
      }

      if (v486)
      {
        v487 = 0;
      }

      else
      {
        v487 = v480;
      }

      v528 = v487;
      if (v483)
      {
        v488 = 0;
      }

      else
      {
        v488 = v481;
      }

      v529 = v488;
      if ((v479 & (v479 - 1)) != 0)
      {
        v489 = 1;
      }

      else
      {
        v489 = v479;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v489);
      *v519 = *v532;
      v518 = &unk_2867C71C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 18:
      v527 = &unk_2867C6080;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v130 = *a4 == 0;
      }

      else
      {
        v130 = 1;
      }

      v131 = *a4;
      if (v130)
      {
        v131 = 0;
      }

      *&v532[4] = v131;
      *v532 = 3;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 0;
      }

      LODWORD(v133) = v132 * v131;
      *v532 = 3;
      *&v532[4] = v131;
      v134 = *v532;
      v135 = HIDWORD(v131);
      if (HIDWORD(*v532))
      {
        v136 = *v532 == 0;
      }

      else
      {
        v136 = 1;
      }

      v137 = v136;
      if (v135)
      {
        v133 = v133;
      }

      else
      {
        v133 = 0;
      }

      v138 = v132 | (v133 << 32);
      *&v532[4] = v138;
      *v532 = 1;
      v139 = *v532;
      *v532 = v134;
      *&v532[8] = HIDWORD(v131);
      *&v532[12] = v139;
      *&v532[20] = v133;
      *&v532[24] = v131;
      *&v533 = v138;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v139;
      v531 = v133;
      if (v135)
      {
        v140 = v137;
      }

      else
      {
        v140 = 1;
      }

      if (v140)
      {
        v141 = 0;
      }

      else
      {
        v141 = v134;
      }

      v528 = v141;
      if (v137)
      {
        v142 = 0;
      }

      else
      {
        v142 = v135;
      }

      v529 = v142;
      if (((2 * v133) & (2 * v133 - 1)) != 0)
      {
        v143 = 2;
      }

      else
      {
        v143 = 2 * v133;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v143);
      *v519 = *v532;
      v518 = &unk_2867C7140;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 19:
      v527 = &unk_2867C6060;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v18 = *a4 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = *a4;
      if (v18)
      {
        v19 = 0;
      }

      *&v532[4] = v19;
      *v532 = 3;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      LODWORD(v21) = v20 * v19;
      *v532 = 3;
      *&v532[4] = v19;
      v22 = *v532;
      v23 = HIDWORD(v19);
      if (HIDWORD(*v532))
      {
        v24 = *v532 == 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = v24;
      if (v23)
      {
        v21 = v21;
      }

      else
      {
        v21 = 0;
      }

      v26 = v20 | (v21 << 32);
      *&v532[4] = v26;
      *v532 = 1;
      v27 = *v532;
      *v532 = v22;
      *&v532[8] = HIDWORD(v19);
      *&v532[12] = v27;
      *&v532[20] = v21;
      *&v532[24] = v19;
      *&v533 = v26;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v27;
      v531 = v21;
      if (v23)
      {
        v28 = v25;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v22;
      }

      v528 = v29;
      if (v25)
      {
        v30 = 0;
      }

      else
      {
        v30 = v23;
      }

      v529 = v30;
      if (((2 * v21) & (2 * v21 - 1)) != 0)
      {
        v31 = 2;
      }

      else
      {
        v31 = 2 * v21;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v31);
      *v519 = *v532;
      v518 = &unk_2867C70C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 20:
      v527 = &unk_2867C5FE0;
      v526 = 0;
      if (a4[1])
      {
        v434 = *a4 == 0;
      }

      else
      {
        v434 = 1;
      }

      v435 = *a4;
      if (v434)
      {
        v435 = 0;
      }

      *&v532[4] = v435;
      *v532 = 3;
      if (v435)
      {
        v436 = 3;
      }

      else
      {
        v436 = 0;
      }

      LODWORD(v437) = v436 * v435;
      *v532 = 3;
      *&v532[4] = v435;
      v438 = *v532;
      v439 = HIDWORD(v435);
      if (HIDWORD(*v532))
      {
        v440 = *v532 == 0;
      }

      else
      {
        v440 = 1;
      }

      v441 = v440;
      if (v439)
      {
        v437 = v437;
      }

      else
      {
        v437 = 0;
      }

      v442 = v436 | (v437 << 32);
      *&v532[4] = v442;
      *v532 = 1;
      v443 = *v532;
      *v532 = v438;
      *&v532[8] = HIDWORD(v435);
      *&v532[12] = v443;
      *&v532[20] = v437;
      *&v532[24] = v435;
      *&v533 = v442;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v443;
      v531 = v437;
      if (v439)
      {
        v444 = v441;
      }

      else
      {
        v444 = 1;
      }

      if (v444)
      {
        v445 = 0;
      }

      else
      {
        v445 = v438;
      }

      v528 = v445;
      if (v441)
      {
        v446 = 0;
      }

      else
      {
        v446 = v439;
      }

      v529 = v446;
      if (((4 * v437) & (4 * v437 - 1)) != 0)
      {
        v447 = 4;
      }

      else
      {
        v447 = 4 * v437;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v447, a1);
      *v519 = *v532;
      v518 = &unk_2867C6FC0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 21:
      v527 = &unk_2867C5F80;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v504 = *a4 == 0;
      }

      else
      {
        v504 = 1;
      }

      v505 = *a4;
      if (v504)
      {
        v505 = 0;
      }

      *&v532[4] = v505;
      *v532 = 3;
      if (v505)
      {
        v506 = 3;
      }

      else
      {
        v506 = 0;
      }

      LODWORD(v507) = v506 * v505;
      *v532 = 3;
      *&v532[4] = v505;
      v508 = *v532;
      v509 = HIDWORD(v505);
      if (HIDWORD(*v532))
      {
        v510 = *v532 == 0;
      }

      else
      {
        v510 = 1;
      }

      v511 = v510;
      if (v509)
      {
        v507 = v507;
      }

      else
      {
        v507 = 0;
      }

      v512 = v506 | (v507 << 32);
      *&v532[4] = v512;
      *v532 = 1;
      v513 = *v532;
      *v532 = v508;
      *&v532[8] = HIDWORD(v505);
      *&v532[12] = v513;
      *&v532[20] = v507;
      *&v532[24] = v505;
      *&v533 = v512;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v513;
      v531 = v507;
      if (v509)
      {
        v514 = v511;
      }

      else
      {
        v514 = 1;
      }

      if (v514)
      {
        v515 = 0;
      }

      else
      {
        v515 = v508;
      }

      v528 = v515;
      if (v511)
      {
        v516 = 0;
      }

      else
      {
        v516 = v509;
      }

      v529 = v516;
      if ((v507 & (v507 - 1)) != 0)
      {
        v517 = 1;
      }

      else
      {
        v517 = v507;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v517);
      *v519 = *v532;
      v518 = &unk_2867C6F40;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 22:
      v527 = &unk_2867C5F20;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v172 = *a4 == 0;
      }

      else
      {
        v172 = 1;
      }

      v173 = *a4;
      if (v172)
      {
        v173 = 0;
      }

      *&v532[4] = v173;
      *v532 = 3;
      if (v173)
      {
        v174 = 3;
      }

      else
      {
        v174 = 0;
      }

      LODWORD(v175) = v174 * v173;
      *v532 = 3;
      *&v532[4] = v173;
      v176 = *v532;
      v177 = HIDWORD(v173);
      if (HIDWORD(*v532))
      {
        v178 = *v532 == 0;
      }

      else
      {
        v178 = 1;
      }

      v179 = v178;
      if (v177)
      {
        v175 = v175;
      }

      else
      {
        v175 = 0;
      }

      v180 = v174 | (v175 << 32);
      *&v532[4] = v180;
      *v532 = 1;
      v181 = *v532;
      *v532 = v176;
      *&v532[8] = HIDWORD(v173);
      *&v532[12] = v181;
      *&v532[20] = v175;
      *&v532[24] = v173;
      *&v533 = v180;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v181;
      v531 = v175;
      if (v177)
      {
        v182 = v179;
      }

      else
      {
        v182 = 1;
      }

      if (v182)
      {
        v183 = 0;
      }

      else
      {
        v183 = v176;
      }

      v528 = v183;
      if (v179)
      {
        v184 = 0;
      }

      else
      {
        v184 = v177;
      }

      v529 = v184;
      if (((2 * v175) & (2 * v175 - 1)) != 0)
      {
        v185 = 2;
      }

      else
      {
        v185 = 2 * v175;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v185);
      *v519 = *v532;
      v518 = &unk_2867C6EC0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 23:
      v527 = &unk_2867C5F00;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v490 = *a4 == 0;
      }

      else
      {
        v490 = 1;
      }

      v491 = *a4;
      if (v490)
      {
        v491 = 0;
      }

      *&v532[4] = v491;
      *v532 = 3;
      if (v491)
      {
        v492 = 3;
      }

      else
      {
        v492 = 0;
      }

      LODWORD(v493) = v492 * v491;
      *v532 = 3;
      *&v532[4] = v491;
      v494 = *v532;
      v495 = HIDWORD(v491);
      if (HIDWORD(*v532))
      {
        v496 = *v532 == 0;
      }

      else
      {
        v496 = 1;
      }

      v497 = v496;
      if (v495)
      {
        v493 = v493;
      }

      else
      {
        v493 = 0;
      }

      v498 = v492 | (v493 << 32);
      *&v532[4] = v498;
      *v532 = 1;
      v499 = *v532;
      *v532 = v494;
      *&v532[8] = HIDWORD(v491);
      *&v532[12] = v499;
      *&v532[20] = v493;
      *&v532[24] = v491;
      *&v533 = v498;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v499;
      v531 = v493;
      if (v495)
      {
        v500 = v497;
      }

      else
      {
        v500 = 1;
      }

      if (v500)
      {
        v501 = 0;
      }

      else
      {
        v501 = v494;
      }

      v528 = v501;
      if (v497)
      {
        v502 = 0;
      }

      else
      {
        v502 = v495;
      }

      v529 = v502;
      if (((2 * v493) & (2 * v493 - 1)) != 0)
      {
        v503 = 2;
      }

      else
      {
        v503 = 2 * v493;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v503);
      *v519 = *v532;
      v518 = &unk_2867C6E40;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 24:
      v527 = &unk_2867C5EE0;
      v526 = 0;
      if (a4[1])
      {
        v74 = *a4 == 0;
      }

      else
      {
        v74 = 1;
      }

      v75 = *a4;
      if (v74)
      {
        v75 = 0;
      }

      *&v532[4] = v75;
      *v532 = 3;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 0;
      }

      LODWORD(v77) = v76 * v75;
      *v532 = 3;
      *&v532[4] = v75;
      v78 = *v532;
      v79 = HIDWORD(v75);
      if (HIDWORD(*v532))
      {
        v80 = *v532 == 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = v80;
      if (v79)
      {
        v77 = v77;
      }

      else
      {
        v77 = 0;
      }

      v82 = v76 | (v77 << 32);
      *&v532[4] = v82;
      *v532 = 1;
      v83 = *v532;
      *v532 = v78;
      *&v532[8] = HIDWORD(v75);
      *&v532[12] = v83;
      *&v532[20] = v77;
      *&v532[24] = v75;
      *&v533 = v82;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v83;
      v531 = v77;
      if (v79)
      {
        v84 = v81;
      }

      else
      {
        v84 = 1;
      }

      if (v84)
      {
        v85 = 0;
      }

      else
      {
        v85 = v78;
      }

      v528 = v85;
      if (v81)
      {
        v86 = 0;
      }

      else
      {
        v86 = v79;
      }

      v529 = v86;
      if (((4 * v77) & (4 * v77 - 1)) != 0)
      {
        v87 = 4;
      }

      else
      {
        v87 = 4 * v77;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v87, a1);
      *v519 = *v532;
      v518 = &unk_2867C6DC0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 25:
      v527 = &unk_2867C5E80;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v32 = *a4 == 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = *a4;
      if (v32)
      {
        v33 = 0;
      }

      v34 = 4 * (v33 != 0);
      LODWORD(v35) = v34 * v33;
      *v532 = 4;
      *&v532[4] = v33;
      v36 = *v532;
      v37 = HIDWORD(v33);
      if (HIDWORD(*v532))
      {
        v38 = *v532 == 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = v38;
      if (v37)
      {
        v35 = v35;
      }

      else
      {
        v35 = 0;
      }

      v40 = v34 & 0x3FFFFFFFFLL | ((v35 >> 2) << 34);
      *&v532[4] = v40;
      *v532 = 1;
      v41 = *v532;
      *v532 = v36;
      *&v532[8] = HIDWORD(v33);
      *&v532[12] = v41;
      *&v532[20] = v35;
      *&v532[24] = v33;
      *&v533 = v40;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v41;
      v531 = v35;
      if (v37)
      {
        v42 = v39;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v36;
      }

      v528 = v43;
      if (v39)
      {
        v44 = 0;
      }

      else
      {
        v44 = v37;
      }

      v529 = v44;
      if ((v35 & (v35 - 1)) != 0)
      {
        v45 = 1;
      }

      else
      {
        v45 = v35;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v45);
      *v519 = *v532;
      v518 = &unk_2867C6D40;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 26:
      v527 = &unk_2867C5E60;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v186 = *a4 == 0;
      }

      else
      {
        v186 = 1;
      }

      v187 = *a4;
      if (v186)
      {
        v187 = 0;
      }

      v188 = 4 * (v187 != 0);
      LODWORD(v189) = v188 * v187;
      *v532 = 4;
      *&v532[4] = v187;
      v190 = *v532;
      v191 = HIDWORD(v187);
      if (HIDWORD(*v532))
      {
        v192 = *v532 == 0;
      }

      else
      {
        v192 = 1;
      }

      v193 = v192;
      if (v191)
      {
        v189 = v189;
      }

      else
      {
        v189 = 0;
      }

      v194 = v188 & 0x3FFFFFFFFLL | ((v189 >> 2) << 34);
      *&v532[4] = v194;
      *v532 = 1;
      v195 = *v532;
      *v532 = v190;
      *&v532[8] = HIDWORD(v187);
      *&v532[12] = v195;
      *&v532[20] = v189;
      *&v532[24] = v187;
      *&v533 = v194;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v195;
      v531 = v189;
      if (v191)
      {
        v196 = v193;
      }

      else
      {
        v196 = 1;
      }

      if (v196)
      {
        v197 = 0;
      }

      else
      {
        v197 = v190;
      }

      v528 = v197;
      if (v193)
      {
        v198 = 0;
      }

      else
      {
        v198 = v191;
      }

      v529 = v198;
      if (((2 * v189) & (2 * v189 - 1)) != 0)
      {
        v199 = 2;
      }

      else
      {
        v199 = 2 * v189;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v199);
      *v519 = *v532;
      v518 = &unk_2867C6CC0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 27:
      v527 = &unk_2867C5E40;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v4 = *a4 == 0;
      }

      else
      {
        v4 = 1;
      }

      v5 = *a4;
      if (v4)
      {
        v5 = 0;
      }

      v6 = 4 * (v5 != 0);
      LODWORD(v7) = v6 * v5;
      *v532 = 4;
      *&v532[4] = v5;
      v8 = *v532;
      v9 = HIDWORD(v5);
      if (HIDWORD(*v532))
      {
        v10 = *v532 == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10;
      if (v9)
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
      *&v532[4] = v12;
      *v532 = 1;
      v13 = *v532;
      *v532 = v8;
      *&v532[8] = HIDWORD(v5);
      *&v532[12] = v13;
      *&v532[20] = v7;
      *&v532[24] = v5;
      *&v533 = v12;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v13;
      v531 = v7;
      if (v9)
      {
        v14 = v11;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      v528 = v15;
      if (v11)
      {
        v16 = 0;
      }

      else
      {
        v16 = v9;
      }

      v529 = v16;
      if (((2 * v7) & (2 * v7 - 1)) != 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 2 * v7;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v17);
      *v519 = *v532;
      v518 = &unk_2867C6C40;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 28:
      v527 = &unk_2867C5E20;
      v526 = 0;
      if (a4[1])
      {
        v233 = *a4 == 0;
      }

      else
      {
        v233 = 1;
      }

      if (v233)
      {
        v234 = 0;
      }

      else
      {
        v234 = *a4;
      }

      v235 = 4 * (v234 != 0);
      LODWORD(v236) = v235 * v234;
      *v532 = 4;
      *&v532[4] = v234;
      v237 = *v532;
      v238 = HIDWORD(v234);
      if (HIDWORD(*v532))
      {
        v239 = *v532 == 0;
      }

      else
      {
        v239 = 1;
      }

      v240 = v239;
      if (v238)
      {
        v236 = v236;
      }

      else
      {
        v236 = 0;
      }

      v241 = v235 & 0x3FFFFFFFFLL | ((v236 >> 2) << 34);
      *&v532[4] = v241;
      *v532 = 1;
      v242 = *v532;
      *v532 = v237;
      *&v532[8] = HIDWORD(v234);
      *&v532[12] = v242;
      *&v532[20] = v236;
      *&v532[24] = v234;
      *&v533 = v241;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v242;
      v531 = v236;
      if (v238)
      {
        v243 = v240;
      }

      else
      {
        v243 = 1;
      }

      if (v243)
      {
        v244 = 0;
      }

      else
      {
        v244 = v237;
      }

      v528 = v244;
      if (v240)
      {
        v245 = 0;
      }

      else
      {
        v245 = v238;
      }

      v529 = v245;
      if (((4 * v236) & (4 * v236 - 1)) != 0)
      {
        v246 = 4;
      }

      else
      {
        v246 = 4 * v236;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v246, a1);
      *v519 = *v532;
      v518 = &unk_2867C6BC0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 29:
      v527 = &unk_2867C5DE0;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v60 = *a4 == 0;
      }

      else
      {
        v60 = 1;
      }

      v61 = *a4;
      if (v60)
      {
        v61 = 0;
      }

      v62 = 4 * (v61 != 0);
      LODWORD(v63) = v62 * v61;
      *v532 = 4;
      *&v532[4] = v61;
      v64 = *v532;
      v65 = HIDWORD(v61);
      if (HIDWORD(*v532))
      {
        v66 = *v532 == 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = v66;
      if (v65)
      {
        v63 = v63;
      }

      else
      {
        v63 = 0;
      }

      v68 = v62 & 0x3FFFFFFFFLL | ((v63 >> 2) << 34);
      *&v532[4] = v68;
      *v532 = 1;
      v69 = *v532;
      *v532 = v64;
      *&v532[8] = HIDWORD(v61);
      *&v532[12] = v69;
      *&v532[20] = v63;
      *&v532[24] = v61;
      *&v533 = v68;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v69;
      v531 = v63;
      if (v65)
      {
        v70 = v67;
      }

      else
      {
        v70 = 1;
      }

      if (v70)
      {
        v71 = 0;
      }

      else
      {
        v71 = v64;
      }

      v528 = v71;
      if (v67)
      {
        v72 = 0;
      }

      else
      {
        v72 = v65;
      }

      v529 = v72;
      if ((v63 & (v63 - 1)) != 0)
      {
        v73 = 1;
      }

      else
      {
        v73 = v63;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v73);
      *v519 = *v532;
      v518 = &unk_2867C6B40;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 30:
      v527 = &unk_2867C5D60;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v275 = *a4 == 0;
      }

      else
      {
        v275 = 1;
      }

      v276 = *a4;
      if (v275)
      {
        v276 = 0;
      }

      v277 = 4 * (v276 != 0);
      LODWORD(v278) = v277 * v276;
      *v532 = 4;
      *&v532[4] = v276;
      v279 = *v532;
      v280 = HIDWORD(v276);
      if (HIDWORD(*v532))
      {
        v281 = *v532 == 0;
      }

      else
      {
        v281 = 1;
      }

      v282 = v281;
      if (v280)
      {
        v278 = v278;
      }

      else
      {
        v278 = 0;
      }

      v283 = v277 & 0x3FFFFFFFFLL | ((v278 >> 2) << 34);
      *&v532[4] = v283;
      *v532 = 1;
      v284 = *v532;
      *v532 = v279;
      *&v532[8] = HIDWORD(v276);
      *&v532[12] = v284;
      *&v532[20] = v278;
      *&v532[24] = v276;
      *&v533 = v283;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v284;
      v531 = v278;
      if (v280)
      {
        v285 = v282;
      }

      else
      {
        v285 = 1;
      }

      if (v285)
      {
        v286 = 0;
      }

      else
      {
        v286 = v279;
      }

      v528 = v286;
      if (v282)
      {
        v287 = 0;
      }

      else
      {
        v287 = v280;
      }

      v529 = v287;
      if (((2 * v278) & (2 * v278 - 1)) != 0)
      {
        v288 = 2;
      }

      else
      {
        v288 = 2 * v278;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v288);
      *v519 = *v532;
      v518 = &unk_2867C6A40;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 31:
      v527 = &unk_2867C5D00;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v200 = *a4 == 0;
      }

      else
      {
        v200 = 1;
      }

      v201 = *a4;
      if (v200)
      {
        v201 = 0;
      }

      v202 = 4 * (v201 != 0);
      LODWORD(v203) = v202 * v201;
      *v532 = 4;
      *&v532[4] = v201;
      v204 = *v532;
      v205 = HIDWORD(v201);
      if (HIDWORD(*v532))
      {
        v206 = *v532 == 0;
      }

      else
      {
        v206 = 1;
      }

      v207 = v206;
      if (v205)
      {
        v203 = v203;
      }

      else
      {
        v203 = 0;
      }

      v208 = v202 & 0x3FFFFFFFFLL | ((v203 >> 2) << 34);
      *&v532[4] = v208;
      *v532 = 1;
      v209 = *v532;
      *v532 = v204;
      *&v532[8] = HIDWORD(v201);
      *&v532[12] = v209;
      *&v532[20] = v203;
      *&v532[24] = v201;
      *&v533 = v208;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v209;
      v531 = v203;
      if (v205)
      {
        v210 = v207;
      }

      else
      {
        v210 = 1;
      }

      if (v210)
      {
        v211 = 0;
      }

      else
      {
        v211 = v204;
      }

      v528 = v211;
      if (v207)
      {
        v212 = 0;
      }

      else
      {
        v212 = v205;
      }

      v529 = v212;
      if (((2 * v203) & (2 * v203 - 1)) != 0)
      {
        v213 = 2;
      }

      else
      {
        v213 = 2 * v203;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v213);
      *v519 = *v532;
      v518 = &unk_2867C69C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 32:
      v527 = &unk_2867C5CA0;
      v526 = 0;
      if (a4[1])
      {
        v303 = *a4 == 0;
      }

      else
      {
        v303 = 1;
      }

      if (v303)
      {
        v304 = 0;
      }

      else
      {
        v304 = *a4;
      }

      v305 = 4 * (v304 != 0);
      LODWORD(v306) = v305 * v304;
      *v532 = 4;
      *&v532[4] = v304;
      v307 = *v532;
      v308 = HIDWORD(v304);
      if (HIDWORD(*v532))
      {
        v309 = *v532 == 0;
      }

      else
      {
        v309 = 1;
      }

      v310 = v309;
      if (v308)
      {
        v306 = v306;
      }

      else
      {
        v306 = 0;
      }

      v311 = v305 & 0x3FFFFFFFFLL | ((v306 >> 2) << 34);
      *&v532[4] = v311;
      *v532 = 1;
      v312 = *v532;
      *v532 = v307;
      *&v532[8] = HIDWORD(v304);
      *&v532[12] = v312;
      *&v532[20] = v306;
      *&v532[24] = v304;
      *&v533 = v311;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v312;
      v531 = v306;
      if (v308)
      {
        v313 = v310;
      }

      else
      {
        v313 = 1;
      }

      if (v313)
      {
        v314 = 0;
      }

      else
      {
        v314 = v307;
      }

      v528 = v314;
      if (v310)
      {
        v315 = 0;
      }

      else
      {
        v315 = v308;
      }

      v529 = v315;
      if (((4 * v306) & (4 * v306 - 1)) != 0)
      {
        v316 = 4;
      }

      else
      {
        v316 = 4 * v306;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v316, a1);
      *v519 = *v532;
      v518 = &unk_2867C6940;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 33:
      v527 = &unk_2867C5C60;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v420 = *a4 == 0;
      }

      else
      {
        v420 = 1;
      }

      v421 = *a4;
      if (v420)
      {
        v421 = 0;
      }

      v422 = 4 * (v421 != 0);
      LODWORD(v423) = v422 * v421;
      *v532 = 4;
      *&v532[4] = v421;
      v424 = *v532;
      v425 = HIDWORD(v421);
      if (HIDWORD(*v532))
      {
        v426 = *v532 == 0;
      }

      else
      {
        v426 = 1;
      }

      v427 = v426;
      if (v425)
      {
        v423 = v423;
      }

      else
      {
        v423 = 0;
      }

      v428 = v422 & 0x3FFFFFFFFLL | ((v423 >> 2) << 34);
      *&v532[4] = v428;
      *v532 = 1;
      v429 = *v532;
      *v532 = v424;
      *&v532[8] = HIDWORD(v421);
      *&v532[12] = v429;
      *&v532[20] = v423;
      *&v532[24] = v421;
      *&v533 = v428;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v429;
      v531 = v423;
      if (v425)
      {
        v430 = v427;
      }

      else
      {
        v430 = 1;
      }

      if (v430)
      {
        v431 = 0;
      }

      else
      {
        v431 = v424;
      }

      v528 = v431;
      if (v427)
      {
        v432 = 0;
      }

      else
      {
        v432 = v425;
      }

      v529 = v432;
      if ((v423 & (v423 - 1)) != 0)
      {
        v433 = 1;
      }

      else
      {
        v433 = v423;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v433);
      *v519 = *v532;
      v518 = &unk_2867C68C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 34:
      v527 = &unk_2867C5C40;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v289 = *a4 == 0;
      }

      else
      {
        v289 = 1;
      }

      v290 = *a4;
      if (v289)
      {
        v290 = 0;
      }

      v291 = 4 * (v290 != 0);
      LODWORD(v292) = v291 * v290;
      *v532 = 4;
      *&v532[4] = v290;
      v293 = *v532;
      v294 = HIDWORD(v290);
      if (HIDWORD(*v532))
      {
        v295 = *v532 == 0;
      }

      else
      {
        v295 = 1;
      }

      v296 = v295;
      if (v294)
      {
        v292 = v292;
      }

      else
      {
        v292 = 0;
      }

      v297 = v291 & 0x3FFFFFFFFLL | ((v292 >> 2) << 34);
      *&v532[4] = v297;
      *v532 = 1;
      v298 = *v532;
      *v532 = v293;
      *&v532[8] = HIDWORD(v290);
      *&v532[12] = v298;
      *&v532[20] = v292;
      *&v532[24] = v290;
      *&v533 = v297;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v298;
      v531 = v292;
      if (v294)
      {
        v299 = v296;
      }

      else
      {
        v299 = 1;
      }

      if (v299)
      {
        v300 = 0;
      }

      else
      {
        v300 = v293;
      }

      v528 = v300;
      if (v296)
      {
        v301 = 0;
      }

      else
      {
        v301 = v294;
      }

      v529 = v301;
      if (((2 * v292) & (2 * v292 - 1)) != 0)
      {
        v302 = 2;
      }

      else
      {
        v302 = 2 * v292;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v302);
      *v519 = *v532;
      v518 = &unk_2867C6840;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 35:
      v527 = &unk_2867C5C20;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v261 = *a4 == 0;
      }

      else
      {
        v261 = 1;
      }

      v262 = *a4;
      if (v261)
      {
        v262 = 0;
      }

      v263 = 4 * (v262 != 0);
      LODWORD(v264) = v263 * v262;
      *v532 = 4;
      *&v532[4] = v262;
      v265 = *v532;
      v266 = HIDWORD(v262);
      if (HIDWORD(*v532))
      {
        v267 = *v532 == 0;
      }

      else
      {
        v267 = 1;
      }

      v268 = v267;
      if (v266)
      {
        v264 = v264;
      }

      else
      {
        v264 = 0;
      }

      v269 = v263 & 0x3FFFFFFFFLL | ((v264 >> 2) << 34);
      *&v532[4] = v269;
      *v532 = 1;
      v270 = *v532;
      *v532 = v265;
      *&v532[8] = HIDWORD(v262);
      *&v532[12] = v270;
      *&v532[20] = v264;
      *&v532[24] = v262;
      *&v533 = v269;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v270;
      v531 = v264;
      if (v266)
      {
        v271 = v268;
      }

      else
      {
        v271 = 1;
      }

      if (v271)
      {
        v272 = 0;
      }

      else
      {
        v272 = v265;
      }

      v528 = v272;
      if (v268)
      {
        v273 = 0;
      }

      else
      {
        v273 = v266;
      }

      v529 = v273;
      if (((2 * v264) & (2 * v264 - 1)) != 0)
      {
        v274 = 2;
      }

      else
      {
        v274 = 2 * v264;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v274);
      *v519 = *v532;
      v518 = &unk_2867C67C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 36:
      v527 = &unk_2867C5C00;
      v526 = 0;
      if (a4[1])
      {
        v247 = *a4 == 0;
      }

      else
      {
        v247 = 1;
      }

      if (v247)
      {
        v248 = 0;
      }

      else
      {
        v248 = *a4;
      }

      v249 = 4 * (v248 != 0);
      LODWORD(v250) = v249 * v248;
      *v532 = 4;
      *&v532[4] = v248;
      v251 = *v532;
      v252 = HIDWORD(v248);
      if (HIDWORD(*v532))
      {
        v253 = *v532 == 0;
      }

      else
      {
        v253 = 1;
      }

      v254 = v253;
      if (v252)
      {
        v250 = v250;
      }

      else
      {
        v250 = 0;
      }

      v255 = v249 & 0x3FFFFFFFFLL | ((v250 >> 2) << 34);
      *&v532[4] = v255;
      *v532 = 1;
      v256 = *v532;
      *v532 = v251;
      *&v532[8] = HIDWORD(v248);
      *&v532[12] = v256;
      *&v532[20] = v250;
      *&v532[24] = v248;
      *&v533 = v255;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v256;
      v531 = v250;
      if (v252)
      {
        v257 = v254;
      }

      else
      {
        v257 = 1;
      }

      if (v257)
      {
        v258 = 0;
      }

      else
      {
        v258 = v251;
      }

      v528 = v258;
      if (v254)
      {
        v259 = 0;
      }

      else
      {
        v259 = v252;
      }

      v529 = v259;
      if (((4 * v250) & (4 * v250 - 1)) != 0)
      {
        v260 = 4;
      }

      else
      {
        v260 = 4 * v250;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v260, a1);
      *v519 = *v532;
      v518 = &unk_2867C6740;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 37:
      v527 = &unk_2867C5BA0;
      LOBYTE(v526) = 0;
      if (a4[1])
      {
        v378 = *a4 == 0;
      }

      else
      {
        v378 = 1;
      }

      v379 = *a4;
      if (v378)
      {
        v379 = 0;
      }

      v380 = 4 * (v379 != 0);
      LODWORD(v381) = v380 * v379;
      *v532 = 4;
      *&v532[4] = v379;
      v382 = *v532;
      v383 = HIDWORD(v379);
      if (HIDWORD(*v532))
      {
        v384 = *v532 == 0;
      }

      else
      {
        v384 = 1;
      }

      v385 = v384;
      if (v383)
      {
        v381 = v381;
      }

      else
      {
        v381 = 0;
      }

      v386 = v380 & 0x3FFFFFFFFLL | ((v381 >> 2) << 34);
      *&v532[4] = v386;
      *v532 = 1;
      v387 = *v532;
      *v532 = v382;
      *&v532[8] = HIDWORD(v379);
      *&v532[12] = v387;
      *&v532[20] = v381;
      *&v532[24] = v379;
      *&v533 = v386;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v387;
      v531 = v381;
      if (v383)
      {
        v388 = v385;
      }

      else
      {
        v388 = 1;
      }

      if (v388)
      {
        v389 = 0;
      }

      else
      {
        v389 = v382;
      }

      v528 = v389;
      if (v385)
      {
        v390 = 0;
      }

      else
      {
        v390 = v383;
      }

      v529 = v390;
      if ((v381 & (v381 - 1)) != 0)
      {
        v391 = 1;
      }

      else
      {
        v391 = v381;
      }

      sub_255BF2568(&v535, &v528, &v530, 1, &v526, 1, v391);
      *v519 = *v532;
      v518 = &unk_2867C66C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 38:
      v527 = &unk_2867C5B40;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v448 = *a4 == 0;
      }

      else
      {
        v448 = 1;
      }

      v449 = *a4;
      if (v448)
      {
        v449 = 0;
      }

      v450 = 4 * (v449 != 0);
      LODWORD(v451) = v450 * v449;
      *v532 = 4;
      *&v532[4] = v449;
      v452 = *v532;
      v453 = HIDWORD(v449);
      if (HIDWORD(*v532))
      {
        v454 = *v532 == 0;
      }

      else
      {
        v454 = 1;
      }

      v455 = v454;
      if (v453)
      {
        v451 = v451;
      }

      else
      {
        v451 = 0;
      }

      v456 = v450 & 0x3FFFFFFFFLL | ((v451 >> 2) << 34);
      *&v532[4] = v456;
      *v532 = 1;
      v457 = *v532;
      *v532 = v452;
      *&v532[8] = HIDWORD(v449);
      *&v532[12] = v457;
      *&v532[20] = v451;
      *&v532[24] = v449;
      *&v533 = v456;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v457;
      v531 = v451;
      if (v453)
      {
        v458 = v455;
      }

      else
      {
        v458 = 1;
      }

      if (v458)
      {
        v459 = 0;
      }

      else
      {
        v459 = v452;
      }

      v528 = v459;
      if (v455)
      {
        v460 = 0;
      }

      else
      {
        v460 = v453;
      }

      v529 = v460;
      if (((2 * v451) & (2 * v451 - 1)) != 0)
      {
        v461 = 2;
      }

      else
      {
        v461 = 2 * v451;
      }

      sub_255BF2AD8(&v535, &v528, &v530, 1, &v526, 1, v461);
      *v519 = *v532;
      v518 = &unk_2867C6640;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 39:
      v527 = &unk_2867C5B20;
      LOWORD(v526) = 0;
      if (a4[1])
      {
        v158 = *a4 == 0;
      }

      else
      {
        v158 = 1;
      }

      v159 = *a4;
      if (v158)
      {
        v159 = 0;
      }

      v160 = 4 * (v159 != 0);
      LODWORD(v161) = v160 * v159;
      *v532 = 4;
      *&v532[4] = v159;
      v162 = *v532;
      v163 = HIDWORD(v159);
      if (HIDWORD(*v532))
      {
        v164 = *v532 == 0;
      }

      else
      {
        v164 = 1;
      }

      v165 = v164;
      if (v163)
      {
        v161 = v161;
      }

      else
      {
        v161 = 0;
      }

      v166 = v160 & 0x3FFFFFFFFLL | ((v161 >> 2) << 34);
      *&v532[4] = v166;
      *v532 = 1;
      v167 = *v532;
      *v532 = v162;
      *&v532[8] = HIDWORD(v159);
      *&v532[12] = v167;
      *&v532[20] = v161;
      *&v532[24] = v159;
      *&v533 = v166;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v167;
      v531 = v161;
      if (v163)
      {
        v168 = v165;
      }

      else
      {
        v168 = 1;
      }

      if (v168)
      {
        v169 = 0;
      }

      else
      {
        v169 = v162;
      }

      v528 = v169;
      if (v165)
      {
        v170 = 0;
      }

      else
      {
        v170 = v163;
      }

      v529 = v170;
      if (((2 * v161) & (2 * v161 - 1)) != 0)
      {
        v171 = 2;
      }

      else
      {
        v171 = 2 * v161;
      }

      sub_255BF3604(&v535, &v528, &v530, 1, &v526, 1, v171);
      *v519 = *v532;
      v518 = &unk_2867C65C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    case 40:
      v527 = &unk_2867C5AA0;
      v526 = 0;
      if (a4[1])
      {
        v116 = *a4 == 0;
      }

      else
      {
        v116 = 1;
      }

      if (v116)
      {
        v117 = 0;
      }

      else
      {
        v117 = *a4;
      }

      v118 = 4 * (v117 != 0);
      LODWORD(v119) = v118 * v117;
      *v532 = 4;
      *&v532[4] = v117;
      v120 = *v532;
      v121 = HIDWORD(v117);
      if (HIDWORD(*v532))
      {
        v122 = *v532 == 0;
      }

      else
      {
        v122 = 1;
      }

      v123 = v122;
      if (v121)
      {
        v119 = v119;
      }

      else
      {
        v119 = 0;
      }

      v124 = v118 & 0x3FFFFFFFFLL | ((v119 >> 2) << 34);
      *&v532[4] = v124;
      *v532 = 1;
      v125 = *v532;
      *v532 = v120;
      *&v532[8] = HIDWORD(v117);
      *&v532[12] = v125;
      *&v532[20] = v119;
      *&v532[24] = v117;
      *&v533 = v124;
      BYTE8(v533) = 0;
      BYTE4(v534) = 0;
      v530 = v125;
      v531 = v119;
      if (v121)
      {
        v126 = v123;
      }

      else
      {
        v126 = 1;
      }

      if (v126)
      {
        v127 = 0;
      }

      else
      {
        v127 = v120;
      }

      v528 = v127;
      if (v123)
      {
        v128 = 0;
      }

      else
      {
        v128 = v121;
      }

      v529 = v128;
      if (((4 * v119) & (4 * v119 - 1)) != 0)
      {
        v129 = 4;
      }

      else
      {
        v129 = 4 * v119;
      }

      sub_255BF3D60(&v535, &v528, &v530, 1, &v526, 1, v129, a1);
      *v519 = *v532;
      v518 = &unk_2867C64C0;
      *&v519[16] = *&v532[16];
      v520 = v533;
      v521 = v534;
      v522 = v535;
      v523 = v536;
      v525 = v538;
      v524 = v537;
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255BF1B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_255BF1E44(unint64_t *a1, _DWORD *a2, unint64_t *a3, char a4, __int16 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = a2[1];
  }

  else
  {
    LODWORD(v13) = *a2;
    v12 = a2[1];
    if (v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v11 = (*a2 != 0) | (v13 << 32);
  }

  v14 = v12 * HIDWORD(v11);
  v15 = 2 * v14;
  v16 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *a1 = v15;
  a1[1] = 0;
  a1[2] = v19;
  if (!v14)
  {
    a1[3] = *a2;
    a1[4] = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
    return a1;
  }

  memptr = 0;
  v20 = malloc_type_posix_memalign(&memptr, v19, 2 * v14, 0x63222AC6uLL);
  if (v20)
  {
    sub_255C07708(v20, a1[2], v15);
  }

  v21 = memptr;
  a1[1] = memptr;
  v22 = *a2;
  a1[3] = *a2;
  a1[4] = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  if (v21)
  {
    if (HIDWORD(v22))
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v22;
    }

    v26 = HIDWORD(v25) * ((v11 >> 31) >> 1);
    if (a6)
    {
      if (v26 != -1)
      {
        goto LABEL_38;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v27 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_37:
          qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_38:
          if (v25)
          {
            v31 = v24;
          }

          else
          {
            v31 = 1;
          }

          if ((v31 & 1) == 0)
          {
            v32 = v25 - 1;
            v33 = HIDWORD(v25) - 1;
            if (HIDWORD(v25) != 1)
            {
              v34 = HIDWORD(v11) & 0x7FFFFFFF;
              v35 = *a5;
              if (v25 != 1)
              {
                v36 = 0;
                v37 = v11 & 0x7FFFFFFF;
                v38 = 2 * v34;
                do
                {
                  v39 = v21;
                  v40 = v25 - 1;
                  do
                  {
                    *v39 = v35;
                    v39 += v11 & 0x7FFFFFFF;
                    --v40;
                  }

                  while (v40);
                  v35 = *a5;
                  *v39 = *a5;
                  v21 = (v21 + v38);
                  ++v36;
                }

                while (v36 != v33);
                goto LABEL_67;
              }

              do
              {
                *v21 = v35;
                v21 += v34;
                --v33;
              }

              while (v33);
            }

            if (v25 == 1)
            {
LABEL_68:
              *v21 = *a5;
              return a1;
            }

            v37 = v11 & 0x7FFFFFFF;
            v35 = *a5;
            do
            {
LABEL_67:
              *v21 = v35;
              v21 += v37;
              --v32;
            }

            while (v32);
            goto LABEL_68;
          }

          return a1;
        }
      }

      else
      {
        v28 = qword_27F7DD608;
        v27 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_76;
        }
      }

      do
      {
        (*v28)(*(v28 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v28 += 16;
      }

      while (v28 != v27);
      if (byte_27F7DD630)
      {
        goto LABEL_37;
      }

LABEL_76:
      abort();
    }

    if (v26 != -1)
    {
LABEL_53:
      if (v25)
      {
        v41 = v24;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        return a1;
      }

      v42 = v25 - 1;
      v43 = HIDWORD(v25) - 1;
      if (HIDWORD(v25) != 1)
      {
        v44 = HIDWORD(v11) & 0x7FFFFFFF;
        if (v25 != 1)
        {
          v45 = 0;
          v46 = v11 & 0x7FFFFFFF;
          v47 = 2 * v44;
          do
          {
            v48 = v21;
            v49 = v25 - 1;
            do
            {
              *v48 = 0;
              v48 += v11 & 0x7FFFFFFF;
              --v49;
            }

            while (v49);
            *v48 = 0;
            v21 = (v21 + v47);
            ++v45;
          }

          while (v45 != v43);
          goto LABEL_72;
        }

        do
        {
          *v21 = 0;
          v21 += v44;
          --v43;
        }

        while (v43);
      }

      if (v25 == 1)
      {
LABEL_73:
        *v21 = 0;
        return a1;
      }

      v46 = v11 & 0x7FFFFFFF;
      do
      {
LABEL_72:
        *v21 = 0;
        v21 += v46;
        --v42;
      }

      while (v42);
      goto LABEL_73;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v30 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_52:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_53;
      }
    }

    else
    {
      v30 = qword_27F7DD608;
      v29 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_76;
      }
    }

    do
    {
      (*v30)(*(v30 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v30 += 16;
    }

    while (v30 != v29);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_52;
  }

  return a1;
}

unint64_t *sub_255BF2304(unint64_t *a1, _DWORD *a2, unint64_t *a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = a2[1];
  }

  else
  {
    LODWORD(v13) = *a2;
    v12 = a2[1];
    if (v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v11 = (*a2 != 0) | (v13 << 32);
  }

  v14 = v12 * HIDWORD(v11);
  v15 = 4 * v14;
  v16 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *a1 = v15;
  a1[1] = 0;
  a1[2] = v19;
  if (v14)
  {
    memptr[0] = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, 4 * v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_255C07708(v20, a1[2], v15);
    }

    v22 = memptr[0];
    a1[1] = memptr[0];
    v23 = *a2;
    a1[3] = *a2;
    a1[4] = (4 * v11) & 0xFFFFFFFCFFFFFFFCLL;
    if (v22 && (a6 & 1) != 0)
    {
      if (v23)
      {
        v24 = HIDWORD(v23) == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v23 = 0;
      }

      memptr[0] = v22;
      memptr[1] = v23;
      memptr[2] = (v11 & 0x3FFFFFFF3FFFFFFFLL);
      if (HIDWORD(v23) * ((v11 >> 30) >> 2) != -1)
      {
        goto LABEL_29;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v25 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_28:
          qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
          v29[0] = memptr;
          v29[1] = a5;
          sub_255AF7284(v29, v21);
          return a1;
        }
      }

      else
      {
        v25 = qword_27F7DD608;
        v26 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_32;
        }
      }

      do
      {
        (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v25 += 16;
      }

      while (v25 != v26);
      if (byte_27F7DD630)
      {
        goto LABEL_28;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    a1[3] = *a2;
    a1[4] = (4 * v11) & 0xFFFFFFFCFFFFFFFCLL;
  }

  return a1;
}

void sub_255BF2548(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_255BF2568(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, char *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = a2[2];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v13 = a2[2];
    if (v13)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    v11 = (*a2 != 0) | (v16 << 32);
  }

  v18 = v12 * v13;
  v19 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
  v21 = v20 | (v20 >> 16) | ((v20 | (v20 >> 16)) >> 32);
  if (v21 + 1 > 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = v22;
  if (!v18)
  {
    v34 = *a2;
    *(a1 + 32) = a2[2];
    *(a1 + 24) = v34;
    *(a1 + 36) = v11;
    *(a1 + 44) = v12;
    return a1;
  }

  memptr = 0;
  v23 = malloc_type_posix_memalign(&memptr, v22, v18, 0x63222AC6uLL);
  if (v23)
  {
    sub_255C07708(v23, *(a1 + 16), v18);
  }

  v24 = memptr;
  *(a1 + 8) = memptr;
  v25 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v25;
  *(a1 + 36) = v11;
  *(a1 + 44) = v12;
  if (v24 && (a6 & 1) != 0)
  {
    if (*(a1 + 24))
    {
      v26 = *(a1 + 28) == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26;
    if (*(a1 + 32))
    {
      v28 = v27;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 24);
    }

    if (v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 32);
    }

    v31 = v30 * v12;
    if (v31 != -1)
    {
LABEL_43:
      if (v11 == 1)
      {
        v36 = HIDWORD(v11);
        if (HIDWORD(v11) == v29)
        {
          if (v12 != HIDWORD(v29) * v29)
          {
            if (v30 && v36 && HIDWORD(v29))
            {
              v37 = v30 - 1;
              if (v30 != 1)
              {
                do
                {
                  memset(v24, *a5, (HIDWORD(v29) * v29));
                  v24 += v12;
                  --v37;
                }

                while (v37);
              }

              memset(v24, *a5, (HIDWORD(v29) * v29));
            }

            return a1;
          }

LABEL_80:
          memset(v24, *a5, v31);
          return a1;
        }

        if (!v30)
        {
          return a1;
        }

        v49 = HIDWORD(v29);
        if (!HIDWORD(v29) || !v29)
        {
          return a1;
        }

        v31 = v29;
        v50 = HIDWORD(v29) - 1;
        v51 = v30 - 1;
        if (v51)
        {
          v52 = v12;
          if (v49 != 1)
          {
            v53 = 0;
            v69 = v52;
            do
            {
              v54 = HIDWORD(v29) - 1;
              v55 = v24;
              do
              {
                memset(v55, *a5, v31);
                v55 += v36;
                --v54;
              }

              while (v54);
              memset(v55, *a5, v31);
              v24 += v69;
              ++v53;
            }

            while (v53 != v51);
            goto LABEL_79;
          }

          do
          {
            memset(v24, *a5, v31);
            v24 += v12;
            --v51;
          }

          while (v51);
        }

        if (HIDWORD(v29) == 1)
        {
          goto LABEL_80;
        }

        do
        {
LABEL_79:
          memset(v24, *a5, v31);
          v24 += v36;
          --v50;
        }

        while (v50);
        goto LABEL_80;
      }

      if (!v30 || !HIDWORD(v29) || !v29)
      {
        return a1;
      }

      v38 = v29 - 1;
      v39 = HIDWORD(v29) - 1;
      v40 = HIDWORD(v11);
      v41 = v30 - 1;
      if (v30 != 1)
      {
        if (HIDWORD(v29) == 1)
        {
          v56 = *a5;
          if (v29 == 1)
          {
            do
            {
              *v24 = v56;
              v24 += v12;
              --v41;
            }

            while (v41);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = v29 - 1;
              v59 = v24;
              do
              {
                *v59 = v56;
                v59 += v11;
                --v58;
              }

              while (v58);
              v56 = *a5;
              *v59 = *a5;
              v24 += v12;
              ++v57;
            }

            while (v57 != v41);
          }
        }

        else
        {
          if (v29 == 1)
          {
            v61 = 0;
            v60 = *a5;
            do
            {
              v62 = HIDWORD(v29) - 1;
              v63 = v24;
              do
              {
                *v63 = v60;
                v63 += v40;
                --v62;
              }

              while (v62);
              v60 = *a5;
              *v63 = *a5;
              v24 += v12;
              ++v61;
            }

            while (v61 != v41);
LABEL_94:
            if (v29 != 1)
            {
              v64 = 0;
              do
              {
                v65 = v29 - 1;
                v66 = v24;
                do
                {
                  *v66 = v60;
                  v66 += v11;
                  --v65;
                }

                while (v65);
                v60 = *a5;
                *v66 = *a5;
                v24 += v40;
                ++v64;
              }

              while (v64 != v39);
              goto LABEL_103;
            }

            do
            {
              *v24 = v60;
              v24 += v40;
              --v39;
            }

            while (v39);
            v60 = *a5;
LABEL_102:
            if (v29 == 1)
            {
LABEL_105:
              *v24 = v60;
              return a1;
            }

            do
            {
LABEL_103:
              *v24 = v60;
              v24 += v11;
              --v38;
            }

            while (v38);
            v60 = *a5;
            goto LABEL_105;
          }

          v42 = 0;
          do
          {
            v43 = 0;
            v44 = *a5;
            v45 = v24;
            do
            {
              v46 = v29 - 1;
              v47 = v45;
              do
              {
                *v47 = v44;
                v47 += v11;
                --v46;
              }

              while (v46);
              v44 = *a5;
              *v47 = *a5;
              v45 += v40;
              ++v43;
            }

            while (v43 != v39);
            v48 = v29 - 1;
            do
            {
              *v45 = v44;
              v45 += v11;
              --v48;
            }

            while (v48);
            *v45 = v44;
            v24 += v12;
            ++v42;
          }

          while (v42 != v41);
        }
      }

      v60 = *a5;
      if (HIDWORD(v29) == 1)
      {
        goto LABEL_102;
      }

      goto LABEL_94;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    v67 = v30 * v12;
    v68 = v30;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v32 = qword_27F7DD608, v33 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_42:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v30 = v68;
        v31 = v67;
        goto LABEL_43;
      }
    }

    else
    {
      v32 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_107;
      }
    }

    do
    {
      (*v32)(*(v32 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v32 += 16;
    }

    while (v32 != v33);
    if (byte_27F7DD630)
    {
      goto LABEL_42;
    }

LABEL_107:
    abort();
  }

  return a1;
}

void sub_255BF2AB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_255BF2AD8(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, unsigned __int16 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = a2[2];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v13 = a2[2];
    if (v13)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    v11 = (*a2 != 0) | (v16 << 32);
  }

  v18 = v12 * v13;
  v19 = 2 * v18;
  v20 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
  v22 = v21 | (v21 >> 16) | ((v21 | (v21 >> 16)) >> 32);
  if (v22 + 1 > 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 16) = v23;
  if (v18)
  {
    memptr = 0;
    v24 = malloc_type_posix_memalign(&memptr, v23, 2 * v18, 0x63222AC6uLL);
    if (v24)
    {
      sub_255C07708(v24, *(a1 + 16), v19);
    }

    v25 = memptr;
    *(a1 + 8) = memptr;
  }

  else
  {
    v25 = 0;
  }

  v26 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v26;
  *(a1 + 36) = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  *(a1 + 44) = 2 * v12;
  if (!v25 || (a6 & 1) == 0)
  {
    return a1;
  }

  v27 = v12 & 0x7FFFFFFF;
  if (*(a1 + 24))
  {
    v28 = *(a1 + 28) == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (*(a1 + 32))
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(a1 + 24);
  }

  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 32);
  }

  v33 = (v32 * v27);
  if (v33 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v34 = qword_27F7DD608, v35 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_42:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_43;
      }
    }

    else
    {
      v34 = qword_27F7DD608;
      v35 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_230;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    v33 = (v32 * v27);
    if (byte_27F7DD630)
    {
      goto LABEL_42;
    }

LABEL_230:
    abort();
  }

LABEL_43:
  v36 = v11 & 0x7FFFFFFF7FFFFFFFLL;
  v37 = v11 & 0x7FFFFFFF;
  if (v37 != 1)
  {
    if (!v32 || !HIDWORD(v31) || !v31)
    {
      return a1;
    }

    v43 = v31 - 1;
    v44 = HIDWORD(v31) - 1;
    v45 = HIDWORD(v36);
    v46 = v32 - 1;
    if (v32 != 1)
    {
      v47 = *a5;
      if (HIDWORD(v31) == 1)
      {
        if (v31 == 1)
        {
          do
          {
            v25->i16[0] = v47;
            v25 = (v25 + 2 * v27);
            --v46;
          }

          while (v46);
          goto LABEL_197;
        }

        v140 = 0;
        do
        {
          v141 = v25;
          v142 = v31 - 1;
          do
          {
            v141->i16[0] = v47;
            v141 = (v141 + 2 * v37);
            --v142;
          }

          while (v142);
          v47 = *a5;
          v141->i16[0] = *a5;
          v25 = (v25 + 2 * v27);
          ++v140;
        }

        while (v140 != v46);
        goto LABEL_174;
      }

      if (v31 == 1)
      {
        v148 = 0;
        do
        {
          v149 = v25;
          v150 = HIDWORD(v31) - 1;
          do
          {
            v149->i16[0] = v47;
            v149 = (v149 + 2 * v45);
            --v150;
          }

          while (v150);
          v47 = *a5;
          v149->i16[0] = *a5;
          v25 = (v25 + 2 * v27);
          ++v148;
        }

        while (v148 != v46);
        goto LABEL_186;
      }

      v48 = 0;
      v49 = 2 * v27;
      v50 = v45;
      v51 = 2 * v37;
      v52 = &v25->i16[v45];
      do
      {
        v53 = 0;
        v54 = v52;
        v55 = v25;
        do
        {
          v56 = v54;
          v57 = v55;
          v58 = v31 - 1;
          do
          {
            v57->i16[0] = v47;
            v57 = (v57 + v51);
            --v58;
          }

          while (v58);
          v47 = *a5;
          v57->i16[0] = *a5;
          v55 = (v55 + v50 * 2);
          ++v53;
          v54 = &v56[v50];
        }

        while (v53 != v44);
        v59 = v31 - 1;
        do
        {
          *v56 = v47;
          v56 = (v56 + v51);
          --v59;
        }

        while (v59);
        v47 = *a5;
        *v56 = *a5;
        v25 = (v25 + v49);
        ++v48;
        v52 = (v52 + v49);
      }

      while (v48 != v46);
    }

    v47 = *a5;
    if (HIDWORD(v31) == 1)
    {
      if (v31 == 1)
      {
LABEL_198:
        v25->i16[0] = v47;
        return a1;
      }

      goto LABEL_174;
    }

    if (v31 != 1)
    {
      v60 = 0;
      v61 = 2 * v45;
      do
      {
        v62 = v25;
        v63 = v31 - 1;
        do
        {
          v62->i16[0] = v47;
          v62 = (v62 + 2 * v37);
          --v63;
        }

        while (v63);
        v47 = *a5;
        v62->i16[0] = *a5;
        v25 = (v25 + v61);
        ++v60;
      }

      while (v60 != v44);
LABEL_174:
      v143 = 2 * v37;
      do
      {
        v25->i16[0] = v47;
        v25 = (v25 + v143);
        --v43;
      }

      while (v43);
LABEL_197:
      v47 = *a5;
      goto LABEL_198;
    }

    do
    {
LABEL_186:
      v25->i16[0] = v47;
      v25 = (v25 + 2 * v45);
      --v44;
    }

    while (v44);
    goto LABEL_197;
  }

  v38 = HIDWORD(v36);
  if (HIDWORD(v36) != v31)
  {
    if (!v32 || !HIDWORD(v31) || !v31)
    {
      return a1;
    }

    v64 = v31;
    v65 = HIDWORD(v31) - 1;
    v66 = 2 * v38;
    v67 = v32 - 1;
    if (v32 != 1)
    {
      v68 = v31 & 0xF;
      v69 = 2 * (v31 - v68);
      v70 = 2 * (v31 - (v31 & 3));
      v71 = 2 * v27;
      v72 = 0;
      v73 = v25 + 1;
      v74 = (v31 & 3) - v31;
      if (HIDWORD(v31) == 1)
      {
        while (1)
        {
          v98 = *a5;
          v99 = v31;
          v100 = v25;
          if (v31 < 4uLL)
          {
            goto LABEL_120;
          }

          if (v31 >= 0x10uLL)
          {
            v102 = vdupq_n_s16(v98);
            v103 = v31 - (v31 & 0xF);
            v104 = v73;
            do
            {
              v104[-1] = v102;
              *v104 = v102;
              v104 += 2;
              v103 -= 16;
            }

            while (v103);
            if ((v31 & 0xF) == 0)
            {
              goto LABEL_108;
            }

            v101 = v31 - (v31 & 0xF);
            if (v68 < 4)
            {
              v100 = (v25 + v69);
              v99 = v31 & 0xF;
LABEL_120:
              v100->i16[0] = v98;
              if (v99 >= 2)
              {
                v100->i16[1] = v98;
                if (v99 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v100->i16[2] = v98;
                }
              }

              goto LABEL_108;
            }
          }

          else
          {
            v101 = 0;
          }

          v100 = (v25 + v70);
          v105 = vdup_n_s16(v98);
          v106 = 2 * v101;
          v107 = v74 + v101;
          do
          {
            *&v25->i8[v106] = v105;
            v106 += 8;
            v107 += 4;
          }

          while (v107);
          v99 = v31 & 3;
          if ((v31 & 3) != 0)
          {
            goto LABEL_120;
          }

LABEL_108:
          v25 = (v25 + v71);
          ++v72;
          v73 = (v73 + v71);
          if (v72 == v67)
          {
            goto LABEL_123;
          }
        }
      }

LABEL_77:
      v75 = 0;
      v76 = v25;
      v77 = v73;
      while (1)
      {
        v78 = *a5;
        v79 = v31;
        v80 = v76;
        if (v31 < 4uLL)
        {
          goto LABEL_90;
        }

        if (v31 >= 0x10uLL)
        {
          v82 = vdupq_n_s16(v78);
          v83 = v31 - (v31 & 0xF);
          v84 = v77;
          do
          {
            v84[-1] = v82;
            *v84 = v82;
            v84 += 2;
            v83 -= 16;
          }

          while (v83);
          if ((v31 & 0xF) == 0)
          {
            goto LABEL_78;
          }

          v81 = v31 - (v31 & 0xF);
          if (v68 < 4)
          {
            v80 = (v76 + v69);
            v79 = v31 & 0xF;
LABEL_90:
            v80->i16[0] = v78;
            if (v79 >= 2)
            {
              v80->i16[1] = v78;
              if (v79 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v80->i16[2] = v78;
              }
            }

            goto LABEL_78;
          }
        }

        else
        {
          v81 = 0;
        }

        v80 = (v76 + v70);
        v85 = vdup_n_s16(v78);
        v86 = 2 * v81;
        v87 = v74 + v81;
        do
        {
          *&v76->i8[v86] = v85;
          v86 += 8;
          v87 += 4;
        }

        while (v87);
        v79 = v31 & 3;
        if ((v31 & 3) != 0)
        {
          goto LABEL_90;
        }

LABEL_78:
        v76 = (v76 + v66);
        ++v75;
        v77 = (v77 + v66);
        if (v75 == v65)
        {
          v88 = *a5;
          if (v31 < 4uLL)
          {
            v89 = v31;
            v90 = v76;
            goto LABEL_105;
          }

          if (v31 < 0x10uLL)
          {
            v91 = 0;
            goto LABEL_102;
          }

          v92 = 0;
          v93 = vdupq_n_s16(v88);
          v94 = v31 - (v31 & 0xF);
          do
          {
            v76[v92] = v93;
            v77[v92] = v93;
            v92 += 2;
            v94 -= 16;
          }

          while (v94);
          if ((v31 & 0xF) != 0)
          {
            v91 = v31 - (v31 & 0xF);
            if (v68 >= 4)
            {
LABEL_102:
              v90 = (v76 + v70);
              v95 = vdup_n_s16(v88);
              v96 = 2 * v91;
              v97 = v74 + v91;
              do
              {
                *&v76->i8[v96] = v95;
                v96 += 8;
                v97 += 4;
              }

              while (v97);
              v89 = v31 & 3;
              if ((v31 & 3) != 0)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v90 = (v76 + v69);
              v89 = v31 & 0xF;
LABEL_105:
              v90->i16[0] = v88;
              if (v89 >= 2)
              {
                v90->i16[1] = v88;
                if (v89 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v90->i16[2] = v88;
                }
              }
            }
          }

          v25 = (v25 + v71);
          ++v72;
          v73 = (v73 + v71);
          if (v72 == v67)
          {
            break;
          }

          goto LABEL_77;
        }
      }
    }

LABEL_123:
    if (HIDWORD(v31) != 1)
    {
      v108 = 0;
      v109 = v31 - (v31 != 0) + 1;
      v110 = v25 + 1;
      do
      {
        v111 = *a5;
        v112 = v31;
        v113 = v25;
        if (v109 >= 4)
        {
          if (v109 < 0x10)
          {
            v114 = 0;
LABEL_133:
            v113 = (v25 + 2 * (v109 & 0xFFFFFFFFFFFFFFFCLL));
            v118 = vdup_n_s16(v111);
            v119 = 2 * v114;
            v120 = v114 - (v109 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v25->i8[v119] = v118;
              v119 += 8;
              v120 += 4;
            }

            while (v120);
            v112 = v31 - (v109 & 0xFFFFFFFFFFFFFFFCLL);
            if (v109 == (v109 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_125;
            }

            goto LABEL_138;
          }

          v115 = vdupq_n_s16(v111);
          v116 = v109 & 0xFFFFFFFFFFFFFFF0;
          v117 = v110;
          do
          {
            v117[-1] = v115;
            *v117 = v115;
            v117 += 2;
            v116 -= 16;
          }

          while (v116);
          if (v109 == (v109 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_125;
          }

          v114 = v109 & 0xFFFFFFFFFFFFFFF0;
          if ((v109 & 0xC) != 0)
          {
            goto LABEL_133;
          }

          v113 = (v25 + 2 * (v109 & 0xFFFFFFFFFFFFFFF0));
          v112 = v31 - (v109 & 0xFFFFFFFFFFFFFFF0);
        }

LABEL_138:
        v121 = v112 + 1;
        do
        {
          v113->i16[0] = v111;
          v113 = (v113 + 2);
          --v121;
        }

        while (v121 > 1);
LABEL_125:
        v25 = (v25 + v66);
        ++v108;
        v110 = (v110 + v66);
      }

      while (v108 != v65);
    }

    v122 = *a5;
    v123 = v31 - (v31 != 0) + 1;
    if (v123 < 4)
    {
      v124 = v25;
      goto LABEL_218;
    }

    if (v123 >= 0x10)
    {
      v139 = v123 & 0xFFFFFFFFFFFFFFF0;
      v151 = vdupq_n_s16(v122);
      v152 = v25 + 1;
      v153 = v123 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v152[-1] = v151;
        *v152 = v151;
        v152 += 2;
        v153 -= 16;
      }

      while (v153);
      if (v123 == v139)
      {
        return a1;
      }

      if ((v123 & 0xC) == 0)
      {
        v124 = (v25 + 2 * v139);
        v64 = v31 - v139;
        goto LABEL_218;
      }
    }

    else
    {
      v139 = 0;
    }

    v64 = v31 - (v123 & 0xFFFFFFFFFFFFFFFCLL);
    v124 = (v25 + 2 * (v123 & 0xFFFFFFFFFFFFFFFCLL));
    v154 = vdup_n_s16(v122);
    v155 = (v25 + 2 * v139);
    v156 = v139 - (v123 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v155++ = v154;
      v156 += 4;
    }

    while (v156);
    if (v123 == (v123 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return a1;
    }

LABEL_218:
    v170 = v64 + 1;
    do
    {
      v124->i16[0] = v122;
      v124 = (v124 + 2);
      --v170;
    }

    while (v170 > 1);
    return a1;
  }

  v39 = (HIDWORD(v31) * v31);
  if (v27 != v39)
  {
    if (!v32 || !v38 || !HIDWORD(v31))
    {
      return a1;
    }

    if (v32 != 1)
    {
      if (!v39)
      {
        return a1;
      }

      v125 = 0;
      v126 = v25 + 1;
      v127 = 2 * v27;
      do
      {
        v128 = *a5;
        v129 = (HIDWORD(v31) * v31);
        v130 = v25;
        if (v39 >= 4)
        {
          if (v39 < 0x10)
          {
            v131 = 0;
LABEL_157:
            v130 = (v25 + 2 * (v39 & 0xFFFFFFFC));
            v135 = vdup_n_s16(v128);
            v136 = 2 * v131;
            v137 = v131 - (v39 & 0xFFFFFFFC);
            do
            {
              *&v25->i8[v136] = v135;
              v136 += 8;
              v137 += 4;
            }

            while (v137);
            v129 = (BYTE4(v31) * v31) & 3;
            if ((v39 & 0xFFFFFFFC) == v39)
            {
              goto LABEL_149;
            }

            goto LABEL_162;
          }

          v132 = vdupq_n_s16(v128);
          v133 = v39 & 0xFFFFFFF0;
          v134 = v126;
          do
          {
            v134[-1] = v132;
            *v134 = v132;
            v134 += 2;
            v133 -= 16;
          }

          while (v133);
          if ((v39 & 0xFFFFFFF0) == v39)
          {
            goto LABEL_149;
          }

          v131 = v39 & 0xFFFFFFF0;
          if (((BYTE4(v31) * v31) & 0xC) != 0)
          {
            goto LABEL_157;
          }

          v130 = (v25 + 2 * (v39 & 0xFFFFFFF0));
          v129 = (BYTE4(v31) * v31) & 0xF;
        }

LABEL_162:
        v138 = v129 + 1;
        do
        {
          v130->i16[0] = v128;
          v130 = (v130 + 2);
          --v138;
        }

        while (v138 > 1);
LABEL_149:
        v25 = (v25 + v127);
        ++v125;
        v126 = (v126 + v127);
      }

      while (v125 != v32 - 1);
    }

    if (!v39)
    {
      return a1;
    }

    v144 = *a5;
    if (v39 < 4)
    {
      v145 = (HIDWORD(v31) * v31);
      v146 = v25;
      goto LABEL_226;
    }

    if (v39 >= 0x10)
    {
      v163 = v39 & 0xFFFFFFF0;
      v164 = vdupq_n_s16(v144);
      v165 = v25 + 1;
      v166 = v163;
      do
      {
        v165[-1] = v164;
        *v165 = v164;
        v165 += 2;
        v166 -= 16;
      }

      while (v166);
      if (v163 == v39)
      {
        return a1;
      }

      if (((BYTE4(v31) * v31) & 0xC) == 0)
      {
        v146 = (v25 + 2 * v163);
        v145 = (BYTE4(v31) * v31) & 0xF;
        goto LABEL_226;
      }
    }

    else
    {
      v163 = 0;
    }

    v145 = (BYTE4(v31) * v31) & 3;
    v146 = (v25 + 2 * (v39 & 0xFFFFFFFC));
    v167 = vdup_n_s16(v144);
    v168 = (v25 + 2 * v163);
    v169 = v163 - (v39 & 0xFFFFFFFC);
    do
    {
      *v168++ = v167;
      v169 += 4;
    }

    while (v169);
    if ((v39 & 0xFFFFFFFC) == v39)
    {
      return a1;
    }

LABEL_226:
    v172 = v145 + 1;
    do
    {
      v146->i16[0] = v144;
      v146 = (v146 + 2);
      --v172;
    }

    while (v172 > 1);
    return a1;
  }

  if (!v33)
  {
    return a1;
  }

  v40 = *a5;
  if (v33 < 4)
  {
    v41 = v33;
    v42 = v25;
    goto LABEL_222;
  }

  if (v33 >= 0x10)
  {
    v147 = v33 & 0xFFFFFFF0;
    v157 = vdupq_n_s16(v40);
    v158 = v25 + 1;
    v159 = v147;
    do
    {
      v158[-1] = v157;
      *v158 = v157;
      v158 += 2;
      v159 -= 16;
    }

    while (v159);
    if (v147 == v33)
    {
      return a1;
    }

    if ((v33 & 0xC) == 0)
    {
      v42 = (v25 + 2 * v147);
      v41 = v33 & 0xF;
LABEL_222:
      v171 = v41 + 1;
      do
      {
        v42->i16[0] = v40;
        v42 = (v42 + 2);
        --v171;
      }

      while (v171 > 1);
      return a1;
    }
  }

  else
  {
    v147 = 0;
  }

  v41 = v33 & 3;
  v42 = (v25 + 2 * (v33 & 0xFFFFFFFC));
  v160 = vdup_n_s16(v40);
  v161 = (v25 + 2 * v147);
  v162 = v147 - (v33 & 0xFFFFFFFC);
  do
  {
    *v161++ = v160;
    v162 += 4;
  }

  while (v162);
  if ((v33 & 0xFFFFFFFC) != v33)
  {
    goto LABEL_222;
  }

  return a1;
}

void sub_255BF35E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_255BF3604(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, __int16 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = a2[2];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v13 = a2[2];
    if (v13)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    v11 = (*a2 != 0) | (v16 << 32);
  }

  v18 = v12 * v13;
  v19 = 2 * v18;
  v20 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
  v22 = v21 | (v21 >> 16) | ((v21 | (v21 >> 16)) >> 32);
  if (v22 + 1 > 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 16) = v23;
  if (v18)
  {
    memptr = 0;
    v24 = malloc_type_posix_memalign(&memptr, v23, 2 * v18, 0x63222AC6uLL);
    if (v24)
    {
      sub_255C07708(v24, *(a1 + 16), v19);
    }

    v25 = memptr;
    *(a1 + 8) = memptr;
  }

  else
  {
    v25 = 0;
  }

  v26 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v26;
  *(a1 + 36) = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  *(a1 + 44) = 2 * v12;
  if (!v25)
  {
    return a1;
  }

  v27 = v12 & 0x7FFFFFFF;
  if (*(a1 + 24))
  {
    v28 = *(a1 + 28) == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (*(a1 + 32))
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(a1 + 24);
  }

  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 32);
  }

  v33 = v32 * v27;
  if ((a6 & 1) == 0)
  {
    if (v33 != -1)
    {
LABEL_67:
      if (!v32 || !HIDWORD(v31) || !v31)
      {
        return a1;
      }

      v56 = v31 - 1;
      v57 = HIDWORD(v31) - 1;
      v58 = HIDWORD(v11) & 0x7FFFFFFF;
      v59 = v32 - 1;
      if (v32 != 1)
      {
        v60 = v11 & 0x7FFFFFFF;
        if (HIDWORD(v31) == 1)
        {
          if (v31 == 1)
          {
            do
            {
              *v25 = 0;
              v25 += v27;
              --v59;
            }

            while (v59);
          }

          else
          {
            v84 = 0;
            v85 = 2 * v60;
            do
            {
              v86 = v25;
              v87 = v31 - 1;
              do
              {
                *v86 = 0;
                v86 = (v86 + v85);
                --v87;
              }

              while (v87);
              *v86 = 0;
              v25 += v27;
              ++v84;
            }

            while (v84 != v59);
          }
        }

        else
        {
          v61 = 0;
          v62 = 2 * v27;
          v63 = v58;
          if (v31 == 1)
          {
            do
            {
              v73 = HIDWORD(v31) - 1;
              v74 = v25;
              do
              {
                *v74 = 0;
                v74 = (v74 + v63 * 2);
                --v73;
              }

              while (v73);
              *v74 = 0;
              v25 = (v25 + v62);
              ++v61;
            }

            while (v61 != v59);
            goto LABEL_123;
          }

          v64 = 2 * v60;
          v65 = &v25[v63];
          do
          {
            v66 = 0;
            v67 = v65;
            v68 = v25;
            do
            {
              v69 = v67;
              v70 = v68;
              v71 = v31 - 1;
              do
              {
                *v70 = 0;
                v70 = (v70 + v64);
                --v71;
              }

              while (v71);
              *v70 = 0;
              v68 = (v68 + v63 * 2);
              ++v66;
              v67 = &v69[v63];
            }

            while (v66 != v57);
            v72 = v31 - 1;
            do
            {
              *v69 = 0;
              v69 = (v69 + v64);
              --v72;
            }

            while (v72);
            *v69 = 0;
            v25 = (v25 + v62);
            ++v61;
            v65 = (v65 + v62);
          }

          while (v61 != v59);
        }
      }

      if (HIDWORD(v31) == 1)
      {
        goto LABEL_131;
      }

      v60 = v11 & 0x7FFFFFFF;
LABEL_123:
      if (v31 != 1)
      {
        v93 = 0;
        v94 = 2 * v58;
        do
        {
          v95 = v25;
          v96 = v31 - 1;
          do
          {
            *v95 = 0;
            v95 += v60;
            --v96;
          }

          while (v96);
          *v95 = 0;
          v25 = (v25 + v94);
          ++v93;
        }

        while (v93 != v57);
        goto LABEL_133;
      }

      v97 = 2 * v58;
      do
      {
        *v25 = 0;
        v25 = (v25 + v97);
        --v57;
      }

      while (v57);
LABEL_131:
      if (v31 == 1)
      {
LABEL_134:
        *v25 = 0;
        return a1;
      }

      v60 = v11 & 0x7FFFFFFF;
      do
      {
LABEL_133:
        *v25 = 0;
        v25 += v60;
        --v56;
      }

      while (v56);
      goto LABEL_134;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    v100 = v11;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v37 = qword_27F7DD608, v36 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_66:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v11 = v100;
        goto LABEL_67;
      }
    }

    else
    {
      v37 = qword_27F7DD608;
      v36 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_137;
      }
    }

    do
    {
      (*v37)(*(v37 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v37 += 16;
    }

    while (v37 != v36);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_66;
  }

  if (v33 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    v99 = v11;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v35 = qword_27F7DD608, v34 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_47:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v11 = v99;
        goto LABEL_48;
      }
    }

    else
    {
      v35 = qword_27F7DD608;
      v34 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_137;
      }
    }

    do
    {
      (*v35)(*(v35 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v35 += 16;
    }

    while (v35 != v34);
    if (byte_27F7DD630)
    {
      goto LABEL_47;
    }

LABEL_137:
    abort();
  }

LABEL_48:
  if (v32 && HIDWORD(v31) && v31)
  {
    v38 = v31 - 1;
    v39 = HIDWORD(v31) - 1;
    v40 = HIDWORD(v11) & 0x7FFFFFFF;
    v41 = v32 - 1;
    if (v32 != 1)
    {
      v42 = v11 & 0x7FFFFFFF;
      if (HIDWORD(v31) == 1)
      {
        v75 = *a5;
        if (v31 == 1)
        {
          do
          {
            *v25 = v75;
            v25 += v27;
            --v41;
          }

          while (v41);
        }

        else
        {
          v76 = 0;
          v77 = 2 * v42;
          do
          {
            v78 = v25;
            v79 = v31 - 1;
            do
            {
              *v78 = v75;
              v78 = (v78 + v77);
              --v79;
            }

            while (v79);
            v75 = *a5;
            *v78 = *a5;
            v25 += v27;
            ++v76;
          }

          while (v76 != v41);
        }
      }

      else
      {
        if (v31 == 1)
        {
          v80 = 0;
          v81 = *a5;
          do
          {
            v82 = HIDWORD(v31) - 1;
            v83 = v25;
            do
            {
              *v83 = v81;
              v83 += v40;
              --v82;
            }

            while (v82);
            v81 = *a5;
            *v83 = *a5;
            v25 += v27;
            ++v80;
          }

          while (v80 != v41);
          goto LABEL_106;
        }

        v43 = 0;
        v44 = 2 * v27;
        v45 = v40;
        v46 = 2 * v42;
        v47 = &v25[v40];
        do
        {
          v48 = 0;
          v49 = *a5;
          v50 = v47;
          v51 = v25;
          do
          {
            v52 = v50;
            v53 = v51;
            v54 = v31 - 1;
            do
            {
              *v53 = v49;
              v53 = (v53 + v46);
              --v54;
            }

            while (v54);
            v49 = *a5;
            *v53 = *a5;
            v51 = (v51 + v45 * 2);
            ++v48;
            v50 = &v52[v45];
          }

          while (v48 != v39);
          v55 = v31 - 1;
          do
          {
            *v52 = v49;
            v52 = (v52 + v46);
            --v55;
          }

          while (v55);
          *v52 = v49;
          v25 = (v25 + v44);
          ++v43;
          v47 = (v47 + v44);
        }

        while (v43 != v41);
      }
    }

    v81 = *a5;
    if (HIDWORD(v31) == 1)
    {
      goto LABEL_115;
    }

    v42 = v11 & 0x7FFFFFFF;
LABEL_106:
    if (v31 != 1)
    {
      v88 = 0;
      v89 = 2 * v40;
      do
      {
        v90 = v25;
        v91 = v31 - 1;
        do
        {
          *v90 = v81;
          v90 += v42;
          --v91;
        }

        while (v91);
        v81 = *a5;
        *v90 = *a5;
        v25 = (v25 + v89);
        ++v88;
      }

      while (v88 != v39);
      goto LABEL_117;
    }

    v92 = 2 * v40;
    do
    {
      *v25 = v81;
      v25 = (v25 + v92);
      --v39;
    }

    while (v39);
    v81 = *a5;
LABEL_115:
    if (v31 == 1)
    {
LABEL_119:
      *v25 = v81;
      return a1;
    }

    v42 = v11 & 0x7FFFFFFF;
    do
    {
LABEL_117:
      *v25 = v81;
      v25 += v42;
      --v38;
    }

    while (v38);
    v81 = *a5;
    goto LABEL_119;
  }

  return a1;
}

uint64_t sub_255BF3D60(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, __int32 *a5, char a6, uint64_t a7, int32x2_t a8)
{
  if (a4)
  {
    v12 = *a3;
    v13 = *(a3 + 2);
    v14 = a2[2];
  }

  else
  {
    v15 = *a2;
    v16 = a2[1];
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 * v15;
    v14 = a2[2];
    if (v14)
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v12 = (*a2 != 0) | (v17 << 32);
  }

  v19 = v13 * v14;
  v20 = 4 * v19;
  v21 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v22 = v21 | (v21 >> 4) | ((v21 | (v21 >> 4)) >> 8);
  v23 = v22 | (v22 >> 16) | ((v22 | (v22 >> 16)) >> 32);
  if (v23 + 1 > 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  *a1 = v20;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  if (v19)
  {
    memptr = 0;
    v25 = malloc_type_posix_memalign(&memptr, v24, 4 * v19, 0x63222AC6uLL);
    if (v25)
    {
      sub_255C07708(v25, *(a1 + 16), v20);
    }

    v26 = memptr;
    *(a1 + 8) = memptr;
  }

  else
  {
    v26 = 0;
  }

  v27 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v27;
  *(a1 + 36) = (4 * v12) & 0xFFFFFFFCFFFFFFFCLL;
  *(a1 + 44) = 4 * v13;
  if (!v26 || (a6 & 1) == 0)
  {
    return a1;
  }

  v28 = v13 & 0x3FFFFFFF;
  if (*(a1 + 24))
  {
    v29 = *(a1 + 28) == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (*(a1 + 32))
  {
    v31 = v30;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 24);
  }

  if (v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(a1 + 32);
  }

  v34 = (v33 * v28);
  if (v34 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v35 = qword_27F7DD608, v36 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_42:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_43;
      }
    }

    else
    {
      v35 = qword_27F7DD608;
      v36 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      (*v35)(*(v35 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v35 += 16;
    }

    while (v35 != v36);
    v34 = (v33 * v28);
    if (byte_27F7DD630)
    {
      goto LABEL_42;
    }

LABEL_181:
    abort();
  }

LABEL_43:
  v37 = v12 & 0x3FFFFFFF3FFFFFFFLL;
  v38 = v12 & 0x3FFFFFFF;
  if (v38 != 1)
  {
    if (!v33 || !HIDWORD(v32) || !v32)
    {
      return a1;
    }

    v43 = v32 - 1;
    v44 = HIDWORD(v32) - 1;
    v45 = HIDWORD(v37);
    v46 = v33 - 1;
    if (v33 != 1)
    {
      v47 = *a5;
      if (HIDWORD(v32) == 1)
      {
        if (v32 == 1)
        {
          do
          {
            v26->i32[0] = v47;
            v26 = (v26 + 4 * v28);
            --v46;
          }

          while (v46);
          goto LABEL_171;
        }

        v113 = 0;
        do
        {
          v114 = v26;
          v115 = v32 - 1;
          do
          {
            *v114 = v47;
            v114 += v38;
            --v115;
          }

          while (v115);
          v47 = *a5;
          *v114 = *a5;
          v26 = (v26 + 4 * v28);
          ++v113;
        }

        while (v113 != v46);
        goto LABEL_152;
      }

      if (v32 == 1)
      {
        v123 = 0;
        do
        {
          v124 = v26;
          v125 = HIDWORD(v32) - 1;
          do
          {
            *v124 = v47;
            v124 += v45;
            --v125;
          }

          while (v125);
          v47 = *a5;
          *v124 = *a5;
          v26 = (v26 + 4 * v28);
          ++v123;
        }

        while (v123 != v46);
        goto LABEL_168;
      }

      v48 = 0;
      v49 = 4 * v28;
      v50 = v45;
      v51 = 4 * v38;
      v52 = &v26->i32[v45];
      do
      {
        v53 = 0;
        v54 = v52;
        v55 = v26;
        do
        {
          v56 = v54;
          v57 = v55;
          v58 = v32 - 1;
          do
          {
            *v57 = v47;
            v57 = (v57 + v51);
            --v58;
          }

          while (v58);
          v47 = *a5;
          *v57 = *a5;
          v55 = (v55 + v50 * 4);
          ++v53;
          v54 = &v56[v50];
        }

        while (v53 != v44);
        v59 = v32 - 1;
        do
        {
          *v56 = v47;
          v56 = (v56 + v51);
          --v59;
        }

        while (v59);
        v47 = *a5;
        *v56 = *a5;
        v26 = (v26 + v49);
        ++v48;
        v52 = (v52 + v49);
      }

      while (v48 != v46);
    }

    v47 = *a5;
    if (HIDWORD(v32) == 1)
    {
      if (v32 == 1)
      {
LABEL_172:
        v26->i32[0] = v47;
        return a1;
      }

      goto LABEL_152;
    }

    if (v32 != 1)
    {
      v60 = 0;
      v61 = 4 * v45;
      do
      {
        v62 = v26;
        v63 = v32 - 1;
        do
        {
          *v62 = v47;
          v62 += v38;
          --v63;
        }

        while (v63);
        v47 = *a5;
        *v62 = *a5;
        v26 = (v26 + v61);
        ++v60;
      }

      while (v60 != v44);
LABEL_152:
      v116 = 4 * v38;
      do
      {
        v26->i32[0] = v47;
        v26 = (v26 + v116);
        --v43;
      }

      while (v43);
LABEL_171:
      v47 = *a5;
      goto LABEL_172;
    }

    do
    {
LABEL_168:
      v26->i32[0] = v47;
      v26 = (v26 + 4 * v45);
      --v44;
    }

    while (v44);
    goto LABEL_171;
  }

  v39 = HIDWORD(v37);
  if (HIDWORD(v37) == v32)
  {
    v40 = (HIDWORD(v32) * v32);
    if (v28 == v40)
    {
      if (!v34)
      {
        return a1;
      }

      a8.i32[0] = *a5;
      if (v34 < 8)
      {
        v41 = v34;
        v42 = v26;
LABEL_161:
        v122 = v41 + 1;
        do
        {
          v42->i32[0] = a8.i32[0];
          v42 = (v42 + 4);
          --v122;
        }

        while (v122 > 1);
        return a1;
      }

      v41 = v34 & 7;
      v42 = (v26 + 4 * (v34 & 0xFFFFFFF8));
      v119 = vdupq_lane_s32(a8, 0);
      v120 = v26 + 1;
      v121 = v34 & 0xFFFFFFF8;
      do
      {
        v120[-1] = v119;
        *v120 = v119;
        v120 += 2;
        v121 -= 8;
      }

      while (v121);
      if ((v34 & 0xFFFFFFF8) != v34)
      {
        goto LABEL_161;
      }
    }

    else if (v33 && v39 && HIDWORD(v32))
    {
      if (v33 != 1)
      {
        if (!v40)
        {
          return a1;
        }

        v101 = 0;
        v102 = v26 + 1;
        do
        {
          a8.i32[0] = *a5;
          v103 = (HIDWORD(v32) * v32);
          v104 = v26;
          if (v40 < 8)
          {
            goto LABEL_136;
          }

          v104 = (v26 + 4 * (v40 & 0xFFFFFFF8));
          v105 = vdupq_lane_s32(a8, 0);
          v106 = v40 & 0xFFFFFFF8;
          v107 = v102;
          do
          {
            v107[-1] = v105;
            *v107 = v105;
            v107 += 2;
            v106 -= 8;
          }

          while (v106);
          v103 = (BYTE4(v32) * v32) & 7;
          if ((v40 & 0xFFFFFFF8) != v40)
          {
LABEL_136:
            v108 = v103 + 1;
            do
            {
              v104->i32[0] = a8.i32[0];
              v104 = (v104 + 4);
              --v108;
            }

            while (v108 > 1);
          }

          v26 = (v26 + 4 * v28);
          ++v101;
          v102 = (v102 + 4 * v28);
        }

        while (v101 != v33 - 1);
      }

      if (!v40)
      {
        return a1;
      }

      a8.i32[0] = *a5;
      if (v40 >= 8)
      {
        v117 = (BYTE4(v32) * v32) & 7;
        v118 = (v26 + 4 * (v40 & 0xFFFFFFF8));
        v127 = vdupq_lane_s32(a8, 0);
        v128 = v26 + 1;
        v129 = v40 & 0xFFFFFFF8;
        do
        {
          v128[-1] = v127;
          *v128 = v127;
          v128 += 2;
          v129 -= 8;
        }

        while (v129);
        if ((v40 & 0xFFFFFFF8) == v40)
        {
          return a1;
        }
      }

      else
      {
        v117 = (HIDWORD(v32) * v32);
        v118 = v26;
      }

      v130 = v117 + 1;
      do
      {
        v118->i32[0] = a8.i32[0];
        v118 = (v118 + 4);
        --v130;
      }

      while (v130 > 1);
    }
  }

  else if (v33 && HIDWORD(v32) && v32)
  {
    v64 = v32;
    v65 = HIDWORD(v32) - 1;
    v66 = 4 * v39;
    v67 = v33 - 1;
    if (v33 != 1)
    {
      v68 = 4 * (v32 - (v32 & 7));
      v69 = 4 * v28;
      v70 = 0;
      v71 = v26 + 1;
      if (HIDWORD(v32) == 1)
      {
        do
        {
          a8.i32[0] = *a5;
          v85 = v32;
          v86 = v26;
          if (v32 < 8uLL)
          {
            goto LABEL_184;
          }

          v86 = (v26 + v68);
          v87 = vdupq_lane_s32(a8, 0);
          v88 = v32 - (v32 & 7);
          v89 = v71;
          do
          {
            v89[-1] = v87;
            *v89 = v87;
            v89 += 2;
            v88 -= 8;
          }

          while (v88);
          v85 = v32 & 7;
          if ((v32 & 7) != 0)
          {
LABEL_184:
            v86->i32[0] = a8.i32[0];
            if (v85 >= 2)
            {
              v86->i32[1] = a8.i32[0];
              if (v85 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v86->i32[2] = a8.i32[0];
                if ((v85 & 6) != 2)
                {
                  v86->i32[3] = a8.i32[0];
                  if (v85 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v86[1].i32[0] = a8.i32[0];
                    if ((v85 & 6) != 4)
                    {
                      v86[1].i32[1] = a8.i32[0];
                      if (v85 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v86[1].i32[2] = a8.i32[0];
                      }
                    }
                  }
                }
              }
            }
          }

          v26 = (v26 + 4 * v28);
          ++v70;
          v71 = (v71 + v69);
        }

        while (v70 != v67);
      }

      else
      {
        do
        {
          v72 = 0;
          v73 = v26;
          v74 = v71;
          v75 = v26;
          do
          {
            a8.i32[0] = *a5;
            v76 = v32;
            v77 = v75;
            if (v32 < 8uLL)
            {
              goto LABEL_185;
            }

            v77 = (v75 + v68);
            v78 = vdupq_lane_s32(a8, 0);
            v79 = v32 - (v32 & 7);
            v80 = v74;
            do
            {
              v80[-1] = v78;
              *v80 = v78;
              v80 += 2;
              v79 -= 8;
            }

            while (v79);
            v76 = v32 & 7;
            if ((v32 & 7) != 0)
            {
LABEL_185:
              v77->i32[0] = a8.i32[0];
              if (v76 >= 2)
              {
                v77->i32[1] = a8.i32[0];
                if (v76 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v77->i32[2] = a8.i32[0];
                  if ((v76 & 6) != 2)
                  {
                    v77->i32[3] = a8.i32[0];
                    if (v76 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v77[1].i32[0] = a8.i32[0];
                      if ((v76 & 6) != 4)
                      {
                        v77[1].i32[1] = a8.i32[0];
                        if (v76 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v77[1].i32[2] = a8.i32[0];
                        }
                      }
                    }
                  }
                }
              }
            }

            v75 = (v75 + 4 * v39);
            ++v72;
            v74 = (v74 + v66);
            v73 = (v73 + v66);
          }

          while (v72 != v65);
          a8.i32[0] = *a5;
          v81 = v32;
          if (v32 < 8uLL)
          {
            goto LABEL_186;
          }

          v82 = 0;
          v75 = (v75 + v68);
          v83 = vdupq_lane_s32(a8, 0);
          v84 = v32 - (v32 & 7);
          do
          {
            v73[v82] = v83;
            v74[v82] = v83;
            v82 += 2;
            v84 -= 8;
          }

          while (v84);
          v81 = v32 & 7;
          if ((v32 & 7) != 0)
          {
LABEL_186:
            v75->i32[0] = a8.i32[0];
            if (v81 >= 2)
            {
              v75->i32[1] = a8.i32[0];
              if (v81 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v75->i32[2] = a8.i32[0];
                if ((v81 & 6) != 2)
                {
                  v75->i32[3] = a8.i32[0];
                  if (v81 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v75[1].i32[0] = a8.i32[0];
                    if ((v81 & 6) != 4)
                    {
                      v75[1].i32[1] = a8.i32[0];
                      if (v81 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v75[1].i32[2] = a8.i32[0];
                      }
                    }
                  }
                }
              }
            }
          }

          v26 = (v26 + v69);
          ++v70;
          v71 = (v71 + v69);
        }

        while (v70 != v67);
      }
    }

    if (HIDWORD(v32) != 1)
    {
      v90 = 0;
      v91 = v32 - (v32 != 0) + 1;
      v92 = v26 + 1;
      do
      {
        a8.i32[0] = *a5;
        v93 = v32;
        v94 = v26;
        if (v91 < 8)
        {
          goto LABEL_120;
        }

        v94 = (v26 + 4 * (v91 & 0xFFFFFFFFFFFFFFF8));
        v95 = vdupq_lane_s32(a8, 0);
        v96 = v91 & 0xFFFFFFFFFFFFFFF8;
        v97 = v92;
        do
        {
          v97[-1] = v95;
          *v97 = v95;
          v97 += 2;
          v96 -= 8;
        }

        while (v96);
        v93 = v32 - (v91 & 0xFFFFFFFFFFFFFFF8);
        if (v91 != (v91 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_120:
          v98 = v93 + 1;
          do
          {
            v94->i32[0] = a8.i32[0];
            v94 = (v94 + 4);
            --v98;
          }

          while (v98 > 1);
        }

        v26 = (v26 + 4 * v39);
        ++v90;
        v92 = (v92 + v66);
      }

      while (v90 != v65);
    }

    a8.i32[0] = *a5;
    v99 = v32 - (v32 != 0) + 1;
    if (v99 >= 8)
    {
      v64 = v32 - (v99 & 0xFFFFFFFFFFFFFFF8);
      v100 = (v26 + 4 * (v99 & 0xFFFFFFFFFFFFFFF8));
      v109 = vdupq_lane_s32(a8, 0);
      v110 = v26 + 1;
      v111 = v99 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v110[-1] = v109;
        *v110 = v109;
        v110 += 2;
        v111 -= 8;
      }

      while (v111);
      if (v99 == (v99 & 0xFFFFFFFFFFFFFFF8))
      {
        return a1;
      }
    }

    else
    {
      v100 = v26;
    }

    v112 = v64 + 1;
    do
    {
      v100->i32[0] = a8.i32[0];
      v100 = (v100 + 4);
      --v112;
    }

    while (v112 > 1);
  }

  return a1;
}