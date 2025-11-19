void sub_10029A3EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 80);
  v6 = *(a1 + 152);
  *&v125[0] = a2;
  v7 = *(v4 + 672);
  if (v7)
  {
    v8 = sub_100095E50(v7, v125);
    *v8 = v5;
    v8[1] = v6;
    v6 = *(a1 + 152);
  }

  llvm::raw_ostream::indent(*(a1 + 16), v6);
  v9 = *(a2 + 36);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = *(a1 + 24);
  v11 = *(v10 + 368);
  if (v11)
  {
    v12 = *(v10 + 352);
    v13 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v12 + 32 * v13);
    if (v14 == a2)
    {
LABEL_6:
      if (v13 != v11)
      {
        v15 = v12 + 32 * v13;
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = *(v15 + 8);
          v124 = *(v15 + 16);
          if (v16 != 1)
          {
            v18 = v16 - 1;
            v19 = *(a1 + 16);
            v20 = v17[1] - *v17;
            v21 = sub_1000D2F64(v10);
            sub_1000BF87C(v21, v22, v23, v19);
            if (v20 >= 2)
            {
              v24 = sub_1000D2E88(*(a1 + 16));
              if (v94)
              {
                v26 = llvm::raw_ostream::write(v24, 58);
              }

              else
              {
                v26 = sub_1000D2EA0(v24, v25);
                *v27 = 58;
              }

              llvm::raw_ostream::operator<<(v26, v20);
            }

            if (v18 != 1)
            {
              v28 = v18 - 1;
              v29 = &_mh_execute_header;
              do
              {
                sub_1000D2E5C();
                if (!v31 && v94)
                {
                  *v30 = 8236;
                  sub_1000D2E4C();
                }

                else
                {
                  llvm::raw_ostream::write(v19, ", ", 2uLL);
                }

                v32 = *(v17 + (v29 >> 30) + 4) - *(v17 + (v29 >> 30));
                v33 = *(a1 + 16);
                v34 = sub_1000D2F64(*(a1 + 24));
                sub_1000BF87C(v34, v35, v36, v37);
                if (v32 >= 2)
                {
                  v38 = sub_1000D2E88(*(a1 + 16));
                  if (v94)
                  {
                    v40 = llvm::raw_ostream::write(v38, 58);
                  }

                  else
                  {
                    v40 = sub_1000D2EA0(v38, v39);
                    *v41 = 58;
                  }

                  llvm::raw_ostream::operator<<(v40, v32);
                }

                v29 = (&_mh_execute_header + v29);
                --v28;
              }

              while (v28);
            }
          }

          sub_1000D2E94();
          sub_1000D2E7C();
          if (!v31 && v94)
          {
            sub_1000D2EAC(v42, v43);
          }

          else
          {
            llvm::raw_ostream::write(v42, ", ", 2uLL);
          }

          v9 -= v17[v124 - 1];
          v44 = *(a1 + 16);
          v45 = sub_1000D2F64(*(a1 + 24));
          sub_1000BF87C(v45, v46, v47, v48);
          if (v9 < 2)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }
    }

    else
    {
      while (v14 != -4096)
      {
        sub_1000D2EC0();
        v14 = *(v12 + v49);
        if (v14 == a2)
        {
          goto LABEL_6;
        }
      }
    }
  }

  v50 = *(a1 + 16);
  v51 = sub_1000D2F64(v10);
  sub_1000BF87C(v51, v52, v53, v54);
  if (v9 != 1)
  {
LABEL_34:
    v55 = sub_1000D2E88(*(a1 + 16));
    if (v94)
    {
      v57 = llvm::raw_ostream::write(v55, 58);
    }

    else
    {
      v57 = sub_1000D2EA0(v55, v56);
      *v58 = 58;
    }

    llvm::raw_ostream::operator<<(v57, v9);
  }

LABEL_38:
  v59 = sub_1000D2E94();
  if ((v61 - v60) > 2)
  {
    *(v60 + 2) = 32;
    sub_1000D2F44(v59, v60);
  }

  else
  {
    llvm::raw_ostream::write(v59, " = ", 3uLL);
  }

LABEL_41:
  (*(*a1 + 208))(a1, a2);
  v62 = *(a1 + 72);
  if (v62)
  {
    v63 = *(a2 + 24);
    v64 = sub_1000D2E94();
    if (v66 == v65)
    {
      llvm::raw_ostream::write(v64, " ", 1uLL);
    }

    else
    {
      sub_1000D2E38(v64, v65);
    }

    mlir::AsmPrinter::Impl::printLocation(a1 + 16, v63, 1);
    v62 = *(a1 + 72);
  }

  if ((v62 & 0x40) == 0)
  {
    return;
  }

  v67 = *(a2 + 36);
  if (!v67)
  {
    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
    {
      v73 = sub_1000D2E94();
      if ((v75 - v74) > 7)
      {
        *v74 = 0x203A6469202F2F20;
        v73[4] += 8;
      }

      else
      {
        llvm::raw_ostream::write(v73, " // id: ", 8uLL);
      }

      sub_1000CA544(*(a1 + 16), *(*(a1 + 24) + 328), *(*(a1 + 24) + 344), a2);
    }

    return;
  }

  v68 = 0;
  v69 = a2 - 16;
  while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(a2 - 16, v68))
  {
    if (v67 == ++v68)
    {
      v70 = sub_1000D2E94();
      if ((v72 - v71) > 9)
      {
        *(v71 + 8) = 25701;
        *v71 = *" // unused";
        v70[4] += 10;
      }

      else
      {
        llvm::raw_ostream::write(v70, " // unused", 0xAuLL);
      }

      return;
    }
  }

  v76 = *(a2 + 36);
  if (!v76)
  {
    return;
  }

  v77 = 0;
  while (1)
  {
    v78 = sub_1000D2F58();
    if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v78, v79))
    {
      break;
    }

    if (v76 == ++v77)
    {
      return;
    }
  }

  v129 = &v133;
  v130 = 1;
  v131 = 0;
  v80 = 1;
  v132 = 1;
  v81 = *(a2 + 36);
  if (v81)
  {
    v82 = a2 - 16;
  }

  else
  {
    v82 = 0;
  }

  *&v125[0] = v82;
  *(&v125[0] + 1) = v81;
  mlir::ResultRange::use_begin(v125, v134);
  v83 = *(a2 + 36);
  if (v83)
  {
    v84 = a2 - 16;
  }

  else
  {
    v84 = 0;
  }

  v136.n128_u64[0] = v84;
  v136.n128_u64[1] = v83;
  mlir::ResultRange::use_end(&v136, v127);
  v85 = v135;
  v126 = v135;
  v125[0] = v134[0];
  v125[1] = v134[1];
  v86 = v128;
  if (v135 == v128)
  {
    goto LABEL_90;
  }

  v87 = 0;
  v88 = 0;
  do
  {
    v89 = *(v85 + 16);
    if (v132 != 1)
    {
      goto LABEL_81;
    }

    v90 = HIDWORD(v130);
    if (!HIDWORD(v130))
    {
LABEL_79:
      if (HIDWORD(v130) >= v130)
      {
LABEL_81:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v129, v89);
        if ((v93 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        ++HIDWORD(v130);
        *(v129 + v90) = v89;
      }

      ++v88;
      v87 += *(v89 + 36);
      goto LABEL_83;
    }

    v91 = 8 * HIDWORD(v130);
    v92 = v129;
    while (*v92 != v89)
    {
      ++v92;
      v91 -= 8;
      if (!v91)
      {
        goto LABEL_79;
      }
    }

LABEL_83:
    mlir::ResultRange::UseIterator::operator++(v134);
    v85 = v135;
  }

  while (v135 != v86);
  v94 = v87 >= 2 || v88 >= 2;
  v80 = !v94;
LABEL_90:
  v95 = v67 == 1;
  v96 = v95 & v80;
  if ((v95 & v80) != 0)
  {
    v97 = "user";
  }

  else
  {
    v97 = "users";
  }

  v98 = *(a1 + 16);
  v99 = v98[4];
  if (v98[3] - v99 > 3uLL)
  {
    *v99 = 539963168;
    v100 = (v98[4] + 4);
    v98[4] = v100;
  }

  else
  {
    v98 = llvm::raw_ostream::write(*(a1 + 16), " // ", 4uLL);
    v100 = v98[4];
  }

  if (v96)
  {
    v101 = 4;
  }

  else
  {
    v101 = 5;
  }

  if (v101 <= v98[3] - v100)
  {
    memcpy(v100, v97, v101);
    v98[4] += v101;
  }

  else
  {
    v102 = sub_1000D2F58();
    v98 = llvm::raw_ostream::write(v102, v103, v101);
    v104 = v98[4];
  }

  v105 = v98[3];
  sub_1000D2E7C();
  if (!v31 && v94)
  {
    *v106 = 8250;
    sub_1000D2E4C();
  }

  else
  {
    llvm::raw_ostream::write(v98, ": ", 2uLL);
  }

  v107 = *(a2 + 36);
  if (v107)
  {
    v108 = a2 - 16;
  }

  else
  {
    v108 = 0;
  }

  if (v107)
  {
    v109 = *(a1 + 16);
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v69, 0);
    if (v67 == 1)
    {
      sub_1000CA684(a1, NextResultAtOffset);
    }

    else
    {
      v111 = sub_1000D2E94();
      if (v113 == v112)
      {
        llvm::raw_ostream::write(v111, "(", 1uLL);
      }

      else
      {
        sub_1000D2E38(v111, v112);
      }

      sub_1000CA684(a1, NextResultAtOffset);
      v114 = sub_1000D2EF8(*(a1 + 16));
      if (v31)
      {
        llvm::raw_ostream::write(v114, ")", 1uLL);
      }

      else
      {
        sub_1000D2E38(v114, v115);
      }
    }

    if (v107 != 1)
    {
      for (i = 1; i != v107; ++i)
      {
        sub_1000D2E5C();
        if (!v31 && v94)
        {
          *v117 = 8236;
          sub_1000D2E4C();
        }

        else
        {
          llvm::raw_ostream::write(v109, ", ", 2uLL);
        }

        v118 = mlir::detail::OpResultImpl::getNextResultAtOffset(v108, i);
        if (v67 == 1)
        {
          sub_1000CA684(a1, v118);
        }

        else
        {
          v119 = sub_1000D2E94();
          if (v121 == v120)
          {
            llvm::raw_ostream::write(v119, "(", 1uLL);
          }

          else
          {
            *v120 = 40;
            ++v119[4];
          }

          sub_1000CA684(a1, v118);
          v122 = sub_1000D2EF8(*(a1 + 16));
          if (v31)
          {
            llvm::raw_ostream::write(v122, ")", 1uLL);
          }

          else
          {
            sub_1000D2E38(v122, v123);
          }
        }
      }
    }
  }

  if ((v132 & 1) == 0)
  {
    free(v129);
  }
}

llvm::raw_ostream *sub_10029AC30(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    *&v111[0] = *(*(a2 + 48) + 8);
    Value = mlir::StringAttr::getValue(v111);
    v8 = v7;
    v9 = sub_1000D2EF8(a1[2]);
    if (v11)
    {
      llvm::raw_ostream::write(v9, "", 1uLL);
    }

    else
    {
      sub_1000D2E38(v9, v10);
    }

    llvm::printEscapedString(Value, v8, a1[2]);
    v12 = sub_1000D2EF8(a1[2]);
    if (v11)
    {
      llvm::raw_ostream::write(v12, "", 1uLL);
    }

    else
    {
      sub_1000D2E38(v12, v13);
    }
  }

  v14 = (a1 + 2);
  v15 = sub_1000D2E88(a1[2]);
  if (v17)
  {
    llvm::raw_ostream::write(v15, 40);
  }

  else
  {
    sub_1000D2EA0(v15, v16);
    *v18 = 40;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v3 = *(v5 + 68);
    if (v3)
    {
      v19 = *(v5 + 72);
      sub_1000BF87C((a1[3] + 280), *(v19 + 24), 1, *v14);
      if (v3 != 1)
      {
        Value = (v3 - 1);
        v20 = (v19 + 56);
        do
        {
          sub_1000D2E5C();
          if (!v11 & v17)
          {
            *v21 = 8236;
            sub_1000D2E4C();
          }

          else
          {
            v22 = sub_1000D2F58();
            llvm::raw_ostream::write(v22, v23, 2uLL);
          }

          v24 = *v20;
          v20 += 4;
          sub_1000BF87C((a1[3] + 280), v24, 1, a1[2]);
          Value = (Value - 1);
        }

        while (Value);
      }
    }
  }

  v25 = sub_1000D2E6C();
  if (v17)
  {
    llvm::raw_ostream::write(v25, 41);
  }

  else
  {
    sub_1000D2EA0(v25, v26);
    *v27 = 41;
  }

  if (*(v5 + 40))
  {
    v28 = sub_1000D2E6C();
    if (v17)
    {
      llvm::raw_ostream::write(v28, 91);
    }

    else
    {
      sub_1000D2EA0(v28, v29);
      *v30 = 91;
    }

    v110 = v5;
    mlir::SuccessorRange::SuccessorRange(v111, v5);
    v31 = *(&v111[0] + 1);
    if (!*(&v111[0] + 1))
    {
      goto LABEL_36;
    }

    v32 = *&v111[0];
    v33 = a1[2];
    v34 = *(a1[3] + 392);
    if (v34)
    {
      v35 = *(*&v111[0] + 24);
      sub_1000D2ED4(v34);
      if (v11)
      {
LABEL_30:
        if (v38 != v36)
        {
          v44 = v37 + 32 * v38;
          v45 = *(v44 + 16);
          v42 = *(v44 + 24);
          v40 = sub_1000D2F1C();
          if (v42 <= v46)
          {
            if (!v42)
            {
              goto LABEL_35;
            }

            goto LABEL_32;
          }

LABEL_34:
          llvm::raw_ostream::write(v33, v41, v42);
          goto LABEL_35;
        }
      }

      else
      {
        while (v39 != -4096)
        {
          sub_1000D2EC0();
          v39 = *(v37 + v108);
          if (v39 == v109)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v40 = sub_1000D2F1C();
    v41 = "INVALIDBLOCK";
    v42 = 12;
    if (v43 > 0xB)
    {
LABEL_32:
      memcpy(v40, v41, v42);
      *Value += v42;
LABEL_35:
      if (v31 == 1)
      {
LABEL_36:
        v14 = (a1 + 2);
        v47 = sub_1000D2E6C();
        if (v17)
        {
          llvm::raw_ostream::write(v47, 93);
        }

        else
        {
          sub_1000D2EA0(v47, v48);
          *v49 = 93;
        }

        v5 = v110;
        goto LABEL_40;
      }

      v87 = 1;
      while (1)
      {
        sub_1000D2E5C();
        if (!v11 & v17)
        {
          *v88 = 8236;
          sub_1000D2E4C();
        }

        else
        {
          v89 = sub_1000D2F58();
          llvm::raw_ostream::write(v89, v90, 2uLL);
        }

        v91 = a1[2];
        v92 = *(a1[3] + 392);
        if (!v92)
        {
          goto LABEL_82;
        }

        v93 = *(v32 + 32 * v87 + 24);
        sub_1000D2ED4(v92);
        if (!v11)
        {
          break;
        }

LABEL_81:
        if (v96 == v94)
        {
          goto LABEL_82;
        }

        v103 = v95 + 32 * v96;
        v104 = *(v103 + 16);
        v102 = *(v103 + 24);
        v98 = sub_1000D2F84(v91);
        if (v102 > v105)
        {
          goto LABEL_86;
        }

        if (v102)
        {
          goto LABEL_88;
        }

LABEL_89:
        if (++v87 == v31)
        {
          goto LABEL_36;
        }
      }

      while (v97 != -4096)
      {
        sub_1000D2EC0();
        v97 = *(v95 + v106);
        if (v97 == v107)
        {
          goto LABEL_81;
        }
      }

LABEL_82:
      v98 = sub_1000D2F84(v91);
      if (v100 > 0xB)
      {
        v102 = 12;
        v101 = "INVALIDBLOCK";
LABEL_88:
        memcpy(v99, v101, v102);
        *v3 += v102;
        goto LABEL_89;
      }

      v101 = "INVALIDBLOCK";
      v102 = 12;
LABEL_86:
      llvm::raw_ostream::write(v98, v101, v102);
      goto LABEL_89;
    }

    goto LABEL_34;
  }

LABEL_40:
  PropertiesAsAttribute = mlir::Operation::getPropertiesAsAttribute(v5);
  if (PropertiesAsAttribute)
  {
    v51 = PropertiesAsAttribute;
    v53 = *(*v14 + 3);
    v52 = *(*v14 + 4);
    sub_1000D2E7C();
    if (!v11 & v17)
    {
      sub_1000D2EAC(v54, v55);
    }

    else
    {
      llvm::raw_ostream::write(v54, " <", 2uLL);
    }

    if ((sub_1000B817C((a1[3] + 144), v51, a1[2]) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printAttributeImpl(v14, v51, 0);
    }

    v56 = sub_1000D2E6C();
    if (v17)
    {
      llvm::raw_ostream::write(v56, 62);
    }

    else
    {
      sub_1000D2EA0(v56, v57);
      *v58 = 62;
    }
  }

  v59 = *(v5 + 44);
  if ((v59 & 0x7FFFFF) != 0)
  {
    v61 = *(*v14 + 3);
    v60 = *(*v14 + 4);
    sub_1000D2E7C();
    if (!v11 & v17)
    {
      sub_1000D2EAC(v62, v63);
    }

    else
    {
      llvm::raw_ostream::write(v62, " (", 2uLL);
    }

    v64 = *(v5 + 44);
    v65 = v64 & 0x7FFFFF;
    if ((v64 & 0x7FFFFF) != 0)
    {
      v66 = ((v5 + 16 * ((v64 >> 23) & 1) + ((v64 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
      v67 = a1[2];
      v68 = *(*a1 + 224);
      v69 = sub_1000D2F04();
      v70(v69);
      if (v65 != 1)
      {
        v71 = v66 + 24;
        v72 = 24 * v65 - 24;
        do
        {
          sub_1000D2E5C();
          if (!v11 & v17)
          {
            *v73 = 8236;
            sub_1000D2E4C();
          }

          else
          {
            llvm::raw_ostream::write(v67, ", ", 2uLL);
          }

          v74 = *(*a1 + 224);
          v75 = sub_1000D2F04();
          v76(v75);
          v71 += 24;
          v72 -= 24;
        }

        while (v72);
      }
    }

    v77 = sub_1000D2E6C();
    if (v17)
    {
      llvm::raw_ostream::write(v77, 41);
    }

    else
    {
      sub_1000D2EA0(v77, v78);
      *v79 = 41;
    }

    v59 = *(v5 + 44);
  }

  v80 = HIBYTE(v59);
  if (HIBYTE(v59))
  {
    sub_1000921B8(v5, v111);
    v118[0] = v111[0];
    v118[1] = v111[1];
    v119 = v112;
    v116[0] = v113;
    v116[1] = v114;
    v117 = v115;
    AttrDictionary = v122;
    v121 = 0x300000000;
    sub_1000922D8(&AttrDictionary, v118, v116);
    v81 = AttrDictionary;
    v83 = v121;
  }

  else
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(v5);
    v81 = mlir::DictionaryAttr::getValue(&AttrDictionary);
    v83 = v82;
  }

  (*(*a1 + 192))(a1, v81, v83, 0, 0);
  if (v80 && AttrDictionary != v122)
  {
    free(AttrDictionary);
  }

  v84 = *v14;
  v85 = *(*v14 + 4);
  if ((*(*v14 + 3) - v85) > 2)
  {
    *(v85 + 2) = 32;
    sub_1000D2F44(v84, v85);
  }

  else
  {
    llvm::raw_ostream::write(v84, " : ", 3uLL);
  }

  return mlir::OpAsmPrinter::printFunctionalType(a1, v5);
}

uint64_t sub_10029B2C8(void *a1, uint64_t a2)
{
  if ((*(a1[2] + 40) & 8) == 0)
  {
    v4 = *(a2 + 44);
    if ((v4 & 0x7FFFFF) != 0)
    {
      v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v6 = 24 * (v4 & 0x7FFFFF);
      do
      {
        (*(*a1 + 224))(a1, v5, 1, 1, 0);
        v5 += 24;
        v6 -= 24;
      }

      while (v6);
    }
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v26 = v7;
  v27 = v8;
  mlir::OperandRange::getTypes(&v26, &AttrDictionary);
  v9 = v25 - v24;
  if (v25 != v24)
  {
    v10 = (AttrDictionary + 32 * v24 + 24);
    do
    {
      v11 = *v10;
      v10 += 4;
      (*(*a1 + 32))(a1, *(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v9;
    }

    while (v9);
  }

  v12 = *(a2 + 36);
  v13 = a2 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v26 = v13;
  v27 = v12;
  mlir::ResultRange::getTypes(&v26, &AttrDictionary);
  v14 = v24;
  v15 = v25;
  if (v24 != v25)
  {
    v16 = AttrDictionary;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v14);
      (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      ++v14;
    }

    while (v15 != v14);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  result = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v19)
  {
    v20 = 16 * v19;
    v21 = (result + 8);
    do
    {
      v22 = *v21;
      v21 += 2;
      result = (*(*a1 + 40))(a1, v22);
      v20 -= 16;
    }

    while (v20);
  }

  return result;
}

void sub_10029B4E0()
{
  if (__cxa_guard_acquire(&qword_1002E0670))
  {
    v0 = sub_1000C147C();
    qword_1002E0668 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0670);
  }
}

void sub_10029B534()
{
  {
    v0 = sub_1000C16C8();
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029B588()
{
  {
    v0 = sub_10007A3D8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

uint64_t sub_10029B5DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(a2);
    sub_10029A3EC(a1, ValuePtr);
    v9 = *a3;
    ++*(a1 + 80);
    v10 = sub_1000D2E88(v9);
    if (v12)
    {
      result = llvm::raw_ostream::write(v10, 10);
    }

    else
    {
      result = sub_1000D2EA0(v10, v11);
      *v14 = 10;
    }

    a2 = *(a2 + 8);
  }

  while (a2 != a4);
  return result;
}

void sub_10029B668()
{
  if (__cxa_guard_acquire(&qword_1002E0688))
  {
    qword_1002E0678 = sub_1000C14C4();
    unk_1002E0680 = v0;

    __cxa_guard_release(&qword_1002E0688);
  }
}

void sub_10029B6BC()
{
  {
    llvm::getTypeName<mlir::ElementsAttr>(void)::Name = sub_1000C1710();
    *algn_1002E0E98 = v0;
  }
}

void sub_10029B710()
{
  {
    v0 = sub_10007A4A0();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029B764()
{
  if (__cxa_guard_acquire(&qword_1002E0670))
  {
    v0 = sub_1000C147C();
    qword_1002E0668 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0670);
  }
}

void sub_10029B7A4()
{
  {
    v0 = sub_100080F94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029B7F8()
{
  {
    v0 = sub_1000D6A94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029B84C()
{
  {
    llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>(void)::Name = sub_1000D6ADC();
    unk_1002E1CC0 = v0;
  }
}

void sub_10029B8A0()
{
  {
    v0 = sub_1000C16C8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C4DC(v2);
  }
}

void sub_10029B8F0()
{
  if (__cxa_guard_acquire(&qword_1002E0670))
  {
    v0 = sub_1000C147C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C4F4(v2);
    __cxa_guard_release(&qword_1002E0670);
  }
}

void sub_10029B92C()
{
  if (__cxa_guard_acquire(&qword_1002E0698))
  {
    v0 = sub_1000E4A58();
    qword_1002E0690 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0698);
  }
}

void sub_10029B980()
{
  if (__cxa_guard_acquire(&qword_1002E06B0))
  {
    qword_1002E06A0 = sub_1000E4AA0();
    *algn_1002E06A8 = v0;

    __cxa_guard_release(&qword_1002E06B0);
  }
}

void sub_10029B9D4()
{
  if (__cxa_guard_acquire(&qword_1002E06C8))
  {
    v0 = sub_1000E51EC();
    off_1002E06C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E06C8);
  }
}

void sub_10029BA14()
{
  if (__cxa_guard_acquire(&qword_1002E06E0))
  {
    qword_1002E06D0 = sub_1000E5234();
    *algn_1002E06D8 = v0;

    __cxa_guard_release(&qword_1002E06E0);
  }
}

void sub_10029BA68()
{
  if (__cxa_guard_acquire(&qword_1002E06F0))
  {
    v0 = sub_1000E5314();
    qword_1002E06E8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E06F0);
  }
}

void sub_10029BABC()
{
  if (__cxa_guard_acquire(&qword_1002E0708))
  {
    qword_1002E06F8 = sub_1000E535C();
    unk_1002E0700 = v0;

    __cxa_guard_release(&qword_1002E0708);
  }
}

void sub_10029BB10()
{
  {
    v0 = sub_10006BD98();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C4D0(v2);
  }
}

void sub_10029BB60()
{
  if (__cxa_guard_acquire(&qword_1002E0718))
  {
    v0 = sub_1000E60F8();
    qword_1002E0710 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0718);
  }
}

void sub_10029BBB4()
{
  if (__cxa_guard_acquire(&qword_1002E0740))
  {
    v0 = sub_1000E63E8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C50C(v2);

    __cxa_guard_release(&qword_1002E0740);
  }
}

void sub_10029BC04()
{
  if (__cxa_guard_acquire(&qword_1002E0730))
  {
    qword_1002E0720 = sub_1000E6140();
    *algn_1002E0728 = v0;

    __cxa_guard_release(&qword_1002E0730);
  }
}

void sub_10029BC58()
{
  if (__cxa_guard_acquire(&qword_1002E0768))
  {
    v0 = sub_1000E66D8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C500(v2);

    __cxa_guard_release(&qword_1002E0768);
  }
}

void sub_10029BCA8()
{
  if (__cxa_guard_acquire(&qword_1002E0758))
  {
    qword_1002E0748 = sub_1000E6430();
    unk_1002E0750 = v0;

    __cxa_guard_release(&qword_1002E0758);
  }
}

void sub_10029BCFC()
{
  if (__cxa_guard_acquire(&qword_1002E0790))
  {
    v0 = sub_1000E69C8();
    qword_1002E0788 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0790);
  }
}

void sub_10029BD50()
{
  if (__cxa_guard_acquire(&qword_1002E0780))
  {
    qword_1002E0770 = sub_1000E6720();
    *algn_1002E0778 = v0;

    __cxa_guard_release(&qword_1002E0780);
  }
}

void sub_10029BDA4()
{
  if (__cxa_guard_acquire(&qword_1002E07B8))
  {
    v0 = sub_1000E6BC8();
    qword_1002E07B0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E07B8);
  }
}

void sub_10029BDF8()
{
  if (__cxa_guard_acquire(&qword_1002E07A8))
  {
    qword_1002E0798 = sub_1000E6A10();
    unk_1002E07A0 = v0;

    __cxa_guard_release(&qword_1002E07A8);
  }
}

void sub_10029BE4C()
{
  if (__cxa_guard_acquire(&qword_1002E07E0))
  {
    v0 = sub_1000E6EB8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C524(v2);

    __cxa_guard_release(&qword_1002E07E0);
  }
}

void sub_10029BE9C()
{
  if (__cxa_guard_acquire(&qword_1002E07D0))
  {
    qword_1002E07C0 = sub_1000E6C10();
    *algn_1002E07C8 = v0;

    __cxa_guard_release(&qword_1002E07D0);
  }
}

void sub_10029BEF0()
{
  if (__cxa_guard_acquire(&qword_1002E0808))
  {
    v0 = sub_1000E71A8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C518(v2);

    __cxa_guard_release(&qword_1002E0808);
  }
}

void sub_10029BF40()
{
  if (__cxa_guard_acquire(&qword_1002E07F8))
  {
    qword_1002E07E8 = sub_1000E6F00();
    unk_1002E07F0 = v0;

    __cxa_guard_release(&qword_1002E07F8);
  }
}

void sub_10029BF94()
{
  if (__cxa_guard_acquire(&qword_1002E0830))
  {
    v0 = sub_1000E7498();
    qword_1002E0828 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0830);
  }
}

void sub_10029BFE8()
{
  if (__cxa_guard_acquire(&qword_1002E0820))
  {
    qword_1002E0810 = sub_1000E71F0();
    *algn_1002E0818 = v0;

    __cxa_guard_release(&qword_1002E0820);
  }
}

void sub_10029C03C()
{
  if (__cxa_guard_acquire(&qword_1002E0848))
  {
    qword_1002E0838 = sub_1000E74E0();
    unk_1002E0840 = v0;

    __cxa_guard_release(&qword_1002E0848);
  }
}

void sub_10029C090()
{
  if (__cxa_guard_acquire(&qword_1002E0858))
  {
    v0 = sub_1000E7C68();
    qword_1002E0850 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0858);
  }
}

void sub_10029C0E4()
{
  if (__cxa_guard_acquire(&qword_1002E0880))
  {
    v0 = sub_1000E7E68();
    qword_1002E0878 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0880);
  }
}

void sub_10029C138()
{
  if (__cxa_guard_acquire(&qword_1002E0870))
  {
    qword_1002E0860 = sub_1000E7CB0();
    *algn_1002E0868 = v0;

    __cxa_guard_release(&qword_1002E0870);
  }
}

void sub_10029C18C()
{
  if (__cxa_guard_acquire(&qword_1002E08A8))
  {
    v0 = sub_1000E8068();
    qword_1002E08A0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E08A8);
  }
}

void sub_10029C1E0()
{
  if (__cxa_guard_acquire(&qword_1002E0898))
  {
    qword_1002E0888 = sub_1000E7EB0();
    unk_1002E0890 = v0;

    __cxa_guard_release(&qword_1002E0898);
  }
}

void sub_10029C234()
{
  if (__cxa_guard_acquire(&qword_1002E08D0))
  {
    v0 = sub_1000E8364();
    qword_1002E08C8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E08D0);
  }
}

void sub_10029C288()
{
  if (__cxa_guard_acquire(&qword_1002E08C0))
  {
    qword_1002E08B0 = sub_1000E80B0();
    *algn_1002E08B8 = v0;

    __cxa_guard_release(&qword_1002E08C0);
  }
}

void sub_10029C2DC()
{
  if (__cxa_guard_acquire(&qword_1002E08F8))
  {
    v0 = sub_1000E8660();
    qword_1002E08F0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E08F8);
  }
}

void sub_10029C330()
{
  if (__cxa_guard_acquire(&qword_1002E08E8))
  {
    qword_1002E08D8 = sub_1000E83AC();
    unk_1002E08E0 = v0;

    __cxa_guard_release(&qword_1002E08E8);
  }
}

void sub_10029C384()
{
  if (__cxa_guard_acquire(&qword_1002E0920))
  {
    v0 = sub_1000E895C();
    qword_1002E0918 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0920);
  }
}

void sub_10029C3D8()
{
  if (__cxa_guard_acquire(&qword_1002E0910))
  {
    qword_1002E0900 = sub_1000E86A8();
    *algn_1002E0908 = v0;

    __cxa_guard_release(&qword_1002E0910);
  }
}

void sub_10029C42C()
{
  if (__cxa_guard_acquire(&qword_1002E0948))
  {
    v0 = sub_1000E8C58();
    qword_1002E0940 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0948);
  }
}

void sub_10029C480()
{
  if (__cxa_guard_acquire(&qword_1002E0938))
  {
    qword_1002E0928 = sub_1000E89A4();
    unk_1002E0930 = v0;

    __cxa_guard_release(&qword_1002E0938);
  }
}

void sub_10029C4D4()
{
  if (__cxa_guard_acquire(&qword_1002E0970))
  {
    v0 = sub_1000E8F54();
    qword_1002E0968 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0970);
  }
}

void sub_10029C528()
{
  if (__cxa_guard_acquire(&qword_1002E0960))
  {
    qword_1002E0950 = sub_1000E8CA0();
    *algn_1002E0958 = v0;

    __cxa_guard_release(&qword_1002E0960);
  }
}

void sub_10029C57C()
{
  if (__cxa_guard_acquire(&qword_1002E0998))
  {
    v0 = sub_1000E9250();
    qword_1002E0990 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0998);
  }
}

void sub_10029C5D0()
{
  if (__cxa_guard_acquire(&qword_1002E0988))
  {
    qword_1002E0978 = sub_1000E8F9C();
    unk_1002E0980 = v0;

    __cxa_guard_release(&qword_1002E0988);
  }
}

void sub_10029C624()
{
  if (__cxa_guard_acquire(&qword_1002E09C0))
  {
    v0 = sub_1000E9500();
    qword_1002E09B8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E09C0);
  }
}

void sub_10029C678()
{
  if (__cxa_guard_acquire(&qword_1002E09B0))
  {
    qword_1002E09A0 = sub_1000E9298();
    *algn_1002E09A8 = v0;

    __cxa_guard_release(&qword_1002E09B0);
  }
}

void sub_10029C6CC()
{
  if (__cxa_guard_acquire(&qword_1002E09E8))
  {
    v0 = sub_1000E97B8();
    qword_1002E09E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E09E8);
  }
}

void sub_10029C720()
{
  if (__cxa_guard_acquire(&qword_1002E0A10))
  {
    v0 = sub_1000E9A58();
    qword_1002E0A08 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0A10);
  }
}

void sub_10029C774()
{
  if (__cxa_guard_acquire(&qword_1002E09D8))
  {
    qword_1002E09C8 = sub_1000E9548();
    unk_1002E09D0 = v0;

    __cxa_guard_release(&qword_1002E09D8);
  }
}

void sub_10029C7C8()
{
  if (__cxa_guard_acquire(&qword_1002E0A00))
  {
    qword_1002E09F0 = sub_1000E9800();
    *algn_1002E09F8 = v0;

    __cxa_guard_release(&qword_1002E0A00);
  }
}

void sub_10029C81C()
{
  if (__cxa_guard_acquire(&qword_1002E0A38))
  {
    v0 = sub_1000E9C20();
    qword_1002E0A30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0A38);
  }
}

void sub_10029C870()
{
  if (__cxa_guard_acquire(&qword_1002E0A60))
  {
    v0 = sub_1000E9DE8();
    qword_1002E0A58 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0A60);
  }
}

void sub_10029C8C4()
{
  if (__cxa_guard_acquire(&qword_1002E0A28))
  {
    qword_1002E0A18 = sub_1000E9AA0();
    unk_1002E0A20 = v0;

    __cxa_guard_release(&qword_1002E0A28);
  }
}

void sub_10029C918()
{
  if (__cxa_guard_acquire(&qword_1002E0A50))
  {
    qword_1002E0A40 = sub_1000E9C68();
    *algn_1002E0A48 = v0;

    __cxa_guard_release(&qword_1002E0A50);
  }
}

void sub_10029C96C()
{
  if (__cxa_guard_acquire(&qword_1002E0A78))
  {
    qword_1002E0A68 = sub_1000E9E30();
    unk_1002E0A70 = v0;

    __cxa_guard_release(&qword_1002E0A78);
  }
}

void sub_10029C9C0()
{
  if (__cxa_guard_acquire(&qword_1002E0A88))
  {
    v0 = sub_1000EA1B8();
    qword_1002E0A80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0A88);
  }
}

void sub_10029CA14()
{
  if (__cxa_guard_acquire(&qword_1002E0AB0))
  {
    v0 = sub_1000EA32C();
    qword_1002E0AA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0AB0);
  }
}

void sub_10029CA68()
{
  if (__cxa_guard_acquire(&qword_1002E0AD8))
  {
    v0 = sub_1000EA8C8();
    qword_1002E0AD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0AD8);
  }
}

void sub_10029CABC()
{
  if (__cxa_guard_acquire(&qword_1002E0AA0))
  {
    qword_1002E0A90 = sub_1000EA200();
    *algn_1002E0A98 = v0;

    __cxa_guard_release(&qword_1002E0AA0);
  }
}

void sub_10029CB10()
{
  if (__cxa_guard_acquire(&qword_1002E0AC8))
  {
    qword_1002E0AB8 = sub_1000EA374();
    unk_1002E0AC0 = v0;

    __cxa_guard_release(&qword_1002E0AC8);
  }
}

void sub_10029CB64()
{
  if (__cxa_guard_acquire(&qword_1002E0B00))
  {
    v0 = sub_1000EABC8();
    qword_1002E0AF8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0B00);
  }
}

void sub_10029CBB8()
{
  if (__cxa_guard_acquire(&qword_1002E0AF0))
  {
    qword_1002E0AE0 = sub_1000EA910();
    *algn_1002E0AE8 = v0;

    __cxa_guard_release(&qword_1002E0AF0);
  }
}

void sub_10029CC0C()
{
  if (__cxa_guard_acquire(&qword_1002E0B28))
  {
    v0 = sub_1000EAE88();
    qword_1002E0B20 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0B28);
  }
}

void sub_10029CC60()
{
  if (__cxa_guard_acquire(&qword_1002E0B18))
  {
    qword_1002E0B08 = sub_1000EAC10();
    unk_1002E0B10 = v0;

    __cxa_guard_release(&qword_1002E0B18);
  }
}

void sub_10029CCB4()
{
  if (__cxa_guard_acquire(&qword_1002E0B50))
  {
    v0 = sub_1000EB01C();
    qword_1002E0B48 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0B50);
  }
}

void sub_10029CD08()
{
  if (__cxa_guard_acquire(&qword_1002E0B40))
  {
    qword_1002E0B30 = sub_1000EAED0();
    *algn_1002E0B38 = v0;

    __cxa_guard_release(&qword_1002E0B40);
  }
}

void sub_10029CD5C()
{
  if (__cxa_guard_acquire(&qword_1002E0B68))
  {
    qword_1002E0B58 = sub_1000EB064();
    unk_1002E0B60 = v0;

    __cxa_guard_release(&qword_1002E0B68);
  }
}

void sub_10029CDB0()
{
  {
    v0 = sub_1000EB2B0();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C4E8(v2);
  }
}

void sub_10029CE00()
{
  if (__cxa_guard_acquire(&qword_1002E0B78))
  {
    v0 = sub_1000EB378();
    qword_1002E0B70 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0B78);
  }
}

void sub_10029CE54()
{
  {
    llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>(void)::Name = sub_1000EB2F8();
    *algn_1002E2D48 = v0;
  }
}

void sub_10029CEA8()
{
  if (__cxa_guard_acquire(&qword_1002E0B90))
  {
    qword_1002E0B80 = sub_1000EB3C0();
    *algn_1002E0B88 = v0;

    __cxa_guard_release(&qword_1002E0B90);
  }
}

void sub_10029CEFC()
{
  if (__cxa_guard_acquire(&qword_1002E0BA0))
  {
    v0 = sub_1000EB99C();
    qword_1002E0B98 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0BA0);
  }
}

void sub_10029CF50()
{
  if (__cxa_guard_acquire(&qword_1002E0BB8))
  {
    qword_1002E0BA8 = sub_1000EB9E4();
    unk_1002E0BB0 = v0;

    __cxa_guard_release(&qword_1002E0BB8);
  }
}

void sub_10029CFA4()
{
  if (__cxa_guard_acquire(&qword_1002E06C8))
  {
    v0 = sub_1000E51EC();
    off_1002E06C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E06C8);
  }
}

void sub_10029CFF8()
{
  if (__cxa_guard_acquire(&qword_1002E06F0))
  {
    v0 = sub_1000E5314();
    qword_1002E06E8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E06F0);
  }
}

void sub_10029D04C()
{
  {
    v0 = sub_10006BD98();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C4D0(v2);
  }
}

void sub_10029D088()
{
  if (__cxa_guard_acquire(&qword_1002E0718))
  {
    v0 = sub_1000E60F8();
    qword_1002E0710 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0718);
  }
}

void sub_10029D0DC()
{
  if (__cxa_guard_acquire(&qword_1002E0790))
  {
    v0 = sub_1000E69C8();
    qword_1002E0788 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0790);
  }
}

void sub_10029D130()
{
  if (__cxa_guard_acquire(&qword_1002E07B8))
  {
    v0 = sub_1000E6BC8();
    qword_1002E07B0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E07B8);
  }
}

void sub_10029D184()
{
  if (__cxa_guard_acquire(&qword_1002E0830))
  {
    v0 = sub_1000E7498();
    qword_1002E0828 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0830);
  }
}

void sub_10029D1D8()
{
  if (__cxa_guard_acquire(&qword_1002E0858))
  {
    v0 = sub_1000E7C68();
    qword_1002E0850 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0858);
  }
}

void sub_10029D22C()
{
  if (__cxa_guard_acquire(&qword_1002E0880))
  {
    v0 = sub_1000E7E68();
    qword_1002E0878 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0880);
  }
}

void sub_10029D280()
{
  if (__cxa_guard_acquire(&qword_1002E08A8))
  {
    v0 = sub_1000E8068();
    qword_1002E08A0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E08A8);
  }
}

void sub_10029D2D4()
{
  if (__cxa_guard_acquire(&qword_1002E08D0))
  {
    v0 = sub_1000E8364();
    qword_1002E08C8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E08D0);
  }
}

void sub_10029D328()
{
  if (__cxa_guard_acquire(&qword_1002E08F8))
  {
    v0 = sub_1000E8660();
    qword_1002E08F0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E08F8);
  }
}

void sub_10029D37C()
{
  if (__cxa_guard_acquire(&qword_1002E0920))
  {
    v0 = sub_1000E895C();
    qword_1002E0918 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0920);
  }
}

void sub_10029D3D0()
{
  if (__cxa_guard_acquire(&qword_1002E0948))
  {
    v0 = sub_1000E8C58();
    qword_1002E0940 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0948);
  }
}

void sub_10029D424()
{
  if (__cxa_guard_acquire(&qword_1002E0970))
  {
    v0 = sub_1000E8F54();
    qword_1002E0968 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0970);
  }
}

void sub_10029D478()
{
  if (__cxa_guard_acquire(&qword_1002E0998))
  {
    v0 = sub_1000E9250();
    qword_1002E0990 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0998);
  }
}

void sub_10029D4CC()
{
  if (__cxa_guard_acquire(&qword_1002E09C0))
  {
    v0 = sub_1000E9500();
    qword_1002E09B8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E09C0);
  }
}

void sub_10029D520()
{
  if (__cxa_guard_acquire(&qword_1002E0698))
  {
    v0 = sub_1000E4A58();
    qword_1002E0690 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0698);
  }
}

void sub_10029D574()
{
  if (__cxa_guard_acquire(&qword_1002E0670))
  {
    v0 = sub_1000C147C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10010C4F4(v2);

    __cxa_guard_release(&qword_1002E0670);
  }
}

void sub_10029D5C4()
{
  {
    llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>(void)::Name = sub_10010C290();
    unk_1002E0EC0 = v0;
  }
}

uint64_t mlir::UnrealizedConversionCastOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 68);
    v6 = *(v4 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v53 = v6;
  v54 = v5;
  sub_100114D70(v4);
  v52[0] = v7;
  v52[1] = v8;
  mlir::OperandRange::getType(&v53, &v49);
  mlir::ResultRange::getType(v52, &v46);
  v9 = v51 - v50;
  v10 = v47;
  if (v51 - v50 == v48 - v47)
  {
    if (v51 == v50)
    {
LABEL_8:
      v14 = v54;
      v15 = *(a3 + 8);
      if (v54 + v15 > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v54 + v15, 8);
        v15 = *(a3 + 8);
      }

      if (!v14)
      {
        goto LABEL_61;
      }

      v16 = (*a3 + 8 * v15);
      if (v14 >= 0xB)
      {
        sub_100114D98();
        v19 = v19 || v18 >= v17;
        if (v19)
        {
          sub_100114D4C();
          do
          {
            sub_100114CF4(v20);
          }

          while (!v22);
          v16 = v21;
        }
      }

      do
      {
        sub_100114D84(v16);
      }

      while (!v22);
      goto LABEL_60;
    }

    v11 = v46;
    v12 = v49 + 32 * v50 + 24;
    while (1)
    {
      v13 = *(*v12 + 8);
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v10) + 8) ^ v13) > 7)
      {
        break;
      }

      ++v10;
      v12 += 32;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }
  }

  if (!v54)
  {
    return 0;
  }

  v45 = *(v53 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v45);
  if (!DefiningOp)
  {
    return 0;
  }

  v24 = *(*(DefiningOp + 48) + 16);
  v25 = v24 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id ? DefiningOp : 0;
  if (v24 != &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    return 0;
  }

  v26 = *(DefiningOp + 36);
  v27 = v26 ? DefiningOp - 16 : 0;
  if (v54 != v26)
  {
    return 0;
  }

  if (v26)
  {
    v28 = 0;
    v29 = (v53 + 24);
    while (mlir::detail::OpResultImpl::getNextResultAtOffset(v27, v28) == *v29)
    {
      ++v28;
      v29 += 4;
      if (v26 == v28)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  if ((*(v25 + 46) & 0x80) != 0)
  {
    v30 = *(v25 + 72);
    v31 = *(v25 + 68);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v55[0] = v30;
  v55[1] = v31;
  mlir::OperandRange::getTypes(v55, &v49);
  mlir::ResultRange::getTypes(v52, &v46);
  v32 = v51 - v50;
  v33 = v47;
  if (v51 - v50 != v48 - v47)
  {
    return 0;
  }

  if (v51 != v50)
  {
    v34 = v46;
    v35 = v49 + 32 * v50 + 24;
    do
    {
      v36 = *(*v35 + 8);
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, v33) + 8) ^ v36) > 7)
      {
        return 0;
      }

      ++v33;
      v35 += 32;
    }

    while (--v32);
  }

  if ((*(v25 + 46) & 0x80) != 0)
  {
    v37 = *(v25 + 72);
    v14 = *(v25 + 68);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + 8);
  if (v14 + v15 > *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v14 + v15, 8);
    v15 = *(a3 + 8);
  }

  if (v14)
  {
    v38 = (*a3 + 8 * v15);
    if (v14 >= 0xB)
    {
      sub_100114D98();
      if (v19 || v40 >= v39)
      {
        sub_100114D4C();
        do
        {
          sub_100114CF4(v42);
        }

        while (!v22);
        v38 = v43;
      }
    }

    do
    {
      sub_100114D84(v38);
    }

    while (!v22);
LABEL_60:
    LODWORD(v15) = *(a3 + 8);
  }

LABEL_61:
  *(a3 + 8) = v15 + v14;
  return 1;
}

void mlir::UnrealizedConversionCastOp::print(mlir::UnrealizedConversionCastOp *this, mlir::OpAsmPrinter *a2)
{
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 68))
  {
    v4 = (*(*a2 + 16))(a2);
    v5 = sub_1000D2E88(v4);
    if (v7)
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      sub_100114CE0(v5, v6);
    }

    v8 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v9 = *(v8 + 68);
      v10 = *(v8 + 72);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v11 = (*(*a2 + 16))(a2);
    if (v9)
    {
      v12 = v11;
      v13 = *(v10 + 24);
      sub_100114D20();
      (*(v14 + 160))(a2);
      v15 = v9 - 1;
      if (v15)
      {
        v16 = (v10 + 56);
        do
        {
          v17 = v12[4];
          if (v12[3] - v17 > 1uLL)
          {
            *v17 = 8236;
            v12[4] += 2;
          }

          else
          {
            llvm::raw_ostream::write(v12, ", ", 2uLL);
          }

          v18 = *v16;
          v16 += 4;
          sub_100114D20();
          (*(v19 + 160))(a2);
          --v15;
        }

        while (v15);
      }
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = sub_1000D2E88(v20);
    if (v7)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      sub_100114CE0(v21, v22);
    }

    v23 = (*(*a2 + 16))(a2);
    v24 = v23[4];
    if (v23[3] == v24)
    {
      llvm::raw_ostream::write(v23, ":", 1uLL);
    }

    else
    {
      *v24 = 58;
      ++v23[4];
    }

    v25 = (*(*a2 + 16))(a2);
    v26 = sub_1000D2E88(v25);
    if (v7)
    {
      llvm::raw_ostream::write(v26, 32);
    }

    else
    {
      sub_100114CE0(v26, v27);
    }

    v28 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v29 = *(v28 + 68);
      v30 = *(v28 + 72);
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    AttrDictionary = v30;
    v83 = v29;
    mlir::OperandRange::getTypes(&AttrDictionary, &v84);
    v31 = v85;
    v32 = v87;
    if (v85 != v87)
    {
      v33 = v84 + 32 * v85;
      v34 = *(*(v33 + 3) + 8);
      sub_100114D20();
      v36 = *(v35 + 32);
      v37 = sub_100114D64();
      v38(v37);
      if (v31 + 1 != v32)
      {
        v39 = ~v31 + v32;
        v40 = (v33 + 56);
        do
        {
          v41 = (*(*a2 + 16))(a2);
          v42 = sub_100114D3C(v41);
          if (!v44 & v7)
          {
            *v43 = 8236;
            sub_100114D2C(v42);
          }

          else
          {
            llvm::raw_ostream::write(v42, ", ", 2uLL);
          }

          v45 = *v40;
          v40 += 4;
          v46 = *(v45 + 8);
          sub_100114D20();
          v48 = *(v47 + 32);
          v49 = sub_100114D64();
          v50(v49);
          --v39;
        }

        while (v39);
      }
    }
  }

  v51 = (*(*a2 + 16))(a2);
  v52 = sub_1000D2E88(v51);
  if (v7)
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    sub_100114CE0(v52, v53);
  }

  v54 = (*(*a2 + 16))(a2);
  v55 = sub_100114D3C(v54);
  if (!v44 & v7)
  {
    *v56 = 28532;
    sub_100114D2C(v55);
  }

  else
  {
    llvm::raw_ostream::write(v55, "to", 2uLL);
  }

  v57 = (*(*a2 + 16))(a2);
  v58 = sub_1000D2E88(v57);
  if (v7)
  {
    llvm::raw_ostream::write(v58, 32);
  }

  else
  {
    sub_100114CE0(v58, v59);
  }

  sub_100114D70(*this);
  AttrDictionary = v60;
  v83 = v61;
  mlir::ResultRange::getTypes(&AttrDictionary, &v84);
  v62 = v85;
  v63 = v87;
  if (v85 != v87)
  {
    v64 = v84;
    v65 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v84, v85) + 8);
    sub_100114D20();
    v67 = *(v66 + 32);
    v68 = sub_100114D64();
    v69(v68);
    for (i = v62 + 1; v63 != i; ++i)
    {
      v71 = (*(*a2 + 16))(a2);
      v72 = sub_100114D3C(v71);
      if (!v44 & v7)
      {
        *v73 = 8236;
        sub_100114D2C(v72);
      }

      else
      {
        llvm::raw_ostream::write(v72, ", ", 2uLL);
      }

      v74 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v64, i) + 8);
      sub_100114D20();
      v76 = *(v75 + 32);
      v77 = sub_100114D64();
      v78(v77);
    }
  }

  v84 = &v86;
  v85 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  mlir::DictionaryAttr::getValue(&AttrDictionary);
  sub_100114D20();
  (*(v79 + 192))(a2, v80, v81);
  if (v84 != &v86)
  {
    free(v84);
  }
}

uint64_t sub_10029DF78(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  v15[0] = a2;
  v15[1] = v8;
  v15[2] = v9;
  v16 = 1;
  v10 = *(a2 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a2 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(v17, v12, v11);
  v17[2] = a3;
  v17[3] = a4;
  return mlir::UnrealizedConversionCastOp::fold(v15, v13, a5);
}

void sub_10029E048(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::UnrealizedConversionCastOp::print(&v7, a3);
}

void sub_10029E098()
{
  if (__cxa_guard_acquire(&qword_1002E04E0))
  {
    v0 = sub_10006E718();
    qword_1002E04D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E04E0);
  }
}

void sub_10029E0D8()
{
  if (__cxa_guard_acquire(&qword_1002E0C78))
  {
    v0 = sub_100114838();
    off_1002E0C70 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0C78);
  }
}

void sub_10029E118()
{
  {
    llvm::getTypeName<mlir::StringAttr>(void)::Name = sub_100114900();
    *algn_1002E2DF8 = v0;
  }
}

void sub_10029E158()
{
  if (__cxa_guard_acquire(&qword_1002E0BC8))
  {
    v0 = sub_10010FC94();
    qword_1002E0BC0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0BC8);
  }
}

void sub_10029E1AC()
{
  if (__cxa_guard_acquire(&qword_1002E0BE0))
  {
    qword_1002E0BD0 = sub_10010FCDC();
    *algn_1002E0BD8 = v0;

    __cxa_guard_release(&qword_1002E0BE0);
  }
}

void sub_10029E200()
{
  {
    v0 = sub_100110FEC();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E254()
{
  {
    v0 = sub_100110EF8();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E2A8()
{
  {
    llvm::getTypeName<mlir::SymbolOpInterface>(void)::Name = sub_100110F40();
    unk_1002E0F10 = v0;
  }
}

void sub_10029E2FC()
{
  {
    llvm::getTypeName<mlir::RegionKindInterface>(void)::Name = sub_100111034();
    unk_1002E1950 = v0;
  }
}

void sub_10029E350()
{
  {
    v0 = sub_1001116B8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E3A4()
{
  {
    v0 = sub_100111780();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E3F8()
{
  {
    v0 = sub_100111848();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E44C()
{
  {
    v0 = sub_100111910();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E4A0()
{
  {
    v0 = sub_1001119D8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E4F4()
{
  {
    v0 = sub_100111AA0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E548()
{
  {
    v0 = sub_100111B68();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E59C()
{
  {
    v0 = sub_100111C30();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E5F0()
{
  {
    v0 = sub_100111CF8();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E644()
{
  if (__cxa_guard_acquire(&qword_1002E0C00))
  {
    v0 = sub_100111DC0();
    qword_1002E0BF8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0C00);
  }
}

void sub_10029E698()
{
  {
    v0 = sub_10007A3D8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E6EC()
{
  {
    v0 = sub_10005EB48();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E740()
{
  {
    v0 = sub_100111E88();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E794()
{
  {
    v0 = sub_100111F50();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E7E8()
{
  {
    v0 = sub_100112018();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E83C()
{
  {
    v0 = sub_1001120E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029E890()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>(void)::Name = sub_100111700();
    unk_1002E15F0 = v0;
  }
}

void sub_10029E8E4()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>(void)::Name = sub_1001117C8();
    *algn_1002E1988 = v0;
  }
}

void sub_10029E938()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>(void)::Name = sub_100111890();
    *algn_1002E1088 = v0;
  }
}

void sub_10029E98C()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>(void)::Name = sub_100111958();
    unk_1002E19B0 = v0;
  }
}

void sub_10029E9E0()
{
  {
    llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>(void)::Name = sub_100111A20();
    *algn_1002E19D8 = v0;
  }
}

void sub_10029EA34()
{
  {
    llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>(void)::Name = sub_100111AE8();
    unk_1002E1A00 = v0;
  }
}

void sub_10029EA88()
{
  {
    llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>(void)::Name = sub_100111BB0();
    *algn_1002E1618 = v0;
  }
}

void sub_10029EADC()
{
  {
    llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>(void)::Name = sub_100111C78();
    *algn_1002E10D8 = v0;
  }
}

void sub_10029EB30()
{
  {
    llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100111D40();
    *algn_1002E1828 = v0;
  }
}

void sub_10029EB84()
{
  if (__cxa_guard_acquire(&qword_1002E0C18))
  {
    qword_1002E0C08 = sub_100111E08();
    unk_1002E0C10 = v0;

    __cxa_guard_release(&qword_1002E0C18);
  }
}

void sub_10029EBD8()
{
  {
    llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100111ED0();
    unk_1002E1A50 = v0;
  }
}

void sub_10029EC2C()
{
  {
    llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100111F98();
    *algn_1002E1A78 = v0;
  }
}

void sub_10029EC80()
{
  {
    llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>(void)::Name = sub_100112060();
    *algn_1002E1AC8 = v0;
  }
}

void sub_10029ECD4()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>(void)::Name = sub_100112128();
    unk_1002E1AF0 = v0;
  }
}

void sub_10029ED28()
{
  {
    v0 = sub_10011321C();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029ED7C()
{
  {
    v0 = sub_1001132E8();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029EDD0()
{
  {
    llvm::getTypeName<mlir::ConditionallySpeculatable>(void)::Name = sub_100113264();
    unk_1002E0F60 = v0;
  }
}

void sub_10029EE24()
{
  {
    llvm::getTypeName<mlir::MemoryEffectOpInterface>(void)::Name = sub_100113330();
    *algn_1002E0F88 = v0;
  }
}

void sub_10029EE78()
{
  {
    v0 = sub_10011363C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029EECC()
{
  {
    v0 = sub_100113704();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029EF20()
{
  {
    v0 = sub_100111848();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029EF74()
{
  {
    v0 = sub_1001137CC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029EFC8()
{
  {
    v0 = sub_100113894();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F01C()
{
  {
    v0 = sub_10011395C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F070()
{
  {
    v0 = sub_100113A24();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F0C4()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>(void)::Name = sub_100113684();
    unk_1002E1010 = v0;
  }
}

void sub_10029F118()
{
  {
    llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>(void)::Name = sub_10011374C();
    *algn_1002E17D8 = v0;
  }
}

void sub_10029F16C()
{
  {
    llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>(void)::Name = sub_100113814();
    unk_1002E1800 = v0;
  }
}

void sub_10029F1C0()
{
  {
    llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>(void)::Name = sub_1001138DC();
    unk_1002E1100 = v0;
  }
}

void sub_10029F214()
{
  {
    llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>(void)::Name = sub_1001139A4();
    *algn_1002E1128 = v0;
  }
}

void sub_10029F268()
{
  {
    llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100113A6C();
    unk_1002E1150 = v0;
  }
}

void sub_10029F2BC()
{
  {
    v0 = sub_10010C248();
    mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F310()
{
  if (__cxa_guard_acquire(&qword_1002E0670))
  {
    v0 = sub_1000C147C();
    qword_1002E0668 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0670);
  }
}

void sub_10029F364()
{
  {
    v0 = sub_1000676C0();
    mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F3B8()
{
  if (__cxa_guard_acquire(&qword_1002E0C90))
  {
    qword_1002E0C80 = sub_100114880();
    *algn_1002E0C88 = v0;

    __cxa_guard_release(&qword_1002E0C90);
  }
}

void sub_10029F40C()
{
  {
    v0 = sub_100099D10();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F460()
{
  if (__cxa_guard_acquire(&qword_1002E0CA8))
  {
    qword_1002E0C98 = sub_100119FE4();
    unk_1002E0CA0 = v0;
    __cxa_guard_release(&qword_1002E0CA8);
  }
}

void sub_10029F4A0()
{
  if (__cxa_guard_acquire(&qword_1002E05D0))
  {
    *&xmmword_1002E05C0 = sub_1000AE0BC();
    *(&xmmword_1002E05C0 + 1) = v0;
    __cxa_guard_release(&qword_1002E05D0);
  }
}

void sub_10029F4E0()
{
  {
    llvm::getTypeName<mlir::ShapedType>(void)::Name = sub_100067964();
    *algn_1002E0F38 = v0;
  }
}

void sub_10029F520()
{
  if (__cxa_guard_acquire(&qword_1002E0CC0))
  {
    qword_1002E0CB0 = sub_10011B6B8();
    *algn_1002E0CB8 = v0;
    __cxa_guard_release(&qword_1002E0CC0);
  }
}

void sub_10029F560()
{
  if (__cxa_guard_acquire(&qword_1002E0CD8))
  {
    qword_1002E0CC8 = sub_10011B738();
    unk_1002E0CD0 = v0;
    __cxa_guard_release(&qword_1002E0CD8);
  }
}

void sub_10029F5A0()
{
  if (__cxa_guard_acquire(&qword_1002E0550))
  {
    qword_1002E0540 = sub_10008B7E0();
    *algn_1002E0548 = v0;
    __cxa_guard_release(&qword_1002E0550);
  }
}

void sub_10029F5E0()
{
  if (__cxa_guard_acquire(&qword_1002E0538))
  {
    v0 = sub_10008B798();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10012A658(v2);
    __cxa_guard_release(&qword_1002E0538);
  }
}

void sub_10029F61C()
{
  if (__cxa_guard_acquire(&qword_1002E0CE8))
  {
    v0 = sub_100124B3C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10012A640(v2);

    __cxa_guard_release(&qword_1002E0CE8);
  }
}

void sub_10029F66C()
{
  if (__cxa_guard_acquire(&qword_1002E0D00))
  {
    qword_1002E0CF0 = sub_100124B84();
    *algn_1002E0CF8 = v0;

    __cxa_guard_release(&qword_1002E0D00);
  }
}

void sub_10029F6C0()
{
  {
    v0 = sub_10006791C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10012A64C(v2);
  }
}

void sub_10029F710()
{
  if (__cxa_guard_acquire(&qword_1002E0D10))
  {
    v0 = sub_100128150();
    qword_1002E0D08 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0D10);
  }
}

void sub_10029F764()
{
  if (__cxa_guard_acquire(&qword_1002E0D28))
  {
    qword_1002E0D18 = sub_100128198();
    unk_1002E0D20 = v0;

    __cxa_guard_release(&qword_1002E0D28);
  }
}

void sub_10029F7B8()
{
  if (__cxa_guard_acquire(&qword_1002E0538))
  {
    v0 = sub_10008B798();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10012A658(v2);

    __cxa_guard_release(&qword_1002E0538);
  }
}

void sub_10029F808()
{
  if (__cxa_guard_acquire(&qword_1002E0D38))
  {
    v0 = sub_100128C20();
    qword_1002E0D30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0D38);
  }
}

void sub_10029F85C()
{
  if (__cxa_guard_acquire(&qword_1002E0D50))
  {
    qword_1002E0D40 = sub_100128C68();
    *algn_1002E0D48 = v0;

    __cxa_guard_release(&qword_1002E0D50);
  }
}

void sub_10029F8B0()
{
  {
    v0 = sub_100110FEC();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F904()
{
  {
    v0 = sub_100110FEC();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10029F944()
{
  if (__cxa_guard_acquire(&qword_1002E0D68))
  {
    v0 = sub_10013BB28();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_10013D6E8(v2);

    __cxa_guard_release(&qword_1002E0D68);
  }
}

void sub_10029F994()
{
  if (__cxa_guard_acquire(&qword_1002E0D80))
  {
    qword_1002E0D70 = sub_10013BB70();
    *algn_1002E0D78 = v0;

    __cxa_guard_release(&qword_1002E0D80);
  }
}

void sub_10029F9E8()
{
  if (__cxa_guard_acquire(&qword_1002E0638))
  {
    v0 = sub_1000B5320();
    qword_1002E0630 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0638);
  }
}

void sub_10029FA28()
{
  if (__cxa_guard_acquire(&qword_1002E0610))
  {
    v0 = sub_1000B5158();
    qword_1002E0608 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0610);
  }
}

void sub_10029FA68()
{
  if (__cxa_guard_acquire(&qword_1002E05E8))
  {
    v0 = sub_1000B4FC8();
    qword_1002E05E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E05E8);
  }
}

void sub_10029FAA8()
{
  if (__cxa_guard_acquire(&qword_1002E0D90))
  {
    v0 = sub_100142CF4();
    qword_1002E0D88 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0D90);
  }
}

void sub_10029FAE8()
{
  if (__cxa_guard_acquire(&qword_1002E0DB8))
  {
    v0 = sub_100142DBC();
    qword_1002E0DB0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0DB8);
  }
}

uint64_t sub_10029FB28(uint64_t a1, int8x16_t *a2, unint64_t a3, void *a4, void *a5)
{
  v9 = (a1 + 336);
  *a5 = a1 + 336;
  llvm::sys::RWMutexImpl::lock_shared((a1 + 336));
  v10 = sub_10013F4C4(a1 + 160, a2, a3);
  if (*(a1 + 160) + 8 * *(a1 + 168) == v10)
  {
    llvm::sys::RWMutexImpl::unlock_shared(v9);
    llvm::sys::RWMutexImpl::lock(v9);
    return 1;
  }

  else
  {
    *a4 = *(*v10 + 8);
    llvm::sys::RWMutexImpl::unlock_shared(v9);
    return 0;
  }
}

void sub_10029FBC8()
{
  if (__cxa_guard_acquire(&qword_1002E0D90))
  {
    v0 = sub_100142CF4();
    qword_1002E0D88 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0D90);
  }
}

void sub_10029FC1C()
{
  if (__cxa_guard_acquire(&qword_1002E0DB8))
  {
    v0 = sub_100142DBC();
    qword_1002E0DB0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0DB8);
  }
}

void sub_10029FC70()
{
  off_1002E34B0();
  *v0 = 1;
  v0[1] = -4096;
  v0[6] = -4096;
  v0[11] = -4096;
  v0[16] = -4096;
  _tlv_atexit(sub_10014123C, v0);
  off_1002E34C8();
  *v1 = 1;
}

void sub_10029FCEC()
{
  if (__cxa_guard_acquire(&qword_1002E0DA8))
  {
    qword_1002E0D98 = sub_100142D3C();
    unk_1002E0DA0 = v0;

    __cxa_guard_release(&qword_1002E0DA8);
  }
}

void sub_10029FD40()
{
  if (__cxa_guard_acquire(&qword_1002E0DD0))
  {
    qword_1002E0DC0 = sub_100142E04();
    *algn_1002E0DC8 = v0;

    __cxa_guard_release(&qword_1002E0DD0);
  }
}

uint64_t *mlir::Operation::setOperands(uint64_t *result, uint64_t a2, unsigned int a3)
{
  if ((*(result + 46) & 0x80) != 0)
  {
    return mlir::detail::OperandStorage::setOperands((result + 8), result, a2, a3);
  }

  return result;
}

void mlir::Operation::dropAllReferences(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0 && *(this + 17))
  {
    v3 = *(this + 9);
    do
    {
      v4 = v3[1];
      if (v4)
      {
        v5 = *v3;
        *v4 = *v3;
        if (v5)
        {
          *(v5 + 8) = v4;
        }
      }

      sub_10014ADE4(v3);
    }

    while (!v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    sub_10014AC80();
    v8 = (v7 + 32 * *(this + 10));
    v10 = 24 * v9;
    do
    {
      mlir::Region::dropAllReferences(v8);
      v8 = (v8 + 24);
      v10 -= 24;
    }

    while (v10);
    v11 = *(this + 11);
  }

  if (*(this + 10))
  {
    sub_10014AC80();
    do
    {
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        *v13 = *v12;
        if (v14)
        {
          *(v14 + 8) = v13;
        }
      }

      sub_10014ADE4(v12);
    }

    while (!v6);
  }
}

uint64_t mlir::Operation::fold(uint64_t a1)
{
  v20 = v23;
  v22 = 6;
  if ((*(a1 + 46) & 0x80) == 0)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v2 = *(a1 + 68);
  if (v2 <= 6)
  {
    if (v2)
    {
      bzero(v23, 8 * v2);
    }

    v21 = v2;
  }

  else
  {
    v21 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v2, 8);
    bzero(v20, 8 * v2);
    v3 = *(a1 + 44);
    v21 = v2;
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(a1 + 68);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    v7 = 24;
    do
    {
      v8 = *(*(a1 + 72) + v7);
      v18 = (v20 + v5);
      v19 = v8;
      DefiningOp = mlir::Value::getDefiningOp(&v19);
      if (DefiningOp)
      {
        sub_100149D38(&v18, DefiningOp);
      }

      v7 += 32;
      v5 += 8;
    }

    while (v6 != v5);
  }

LABEL_13:
  v10 = *(**(a1 + 48) + 16);
  sub_10014AE58();
  if (v11())
  {
    v12 = 1;
    goto LABEL_22;
  }

  v13 = *(a1 + 48);
  if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v19 = *(v13 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v19);
    if (!ReferencedDialect)
    {
      goto LABEL_21;
    }
  }

  else
  {
    ReferencedDialect = *(v13 + 24);
    if (!ReferencedDialect)
    {
      goto LABEL_21;
    }
  }

  if (sub_1001490C0(ReferencedDialect))
  {
    v15 = *(*sub_1001490C0(ReferencedDialect) + 16);
    sub_10014AE58();
    v12 = v16();
    goto LABEL_22;
  }

LABEL_21:
  v12 = 0;
LABEL_22:
  if (v20 != v23)
  {
    free(v20);
  }

  return v12;
}

uint64_t mlir::Operation::clone(Operation *a1, uint64_t a2, char a3)
{
  v67 = v78;
  v76 = v78;
  v77 = 0x800000000;
  v68 = v75;
  v73 = v75;
  v74 = 0x200000000;
  if ((a3 & 2) != 0 && (*(a1 + 46) & 0x80) != 0)
  {
    v6 = *(a1 + 17);
    if (v6 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v6, 8), (*(a1 + 46) & 0x80) != 0))
    {
      v7 = *(a1 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = *(a1 + 9);
        do
        {
          v10 = *(v9 + 32 * v8 + 24);
          v11 = *(a2 + 16);
          if (v11)
          {
            v12 = *a2;
            v13 = 0x9DDFEA08EB382D69 * ((8 * *(v9 + 32 * v8 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v9 + 32 * v8 + 24)));
            v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v13 >> 47) ^ v13);
            v15 = (-348639895 * ((v14 >> 47) ^ v14)) & (v11 - 1);
            v16 = *(*a2 + 16 * v15);
            if (v16 == v10)
            {
LABEL_9:
              if (v15 != v11)
              {
                v10 = *(v12 + 16 * v15 + 8);
              }
            }

            else
            {
              while (v16 != -4096)
              {
                sub_10014ADAC();
                v16 = *(v12 + v18);
                if (v16 == v10)
                {
                  goto LABEL_9;
                }
              }
            }
          }

          v17 = v77;
          if (v77 >= HIDWORD(v77))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v77 + 1, 8);
            v17 = v77;
          }

          *(v76 + v17) = v10;
          LODWORD(v77) = v77 + 1;
          ++v8;
        }

        while (v8 != v7);
      }
    }
  }

  v19 = *(a1 + 10);
  if (HIDWORD(v74) < v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v19, 8);
  }

  mlir::SuccessorRange::SuccessorRange(&v69, a1);
  v20 = v70;
  if (v70)
  {
    v21 = 0;
    v22 = v69;
    do
    {
      v23 = *(v22 + 4 * v21 + 3);
      v24 = *(a2 + 40);
      if (v24)
      {
        v25 = *(a2 + 24);
        v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v24 - 1);
        v27 = *(v25 + 16 * v26);
        if (v27 == v23)
        {
LABEL_24:
          if (v26 != v24)
          {
            v23 = *(v25 + 16 * v26 + 8);
          }
        }

        else
        {
          while (v27 != -4096)
          {
            sub_10014ADAC();
            v27 = *(v25 + v29);
            if (v27 == v23)
            {
              goto LABEL_24;
            }
          }
        }
      }

      v28 = v74;
      if (v74 >= HIDWORD(v74))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v74 + 1, 8);
        v28 = v74;
      }

      *(v73 + v28) = v23;
      sub_10014AAF8();
      ++v21;
    }

    while (v21 != v20);
  }

  v30 = *(a1 + 3);
  v31 = *(a1 + 6);
  v32 = *(a1 + 9);
  if (v32)
  {
    v33 = a1 - 16;
  }

  else
  {
    v33 = 0;
  }

  v79 = v33;
  v80 = v32;
  mlir::ResultRange::getTypes(&v79, &v69);
  NextResultAtOffset = v69;
  v35 = v70;
  v36 = v71;
  if (v70)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v69, v70);
  }

  mlir::ValueRange::ValueRange(&v79, NextResultAtOffset, v36 - v35);
  mlir::TypeRange::TypeRange(v72, v79, v80);
  mlir::ValueRange::ValueRange(&v69, v76, v77);
  v37 = *(a1 + 7);
  if (HIBYTE(*(a1 + 11)))
  {
    v38 = a1 + 16 * ((*(a1 + 11) >> 23) & 1) + 64;
  }

  else
  {
    v38 = 0;
  }

  mlir::BlockRange::BlockRange(&v79, v73, v74);
  v39 = mlir::Operation::create(v30, v31, v72[0], v72[1], v69, v70, v37, v38, v79, v80, *(a1 + 11) & 0x7FFFFF);
  v69 = a1;
  *sub_10014924C(a2 + 48, &v69) = v39;
  if (a3)
  {
    v40 = *(a1 + 11);
    if ((v40 & 0x7FFFFF) != 0)
    {
      v41 = 0;
      do
      {
        mlir::Region::cloneInto((((a1 + 16 * ((v40 >> 23) & 1) + ((v40 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10) + 24 * v41), ((v39 + 64 + 16 * ((*(v39 + 44) >> 23) & 1) + ((*(v39 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v39 + 40) + 24 * v41, a2);
        ++v41;
        v40 = *(a1 + 11);
      }

      while (v41 != (v40 & 0x7FFFFF));
    }
  }

  v42 = *(a1 + 9);
  if (v42)
  {
    v69 = (a1 - 16);
    *sub_1001495C0(a2, &v69) = v39 - 16;
    if (v42 != 1)
    {
      *sub_10014AC64(a1 - 32, v47, v52, v57, v62, v78, v75, v69) = v39 - 32;
      if (v42 != 2)
      {
        *sub_10014AC64(a1 - 48, v48, v53, v58, v63, v67, v68, v69) = v39 - 48;
        if (v42 != 3)
        {
          *sub_10014AC64(a1 - 64, v49, v54, v59, v64, v67, v68, v69) = v39 - 64;
          if (v42 != 4)
          {
            *sub_10014AC64(a1 - 80, v50, v55, v60, v65, v67, v68, v69) = v39 - 80;
            if (v42 != 5)
            {
              *sub_10014AC64(a1 - 96, v51, v56, v61, v66, v67, v68, v69) = v39 - 96;
              if (v42 != 6)
              {
                v43 = (a1 - 120);
                v44 = v39 - 120;
                v45 = v42 - 6;
                do
                {
                  v69 = v43;
                  *sub_1001495C0(a2, &v69) = v44;
                  v43 = (v43 - 24);
                  v44 -= 24;
                  --v45;
                }

                while (v45);
              }
            }
          }
        }
      }
    }
  }

  if (v73 != v68)
  {
    free(v73);
  }

  if (v76 != v67)
  {
    free(v76);
  }

  return v39;
}

uint64_t mlir::Operation::clone()
{
  sub_10014ACA0();
  v3 = mlir::Operation::clone(v0, v1, v2);
  sub_10014AD94(v9, v10);
  sub_10014AD94(v7, v8);
  sub_10014AD94(v5, v6);
  return v3;
}

BOOL mlir::OpTrait::impl::foldCommutative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  if ((*(a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 68);
  if (v3 < 2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 72);
  v23 = v6;
  v7 = (v6 + 32 * v3);
  v8 = 32 * v3;
  v9 = v8;
  while (!*(a2 + (v5 >> 2)))
  {
    v5 += 32;
    v9 -= 32;
    if (!v9)
    {
      v10 = v7;
      return v10 != v7;
    }
  }

  v25[0] = v24;
  v25[1] = &v23;
  v10 = (v6 + v5);
  if (v9)
  {
    v11 = 0;
    for (i = v5; !*(a2 + (i >> 2)); i += 32)
    {
      v11 += 32;
      if (v9 == v11)
      {
        return v10 != v7;
      }
    }

    v13 = v8 - 32;
    v14 = v9 - v11;
    v15 = (v6 + v5 + v11);
    do
    {
      v14 -= 32;
      if (!v14)
      {
        v7 = v15;
        return v10 != v7;
      }

      v7 -= 4;
      v16 = *(a2 + (v13 >> 2));
      v13 -= 32;
    }

    while (v16);
    v17 = (v14 >> 5) + 1;
    if (v14 >> 5 < 3)
    {
      v22 = 0;
      v18 = 0;
    }

    else
    {
      if (v17 >= 0x3FFFFFFFFFFFFFFLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = (v14 >> 5) + 1;
      }

      while (1)
      {
        v19 = operator new(32 * v18, &std::nothrow);
        if (v19)
        {
          break;
        }

        v20 = v18 >> 1;
        v21 = v18 > 1;
        v18 >>= 1;
        if (!v21)
        {
          v22 = 0;
          v18 = v20;
          goto LABEL_26;
        }
      }

      v22 = v19;
    }

LABEL_26:
    v7 = sub_100149EF4(v15, v7, v25, v17, v22, v18);
    if (v22)
    {
      operator delete(v22);
    }
  }

  return v10 != v7;
}

BOOL mlir::OpTrait::impl::verifyZeroOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = sub_10014ADCC(this, __stack_chk_guard);
  if ((v3 & 0x80) == 0 || !*(v2 + 17))
  {
    return 1;
  }

  LOWORD(v41) = 257;
  mlir::Operation::emitOpError(&v45, v2, &v37);
  if (v45)
  {
    sub_10014AD88();
    v43 = "requires zero operands";
    v44 = 22;
    sub_10014AA88();
    if (v5)
    {
      sub_10014AA38();
      if (v33 <= v34 && (v32 & 1) != 0)
      {
        sub_10014AB28(v48, &v45);
        v4 = v48[0];
      }

      else
      {
        sub_10014AB28(v48, &v45);
        sub_10014ABE4();
      }
    }

    sub_10014AA08(v4);
    sub_10014AAF8();
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
  if (v45)
  {
    mlir::InFlightDiagnostic::report(&v45);
  }

  sub_10014AE10();
  if (v15)
  {
    v16 = sub_10014AD08(v7, v8, v9, v10, v11, v12, v13, v14, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], __p, v50, v51, v52, v53, v54, v55);
    if (!v15)
    {
      free(v16);
    }

    v24 = v52;
    if (v52)
    {
      sub_10014ABC0();
      if (!v15)
      {
        do
        {
          v25 = sub_10005BEF4(v25 - 1);
        }

        while (v25 != v24);
        v26 = v52;
      }

      v53 = v24;
      operator delete(v26);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = sub_10014AC24();
      if (!v15)
      {
        sub_10014AA24();
        do
        {
          if (sub_10014AC18())
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = sub_10014AB6C(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0]);
    if (!v15)
    {
      free(v30);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyNOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = a2;
  sub_10014ADCC(this, __stack_chk_guard);
  if (v4 < 0)
  {
    v5 = *(this + 17);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    return 1;
  }

  sub_10014ABCC();
  mlir::Operation::emitOpError(v8, this, v7);
  if (v95)
  {
    sub_10014AD88();
    v90 = "expected ";
    v93 = 9;
    sub_10014AA88();
    if (v10)
    {
      sub_10014AA38();
      if (v62 <= v63 && (v61 & 1) != 0)
      {
        sub_10014AAD4(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        v9 = v98;
      }

      else
      {
        sub_10014AAD4(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        sub_10014ABE4();
      }
    }

    sub_10014AA08(v9);
    sub_10014AB80();
    if (v11)
    {
      sub_10014ADC0();
      v91 = v2;
      sub_10014AB44();
      if (v10)
      {
        sub_10014AB58();
        if (v70 <= v71 && (v69 & 1) != 0)
        {
          sub_10014AA9C(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_10014AE40();
        }

        else
        {
          sub_10014AA9C(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_10014AC40();
        }
      }

      sub_10014AA64(v12, v13, v14, v15, v16, v17, v18, v19, v76, v78, v80, v82, v84, v86, v88, v91, v93, v95, v96, v97, v98, v99);
      LODWORD(v99) = v20 + 1;
      if (v95)
      {
        LODWORD(v88) = 3;
        v90 = " operands, but found ";
        v93 = 21;
        sub_10014AB44();
        if (v10)
        {
          sub_10014AB58();
          if (v74 <= v75 && (v73 & 1) != 0)
          {
            sub_10014AA9C(v72, v76, v78, v80, v82, v84, v86, v88, " operands, but found ", 21, v95, v96, v97, v98, v99);
            sub_10014AE40();
          }

          else
          {
            sub_10014AA9C(v72, v76, v78, v80, v82, v84, v86, v88, " operands, but found ", 21, v95, v96, v97, v98, v99);
            sub_10014AC40();
          }
        }

        v23 = (v21 + 24 * v99);
        v24 = v22[1].n128_u64[0];
        sub_10014AA4C(v23, *v22);
      }
    }
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v25 = *(this + 17);
  }

  if (v95)
  {
    sub_10014ADC0();
    v90 = v26;
    sub_10014AA88();
    if (v10)
    {
      sub_10014AD28();
      if (v66 <= v67 && (v65 & 1) != 0)
      {
        sub_10014AB28(v64 + 24, &v95);
        v27 = v98;
      }

      else
      {
        sub_10014AB28(v64 + 24, &v95);
        sub_10014ABE4();
      }
    }

    sub_10014AA08(v27);
    sub_10014AAF8();
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  sub_10014AE10();
  if (v36)
  {
    v37 = sub_10014AD08(v28, v29, v30, v31, v32, v33, v34, v35, v76, v78, v80, v82, v84, v86, v88, v90, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, __p, v113, v114, v115, v116, v117, v118);
    if (!v36)
    {
      free(v37);
    }

    v45 = v115;
    if (v115)
    {
      sub_10014ABC0();
      if (!v36)
      {
        do
        {
          v46 = sub_10005BEF4(v46 - 1);
        }

        while (v46 != v45);
        v47 = v115;
      }

      v116 = v45;
      operator delete(v47);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v113;
      v50 = sub_10014AC24();
      if (!v36)
      {
        sub_10014AA24();
        do
        {
          if (sub_10014AC18())
          {
            operator delete[]();
          }
        }

        while (v49 != v48);
        v50 = __p;
      }

      v113 = v48;
      operator delete(v50);
    }

    v51 = sub_10014AB6C(v37, v38, v39, v40, v41, v42, v43, v44, v77, v79, v81, v83, v85, v87, v89, v92, v94, v95, v96, v97, v98);
    if (!v36)
    {
      free(v51);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = a2;
  sub_10014ADCC(this, __stack_chk_guard);
  if (v4 < 0)
  {
    v5 = *(this + 17);
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= v2)
  {
    return 1;
  }

  sub_10014ABCC();
  mlir::Operation::emitOpError(v7, this, v6);
  if (v95)
  {
    sub_10014AD88();
    v90 = "expected ";
    v93 = 9;
    sub_10014AA88();
    if (v9)
    {
      sub_10014AA38();
      if (v62 <= v63 && (v61 & 1) != 0)
      {
        sub_10014AAD4(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        v8 = v98;
      }

      else
      {
        sub_10014AAD4(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        sub_10014ABE4();
      }
    }

    sub_10014AA08(v8);
    sub_10014AB80();
    if (v10)
    {
      sub_10014ADC0();
      v91 = v2;
      sub_10014AB44();
      if (v9)
      {
        sub_10014AB58();
        if (v70 <= v71 && (v69 & 1) != 0)
        {
          sub_10014AA9C(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_10014AE40();
        }

        else
        {
          sub_10014AA9C(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_10014AC40();
        }
      }

      sub_10014AA64(v11, v12, v13, v14, v15, v16, v17, v18, v76, v78, v80, v82, v84, v86, v88, v91, v93, v95, v96, v97, v98, v99);
      LODWORD(v99) = v19 + 1;
      if (v95)
      {
        LODWORD(v88) = 3;
        v90 = " or more operands, but found ";
        v93 = 29;
        sub_10014AB44();
        if (v9)
        {
          sub_10014AB58();
          if (v74 <= v75 && (v73 & 1) != 0)
          {
            sub_10014AA9C(v72, v76, v78, v80, v82, v84, v86, v88, " or more operands, but found ", 29, v95, v96, v97, v98, v99);
            sub_10014AE40();
          }

          else
          {
            sub_10014AA9C(v72, v76, v78, v80, v82, v84, v86, v88, " or more operands, but found ", 29, v95, v96, v97, v98, v99);
            sub_10014AC40();
          }
        }

        v22 = (v20 + 24 * v99);
        v23 = v21[1].n128_u64[0];
        sub_10014AA4C(v22, *v21);
      }
    }
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v24 = *(this + 17);
  }

  if (v95)
  {
    sub_10014ADC0();
    v90 = v25;
    sub_10014AA88();
    if (v9)
    {
      sub_10014AD28();
      if (v66 <= v67 && (v65 & 1) != 0)
      {
        sub_10014AB28(v64 + 24, &v95);
        v26 = v98;
      }

      else
      {
        sub_10014AB28(v64 + 24, &v95);
        sub_10014ABE4();
      }
    }

    sub_10014AA08(v26);
    sub_10014AAF8();
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  sub_10014AE10();
  if (v36)
  {
    v37 = sub_10014AD08(v28, v29, v30, v31, v32, v33, v34, v35, v76, v78, v80, v82, v84, v86, v88, v90, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, __p, v113, v114, v115, v116, v117, v118);
    if (!v36)
    {
      free(v37);
    }

    v45 = v115;
    if (v115)
    {
      sub_10014ABC0();
      if (!v36)
      {
        do
        {
          v46 = sub_10005BEF4(v46 - 1);
        }

        while (v46 != v45);
        v47 = v115;
      }

      v116 = v45;
      operator delete(v47);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v113;
      v50 = sub_10014AC24();
      if (!v36)
      {
        sub_10014AA24();
        do
        {
          if (sub_10014AC18())
          {
            operator delete[]();
          }
        }

        while (v49 != v48);
        v50 = __p;
      }

      v113 = v48;
      operator delete(v50);
    }

    v51 = sub_10014AB6C(v37, v38, v39, v40, v41, v42, v43, v44, v77, v79, v81, v83, v85, v87, v89, v92, v94, v95, v96, v97, v98);
    if (!v36)
    {
      free(v51);
    }
  }

  return v27;
}

BOOL mlir::OpTrait::impl::verifySameOperandsAndResultShape(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) || !mlir::OpTrait::impl::verifyAtLeastNResults(this, 1))
  {
    return 0;
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v3 = *(this + 9);
    v4 = *(this + 17);
  }

  else
  {
    sub_10014AC4C();
  }

  v80 = v3;
  v81 = v4;
  mlir::OperandRange::getTypes(&v80, &__src);
  v80 = v82;
  v81 = 0x800000000;
  v5 = __src;
  v6 = v71;
  v7 = v73;
  v8 = v73 - v71;
  if (v73 - v71 < 9)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v73 - v71, 8);
    v9 = v81;
    v10 = v81;
  }

  if (v7 != v6)
  {
    v13 = &v80[8 * v9];
    v14 = &v5[32 * v6 + 24];
    v15 = v8;
    do
    {
      v16 = *v14;
      v14 += 32;
      *v13++ = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
      --v15;
    }

    while (v15);
    v10 = v81;
  }

  LODWORD(v81) = v10 + v8;
  v17 = *(this + 9);
  v18 = this - 16;
  if (!v17)
  {
    v18 = 0;
  }

  __src = v18;
  v71 = v17;
  mlir::ResultRange::getTypes(&__src, &v62);
  v19 = v62;
  v20 = v63;
  v21 = v65;
  __src = &v72;
  v71 = 0x400000000;
  v22 = v65 - v63;
  if ((v65 - v63) < 5)
  {
    v23 = 0;
    v25 = 0;
    v24 = &v72;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v72, v65 - v63, 8);
    v23 = v71;
    v24 = __src;
    v25 = v71;
  }

  if (v21 != v20)
  {
    v26 = &v24[v23];
    do
    {
      *v26++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, v20++) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v21 != v20);
    v25 = v71;
    v24 = __src;
  }

  v27 = (v25 + v22);
  LODWORD(v71) = v27;
  v28 = v81;
  if (v81 + v27 > HIDWORD(v81))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v81 + v27, 8);
    v28 = v81;
  }

  if (v27)
  {
    memcpy(&v80[8 * v28], v24, 8 * v27);
    v28 = v81;
  }

  v29 = v28 + v27;
  LODWORD(v81) = v29;
  if (__src != &v72)
  {
    free(__src);
    v29 = v81;
  }

  mlir::TypeRange::TypeRange(&__src, v80, v29);
  if (mlir::verifyCompatibleShapes(__src, v71))
  {
    v11 = 1;
  }

  else
  {
    sub_10014ABCC();
    mlir::Operation::emitOpError(v31, this, v30);
    if (__src)
    {
      sub_10014AD88();
      v68 = "requires the same shape for all operands and results";
      v69 = 52;
      sub_10014AA88();
      if (v33)
      {
        sub_10014AA38();
        if (v59 <= v60 && (v58 & 1) != 0)
        {
          sub_10014AAD4(v50, v51, v52, v53, v54, v55, v56, v57, v61, v62, v63, v64, v65, v66);
          v32 = v73;
        }

        else
        {
          sub_10014AAD4(v50, v51, v52, v53, v54, v55, v56, v57, v61, v62, v63, v64, v65, v66);
          sub_10014ABE4();
        }
      }

      sub_10014AA08(v32);
      sub_10014AAF8();
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
    if (__src)
    {
      mlir::InFlightDiagnostic::report(&__src);
    }

    sub_10014AE10();
    if (v41)
    {
      v42 = v78;
      if (v78 != &v79)
      {
        free(v78);
      }

      v43 = v76;
      if (v76)
      {
        sub_10014ADD8();
        if (!v41)
        {
          do
          {
            v44 = sub_10005BEF4(v44 - 1);
          }

          while (v44 != v43);
          v45 = v76;
        }

        v77 = v43;
        operator delete(v45);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v75;
        v48 = sub_10014AD4C();
        if (!v41)
        {
          sub_10014AAC0();
          do
          {
            if (sub_10014AD40())
            {
              operator delete[]();
            }
          }

          while (v47 != v46);
          v48 = __p;
        }

        v75 = v46;
        operator delete(v48);
      }

      v49 = sub_10014AB6C(v42, v34, v35, v36, v37, v38, v39, v40, v61, v62, v63, v64, v65, v66, v67, v68, v69, __src, v71, v72, v73);
      if (!v41)
      {
        free(v49);
      }
    }
  }

  if (v80 != v82)
  {
    free(v80);
  }

  return v11;
}

BOOL mlir::OpTrait::impl::verifySameOperandsElementType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(this + 9) + 24));
  if ((*(this + 46) & 0x80) != 0)
  {
    v4 = *(this + 17);
    if (v4 == 1)
    {
      return 1;
    }

    v5 = *(this + 9);
  }

  else
  {
    sub_10014AC4C();
  }

  v6 = (v5 + 56);
  v7 = v4 - 1;
  while (mlir::getElementTypeOrSelf(*v6) == ElementTypeOrSelf)
  {
    v6 += 4;
    if (!--v7)
    {
      return 1;
    }
  }

  sub_10014ABF0("requires the same element type for all operands", v17, v18, v19, v20, v21, v22, v23[0]);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v10 = v28;
    if (v28)
    {
      sub_10014ABC0();
      if (!v13)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = v28;
      }

      v29 = v10;
      operator delete(v12);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v27;
      v16 = sub_10014AD4C();
      if (!v13)
      {
        sub_10014AA24();
        do
        {
          if (sub_10014AD40())
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = __p;
      }

      v27 = v14;
      operator delete(v16);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

mlir::OpTrait::impl *mlir::OpTrait::impl::verifySameOperandsAndResultType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = this;
  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) || !mlir::OpTrait::impl::verifyAtLeastNResults(v2, 1))
  {
    return 0;
  }

  v3 = (*(v2 - 1) & 0xFFFFFFFFFFFFFFF8);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v3);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v141 = v5;
  if (v5)
  {
    Encoding = mlir::RankedTensorType::getEncoding(&v141);
  }

  else
  {
    Encoding = 0;
  }

  v8 = *(v2 + 9);
  if (v8)
  {
    v9 = v2 - 16;
  }

  else
  {
    v9 = 0;
  }

  *v133 = v9;
  v134 = v8;
  mlir::ResultRange::getTypes(v133, &v141);
  v10 = v144;
  v11 = v142 + 1;
  if ((v142 + 1) != v144)
  {
    v12 = v141;
    v119 = v164;
    v124 = &v146;
    while (1)
    {
      v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v11) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::getElementTypeOrSelf(v13) != ElementTypeOrSelf || !mlir::verifyCompatibleShape(v13, v3))
      {
        break;
      }

      if (Encoding)
      {
        v14 = *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? v13 : 0;
        v138 = v14;
        if (Encoding != mlir::RankedTensorType::getEncoding(&v138))
        {
          sub_10014AE4C();
          sub_10014ACDC(v58, v59, v60, v61, v62, v63, v64, v65, v114, v164, &v146, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
          if (v141)
          {
            LODWORD(v129) = 3;
            sub_10014AD70();
            if (v31)
            {
              sub_10014AA38();
              if (v101 <= v103 && (v102 & 1) != 0)
              {
                v2 = (&v129 - v101);
                sub_10014ACC0(&v144, v94, v95, v96, v97, v98, v99, v100, v117, v122, v127);
                sub_10014AE04();
              }

              else
              {
                sub_10014ACC0(&v144, v94, v95, v96, v97, v98, v99, v100, v117, v122, v127);
                v66 = v144;
              }
            }

            sub_10014AA08(v66);
            sub_10014AC30();
          }

          mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
          sub_10014AE28();
          if (v67)
          {
            mlir::InFlightDiagnostic::report(&v141);
          }

          if ((v164[0] & 1) == 0)
          {
            return v2;
          }

          if (v163 != v122)
          {
            free(v163);
          }

          v68 = v161;
          if (v161)
          {
            sub_10014ABC0();
            if (!v36)
            {
              do
              {
                v69 = sub_10005BEF4(v69 - 1);
              }

              while (v69 != v68);
              v70 = v161;
            }

            sub_10014AE6C(v70, v117, v122, v127, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
          }

          v71 = __p;
          if (__p)
          {
            v72 = v159;
            v73 = __p;
            if (v159 != __p)
            {
              sub_10014AAC0();
              do
              {
                if (sub_10014AC18())
                {
                  operator delete[]();
                }
              }

              while (v72 != v71);
LABEL_124:
              v73 = __p;
            }

LABEL_125:
            v159 = v71;
            operator delete(v73);
          }

LABEL_126:
          v56 = v144;
          v57 = v127;
          goto LABEL_127;
        }
      }

      if (v10 == ++v11)
      {
        goto LABEL_24;
      }
    }

    sub_10014AE4C();
    sub_10014ACDC(v22, v23, v24, v25, v26, v27, v28, v29, v114, v164, &v146, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
    if (v141)
    {
      LODWORD(v129) = 3;
      sub_10014AD70();
      if (v31)
      {
        sub_10014AA38();
        if (v88 <= v90 && (v89 & 1) != 0)
        {
          v2 = (&v129 - v88);
          sub_10014AB28(&v144, &v141);
          sub_10014AE04();
        }

        else
        {
          sub_10014AB28(&v144, &v141);
          v30 = v144;
        }
      }

      sub_10014AA08(v30);
      sub_10014AC30();
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
    sub_10014AE28();
    if (v32)
    {
      mlir::InFlightDiagnostic::report(&v141);
    }

    if (v164[0] != 1)
    {
      return v2;
    }

    if (v163 != v164)
    {
      free(v163);
    }

    v33 = v161;
    if (v161)
    {
      sub_10014ABC0();
      if (!v36)
      {
        do
        {
          v34 = sub_10005BEF4(v34 - 1);
        }

        while (v34 != v33);
        v35 = v161;
      }

      sub_10014AE6C(v35, v115, v120, v125, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
    }

    v37 = __p;
    if (!__p)
    {
      goto LABEL_84;
    }

    v38 = v159;
    v39 = sub_10014AC24();
    if (v36)
    {
      goto LABEL_83;
    }

    sub_10014AA24();
    do
    {
      if (sub_10014AC18())
      {
        operator delete[]();
      }
    }

    while (v38 != v37);
    goto LABEL_82;
  }

LABEL_24:
  if ((*(v2 + 46) & 0x80) != 0)
  {
    sub_10014ADF8();
  }

  else
  {
    sub_10014AC4C();
  }

  v141 = v15;
  v142 = v16;
  mlir::OperandRange::getTypes(&v141, &v129);
  v17 = v132 - v130;
  if (v132 == v130)
  {
    return 1;
  }

  v18 = v129 + 32 * v130;
  if (Encoding)
  {
    v124 = &v146;
    for (i = v18 + 24; ; i += 32)
    {
      v20 = (*(*i + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::getElementTypeOrSelf(v20) != ElementTypeOrSelf || !mlir::verifyCompatibleShape(v20, v3))
      {
        break;
      }

      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v128 = v21;
      if (Encoding != mlir::RankedTensorType::getEncoding(&v128))
      {
        sub_10014AE4C();
        sub_10014ACDC(v74, v75, v76, v77, v78, v79, v80, v81, v114, v119, &v146, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
        if (v141)
        {
          LODWORD(v138) = 3;
          sub_10014AD58();
          if (v31)
          {
            sub_10014AA38();
            if (v111 <= v113 && (v112 & 1) != 0)
            {
              v2 = (&v138 - v111);
              sub_10014ACC0(&v144, v104, v105, v106, v107, v108, v109, v110, v118, v123, v127);
              sub_10014AE04();
            }

            else
            {
              sub_10014ACC0(&v144, v104, v105, v106, v107, v108, v109, v110, v118, v123, v127);
              v82 = v144;
            }
          }

          sub_10014AA08(v82);
          sub_10014AC30();
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
        sub_10014AE28();
        if (v83)
        {
          mlir::InFlightDiagnostic::report(&v141);
        }

        if ((v164[0] & 1) == 0)
        {
          return v2;
        }

        if (v163 != v164)
        {
          free(v163);
        }

        v84 = v161;
        if (v161)
        {
          sub_10014ABC0();
          if (!v36)
          {
            do
            {
              v85 = sub_10005BEF4(v85 - 1);
            }

            while (v85 != v84);
            v86 = v161;
          }

          sub_10014AE6C(v86, v118, v123, v127, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
        }

        v71 = __p;
        if (!__p)
        {
          goto LABEL_126;
        }

        v87 = v159;
        v73 = __p;
        if (v159 == __p)
        {
          goto LABEL_125;
        }

        sub_10014AAC0();
        do
        {
          if (sub_10014AC18())
          {
            operator delete[]();
          }
        }

        while (v87 != v71);
        goto LABEL_124;
      }

      if (!--v17)
      {
        return 1;
      }
    }
  }

  else
  {
    v40 = (*(*(v18 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::getElementTypeOrSelf(v40) == ElementTypeOrSelf)
    {
      v41 = v18 + 56;
      do
      {
        if (!mlir::verifyCompatibleShape(v40, v3))
        {
          break;
        }

        if (!--v17)
        {
          return 1;
        }

        v40 = (*(*v41 + 8) & 0xFFFFFFFFFFFFFFF8);
        v41 += 32;
      }

      while (mlir::getElementTypeOrSelf(v40) == ElementTypeOrSelf);
    }
  }

  sub_10014AE4C();
  sub_10014ACDC(v42, v43, v44, v45, v46, v47, v48, v49, v114, v119, v124, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
  if (v141)
  {
    LODWORD(v138) = 3;
    sub_10014AD58();
    if (v31)
    {
      sub_10014AA38();
      if (v91 <= v93 && (v92 & 1) != 0)
      {
        v2 = (&v138 - v91);
        sub_10014AB28(&v144, &v141);
        sub_10014AE04();
      }

      else
      {
        sub_10014AB28(&v144, &v141);
        v50 = v144;
      }
    }

    sub_10014AA08(v50);
    sub_10014AC30();
  }

  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
  sub_10014AE28();
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v141);
  }

  if (v164[0] == 1)
  {
    if (v163 != v164)
    {
      free(v163);
    }

    v52 = v161;
    if (v161)
    {
      sub_10014ABC0();
      if (!v36)
      {
        do
        {
          v53 = sub_10005BEF4(v53 - 1);
        }

        while (v53 != v52);
        v54 = v161;
      }

      sub_10014AE6C(v54, v116, v121, v126, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
    }

    v37 = __p;
    if (!__p)
    {
LABEL_84:
      v56 = v144;
      v57 = &v146;
LABEL_127:
      if (v56 != v57)
      {
        free(v56);
      }

      return v2;
    }

    v55 = v159;
    v39 = sub_10014AC24();
    if (v36)
    {
LABEL_83:
      v159 = v37;
      operator delete(v39);
      goto LABEL_84;
    }

    sub_10014AA24();
    do
    {
      if (sub_10014AC18())
      {
        operator delete[]();
      }
    }

    while (v55 != v37);
LABEL_82:
    v39 = __p;
    goto LABEL_83;
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyElementwise(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = this;
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v96.i64[0] = v4;
  v96.i64[1] = v3;
  mlir::ResultRange::getTypes(v96.i64, &__src);
  v6 = __src;
  v5 = v89;
  v7 = v90;
  v8 = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  if (v89 == *(&v90 + 1))
  {
    v9 = v90;
    v10 = v89;
  }

  else
  {
    while (1)
    {
      v11 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
      if (v12 || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      if (*(&v7 + 1) == ++v5)
      {
        v5 = *(&v7 + 1);
        break;
      }
    }

    v10 = v5;
    v5 = *(&v90 + 1);
    v9 = v90;
  }

  v96.i64[0] = v6;
  v96.i64[1] = v10;
  v97 = v7;
  __dst[0] = v9;
  __dst[1] = v5;
  v93[0] = v9;
  v93[1] = v5;
  v122 = &v124;
  v123 = &_mh_execute_header;
  sub_1001499CC(&v122, v96.i64, __dst);
  if ((*(v2 + 46) & 0x80) != 0)
  {
    sub_10014ADF8();
  }

  else
  {
    sub_10014AC4C();
  }

  v96.i64[0] = v14;
  v96.i64[1] = v15;
  mlir::OperandRange::getTypes(v96.i64, &__src);
  v16 = v89;
  if (v89 != *(&v90 + 1))
  {
    v17 = __src + 32 * v89 + 24;
    while (1)
    {
      v18 = *(*(*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      v19 = v18 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
      if (v19 || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      ++v16;
      v17 += 32;
      if (*(&v90 + 1) == v16)
      {
        v16 = *(&v90 + 1);
        break;
      }
    }
  }

  v96.i64[0] = __src;
  v96.i64[1] = v16;
  v97 = v90;
  *__dst = v90;
  *v93 = v90;
  v119 = v121;
  v120 = 0x200000000;
  sub_100149B88(&v119, v96.i64, __dst);
  if (!v123)
  {
    if (!v120)
    {
      v2 = 1;
      goto LABEL_133;
    }

    sub_10014AB94("if an operand is non-scalar, then there must be at least one non-scalar result", v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0]);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
    sub_10014AE34();
    if (v23)
    {
      mlir::InFlightDiagnostic::report(&v96);
    }

    sub_10014AE1C();
    if (!v12)
    {
      goto LABEL_133;
    }

    v32 = sub_10014ACF8(v24, v25, v26, v27, v28, v29, v30, v31, v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0], v96.i64[1], v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, __p, v112, v113, v114, v115, v116, v117);
    if (!v12)
    {
      free(v32);
    }

    v33 = v114;
    if (v114)
    {
      sub_10014ABC0();
      if (!v12)
      {
        do
        {
          v34 = sub_10005BEF4(v34 - 1);
        }

        while (v34 != v33);
        v35 = v114;
      }

      v115 = v33;
      operator delete(v35);
    }

    v36 = __p;
    if (!__p)
    {
      goto LABEL_90;
    }

    v37 = sub_10014AD18();
    if (v12)
    {
      goto LABEL_89;
    }

    sub_10014AA24();
    do
    {
      v38 = *--v8;
      *v8 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v8 != v36);
    goto LABEL_88;
  }

  if (!v120)
  {
    sub_10014AB94("if a result is non-scalar, then at least one operand must be non-scalar", v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0]);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
    sub_10014AE34();
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v96);
    }

    sub_10014AE1C();
    if (!v12)
    {
      goto LABEL_133;
    }

    v48 = sub_10014ACF8(v40, v41, v42, v43, v44, v45, v46, v47, v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0], v96.i64[1], v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, __p, v112, v113, v114, v115, v116, v117);
    if (!v12)
    {
      free(v48);
    }

    v49 = v114;
    if (v114)
    {
      sub_10014ABC0();
      if (!v12)
      {
        do
        {
          v50 = sub_10005BEF4(v50 - 1);
        }

        while (v50 != v49);
        v51 = v114;
      }

      v115 = v49;
      operator delete(v51);
    }

    v36 = __p;
    if (!__p)
    {
      goto LABEL_90;
    }

    v37 = sub_10014AD18();
    if (v12)
    {
      goto LABEL_89;
    }

    sub_10014AA24();
    do
    {
      v52 = *--v8;
      *v8 = 0;
      if (v52)
      {
        operator delete[]();
      }
    }

    while (v8 != v36);
    goto LABEL_88;
  }

  if (v123 == *(v2 + 36))
  {
    __src = &v90;
    v89 = 0x200000000;
    v96.i64[0] = v119;
    v96.i64[1] = v122;
    *&v97 = &v119[8 * v120];
    *(&v97 + 1) = &v122[8 * v123];
    *__dst = v97;
    *v93 = v97;
    sub_10014A758(&__src, &v96, __dst);
    __dst[0] = v93;
    __dst[1] = 0x400000000;
    v21 = v89;
    v22 = __src;
    if (v89)
    {
      if (__src == &v90)
      {
        v68 = v89;
        if (v89 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v93, v89, 8), v68 = v89, v22 = __src, v89))
        {
          memcpy(__dst[0], v22, 8 * v68);
          v22 = __src;
        }

        LODWORD(__dst[1]) = v21;
      }

      else
      {
        __dst[0] = __src;
        __dst[1] = v89;
        __src = &v90;
        HIDWORD(v89) = 0;
        v22 = &v90;
      }

      LODWORD(v89) = 0;
    }

    if (v22 != &v90)
    {
      free(v22);
      v21 = __dst[1];
    }

    if (v21)
    {
      v69 = 8 * v21;
      v70 = __dst[0];
      while (*(**v70 + 136) == *(**__dst[0] + 136))
      {
        v70 += 8;
        v69 -= 8;
        if (!v69)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
LABEL_105:
      mlir::TypeRange::TypeRange(&v96, __dst[0], v21);
      if (mlir::verifyCompatibleShapes(v96.i64[0], v96.u64[1]))
      {
        v2 = 1;
        goto LABEL_131;
      }
    }

    LOWORD(v91) = 257;
    mlir::Operation::emitOpError(v96.i64, v2, &__src);
    if (v96.i64[0])
    {
      LODWORD(v85) = 3;
      v86 = "all non-scalar operands/results must have the same shape and base type";
      v87 = 70;
      v71 = *(&v97 + 1);
      if (v98 >= HIDWORD(v98))
      {
        sub_10014AA38();
        if (v82 <= v84 && (v83 & 1) != 0)
        {
          v2 = &v85 - v82;
          sub_10014AB08(&v96);
          v71 = *(&v97 + 1);
        }

        else
        {
          sub_10014AB08(&v96);
          v71 = *(&v97 + 1);
        }
      }

      sub_10014AA08(v71);
      LODWORD(v98) = v98 + 1;
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
    sub_10014AE34();
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v96);
    }

    sub_10014AE1C();
    if (v12)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v73 = v114;
      if (v114)
      {
        sub_10014ADD8();
        if (!v12)
        {
          do
          {
            v74 = sub_10005BEF4(v74 - 1);
          }

          while (v74 != v73);
          v75 = v114;
        }

        v115 = v73;
        operator delete(v75);
      }

      v76 = __p;
      if (__p)
      {
        v77 = v112;
        v78 = __p;
        if (v112 != __p)
        {
          sub_10014AAC0();
          do
          {
            v79 = *--v77;
            *v77 = 0;
            if (v79)
            {
              operator delete[]();
            }
          }

          while (v77 != v76);
          v78 = __p;
        }

        v112 = v76;
        operator delete(v78);
      }

      sub_10014AC58();
      if (!v12)
      {
        free(v80);
      }
    }

LABEL_131:
    v67 = __dst[0];
    if (__dst[0] == v93)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  sub_10014AB94("if an operand is non-scalar, then all results must be non-scalar", v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0]);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
  sub_10014AE34();
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v96);
  }

  sub_10014AE1C();
  if (v12)
  {
    v62 = sub_10014ACF8(v54, v55, v56, v57, v58, v59, v60, v61, v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0], v96.i64[1], v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, __p, v112, v113, v114, v115, v116, v117);
    if (!v12)
    {
      free(v62);
    }

    v63 = v114;
    if (v114)
    {
      sub_10014ABC0();
      if (!v12)
      {
        do
        {
          v64 = sub_10005BEF4(v64 - 1);
        }

        while (v64 != v63);
        v65 = v114;
      }

      v115 = v63;
      operator delete(v65);
    }

    v36 = __p;
    if (!__p)
    {
LABEL_90:
      sub_10014AC58();
      if (!v12)
      {
LABEL_132:
        free(v67);
        goto LABEL_133;
      }

      goto LABEL_133;
    }

    v37 = sub_10014AD18();
    if (v12)
    {
LABEL_89:
      v112 = v36;
      operator delete(v37);
      goto LABEL_90;
    }

    sub_10014AA24();
    do
    {
      v66 = *--v8;
      *v8 = 0;
      if (v66)
      {
        operator delete[]();
      }
    }

    while (v8 != v36);
LABEL_88:
    v37 = __p;
    goto LABEL_89;
  }

LABEL_133:
  if (v119 != v121)
  {
    free(v119);
  }

  if (v122 != &v124)
  {
    free(v122);
  }

  return v2;
}

void sub_1002A22EC()
{
  if (__cxa_guard_acquire(&qword_1002E0DE0))
  {
    v0 = sub_100149184();
    qword_1002E0DD8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0DE0);
  }
}

void sub_1002A2340()
{
  if (__cxa_guard_acquire(&qword_1002E0DF8))
  {
    qword_1002E0DE8 = sub_1001491CC();
    unk_1002E0DF0 = v0;

    __cxa_guard_release(&qword_1002E0DF8);
  }
}

void sub_1002A2394()
{
  {
    v0 = sub_1000D6A94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A23E8()
{
  {
    llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>(void)::Name = sub_10014A988();
    *algn_1002E1178 = v0;
  }
}

uint64_t mlir::MutableOperandRange::operator mlir::OperandRange(uint64_t a1)
{
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v1 = *(*a1 + 72);
  }

  else
  {
    v1 = 0;
  }

  return sub_10014CC58(a1, v1);
}

void *sub_1002A2458(_DWORD **a1, mlir::Operation *a2)
{
  v51 = a2;
  llvm::SHA1::update(*a1, &v51, 8uLL);
  v10 = v51;
  if (v51 != *a1[1])
  {
    v11 = *a1;
    ParentOp = *(v51 + 2);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    sub_10014CC80(ParentOp, v3, v4, v5, v6, v7, v8, v9, v44, v48);
    v10 = v51;
  }

  sub_10014CC64(*a1, *(v10 + 7), v44, v48);
  v13 = *a1;
  v14 = mlir::Operation::hashProperties(v51);
  sub_10014CC80(v14, v15, v16, v17, v18, v19, v20, v21, v45, v48);
  v22 = v51;
  v23 = *(v51 + 11);
  if ((v23 & 0x7FFFFF) != 0)
  {
    v24 = ((v51 + 16 * ((v23 >> 23) & 1) + ((v23 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v51 + 10);
    v25 = v24 + 24 * (v23 & 0x7FFFFF);
    do
    {
      for (i = *(v24 + 8); i != v24; i = *(i + 8))
      {
        if (i)
        {
          v27 = (i - 8);
        }

        else
        {
          v27 = 0;
        }

        v28 = *a1;
        v48 = v27;
        llvm::SHA1::update(v28, &v48, 8uLL);
        v29 = *(v27 + 6);
        v30 = *(v27 + 7);
        while (v29 != v30)
        {
          v31 = *v29++;
          sub_10014CCA0(v31, v46, v48);
        }
      }

      v24 += 24;
    }

    while (v24 != v25);
    v22 = v51;
  }

  sub_10014CC64(*a1, *(v22 + 3), v46, v48);
  v32 = v51;
  if ((*(v51 + 46) & 0x80) != 0)
  {
    v33 = *(v51 + 17);
    if (v33)
    {
      v34 = (*(v51 + 9) + 24);
      do
      {
        v35 = *v34;
        v34 += 4;
        sub_10014CCA0(v35, v47, v48);
        --v33;
      }

      while (v33);
      v32 = v51;
    }
  }

  v36 = *(v32 + 10);
  if (v36)
  {
    v37 = 24;
    do
    {
      sub_10014CC64(*a1, *(((v51 + 16 * ((*(v51 + 11) >> 23) & 1) + ((*(v51 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v37), v47, v48);
      v37 += 32;
      --v36;
    }

    while (v36);
    v32 = v51;
  }

  v38 = *(v32 + 9);
  v39 = v32 - 16;
  if (!v38)
  {
    v39 = 0;
  }

  v52[0] = v39;
  v52[1] = v38;
  result = mlir::ResultRange::getTypes(v52, &v48);
  v41 = v49;
  v42 = v50;
  if (v49 != v50)
  {
    v43 = v48;
    do
    {
      v52[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v43, v41) + 8) & 0xFFFFFFFFFFFFFFF8;
      result = llvm::SHA1::update(*a1, v52, 8uLL);
      ++v41;
    }

    while (v42 != v41);
  }

  return result;
}

void sub_1002A2678()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>(void)::Name = sub_10014CBD8();
    unk_1002E12C0 = v0;
  }
}

void sub_1002A26CC()
{
  {
    v0 = sub_10005EB48();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100153D8C(v2);
  }
}

void sub_1002A2708()
{
  {
    v0 = sub_100110EF8();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A275C()
{
  {
    v0 = sub_100110EF8();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A279C()
{
  {
    v0 = sub_1001522D4();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A27F0()
{
  {
    v0 = sub_1001522D4();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A2830()
{
  {
    llvm::getTypeName<mlir::SymbolUserOpInterface>(void)::Name = sub_10015231C();
    unk_1002E17A0 = v0;
  }
}

void sub_1002A2884()
{
  {
    v0 = sub_10005EB48();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100153D8C(v2);
  }
}

unint64_t mlir::OpOperand::getOperandNumber(mlir::OpOperand *this)
{
  v1 = *(this + 2);
  if ((*(v1 + 46) & 0x80) != 0)
  {
    v2 = *(v1 + 72);
  }

  else
  {
    v2 = 0;
  }

  return (this - v2) >> 5;
}

void sub_1002A28F8()
{
  {
    {
      {
        llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name = sub_10007A420();
        *algn_1002E1668 = v0;
      }
    }

    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name, *algn_1002E1668);
  }
}

void sub_1002A2990()
{
  off_1002E34E0();
  sub_10015BEA4(v0, COERCE_DOUBLE(1));
  _tlv_atexit(sub_10015A490, v1);
  off_1002E34F8();
  *v2 = 1;
}

void sub_1002A29F8()
{
  off_1002E3510();
  sub_10015BEA4(v0, COERCE_DOUBLE(1));
  _tlv_atexit(sub_10015B5FC, v1);
  off_1002E3528();
  *v2 = 1;
}

void sub_1002A2A60()
{
  if (__cxa_guard_acquire(&qword_1002E53F8))
  {
    llvm::sys::RWMutexImpl::RWMutexImpl(&unk_1002E5400);
    unk_1002E5408 = 0u;
    qword_1002E5418 = 0;
    unk_1002E5420 = &unk_1002E5430;
    qword_1002E5428 = 0x400000000;
    qword_1002E5450 = &qword_1002E5460;
    unk_1002E5458 = 0u;
    unk_1002E5468 = 0u;
    *(&qword_1002E5470 + 4) = 0u;
    __cxa_atexit(sub_10015C024, &unk_1002E5400, &_mh_execute_header);

    __cxa_guard_release(&qword_1002E53F8);
  }
}

void sub_1002A2B0C()
{
  if (__cxa_guard_acquire(&qword_1002E0E08))
  {
    v0 = sub_10015D028();
    qword_1002E0E00 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0E08);
  }
}

void sub_1002A2B60()
{
  if (__cxa_guard_acquire(&qword_1002E0E20))
  {
    qword_1002E0E10 = sub_10015D070();
    *algn_1002E0E18 = v0;

    __cxa_guard_release(&qword_1002E0E20);
  }
}

void sub_1002A2BBC()
{
  if (__cxa_guard_acquire(&qword_1002E0E08))
  {
    v0 = sub_10015D028();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100167CE0(v2);

    __cxa_guard_release(&qword_1002E0E08);
  }
}

void sub_1002A2C0C()
{
  {
    v0 = sub_10007A3D8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100167CEC(v2);
  }
}

void sub_1002A2C48()
{
  if (__cxa_guard_acquire(&qword_1002E0E08))
  {
    v0 = sub_10015D028();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100167CE0(v2);
    __cxa_guard_release(&qword_1002E0E08);
  }
}

void sub_1002A2C84()
{
  {
    v0 = sub_10007A3D8();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100167CEC(v2);
  }
}

void sub_1002A2CD4()
{
  if (__cxa_guard_acquire(&qword_1002E0E30))
  {
    v0 = sub_100165878();
    qword_1002E0E28 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002E0E30);
  }
}

void sub_1002A2D14()
{
  {
    {
      {
        llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name = sub_10007A420();
        *algn_1002E1668 = v1;
      }
    }

    v0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name, *algn_1002E1668);
    sub_100167CEC(v0);
  }
}

void sub_1002A2DA8()
{
  if (__cxa_guard_acquire(&qword_1002E0E30))
  {
    v0 = sub_100165878();
    qword_1002E0E28 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002E0E30);
  }
}

void sub_1002A2DFC()
{
  if (__cxa_guard_acquire(&qword_1002E0E48))
  {
    qword_1002E0E38 = sub_1001658C0();
    unk_1002E0E40 = v0;

    __cxa_guard_release(&qword_1002E0E48);
  }
}

void sub_1002A2E50()
{
  if (__cxa_guard_acquire(&qword_1002E5488))
  {
    llvm::sys::AddSignalHandler(mlir::detail::RecoveryReproducerContext::crashHandler, 0, v0);

    __cxa_guard_release(&qword_1002E5488);
  }
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  result = *(a2 + 72);
  v3 = *(a2 + 68);
  return result;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::IfOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::InvokeOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  result = *(a2 + 72);
  v3 = *(a2 + 68);
  return result;
}

void sub_1002A2F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 72);
    v6 = *(a2 + 68);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v17 = a3;
  v18 = 0;
  v19 = v5;
  v20 = 0;
  if (a4 && v6)
  {
    v7 = 0;
    do
    {
      v8 = mlir::ValueRange::dereference_iterator(&v17, v7);
      v9 = v20;
      v10 = *v8;
      if (*v8)
      {
        v11 = *(v19 + 32 * v20 + 24);
        do
        {
          v12 = v10[1];
          if (v12)
          {
            v13 = *v10;
            *v12 = *v10;
            if (v13)
            {
              *(v13 + 8) = v12;
            }
          }

          v10[3] = v11;
          v14 = *v11;
          *v10 = *v11;
          v10[1] = v11;
          if (v14)
          {
            *(v14 + 8) = v10;
          }

          *v11 = v10;
          v10 = *v8;
        }

        while (*v8);
      }

      v7 = v18 + 1;
      v15 = v9 + 1;
      v18 = v7;
      v20 = v15;
    }

    while (v7 != a4 && v15 != v6);
  }
}

void sub_1002A3030()
{
  {
    v0 = sub_1001E2D90();
    mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3088()
{
  {
    v0 = sub_100099D10();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A30CC()
{
  {
    v0 = sub_10006BD98();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.constant";
  *(a2 + 24) = 15;
}

void sub_1002A3154()
{
  {
    v0 = sub_10011321C();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A31AC()
{
  {
    v0 = sub_1001132E8();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3204()
{
  {
    v0 = sub_1000B1474();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A325C()
{
  {
    v0 = sub_10018A66C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A32B4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>(void)::Name = sub_10018A6B4();
    *algn_1002E0FD8 = v0;
  }
}

void sub_1002A3308()
{
  {
    v0 = sub_10011363C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3360()
{
  {
    v0 = sub_10018AAF4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A33B8()
{
  {
    v0 = sub_10018ABBC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3410()
{
  {
    v0 = sub_100111848();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3468()
{
  {
    v0 = sub_10018AC84();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A34C0()
{
  {
    v0 = sub_100111C30();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3518()
{
  {
    v0 = sub_100113894();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3570()
{
  {
    v0 = sub_10011395C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A35C8()
{
  {
    v0 = sub_100113A24();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3620()
{
  {
    v0 = sub_10014A940();
    mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3678()
{
  {
    v0 = sub_10018AD4C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A36D0()
{
  {
    v0 = sub_10018AE14();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3728()
{
  {
    v0 = sub_10018AEDC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3780()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>(void)::Name = sub_10018AB3C();
    *algn_1002E1038 = v0;
  }
}

void sub_1002A37D4()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>(void)::Name = sub_10018AC04();
    unk_1002E1060 = v0;
  }
}

void sub_1002A3828()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>(void)::Name = sub_10018ACCC();
    unk_1002E10B0 = v0;
  }
}

void sub_1002A387C()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>(void)::Name = sub_10018AD94();
    unk_1002E11A0 = v0;
  }
}

void sub_1002A38D0()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10018AE5C();
    *algn_1002E11C8 = v0;
  }
}

void sub_1002A3924()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10018AF24();
    unk_1002E11F0 = v0;
  }
}

void sub_1002A3978()
{
  {
    v0 = sub_10018BF20();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A39D0()
{
  {
    v0 = sub_10018C08C();
    mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3A28()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>(void)::Name = sub_10018BF68();
    *algn_1002E1238 = v0;
  }
}

void sub_1002A3A7C()
{
  {
    llvm::getTypeName<mlir::InferShapedTypeOpInterface>(void)::Name = sub_10018C0D4();
    unk_1002E1260 = v0;
  }
}

void sub_1002A3AD0()
{
  {
    v0 = sub_10018C7BC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3B28()
{
  {
    v0 = sub_10014CB90();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3B80()
{
  {
    v0 = sub_10018C884();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3BD8()
{
  {
    v0 = sub_10018C94C();
    mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3C30()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>(void)::Name = sub_10018C804();
    *algn_1002E1298 = v0;
  }
}

void sub_1002A3C84()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10018C8CC();
    *algn_1002E12E8 = v0;
  }
}

void sub_1002A3CD8()
{
  {
    llvm::getTypeName<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10018C994();
    unk_1002E1310 = v0;
  }
}

void sub_1002A3D2C()
{
  {
    v0 = sub_10018D0A4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3D84()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>(void)::Name = sub_10018D0EC();
    unk_1002E1340 = v0;
  }
}

void sub_1002A3DD8()
{
  {
    v0 = sub_10018D4E4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3E30()
{
  {
    v0 = sub_10018D5AC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3E88()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>(void)::Name = sub_10018D52C();
    *algn_1002E1378 = v0;
  }
}

void sub_1002A3EDC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>(void)::Name = sub_10018D5F4();
    unk_1002E13A0 = v0;
  }
}

void sub_1002A3F30()
{
  {
    v0 = sub_10018EC94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A3F88()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>>(void)::Name = sub_10018ECDC();
    unk_1002E13E0 = v0;
  }
}

void sub_1002A3FDC()
{
  {
    v0 = sub_10018FD5C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4034()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>(void)::Name = sub_10018FDA4();
    *algn_1002E1438 = v0;
  }
}

void sub_1002A4088()
{
  {
    v0 = sub_100192774();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A40E0()
{
  {
    v0 = sub_10019283C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4138()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>(void)::Name = sub_1001927BC();
    *algn_1002E14D8 = v0;
  }
}

void sub_1002A418C()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>(void)::Name = sub_100192884();
    unk_1002E1500 = v0;
  }
}

void sub_1002A41E0()
{
  {
    v0 = sub_100193C40();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4238()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>(void)::Name = sub_100193C88();
    *algn_1002E1558 = v0;
  }
}

void sub_1002A428C()
{
  {
    v0 = sub_1001951B8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A42E4()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>(void)::Name = sub_100195200();
    unk_1002E15B0 = v0;
  }
}

void sub_1002A4338()
{
  {
    v0 = sub_1001116B8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4390()
{
  {
    v0 = sub_100111B68();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A43E8()
{
  {
    v0 = sub_100195D1C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4440()
{
  {
    v0 = sub_10007A3D8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4498()
{
  {
    v0 = sub_100195DE4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A44F0()
{
  {
    llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>(void)::Name = sub_100195D64();
    unk_1002E1640 = v0;
  }
}

void sub_1002A4544()
{
  {
    llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>(void)::Name = sub_100195E2C();
    unk_1002E1690 = v0;
  }
}

void sub_1002A4598()
{
  {
    v0 = sub_10009326C();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A45F0()
{
  {
    v0 = sub_1001522D4();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4648()
{
  {
    v0 = sub_10019B31C();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A46A0()
{
  {
    v0 = sub_10006BD98();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A46F8()
{
  {
    v0 = sub_10019B31C();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A473C()
{
  {
    llvm::getTypeName<mlir::CallOpInterface>(void)::Name = sub_10019B364();
    *algn_1002E1778 = v0;
  }
}

void sub_1002A4790()
{
  {
    v0 = sub_100113704();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A47E8()
{
  {
    v0 = sub_1001137CC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4840()
{
  {
    v0 = sub_100111CF8();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4898()
{
  {
    v0 = sub_10019B6C8();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A48F0()
{
  {
    v0 = sub_10019B790();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4948()
{
  {
    llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10019B710();
    unk_1002E1850 = v0;
  }
}

void sub_1002A499C()
{
  {
    llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10019B7D8();
    *algn_1002E1878 = v0;
  }
}

void sub_1002A49F0()
{
  {
    v0 = sub_10007A4A0();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4A48()
{
  {
    v0 = sub_100110FEC();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4AA0()
{
  {
    v0 = sub_100110EF8();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4AF8()
{
  {
    v0 = sub_10019E0D8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4B50()
{
  {
    v0 = sub_10019E0D8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4B94()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(void)::Name = sub_10019E120();
    *algn_1002E1928 = v0;
  }
}

void sub_1002A4BE8()
{
  {
    v0 = sub_100111780();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4C40()
{
  {
    v0 = sub_100111910();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4C98()
{
  {
    v0 = sub_1001119D8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4CF0()
{
  {
    v0 = sub_100111AA0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4D48()
{
  {
    v0 = sub_10005EB48();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4DA0()
{
  {
    v0 = sub_100111E88();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4DF8()
{
  {
    v0 = sub_100111F50();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4E50()
{
  {
    v0 = sub_10019E768();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4EA8()
{
  {
    v0 = sub_100112018();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4F00()
{
  {
    v0 = sub_1001120E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A4F58()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10019E7B0();
    unk_1002E1AA0 = v0;
  }
}

void sub_1002A4FAC()
{
  {
    v0 = sub_10019F5BC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5004()
{
  {
    llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>>(void)::Name = sub_10019F604();
    unk_1002E1B50 = v0;
  }
}

void sub_1002A5058()
{
  {
    v0 = sub_100296F20();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A50B0()
{
  {
    v0 = sub_1001A0194();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5108()
{
  {
    v0 = sub_1001A025C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5160()
{
  {
    v0 = sub_100080F94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A51B8()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl>(void)::Empty>>(void)::Name = sub_1001A01DC();
    unk_1002E1BE0 = v0;
  }
}

void sub_1002A520C()
{
  {
    llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001A02A4();
    *algn_1002E1C08 = v0;
  }
}

void sub_1002A5260()
{
  {
    v0 = sub_1001A140C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HashableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A52B8()
{
  {
    v0 = sub_1001A1344();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::HashableAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5310()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::HashableAttrInterface>(void)::Name = sub_1001A138C();
    unk_1002E1C60 = v0;
  }
}

void sub_1002A5364()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::HashableOpInterface>(void)::Name = sub_1001A1454();
    *algn_1002E1C88 = v0;
  }
}

void sub_1002A53B8()
{
  {
    v0 = sub_1000D6A94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5410()
{
  {
    v0 = sub_1001A1C90();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5468()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001A1CD8();
    *algn_1002E1CE8 = v0;
  }
}

void sub_1002A54BC()
{
  {
    v0 = sub_10019283C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5514()
{
  {
    v0 = sub_1001A64EC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A556C()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl>(void)::Empty>>(void)::Name = sub_1001A6534();
    unk_1002E1DE0 = v0;
  }
}

void sub_1002A55C0()
{
  {
    v0 = sub_10018FD5C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5618()
{
  {
    v0 = sub_1001A799C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5670()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>(void)::Name = sub_1001A79E4();
    *algn_1002E1E28 = v0;
  }
}

void sub_1002A56C4()
{
  {
    v0 = sub_100113704();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A571C()
{
  {
    v0 = sub_1001137CC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5774()
{
  {
    v0 = sub_1001A7DDC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A57CC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>(void)::Empty>>(void)::Name = sub_1001A7E24();
    unk_1002E1E60 = v0;
  }
}

void sub_1002A5820()
{
  {
    v0 = sub_100195D1C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5878()
{
  {
    v0 = sub_100195DE4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A58D0()
{
  {
    v0 = sub_1001A9FA4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5928()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>(void)::Name = sub_1001A9FEC();
    unk_1002E1F10 = v0;
  }
}

void sub_1002A597C()
{
  {
    v0 = sub_100111E88();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A59D4()
{
  {
    v0 = sub_10007A4A0();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5A2C()
{
  {
    v0 = sub_1001AECB0();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5A84()
{
  {
    llvm::getTypeName<mlir::CallableOpInterface>(void)::Name = sub_1001AECF8();
    *algn_1002E2028 = v0;
  }
}

void sub_1002A5AD8()
{
  {
    v0 = sub_100005EBC();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5B30()
{
  {
    v0 = sub_1001B0354();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5B88()
{
  {
    v0 = sub_1001B041C();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5BE0()
{
  {
    v0 = sub_100111F50();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5C38()
{
  {
    v0 = sub_10019E768();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5C90()
{
  {
    llvm::getTypeName<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001B039C();
    *algn_1002E2088 = v0;
  }
}

void sub_1002A5CE4()
{
  {
    llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001B0464();
    unk_1002E20B0 = v0;
  }
}

void sub_1002A5D38()
{
  {
    v0 = sub_1001522D4();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5D90()
{
  {
    v0 = sub_10019B790();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5DE8()
{
  {
    v0 = sub_1001B6B7C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5E40()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ImportableOpInterface>(void)::Name = sub_1001B6BC4();
    *algn_1002E21F8 = v0;
  }
}

void sub_1002A5E94()
{
  {
    v0 = sub_1001B7064();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5EEC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001B70AC();
    unk_1002E2230 = v0;
  }
}

void sub_1002A5F40()
{
  {
    v0 = sub_10029663C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5F98()
{
  {
    v0 = sub_1001B98D4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A5FF0()
{
  {
    v0 = sub_1001119D8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6048()
{
  {
    v0 = sub_1001B999C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A60A0()
{
  {
    v0 = sub_1001B9A64();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A60F8()
{
  {
    llvm::getTypeName<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>>(void)::Name = sub_1001B991C();
    *algn_1002E2308 = v0;
  }
}

void sub_1002A614C()
{
  {
    llvm::getTypeName<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001B99E4();
    unk_1002E2330 = v0;
  }
}

void sub_1002A61A0()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>>(void)::Name = sub_1001B9AAC();
    *algn_1002E2358 = v0;
  }
}

void sub_1002A61F4()
{
  {
    v0 = sub_10006BD98();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A624C()
{
  {
    v0 = sub_1001951B8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A62A4()
{
  {
    v0 = sub_1001C0DDC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A62FC()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl>(void)::Empty>>(void)::Name = sub_1001C0E24();
    *algn_1002E2518 = v0;
  }
}

void sub_1002A6350()
{
  {
    v0 = sub_100110FEC();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A63A8()
{
  {
    v0 = sub_100111AA0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6400()
{
  {
    v0 = sub_100112018();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6458()
{
  {
    v0 = sub_1001120E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A64B0()
{
  {
    v0 = sub_10018EC94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6508()
{
  {
    v0 = sub_1001C7908();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6560()
{
  {
    v0 = sub_100080F94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A65B8()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl>(void)::Empty>>(void)::Name = sub_1001C7950();
    *algn_1002E2678 = v0;
  }
}

void sub_1002A660C()
{
  {
    v0 = sub_1001CBB9C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6664()
{
  {
    llvm::getTypeName<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>>(void)::Name = sub_1001CBBE4();
    unk_1002E2750 = v0;
  }
}

void sub_1002A66B8()
{
  {
    v0 = sub_1001CFDA8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6710()
{
  {
    llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>>(void)::Name = sub_1001CFDF0();
    unk_1002E2820 = v0;
  }
}

void sub_1002A6764()
{
  {
    v0 = sub_1001D0654();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A67BC()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl>(void)::Empty>>(void)::Name = sub_1001D069C();
    unk_1002E2880 = v0;
  }
}

void sub_1002A6810()
{
  {
    v0 = sub_1001D8680();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6868()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>>(void)::Name = sub_1001D86C8();
    *algn_1002E2A18 = v0;
  }
}

void sub_1002A68BC()
{
  {
    v0 = sub_100296F20();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6914()
{
  {
    v0 = sub_1001A025C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A696C()
{
  {
    v0 = sub_1001E2580();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A69C4()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>>(void)::Name = sub_1001E25C8();
    unk_1002E2C00 = v0;
  }
}

void sub_1002A6A18()
{
  {
    llvm::getTypeName<mlir::DialectInlinerInterface>(void)::Name = sub_1001E2DD8();
    unk_1002E2C30 = v0;
  }
}

void sub_1002A6A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.cast";
  *(a2 + 24) = 11;
}

void sub_1002A6AB0()
{
  {
    v0 = sub_1001E50A4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6B08()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr>(void)::Name = sub_1001E50EC();
    unk_1002E2C80 = v0;
  }
}

void sub_1002A6B5C()
{
  {
    v0 = sub_1001E51D4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6BB4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>>(void)::Name = sub_1001E521C();
    *algn_1002E2CA8 = v0;
  }
}

void sub_1002A6C08()
{
  {
    v0 = sub_10008B9F4();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6C4C()
{
  {
    v0 = sub_1001E60B4();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6CA4()
{
  {
    llvm::getTypeName<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>>(void)::Name = sub_1001E60FC();
    *algn_1002E2CF8 = v0;
  }
}

void sub_1002A6CF8()
{
  {
    v0 = sub_1001E6A38();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6D50()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface>(void)::Name = sub_1001E6A80();
    unk_1002E2D20 = v0;
  }
}

void sub_1002A6DA4()
{
  {
    v0 = sub_1000EB2B0();
    mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6DFC()
{
  {
    v0 = sub_1001E6B84();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002A6E54()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>>(void)::Name = sub_1001E6BCC();
    unk_1002E2D70 = v0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::YieldOp::getMutableSuccessorOperands@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100275728(a1, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return sub_1002750D8(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::getMutableSuccessorOperands@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100275728(a1, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68) - 1;
  }

  else
  {
    v5 = -1;
  }

  return sub_1002750D8(v2, v3, 1, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getEntrySuccessorOperands(uint64_t *a1)
{
  v1 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 68);
  return *(v1 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::print(mlir::ODIE::Compiler::CoreML::SetMemberOp *this, mlir::OpAsmPrinter *a2)
{
  sub_10027566C();
  sub_1002755C8(v6, v7);
  v10 = (*(v8 + 16))(v9);
  v11 = sub_1000D2EF8(v10);
  if (v13)
  {
    llvm::raw_ostream::write(v11, "(", 1uLL);
  }

  else
  {
    sub_1000D2E38(v11, v12);
  }

  v14 = *(*(*v3 + 9) + 24);
  sub_100114D20();
  (*(v15 + 160))(v2);
  sub_100114D20();
  v17 = (*(v16 + 16))(v2);
  v18 = sub_100114D3C(v17);
  if (!v13 & v20)
  {
    *v19 = 8236;
    sub_100114D2C(v18);
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

  v21 = *(*(*v3 + 9) + 56);
  sub_100114D20();
  (*(v22 + 160))(v2);
  sub_100114D20();
  v24 = (*(v23 + 16))(v2);
  v25 = sub_100114D3C(v24);
  if (!v13 & v20)
  {
    *v26 = 8233;
    sub_100114D2C(v25);
  }

  else
  {
    llvm::raw_ostream::write(v25, ") ", 2uLL);
  }

  v27 = sub_1001F42DC(v3);
  v28 = *(*v27 + 136);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v72[0] = v29;
  if (v29)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v72);
LABEL_15:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_16;
  }

  Value = v27;
  if (!v27 || v28 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_15;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v27);
LABEL_16:
  v31 = (*(*v2 + 16))(v2);
  v32 = sub_100275438(v31);
  if (v34 > 2)
  {
    sub_1002752D4(v32, v33);
  }

  else
  {
    llvm::raw_ostream::write(v32, " : ", 3uLL);
  }

  sub_1002755BC();
  if (v35 < 0)
  {
    sub_100275644();
  }

  else
  {
    sub_10014AC4C();
  }

  v71[1] = v45;
  v46 = sub_1002757E0(v36, v37, v38, v39, v40, v41, v42, v43, v70, v44);
  mlir::OperandRange::getTypes(v46, v47);
  sub_100275688();
  if (!v13)
  {
    v48 = (v72[0] + 32 * v4);
    v49 = *(v48[3] + 8);
    sub_100114D20();
    v51 = *(v50 + 32);
    v52 = sub_100114D64();
    v53(v52);
    if (v4 + 1 != v5)
    {
      sub_100275678();
      do
      {
        v54 = (*(*v2 + 16))(v2);
        v55 = sub_100114D3C(v54);
        if (!v13 & v20)
        {
          *v56 = 8236;
          sub_100114D2C(v55);
        }

        else
        {
          llvm::raw_ostream::write(v55, ", ", 2uLL);
        }

        v57 = *v48;
        v48 += 4;
        v58 = *(v57 + 8);
        sub_100114D20();
        v60 = *(v59 + 32);
        v61 = sub_100114D64();
        v62(v61);
        --v5;
      }

      while (v5);
    }
  }

  v72[0] = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(v72);
  sub_1002753D0();
  v71[0] = *v63;
  v72[0] = mlir::StringAttr::getValue(v71);
  v72[1] = v64;
  sub_100114D20();
  v66 = *(v65 + 200);
  v67 = sub_1002755D4();
  return v68(v67);
}

uint64_t *sub_1002A72E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 72);
    v3 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v5[0] = v2;
  v5[1] = v3;
  return mlir::OperandRange::getTypes(v5, a2);
}

void sub_1002A732C(uint64_t a1, uint64_t a2, mlir::Block *this)
{
  Terminator = mlir::Block::getTerminator(this);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    v6 = Terminator;
    v7 = *(Terminator + 68);
    __src = v33;
    v32 = 0x600000000;
    if (v7 <= 6)
    {
      if (v7)
      {
        bzero(v33, 8 * v7);
      }

      LODWORD(v32) = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v7, 8);
      bzero(__src, 8 * v7);
      v8 = *(v6 + 44);
      LODWORD(v32) = v7;
      if ((v8 & 0x800000) == 0)
      {
        goto LABEL_32;
      }
    }

    v9 = *(v6 + 68);
    if (v9)
    {
      v27 = a1;
      v10 = *(v6 + 72);
      v11 = &v10[4 * v9];
      do
      {
        v28[0] = v10[3];
        DefiningOp = mlir::Value::getDefiningOp(v28);
        v13 = DefiningOp;
        if (DefiningOp)
        {
          if (sub_10026BA88(DefiningOp))
          {
            v14 = sub_10026BA88(v13);
            v15 = v13;
            if (v13)
            {
              v16 = *(v13 + 36);
              if (v16)
              {
                v17 = v13 - 16;
              }

              else
              {
                v17 = 0;
              }

              v18 = 0;
              if (v16)
              {
                v19 = v10[3];
                while (mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v18) != v19)
                {
                  if (v16 == ++v18)
                  {
                    v18 = v16;
                    break;
                  }
                }
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v18);
              (*(v14 + 8))(v28, v14, v15, a2);
              if (v30 == 1)
              {
                v21 = *(NextResultAtOffset + 8) & 7;
                if (NextResultAtOffset && v21 == 6)
                {
                  v21 = (*(NextResultAtOffset + 16) + 6);
                }

                v22 = v28[0];
                OperandNumber = mlir::OpOperand::getOperandNumber(v10);
                *(__src + OperandNumber) = v22[v21];
                if ((v30 & 1) != 0 && v28[0] != &v29)
                {
                  free(v28[0]);
                }
              }
            }
          }
        }

        v10 += 4;
      }

      while (v10 != v11);
      LODWORD(v7) = v32;
      a1 = v27;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    __src = v33;
    v32 = 0x600000000;
  }

LABEL_32:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v24 = __src;
  if (v7 && &__src != a1)
  {
    if (__src == v33)
    {
      v26 = v7;
      if (v7 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7, 8), v26 = v32, v24 = __src, v32))
      {
        memcpy(*a1, v24, 8 * v26);
        v24 = __src;
      }

      *(a1 + 8) = v7;
    }

    else
    {
      *a1 = __src;
      v25 = HIDWORD(v32);
      *(a1 + 8) = v7;
      *(a1 + 12) = v25;
      __src = v33;
      HIDWORD(v32) = 0;
      v24 = v33;
    }

    LODWORD(v32) = 0;
  }

  *(a1 + 64) = 1;
  if (v24 != v33)
  {
    free(v24);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getInputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *this;
  v6 = *(*this + 44);
  v7 = *(*this + 16 * ((v6 >> 23) & 1) + 64) != 0;
  __src = *(*this + 16 * ((v6 >> 23) & 1) + 64);
  LOBYTE(v40) = v7;
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(v5 + 68);
  }

  else
  {
    v8 = 0;
  }

  sub_1001FF324(&v42, &__src, v8);
  if ((*(*this + 46) & 0x80) != 0)
  {
    sub_100275644();
  }

  else
  {
    sub_10014AC4C();
  }

  __src = v9;
  v40 = v10;
  mlir::OperandRange::getTypes(&__src, &v36);
  v11 = v36;
  v12 = v37;
  v13 = v38;
  v14 = v42;
  v15 = v43;
  __src = v41;
  v40 = 0x600000000;
  if (!v43 || v37 == v38)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    *(a2 + 64) = 1;
    goto LABEL_40;
  }

  v16 = v38 + ~v37;
  if (v16 >= ((v43 - 1) & 0x1FFFFFFFFFFFFFFFuLL))
  {
    v16 = (v43 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  }

  v35 = v16 + 1;
  if (v16 < 6)
  {
    v17 = 0;
    v18 = v41;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v41, v16 + 1, 8);
    v17 = v40;
    v18 = __src;
  }

  v19 = &v18[8 * v17];
  v20 = 8 * v15 - 8;
  v21 = ~v12 + v13;
  v22 = v11 + 32 * v12 + 24;
  do
  {
    v23 = *(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      v25 = 1;
    }

    else
    {
      v26 = *v14;
      if (*v14)
      {
        goto LABEL_23;
      }

      v25 = 3;
    }

    Context = mlir::Attribute::getContext((*this + 24));
    v26 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, v25);
LABEL_23:
    *v19++ = v26;
    v29 = v21-- != 0;
    if (!v20)
    {
      break;
    }

    ++v14;
    v20 -= 8;
    v22 += 32;
  }

  while (v29);
  v30 = v40;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v31 = __src;
  v32 = v30 + v35;
  LODWORD(v40) = v30 + v35;
  if (v30 + v35 && &__src != a2)
  {
    if (__src == v41)
    {
      v34 = v30 + v35;
      if (v32 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), (v30 + v35), 8), v34 = v40, v31 = __src, v40))
      {
        memcpy(*a2, v31, 8 * v34);
        v31 = __src;
      }

      *(a2 + 8) = v32;
    }

    else
    {
      *a2 = __src;
      v33 = HIDWORD(v40);
      *(a2 + 8) = v32;
      *(a2 + 12) = v33;
      __src = v41;
      HIDWORD(v40) = 0;
      v31 = v41;
    }

    LODWORD(v40) = 0;
  }

  *(a2 + 64) = 1;
  if (v31 != v41)
  {
    free(v31);
  }

LABEL_40:
  if (v42 != &v44)
  {
    free(v42);
  }
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::CallOp::print(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmPrinter *a2)
{
  sub_10027566C();
  sub_1002755C8(v5, v6);
  v9 = (*(v7 + 16))(v8);
  v10 = sub_1000D2EF8(v9);
  if (v12)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    sub_1000D2E38(v10, v11);
  }

  sub_100275384();
  if (*(v13 + 16 * v14 + 72))
  {
    v15 = (*(*v2 + 16))(v2);
    v16 = sub_100275438(v15);
    if (v18 > 4)
    {
      *(v17 + 4) = 32;
      *v17 = 1835624563;
      v16[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v16, "shim ", 5uLL);
    }
  }

  v19 = sub_100200BB8(v3);
  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v85 = v21;
  if (v21)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v85);
LABEL_13:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_14;
  }

  Value = v19;
  if (!v19 || v20 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_13;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v19);
LABEL_14:
  v23 = (*(*v2 + 16))(v2);
  v24 = sub_1000D2EF8(v23);
  if (v12)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    sub_1000D2E38(v24, v25);
  }

  sub_1002756D4();
  if (v27 < 0)
  {
    sub_100275698(v26);
  }

  else
  {
    sub_1002754E4();
  }

  (*(*v2 + 16))(v2);
  if (v4)
  {
    sub_10027519C();
    (*(v28 + 160))(v2);
    for (i = v4 - 1; i; --i)
    {
      sub_100275200();
      if (!v12 & v31)
      {
        sub_100275188(v30);
      }

      else
      {
        sub_1002753E8();
      }

      sub_1002751F0();
      (*(v32 + 160))(v2);
    }
  }

  v33 = (*(*v2 + 16))(v2);
  v34 = sub_100114D3C(v33);
  if (!v12 & v31)
  {
    *v35 = 8233;
    sub_100114D2C(v34);
  }

  else
  {
    llvm::raw_ostream::write(v34, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  sub_10027573C(AttrDictionary, v37, v38, v39, v40, v41, v42, v43, v75, v77, v79, v81, v82, v83, v84, v85);
  sub_1002753D0();
  v89 = *(v44 + 16);
  v85 = mlir::StringAttr::getValue(&v89);
  v86 = v45;
  v83 = *(*(*(*v3 + 6) + 96) + 8);
  v87 = mlir::StringAttr::getValue(&v83);
  v88 = v46;
  sub_100114D20();
  v48 = *(v47 + 192);
  v49 = sub_1002755D4();
  v50(v49);
  sub_100114D20();
  v52 = (*(v51 + 16))(v2);
  v53 = sub_100275438(v52);
  if (v55 > 2)
  {
    sub_1002752D4(v53, v54);
  }

  else
  {
    llvm::raw_ostream::write(v53, " : ", 3uLL);
  }

  sub_1002755BC();
  if (v56 < 0)
  {
    sub_100275644();
  }

  else
  {
    sub_10014AC4C();
  }

  v89 = v57;
  v90 = v58;
  mlir::OperandRange::getTypes(&v89, &v85);
  mlir::ValueRange::ValueRange(&v89, v85 + 32 * v86, v88 - v86);
  mlir::TypeRange::TypeRange(&v83, v89, v90);
  sub_100275384();
  v61 = *(v59 + 16 * v60 + 64);
  sub_100114D70(v59);
  v89 = v62;
  v90 = v63;
  mlir::ResultRange::getTypes(&v89, &v85);
  NextResultAtOffset = v85;
  v65 = v86;
  v66 = v88;
  if (v86)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, v86);
  }

  mlir::ValueRange::ValueRange(&v89, NextResultAtOffset, v66 - v65);
  mlir::TypeRange::TypeRange(&v81, v89, v90);
  sub_100275384();
  return sub_1002755E0(v69, v83, v84, v70, v71, v72, v73, *(v67 + 16 * v68 + 96), v76, v78, v80, v81, v82);
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::InvokeOp::print(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmPrinter *a2)
{
  sub_10027566C();
  sub_1002755C8(v5, v6);
  v9 = (*(v7 + 16))(v8);
  v10 = sub_1000D2EF8(v9);
  if (v12)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    sub_1000D2E38(v10, v11);
  }

  v13 = sub_100202BFC(v3);
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  AttrDictionary = v15;
  if (v15)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&AttrDictionary);
LABEL_9:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_10;
  }

  Value = v13;
  if (!v13 || v14 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_9;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v13);
LABEL_10:
  v17 = (*(*v2 + 16))(v2);
  v18 = sub_1000D2EF8(v17);
  if (v12)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    sub_1000D2E38(v18, v19);
  }

  sub_1002756D4();
  if (v21 < 0)
  {
    sub_100275698(v20);
  }

  else
  {
    sub_1002754E4();
  }

  (*(*v2 + 16))(v2);
  if (v4)
  {
    sub_10027519C();
    (*(v22 + 160))(v2);
    for (i = v4 - 1; i; --i)
    {
      sub_100275200();
      if (!v12 & v25)
      {
        sub_100275188(v24);
      }

      else
      {
        sub_1002753E8();
      }

      sub_1002751F0();
      (*(v26 + 160))(v2);
    }
  }

  v27 = (*(*v2 + 16))(v2);
  v28 = sub_100114D3C(v27);
  if (!v12 & v25)
  {
    *v29 = 8233;
    sub_100114D2C(v28);
  }

  else
  {
    llvm::raw_ostream::write(v28, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(&AttrDictionary);
  sub_1002753D0();
  v70 = *(v30 + 8);
  AttrDictionary = mlir::StringAttr::getValue(&v70);
  v67 = v31;
  sub_100114D20();
  v33 = *(v32 + 192);
  v34 = sub_1002755D4();
  v35(v34);
  sub_100114D20();
  v37 = (*(v36 + 16))(v2);
  v38 = sub_100275438(v37);
  if (v40 > 2)
  {
    sub_1002752D4(v38, v39);
  }

  else
  {
    llvm::raw_ostream::write(v38, " : ", 3uLL);
  }

  sub_1002755BC();
  if (v41 < 0)
  {
    sub_100275644();
  }

  else
  {
    sub_10014AC4C();
  }

  v70 = v42;
  v71 = v43;
  mlir::OperandRange::getTypes(&v70, &AttrDictionary);
  sub_100275530();
  mlir::ValueRange::ValueRange(&v70, v44, v45);
  mlir::TypeRange::TypeRange(v69, v70, v71);
  sub_100275384();
  v48 = *(v46 + 16 * v47 + 64);
  sub_100114D70(v46);
  v70 = v49;
  v71 = v50;
  mlir::ResultRange::getTypes(&v70, &AttrDictionary);
  NextResultAtOffset = AttrDictionary;
  v52 = v67;
  v53 = v68;
  if (v67)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v67);
  }

  mlir::ValueRange::ValueRange(&v70, NextResultAtOffset, v53 - v52);
  mlir::TypeRange::TypeRange(v65, v70, v71);
  sub_100275384();
  return sub_1002755E0(v56, v69[0], v69[1], v57, v58, v59, v60, *(v54 + 16 * v55 + 88), v62, v63, v64, v65[0], v65[1]);
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getOperandsMutable@<X0>(mlir::ODIE::Compiler::CoreML::CallOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100275728(this, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return sub_1002750D8(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getOperandsMutable@<X0>(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100275728(this, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return sub_1002750D8(v2, v3, 0, v5);
}

void mlir::ODIE::Compiler::CoreML::OutputOp::print(mlir::ODIE::Compiler::CoreML::OutputOp *this, mlir::OpAsmPrinter *a2)
{
  sub_10027566C();
  v8 = *v7;
  if ((*(v8 + 46) & 0x80) != 0 && *(v8 + 68))
  {
    v9 = (*(*v2 + 16))(v2);
    v10 = sub_1000D2E88(v9);
    if (v12)
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      sub_100114CE0(v10, v11);
    }

    sub_1002756D4();
    if (v14 < 0)
    {
      sub_100275698(v13);
    }

    else
    {
      sub_1002754E4();
    }

    (*(*v2 + 16))(v2);
    if (v6)
    {
      sub_10027519C();
      (*(v15 + 160))(v2);
      v16 = v6 - 1;
      if (v16)
      {
        v5 = ", ";
        do
        {
          sub_100275200();
          if (!v18 & v12)
          {
            sub_100275188(v17);
          }

          else
          {
            sub_1002753E8();
          }

          sub_1002751F0();
          (*(v19 + 160))(v2);
          --v16;
        }

        while (v16);
      }
    }

    v20 = (*(*v2 + 16))(v2);
    v21 = sub_1000D2E88(v20);
    if (v12)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      sub_100114CE0(v21, v22);
    }

    v23 = (*(*v2 + 16))(v2);
    v24 = sub_1000D2EF8(v23);
    if (v18)
    {
      llvm::raw_ostream::write(v24, ":", 1uLL);
    }

    else
    {
      sub_1000D2E38(v24, v25);
    }

    v26 = (*(*v2 + 16))(v2);
    v27 = sub_1000D2E88(v26);
    if (v12)
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      sub_100114CE0(v27, v28);
    }

    sub_1002755BC();
    if (v29 < 0)
    {
      sub_1002756A4();
    }

    else
    {
      sub_1002756B0();
    }

    v62[1] = v38;
    v40 = sub_1002757E0(v30, v31, v32, v33, v34, v35, v36, v37, v61, v39);
    mlir::OperandRange::getTypes(v40, v41);
    sub_100275688();
    if (!v18)
    {
      v42 = (v63 + 32 * v4);
      v43 = *(v42[3] + 8);
      sub_100114D20();
      v45 = *(v44 + 32);
      v46 = sub_100114D64();
      v47(v46);
      if ((v4 + 1) != v5)
      {
        sub_100275678();
        do
        {
          v48 = (*(*v2 + 16))(v2);
          v49 = sub_100114D3C(v48);
          if (!v18 & v12)
          {
            *v50 = 8236;
            sub_100114D2C(v49);
          }

          else
          {
            llvm::raw_ostream::write(v49, ", ", 2uLL);
          }

          v51 = *v42;
          v42 += 4;
          v52 = *(v51 + 8);
          sub_100114D20();
          v54 = *(v53 + 32);
          v55 = sub_100114D64();
          v56(v55);
          --v5;
        }

        while (v5);
      }
    }

    v8 = *v3;
  }

  v63 = v65;
  v64 = 0x200000000;
  v62[0] = mlir::Operation::getAttrDictionary(v8);
  mlir::DictionaryAttr::getValue(v62);
  sub_100114D20();
  v58 = *(v57 + 192);
  v59 = sub_1002752F4();
  v60(v59);
  if (v63 != v65)
  {
    free(v63);
  }
}

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::print(mlir::ODIE::Compiler::CoreML::PlaceholderOp *this, mlir::OpAsmPrinter *a2)
{
  sub_10027566C();
  sub_1002755C8(v5, v6);
  v9 = (*(v7 + 16))(v8);
  v10 = sub_1000D2E88(v9);
  if (v12)
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    sub_100114CE0(v10, v11);
  }

  sub_100275384();
  v15 = *(v13 + 16 * v14 + 64);
  sub_100114D20();
  (*(v16 + 48))(v2);
  sub_100114D20();
  v18 = (*(v17 + 16))(v2);
  v19 = sub_1000D2EF8(v18);
  if (v21)
  {
    llvm::raw_ostream::write(v19, "(", 1uLL);
  }

  else
  {
    sub_1000D2E38(v19, v20);
  }

  sub_1002756D4();
  if (v23 < 0)
  {
    sub_100275698(v22);
  }

  else
  {
    sub_1002754E4();
  }

  (*(*v2 + 16))(v2);
  if (v4)
  {
    sub_10027519C();
    (*(v24 + 160))(v2);
    for (i = v4 - 1; i; --i)
    {
      sub_100275200();
      if (!v21 & v12)
      {
        sub_100275188(v26);
      }

      else
      {
        sub_1002753E8();
      }

      sub_1002751F0();
      (*(v27 + 160))(v2);
    }
  }

  v28 = (*(*v2 + 16))(v2);
  v29 = sub_1000D2EF8(v28);
  if (v21)
  {
    llvm::raw_ostream::write(v29, ")", 1uLL);
  }

  else
  {
    sub_1000D2E38(v29, v30);
  }

  v63 = v65;
  v65[0] = "opname";
  v65[1] = 6;
  v64 = 0x200000001;
  v62[0] = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(v62);
  sub_100114D20();
  v32 = *(v31 + 192);
  v33 = sub_1002752F4();
  v34(v33);
  sub_100114D20();
  v36 = (*(v35 + 16))(v2);
  v37 = sub_1000D2E88(v36);
  if (v12)
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    sub_100114CE0(v37, v38);
  }

  v39 = (*(*v2 + 16))(v2);
  v40 = sub_1000D2EF8(v39);
  if (v21)
  {
    llvm::raw_ostream::write(v40, ":", 1uLL);
  }

  else
  {
    sub_1000D2E38(v40, v41);
  }

  v42 = (*(*v2 + 16))(v2);
  v43 = sub_1000D2E88(v42);
  if (v12)
  {
    llvm::raw_ostream::write(v43, 32);
  }

  else
  {
    sub_100114CE0(v43, v44);
  }

  sub_1002755BC();
  if (v45 < 0)
  {
    sub_1002756A4();
  }

  else
  {
    sub_1002756B0();
  }

  v61[0] = v47;
  v61[1] = v46;
  mlir::OperandRange::getTypes(v61, v62);
  sub_100114D70(*v3);
  v57 = sub_1002757E0(v48, v49, v50, v51, v52, v53, v54, v55, v59, v56);
  mlir::ResultRange::getTypes(v57, v58);
  sub_100257B04(v2, v62, v60);
  if (v63 != v65)
  {
    free(v63);
  }
}

void mlir::ODIE::Compiler::CoreML::ReturnOp::print(mlir::ODIE::Compiler::CoreML::ReturnOp *this, mlir::OpAsmPrinter *a2)
{
  sub_10027566C();
  v8 = *v7;
  if ((*(v8 + 46) & 0x80) != 0 && *(v8 + 68))
  {
    v9 = (*(*v2 + 16))(v2);
    v10 = sub_1000D2E88(v9);
    if (v12)
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      sub_100114CE0(v10, v11);
    }

    sub_1002756D4();
    if (v14 < 0)
    {
      sub_100275698(v13);
    }

    else
    {
      sub_1002754E4();
    }

    (*(*v2 + 16))(v2);
    if (v6)
    {
      sub_10027519C();
      (*(v15 + 160))(v2);
      v16 = v6 - 1;
      if (v16)
      {
        v5 = ", ";
        do
        {
          sub_100275200();
          if (!v18 & v12)
          {
            sub_100275188(v17);
          }

          else
          {
            sub_1002753E8();
          }

          sub_1002751F0();
          (*(v19 + 160))(v2);
          --v16;
        }

        while (v16);
      }
    }

    v20 = (*(*v2 + 16))(v2);
    v21 = sub_1000D2E88(v20);
    if (v12)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      sub_100114CE0(v21, v22);
    }

    v23 = (*(*v2 + 16))(v2);
    v24 = sub_1000D2EF8(v23);
    if (v18)
    {
      llvm::raw_ostream::write(v24, ":", 1uLL);
    }

    else
    {
      sub_1000D2E38(v24, v25);
    }

    v26 = (*(*v2 + 16))(v2);
    v27 = sub_1000D2E88(v26);
    if (v12)
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      sub_100114CE0(v27, v28);
    }

    sub_1002755BC();
    if (v29 < 0)
    {
      sub_1002756A4();
    }

    else
    {
      sub_1002756B0();
    }

    v62[1] = v38;
    v40 = sub_1002757E0(v30, v31, v32, v33, v34, v35, v36, v37, v61, v39);
    mlir::OperandRange::getTypes(v40, v41);
    sub_100275688();
    if (!v18)
    {
      v42 = (v63 + 32 * v4);
      v43 = *(v42[3] + 8);
      sub_100114D20();
      v45 = *(v44 + 32);
      v46 = sub_100114D64();
      v47(v46);
      if ((v4 + 1) != v5)
      {
        sub_100275678();
        do
        {
          v48 = (*(*v2 + 16))(v2);
          v49 = sub_100114D3C(v48);
          if (!v18 & v12)
          {
            *v50 = 8236;
            sub_100114D2C(v49);
          }

          else
          {
            llvm::raw_ostream::write(v49, ", ", 2uLL);
          }

          v51 = *v42;
          v42 += 4;
          v52 = *(v51 + 8);
          sub_100114D20();
          v54 = *(v53 + 32);
          v55 = sub_100114D64();
          v56(v55);
          --v5;
        }

        while (v5);
      }
    }

    v8 = *v3;
  }

  v63 = v65;
  v64 = 0x200000000;
  v62[0] = mlir::Operation::getAttrDictionary(v8);
  mlir::DictionaryAttr::getValue(v62);
  sub_100114D20();
  v58 = *(v57 + 192);
  v59 = sub_1002752F4();
  v60(v59);
  if (v63 != v65)
  {
    free(v63);
  }
}

uint64_t sub_1002A9A94(uint64_t **a1, uint64_t a2)
{
  v156 = a2;
  mlir::FunctionType::getInputs(&v156);
  sub_1002756BC();
  if (v12 < 0)
  {
    sub_100275644();
  }

  else
  {
    sub_10014AC4C();
  }

  sub_100275704(v13, v143, v146, v149, v152, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v4)
  {
    sub_100275404();
    do
    {
      if (!v6)
      {
        break;
      }

      v14 = sub_100275810();
      if (!v14)
      {
        sub_1002754C4(v14, v15, v16, v17, v18, v19, v20, v21);
        if (v160)
        {
          sub_1002757C0();
          sub_100275260();
          if (v46)
          {
            sub_10014AA38();
            if (v97 <= v98 && (v96 & 1) != 0)
            {
              sub_1002754A4();
              v45 = v163;
            }

            else
            {
              sub_1002754A4();
              sub_1002755B0();
            }
          }

          sub_10014AA08(v45);
          sub_1002751B0();
          if (v47)
          {
            v48 = *v3;
            sub_1002755A4();
            mlir::DiagnosticArgument::DiagnosticArgument(v49, v50);
            sub_100275250();
            if (v46)
            {
              sub_100275118();
              if (v110 <= v3 && (v111 & 1) != 0)
              {
                v3 = &v157 - v110;
                sub_100275324();
                sub_1002757B4();
              }

              else
              {
                sub_100275324();
                sub_100275598();
              }
            }

            sub_1002750E4(v51);
            sub_1002753A8();
            if (v52)
            {
              sub_100275544();
              sub_100275238();
              if (v46)
              {
                sub_10014AB58();
                if (v123 <= v125 && (v124 & 1) != 0)
                {
                  v3 = &v157 - v123;
                  sub_100275484(v122);
                  v53 = v163;
                  v54 = &v3[v163];
                }

                else
                {
                  sub_100275484(v122);
                  sub_10027558C();
                }
              }

              v55 = &v53[24 * v164];
              v56 = v54[1].n128_u64[0];
              sub_100275100(v55, *v54);
              if (v160)
              {
                sub_1002755A4();
                mlir::DiagnosticArgument::DiagnosticArgument(v57, v4 & 0xFFFFFFFFFFFFFFF8);
                sub_100275250();
                if (v46)
                {
                  sub_100275118();
                  if (v131 <= v3 && (v130 & 1) != 0)
                  {
                    sub_100275324();
                    sub_1002757B4();
                  }

                  else
                  {
                    sub_100275324();
                    sub_100275598();
                  }
                }

                sub_1002750E4(v58);
                sub_1002751C4();
              }
            }
          }
        }

        sub_100275878(v37, v38, v39, v40, v41, v42, v43, v44, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_10027579C();
        if (v22)
        {
          if (v183 != v8)
          {
            free(v183);
          }

          v59 = __p;
          if (__p)
          {
            v60 = v181;
            v61 = __p;
            if (v181 != __p)
            {
              do
              {
                v60 = sub_10005BEF4((v60 - 8));
              }

              while (v60 != v59);
              v61 = __p;
            }

            v181 = v59;
            operator delete(v61);
          }

          v62 = v177;
          if (v177)
          {
            v63 = v178;
            v64 = v177;
            if (v178 != v177)
            {
              sub_10014AAC0();
              do
              {
                v65 = *--v63;
                *v63 = 0;
                if (v65)
                {
                  operator delete[]();
                }
              }

              while (v63 != v62);
              v64 = v177;
            }

            v178 = v62;
            operator delete(v64);
          }

          if (v163 != v2)
          {
            free(v163);
          }
        }

        sub_100275520();
        mlir::Diagnostic::attachNote(v7 + 1, v66, 1);
      }

      sub_1002757CC();
    }

    while (!v22);
  }

  Results = mlir::FunctionType::getResults(&v156);
  v25 = v24;
  sub_100114D70(**a1);
  sub_1002756E0(v26, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v25)
  {
    sub_100275554();
    do
    {
      if (v2 == v5)
      {
        break;
      }

      v27 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5) + 8);
      v28 = mlir::ODIE::Compiler::areTypesCompatible(*Results, v27 & 0xFFFFFFFFFFFFFFF8);
      if (!v28)
      {
        sub_1002754C4(v28, v29, v30, v31, v32, v33, v34, v35);
        if (v160)
        {
          sub_1002757C0();
          sub_100275260();
          if (v46)
          {
            sub_10014AA38();
            if (v108 <= v109 && (v107 & 1) != 0)
            {
              sub_100275464(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              v75 = v163;
            }

            else
            {
              sub_100275464(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              sub_1002755B0();
            }
          }

          sub_10014AA08(v75);
          sub_1002751B0();
          if (v76)
          {
            v77 = *Results;
            sub_1002755A4();
            mlir::DiagnosticArgument::DiagnosticArgument(v78, v79);
            sub_100275250();
            if (v46)
            {
              sub_100275118();
              if (v121 <= Results && (v120 & 1) != 0)
              {
                sub_100275304(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_1002757A8();
              }

              else
              {
                sub_100275304(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_100275598();
              }
            }

            sub_1002750E4(v80);
            sub_1002753A8();
            if (v81)
            {
              sub_100275544();
              sub_100275238();
              if (v46)
              {
                sub_10014AB58();
                if (v127 <= v129 && (v128 & 1) != 0)
                {
                  v142 = &v157 - v127;
                  sub_100275444(v126, v145, v148, v151, v154);
                  v82 = v163;
                  v83 = &v142[v163];
                }

                else
                {
                  sub_100275444(v126, v145, v148, v151, v154);
                  sub_10027558C();
                }
              }

              v84 = &v82[24 * v164];
              v85 = v83[1].n128_u64[0];
              sub_100275100(v84, *v83);
              if (v160)
              {
                sub_1002755A4();
                mlir::DiagnosticArgument::DiagnosticArgument(v86, v27 & 0xFFFFFFFFFFFFFFF8);
                sub_100275250();
                if (v46)
                {
                  sub_100275118();
                  if (v141 <= Results && (v140 & 1) != 0)
                  {
                    sub_100275304(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_1002757A8();
                  }

                  else
                  {
                    sub_100275304(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_100275598();
                  }
                }

                sub_1002750E4(v87);
                sub_1002751C4();
              }
            }
          }
        }

        sub_100275878(v67, v68, v69, v70, v71, v72, v73, v74, v145, v148, v151, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_10027579C();
        if (v22)
        {
          if (v183 != v7)
          {
            free(v183);
          }

          v88 = __p;
          if (__p)
          {
            v89 = v181;
            v90 = __p;
            if (v181 != __p)
            {
              do
              {
                v89 = sub_10005BEF4((v89 - 8));
              }

              while (v89 != v88);
              v90 = __p;
            }

            v181 = v88;
            operator delete(v90);
          }

          v91 = v177;
          if (v177)
          {
            v92 = v178;
            v93 = v177;
            if (v178 != v177)
            {
              sub_10014AAC0();
              do
              {
                v94 = *--v92;
                *v92 = 0;
                if (v94)
                {
                  operator delete[]();
                }
              }

              while (v92 != v91);
              v93 = v177;
            }

            v178 = v91;
            operator delete(v93);
          }

          if (v163 != v155)
          {
            free(v163);
          }
        }

        sub_100275520();
        mlir::Diagnostic::attachNote((v9 + 8), v95, 1);
      }

      ++Results;
      ++v5;
      v10 -= 8;
    }

    while (v10);
  }

  return 1;
}

uint64_t sub_1002AA2A8(uint64_t **a1, uint64_t a2)
{
  v156 = a2;
  mlir::FunctionType::getInputs(&v156);
  sub_1002756BC();
  if (v12 < 0)
  {
    sub_100275644();
  }

  else
  {
    sub_10014AC4C();
  }

  sub_100275704(v13, v143, v146, v149, v152, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v4)
  {
    sub_100275404();
    do
    {
      if (!v6)
      {
        break;
      }

      v14 = sub_100275810();
      if (!v14)
      {
        sub_1002754C4(v14, v15, v16, v17, v18, v19, v20, v21);
        if (v160)
        {
          sub_1002757C0();
          sub_100275260();
          if (v46)
          {
            sub_10014AA38();
            if (v97 <= v98 && (v96 & 1) != 0)
            {
              sub_1002754A4();
              v45 = v163;
            }

            else
            {
              sub_1002754A4();
              sub_1002755B0();
            }
          }

          sub_10014AA08(v45);
          sub_1002751B0();
          if (v47)
          {
            v48 = *v3;
            sub_1002755A4();
            mlir::DiagnosticArgument::DiagnosticArgument(v49, v50);
            sub_100275250();
            if (v46)
            {
              sub_100275118();
              if (v110 <= v3 && (v111 & 1) != 0)
              {
                v3 = &v157 - v110;
                sub_100275324();
                sub_1002757B4();
              }

              else
              {
                sub_100275324();
                sub_100275598();
              }
            }

            sub_1002750E4(v51);
            sub_1002753A8();
            if (v52)
            {
              sub_100275544();
              sub_100275238();
              if (v46)
              {
                sub_10014AB58();
                if (v123 <= v125 && (v124 & 1) != 0)
                {
                  v3 = &v157 - v123;
                  sub_100275484(v122);
                  v53 = v163;
                  v54 = &v3[v163];
                }

                else
                {
                  sub_100275484(v122);
                  sub_10027558C();
                }
              }

              v55 = &v53[24 * v164];
              v56 = v54[1].n128_u64[0];
              sub_100275100(v55, *v54);
              if (v160)
              {
                sub_1002755A4();
                mlir::DiagnosticArgument::DiagnosticArgument(v57, v4 & 0xFFFFFFFFFFFFFFF8);
                sub_100275250();
                if (v46)
                {
                  sub_100275118();
                  if (v131 <= v3 && (v130 & 1) != 0)
                  {
                    sub_100275324();
                    sub_1002757B4();
                  }

                  else
                  {
                    sub_100275324();
                    sub_100275598();
                  }
                }

                sub_1002750E4(v58);
                sub_1002751C4();
              }
            }
          }
        }

        sub_100275878(v37, v38, v39, v40, v41, v42, v43, v44, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_10027579C();
        if (v22)
        {
          if (v183 != v8)
          {
            free(v183);
          }

          v59 = __p;
          if (__p)
          {
            v60 = v181;
            v61 = __p;
            if (v181 != __p)
            {
              do
              {
                v60 = sub_10005BEF4((v60 - 8));
              }

              while (v60 != v59);
              v61 = __p;
            }

            v181 = v59;
            operator delete(v61);
          }

          v62 = v177;
          if (v177)
          {
            v63 = v178;
            v64 = v177;
            if (v178 != v177)
            {
              sub_10014AAC0();
              do
              {
                v65 = *--v63;
                *v63 = 0;
                if (v65)
                {
                  operator delete[]();
                }
              }

              while (v63 != v62);
              v64 = v177;
            }

            v178 = v62;
            operator delete(v64);
          }

          if (v163 != v2)
          {
            free(v163);
          }
        }

        sub_100275520();
        mlir::Diagnostic::attachNote(v7 + 1, v66, 1);
      }

      sub_1002757CC();
    }

    while (!v22);
  }

  Results = mlir::FunctionType::getResults(&v156);
  v25 = v24;
  sub_100114D70(**a1);
  sub_1002756E0(v26, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v25)
  {
    sub_100275554();
    do
    {
      if (v2 == v5)
      {
        break;
      }

      v27 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5) + 8);
      v28 = mlir::ODIE::Compiler::areTypesCompatible(*Results, v27 & 0xFFFFFFFFFFFFFFF8);
      if (!v28)
      {
        sub_1002754C4(v28, v29, v30, v31, v32, v33, v34, v35);
        if (v160)
        {
          sub_1002757C0();
          sub_100275260();
          if (v46)
          {
            sub_10014AA38();
            if (v108 <= v109 && (v107 & 1) != 0)
            {
              sub_100275464(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              v75 = v163;
            }

            else
            {
              sub_100275464(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              sub_1002755B0();
            }
          }

          sub_10014AA08(v75);
          sub_1002751B0();
          if (v76)
          {
            v77 = *Results;
            sub_1002755A4();
            mlir::DiagnosticArgument::DiagnosticArgument(v78, v79);
            sub_100275250();
            if (v46)
            {
              sub_100275118();
              if (v121 <= Results && (v120 & 1) != 0)
              {
                sub_100275304(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_1002757A8();
              }

              else
              {
                sub_100275304(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_100275598();
              }
            }

            sub_1002750E4(v80);
            sub_1002753A8();
            if (v81)
            {
              sub_100275544();
              sub_100275238();
              if (v46)
              {
                sub_10014AB58();
                if (v127 <= v129 && (v128 & 1) != 0)
                {
                  v142 = &v157 - v127;
                  sub_100275444(v126, v145, v148, v151, v154);
                  v82 = v163;
                  v83 = &v142[v163];
                }

                else
                {
                  sub_100275444(v126, v145, v148, v151, v154);
                  sub_10027558C();
                }
              }

              v84 = &v82[24 * v164];
              v85 = v83[1].n128_u64[0];
              sub_100275100(v84, *v83);
              if (v160)
              {
                sub_1002755A4();
                mlir::DiagnosticArgument::DiagnosticArgument(v86, v27 & 0xFFFFFFFFFFFFFFF8);
                sub_100275250();
                if (v46)
                {
                  sub_100275118();
                  if (v141 <= Results && (v140 & 1) != 0)
                  {
                    sub_100275304(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_1002757A8();
                  }

                  else
                  {
                    sub_100275304(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_100275598();
                  }
                }

                sub_1002750E4(v87);
                sub_1002751C4();
              }
            }
          }
        }

        sub_100275878(v67, v68, v69, v70, v71, v72, v73, v74, v145, v148, v151, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_10027579C();
        if (v22)
        {
          if (v183 != v7)
          {
            free(v183);
          }

          v88 = __p;
          if (__p)
          {
            v89 = v181;
            v90 = __p;
            if (v181 != __p)
            {
              do
              {
                v89 = sub_10005BEF4((v89 - 8));
              }

              while (v89 != v88);
              v90 = __p;
            }

            v181 = v88;
            operator delete(v90);
          }

          v91 = v177;
          if (v177)
          {
            v92 = v178;
            v93 = v177;
            if (v178 != v177)
            {
              sub_10014AAC0();
              do
              {
                v94 = *--v92;
                *v92 = 0;
                if (v94)
                {
                  operator delete[]();
                }
              }

              while (v92 != v91);
              v93 = v177;
            }

            v178 = v91;
            operator delete(v93);
          }

          if (v163 != v155)
          {
            free(v163);
          }
        }

        sub_100275520();
        mlir::Diagnostic::attachNote((v9 + 8), v95, 1);
      }

      ++Results;
      ++v5;
      v10 -= 8;
    }

    while (v10);
  }

  return 1;
}

void sub_1002AAABC()
{
  {
    v0 = sub_10006791C();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AAB00()
{
  {
    v0 = sub_10006791C();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AAB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.create_complex";
  *(a2 + 24) = 21;
}

void sub_1002AAB9C()
{
  {
    v0 = sub_10026F234();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AABE0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(void)::Name = sub_10026F2FC();
    unk_1002E2DE0 = v0;
  }
}

void sub_1002AAC20()
{
  {
    v0 = sub_10026F3B4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AAC64()
{
  {
    v0 = sub_1001E6A38();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AACA8()
{
  {
    v0 = sub_1002701DC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AACEC()
{
  {
    llvm::getTypeName<mlir::ArrayAttr>(void)::Name = sub_1002702A4();
    unk_1002E2E60 = v0;
  }
}

void sub_1002AAD2C()
{
  {
    llvm::getTypeName<mlir::UnitAttr>(void)::Name = sub_100270324();
    *algn_1002E2E78 = v0;
  }
}

void sub_1002AAD6C()
{
  {
    llvm::getTypeName<mlir::TypeAttr>(void)::Name = sub_1002703A4();
    unk_1002E2E90 = v0;
  }
}

void sub_1002AADAC()
{
  {
    v0 = sub_10027045C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AADF0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 32) >= *(a1 + 36))
  {
    sub_10014AA38();
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v4 + 1, 24);
    v2 = *(a1 + 24);
  }

  v3 = *(a1 + 32);
  sub_10014AA08(v2);
  ++*(a1 + 32);
}

void sub_1002AAEA8()
{
  {
    v0 = sub_100270554();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AAEEC()
{
  {
    llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<signed char>>(void)::Name = sub_10027061C();
    *algn_1002E2EF8 = v0;
  }
}

void sub_1002AAF2C()
{
  {
    v0 = sub_1002706D4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AAF70()
{
  {
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = sub_10006BDE0();
    unk_1002E0E70 = v0;
  }
}

void sub_1002AAFB0()
{
  {
    v0 = sub_1002707CC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AAFF4()
{
  {
    llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name = sub_100270894();
    unk_1002E2F60 = v0;
  }
}

void sub_1002AB034()
{
  {
    v0 = sub_1000D6A94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.add";
  *(a2 + 24) = 10;
}

void sub_1002AB0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.mul";
  *(a2 + 24) = 10;
}

void sub_1002AB100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.sub";
  *(a2 + 24) = 10;
}

void sub_1002AB144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.batch_matmul";
  *(a2 + 24) = 19;
}

void sub_1002AB188()
{
  {
    v0 = sub_1002722E0();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB1CC(mlir::Operation **a1, BOOL *a2)
{
  v10 = "failed to verify that Operation must have at least two operands.";
  v11 = 259;
  mlir::OpState::emitOpError(a1, &v10, v12);
  *a2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = sub_10005BEF4(v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
      {
        do
        {
          v9 = *--v7;
          *v7 = 0;
          if (v9)
          {
            operator delete[]();
          }
        }

        while (v7 != v6);
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }
}

void sub_1002AB328()
{
  {
    v0 = sub_1002723D8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB36C()
{
  {
    v0 = sub_100272830();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB3B0()
{
  {
    v0 = sub_100272EE8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB3F4()
{
  {
    v0 = sub_1002736C0();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB438()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ExternAttr>(void)::Name = sub_100273788();
    unk_1002E3070 = v0;
  }
}

void sub_1002AB478()
{
  {
    *&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name = sub_1000AE13C();
    *(&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name + 1) = v0;
  }
}

void sub_1002AB4B8()
{
  {
    v0 = sub_100273838();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB4FC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(void)::Name = sub_100273900();
    *algn_1002E30C8 = v0;
  }
}

void sub_1002AB53C()
{
  {
    v0 = sub_1002739B0();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB580()
{
  {
    v0 = sub_100273AB0();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB5C4()
{
  {
    llvm::getTypeName<mlir::IntegerAttr>(void)::Name = sub_100273B78();
    unk_1002E3130 = v0;
  }
}

void sub_1002AB604()
{
  {
    v0 = sub_100273C28();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB648()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(void)::Name = sub_100273CF0();
    unk_1002E3170 = v0;
  }
}

void sub_1002AB688()
{
  {
    v0 = sub_100273DA0();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB6CC()
{
  {
    v0 = sub_100274790();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB710()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(void)::Name = sub_100274858();
    *algn_1002E31D8 = v0;
  }
}

void sub_1002AB750()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(void)::Name = sub_1002748D8();
    unk_1002E31F0 = v0;
  }
}

void sub_1002AB790()
{
  {
    v0 = sub_100274988();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB7D4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>(void)::Name = sub_100274A50();
    unk_1002E3230 = v0;
  }
}

void sub_1002AB814()
{
  {
    v0 = sub_100274B00();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB858()
{
  {
    v0 = sub_100274BF8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB89C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(void)::Name = sub_100274CC0();
    *algn_1002E3298 = v0;
  }
}

void sub_1002AB8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.real_part";
  *(a2 + 24) = 16;
}

void sub_1002AB920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.imaginary_part";
  *(a2 + 24) = 21;
}

void sub_1002AB964()
{
  {
    v0 = sub_10018A66C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AB9A8()
{
  {
    v0 = sub_1000C16C8();
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002ABA00()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims>(void)::Name = sub_10026E558();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims>(void)::Name + 1) = v0;
  }
}

void sub_1002ABA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.reshape";
  *(a2 + 24) = 14;
}

void sub_1002ABA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.broadcast_in_dims";
  *(a2 + 24) = 24;
}

void sub_1002ABAC8()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock>(void)::Name = sub_10026ED0C();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock>(void)::Name + 1) = v0;
  }
}

void sub_1002ABB08()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::Name = sub_10026F27C();
    *algn_1002E2DC8 = v0;
  }
}

void sub_1002ABB5C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::Name = sub_10026F3FC();
    unk_1002E2E20 = v0;
  }
}

void sub_1002ABBB0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::Name = sub_100270224();
    *algn_1002E2E48 = v0;
  }
}

void sub_1002ABC04()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::Name = sub_1002704A4();
    *algn_1002E2EB8 = v0;
  }
}

void sub_1002ABC58()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::Name = sub_10027059C();
    unk_1002E2EE0 = v0;
  }
}

void sub_1002ABCAC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::Name = sub_10027071C();
    unk_1002E2F20 = v0;
  }
}

void sub_1002ABD00()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::Name = sub_100270814();
    *algn_1002E2F48 = v0;
  }
}

void sub_1002ABD54()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>>(void)::Name = sub_100271078();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>>(void)::Name + 1) = v0;
  }
}

void sub_1002ABD94()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>>(void)::Name = sub_100271420();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>>(void)::Name + 1) = v0;
  }
}

void sub_1002ABDD4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::Name = sub_100272328();
    *algn_1002E2FB8 = v0;
  }
}

void sub_1002ABE28()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::Name = sub_100272420();
    unk_1002E2FE0 = v0;
  }
}

void sub_1002ABE7C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::Name = sub_100272878();
    *algn_1002E3008 = v0;
  }
}

void sub_1002ABED0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::Name = sub_100272F30();
    unk_1002E3030 = v0;
  }
}

void sub_1002ABF24()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::Name = sub_100273708();
    *algn_1002E3058 = v0;
  }
}

void sub_1002ABF78()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::Name = sub_100273880();
    unk_1002E30B0 = v0;
  }
}

void sub_1002ABFCC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::Name = sub_1002739F8();
    unk_1002E30F0 = v0;
  }
}

void sub_1002AC020()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::Name = sub_100273AF8();
    *algn_1002E3118 = v0;
  }
}

void sub_1002AC074()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::Name = sub_100273C70();
    *algn_1002E3158 = v0;
  }
}

void sub_1002AC0C8()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::Name = sub_100273DE8();
    *algn_1002E3198 = v0;
  }
}

void sub_1002AC11C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::Name = sub_1002747D8();
    unk_1002E31C0 = v0;
  }
}

void sub_1002AC170()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::Name = sub_1002749D0();
    *algn_1002E3218 = v0;
  }
}

void sub_1002AC1C4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::Name = sub_100274B48();
    *algn_1002E3258 = v0;
  }
}

void sub_1002AC218()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::Name = sub_100274C40();
    unk_1002E3280 = v0;
  }
}

void sub_1002AC26C(void *a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v4 = *(a2 + 72);
      v5 = &v4[4 * v2];
      do
      {
        v32 = v4[3];
        DefiningOp = mlir::Value::getDefiningOp(&v32);
        v7 = a1[2];
        if (DefiningOp && (v8 = DefiningOp, *(DefiningOp + 16) == v7))
        {
          {
            v29 = sub_1000D6A94();
            mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v29, v30);
          }

          if ((*(**(v8 + 6) + 32))(*(v8 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            v22 = mlir::OpBuilder::clone((*a1 + 8), v8);
            v33 = v35;
            v34 = 0x600000000;
            if (mlir::OpBuilder::tryFold(*a1 + 8, v22, &v33))
            {
              (*(**a1 + 16))(*a1, v22);
            }

            else
            {
              v31 = v22 - 16;
              v23 = v34;
              if (v34 >= HIDWORD(v34))
              {
                sub_1000B562C(&v33, &v31);
              }

              else
              {
                *(v33 + v34) = v22 - 16;
                LODWORD(v34) = v23 + 1;
              }
            }

            v24 = v33;
            v25 = *v33;
            v26 = v4[1];
            if (v26)
            {
              v27 = *v4;
              *v26 = *v4;
              if (v27)
              {
                *(v27 + 8) = v26;
              }
            }

            v4[3] = v25;
            v4[1] = v25;
            v28 = *v25;
            *v4 = *v25;
            if (v28)
            {
              *(v28 + 8) = v4;
            }

            *v25 = v4;
            if (v24 != v35)
            {
              free(v24);
            }

            goto LABEL_18;
          }

          v7 = a1[2];
          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        v11 = *(v7 + 48);
        v10 = *(v7 + 56);
        if (v10 != v11)
        {
          while (*v11 != v32)
          {
            if (++v11 == v10)
            {
              v11 = v10;
              break;
            }
          }
        }

        if (((v11 == v10) & ~v9) == 0)
        {
          v12 = a1[3];
          v13 = v32;
          if (!*(v12 + 4))
          {
            goto LABEL_17;
          }

          v14 = *v12;
          sub_10027B2B0();
          if (!v19)
          {
            while (v18 != -4096)
            {
              sub_10027B2B0();
              if (v19)
              {
                goto LABEL_15;
              }
            }

LABEL_17:
            v20 = *a1[1];
            v21 = *(v13 + 8);
            mlir::Value::getLoc(&v32);
            mlir::Block::addArgument(v20);
          }

LABEL_15:
          if (v17 == v15 || !*(v16 + 16 * v17 + 8))
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        v4 += 4;
      }

      while (v4 != v5);
    }
  }
}

uint64_t sub_1002AC618(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  (*(**a1 + 40))(*a1);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    if (v5)
    {
      v6 = *(v4 + 4);
      if (v6)
      {
        v7 = *(a2 + 72);
        v8 = &v7[4 * v5];
        v9 = *v4;
        v10 = v6 - 1;
        do
        {
          v11 = v7[3];
          v12 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
          v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v12 >> 47) ^ v12);
          v14 = (-348639895 * ((v13 >> 47) ^ v13)) & v10;
          v15 = *(v9 + 16 * v14);
          if (v15 == v11)
          {
LABEL_6:
            if (v14 != v6)
            {
              v16 = *(v9 + 16 * v14 + 8);
              if (v11 != v16)
              {
                v17 = v7[1];
                if (v17)
                {
                  v18 = *v7;
                  *v17 = *v7;
                  if (v18)
                  {
                    *(v18 + 8) = v17;
                  }
                }

                v7[3] = v16;
                v19 = *v16;
                *v7 = *v16;
                v7[1] = v16;
                if (v19)
                {
                  *(v19 + 8) = v7;
                }

                *v16 = v7;
              }
            }
          }

          else
          {
            v20 = 1;
            while (v15 != -4096)
            {
              v21 = v14 + v20++;
              v14 = v21 & v10;
              v15 = *(v9 + 16 * v14);
              if (v15 == v11)
              {
                goto LABEL_6;
              }
            }
          }

          v7 += 4;
        }

        while (v7 != v8);
      }
    }
  }

  v22 = *(*v3 + 48);

  return v22(v3, a2);
}

void sub_1002AC7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.yield";
  *(a2 + 24) = 12;
}

void sub_1002AC800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.isolated_group";
  *(a2 + 24) = 21;
}

void sub_1002AC844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.cast";
  *(a2 + 24) = 13;
}

void sub_1002AC888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.copy_with_constraints";
  *(a2 + 24) = 30;
}

void sub_1002AC8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.view";
  *(a2 + 24) = 13;
}

void sub_1002AE284()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp>(void)::Name = sub_10029419C();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp>(void)::Name + 1) = v0;
  }
}

void sub_1002AE2C4()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp>(void)::Name = sub_1002944D8();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp>(void)::Name + 1) = v0;
  }
}

void sub_1002AE304()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp>(void)::Name = sub_100294814();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp>(void)::Name + 1) = v0;
  }
}

void sub_1002AE344()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp>(void)::Name = sub_100294D24();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp>(void)::Name + 1) = v0;
  }
}

void sub_1002AE384()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp>(void)::Name = sub_100294E8C();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp>(void)::Name + 1) = v0;
  }
}

void sub_1002AE3C4()
{
  {
    v0 = sub_10029663C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AE418()
{
  {
    v0 = sub_10029663C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AE458()
{
  {
    llvm::getTypeName<mlir::RegionBranchOpInterface>(void)::Name = sub_100296684();
    unk_1002E1B80 = v0;
  }
}

void sub_1002AE4AC()
{
  {
    v0 = sub_100296F20();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AE500()
{
  {
    v0 = sub_100296F20();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AE540()
{
  {
    llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>(void)::Name = sub_100296F68();
    *algn_1002E1BA8 = v0;
  }
}

uint64_t mlir::detail::verifyInferredResultTypes(mlir::detail *this, mlir::Operation *a2)
{
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v64 = v4;
  v65 = v3;
  mlir::ResultRange::getTypes(&v64, &v52);
  v64 = v66;
  v65 = 0x400000000;
  v5 = v52;
  v6 = v53;
  v7 = v54;
  v8 = v54 - v53;
  if (v54 - v53 < 5)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v54 - v53, 8);
    v9 = v65;
    v10 = v65;
  }

  if (v7 == v6)
  {
    LODWORD(v65) = v10 + v8;
LABEL_11:
    v12 = sub_100297A54(this);
    goto LABEL_12;
  }

  v11 = &v64[8 * v9];
  do
  {
    *v11++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6++) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v7 != v6);
  LODWORD(v65) = v65 + v8;
  if (this)
  {
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:
  Context = mlir::Attribute::getContext((this + 24));
  v14 = *(this + 3);
  if ((*(this + 46) & 0x80) != 0)
  {
    v15 = *(this + 9);
    v16 = *(this + 17);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  mlir::ValueRange::ValueRange(&v52, v15, v16);
  v17 = *(this + 7);
  v18 = *(this + 11);
  if (HIBYTE(*(this + 11)))
  {
    v19 = this + 16 * ((v18 >> 23) & 1) + 64;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 & 0x7FFFFF;
  if ((v18 & 0x7FFFFF) != 0)
  {
    v21 = ((this + 16 * ((v18 >> 23) & 1) + ((v18 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  mlir::RegionRange::RegionRange(&v49, v21, v20);
  v45 = v50;
  v44 = v49;
  v22 = (*(v12 + 8))(Context, v14, 1, v52, v53, v17, v19);
  if ((v22 & 1) == 0)
  {
    v51 = 257;
    mlir::Operation::emitOpError(&v52, this, &v49);
    if (v52)
    {
      LODWORD(v46) = 3;
      v47 = "failed to infer returned types";
      v48 = 30;
      v31 = &v46;
      v32 = v54;
      if (v55 >= v56)
      {
        if (v54 <= &v46 && v54 + 24 * v55 > &v46)
        {
          v43 = &v46 - v54;
          sub_100297D60(v23, v24, v25, v26, v27, v28, v29, v30, v44, v45, &v64, v46, v47, v48, v49, v50);
          v32 = v54;
          v31 = (v54 + v43);
        }

        else
        {
          sub_100297D60(v23, v24, v25, v26, v27, v28, v29, v30, v44, v45, &v64, v46, v47, v48, v49, v50);
          v31 = &v46;
          v32 = v54;
        }
      }

      v33 = &v32[24 * v55];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v61;
        v37 = __p;
        if (v61 != __p)
        {
          do
          {
            v36 = sub_10005BEF4(v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v61 = v35;
        operator delete(v37);
      }

      v38 = v58;
      if (v58)
      {
        v39 = v59;
        v40 = v58;
        if (v59 != v58)
        {
          do
          {
            v41 = *--v39;
            *v39 = 0;
            if (v41)
            {
              operator delete[]();
            }
          }

          while (v39 != v38);
          v40 = v58;
        }

        v59 = v38;
        operator delete(v40);
      }

      if (v54 != &v57)
      {
        free(v54);
      }
    }
  }

  if (v64 != v66)
  {
    free(v64);
  }

  return v22;
}

void sub_1002AE93C()
{
  {
    v0 = sub_1000B1474();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002AE990()
{
  {
    v0 = sub_1000B1474();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator new()
{
    ;
  }
}