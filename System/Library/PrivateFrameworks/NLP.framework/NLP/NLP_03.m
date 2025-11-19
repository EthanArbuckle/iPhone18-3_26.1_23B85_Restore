void sub_22CD4D7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<NL::ParseAttribute>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void NL::ParseBuilder::merge(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2 - *a2 < 0x11)
  {
    return;
  }

  if (v3 == v2)
  {
    v101 = 0;
    v102 = 0;
    v4 = 0;
    v82 = 0;
    v5 = 0;
    v80 = 0;
    v6 = 0;
    v7 = 0;
    v81 = 0;
    v8 = 0;
    v79 = 0;
    v9 = 0;
    v110 = 0;
    v78 = 0;
    v122 = 0;
    v119 = 0;
    goto LABEL_167;
  }

  v101 = 0;
  v102 = 0;
  v4 = 0;
  v106 = 0;
  v107 = 0;
  v5 = 0;
  v108 = 0;
  v109 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v110 = 0;
  v112 = 0;
  v113 = 0;
  v10 = 0;
  v118 = 0;
  v11 = 0;
  v121 = *(a2 + 8);
  do
  {
    v12 = v10;
    v13 = v5;
    v14 = v4;
    v15 = *v3;
    if (*(*v3 + 36) != 1)
    {
      v5 = v13;
      goto LABEL_121;
    }

    v123 = v8;
    v120 = v13;
    v17 = *(v15 + 48);
    v16 = *(v15 + 56);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      if (!v17)
      {
        goto LABEL_48;
      }

      v114 = v6;
      v116 = v7;
      v17 = *(*v3 + 48);
      v18 = *(*v3 + 56);
      if (v18)
      {
        v19 = 0;
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_13;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_48;
      }

      v114 = v6;
      v116 = v7;
      v18 = 0;
    }

    v19 = 1;
LABEL_13:
    v21 = *(v17 + 128);
    v20 = *(v17 + 136);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v8 = v123;
    if ((v19 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (!v21)
    {
      v6 = v114;
      v7 = v116;
      goto LABEL_50;
    }

    v23 = *(*v3 + 48);
    v22 = *(*v3 + 56);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "CalendarTime");
    v24 = endswith(v23, &__p);
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      if (!v22)
      {
        goto LABEL_23;
      }

LABEL_22:
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      goto LABEL_23;
    }

    operator delete(__p);
    if (v22)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (!v24)
    {
      v7 = v116;
      if (!v118)
      {
        v43 = v114;
        v44 = v113;
        goto LABEL_83;
      }

      v36 = *v3;
      if (*(*v3 + 40) > 2u)
      {
        v43 = v114;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v113;
        v44 = v11;
        v110 = v118;
        if (!v113)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v37 = *(v36 + 48);
        v38 = *(v36 + 56);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = *(v118 + 48);
        v40 = *(v118 + 56);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = *(*v3 + 40);
        v42 = *(v118 + 40);
        v148 = MEMORY[0x277D85DD0];
        v149 = 1174405120;
        v150 = ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_61;
        v151 = &__block_descriptor_tmp_62;
        v152 = v3;
        v153 = v118;
        v154 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        NL::EntityConverter::merge(a1 + 64, v37, v41, v39);
        if (v154)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
        }

        v43 = v114;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        v44 = v113;
        if (!v38)
        {
          goto LABEL_81;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
LABEL_81:
      v7 = v116;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        v11 = 0;
      }

LABEL_83:
      v10 = v3[1];
      v112 = *v3;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v118 = 0;
      v47 = *v3;
      v48 = *(*v3 + 40);
      v33 = v44;
      if (v48 > 4)
      {
        v6 = v43;
        if (v48 == 5)
        {
          v49 = v7;
          v4 = v14;
          v7 = v3[1];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = 0;
          v118 = 0;
          v34 = v49;
          v8 = v123;
          v101 = v47;
          goto LABEL_119;
        }

        if (v48 != 6)
        {
          if (v48 != 7)
          {
            v113 = v44;
LABEL_48:
            v8 = v123;
LABEL_50:
            v4 = v14;
            v5 = v120;
            goto LABEL_121;
          }

          v49 = v9;
          v4 = v14;
          v9 = v3[1];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = 0;
          v118 = 0;
          v34 = v49;
          v109 = v47;
          v8 = v123;
LABEL_119:
          v5 = v120;
          v113 = v33;
          if (!v49)
          {
            goto LABEL_121;
          }

LABEL_120:
          v124 = v4;
          v57 = v35;
          v58 = v5;
          v59 = v6;
          v60 = v7;
          v61 = v8;
          v62 = v9;
          v63 = v10;
          v64 = v11;
          v65 = v33;
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          v118 = v57;
          v113 = v65;
          v11 = v64;
          v10 = v63;
          v9 = v62;
          v8 = v61;
          v7 = v60;
          v6 = v59;
          v5 = v58;
          v4 = v124;
          goto LABEL_121;
        }

        v4 = v14;
        v8 = v3[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = 0;
        v118 = 0;
        v56 = v123;
        v34 = v123;
        v107 = v47;
        v5 = v120;
      }

      else
      {
        v49 = v43;
        switch(v48)
        {
          case 1:
            v6 = v43;
            v4 = v3[1];
            if (v4)
            {
              atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v35 = 0;
            v118 = 0;
            v34 = v14;
            v8 = v123;
            v56 = v14;
            v5 = v120;
            v102 = v47;
            break;
          case 2:
            v6 = v43;
            v4 = v14;
            v5 = v3[1];
            if (v5)
            {
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v35 = 0;
            v118 = 0;
            v56 = v120;
            v34 = v120;
            v8 = v123;
            v106 = v47;
            break;
          case 4:
            v4 = v14;
            v6 = v3[1];
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v35 = 0;
            v118 = 0;
            v34 = v43;
            v8 = v123;
            v108 = v47;
            goto LABEL_119;
          default:
            v113 = v44;
            v8 = v123;
            v6 = v49;
            goto LABEL_50;
        }
      }

      v113 = v33;
      if (v56)
      {
        goto LABEL_120;
      }

      goto LABEL_121;
    }

    v7 = v116;
    if (v112)
    {
      if (v118)
      {
        v25 = *(v112 + 48);
        v26 = *(v112 + 56);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v104 = v26;
        v27 = *(v118 + 48);
        v28 = *(v118 + 56);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = *(v112 + 40);
        v30 = *(v118 + 40);
        v162 = MEMORY[0x277D85DD0];
        v163 = 1174405120;
        v164 = ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke;
        v165 = &__block_descriptor_tmp_56;
        v166 = v112;
        v167 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v168 = v118;
        v169 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        NL::EntityConverter::merge(a1 + 64, v25, v29, v27);
        v31 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v11 = v3[1];
        v103 = *v3;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (v169)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v169);
        }

        if (v167)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v167);
        }

        v32 = v14;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        v10 = 0;
        v112 = 0;
        v8 = v123;
        v6 = v114;
        v5 = v120;
        v4 = v32;
        v33 = v113;
        v35 = v103;
        v34 = v104;
        v118 = v103;
        if (v104)
        {
          goto LABEL_120;
        }

        goto LABEL_121;
      }

      v35 = *v3;
      v100 = v14;
      if (*(*v3 + 40) > 2u)
      {
        v68 = v3[1];
        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          v69 = v35;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          v35 = v69;
        }

        v70 = v3[1];
        v110 = *v3;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v105 = v70;
        v51 = v113;
        v11 = v68;
        v5 = v120;
        if (!v113)
        {
LABEL_143:
          v10 = 0;
          v34 = v12;
          v8 = v123;
          v7 = v116;
          v6 = v114;
          v4 = v100;
          v118 = v35;
          v33 = v105;
          v112 = 0;
          v113 = v105;
          if (v12)
          {
            goto LABEL_120;
          }

          goto LABEL_121;
        }
      }

      else
      {
        v50 = *(v112 + 48);
        v51 = *(v112 + 56);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          v35 = *v3;
        }

        v52 = *(v35 + 48);
        v53 = *(v35 + 56);
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          v35 = *v3;
        }

        v54 = *(v112 + 40);
        v55 = *(v35 + 40);
        v155 = MEMORY[0x277D85DD0];
        v156 = 1174405120;
        v157 = ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_57;
        v158 = &__block_descriptor_tmp_60_0;
        v159 = v112;
        v160 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v161 = v3;
        NL::EntityConverter::merge(a1 + 64, v50, v54, v52);
        if (v160)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        v35 = 0;
        v105 = v113;
        v5 = v120;
        if (!v51)
        {
          goto LABEL_143;
        }
      }

      v71 = v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      v35 = v71;
      goto LABEL_143;
    }

    v8 = v123;
    if (v118)
    {
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = v11;
      if (v113)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      }

      v4 = v14;
      v35 = *v3;
      v11 = v3[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v112 = 0;
      v113 = 0;
      v46 = v45;
      v34 = v45;
      v10 = v12;
      v33 = v46;
      v5 = v120;
      v110 = v118;
      v6 = v114;
      v118 = v35;
      if (v46)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v66 = v11;
      v67 = v14;
      v35 = *v3;
      v11 = v3[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v112 = 0;
      v34 = v66;
      v33 = v113;
      v6 = v114;
      v5 = v120;
      v4 = v67;
      v118 = v35;
      if (v66)
      {
        goto LABEL_120;
      }
    }

LABEL_121:
    v3 += 2;
  }

  while (v3 != v121);
  if (v112 && v118)
  {
    v72 = *(v112 + 48);
    v73 = *(v112 + 56);
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = *(v118 + 48);
    v75 = *(v118 + 56);
    if (v75)
    {
      atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = *(v112 + 40);
    v77 = *(v118 + 40);
    v140 = MEMORY[0x277D85DD0];
    v141 = 1174405120;
    v142 = ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_63;
    v143 = &__block_descriptor_tmp_66;
    v144 = v112;
    v145 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v146 = v118;
    v147 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NL::EntityConverter::merge(a1 + 64, v72, v76, v74);
    if (v147)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    }

    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }
  }

  v122 = v10;
  v119 = v11;
  v78 = v113;
  v80 = v108;
  v79 = v109;
  v82 = v106;
  v81 = v107;
LABEL_167:
  v115 = v6;
  __p = 0;
  p_p = &__p;
  v135 = 0x3802000000;
  v136 = __Block_byref_object_copy__42;
  v138 = 0;
  v139 = 0;
  v137 = __Block_byref_object_dispose__43;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3802000000;
  v129 = __Block_byref_object_copy__42;
  v131 = 0;
  v132 = 0;
  v130 = __Block_byref_object_dispose__43;
  if (v82)
  {
    v83 = v4;
    if (v79)
    {
      v84 = v119;
      if (!v5)
      {
        v138 = v82;
        v139 = 0;
        goto LABEL_219;
      }

      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v85 = v139;
      v138 = v82;
      v139 = v5;
      if (!v85)
      {
        goto LABEL_219;
      }

LABEL_190:
      std::__shared_weak_count::__release_shared[abi:ne200100](v85);
      goto LABEL_219;
    }

    if (v80)
    {
      if (!v5)
      {
        v138 = v82;
        v139 = 0;
        goto LABEL_266;
      }

      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v87 = v139;
      v138 = v82;
      v139 = v5;
      if (!v87)
      {
        goto LABEL_266;
      }

LABEL_199:
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
      goto LABEL_266;
    }

    v86 = v110;
    if (v110)
    {
      v84 = v119;
      if (!v5)
      {
        v138 = v82;
        v139 = 0;
        goto LABEL_261;
      }

      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v88 = v139;
      v138 = v82;
      v139 = v5;
      if (!v88)
      {
        goto LABEL_261;
      }

LABEL_260:
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      goto LABEL_261;
    }

LABEL_206:
    v84 = v119;
LABEL_207:
    if (!v102)
    {
      goto LABEL_223;
    }

    if (v86)
    {
      if (!v83)
      {
        v138 = v102;
        v139 = 0;
        goto LABEL_219;
      }

      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
      v85 = v139;
      v138 = v102;
      v139 = v83;
      if (v85)
      {
        goto LABEL_190;
      }

LABEL_219:
      v89 = v127;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v90 = v89[6];
      v89[5] = v79;
      v89[6] = v9;
      if (v90)
      {
        goto LABEL_222;
      }

      goto LABEL_223;
    }

    if (!v110)
    {
      goto LABEL_223;
    }

    if (!v83)
    {
      v138 = v102;
      v139 = 0;
      goto LABEL_261;
    }

    atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
    v88 = v139;
    v138 = v102;
    v139 = v83;
    if (v88)
    {
      goto LABEL_260;
    }

LABEL_261:
    v98 = v127;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v98[6];
    v98[5] = v110;
    v98[6] = v78;
    if (v90)
    {
      goto LABEL_222;
    }

    goto LABEL_223;
  }

  v86 = v79 != 0;
  v83 = v4;
  if (v79)
  {
    if (v110)
    {
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        v85 = v139;
        v138 = v110;
        v139 = v78;
        goto LABEL_189;
      }

      v138 = v110;
      v139 = 0;
      goto LABEL_218;
    }

    if (v81)
    {
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v85 = v139;
        v138 = v81;
        v139 = v8;
LABEL_189:
        v84 = v119;
        if (!v85)
        {
          goto LABEL_219;
        }

        goto LABEL_190;
      }

      v138 = v81;
      v139 = 0;
LABEL_218:
      v84 = v119;
      goto LABEL_219;
    }

LABEL_195:
    if (!v80)
    {
      goto LABEL_206;
    }

    if (v101)
    {
      if (!v7)
      {
        v138 = v101;
        v139 = 0;
        goto LABEL_266;
      }

      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v87 = v139;
      v138 = v101;
      v139 = v7;
      if (!v87)
      {
        goto LABEL_266;
      }

      goto LABEL_199;
    }

    v84 = v119;
    if (v110)
    {
      if (!v7)
      {
        v138 = 0;
        v139 = 0;
        goto LABEL_261;
      }

      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v88 = v139;
      v138 = 0;
      v139 = v7;
      if (!v88)
      {
        goto LABEL_261;
      }

      goto LABEL_260;
    }

    goto LABEL_207;
  }

  if (!v81)
  {
    goto LABEL_195;
  }

  if (!v80)
  {
    v86 = v110;
    if (!v110)
    {
      goto LABEL_206;
    }

    v84 = v119;
    if (!v8)
    {
      v138 = v81;
      v139 = 0;
      goto LABEL_261;
    }

    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v88 = v139;
    v138 = v81;
    v139 = v8;
    if (v88)
    {
      goto LABEL_260;
    }

    goto LABEL_261;
  }

  if (!v8)
  {
    v138 = v81;
    v139 = 0;
    goto LABEL_266;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v87 = v139;
  v138 = v81;
  v139 = v8;
  if (v87)
  {
    goto LABEL_199;
  }

LABEL_266:
  v99 = v127;
  if (v115)
  {
    atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v90 = v99[6];
  v99[5] = v80;
  v99[6] = v115;
  v84 = v119;
  if (v90)
  {
LABEL_222:
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

LABEL_223:
  v117 = v7;
  v91 = p_p[5];
  if (v91)
  {
    v92 = v127[5];
    if (v92)
    {
      v93 = *(v91 + 6);
      v94 = *(v91 + 7);
      v125 = v8;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        v92 = v127[5];
      }

      v95 = *(v92 + 48);
      v96 = *(v92 + 56);
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        v92 = v127[5];
      }

      v97 = *(v92 + 40);
      NL::EntityConverter::merge(a1 + 64, v93, *(p_p[5] + 10), v95);
      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      v8 = v125;
      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }
    }
  }

  _Block_object_dispose(&v126, 8);
  if (v132)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v132);
  }

  _Block_object_dispose(&__p, 8);
  if (v139)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v139);
  }

  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
  }

  if (v122)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v122);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v117)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v117);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }
}

void sub_22CD4E810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _Unwind_Exception *exception_objecta, std::__shared_weak_count *a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31)
{
  v38 = *(v37 - 184);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN2NL12ParseBuilder28updateIntentsForParseAtIndexEP8_NLParsell_block_invoke_2(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4 != v5)
  {
    while (*v4 != a3)
    {
      if (++v4 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    v6 = a2[1];
    v7 = *a2;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    NL::ParseBuilder::getQuoteAttributeForEntity(&v9);
  }

  return result;
}

void sub_22CD4EB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::ParseIntents::add(uint64_t result, __int128 *a2)
{
  if (*a2)
  {
    v3 = result;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::push_back[abi:ne200100]((result + 8), a2);
    v4 = NL::ParseIntent::confidence(*a2);
    result = *v3;
    if (v4 > result)
    {
      result = NL::ParseIntent::confidence(*a2);
    }

    *v3 = result;
  }

  return result;
}

void ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(&v5, a2);
  NL::ParseAttribute::setEntity(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = *(a1 + 48);
  *(v4 + 40) = 0;
  *(v4 + 39) = 1;
}

void sub_22CD4EBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE48c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE48c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_57(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(&v5, a2);
  NL::ParseAttribute::setEntity(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = **(a1 + 48);
  *(v4 + 40) = 0;
  *(v4 + 39) = 1;
}

void sub_22CD4ECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_61(uint64_t a1, uint64_t *a2)
{
  v3 = **(a1 + 32);
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(&v5, a2);
  NL::ParseAttribute::setEntity(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = *(a1 + 40);
  *(**(a1 + 32) + 40) = *(v4 + 40);
  *(v4 + 40) = 0;
  *(v4 + 39) = 1;
}

void sub_22CD4ED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_63(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(&v5, a2);
  NL::ParseAttribute::setEntity(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = *(a1 + 48);
  *(v4 + 40) = 0;
  *(v4 + 39) = 1;
}

void sub_22CD4EE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2NL12ParseBuilder5mergeERNSt3__16vectorINS1_10shared_ptrINS_14ParseAttributeEEENS1_9allocatorIS5_EEEE_block_invoke_67(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(&v4, a2);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::push_back[abi:ne200100]((v3 + 112), &v4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  *(*(*(*(a1 + 32) + 8) + 40) + 40) = 0;
  *(*(*(*(a1 + 40) + 8) + 40) + 40) = 0;
  *(*(*(*(a1 + 40) + 8) + 40) + 39) = 1;
}

void sub_22CD4EEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void NL::ParseBuilder::parse(NL::ParseBuilder *this)
{
  if (*(this + 4))
  {
    v2 = *(this + 13);
    if (v2)
    {
      if (*(this + 6))
      {
        v3 = *(this + 7);
        v18 = *(this + 6);
        v19 = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        NLGraphStructureSetGrammar(v2, &v18);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v4 = *(*(this + 4) + 192) - *(*(this + 4) + 184);
        if (v4 >= 1)
        {
          v5 = 0;
          v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
          v12 = MEMORY[0x277D85DD0];
          if (v6 <= 1)
          {
            v7 = 1;
          }

          else
          {
            v7 = v6;
          }

          do
          {
            v14 = 0;
            v15 = &v14;
            v16 = 0x2000000000;
            v17 = 0;
            v8 = *(this + 4);
            v13[0] = v12;
            v13[1] = 0x40000000;
            v13[2] = ___ZN2NL12ParseBuilder5parseEv_block_invoke;
            v13[3] = &unk_27873FD88;
            v13[4] = &v14;
            v13[5] = this;
            NL::QueryTokenizer::enumerateEntitiesAtTokenizationIndex(v8, v5, v13);
            v9 = NLGraphStructureStackCopyParsesWithCallback(*(this + 13), *(this + 6), parseIdentifier);
            if (v9)
            {
              NL::ParserContext::close(*(this + 2));
              if (CFArrayGetCount(v9) >= 1)
              {
                CFArrayGetValueAtIndex(v9, 0);
                v10 = *(*(this + 2) + 40);
                v11 = v15[3];
                NL::ParseBuilder::updateIntentsForParseAtIndex();
              }

              CFRelease(v9);
            }

            NLGraphStructureStackReset(*(this + 13));
            NL::ParserContext::reset(*(this + 2));
            _Block_object_dispose(&v14, 8);
            ++v5;
          }

          while (v5 != v7);
        }
      }
    }
  }
}

void sub_22CD4F0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2NL12ParseBuilder5parseEv_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, __int16 a4)
{
  v7 = *(a1 + 40);
  SymbolID = NL::SearchGrammar::getSymbolID(*(v7 + 48), *a2);
  NLGraphStructureStackAdd(*(v7 + 104), SymbolID, a3, a4);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = v10 <= a3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    *(v9 + 24) = v10 + 1;
  }
}

void NL::EntityConverter::~EntityConverter(NL::EntityConverter *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    NL::Transcriber::~Transcriber(v2);
    MEMORY[0x2318C0600]();
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    NL::NumericConverter::~NumericConverter(v3);
    MEMORY[0x2318C0600]();
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<NL::DateConverter>::operator()[abi:ne200100](this + 16, v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::default_delete<NL::DateConverter>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x2318C0600);
  }
}

void std::vector<std::shared_ptr<NL::ParseAttributes>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t **std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::string>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::string>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::string>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::string>::__emplace_multi<std::string const&>();
  }

  return result;
}

void *std::__tree<std::string>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::string>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::string>::destroy(*a1, v2);
  }

  return a1;
}

void sub_22CD4F5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<NL::ParseAttributes>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<NL::ParseAttribute>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D7C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void NL::ParseAttribute::~ParseAttribute(NL::ParseAttribute *this)
{
  v3 = (this + 112);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *_ZNSt3__120__shared_ptr_emplaceIN2NL11ParseIntentENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D918;
  NL::ParseIntent::ParseIntent((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<NL::ParseIntent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::__shared_ptr_emplace<NL::ParseIntent>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::string>::destroy(a1 + 40, *(a1 + 48));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<NL::Entity  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

NL::Entity *std::__shared_ptr_pointer<NL::Entity  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    NL::Entity::~Entity(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<NL::Entity  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void NL::Entity::~Entity(NL::Entity *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
  }

  v5 = (this + 160);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_ptr_emplace<NL::ParseIntents>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D8A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void NLHindiCanonicalizedMappings::NLHindiCanonicalizedMappings(NLHindiCanonicalizedMappings *this)
{
  NLAbstractDictionaryLookup::NLAbstractDictionaryLookup(this);
  *v1 = &unk_28400E570;
  NLHindiCanonicalizedMappings::loadDictMap(v1);
}

void NLHindiCanonicalizedMappings::loadDictMap(NLHindiCanonicalizedMappings *this)
{
  getPathForResource(@"roman-canonical.dat", &v4);
  v2 = std::string::compare(&v4, "");
  if (v2)
  {
    NL::StringMap::createWithFile();
  }

  v3 = NL::CFLogger::sharedInstance(v2);
  (*(*v3 + 16))(v3, 3, "Could not locate Canonicalization dictionary resource");
  *(this + 1) = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_22CD4FDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLHindiCanonicalizedMappings::getWord@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    NL::StringMap::get(result, a2, a3);

    return std::string::compare(a3, "");
  }

  else
  {
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  return result;
}

BOOL compare_date_components(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
}

uint64_t compare_date_periods(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v6 = compare_date_components(v2 + 28, v3 + 28);
  v7 = compare_date_components(v2 + 92, v3 + 92);
  v8 = v7;
  v9 = *(v2 + 8);
  v11 = v9 && (v10 = *(v3 + 8)) != 0 && CFEqual(v9, v10) != 0;
  v12 = v8 && v11;
  if (v6)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

BOOL compare_entities(const void **a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return 1;
  }

  if (v2)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v8 = *(v2 + 17);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = *(*a2 + 128);
  v9 = *(*a2 + 136);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v10 != 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    goto LABEL_17;
  }

  v11 = v10 != 0;
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = *a1;
  if (v11)
  {
    v14 = v12[12];
    v13 = v12[13];
    return v14 == *(*a2 + 96) && v13 == *(*a2 + 104);
  }

  else
  {
    v16 = *a2;
    v17 = *(v12 + 23);
    if (v17 >= 0)
    {
      v18 = *(v12 + 23);
    }

    else
    {
      v18 = v12[1];
    }

    v19 = *(v16 + 23);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v16 + 8);
    }

    if (v18 != v19)
    {
      return 0;
    }

    if (v17 >= 0)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *v12;
    }

    v22 = *v16;
    if (v20 >= 0)
    {
      v23 = *a2;
    }

    else
    {
      v23 = *v16;
    }

    return memcmp(v21, v23, v18) == 0;
  }
}

uint64_t *enumerateIndexesOfRange(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v26 = 0;
  if (a2)
  {
    v8 = *result;
    v7 = result[1];
    if (v7 != *result)
    {
      v10 = (v7 - *result) >> 4;
      do
      {
        v11 = v10 >> 1;
        v12 = &v8[2 * (v10 >> 1)];
        v14 = *v12;
        v13 = v12 + 2;
        v10 += ~(v10 >> 1);
        if (*(v14 + 104) + *(v14 + 96) <= a2)
        {
          v8 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
      if (v8 != v7)
      {
        v15 = v8;
        do
        {
          v16 = *(*v15 + 96);
          if (v16 == a2 && *(*v15 + 104) == a3)
          {
            result = (*(a4 + 16))(a4, (v15 - *v6) >> 4, &v26);
            if (v26)
            {
              return result;
            }

            v7 = v6[1];
          }

          else if (v16 > a2)
          {
            return result;
          }

          v8 += 2;
          v15 += 2;
        }

        while (v8 != v7);
      }
    }
  }

  else
  {
    v19 = *result;
    v18 = result[1];
    if (v18 != *result)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = *(v19 + v20);
        v23 = *(v22 + 96);
        v24 = *(v22 + 104);
        if (v23)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 == a3;
        }

        if (v25)
        {
          result = (*(a4 + 16))(a4, v21, &v26);
          if (v26)
          {
            return result;
          }

          v19 = *v6;
          v18 = v6[1];
        }

        else if (v23 > 0)
        {
          return result;
        }

        ++v21;
        v20 += 16;
      }

      while (v21 < (v18 - v19) >> 4);
    }
  }

  return result;
}

uint64_t containsRange(const __CFString *a1, CFIndex a2, CFIndex a3, uint64_t *a4, _BYTE *a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (a1)
  {
    result = xmmword_22CDDE2F0;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    v21.location = a2;
    v21.length = a3;
    if (CFStringFindCharacterFromSet(a1, Predefined, v21, 0, &result) && a2 == result.location && a3 == result.length)
    {
      v11 = 1;
      if (a5)
      {
        *a5 = 1;
      }
    }

    else
    {
      memset(v14, 0, sizeof(v14));
      std::vector<std::shared_ptr<NL::Entity>>::__init_with_size[abi:ne200100]<std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(v14, *a4, a4[1], (a4[1] - *a4) >> 4);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = ___Z13containsRangePK10__CFString7CFRangeNSt3__16vectorINS3_10shared_ptrIN2NL6EntityEEENS3_9allocatorIS8_EEEEPb_block_invoke;
      v13[3] = &unk_27873F960;
      v13[4] = &v16;
      enumerateIndexesOfRange(v14, a2, a3, v13);
      v20 = v14;
      std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v20);
      v11 = *(v17 + 24);
    }
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v11 & 1;
}

void sub_22CD50364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *(v13 - 56) = v12;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v13 - 56));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z13containsRangePK10__CFString7CFRangeNSt3__16vectorINS3_10shared_ptrIN2NL6EntityEEENS3_9allocatorIS8_EEEEPb_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void subtokenize(const __CFString *a1, CFIndex a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = a3 - 1;
  if (a3 < 1)
  {
    return;
  }

  for (i = 1; ; ++i)
  {
    *&v20 = a2;
    *(&v20 + 1) = i;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    std::vector<std::shared_ptr<NL::Entity>>::__init_with_size[abi:ne200100]<std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(v18, *a6, a6[1], (a6[1] - *a6) >> 4);
    v13 = containsRange(a1, a2, i, v18, &v19);
    __p = v18;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v13)
    {
      break;
    }

LABEL_9:
    if (--v6 == -1)
    {
      return;
    }
  }

  if (v6)
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *a4, a4[1], (a4[1] - *a4) >> 4);
    if ((v19 & 1) == 0)
    {
      std::vector<CFRange>::push_back[abi:ne200100](&__p, &v20);
    }

    memset(v14, 0, sizeof(v14));
    std::vector<std::shared_ptr<NL::Entity>>::__init_with_size[abi:ne200100]<std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(v14, *a6, a6[1], (a6[1] - *a6) >> 4);
    subtokenize(a1, a2 + i, v6, &__p, a5, v14);
    v21 = v14;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v21);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    goto LABEL_9;
  }

  if ((v19 & 1) == 0)
  {
    std::vector<CFRange>::push_back[abi:ne200100](a4, &v20);
  }

  std::vector<std::vector<CFRange>>::push_back[abi:ne200100](a5, a4);
}

void sub_22CD50520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  *(v16 - 88) = &a10;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v16 - 88));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<CFRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(a1, v10);
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

uint64_t std::vector<std::vector<CFRange>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<CFRange>>::__emplace_back_slow_path<std::vector<CFRange> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<CFRange>>::__construct_one_at_end[abi:ne200100]<std::vector<CFRange> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void NL::QueryTokenizer::QueryTokenizer(uint64_t a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  operator new();
}

void sub_22CD508EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, void **a14)
{
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a14, 0);
  v20 = v14[29];
  if (v20)
  {
    v14[30] = v20;
    operator delete(v20);
  }

  v21 = v14[26];
  if (v21)
  {
    v14[27] = v21;
    operator delete(v21);
  }

  a14 = (v15 + 136);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v22 = v14[17];
  if (v22)
  {
    v14[18] = v22;
    operator delete(v22);
  }

  v23 = v14[14];
  if (v23)
  {
    v14[15] = v23;
    operator delete(v23);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v15 + 56), 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v18, 0);
  nlp::CFScopedPtr<__CFSet const*>::reset((v15 + 40), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v15 + 24), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v15 + 8), 0);
  std::unique_ptr<NL::EntityConverter>::reset[abi:ne200100](v15, 0);
  v24 = v14[3];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = v14[1];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void *std::unique_ptr<NL::EntityConverter>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      NL::Transcriber::~Transcriber(v3);
      MEMORY[0x2318C0600]();
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      NL::NumericConverter::~NumericConverter(v4);
      MEMORY[0x2318C0600]();
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      std::default_delete<NL::DateConverter>::operator()[abi:ne200100]((v2 + 2), v5);
    }

    v6 = v2[1];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    JUMPOUT(0x2318C0600);
  }

  return result;
}

void nlp::CFScopedPtr<__CFCharacterSet const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void NL::QueryTokenizer::setLocale(NL::QueryTokenizer *this, CFLocaleRef locale)
{
  if (locale)
  {
    v3 = *MEMORY[0x277CBEED0];
    Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
    v6 = (this + 96);
    v5 = *(this + 12);
    if (v5)
    {
      v7 = Value == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v9 = CFLocaleGetValue(v5, v3);
      if (CFEqual(Value, v9))
      {
        return;
      }

      goto LABEL_12;
    }

    if (Value)
    {
LABEL_12:
      v11 = *MEMORY[0x277CBECE8];
      v12 = CFLocaleCreate(*MEMORY[0x277CBECE8], Value);
      nlp::CFScopedPtr<__CFLocale const*>::reset(this + 12, v12);
      Mutable = CFSetCreateMutable(v11, 0, MEMORY[0x277CBF158]);
      goto LABEL_13;
    }
  }

  else
  {
    v6 = (this + 96);
  }

  nlp::CFScopedPtr<__CFLocale const*>::reset(v6, 0);
  Mutable = 0;
LABEL_13:

  nlp::CFScopedPtr<__CFSet const*>::reset(this + 11, Mutable);
}

void NL::QueryTokenizer::~QueryTokenizer(NL::QueryTokenizer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    NLEntityDetectorRelease(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v10 = (this + 184);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 160);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 13, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 12, 0);
  nlp::CFScopedPtr<__CFSet const*>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 7, 0);
  std::unique_ptr<NL::EntityConverter>::reset[abi:ne200100](this + 6, 0);
  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void NL::QueryTokenizer::setEntityDetector(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    NLEntityDetectorRelease(v4);
    *(a1 + 40) = 0;
  }

  if (a2)
  {
    *(a1 + 40) = NLEntityDetectorRetain(a2);
  }
}

void NL::QueryTokenizer::setString(const void **this, const __CFString *a2)
{
  NL::QueryTokenizer::reset(this);
  if (a2)
  {
    v4 = CFRetain(a2);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 13, v4);
  }

  NL::QueryTokenizer::tokenize(this);
}

void NL::QueryTokenizer::reset(NL::QueryTokenizer *this)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this + 13, &stru_284010170);
  *(this + 15) = *(this + 14);
  std::vector<std::shared_ptr<NL::ParseAttributes>>::clear[abi:ne200100](this + 20);
  *(this + 18) = *(this + 17);
  *(this + 30) = *(this + 29);
  std::vector<std::vector<CFRange>>::clear[abi:ne200100](this + 23);
  *(this + 27) = *(this + 26);
  *(this + 32) = 0;
}

void NL::QueryTokenizer::tokenize(NL::QueryTokenizer *this)
{
  if (*(this + 4) && *(this + 13))
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v2 = NL::QueryTokenizer::copySearchStringAndTokenize(this);
    v56 = v2;
    if (v2)
    {
      if (*(this + 4) && *(this + 5) && (NL::QueryTokenizer::containsLegacyQuerySyntax(this, *(this + 13)) & 1) == 0 && *(this + 32) <= 20)
      {
        v60.length = CFStringGetLength(*(this + 13));
        v60.location = 0;
        NL::EntityConverter::entityWithString(*(this + 6), *(this + 13), v60, &v51);
        v54 = v51;
        if (v51)
        {
          operator new();
        }

        v55 = 0;
        std::unique_ptr<NL::Entity>::~unique_ptr[abi:ne200100](&v51);
        NL::QueryTokenizer::updateEntitiesWithQuotedTextValues(this, &v57);
        NL::QueryTokenizer::updateEntitiesWithKnownValues(this, v2, &v57);
        NL::QueryTokenizer::updateEntitiesWithUnknownValues(this, &v57);
        if (v58 != v57)
        {
          std::__sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::shared_ptr<NL::Entity> *>,entity_greater_than_range>(v57, v58, &v48);
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v3 = *(this + 13);
          Length = CFStringGetLength(v3);
          memset(v47, 0, sizeof(v47));
          std::vector<std::shared_ptr<NL::Entity>>::__init_with_size[abi:ne200100]<std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(v47, v57, v58, (v58 - v57) >> 4);
          subtokenize(v3, 0, Length, &v51, &v48, v47);
          v44 = v47;
          std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v44);
          std::__sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<CFRange> *>,ranges_greater_than_range>(v48, v49, &__p);
          if (v49 == v48)
          {
            v44 = &v48;
            std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v44);
            if (v51)
            {
              v52 = v51;
              operator delete(v51);
            }
          }

          else
          {
            std::vector<std::shared_ptr<NL::Entity>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<NL::Entity>*>,std::__wrap_iter<std::shared_ptr<NL::Entity>*>>(this + 20, *(this + 21), v57, v58, (v58 - v57) >> 4);
            v32 = v2;
            v5 = v57;
            for (i = v58; i != v5; i -= 2)
            {
              v7 = *(i - 1);
              if (v7)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              }
            }

            v58 = v5;
            v8 = v48;
            v33 = v49;
            if (v48 != v49)
            {
              v9 = 0;
              do
              {
                v44 = 0;
                v45 = 0;
                v46 = 0;
                std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v44, v8->n128_u64[0], v8->n128_i64[1], (v8->n128_u64[1] - v8->n128_u64[0]) >> 4);
                __p = 0;
                v42 = 0;
                v43 = 0;
                std::vector<std::vector<CFRange>>::push_back[abi:ne200100](this + 184, &__p);
                if (__p)
                {
                  v42 = __p;
                  operator delete(__p);
                }

                v10 = v44;
                v11 = v45;
                if (v44 != v45)
                {
                  v34 = v8;
                  v12 = 0;
                  do
                  {
                    v13 = *v10;
                    v14 = v10[1];
                    memset(v40, 0, sizeof(v40));
                    std::vector<std::shared_ptr<NL::Entity>>::__init_with_size[abi:ne200100]<std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(v40, *(this + 20), *(this + 21), (*(this + 21) - *(this + 20)) >> 4);
                    v35[0] = MEMORY[0x277D85DD0];
                    v35[1] = 1174405120;
                    v35[2] = ___ZN2NL14QueryTokenizer8tokenizeEv_block_invoke;
                    v35[3] = &__block_descriptor_tmp_41;
                    v35[4] = this;
                    v35[5] = v12;
                    v37 = 0;
                    v38 = 0;
                    v36 = 0;
                    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v36, v44, v45, (v45 - v44) >> 4);
                    v39 = v9;
                    enumerateIndexesOfRange(v40, v13, v14, v35);
                    __p = v40;
                    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&__p);
                    if (v36)
                    {
                      v37 = v36;
                      operator delete(v36);
                    }

                    v10 += 2;
                    ++v12;
                  }

                  while (v10 != v11);
                  v10 = v44;
                  v8 = v34;
                }

                if (v10)
                {
                  v45 = v10;
                  operator delete(v10);
                }

                ++v9;
                v8 = (v8 + 24);
              }

              while (v8 != v33);
            }

            v16 = *(this + 20);
            v15 = *(this + 21);
            if (v15 != v16)
            {
              v17 = 0;
              v18 = 0;
              do
              {
                if (*(*(v16 + v17) + 112) == 5)
                {
                  v20 = *(this + 30);
                  v19 = *(this + 31);
                  if (v20 >= v19)
                  {
                    v22 = *(this + 29);
                    v23 = v20 - v22;
                    v24 = (v20 - v22) >> 3;
                    v25 = v24 + 1;
                    if ((v24 + 1) >> 61)
                    {
                      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
                    }

                    v26 = v19 - v22;
                    if (v26 >> 2 > v25)
                    {
                      v25 = v26 >> 2;
                    }

                    if (v26 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v27 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v27 = v25;
                    }

                    if (v27)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(this + 232, v27);
                    }

                    v28 = (v20 - v22) >> 3;
                    v29 = (8 * v24);
                    v30 = (8 * v24 - 8 * v28);
                    *v29 = v18;
                    v21 = v29 + 1;
                    memcpy(v30, v22, v23);
                    v31 = *(this + 29);
                    *(this + 29) = v30;
                    *(this + 30) = v21;
                    *(this + 31) = 0;
                    if (v31)
                    {
                      operator delete(v31);
                    }
                  }

                  else
                  {
                    *v20 = v18;
                    v21 = v20 + 1;
                  }

                  *(this + 30) = v21;
                  v16 = *(this + 20);
                  v15 = *(this + 21);
                }

                ++v18;
                v17 += 16;
              }

              while (v18 < (v15 - v16) >> 4);
            }

            v44 = &v48;
            std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v44);
            if (v51)
            {
              v52 = v51;
              operator delete(v51);
            }

            v2 = v32;
          }
        }
      }

      CFRelease(v2);
    }

    v51 = &v57;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v51);
  }
}

void sub_22CD51388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  a28 = &a34;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a28);
  v36 = *(v34 - 176);
  if (v36)
  {
    *(v34 - 168) = v36;
    operator delete(v36);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v34 - 136), 0);
  *(v34 - 176) = v34 - 128;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v34 - 176));
  _Unwind_Resume(a1);
}

uint64_t NL::QueryTokenizer::getEntityAtLocation@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0 || (v3 = *(this + 160), a2 >= (*(this + 168) - v3) >> 4))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v4 = *(v3 + 16 * a2);
    *a3 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t NL::QueryTokenizer::tokenRangeAtTokenizationIndexForSpan(NL::QueryTokenizer *this, unint64_t a2, CFRange a3)
{
  v3 = -1;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = *(this + 23);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - v4) >> 3) > a2)
    {
      v5 = v4 + 24 * a2;
      v6 = *v5;
      v7 = *(v5 + 8);
      if (*v5 == v7)
      {
        return -1;
      }

      else
      {
        v3 = -1;
        do
        {
          v8 = v6[1];
          if (v8 == a3.location)
          {
            v3 = *(*(*(this + 20) + 16 * *v6) + 96);
          }

          if (v8 >= a3.location && v8 < a3.location + a3.length)
          {
            v10 = *(*(this + 20) + 16 * *v6);
            v11 = *(v10 + 96) - v3 + *(v10 + 104);
          }

          v6 += 2;
        }

        while (v6 != v7);
      }
    }
  }

  return v3;
}

void NL::QueryTokenizer::enumerateEntitiesAtTokenizationIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0 && 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - *(a1 + 184)) >> 3) > a2)
  {
    v20 = 0;
    v6 = NL::SearchGrammar::tokenOrderReversed(*(a1 + 16));
    v7 = *(a1 + 184);
    if (v6)
    {
      v8 = *(v7 + 24 * a2 + 8);
      do
      {
        if (v8 == *(*(a1 + 184) + 24 * a2))
        {
          break;
        }

        v10 = v8 - 2;
        v9 = *(v8 - 2);
        v11 = *(*(a1 + 160) + 16 * v9);
        v19 = v11;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
          v9 = *v10;
        }

        (*(a3 + 16))(a3, &v19, *(v8 - 1), v9, &v20);
        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
        }

        v8 = v10;
      }

      while ((v20 & 1) == 0);
    }

    else
    {
      v12 = (v7 + 24 * a2);
      v13 = v12[1];
      if (*v12 != v13)
      {
        v14 = *v12 + 16;
        do
        {
          v15 = *(v14 - 16);
          v16 = *(*(a1 + 160) + 16 * v15);
          v18 = v16;
          if (*(&v16 + 1))
          {
            atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
            v15 = *(v14 - 16);
          }

          (*(a3 + 16))(a3, &v18, *(v14 - 8), v15, &v20);
          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }

          if (v20)
          {
            break;
          }

          v17 = v14 == v13;
          v14 += 16;
        }

        while (!v17);
      }
    }
  }
}

void sub_22CD5170C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void NL::QueryTokenizer::enumerateQuotedEntities(void *a1, uint64_t a2)
{
  v10 = 0;
  v2 = a1[29];
  v3 = a1[30];
  if (v2 != v3)
  {
    v6 = v2 + 8;
    do
    {
      v7 = *(a1[20] + 16 * *(v6 - 8));
      v9 = v7;
      if (*(&v7 + 1))
      {
        atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(a2 + 16))(a2, &v9);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }

      if (v10)
      {
        break;
      }

      v8 = v6 == v3;
      v6 += 8;
    }

    while (!v8);
  }
}

void sub_22CD517E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::QueryTokenizer::containsLegacyQuerySyntax(CFCharacterSetRef *this, const __CFString *a2)
{
  if (a2 && (v3 = this[11]) != 0 && CFSetGetCount(v3))
  {
    Length = CFStringGetLength(a2);
    v6 = 0;
    v8.location = 0;
    v7 = *MEMORY[0x277CBECE8];
    v8.length = Length;
    do
    {
      if (v8.location >= Length)
      {
        break;
      }

      CharacterFromSet = CFStringFindCharacterFromSet(a2, this[10], v8, 0, &result);
      location = result.location;
      if (!CharacterFromSet || result.location < 1)
      {
        break;
      }

      while (location >= 2)
      {
        if (CFStringGetCharacterAtIndex(a2, --location) == 32)
        {
          v12.location = location + 1;
          goto LABEL_14;
        }
      }

      v12.location = 0;
LABEL_14:
      v13 = result.location;
      v12.length = result.location - v12.location;
      v14 = CFStringCreateWithSubstring(v7, a2, v12);
      if (v14)
      {
        v15 = v14;
        v6 |= CFSetContainsValue(this[11], v14) != 0;
        if (v6)
        {
          v16 = 3;
        }

        else
        {
          v16 = 0;
        }

        CFRelease(v15);
      }

      else
      {
        if (v6)
        {
          v6 = 1;
          return v6 & 1;
        }

        v16 = 0;
        v6 = 0;
      }

      v8.location = v13 + 1;
      v8.length = Length - v13;
    }

    while (!v16);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_22CD51958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NL::QueryTokenizer::updateEntitiesWithQuotedTextValues(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) && *(a1 + 56))
  {
    v3 = a2;
    result = xmmword_22CDDE2F0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x4002000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    memset(v17, 0, sizeof(v17));
    v4 = *(a1 + 112);
    v5 = *(a1 + 120);
    if (v4 != v5)
    {
      location = -1;
      v7 = -1;
      do
      {
        if ((*(v4 + 17) & 4) != 0 && CFStringFindCharacterFromSet(*(a1 + 104), *(a1 + 56), *v4, 0, &result))
        {
          if (location == -1)
          {
            v7 = result.length + result.location;
            location = result.location;
          }

          else
          {
            v20.length = result.location - v7;
            v20.location = v7;
            v7 = NL::QueryTokenizer::contentRangeFromRange(a1, v20);
            NL::EntityConverter::enumerateEntitiesWithString(*(a1 + 48), *(a1 + 104), @"QuotedText", v7, v8);
            location = -1;
          }
        }

        v4 += 24;
      }

      while (v4 != v5);
      v3 = a2;
      if (location != -1)
      {
        CFStringGetLength(*(a1 + 104));
        v21.length = CFStringGetLength(*(a1 + 104)) - v7;
        v21.location = v7;
        v9 = NL::QueryTokenizer::contentRangeFromRange(a1, v21);
        NL::EntityConverter::enumerateEntitiesWithString(*(a1 + 48), *(a1 + 104), @"QuotedText", v9, v10);
      }
    }

    std::vector<std::shared_ptr<NL::Entity>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<NL::Entity>*>,std::__wrap_iter<std::shared_ptr<NL::Entity>*>>(v3, *(v3 + 8), v13[5], v13[6], (v13[6] - v13[5]) >> 4);
    _Block_object_dispose(&v12, 8);
    v19 = v17;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v19);
  }
}

void sub_22CD51BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  *(v13 - 112) = a3;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v13 - 112));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t NL::QueryTokenizer::contentRangeFromRange(NL::QueryTokenizer *this, CFRange a2)
{
  v2 = *(this + 14);
  v3 = *(this + 15);
  if (v3 == v2 || !*(this + 13))
  {
    return -1;
  }

  length = a2.length;
  location = a2.location;
  if (a2.length != 1)
  {
    goto LABEL_6;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v38.location = location;
  v38.length = 1;
  if (CFStringFindCharacterFromSet(*(this + 13), Predefined, v38, 0, 0))
  {
    return -1;
  }

  v2 = *(this + 14);
  v3 = *(this + 15);
LABEL_6:
  v8 = -1;
  if (v3 == v2)
  {
    return v8;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (v3 - v2);
  v10 = v2;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[3 * (v11 >> 1)];
    v15 = *v13;
    v16 = v13[1];
    v14 = v13 + 3;
    v11 += ~(v11 >> 1);
    if (v16 + v15 <= location)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == v3)
  {
    return -1;
  }

  v17 = 0;
  v18 = location + length;
  v8 = -1;
  do
  {
    v19 = *v10;
    v20 = v10[1];
    if (location != *v10 || length != v20)
    {
      v22 = v20 + v19;
      if ((v19 < location || v22 >= v18) && (v19 <= location || v22 > v18))
      {
        break;
      }
    }

    if ((*(v10 + 17) & 8) == 0)
    {
      v17 = v10[1];
      v8 = *v10;
      break;
    }

    v10 += 3;
    v8 = v19;
    v17 = v20;
  }

  while (v10 != v3);
  if (v8 != -1 && v8 + v17 != v18)
  {
    do
    {
      v26 = v9 >> 1;
      v27 = &v3[-3 * (v9 >> 1)];
      v29 = *(v27 - 3);
      v30 = *(v27 - 2);
      v28 = v27 - 3;
      v9 += ~(v9 >> 1);
      if (v30 + v29 > v18)
      {
        v3 = v28;
      }

      else
      {
        v9 = v26;
      }
    }

    while (v9);
    if (v2 != v3)
    {
      v31 = v3;
      while (1)
      {
        v32 = *(v31 - 3);
        v33 = *(v31 - 2);
        v31 -= 3;
        if (location != v32 || length != v33)
        {
          v35 = v33 + v32;
          if ((v32 < location || v35 >= v18) && (v32 <= location || v35 > v18))
          {
            break;
          }
        }

        if ((*(v3 - 7) & 8) != 0)
        {
          v3 = v31;
          if (v31 != v2)
          {
            continue;
          }
        }

        return v8;
      }

      CFStringGetLength(*(this + 13));
    }
  }

  return v8;
}

uint64_t ___ZN2NL14QueryTokenizer34updateEntitiesWithQuotedTextValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *(*(result + 32) + 8);
    v3 = *(v2 + 48);
    if (v3 >= *(v2 + 56))
    {
      result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v2 + 40, a2);
    }

    else
    {
      std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v2 + 48), a2);
      result = v3 + 16;
      *(v2 + 48) = v3 + 16;
    }

    *(v2 + 48) = result;
  }

  return result;
}

uint64_t ___ZN2NL14QueryTokenizer34updateEntitiesWithQuotedTextValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_2(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *(*(result + 32) + 8);
    v3 = *(v2 + 48);
    if (v3 >= *(v2 + 56))
    {
      result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v2 + 40, a2);
    }

    else
    {
      std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v2 + 48), a2);
      result = v3 + 16;
      *(v2 + 48) = v3 + 16;
    }

    *(v2 + 48) = result;
  }

  return result;
}

void NL::QueryTokenizer::updateEntitiesWithKnownValues(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a1[13])
    {
      v3 = a1[5];
      if (v3)
      {
        if (a1[2])
        {
          v18[0] = 0;
          v18[1] = v18;
          v18[2] = 0x4002000000;
          v18[3] = __Block_byref_object_copy__17;
          v20[0] = 0;
          v20[1] = 0;
          v18[4] = __Block_byref_object_dispose__18;
          v19 = v20;
          v16[0] = 0;
          v16[1] = v16;
          v16[2] = 0x3802000000;
          v16[3] = __Block_byref_object_copy__19;
          v16[4] = __Block_byref_object_dispose__20;
          v17 = xmmword_22CDDE2F0;
          v10 = 0;
          v11 = &v10;
          v12 = 0x4002000000;
          v13 = __Block_byref_object_copy__2;
          v14 = __Block_byref_object_dispose__2;
          memset(v15, 0, sizeof(v15));
          v8[0] = 0;
          v8[1] = v8;
          v8[2] = 0x4002000000;
          v8[3] = __Block_byref_object_copy__2;
          v8[4] = __Block_byref_object_dispose__2;
          memset(v9, 0, sizeof(v9));
          v6[0] = 0;
          v6[1] = v6;
          v6[2] = 0x3802000000;
          v6[3] = __Block_byref_object_copy__21;
          v6[5] = 0;
          v7 = 0;
          v6[4] = __Block_byref_object_dispose__22;
          v5[0] = MEMORY[0x277D85DD0];
          v5[1] = 0x40000000;
          v5[2] = ___ZN2NL14QueryTokenizer29updateEntitiesWithKnownValuesEPK10__CFStringRNSt3__16vectorINS4_10shared_ptrINS_6EntityEEENS4_9allocatorIS8_EEEE_block_invoke;
          v5[3] = &unk_27873FE28;
          v5[4] = v16;
          v5[5] = v18;
          v5[6] = v8;
          v5[7] = v6;
          v5[8] = &v10;
          v5[9] = a1;
          NLEntityDetectorEnumerateEntities(v3, a2, v5);
          std::vector<std::shared_ptr<NL::Entity>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<NL::Entity>*>,std::__wrap_iter<std::shared_ptr<NL::Entity>*>>(a3, *(a3 + 8), v11[5], v11[6], (v11[6] - v11[5]) >> 4);
          _Block_object_dispose(v6, 8);
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          _Block_object_dispose(v8, 8);
          v6[0] = v9;
          std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](v6);
          _Block_object_dispose(&v10, 8);
          v8[0] = v15;
          std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](v8);
          _Block_object_dispose(v16, 8);
          _Block_object_dispose(v18, 8);
          std::__tree<std::string>::destroy(&v19, v20[0]);
        }
      }
    }
  }
}

void sub_22CD5219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a19, 8);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Block_object_dispose(&a26, 8);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Block_object_dispose(&a34, 8);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Block_object_dispose((v35 - 168), 8);
  _Block_object_dispose((v35 - 112), 8);
  std::__tree<std::string>::destroy(v34 + 40, *(v35 - 64));
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__17(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 40, *(a1 + 48));
}

{
  nlp::CFScopedPtr<__CFAttributedString *>::reset((a1 + 40), 0);
}

__n128 __Block_byref_object_copy__19(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__21(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2NL14QueryTokenizer29updateEntitiesWithKnownValuesEPK10__CFStringRNSt3__16vectorINS4_10shared_ptrINS_6EntityEEENS4_9allocatorIS8_EEEE_block_invoke(int8x16_t *a1, __CFString *a2, CFIndex a3, CFIndex a4, const __CFDictionary *a5)
{
  v10 = a1[4].i64[1];
  v11 = v10[2];
  getUTF8StringFromCFString(a2, &__p);
  NL::SearchGrammar::getValidTypeName(v11, &__p, &v59);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v13 = *(a1[2].i64[0] + 8);
    v14 = *(v13 + 40);
    if (v14 == -1 || ((v15 = *(v13 + 48), v14 == a3) ? (v16 = v15 == a4) : (v16 = 0), !v16 || *(a1[2].i64[1] + 8) + 48 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(*(a1[2].i64[1] + 8) + 40, &v59.__r_.__value_.__l.__data_) || NL::SearchGrammar::isTypeMultivalued(v10[2], &v59)))
    {
      v17 = *(a1[2].i64[0] + 8);
      v18 = *(v17 + 40);
      if (v18 == -1)
      {
        goto LABEL_38;
      }

      v19 = *(v17 + 48);
      v20 = a3 + a4;
      v21 = v19 + v18;
      if ((a3 < v18 || v20 >= v21) && (a3 <= v18 || v20 > v21))
      {
        goto LABEL_38;
      }

      v24 = *(a1[2].i64[1] + 8);
      v25 = *(v24 + 40);
      v26 = (v24 + 48);
      if (v25 == (v24 + 48))
      {
        goto LABEL_38;
      }

      v27 = 1;
      do
      {
        if (*(v25 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v25[4], v25[5]);
        }

        else
        {
          __p = *(v25 + 4);
        }

        isTypeSubsumed = NL::SearchGrammar::isTypeSubsumed(v10[2], &__p, &v59);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v29 = v25[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v25[2];
            v16 = *v30 == v25;
            v25 = v30;
          }

          while (!v16);
        }

        v27 &= !isTypeSubsumed;
        v25 = v30;
      }

      while (v30 != v26);
      if (v27)
      {
LABEL_38:
        CFStringFromString = createCFStringFromString(&v59);
        if (CFStringFromString)
        {
          v60.location = a3;
          v60.length = a4;
          v32 = NL::QueryTokenizer::tokenRangeForSearchPiece(v10, v60);
          if (v32 != -1)
          {
            v34 = v32;
            v35 = v33;
            v36 = *(a1[2].i64[0] + 8);
            v37 = *(v36 + 40);
            v38 = *(v36 + 48) + v37;
            if (v37 != -1 && v38 <= a3)
            {
              std::vector<std::shared_ptr<NL::ParseAttributes>>::clear[abi:ne200100]((*(a1[3].i64[0] + 8) + 40));
            }

            __p.__r_.__value_.__r.__words[0] = 0;
            __p.__r_.__value_.__l.__size_ = &__p;
            __p.__r_.__value_.__r.__words[2] = 0x2000000000;
            v58 = 0;
            v40 = v10[2];
            SymbolID = NL::SearchGrammar::getSymbolID(v40, &v59);
            isFunction = NL::SearchGrammar::isFunction(v40, SymbolID);
            v43 = v10[6];
            v44 = v10[13];
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 0x40000000;
            v53[2] = ___ZN2NL14QueryTokenizer29updateEntitiesWithKnownValuesEPK10__CFStringRNSt3__16vectorINS4_10shared_ptrINS_6EntityEEENS4_9allocatorIS8_EEEE_block_invoke_2;
            v53[3] = &unk_27873FE00;
            v54 = vextq_s8(a1[3], a1[3], 8uLL);
            v45 = a1[4].i64[0];
            p_p = &__p;
            v56 = v45;
            NL::EntityConverter::enumerateEntitiesWithTypeAndValues(v43, v44, v34, v35, CFStringFromString, a2, a5, isFunction, v53);
            _Block_object_dispose(&__p, 8);
          }

          CFRelease(CFStringFromString);
        }

        v46 = *(a1[2].i64[0] + 8);
        v48 = *(v46 + 40);
        v47 = *(v46 + 48);
        if (v48 != a3 || v47 != a4)
        {
          v50 = *(a1[2].i64[1] + 8);
          v51 = v50[6];
          v50 += 6;
          std::__tree<std::string>::destroy((v50 - 1), v51);
          *v50 = 0;
          v50[1] = 0;
          *(v50 - 1) = v50;
          v52 = *(a1[2].i64[0] + 8);
          *(v52 + 40) = a3;
          *(v52 + 48) = a4;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(*(a1[2].i64[1] + 8) + 40, &v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }
}

void sub_22CD52604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 81) < 0)
  {
    operator delete(*(v24 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::QueryTokenizer::tokenRangeForSearchPiece(NL::QueryTokenizer *this, CFRange a2)
{
  v2 = *(this + 14);
  v3 = *(this + 15);
  if (v3 == v2)
  {
    return -1;
  }

  location = a2.location;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3);
  v6 = *(this + 17);
  if (a2.location)
  {
    v7 = *(this + 18);
    result = -1;
    if (v7 == v6)
    {
      return result;
    }

    v9 = (v7 - v6) >> 4;
    v10 = v6;
    do
    {
      v11 = v9 >> 1;
      v12 = &v10[16 * (v9 >> 1)];
      v15 = *v12;
      v13 = *(v12 + 1);
      v14 = v12 + 16;
      v9 += ~(v9 >> 1);
      if (v13 + v15 <= location)
      {
        v10 = v14;
      }

      else
      {
        v9 = v11;
      }
    }

    while (v9);
    if (v10 != v7)
    {
      v16 = v10 - v6;
      v17 = (v10 - v6) >> 4;
      if (v17 < v5)
      {
        v18 = location + a2.length;
        v19 = v10 + 8;
        v20 = v16 + 16;
        v21 = v10 + 16;
        result = -1;
        do
        {
          if (*v19 + *(v19 - 1) > v18)
          {
            break;
          }

          v23 = (v2 + 24 * v17);
          v22 = *v23;
          if (result == -1)
          {
            result = v22;
          }

          if (v21 == v7)
          {
            break;
          }

          v19 += 2;
          v17 = v20 >> 4;
          v20 += 16;
          v21 += 16;
        }

        while (v17 < v5);
        return result;
      }
    }

    return -1;
  }

  v24 = *(this + 18);
  if (v6 == v24)
  {
    return -1;
  }

  result = -1;
  if (v3 != v2 && *(v6 + 1) + *v6 <= a2.length)
  {
    v25 = v6 + 16;
    v26 = (v2 + 8);
    v27 = 1;
    do
    {
      v28 = v26;
      v29 = *(v26 - 1);
      if (result == -1)
      {
        result = *(v26 - 1);
      }

      if (v25 == v24)
      {
        break;
      }

      if (v27 >= v5)
      {
        break;
      }

      v30 = *v25;
      v31 = *(v25 + 1);
      v25 += 16;
      v32 = v31 + v30;
      v26 = v28 + 3;
      ++v27;
    }

    while (v32 <= a2.length);
    v33 = *v28 + v29 - result;
  }

  return result;
}

void ___ZN2NL14QueryTokenizer29updateEntitiesWithKnownValuesEPK10__CFStringRNSt3__16vectorINS4_10shared_ptrINS_6EntityEEENS4_9allocatorIS8_EEEE_block_invoke_2(void *a1, uint64_t *a2)
{
  std::shared_ptr<NL::Entity>::operator=[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>((*(a1[4] + 8) + 40), a2);
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  while (v4 != v5)
  {
    if (compare_entities(v4, (*(a1[4] + 8) + 40)))
    {
      v6 = *(*(a1[4] + 8) + 40);
      if (*(v6 + 112) == 1)
      {
        v7 = (*v4)[17];
        v48 = (*v4)[16];
        v49 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v6 = *(*(a1[4] + 8) + 40);
        }

        v8 = *(v6 + 136);
        v47[0] = *(v6 + 128);
        v47[1] = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = compare_date_periods(&v48, v47);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if ((v9 & 1) == 0)
        {
          NL::Entity::addVariant(*v4, (*(a1[4] + 8) + 40));
        }
      }

      *(*(a1[6] + 8) + 24) = 1;
      break;
    }

    v4 += 2;
  }

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v10 = *(a1[4] + 8);
    v11 = *(v10 + 40);
    if (v11)
    {
      v12 = *(a1[7] + 8);
      v13 = v12[6];
      v14 = v12[7];
      if (v13 >= v14)
      {
        v17 = v12[5];
        v18 = (v13 - v17) >> 4;
        v19 = v18 + 1;
        if ((v18 + 1) >> 60)
        {
          goto LABEL_51;
        }

        v20 = v14 - v17;
        if (v20 >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        v52 = v12 + 5;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>((v12 + 5), v21);
        }

        v22 = (16 * v18);
        *v22 = v11;
        v23 = *(v10 + 48);
        v22[1] = v23;
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = v22 + 2;
        v24 = v12[5];
        v25 = v12[6] - v24;
        v26 = v22 - v25;
        memcpy(v22 - v25, v24, v25);
        v27 = v12[5];
        v12[5] = v26;
        v12[6] = v16;
        v28 = v12[7];
        v12[7] = 0;
        v50 = v27;
        v51 = v28;
        v48 = v27;
        v49 = v27;
        std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(&v48);
      }

      else
      {
        *v13 = v11;
        v15 = *(v10 + 48);
        v13[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = v13 + 2;
      }

      v12[6] = v16;
      v29 = *(a1[5] + 8);
      v30 = *(a1[4] + 8);
      v31 = v29[6];
      v32 = v29[7];
      if (v31 < v32)
      {
        *v31 = *(v30 + 40);
        v33 = *(v30 + 48);
        v31[1] = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        v34 = v31 + 2;
LABEL_49:
        v29[6] = v34;
        return;
      }

      v35 = v29[5];
      v36 = (v31 - v35) >> 4;
      v37 = v36 + 1;
      if (!((v36 + 1) >> 60))
      {
        v38 = v32 - v35;
        if (v38 >> 3 > v37)
        {
          v37 = v38 >> 3;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF0)
        {
          v39 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        v52 = v29 + 5;
        if (v39)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>((v29 + 5), v39);
        }

        v40 = 16 * v36;
        v41 = *(v30 + 40);
        *(16 * v36) = v41;
        if (*(&v41 + 1))
        {
          atomic_fetch_add_explicit((*(&v41 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v34 = (v40 + 16);
        v42 = v29[5];
        v43 = v29[6] - v42;
        v44 = v40 - v43;
        memcpy((v40 - v43), v42, v43);
        v45 = v29[5];
        v29[5] = v44;
        v29[6] = v34;
        v46 = v29[7];
        v29[7] = 0;
        v50 = v45;
        v51 = v46;
        v48 = v45;
        v49 = v45;
        std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(&v48);
        goto LABEL_49;
      }

LABEL_51:
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }
  }
}

void sub_22CD52B10(_Unwind_Exception *exception_object)
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

void *std::shared_ptr<NL::Entity>::operator=[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void **NL::Entity::addVariant(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[21];
  v5 = result[22];
  if (v4 >= v5)
  {
    v8 = (result + 20);
    v9 = v3[20];
    v10 = (v4 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v21[4] = v3 + 20;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(v8, v13);
    }

    v14 = 16 * v10;
    v15 = *a2;
    *(16 * v10) = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v14 + 16);
    v16 = v3[20];
    v17 = v3[21] - v16;
    v18 = v14 - v17;
    memcpy((v14 - v17), v16, v17);
    v19 = v3[20];
    v3[20] = v18;
    v3[21] = v7;
    v20 = v3[22];
    v3[22] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[21] = v7;
  return result;
}

void NL::QueryTokenizer::updateEntitiesWithUnknownValues(const __CFString **a1, uint64_t **a2)
{
  v3 = a1[13];
  if (v3 && a2[1] != *a2)
  {
    v110 = a1;
    Length = CFStringGetLength(v3);
    v5 = a2[1];
    v6 = 126 - 2 * __clz((v5 - *a2) >> 4);
    if (v5 == *a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,false>(*a2, v5, &v125, v7, 1);
    v125 = 0;
    v126 = &v125;
    v127 = 0x4002000000;
    v128 = __Block_byref_object_copy__2;
    v129 = __Block_byref_object_dispose__2;
    memset(v130, 0, sizeof(v130));
    v117 = 0;
    v118 = &v117;
    v119 = 0x4002000000;
    v120 = __Block_byref_object_copy__26;
    v121 = __Block_byref_object_dispose__27;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v8 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = -1;
      do
      {
        v107 = *v8;
        v13 = v8[1];
        if (v13)
        {
          atomic_fetch_add_explicit(((*(v8 + 1) >> 64) + 8), 1uLL, memory_order_relaxed);
        }

        v14 = *(v107 + 96);
        if (v12 == -1 || ((v15 = *(v107 + 104) + v14, v16 = v12 + v11, v14 >= v12) ? (v17 = v15 < v16) : (v17 = 0), !v17 && (v14 > v12 ? (v18 = v15 <= v16) : (v18 = 0), !v18)))
        {
          if (v14 > v10)
          {
            v132.location = v10;
            v132.length = v14 - v10;
            v20 = NL::QueryTokenizer::contentRangeFromRange(v110, v132);
            if (v20 != -1)
            {
              v21 = v19;
              v22 = *(v110 + 6);
              v23 = *(v110 + 13);
              v116[9] = MEMORY[0x277D85DD0];
              v116[10] = 0x40000000;
              v116[11] = ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke;
              v116[12] = &unk_27873FE50;
              v116[13] = &v117;
              v116[14] = &v125;
              NL::EntityConverter::enumerateEntitiesWithString(v22, v23, 0, v20, v21);
            }
          }

          v24 = v126;
          if (*(v107 + 112) == 7)
          {
            v111 = (v126[6] - v126[5]) >> 4;
            std::vector<long>::push_back[abi:ne200100](v118 + 5, &v111);
            v24 = v126;
          }

          v25 = v24[6];
          v26 = v24[7];
          if (v25 >= v26)
          {
            v28 = v24[5];
            v29 = (v25 - v28) >> 4;
            v30 = v29 + 1;
            if ((v29 + 1) >> 60)
            {
              std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
            }

            v31 = v26 - v28;
            if (v31 >> 3 > v30)
            {
              v30 = v31 >> 3;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF0)
            {
              v32 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            v115 = (v24 + 5);
            if (v32)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>((v24 + 5), v32);
            }

            v33 = 16 * v29;
            *(16 * v29) = v107;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v27 = (v33 + 16);
            v34 = v24[5];
            v35 = v24[6] - v34;
            v36 = v33 - v35;
            memcpy((v33 - v35), v34, v35);
            v37 = v24[5];
            v24[5] = v36;
            v24[6] = v27;
            v38 = v24[7];
            v24[7] = 0;
            v113 = v37;
            v114 = v38;
            v111 = v37;
            v112 = v37;
            std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(&v111);
          }

          else
          {
            *v25 = v107;
            v25[1] = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v27 = v25 + 2;
          }

          v24[6] = v27;
          v12 = *(v107 + 96);
          v11 = *(v107 + 104);
          v10 = v11 + v12;
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v8 += 2;
      }

      while (v8 != v9);
    }

    if (Length > v10)
    {
      v133.location = v10;
      v133.length = Length - v10;
      v40 = NL::QueryTokenizer::contentRangeFromRange(v110, v133);
      if (v40 != -1)
      {
        v41 = v39;
        v42 = *(v110 + 6);
        v43 = *(v110 + 13);
        v116[3] = MEMORY[0x277D85DD0];
        v116[4] = 0x40000000;
        v116[5] = ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_2;
        v116[6] = &unk_27873FE78;
        v116[7] = &v117;
        v116[8] = &v125;
        NL::EntityConverter::enumerateEntitiesWithString(v42, v43, 0, v40, v41);
      }
    }

    v111 = 0;
    v112 = &v111;
    v113 = 0x4002000000;
    v114 = __Block_byref_object_copy__2;
    v115 = __Block_byref_object_dispose__2;
    memset(v116, 0, 24);
    IsCJ = NL::ParserContext::languageIsCJ(*v110);
    v46 = v118[5];
    v45 = v118[6];
    v104 = v45;
    if (IsCJ)
    {
      if (v46 != v45)
      {
        while (1)
        {
          v47 = *v46;
          v48 = (v126[5] + 16 * *v46);
          v50 = *v48;
          v49 = v48[1];
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          CFStringFromString = createCFStringFromString(v50);
          v52 = CFStringFromString;
          p_isa = &CFStringFromString->isa;
          if (v47)
          {
            break;
          }

LABEL_84:
          if (v52)
          {
            CFRelease(v52);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          if (v47)
          {
            if (++v46 != v45)
            {
              continue;
            }
          }

          goto LABEL_131;
        }

        v105 = CFStringFromString;
        v100 = v47;
        v102 = v49;
        v108 = v46;
        v54 = *(v50 + 96);
        v53 = *(v50 + 104);
        v55 = v54 + v53;
        v56 = v47 + 1;
        v57 = 16 * v47;
        while (1)
        {
          if (--v56 < 1)
          {
LABEL_80:
            v46 = v108;
            v49 = v102;
            v45 = v104;
            v47 = v100;
            v52 = v105;
            if (v55)
            {
              v135.location = 0;
              v135.length = v55;
              v69 = NL::QueryTokenizer::contentRangeFromRange(v110, v135);
              if (v69 || v68 != Length)
              {
                NL::EntityConverter::enumerateEntitiesWithString(*(v110 + 6), *(v110 + 13), v105, v69, v68);
              }
            }

            goto LABEL_84;
          }

          v58 = v126[5] + v57;
          v60 = *(v58 - 16);
          v59 = *(v58 - 8);
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = *(v60 + 96);
          v61 = *(v60 + 104);
          if (v62 == -1 || v61 + v62 > *(v50 + 96))
          {
            goto LABEL_64;
          }

          if (NL::SearchGrammar::isTypeValidForTopic(*(v110 + 2), v60))
          {
            break;
          }

          v134.location = v54;
          v134.length = v55 - v54;
          v66 = NL::QueryTokenizer::contentRangeFromRange(v110, v134);
          if ((v66 != *(v50 + 96) || v67 != *(v50 + 104)) && (v66 || v67 != Length))
          {
            NL::EntityConverter::enumerateEntitiesWithString(*(v110 + 6), *(v110 + 13), v105, v66, v67);
          }

          v55 = 0;
          v65 = 0;
          if (!v59)
          {
            goto LABEL_71;
          }

LABEL_70:
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
LABEL_71:
          v57 -= 16;
          if ((v65 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        v62 = *(v60 + 96);
        v61 = *(v60 + 104);
LABEL_64:
        if (v61 != v53 || v62 != v54)
        {
          v54 = v62;
        }

        v65 = 1;
        v53 = v61;
        if (!v59)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }
    }

    else if (v46 != v45)
    {
      do
      {
        v70 = *v46;
        v71 = (v126[5] + 16 * *v46);
        v73 = *v71;
        v72 = v71[1];
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v74 = createCFStringFromString(v73);
        p_isa = &v74->isa;
        v75 = v70 + 1;
        v76 = v126[5];
        v77 = v126[6] - v76;
        if (v70 + 1 < (v77 >> 4))
        {
          v99 = v126[6] - v76;
          v101 = v70 + 1;
          v103 = v72;
          v109 = v46;
          v79 = *(v73 + 96);
          v78 = *(v73 + 104);
          v80 = 16 * v70;
          v81 = v79;
          v82 = v70 + 1;
          do
          {
            v83 = v76 + v80;
            v85 = *(v83 + 16);
            v84 = *(v83 + 24);
            if (v84)
            {
              atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v86 = *(v73 + 96);
            v87 = v86 != -1 && *(v73 + 104) + v86 <= *(v85 + 96);
            if (v87 && !NL::SearchGrammar::isTypeValidForTopic(*(v110 + 2), v85))
            {
              v136.location = v79;
              v136.length = v81 + v78 - v79;
              v88 = NL::QueryTokenizer::contentRangeFromRange(v110, v136);
              if ((v88 != *(v73 + 96) || v89 != *(v73 + 104)) && (v88 || v89 != Length))
              {
                NL::EntityConverter::enumerateEntitiesWithString(*(v110 + 6), *(v110 + 13), v74, v88, v89);
              }

              v79 = -1;
            }

            v90 = *(v85 + 96);
            v91 = *(v85 + 104);
            if (v91 != v78 || v90 != v81)
            {
              v81 = v90;
            }

            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

            ++v82;
            v76 = v126[5];
            v80 += 16;
            v78 = v91;
          }

          while (v82 < (v126[6] - v76) >> 4);
          v46 = v109;
          v72 = v103;
          v45 = v104;
          v77 = v99;
          v75 = v101;
          if (v79 != -1)
          {
            v93 = CFStringGetLength(*(v110 + 13));
            v137.location = v79;
            v137.length = v93 - v79;
            v45 = v104;
            v95 = NL::QueryTokenizer::contentRangeFromRange(v110, v137);
            if (v95 || v94 != Length)
            {
              NL::EntityConverter::enumerateEntitiesWithString(*(v110 + 6), *(v110 + 13), v74, v95, v94);
            }
          }
        }

        if (v74)
        {
          CFRelease(v74);
        }

        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        ++v46;
      }

      while (v75 < v77 >> 4 && v46 != v45);
    }

LABEL_131:
    v97 = a2;
    std::vector<std::shared_ptr<NL::ParseAttributes>>::clear[abi:ne200100](a2);
    std::vector<std::shared_ptr<NL::Entity>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<NL::Entity>*>,std::__wrap_iter<std::shared_ptr<NL::Entity>*>>(v97, v97[1], v126[5], v126[6], (v126[6] - v126[5]) >> 4);
    std::vector<std::shared_ptr<NL::Entity>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<NL::Entity>*>,std::__wrap_iter<std::shared_ptr<NL::Entity>*>>(v97, v97[1], v112[5], v112[6], (v112[6] - v112[5]) >> 4);
    _Block_object_dispose(&v111, 8);
    p_isa = v116;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&p_isa);
    _Block_object_dispose(&v117, 8);
    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    _Block_object_dispose(&v125, 8);
    v117 = v130;
    std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v117);
  }
}

void sub_22CD536A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  _Block_object_dispose((v10 - 240), 8);
  v12 = *(v10 - 200);
  if (v12)
  {
    *(v10 - 192) = v12;
    operator delete(v12);
  }

  _Block_object_dispose((v10 - 176), 8);
  *(v10 - 240) = a10;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v10 - 240));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__26(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__27(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*(*a2 + 112) == 7)
  {
    v4 = *(*(a1 + 32) + 8);
    v8 = (*(*(*(a1 + 40) + 8) + 48) - *(*(*(a1 + 40) + 8) + 40)) >> 4;
    std::vector<long>::push_back[abi:ne200100]((v4 + 40), &v8);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 48);
  if (v6 >= *(v5 + 56))
  {
    result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v5 + 40, a2);
  }

  else
  {
    std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v5 + 48), a2);
    result = v6 + 16;
    *(v5 + 48) = v6 + 16;
  }

  *(v5 + 48) = result;
  return result;
}

void std::vector<long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  if (*(*a2 + 112) == 7)
  {
    v4 = *(*(a1 + 32) + 8);
    v8 = (*(*(*(a1 + 40) + 8) + 48) - *(*(*(a1 + 40) + 8) + 40)) >> 4;
    std::vector<long>::push_back[abi:ne200100]((v4 + 40), &v8);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 48);
  if (v6 >= *(v5 + 56))
  {
    result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v5 + 40, a2);
  }

  else
  {
    std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v5 + 48), a2);
    result = v6 + 16;
    *(v5 + 48) = v6 + 16;
  }

  *(v5 + 48) = result;
  return result;
}

uint64_t ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_3(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3 >= *(v2 + 56))
  {
    result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v2 + 40, a2);
  }

  else
  {
    std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v2 + 48), a2);
    result = v3 + 16;
    *(v2 + 48) = v3 + 16;
  }

  *(v2 + 48) = result;
  return result;
}

uint64_t ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_4(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3 >= *(v2 + 56))
  {
    result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v2 + 40, a2);
  }

  else
  {
    std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v2 + 48), a2);
    result = v3 + 16;
    *(v2 + 48) = v3 + 16;
  }

  *(v2 + 48) = result;
  return result;
}

uint64_t ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_5(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3 >= *(v2 + 56))
  {
    result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v2 + 40, a2);
  }

  else
  {
    std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v2 + 48), a2);
    result = v3 + 16;
    *(v2 + 48) = v3 + 16;
  }

  *(v2 + 48) = result;
  return result;
}

uint64_t ___ZN2NL14QueryTokenizer31updateEntitiesWithUnknownValuesERNSt3__16vectorINS1_10shared_ptrINS_6EntityEEENS1_9allocatorIS5_EEEE_block_invoke_6(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3 >= *(v2 + 56))
  {
    result = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(v2 + 40, a2);
  }

  else
  {
    std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>(*(v2 + 48), a2);
    result = v3 + 16;
    *(v2 + 48) = v3 + 16;
  }

  *(v2 + 48) = result;
  return result;
}

uint64_t NL::QueryTokenizer::copySearchStringAndTokenize(CFStringRef *this)
{
  info = (*this)->info;
  if (info)
  {
    NL::QueryTokenizer::setLocale(this, info);
  }

  if (!this[12])
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (v10[3])
  {
    CFStringGetLength(this[13]);
    v3 = this[4];
    v4 = this[13];
    NLTaggerSetString();
    v5 = this[4];
    NLTaggerSetLocaleForRange();
    v6 = this[4];
    NLTaggerEnumerateTokens();
    v7 = v10[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v7;
}

void sub_22CD53CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN2NL14QueryTokenizer27copySearchStringAndTokenizeEv_block_invoke(uint64_t a1, CFRange *a2)
{
  v4 = *(a1 + 40);
  if ((*(*v4 + 64) & 1) == 0)
  {
    v5 = *(v4 + 120);
    if (v5 != *(v4 + 112))
    {
      location = a2[1].location;
      if ((location & 0x800) == 0)
      {
        v7 = *(v5 - 8);
        if ((v7 & 0x800) == 0 && ((v7 | location) & 0x80) != 0)
        {
          CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @" ");
        }
      }
    }
  }

  if (CFStringFindCharacterFromSet(*(v4 + 104), *(v4 + 64), *a2, 0, 0))
  {
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2000000000;
    v64 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2000000000;
    v62 = 0;
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    v54 = 0x3802000000;
    v55 = __Block_byref_object_copy__19;
    v8 = a2->location;
    v56 = __Block_byref_object_dispose__20;
    v57 = v8;
    v58 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3802000000;
    v49 = __Block_byref_object_copy__19;
    v50 = __Block_byref_object_dispose__20;
    v51 = v8;
    v52 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3802000000;
    v43 = __Block_byref_object_copy__19;
    v44 = __Block_byref_object_dispose__20;
    v45 = xmmword_22CDDE2F0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = v8;
    v9 = *(v4 + 104);
    length = a2->length;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 0x40000000;
    v35[2] = ___ZN2NL14QueryTokenizer27copySearchStringAndTokenizeEv_block_invoke_2;
    v35[3] = &unk_27873FF40;
    v35[4] = &v40;
    v35[5] = &v59;
    v11 = *(a1 + 32);
    v35[6] = &v53;
    v35[7] = v11;
    v35[8] = &v36;
    v35[9] = &v46;
    v35[10] = v63;
    v35[11] = v4;
    enumerateCharactersInCFString(v9, v8, length, v35);
    if (*(*(&v53 + 1) + 40) != -1)
    {
      v12 = *(*(&v53 + 1) + 48);
      if (v12)
      {
        *&v34 = v37[3];
        *(&v34 + 1) = v12;
        std::vector<CFRange>::push_back[abi:ne200100](v4 + 136, &v34);
        v13 = copyStringInsertingSpacesBetweenIdeographCharacters(*(v4 + 104), v47[5], v47[6]);
        v33 = v13;
        CFStringAppend(*(*(*(a1 + 32) + 8) + 24), v13);
        if (*(v60 + 24) == 1)
        {
          CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @" ");
          v14 = *(&v53 + 1);
          if (v60[3])
          {
            *(*(&v53 + 1) + 48) = v41[6] + v41[5] - *(*(&v53 + 1) + 40);
          }
        }

        else
        {
          v14 = *(&v53 + 1);
        }

        v31 = *(v14 + 40);
        v32 = 0;
        std::vector<NLToken>::push_back[abi:ne200100](v4 + 112, &v31);
        ++*(v4 + 256);
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(v63, 8);
  }

  else
  {
    v16 = *(v4 + 120);
    v15 = *(v4 + 128);
    if (v16 >= v15)
    {
      v19 = *(v4 + 112);
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
      v21 = v20 + 1;
      if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 3);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(v4 + 112, v23);
      }

      v24 = 24 * v20;
      v25 = *a2;
      *(v24 + 16) = a2[1].location;
      *v24 = v25;
      v18 = 24 * v20 + 24;
      v26 = *(v4 + 112);
      v27 = *(v4 + 120) - v26;
      v28 = 24 * v20 - v27;
      memcpy((v24 - v27), v26, v27);
      v29 = *(v4 + 112);
      *(v4 + 112) = v28;
      *(v4 + 120) = v18;
      *(v4 + 128) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v17 = *a2;
      *(v16 + 16) = a2[1].location;
      *v16 = v17;
      v18 = v16 + 24;
    }

    *(v4 + 120) = v18;
    if ((a2[1].location & 0x800) == 0)
    {
      ++*(v4 + 256);
    }

    v53 = CFStringGetLength(*(*(*(a1 + 32) + 8) + 24));
    v30 = copyStringInsertingSpacesBetweenIdeographCharacters(*(v4 + 104), a2->location, a2->length);
    v46 = v30;
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), v30);
    *(&v53 + 1) = CFStringGetLength(*(*(*(a1 + 32) + 8) + 24)) - v53;
    std::vector<CFRange>::push_back[abi:ne200100](v4 + 136, &v53);
    if (v30)
    {
      CFRelease(v30);
    }
  }
}

void sub_22CD54170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a13, 0);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 184), 8);
  _Block_object_dispose((v39 - 128), 8);
  _Block_object_dispose((v39 - 96), 8);
  _Unwind_Resume(a1);
}

void ___ZN2NL14QueryTokenizer27copySearchStringAndTokenizeEv_block_invoke_2(void *a1, CFRange rangeToSearch)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v5 = a1[11];
  v20.location = rangeToSearch.location;
  v20.length = length;
  CharacterFromSet = CFStringFindCharacterFromSet(*(v5 + 104), *(v5 + 64), v20, 0, (*(a1[4] + 8) + 40));
  v21.location = location;
  v21.length = length;
  v7 = CFStringFindCharacterFromSet(*(v5 + 104), *(v5 + 72), v21, 0, 0);
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    if (v7)
    {
      v8 = *(*(a1[7] + 8) + 24);
      if (*(*(a1[6] + 8) + 48))
      {
        *(*(a1[8] + 8) + 24) = CFStringGetLength(v8);
        v9 = copyStringInsertingSpacesBetweenIdeographCharacters(*(v5 + 104), *(*(a1[6] + 8) + 40), *(*(a1[6] + 8) + 48));
        *&v18 = v9;
        CFStringAppend(*(*(a1[7] + 8) + 24), v9);
        CFStringAppend(*(*(a1[7] + 8) + 24), @" ");
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        CFStringAppend(v8, @" ");
      }

      v17 = *(a1[9] + 8);
      *(v17 + 40) = location;
      *(v17 + 48) = length;
      v10 = location + length;
      v11 = a1[6];
      goto LABEL_12;
    }

    *(*(a1[6] + 8) + 48) = *(*(a1[4] + 8) + 48) + *(*(a1[4] + 8) + 40) - *(*(a1[6] + 8) + 40);
    v18 = *(*(a1[6] + 8) + 40);
    v19 = 0;
    std::vector<NLToken>::push_back[abi:ne200100](v5 + 112, &v18);
    ++*(v5 + 256);
    v12 = CFStringGetLength(*(*(a1[7] + 8) + 24));
    v13 = *(*(a1[9] + 8) + 48);
    *&v18 = v12;
    *(&v18 + 1) = v13;
    std::vector<CFRange>::push_back[abi:ne200100](v5 + 136, &v18);
    v14 = copyStringInsertingSpacesBetweenIdeographCharacters(*(v5 + 104), *(*(a1[9] + 8) + 40), *(*(a1[9] + 8) + 48));
    CFStringAppend(*(*(a1[7] + 8) + 24), v14);
    CFStringAppend(*(*(a1[7] + 8) + 24), @" ");
    v15 = *(a1[9] + 8);
    *(v15 + 40) = location;
    *(v15 + 48) = length;
    v16 = *(a1[6] + 8);
    *(v16 + 40) = location;
    *(v16 + 48) = length;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else if (!CharacterFromSet)
  {
    v10 = location + length;
    *(*(a1[6] + 8) + 48) = location + length - *(*(a1[6] + 8) + 40);
    v11 = a1[9];
LABEL_12:
    *(*(v11 + 8) + 48) = v10 - *(*(v11 + 8) + 40);
  }

  *(*(a1[5] + 8) + 24) = CharacterFromSet != 0;
  ++*(*(a1[10] + 8) + 24);
}

void sub_22CD54488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void std::vector<NLToken>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

NL::Entity **std::unique_ptr<NL::Entity>::~unique_ptr[abi:ne200100](NL::Entity **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    NL::Entity::~Entity(v2);
    MEMORY[0x2318C0600]();
  }

  return a1;
}

uint64_t std::vector<std::vector<CFRange>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<CFRange>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void ___ZN2NL14QueryTokenizer8tokenizeEv_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (NL::SearchGrammar::tokenOrderReversed(*(v4 + 16)))
  {
    v5 = ~a1[5] + ((a1[7] - a1[6]) >> 4);
  }

  v6 = (*(v4 + 160) + 16 * a2);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v10 = a2;
  *(&v10 + 1) = v5;
  std::vector<CFRange>::push_back[abi:ne200100](*(v4 + 184) + 24 * a1[9], &v10);
  if ((*(v8 + 112) - 3) <= 1)
  {
    *&v9 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 192) - *(v4 + 184)) >> 3) - 1;
    *(&v9 + 1) = v5;
    std::vector<CFRange>::push_back[abi:ne200100](v4 + 208, &v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_22CD5481C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c48_ZTSNSt3__16vectorI7CFRangeNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
}

void __destroy_helper_block_e8_48c48_ZTSNSt3__16vectorI7CFRangeNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<std::vector<CFRange>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void NL::QueryTokenizer::description(NL::QueryTokenizer *this@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(this + 23);
  for (i = *(this + 24); v3 != i; v3 += 3)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v31, *v3, v3[1], (v3[1] - *v3) >> 4);
    memset(&v30, 0, sizeof(v30));
    v5 = v31;
    v6 = v32;
    if (v31 != v32)
    {
      v7 = 0;
      v8 = -1;
      do
      {
        v9 = (*(this + 20) + 16 * *v5);
        v10 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = *(v10 + 96);
        v12 = *(v10 + 104);
        v14 = v13 == v8 && v12 == v7;
        v15 = "|";
        if (!v14)
        {
          size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v30.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            std::string::append(&v30, "} ");
          }

          std::string::append(&v30, "[");
          v17 = *(v10 + 47);
          if (v17 >= 0)
          {
            v18 = (v10 + 24);
          }

          else
          {
            v18 = *(v10 + 24);
          }

          if (v17 >= 0)
          {
            v19 = *(v10 + 47);
          }

          else
          {
            v19 = *(v10 + 32);
          }

          std::string::append(&v30, v18, v19);
          std::string::append(&v30, "]");
          v15 = "{";
        }

        std::string::append(&v30, v15);
        v20 = *(v10 + 23);
        if (v20 >= 0)
        {
          v21 = v10;
        }

        else
        {
          v21 = *v10;
        }

        if (v20 >= 0)
        {
          v22 = *(v10 + 23);
        }

        else
        {
          v22 = *(v10 + 8);
        }

        std::string::append(&v30, v21, v22);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v5 += 2;
        v8 = v13;
        v7 = v12;
      }

      while (v5 != v6);
      v23 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v30.__r_.__value_.__l.__size_;
      }

      v2 = a2;
      if (v23)
      {
        std::string::append(&v30, "} ");
      }
    }

    trim(&v30, __p);
    if ((v29 & 0x80u) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if ((v29 & 0x80u) == 0)
    {
      v25 = v29;
    }

    else
    {
      v25 = __p[1];
    }

    std::string::append(v2, v24, v25);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::append(v2, "\n");
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }
}

void sub_22CD54B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (*(v25 + 23) < 0)
  {
    operator delete(*v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<NL::Entity>>::emplace_back<std::shared_ptr<NL::Entity> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::shared_ptr<NL::Entity> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = (v3 + 2);
  }

  *(a1 + 8) = v5;
  return v5 - 16;
}

uint64_t std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::shared_ptr<NL::Entity> const&>(const void **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(a1, v7);
  }

  v8 = 16 * v2;
  v9 = *a2;
  *(16 * v2) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v8 + 16;
  v11 = a1[1] - *a1;
  v12 = v8 - v11;
  memcpy((v8 - v11), *a1, v11);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(v16);
  return v10;
}

uint64_t std::vector<std::shared_ptr<NL::Entity>>::__init_with_size[abi:ne200100]<std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<NL::Entity>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD54D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<NL::Entity>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<CFRange>>::__construct_one_at_end[abi:ne200100]<std::vector<CFRange> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<CFRange>>::__emplace_back_slow_path<std::vector<CFRange> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
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
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(&v14);
  return v8;
}

void sub_22CD55050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<CFRange>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<CFRange>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<CFRange>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CFRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD551B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CFRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<CFRange>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::shared_ptr<NL::Entity>>::__emplace_back_slow_path<std::unique_ptr<NL::Entity>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<NL::Entity>::shared_ptr[abi:ne200100]<NL::Entity,std::default_delete<NL::Entity>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(&v14);
  return v8;
}

void sub_22CD5534C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<NL::Entity>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<NL::Entity>*>,std::__wrap_iter<std::shared_ptr<NL::Entity>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<NL::Entity>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*,std::shared_ptr<NL::Entity>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<NL::Entity>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<NL::ParseIntent>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<NL::ParseIntent>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void *std::vector<std::shared_ptr<NL::Entity>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(&v11, a2, v7, v6);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, v9 + 2, a2 - 2);
        return;
      case 4uLL:

        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, v9 + 2, v9 + 4, a2 - 2);
        return;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
        return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v9 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    v16 = *(v9 - 2);
    if (!v16 || (v17 = *v9) == 0)
    {
LABEL_29:
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_less_than_range &>(v9, a2);
      goto LABEL_30;
    }

    v18 = *(v16 + 96);
    v19 = *(v17 + 96);
    if (v18 == v19)
    {
      v20 = *(v16 + 104);
      v21 = *(v17 + 104);
      if (v20 == v21)
      {
        if (*(v16 + 112) >= *(v17 + 112))
        {
          goto LABEL_29;
        }
      }

      else if (v20 <= v21)
      {
        goto LABEL_29;
      }
    }

    else if (v18 >= v19)
    {
      goto LABEL_29;
    }

LABEL_25:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_less_than_range &>(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_28;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(v9, v22);
    v9 = v22 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(v22 + 2, a2))
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_28:
      std::__introsort<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,false>(a1, v22, a3, -v11, a5 & 1);
      v9 = v22 + 2;
LABEL_30:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v25 = *(a2 - 2);
  if (v25)
  {
    v26 = *v9;
    if (*v9)
    {
      v27 = *(v25 + 96);
      v28 = *(v26 + 96);
      if (v27 == v28)
      {
        v29 = *(v25 + 104);
        v30 = *(v26 + 104);
        if (v29 == v30)
        {
          if (*(v25 + 112) >= *(v26 + 112))
          {
            return;
          }
        }

        else if (v29 <= v30)
        {
          return;
        }

LABEL_60:
        *v9 = v25;
        *(a2 - 2) = v26;
        v31 = v9[1];
        v9[1] = *(a2 - 1);
        *(a2 - 1) = v31;
      }

      else if (v27 < v28)
      {
        goto LABEL_60;
      }
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);
    v7 = *(v4 + 96);
    if (v6 == v7)
    {
      v8 = *(v4 + 104);
      if (v5 == v8)
      {
        if (*(v3 + 112) >= *(v4 + 112))
        {
          goto LABEL_14;
        }
      }

      else if (v5 <= v8)
      {
        goto LABEL_14;
      }
    }

    else if (v6 >= v7)
    {
      goto LABEL_14;
    }

    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_31;
    }

    v10 = *(v9 + 96);
    if (v10 == v6)
    {
      v11 = *(v9 + 104);
      if (v11 == v5)
      {
        if (*(v9 + 112) >= *(v3 + 112))
        {
LABEL_31:
          *a1 = v3;
          *a2 = v4;
          v28 = a1[1];
          a1[1] = a2[1];
          a2[1] = v28;
          v29 = *a3;
          if (!*a3)
          {
            return 1;
          }

          v30 = *a2;
          if (!*a2)
          {
            return 1;
          }

          v31 = *(v29 + 96);
          v32 = *(v30 + 96);
          if (v31 == v32)
          {
            v33 = *(v29 + 104);
            v34 = *(v30 + 104);
            if (v33 == v34)
            {
              if (*(v29 + 112) >= *(v30 + 112))
              {
                return 1;
              }
            }

            else if (v33 <= v34)
            {
              return 1;
            }
          }

          else if (v31 >= v32)
          {
            return 1;
          }

          *a2 = v29;
          *a3 = v30;
          v27 = a3 + 1;
          v26 = a2 + 1;
LABEL_45:
          v18 = v27;
          goto LABEL_46;
        }
      }

      else if (v11 <= v5)
      {
        goto LABEL_31;
      }
    }

    else if (v10 >= v6)
    {
      goto LABEL_31;
    }

    *a1 = v9;
    v26 = a1 + 1;
    *a3 = v4;
    v27 = a3 + 1;
    goto LABEL_45;
  }

LABEL_14:
  v12 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v13 = *(v12 + 96);
  v14 = *(v3 + 96);
  if (v13 == v14)
  {
    v15 = *(v12 + 104);
    v16 = *(v3 + 104);
    if (v15 == v16)
    {
      if (*(v12 + 112) >= *(v3 + 112))
      {
        return 0;
      }
    }

    else if (v15 <= v16)
    {
      return 0;
    }
  }

  else if (v13 >= v14)
  {
    return 0;
  }

  *a2 = v12;
  *a3 = v3;
  v18 = a2 + 1;
  v19 = a2[1];
  a2[1] = a3[1];
  a3[1] = v19;
  v20 = *a2;
  if (*a2)
  {
    v21 = *a1;
    if (*a1)
    {
      v22 = *(v20 + 96);
      v23 = *(v21 + 96);
      if (v22 != v23)
      {
        if (v22 >= v23)
        {
          return 1;
        }

        goto LABEL_42;
      }

      v24 = *(v20 + 104);
      v25 = *(v21 + 104);
      if (v24 == v25)
      {
        if (*(v20 + 112) >= *(v21 + 112))
        {
          return 1;
        }

        goto LABEL_42;
      }

      if (v24 > v25)
      {
LABEL_42:
        *a1 = v20;
        v26 = a1 + 1;
        *a2 = v21;
LABEL_46:
        v35 = *v26;
        *v26 = *v18;
        *v18 = v35;
      }
    }
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a2, a3);
  v9 = *a4;
  if (*a4)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = *(v9 + 96);
      v12 = *(v10 + 96);
      if (v11 == v12)
      {
        v13 = *(v9 + 104);
        v14 = *(v10 + 104);
        if (v13 == v14)
        {
          if (*(v9 + 112) >= *(v10 + 112))
          {
            return result;
          }
        }

        else if (v13 <= v14)
        {
          return result;
        }
      }

      else if (v11 >= v12)
      {
        return result;
      }

      *a3 = v9;
      *a4 = v10;
      v15 = a3[1];
      a3[1] = a4[1];
      a4[1] = v15;
      v16 = *a3;
      if (*a3)
      {
        v17 = *a2;
        if (*a2)
        {
          v18 = *(v16 + 96);
          v19 = *(v17 + 96);
          if (v18 == v19)
          {
            v20 = *(v16 + 104);
            v21 = *(v17 + 104);
            if (v20 == v21)
            {
              if (*(v16 + 112) >= *(v17 + 112))
              {
                return result;
              }
            }

            else if (v20 <= v21)
            {
              return result;
            }
          }

          else if (v18 >= v19)
          {
            return result;
          }

          *a2 = v16;
          *a3 = v17;
          v22 = a2[1];
          a2[1] = a3[1];
          a3[1] = v22;
          v23 = *a2;
          if (*a2)
          {
            v24 = *a1;
            if (*a1)
            {
              v25 = *(v23 + 96);
              v26 = *(v24 + 96);
              if (v25 == v26)
              {
                v27 = *(v23 + 104);
                v28 = *(v24 + 104);
                if (v27 == v28)
                {
                  if (*(v23 + 112) >= *(v24 + 112))
                  {
                    return result;
                  }
                }

                else if (v27 <= v28)
                {
                  return result;
                }
              }

              else if (v25 >= v26)
              {
                return result;
              }

              *a1 = v23;
              *a2 = v24;
              v29 = a1[1];
              a1[1] = a2[1];
              a2[1] = v29;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a2, a3, a4);
  v11 = *a5;
  if (*a5)
  {
    v12 = *a4;
    if (*a4)
    {
      v13 = *(v11 + 96);
      v14 = *(v12 + 96);
      if (v13 == v14)
      {
        v15 = *(v11 + 104);
        v16 = *(v12 + 104);
        if (v15 == v16)
        {
          if (*(v11 + 112) >= *(v12 + 112))
          {
            return result;
          }
        }

        else if (v15 <= v16)
        {
          return result;
        }
      }

      else if (v13 >= v14)
      {
        return result;
      }

      *a4 = v11;
      *a5 = v12;
      v17 = a4[1];
      a4[1] = a5[1];
      a5[1] = v17;
      v18 = *a4;
      if (*a4)
      {
        v19 = *a3;
        if (*a3)
        {
          v20 = *(v18 + 96);
          v21 = *(v19 + 96);
          if (v20 == v21)
          {
            v22 = *(v18 + 104);
            v23 = *(v19 + 104);
            if (v22 == v23)
            {
              if (*(v18 + 112) >= *(v19 + 112))
              {
                return result;
              }
            }

            else if (v22 <= v23)
            {
              return result;
            }
          }

          else if (v20 >= v21)
          {
            return result;
          }

          *a3 = v18;
          *a4 = v19;
          v24 = a3[1];
          a3[1] = a4[1];
          a4[1] = v24;
          v25 = *a3;
          if (*a3)
          {
            v26 = *a2;
            if (*a2)
            {
              v27 = *(v25 + 96);
              v28 = *(v26 + 96);
              if (v27 == v28)
              {
                v29 = *(v25 + 104);
                v30 = *(v26 + 104);
                if (v29 == v30)
                {
                  if (*(v25 + 112) >= *(v26 + 112))
                  {
                    return result;
                  }
                }

                else if (v29 <= v30)
                {
                  return result;
                }
              }

              else if (v27 >= v28)
              {
                return result;
              }

              *a2 = v25;
              *a3 = v26;
              v31 = a2[1];
              a2[1] = a3[1];
              a3[1] = v31;
              v32 = *a2;
              if (*a2)
              {
                v33 = *a1;
                if (*a1)
                {
                  v34 = *(v32 + 96);
                  v35 = *(v33 + 96);
                  if (v34 == v35)
                  {
                    v36 = *(v32 + 104);
                    v37 = *(v33 + 104);
                    if (v36 == v37)
                    {
                      if (*(v32 + 112) >= *(v33 + 112))
                      {
                        return result;
                      }
                    }

                    else if (v36 <= v37)
                    {
                      return result;
                    }
                  }

                  else if (v34 >= v35)
                  {
                    return result;
                  }

                  *a1 = v32;
                  *a2 = v33;
                  v38 = a1[1];
                  a1[1] = a2[1];
                  a2[1] = v38;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[2];
        if (v8)
        {
          v9 = *v7;
          if (*v7)
          {
            v10 = *(v8 + 96);
            v11 = *(v9 + 96);
            if (v10 == v11)
            {
              v12 = *(v8 + 104);
              v13 = *(v9 + 104);
              if (v12 == v13)
              {
                if (*(v8 + 112) < *(v9 + 112))
                {
                  goto LABEL_13;
                }
              }

              else if (v12 > v13)
              {
LABEL_13:
                v14 = v7[3];
                v15 = v5;
                *v6 = 0;
                v6[1] = 0;
                while (1)
                {
                  v16 = (a1 + v15);
                  v17 = *(a1 + v15 + 8);
                  *v16 = 0;
                  v16[1] = 0;
                  v18 = *(a1 + v15 + 24);
                  v16[2] = v9;
                  v16[3] = v17;
                  if (v18)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
                  }

                  if (!v15)
                  {
                    break;
                  }

                  v19 = (a1 + v15);
                  v9 = *(a1 + v15 - 16);
                  if (!v9)
                  {
                    goto LABEL_27;
                  }

                  v20 = *(v8 + 96);
                  v21 = *(v9 + 96);
                  if (v20 == v21)
                  {
                    v22 = *(v8 + 104);
                    v23 = *(v9 + 104);
                    if (v22 == v23)
                    {
                      if (*(v8 + 112) >= *(v9 + 112))
                      {
                        goto LABEL_27;
                      }
                    }

                    else if (v22 <= v23)
                    {
                      goto LABEL_27;
                    }
                  }

                  else if (v20 >= v21)
                  {
                    goto LABEL_27;
                  }

                  v15 -= 16;
                }

                v19 = a1;
LABEL_27:
                v24 = v19[1];
                *v19 = v8;
                v19[1] = v14;
                if (v24)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
                }
              }
            }

            else if (v10 < v11)
            {
              goto LABEL_13;
            }
          }
        }

        v4 = v6 + 2;
        v5 += 16;
      }

      while (v6 + 2 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = (a1 + 1);
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = v6[2];
        if (v7)
        {
          v8 = *v6;
          if (*v6)
          {
            v9 = *(v7 + 96);
            v10 = *(v8 + 96);
            if (v9 == v10)
            {
              v11 = *(v7 + 104);
              v12 = *(v8 + 104);
              if (v11 == v12)
              {
                if (*(v7 + 112) < *(v8 + 112))
                {
                  goto LABEL_13;
                }
              }

              else if (v11 > v12)
              {
LABEL_13:
                v13 = v6[3];
                v14 = v5;
                *v3 = 0;
                v3[1] = 0;
                while (1)
                {
                  v15 = *v14;
                  *(v14 - 1) = 0;
                  *v14 = 0;
                  v16 = v14[2];
                  v14[1] = v8;
                  v14[2] = v15;
                  if (v16)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
                  }

                  v8 = *(v14 - 3);
                  if (!v8)
                  {
                    break;
                  }

                  v17 = *(v7 + 96);
                  v18 = *(v8 + 96);
                  if (v17 == v18)
                  {
                    v19 = *(v7 + 104);
                    v20 = *(v8 + 104);
                    if (v19 == v20)
                    {
                      if (*(v7 + 112) >= *(v8 + 112))
                      {
                        break;
                      }
                    }

                    else if (v19 <= v20)
                    {
                      break;
                    }
                  }

                  else if (v17 >= v18)
                  {
                    break;
                  }

                  v14 -= 2;
                }

                v21 = *v14;
                *(v14 - 1) = v7;
                *v14 = v13;
                if (v21)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                }
              }
            }

            else if (v9 < v10)
            {
              goto LABEL_13;
            }
          }
        }

        v4 = v3 + 2;
        v5 += 2;
      }

      while (v3 + 2 != a2);
    }
  }
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_less_than_range &>(__int128 *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v2)
  {
    v3 = *(a2 - 2);
    if (v3)
    {
      v4 = *(v2 + 96);
      v5 = *(v2 + 104);
      v6 = *(v3 + 96);
      if (v4 == v6)
      {
        v7 = *(v3 + 104);
        if (v5 == v7)
        {
          if (*(v2 + 112) >= *(v3 + 112))
          {
            goto LABEL_19;
          }
        }

        else if (v5 <= v7)
        {
          goto LABEL_19;
        }
      }

      else if (v4 >= v6)
      {
        goto LABEL_19;
      }

      for (i = (a1 + 1); ; i += 2)
      {
        v9 = *i;
        if (*i)
        {
          v10 = *(v9 + 96);
          if (v4 == v10)
          {
            v11 = *(v9 + 104);
            if (v5 == v11)
            {
              if (*(v2 + 112) < *(v9 + 112))
              {
                goto LABEL_31;
              }
            }

            else if (v5 > v11)
            {
              goto LABEL_31;
            }
          }

          else if (v4 < v10)
          {
            goto LABEL_31;
          }
        }
      }
    }
  }

LABEL_19:
  for (i = (a1 + 1); i < a2; i += 2)
  {
    if (v2)
    {
      v12 = *i;
      if (*i)
      {
        v13 = *(v2 + 96);
        v14 = *(v12 + 96);
        if (v13 == v14)
        {
          v15 = *(v2 + 104);
          v16 = *(v12 + 104);
          if (v15 == v16)
          {
            if (*(v2 + 112) < *(v12 + 112))
            {
              break;
            }
          }

          else if (v15 > v16)
          {
            break;
          }
        }

        else if (v13 < v14)
        {
          break;
        }
      }
    }
  }

LABEL_31:
  if (i < a2)
  {
    a2 -= 2;
    if (v2)
    {
      v17 = *a2;
      if (*a2)
      {
        v18 = *(v2 + 96);
        v19 = *(v2 + 104);
        do
        {
          v20 = *(v17 + 96);
          if (v18 == v20)
          {
            v21 = *(v17 + 104);
            if (v19 == v21)
            {
              if (*(v2 + 112) >= *(v17 + 112))
              {
                break;
              }
            }

            else if (v19 <= v21)
            {
              break;
            }
          }

          else if (v18 >= v20)
          {
            break;
          }

          v22 = *(a2 - 2);
          a2 -= 2;
          v17 = v22;
        }

        while (v22);
      }
    }
  }

  if (i < a2)
  {
    v23 = *i;
    v24 = *a2;
    do
    {
      *i = v24;
      *a2 = v23;
      v25 = i[1];
      i[1] = a2[1];
      a2[1] = v25;
      i += 2;
      v26 = *(v2 + 96);
      v27 = *(v2 + 104);
      if (!v2)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v23 = *i;
        if (!*i)
        {
          goto LABEL_54;
        }

        v28 = *(v23 + 96);
        if (v26 != v28)
        {
          break;
        }

        v29 = *(v23 + 104);
        if (v27 == v29)
        {
          if (*(v2 + 112) < *(v23 + 112))
          {
            goto LABEL_59;
          }
        }

        else if (v27 > v29)
        {
          goto LABEL_59;
        }

        do
        {
LABEL_54:
          i += 2;
        }

        while (!v2);
      }

      if (v26 >= v28)
      {
        goto LABEL_54;
      }

LABEL_59:
      while (1)
      {
        v30 = *(a2 - 2);
        a2 -= 2;
        v24 = v30;
        if (!v30)
        {
          break;
        }

        v31 = *(v24 + 96);
        if (v26 == v31)
        {
          v32 = *(v24 + 104);
          if (v27 == v32)
          {
            if (*(v2 + 112) >= *(v24 + 112))
            {
              break;
            }
          }

          else if (v27 <= v32)
          {
            break;
          }
        }

        else if (v26 >= v31)
        {
          break;
        }
      }
    }

    while (i < a2);
  }

  v33 = (i - 2);
  if (i - 2 != a1)
  {
    v34 = *v33;
    *v33 = 0;
    *(i - 1) = 0;
    v35 = *(a1 + 1);
    *a1 = v34;
    if (v35)
    {
      v38 = v2;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      v2 = v38;
    }
  }

  v36 = *(i - 1);
  *(i - 1) = v2;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_less_than_range &>(__int128 *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = (a1 + 1);
  v4 = *(a1 + 2);
  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v38 = 0;
  v39 = *(v3 + 96);
  v40 = *(v3 + 104);
  while (1)
  {
    v41 = *(v4 + 96);
    if (v41 != v39)
    {
      if (v41 >= v39)
      {
        break;
      }

      goto LABEL_72;
    }

    v42 = *(v4 + 104);
    if (v42 == v40)
    {
      if (*(v4 + 112) >= *(v3 + 112))
      {
        break;
      }

      goto LABEL_72;
    }

    if (v42 <= v40)
    {
      break;
    }

LABEL_72:
    v43 = v5[2];
    v5 += 2;
    v4 = v43;
    v38 -= 16;
    if (!v43)
    {
      goto LABEL_75;
    }
  }

  if (v38)
  {
LABEL_75:
    v2 = a2 - 2;
    v44 = *(v3 + 96);
    v45 = *(v3 + 104);
    while (1)
    {
      v46 = *v2;
      if (*v2)
      {
        v47 = *(v46 + 96);
        if (v47 == v44)
        {
          v48 = *(v46 + 104);
          if (v48 == v45)
          {
            if (*(v46 + 112) < *(v3 + 112))
            {
              goto LABEL_30;
            }
          }

          else if (v48 > v45)
          {
            goto LABEL_30;
          }
        }

        else if (v47 < v44)
        {
          goto LABEL_30;
        }
      }

      v2 -= 2;
    }
  }

LABEL_6:
  while (v5 < v2)
  {
    while (1)
    {
      v8 = *(v2 - 2);
      v2 -= 2;
      v7 = v8;
      if (!v8 || v3 == 0)
      {
        break;
      }

      v10 = *(v7 + 96);
      v11 = *(v3 + 96);
      if (v10 == v11)
      {
        v12 = *(v7 + 104);
        v13 = *(v3 + 104);
        if (v12 == v13)
        {
          if (*(v7 + 112) < *(v3 + 112) || v5 >= v2)
          {
            goto LABEL_30;
          }
        }

        else if (v12 > v13 || v5 >= v2)
        {
          goto LABEL_30;
        }
      }

      else if (v10 < v11 || v5 >= v2)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  v17 = v5;
  if (v5 < v2)
  {
    v18 = *v2;
    v17 = v5;
    v19 = v2;
    while (1)
    {
      *v17 = v18;
      *v19 = v4;
      v20 = v17[1];
      v17[1] = v19[1];
      v19[1] = v20;
      v21 = v17[2];
      v17 += 2;
      v4 = v21;
      if (v21)
      {
        v22 = v3 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = *(v3 + 96);
        v24 = *(v3 + 104);
        do
        {
          v25 = *(v4 + 96);
          if (v25 == v23)
          {
            v26 = *(v4 + 104);
            if (v26 == v24)
            {
              if (*(v4 + 112) >= *(v3 + 112))
              {
                break;
              }
            }

            else if (v26 <= v24)
            {
              break;
            }
          }

          else if (v25 >= v23)
          {
            break;
          }

          v27 = v17[2];
          v17 += 2;
          v4 = v27;
        }

        while (v27);
      }

      v19 -= 2;
      v28 = *(v3 + 96);
      v29 = *(v3 + 104);
      while (1)
      {
        v18 = *v19;
        if (*v19)
        {
          v30 = v3 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          goto LABEL_57;
        }

        v31 = *(v18 + 96);
        if (v31 == v28)
        {
          break;
        }

        if (v31 < v28)
        {
          goto LABEL_58;
        }

LABEL_57:
        v19 -= 2;
      }

      v32 = *(v18 + 104);
      if (v32 == v29)
      {
        break;
      }

      if (v32 <= v29)
      {
        goto LABEL_57;
      }

LABEL_58:
      if (v17 >= v19)
      {
        goto LABEL_59;
      }
    }

    if (*(v18 + 112) < *(v3 + 112))
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_59:
  v33 = (v17 - 2);
  if (v17 - 2 != a1)
  {
    v34 = *v33;
    *v33 = 0;
    *(v17 - 1) = 0;
    v35 = *(a1 + 1);
    *a1 = v34;
    if (v35)
    {
      v49 = v3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      v3 = v49;
    }
  }

  v36 = *(v17 - 1);
  *(v17 - 1) = v3;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  return v17 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
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
      if (!v5)
      {
        return 1;
      }

      v6 = *a1;
      if (!*a1)
      {
        return 1;
      }

      v7 = *(v5 + 96);
      v8 = *(v6 + 96);
      if (v7 == v8)
      {
        v9 = *(v5 + 104);
        v10 = *(v6 + 104);
        if (v9 == v10)
        {
          if (*(v5 + 112) < *(v6 + 112))
          {
            goto LABEL_51;
          }
        }

        else if (v9 > v10)
        {
LABEL_51:
          *a1 = v5;
          *(a2 - 2) = v6;
          v33 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v33;
        }
      }

      else if (v7 < v8)
      {
        goto LABEL_51;
      }

      return 1;
    }
  }

  v11 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a1 + 4);
  v12 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  for (i = 32; ; i += 16)
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_43;
    }

    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_43;
    }

    v17 = *(v15 + 96);
    v18 = *(v16 + 96);
    if (v17 == v18)
    {
      break;
    }

    if (v17 < v18)
    {
      goto LABEL_26;
    }

LABEL_43:
    v11 = v12;
    v12 += 2;
    if (v12 == a2)
    {
      return 1;
    }
  }

  v19 = *(v15 + 104);
  v20 = *(v16 + 104);
  if (v19 == v20)
  {
    if (*(v15 + 112) < *(v16 + 112))
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  if (v19 <= v20)
  {
    goto LABEL_43;
  }

LABEL_26:
  v21 = v12[1];
  v22 = i;
  *v12 = 0;
  v12[1] = 0;
  while (1)
  {
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 8);
    *v23 = 0;
    v23[1] = 0;
    v25 = *(a1 + v22 + 24);
    v23[2] = v16;
    v23[3] = v24;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (!v22)
    {
      break;
    }

    v26 = (a1 + v22);
    v16 = *(a1 + v22 - 16);
    if (!v16)
    {
      goto LABEL_40;
    }

    v27 = *(v15 + 96);
    v28 = *(v16 + 96);
    if (v27 == v28)
    {
      v29 = *(v15 + 104);
      v30 = *(v16 + 104);
      if (v29 == v30)
      {
        if (*(v15 + 112) >= *(v16 + 112))
        {
          goto LABEL_40;
        }
      }

      else if (v29 <= v30)
      {
        goto LABEL_40;
      }
    }

    else if (v27 >= v28)
    {
      goto LABEL_40;
    }

    v22 -= 16;
  }

  v26 = a1;
LABEL_40:
  v31 = v26[1];
  *v26 = v15;
  v26[1] = v21;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (++v13 != 8)
  {
    goto LABEL_43;
  }

  return v12 + 2 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      while (1)
      {
        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_15;
        }

        v14 = *a1;
        if (!*a1)
        {
          goto LABEL_15;
        }

        v15 = *(v13 + 96);
        v16 = *(v14 + 96);
        if (v15 == v16)
        {
          break;
        }

        if (v15 < v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v12 += 2;
        if (v12 == a3)
        {
          goto LABEL_19;
        }
      }

      v17 = *(v13 + 104);
      v18 = *(v14 + 104);
      if (v17 == v18)
      {
        if (*(v13 + 112) >= *(v14 + 112))
        {
          goto LABEL_15;
        }
      }

      else if (v17 <= v18)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v12 = v14;
      *a1 = v13;
      v19 = v12[1];
      v12[1] = a1[1];
      a1[1] = v19;
      std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(a1, a4, v8, a1);
      goto LABEL_15;
    }

LABEL_19:
    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range,std::shared_ptr<NL::Entity> *>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = a4 - a1;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = v6 >> 3;
  v10 = (v6 >> 3) + 1;
  v11 = (a1 + 16 * v10);
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v14 = v11 + 2;
    v13 = *v11;
    if (!*v11)
    {
LABEL_22:
      v25 = *a4;
      goto LABEL_23;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_13;
    }

    v16 = *(v13 + 96);
    v17 = *(v15 + 96);
    if (v16 != v17)
    {
      if (v16 >= v17)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v18 = *(v13 + 104);
    v19 = *(v15 + 104);
    if (v18 == v19)
    {
      if (*(v13 + 112) >= *(v15 + 112))
      {
        goto LABEL_12;
      }

LABEL_11:
      v11 += 2;
      v10 = v12;
      goto LABEL_12;
    }

    if (v18 > v19)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v13 = *v11;
  if (!*v11)
  {
    goto LABEL_22;
  }

LABEL_13:
  v20 = *a4;
  if (*a4)
  {
    v21 = *(v13 + 96);
    v22 = *(v20 + 96);
    if (v21 == v22)
    {
      v23 = *(v13 + 104);
      v24 = *(v20 + 104);
      if (v23 == v24)
      {
        if (*(v13 + 112) < *(v20 + 112))
        {
          return;
        }
      }

      else if (v23 > v24)
      {
        return;
      }
    }

    else if (v21 < v22)
    {
      return;
    }

    goto LABEL_22;
  }

  v25 = 0;
LABEL_23:
  v26 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v27 = *v11;
  while (1)
  {
    v28 = v11;
    v29 = v11[1];
    *v28 = 0;
    v28[1] = 0;
    v30 = a4[1];
    *a4 = v27;
    a4[1] = v29;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v7 < v10)
    {
      break;
    }

    v31 = 2 * v10;
    v10 = (2 * v10) | 1;
    v11 = (a1 + 16 * v10);
    v32 = v31 + 2;
    if (v31 + 2 >= a3)
    {
      goto LABEL_36;
    }

    v27 = 0;
    v34 = v11 + 2;
    v33 = *v11;
    a4 = v28;
    if (*v11)
    {
      v35 = *v34;
      if (*v34)
      {
        v36 = *(v33 + 96);
        v37 = *(v35 + 96);
        if (v36 == v37)
        {
          v38 = *(v33 + 104);
          v39 = *(v35 + 104);
          if (v38 == v39)
          {
            if (*(v33 + 112) >= *(v35 + 112))
            {
              goto LABEL_36;
            }
          }

          else if (v38 <= v39)
          {
            goto LABEL_36;
          }

LABEL_35:
          v11 += 2;
          v10 = v32;
          goto LABEL_36;
        }

        if (v36 < v37)
        {
          goto LABEL_35;
        }

LABEL_36:
        v27 = 0;
        v33 = *v11;
        a4 = v28;
        if (*v11)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_37:
        v27 = v33;
        a4 = v28;
        if (v25)
        {
          v40 = *(v33 + 96);
          v41 = *(v25 + 96);
          v42 = v40 < v41;
          if (v40 == v41)
          {
            v43 = *(v33 + 104);
            v44 = *(v25 + 104);
            v45 = v43 <= v44;
            if (v43 == v44)
            {
              v27 = v33;
              a4 = v28;
              if (*(v33 + 112) < *(v25 + 112))
              {
                break;
              }
            }

            else
            {
              v27 = v33;
              a4 = v28;
              if (!v45)
              {
                break;
              }
            }
          }

          else
          {
            v27 = v33;
            a4 = v28;
            if (v42)
            {
              break;
            }
          }
        }
      }
    }
  }

  v46 = v28[1];
  *v28 = v25;
  v28[1] = v26;
  if (v46)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_22CD56F6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[2 * v4];
    v7 = v6 + 2;
    v8 = 2 * v4;
    v4 = (2 * v4) | 1;
    v9 = v8 + 2;
    if (v9 < a3)
    {
      v10 = *v7;
      if (*v7)
      {
        v13 = v6[4];
        v11 = v6 + 4;
        v12 = v13;
        if (v13)
        {
          v14 = *(v10 + 96);
          v15 = *(v12 + 96);
          if (v14 != v15)
          {
            if (v14 >= v15)
            {
              goto LABEL_11;
            }

LABEL_10:
            v7 = v11;
            v4 = v9;
            goto LABEL_11;
          }

          v16 = *(v10 + 104);
          v17 = *(v12 + 104);
          if (v16 == v17)
          {
            if (*(v10 + 112) < *(v12 + 112))
            {
              goto LABEL_10;
            }
          }

          else if (v16 > v17)
          {
            goto LABEL_10;
          }
        }
      }
    }

LABEL_11:
    v18 = *v7;
    *v7 = 0;
    v7[1] = 0;
    v19 = a1[1];
    *a1 = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,entity_less_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 16 * (v4 >> 1));
    v8 = *v7;
    if (*v7)
    {
      v9 = (a2 - 16);
      v10 = *(a2 - 16);
      if (v10)
      {
        v11 = *(v8 + 96);
        v12 = *(v10 + 96);
        if (v11 == v12)
        {
          v13 = *(v8 + 104);
          v14 = *(v10 + 104);
          if (v13 == v14)
          {
            if (*(v8 + 112) >= *(v10 + 112))
            {
              return;
            }
          }

          else if (v13 <= v14)
          {
            return;
          }
        }

        else if (v11 >= v12)
        {
          return;
        }

        v15 = *(a2 - 8);
        *v9 = 0;
        *(a2 - 8) = 0;
        v16 = *v7;
        while (1)
        {
          v17 = v7;
          v18 = v7[1];
          *v17 = 0;
          v17[1] = 0;
          v19 = v9[1];
          *v9 = v16;
          v9[1] = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (!v6)
          {
            break;
          }

          v6 = (v6 - 1) >> 1;
          v7 = (a1 + 16 * v6);
          v16 = *v7;
          if (!*v7)
          {
            break;
          }

          v20 = *(v16 + 96);
          v21 = *(v10 + 96);
          v22 = v20 < v21;
          if (v20 == v21)
          {
            v23 = *(v16 + 104);
            v24 = *(v10 + 104);
            v25 = v23 <= v24;
            if (v23 == v24)
            {
              v9 = v17;
              if (*(v16 + 112) >= *(v10 + 112))
              {
                break;
              }
            }

            else
            {
              v9 = v17;
              if (v25)
              {
                break;
              }
            }
          }

          else
          {
            v9 = v17;
            if (!v22)
            {
              break;
            }
          }
        }

        v26 = v17[1];
        *v17 = v10;
        v17[1] = v15;
        if (v26)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::shared_ptr<NL::Entity> *>,entity_greater_than_range>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz((a2 - a1) >> 4);
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,false>(a1, a2, a3, v4, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, v9 + 2, a2 - 2);
        return;
      case 4uLL:

        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, v9 + 2, v9 + 4, a2 - 2);
        return;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
        return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v9 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_24;
      }
    }

    v16 = *(v9 - 2);
    if (!v16 || (v17 = *v9) == 0)
    {
LABEL_28:
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_greater_than_range &>(v9, a2);
      goto LABEL_29;
    }

    v18 = *(v16 + 96);
    v19 = *(v17 + 96);
    v20 = v18 < v19;
    if (v18 == v19 && (v21 = *(v16 + 104), v22 = *(v17 + 104), v20 = v21 < v22, v21 == v22))
    {
      if (*(v16 + 112) >= *(v17 + 112))
      {
        goto LABEL_28;
      }
    }

    else if (!v20)
    {
      goto LABEL_28;
    }

LABEL_24:
    v23 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_greater_than_range &>(v9, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(v9, v23);
    v9 = v23 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(v23 + 2, a2))
    {
      a4 = -v11;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_27:
      std::__introsort<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,false>(a1, v23, a3, -v11, a5 & 1);
      v9 = v23 + 2;
LABEL_29:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v26 = *(a2 - 2);
  if (v26)
  {
    v27 = *v9;
    if (*v9)
    {
      v28 = *(v26 + 96);
      v29 = *(v27 + 96);
      v30 = v28 < v29;
      if (v28 == v29)
      {
        v31 = *(v26 + 104);
        v32 = *(v27 + 104);
        v30 = v31 < v32;
        if (v31 == v32)
        {
          if (*(v26 + 112) >= *(v27 + 112))
          {
            return;
          }

LABEL_60:
          *v9 = v26;
          *(a2 - 2) = v27;
          v33 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v33;
          return;
        }
      }

      if (v30)
      {
        goto LABEL_60;
      }
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);
    v7 = *(v4 + 96);
    v8 = v6 < v7;
    if (v6 == v7)
    {
      v9 = *(v4 + 104);
      v8 = v5 < v9;
      if (v5 == v9)
      {
        if (*(v3 + 112) >= *(v4 + 112))
        {
          goto LABEL_6;
        }

LABEL_13:
        v17 = *a3;
        if (!*a3)
        {
          goto LABEL_17;
        }

        v18 = *(v17 + 96);
        v19 = v18 < v6;
        if (v18 == v6 && (v20 = *(v17 + 104), v19 = v20 < v5, v20 == v5))
        {
          if (*(v17 + 112) >= *(v3 + 112))
          {
            goto LABEL_17;
          }
        }

        else if (!v19)
        {
LABEL_17:
          *a1 = v3;
          *a2 = v4;
          v21 = a1[1];
          a1[1] = a2[1];
          a2[1] = v21;
          v22 = *a3;
          if (!*a3)
          {
            return 1;
          }

          v23 = *a2;
          if (!*a2)
          {
            return 1;
          }

          v24 = *(v22 + 96);
          v25 = *(v23 + 96);
          v26 = v24 < v25;
          if (v24 == v25 && (v27 = *(v22 + 104), v28 = *(v23 + 104), v26 = v27 < v28, v27 == v28))
          {
            if (*(v22 + 112) >= *(v23 + 112))
            {
              return 1;
            }
          }

          else if (!v26)
          {
            return 1;
          }

          *a2 = v22;
          *a3 = v23;
          v39 = a3 + 1;
          v38 = a2 + 1;
          goto LABEL_37;
        }

        *a1 = v17;
        v38 = a1 + 1;
        *a3 = v4;
        v39 = a3 + 1;
LABEL_37:
        v29 = v39;
LABEL_41:
        v40 = *v38;
        *v38 = *v29;
        *v29 = v40;
        return 1;
      }
    }

    if (v8)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  v10 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v11 = *(v10 + 96);
  v12 = *(v3 + 96);
  v13 = v11 < v12;
  if (v11 == v12 && (v14 = *(v10 + 104), v15 = *(v3 + 104), v13 = v14 < v15, v14 == v15))
  {
    if (*(v10 + 112) >= *(v3 + 112))
    {
      return 0;
    }
  }

  else if (!v13)
  {
    return 0;
  }

  *a2 = v10;
  *a3 = v3;
  v29 = a2 + 1;
  v30 = a2[1];
  a2[1] = a3[1];
  a3[1] = v30;
  v31 = *a2;
  if (*a2)
  {
    v32 = *a1;
    if (*a1)
    {
      v33 = *(v31 + 96);
      v34 = *(v32 + 96);
      v35 = v33 < v34;
      if (v33 == v34 && (v36 = *(v31 + 104), v37 = *(v32 + 104), v35 = v36 < v37, v36 == v37))
      {
        if (*(v31 + 112) >= *(v32 + 112))
        {
          return 1;
        }
      }

      else if (!v35)
      {
        return 1;
      }

      *a1 = v31;
      v38 = a1 + 1;
      *a2 = v32;
      goto LABEL_41;
    }
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a2, a3);
  v9 = *a4;
  if (*a4)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = *(v9 + 96);
      v12 = *(v10 + 96);
      v13 = v11 < v12;
      if (v11 == v12 && (v14 = *(v9 + 104), v15 = *(v10 + 104), v13 = v14 < v15, v14 == v15))
      {
        if (*(v9 + 112) >= *(v10 + 112))
        {
          return result;
        }
      }

      else if (!v13)
      {
        return result;
      }

      *a3 = v9;
      *a4 = v10;
      v16 = a3[1];
      a3[1] = a4[1];
      a4[1] = v16;
      v17 = *a3;
      if (*a3)
      {
        v18 = *a2;
        if (*a2)
        {
          v19 = *(v17 + 96);
          v20 = *(v18 + 96);
          v21 = v19 < v20;
          if (v19 == v20 && (v22 = *(v17 + 104), v23 = *(v18 + 104), v21 = v22 < v23, v22 == v23))
          {
            if (*(v17 + 112) >= *(v18 + 112))
            {
              return result;
            }
          }

          else if (!v21)
          {
            return result;
          }

          *a2 = v17;
          *a3 = v18;
          v24 = a2[1];
          a2[1] = a3[1];
          a3[1] = v24;
          v25 = *a2;
          if (*a2)
          {
            v26 = *a1;
            if (*a1)
            {
              v27 = *(v25 + 96);
              v28 = *(v26 + 96);
              v29 = v27 < v28;
              if (v27 == v28)
              {
                v30 = *(v25 + 104);
                v31 = *(v26 + 104);
                v29 = v30 < v31;
                if (v30 == v31)
                {
                  if (*(v25 + 112) >= *(v26 + 112))
                  {
                    return result;
                  }

LABEL_25:
                  *a1 = v25;
                  *a2 = v26;
                  v32 = a1[1];
                  a1[1] = a2[1];
                  a2[1] = v32;
                  return result;
                }
              }

              if (v29)
              {
                goto LABEL_25;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a2, a3, a4);
  v11 = *a5;
  if (*a5)
  {
    v12 = *a4;
    if (*a4)
    {
      v13 = *(v11 + 96);
      v14 = *(v12 + 96);
      v15 = v13 < v14;
      if (v13 == v14 && (v16 = *(v11 + 104), v17 = *(v12 + 104), v15 = v16 < v17, v16 == v17))
      {
        if (*(v11 + 112) >= *(v12 + 112))
        {
          return result;
        }
      }

      else if (!v15)
      {
        return result;
      }

      *a4 = v11;
      *a5 = v12;
      v18 = a4[1];
      a4[1] = a5[1];
      a5[1] = v18;
      v19 = *a4;
      if (*a4)
      {
        v20 = *a3;
        if (*a3)
        {
          v21 = *(v19 + 96);
          v22 = *(v20 + 96);
          v23 = v21 < v22;
          if (v21 == v22 && (v24 = *(v19 + 104), v25 = *(v20 + 104), v23 = v24 < v25, v24 == v25))
          {
            if (*(v19 + 112) >= *(v20 + 112))
            {
              return result;
            }
          }

          else if (!v23)
          {
            return result;
          }

          *a3 = v19;
          *a4 = v20;
          v26 = a3[1];
          a3[1] = a4[1];
          a4[1] = v26;
          v27 = *a3;
          if (*a3)
          {
            v28 = *a2;
            if (*a2)
            {
              v29 = *(v27 + 96);
              v30 = *(v28 + 96);
              v31 = v29 < v30;
              if (v29 == v30 && (v32 = *(v27 + 104), v33 = *(v28 + 104), v31 = v32 < v33, v32 == v33))
              {
                if (*(v27 + 112) >= *(v28 + 112))
                {
                  return result;
                }
              }

              else if (!v31)
              {
                return result;
              }

              *a2 = v27;
              *a3 = v28;
              v34 = a2[1];
              a2[1] = a3[1];
              a3[1] = v34;
              v35 = *a2;
              if (*a2)
              {
                v36 = *a1;
                if (*a1)
                {
                  v37 = *(v35 + 96);
                  v38 = *(v36 + 96);
                  v39 = v37 < v38;
                  if (v37 == v38)
                  {
                    v40 = *(v35 + 104);
                    v41 = *(v36 + 104);
                    v39 = v40 < v41;
                    if (v40 == v41)
                    {
                      if (*(v35 + 112) >= *(v36 + 112))
                      {
                        return result;
                      }

LABEL_33:
                      *a1 = v35;
                      *a2 = v36;
                      v42 = a1[1];
                      a1[1] = a2[1];
                      a2[1] = v42;
                      return result;
                    }
                  }

                  if (v39)
                  {
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[2];
        if (v8)
        {
          v9 = *v7;
          if (*v7)
          {
            v10 = *(v8 + 96);
            v11 = *(v9 + 96);
            v12 = v10 < v11;
            if (v10 == v11 && (v13 = *(v8 + 104), v14 = *(v9 + 104), v12 = v13 < v14, v13 == v14))
            {
              if (*(v8 + 112) < *(v9 + 112))
              {
                goto LABEL_12;
              }
            }

            else if (v12)
            {
LABEL_12:
              v15 = v7[3];
              v16 = v5;
              *v6 = 0;
              v6[1] = 0;
              while (1)
              {
                v17 = (a1 + v16);
                v18 = *(a1 + v16 + 8);
                *v17 = 0;
                v17[1] = 0;
                v19 = *(a1 + v16 + 24);
                v17[2] = v9;
                v17[3] = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                }

                if (!v16)
                {
                  break;
                }

                v20 = (a1 + v16);
                v9 = *(a1 + v16 - 16);
                if (!v9)
                {
                  goto LABEL_25;
                }

                v21 = *(v8 + 96);
                v22 = *(v9 + 96);
                v23 = v21 < v22;
                if (v21 == v22 && (v24 = *(v8 + 104), v25 = *(v9 + 104), v23 = v24 < v25, v24 == v25))
                {
                  if (*(v8 + 112) >= *(v9 + 112))
                  {
                    goto LABEL_25;
                  }
                }

                else if (!v23)
                {
                  goto LABEL_25;
                }

                v16 -= 16;
              }

              v20 = a1;
LABEL_25:
              v26 = v20[1];
              *v20 = v8;
              v20[1] = v15;
              if (v26)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v26);
              }
            }
          }
        }

        v4 = v6 + 2;
        v5 += 16;
      }

      while (v6 + 2 != a2);
    }
  }
}