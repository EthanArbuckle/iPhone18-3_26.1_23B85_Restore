void sub_1000A65B8(uint64_t a1, uint64_t a2, const char *a3)
{
  mlir::emitError(a2, v20);
  if (v20[0])
  {
    v17 = 3;
    v18 = a3;
    v19 = strlen(a3);
    v5 = &v17;
    v6 = v21;
    if (v22 >= v23)
    {
      if (v21 <= &v17 && v21 + 24 * v22 > &v17)
      {
        v16 = &v17 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v24, v22 + 1, 24);
        v6 = v21;
        v5 = (v21 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v24, v22 + 1, 24);
        v5 = &v17;
        v6 = v21;
      }
    }

    v7 = &v6[24 * v22];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v22;
  }

  sub_10006BAFC(a1, v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v28;
      v11 = __p;
      if (v28 != __p)
      {
        do
        {
          v10 = sub_10005BEF4(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v28 = v9;
      operator delete(v11);
    }

    v12 = v25;
    if (v25)
    {
      v13 = v26;
      v14 = v25;
      if (v26 != v25)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v25;
      }

      v26 = v12;
      operator delete(v14);
    }

    if (v21 != v24)
    {
      free(v21);
    }
  }
}

uint64_t sub_1000A67D4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a4 != a5 && a2 != a5)
  {
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(result, a3, a4, a5);
    v8 = *a5;
    v9 = *a4;
    *(v9 + 8) = a5;
    *a5 = v9;
    v10 = *a2;
    *(v8 + 8) = a2;
    *a4 = v10;
    *(v10 + 8) = a4;
    *a2 = v8;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseRegion(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7 = 0;
  if ((sub_1000A3554(v3, &v7) & 1) == 0)
  {
    return 0;
  }

  v4 = v7;
  if (v7)
  {
    v6 = 0;
    if (sub_1000A3554(v3, &v6))
    {
      *(a2 + 32) = v6;
      *(a2 + 48) = 0;
      if (v4 > *(a2 + 52))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 40, (a2 + 56), v4, 8);
      }

      operator new();
    }

    return 0;
  }

  return 1;
}

uint64_t mlir::BytecodeReader::Impl::createForwardRef(mlir::BytecodeReader::Impl *this)
{
  v2 = this + 832;
  v3 = *(this + 104);
  v4 = (this + 760);
  if (v3 == v2)
  {
    v6 = mlir::Operation::create(this + 872);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(this + 760, v6);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v6);
    v8 = *(this + 95);
    *NodePtr = v8;
    NodePtr[1] = v4;
    *(v8 + 8) = NodePtr;
    *(this + 95) = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v6);
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v3);
    mlir::Operation::moveBefore(ValuePtr, (this + 728), this + 95);
  }

  return llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v4) - 16;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, uint64_t a2, mlir::StringAttr **a3)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  result = sub_1000A6BBC(v9, a2, a3, &v7);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

BOOL sub_1000A6BBC(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v8 = mlir::FileLineColLoc::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v17 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v17;
    sub_1000AF0B8(v22, v8, a3, 0, v20, a4);
    v9 = mlir::BytecodeReader::Impl::read(v22, a2, 0, v18);
    sub_1000AF2E8(v22);
  }

  else
  {
    *&v20[0] = "input buffer is not an MLIR bytecode file";
    v21 = 259;
    mlir::emitError(v8, v20, v22);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v28;
        v12 = __p;
        if (v28 != __p)
        {
          do
          {
            v11 = sub_10005BEF4(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v28 = v10;
        operator delete(v12);
      }

      v13 = v25;
      if (v25)
      {
        v14 = v26;
        v15 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v14;
            *v14 = 0;
            if (v16)
            {
              operator delete[]();
            }
          }

          while (v14 != v13);
          v15 = v25;
        }

        v26 = v13;
        operator delete(v15);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v9;
}

uint64_t sub_1000A6DB4(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 5;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return sub_1000A6FA0(v13, a4, a5, a6);
}

uint64_t sub_1000A6FA0(uint64_t a1, char *__s, char **a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return sub_1000A70B8(v9, a3, a4);
}

uint64_t sub_1000A70B8(uint64_t a1, char **a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 5;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

uint64_t sub_1000A7258(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    sub_1000A65B8(v12, a1[3], "attempting to parse a byte at the end of the bytecode");
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

      v4 = __p;
      if (__p)
      {
        v5 = v18;
        v6 = __p;
        if (v18 != __p)
        {
          do
          {
            v5 = sub_10005BEF4(v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v18 = v4;
        operator delete(v6);
      }

      v7 = v15;
      if (v15)
      {
        v8 = v16;
        v9 = v15;
        if (v16 != v15)
        {
          do
          {
            v10 = *--v8;
            *v8 = 0;
            if (v10)
            {
              operator delete[]();
            }
          }

          while (v8 != v7);
          v9 = v15;
        }

        v16 = v7;
        operator delete(v9);
      }

      if (v13 != &v14)
      {
        free(v13);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

uint64_t sub_1000A73E4(void *a1, int a2)
{
  v3 = (a2 - 1);
  if ((a2 ^ v3) > v3)
  {
    do
    {
      if ((v3 & a1[2]) == 0)
      {
        return 1;
      }

      v52 = 0;
      if ((sub_1000A7258(a1, &v52) & 1) == 0)
      {
        return 0;
      }

      v4 = v52;
    }

    while (v52 == 203);
    if (v52)
    {
      v5 = 16;
      do
      {
        v64[v5-- - 8] = a0123456789abcd_3[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
      v7 = v5 + 1;
      v8 = 16 - v5;
      if ((16 - v5) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100003FC0();
      }
    }

    else
    {
      v64[8] = 48;
      v7 = 16;
      v8 = 1;
    }

    if (v8 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v7 != 17)
    {
      memcpy(&__dst, &v64[v7 - 8], v8);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    v28 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v49, "'");
    v31 = v30->__r_.__value_.__r.__words[2];
    *v50 = *&v30->__r_.__value_.__l.__data_;
    v51 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    mlir::emitError(a1[3], &v63);
    if (v63)
    {
      v55 = 260;
      v53[0] = v50;
      mlir::Diagnostic::operator<<(v64, v53);
    }

    sub_10006BAFC(v53, &v63);
    if (v63)
    {
      mlir::InFlightDiagnostic::report(&v63);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v72;
        v34 = __p;
        if (v72 != __p)
        {
          do
          {
            v33 = sub_10005BEF4(v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v72 = v32;
        operator delete(v34);
      }

      v35 = v69;
      if (v69)
      {
        v36 = v70;
        v37 = v69;
        if (v70 != v69)
        {
          do
          {
            v38 = *--v36;
            *v36 = 0;
            if (v38)
            {
              operator delete[]();
            }
          }

          while (v36 != v35);
          v37 = v69;
        }

        v70 = v35;
        operator delete(v37);
      }

      if (v65 != v68)
      {
        free(v65);
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v39 = v59;
      if (v59)
      {
        v40 = v60;
        v41 = v59;
        if (v60 != v59)
        {
          do
          {
            v40 = sub_10005BEF4(v40 - 1);
          }

          while (v40 != v39);
          v41 = v59;
        }

        v60 = v39;
        operator delete(v41);
      }

      v42 = v57;
      if (v57)
      {
        v43 = v58;
        v44 = v57;
        if (v58 != v57)
        {
          do
          {
            v45 = *--v43;
            *v43 = 0;
            if (v45)
            {
              operator delete[]();
            }
          }

          while (v43 != v42);
          v44 = v57;
        }

        v58 = v42;
        operator delete(v44);
      }

      if (v54 != v56)
      {
        free(v54);
      }
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_105:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v20;
        }

LABEL_109:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return v20;
      }
    }

    else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    operator delete(v49.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v20;
    }

    goto LABEL_109;
  }

  mlir::emitError(a1[3], &v63);
  if (v63)
  {
    LODWORD(v53[0]) = 3;
    v53[1] = "expected alignment to be a power-of-two";
    v53[2] = 39;
    v9 = v53;
    v10 = v65;
    if (v66 >= v67)
    {
      if (v65 <= v53 && v65 + 24 * v66 > v53)
      {
        v47 = v53 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v10 = v65;
        v9 = (v65 + v47);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v9 = v53;
        v10 = v65;
      }
    }

    v11 = &v10[24 * v66];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v66;
  }

  sub_10006BAFC(v53, &v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v72;
      v15 = __p;
      if (v72 != __p)
      {
        do
        {
          v14 = sub_10005BEF4(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v72 = v13;
      operator delete(v15);
    }

    v16 = v69;
    if (v69)
    {
      v17 = v70;
      v18 = v69;
      if (v70 != v69)
      {
        do
        {
          v19 = *--v17;
          *v17 = 0;
          if (v19)
          {
            operator delete[]();
          }
        }

        while (v17 != v16);
        v18 = v69;
      }

      v70 = v16;
      operator delete(v18);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
  if (v53[0])
  {
    mlir::InFlightDiagnostic::report(v53);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v21 = v59;
    if (v59)
    {
      v22 = v60;
      v23 = v59;
      if (v60 != v59)
      {
        do
        {
          v22 = sub_10005BEF4(v22 - 1);
        }

        while (v22 != v21);
        v23 = v59;
      }

      v60 = v21;
      operator delete(v23);
    }

    v24 = v57;
    if (v57)
    {
      v25 = v58;
      v26 = v57;
      if (v58 != v57)
      {
        do
        {
          v27 = *--v25;
          *v25 = 0;
          if (v27)
          {
            operator delete[]();
          }
        }

        while (v25 != v24);
        v26 = v57;
      }

      v58 = v24;
      operator delete(v26);
    }

    if (v54 != v56)
    {
      free(v54);
    }
  }

  return v20;
}

uint64_t sub_1000A7B24(void *a1, char *a2, void *a3)
{
  v14 = a2;
  v3 = a1[2];
  if (*a1 + a1[1] - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    a1[2] += a2;
    return 1;
  }

  else
  {
    v13 = (*a1 + a1[1] - v3);
    sub_1000A7E7C(v15, a1[3], &v14, &v13);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v21;
        v7 = __p;
        if (v21 != __p)
        {
          do
          {
            v6 = sub_10005BEF4(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v21 = v5;
        operator delete(v7);
      }

      v8 = v18;
      if (v18)
      {
        v9 = v19;
        v10 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v9;
            *v9 = 0;
            if (v11)
            {
              operator delete[]();
            }
          }

          while (v9 != v8);
          v10 = v18;
        }

        v19 = v8;
        operator delete(v10);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v4;
}

__n128 sub_1000A7CBC(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

void sub_1000A7E7C(uint64_t a1, uint64_t a2, char **a3, char **a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_1000A6DB4(&v15, "attempting to parse ", a3, " bytes when only ", a4, " remain");
  }

  sub_10006BAFC(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

uint64_t sub_1000A8010(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v23 = 0;
  if ((sub_1000A3554(*(a1 + 16), &v23) & 1) == 0)
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v23;
  *(v8 + 16) = v23 & 1;
  v10 = v9 >> 1;
  v23 = v10;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *v11 + v10;
  if (v13 <= v12[1])
  {
    *(v8 + 24) = *v12 + *v11;
    *(v8 + 32) = v10;
    *(v8 + 8) = a2;
    *v11 = v13;
    return 1;
  }

  else
  {
    sub_1000A65B8(v24, *(*(a1 + 16) + 24), "Attribute or Type entry offset points past the end of section");
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v30;
        v17 = __p;
        if (v30 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v30 = v15;
        operator delete(v17);
      }

      v18 = v27;
      if (v27)
      {
        v19 = v28;
        v20 = v27;
        if (v28 != v27)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v27;
        }

        v28 = v18;
        operator delete(v20);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  return v14;
}

double sub_1000A81FC(uint64_t a1, char *__s, char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = sub_1000A83D8(v11, a4, a5).n128_u64[0];
  return result;
}

__n128 sub_1000A83D8(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

BOOL sub_1000A8598(void *a1, size_t __n, void *__dst)
{
  v16 = __n;
  v5 = a1[2];
  if (*a1 + a1[1] - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    a1[2] += __n;
    return 1;
  }

  else
  {
    v15 = (*a1 + a1[1] - v5);
    sub_1000A7E7C(v17, a1[3], &v16, &v15);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = sub_10005BEF4(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v11;
            *v11 = 0;
            if (v13)
            {
              operator delete[]();
            }
          }

          while (v11 != v10);
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v6;
}

uint64_t sub_1000A8740(void *a1, unint64_t *a2)
{
  v3 = __clz(__rbit32(*a2));
  v5 = *a2;
  if (!sub_1000A8598(a1, v3, &v5 + 1))
  {
    return 0;
  }

  *a2 = v5 >> (v3 + 1);
  return 1;
}

uint64_t sub_1000A87D4(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a6;
  v17[1] = a7;
  v16 = a4;
  if (a3 <= a4)
  {
    sub_1000A895C(v18, a1, v17, &v16);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v24;
        v10 = __p;
        if (v24 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v24 = v8;
        operator delete(v10);
      }

      v11 = v21;
      if (v21)
      {
        v12 = v22;
        v13 = v21;
        if (v22 != v21)
        {
          do
          {
            v14 = *--v12;
            *v12 = 0;
            if (v14)
            {
              operator delete[]();
            }
          }

          while (v12 != v11);
          v13 = v21;
        }

        v22 = v11;
        operator delete(v13);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    return 1;
  }

  return v7;
}

void sub_1000A895C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_1000A8AE8(&v15, "invalid ", a3, " index: ", a4);
  }

  sub_10006BAFC(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

double sub_1000A8AE8(uint64_t a1, char *__s, uint64_t a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = *(a3 + 8);
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  *&result = sub_1000A83D8(a1, a4, a5).n128_u64[0];
  return result;
}

uint64_t sub_1000A8C10(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  if ((sub_1000A3554(a1, &v22) & 1) == 0)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = *a2;
  v12 = a2[1];
  v24[0] = a4;
  v24[1] = a5;
  v23 = v22;
  if (v12 <= v22)
  {
    sub_1000A895C(v25, v10, v24, &v23);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v31;
        v17 = __p;
        if (v31 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v31 = v15;
        operator delete(v17);
      }

      v18 = v28;
      if (v28)
      {
        v19 = v29;
        v20 = v28;
        if (v29 != v28)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v28;
        }

        v29 = v18;
        operator delete(v20);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  else
  {
    *a3 = v11 + 8 * v22;
    return 1;
  }

  return v13;
}

void sub_1000A8DDC(uint64_t a1@<X0>, void ***a2@<X1>, uint64_t a3@<X8>)
{
  mlir::emitError(*(*(a1 + 40) + 24), &v12);
  if (v12)
  {
    mlir::Diagnostic::operator<<(&v13, a2);
  }

  sub_10006BAFC(a3, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_10005BEF4(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

uint64_t sub_1000A8F4C(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 32) + 8 * *(*(a1 + 32) + 8))
  {
    return 0;
  }

  v11 = *(*v10 + 8);
  v14 = *(*(a1 + 40) + 24);
  Context = mlir::Attribute::getContext(&v14);
  if (!sub_1000A98B8(v11, a1, Context))
  {
    return 0;
  }

  else
  {
    return *(*(*v10 + 8) + 56);
  }
}

BOOL sub_1000A9078(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v7 = 0;
  if ((sub_1000A3554(v4, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1000A9ED4(v3, v7);
  *a2 = v5;
  return v5 != 0;
}

BOOL sub_1000A90E4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v7 = 0;
  if ((sub_1000A3554(v4, &v7) & 1) == 0)
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v5 = sub_1000A9ED4(v3, v7 >> 1);
  *a2 = v5;
  return v5 != 0;
}

BOOL sub_1000A916C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v7 = 0;
  if ((sub_1000A3554(v4, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1000AAE24(v3, v7);
  *a2 = v5;
  return v5 != 0;
}

uint64_t sub_1000A91E0(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  if ((sub_1000A3554(*(a1 + 40), &v4) & 1) == 0)
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void sub_1000A9248(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 8)
  {
    LOBYTE(v15) = 0;
    if (sub_1000A7258(*(a1 + 40), &v15))
    {
      v6 = v15;
LABEL_7:
      *(a3 + 8) = a2;
      *a3 = v6;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_12;
  }

  if (a2 <= 0x40)
  {
    v15 = 0;
    if (sub_1000A3554(*(a1 + 40), &v15))
    {
      v6 = -(v15 & 1) ^ (v15 >> 1);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if ((sub_1000A3554(*(a1 + 40), &v14) & 1) == 0)
  {
LABEL_12:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v7 = v14;
  v15 = v17;
  v16 = 0x400000000;
  if (v14)
  {
    if (v14 < 5)
    {
      v8 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v14, 8);
      v8 = v16;
    }

    if (v7 != v8)
    {
      bzero(v15 + 8 * v8, 8 * (v7 - v8));
    }

    v9 = 0;
    LODWORD(v16) = v7;
    while (1)
    {
      v10 = v15;
      if ((sub_1000A3554(*(a1 + 40), (v15 + v9)) & 1) == 0)
      {
        break;
      }

      *&v10[v9] = -(*&v10[v9] & 1) ^ (*&v10[v9] >> 1);
      v9 += 8;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    v11 = v15;
    if (v15 != v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_21:
    llvm::APInt::APInt(&v12, a2);
    *(a3 + 8) = v13;
    *a3 = v12;
    *(a3 + 16) = 1;
    v11 = v15;
    if (v15 != v17)
    {
LABEL_24:
      free(v11);
    }
  }
}

void sub_1000A9438(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  SizeInBits = llvm::APFloatBase::getSizeInBits(a2);
  v7 = (*(*a1 + 88))(&v9, a1, SizeInBits);
  if ((v11 & 1) == 0)
  {
    a3->n128_u8[0] = 0;
    a3[1].n128_u8[8] = 0;
    return;
  }

  v8 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v8 == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v12, a2, &v9);
  if (v8 == v12.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, &v12);
    a3[1].n128_u8[8] = 1;
    if (v8 != v12.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_10002B154(&v12);
    goto LABEL_10;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a3, &v12);
  a3[1].n128_u8[8] = 1;
  if (v8 == v12.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
LABEL_10:
  if ((v11 & 1) != 0 && v10 >= 0x41)
  {
    if (v9)
    {
      operator delete[]();
    }
  }
}

uint64_t sub_1000A95BC(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v10 = 0;
  if ((sub_1000A3554(v4, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  v6 = v4[3];
  v7 = *v3;
  v8 = *(v3 + 8);

  return sub_1000A87D4(v6, v7, v8, v5, a2, "string", 6);
}

uint64_t sub_1000A9650(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ((sub_1000A3554(*(a1 + 40), &v8) & 1) == 0 || (sub_1000A7B24(*(a1 + 40), v8, &v6) & 1) == 0)
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void sub_1000A96D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v20 = 0;
  if ((sub_1000A3554(v4, &v20) & 1) == 0)
  {
    goto LABEL_27;
  }

  v5 = v4[3];
  v6 = *v3;
  v7 = *(v3 + 2);
  v22[0] = "resource handle";
  v22[1] = 15;
  v21 = v20;
  if (v20 >= v7)
  {
    sub_1000A895C(v23, v5, v22, &v21);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v29;
        v14 = __p;
        if (v29 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v29 = v12;
        operator delete(v14);
      }

      v15 = v26;
      if (v26)
      {
        v16 = v27;
        v17 = v26;
        if (v27 != v26)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v26;
        }

        v27 = v15;
        operator delete(v17);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v11)
    {
      v9 = 0;
      *&v10 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_26;
    }

LABEL_27:
    v19 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  v8 = (v6 + 24 * v20);
  v9 = *v8;
  v10 = *(v8 + 1);
LABEL_26:
  *a2 = v9;
  *(a2 + 8) = v10;
  v19 = 1;
LABEL_28:
  *(a2 + 24) = v19;
}

BOOL sub_1000A98B8(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32));
  if (Dialect)
  {
    *a1 = Dialect;
    *(a1 + 8) = 1;
    v7 = Dialect;
    v8 = sub_100099C4C(Dialect);
    if (v8)
    {
      v8 = sub_100099C4C(v7);
    }

    *(a1 + 16) = v8;
    v9 = *(a1 + 48);
    if (!v9)
    {
      return 1;
    }

LABEL_9:
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a2 + 48);
      v12 = *(*(a2 + 40) + 24);
      v45 = *(a1 + 40);
      v46 = v9;
      v47 = v45;
      v48 = v12;
      v50 = off_1002D5F88;
      v13 = *(a2 + 24);
      v51 = *(a2 + 8);
      *v52 = v13;
      v53[0] = &v45;
      v53[1] = v11;
      (*(*v10 + 56))(v43);
      v14 = v43[0];
      v43[0] = 0;
      v15 = *(a1 + 56);
      *(a1 + 56) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v43[0];
        v43[0] = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v14 = *(a1 + 56);
      }

      return v14 != 0;
    }

    v43[0] = "dialect '";
    v44 = 259;
    (*(*a2 + 16))(&v50, a2, v43);
    if (v50)
    {
      v49 = 261;
      v18 = *(a1 + 32);
      v45 = *(a1 + 24);
      v46 = v18;
      mlir::Diagnostic::operator<<(&v51, &v45);
      if (v50)
      {
        LODWORD(v45) = 3;
        v46 = "' does not implement the bytecode interface, but found a version entry";
        v47 = 70;
        v19 = &v45;
        v20 = v52[0];
        if (LODWORD(v52[1]) >= HIDWORD(v52[1]))
        {
          if (v52[0] <= &v45 && v52[0] + 24 * LODWORD(v52[1]) > &v45)
          {
            v41 = &v45 - v52[0];
            llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
            v20 = v52[0];
            v19 = (v52[0] + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
            v19 = &v45;
            v20 = v52[0];
          }
        }

        v21 = &v20[24 * LODWORD(v52[1])];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++LODWORD(v52[1]);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    v23 = result;
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
      result = v23;
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v23;
      }

      v24 = __p;
      if (__p)
      {
        v25 = v57;
        v26 = __p;
        if (v57 != __p)
        {
          do
          {
            v25 = sub_10005BEF4(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v57 = v24;
        operator delete(v26);
        result = v23;
      }

      v27 = v54;
      if (!v54)
      {
        goto LABEL_60;
      }

      v28 = v55;
      v29 = v54;
      if (v55 == v54)
      {
LABEL_59:
        v55 = v27;
        operator delete(v29);
        result = v23;
LABEL_60:
        if (v52[0] != v53)
        {
          free(v52[0]);
          return v23;
        }

        return result;
      }

      do
      {
        v30 = *--v28;
        *v28 = 0;
        if (v30)
        {
          operator delete[]();
        }
      }

      while (v28 != v27);
LABEL_58:
      v29 = v54;
      goto LABEL_59;
    }

    return result;
  }

  if (mlir::MLIRContext::allowsUnregisteredDialects(a3))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v9 = *(a1 + 48);
    if (v9)
    {
      goto LABEL_9;
    }

    return 1;
  }

  v43[0] = "dialect '";
  v44 = 259;
  (*(*a2 + 16))(&v50, a2, v43);
  if (v50)
  {
    v49 = 261;
    v31 = *(a1 + 32);
    v45 = *(a1 + 24);
    v46 = v31;
    mlir::Diagnostic::operator<<(&v51, &v45);
    if (v50)
    {
      LODWORD(v45) = 3;
      v46 = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
      v47 = 154;
      v32 = &v45;
      v33 = v52[0];
      if (LODWORD(v52[1]) >= HIDWORD(v52[1]))
      {
        if (v52[0] <= &v45 && v52[0] + 24 * LODWORD(v52[1]) > &v45)
        {
          v42 = &v45 - v52[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
          v33 = v52[0];
          v32 = (v52[0] + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
          v32 = &v45;
          v33 = v52[0];
        }
      }

      v34 = &v33[24 * LODWORD(v52[1])];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++LODWORD(v52[1]);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  v23 = result;
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
    result = v23;
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
      result = v23;
    }

    v36 = __p;
    if (__p)
    {
      v37 = v57;
      v38 = __p;
      if (v57 != __p)
      {
        do
        {
          v37 = sub_10005BEF4(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v57 = v36;
      operator delete(v38);
      result = v23;
    }

    v27 = v54;
    if (!v54)
    {
      goto LABEL_60;
    }

    v39 = v55;
    v29 = v54;
    if (v55 == v54)
    {
      goto LABEL_59;
    }

    do
    {
      v40 = *--v39;
      *v39 = 0;
      if (v40)
      {
        operator delete[]();
      }
    }

    while (v39 != v27);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_1000A9ED4(mlir::Attribute *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    mlir::emitError(*(this + 17), &v82);
    if (v82)
    {
      LODWORD(v74) = 3;
      v75 = "invalid ";
      *&v76 = 8;
      v19 = &v74;
      v20 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v74 && v84 + 24 * v85 > &v74)
        {
          v63 = &v74 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v20 = v84;
          v19 = (v84 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v19 = &v74;
          v20 = v84;
        }
      }

      v21 = &v20[24 * v85];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v85;
      if (v82)
      {
        LOWORD(v77) = 261;
        v74 = "Attribute";
        v75 = 9;
        mlir::Diagnostic::operator<<(&v83, &v74);
        if (v82)
        {
          LODWORD(v74) = 3;
          v75 = " index: ";
          *&v76 = 8;
          v23 = &v74;
          v24 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v74 && v84 + 24 * v85 > &v74)
            {
              v64 = &v74 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v24 = v84;
              v23 = (v84 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v23 = &v74;
              v24 = v84;
            }
          }

          v25 = &v24[24 * v85];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v85;
          if (v82)
          {
            LODWORD(v74) = 5;
            v75 = a2;
            v28 = &v74;
            v29 = v84;
            if (v27 >= v86)
            {
              if (v84 <= &v74 && v84 + 24 * v27 > &v74)
              {
                v65 = &v74 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v29 = v84;
                v28 = (v84 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v28 = &v74;
                v29 = v84;
              }
            }

            v30 = &v29[24 * v85];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v85;
            if (v82)
            {
              mlir::InFlightDiagnostic::report(&v82);
            }
          }
        }
      }
    }

    if (v93 != 1)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v91;
      v34 = __p;
      if (v91 != __p)
      {
        do
        {
          v33 = sub_10005BEF4(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v91 = v32;
      operator delete(v34);
    }

    v35 = v88;
    if (!v88)
    {
      goto LABEL_97;
    }

    v36 = v89;
    v37 = v88;
    if (v89 == v88)
    {
      goto LABEL_96;
    }

    do
    {
      v38 = *--v36;
      *v36 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v36 != v35);
    goto LABEL_95;
  }

  v3 = *(this + 3) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v71 = *(v3 + 24);
    v72 = v71;
    v73 = v5;
    if (*(v3 + 16) == 1)
    {
      v7 = *(this + 2);
      v8 = *(this + 18);
      v74 = off_1002D5F88;
      v75 = this;
      v76 = *this;
      v77 = v7;
      v78 = &v71;
      v79 = v8;
      v10 = *(v3 + 8);
      Context = mlir::Attribute::getContext((this + 136));
      if (!sub_1000A98B8(v10, &v74, Context))
      {
        return 0;
      }

      v12 = *(this + 19);
      v13 = *(v12 + 56);
      if (v13)
      {
        v14 = *(v12 + 48);
        v15 = 8 * v13;
        while (((*(**v14 + 16))(*v14, &v74, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
        {
          if (*v3)
          {
            goto LABEL_78;
          }

          v71 = *(v3 + 24);
          v72 = v71;
          ++v14;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_10;
          }
        }

        return 0;
      }

LABEL_10:
      v16 = *(v3 + 8);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (*(*v17 + 16))(v17, &v74);
        *v3 = v18;
        if (!v18)
        {
          return 0;
        }

        goto LABEL_78;
      }

      sub_1000AA8E8(&v82, v73, v16 + 24);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
LABEL_77:
        if (v44)
        {
LABEL_78:
          if (v72 == v71 + *(&v71 + 1))
          {
            return *v3;
          }

          v70 = 1283;
          v66 = "unexpected trailing bytes after ";
          v68 = "Attribute";
          v69 = 9;
          v74 = &v66;
          *&v76 = " entry";
          LOWORD(v77) = 770;
          sub_1000AA77C(&v82, v73, &v74);
          if (v82)
          {
            mlir::InFlightDiagnostic::report(&v82);
          }

          if (v93 != 1)
          {
            return 0;
          }

          if (v92 != &v93)
          {
            free(v92);
          }

          v57 = __p;
          if (__p)
          {
            v58 = v91;
            v59 = __p;
            if (v91 != __p)
            {
              do
              {
                v58 = sub_10005BEF4(v58 - 1);
              }

              while (v58 != v57);
              v59 = __p;
            }

            v91 = v57;
            operator delete(v59);
          }

          v35 = v88;
          if (!v88)
          {
            goto LABEL_97;
          }

          v60 = v89;
          v37 = v88;
          if (v89 == v88)
          {
LABEL_96:
            v89 = v35;
            operator delete(v37);
LABEL_97:
            if (v84 != v87)
            {
              free(v84);
            }

            return 0;
          }

          do
          {
            v61 = *--v60;
            *v60 = 0;
            if (v61)
            {
              operator delete[]();
            }
          }

          while (v60 != v35);
LABEL_95:
          v37 = v88;
          goto LABEL_96;
        }

        return 0;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v91;
        v54 = __p;
        if (v91 != __p)
        {
          do
          {
            v53 = sub_10005BEF4(v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v91 = v52;
        operator delete(v54);
      }

      v48 = v88;
      if (!v88)
      {
LABEL_75:
        if (v84 != v87)
        {
          free(v84);
        }

        goto LABEL_77;
      }

      v55 = v89;
      v50 = v88;
      if (v89 == v88)
      {
LABEL_74:
        v89 = v48;
        operator delete(v50);
        goto LABEL_75;
      }

      do
      {
        v56 = *--v55;
        *v55 = 0;
        if (v56)
        {
          operator delete[]();
        }
      }

      while (v55 != v48);
    }

    else
    {
      v74 = "Attribute";
      v75 = 9;
      v66 = 0;
      v67 = 0;
      if ((sub_1000A0338(&v71, &v66) & 1) == 0)
      {
        return 0;
      }

      v81 = 0;
      v39 = mlir::Attribute::getContext(v6);
      v40 = v66;
      v41 = v67;
      v42 = mlir::parseAttribute(v66, v67, v39, 0, &v81, 1);
      *v3 = v42;
      if (!v42)
      {
        return 0;
      }

      v43 = v81;
      if (v81 == v41)
      {
        goto LABEL_78;
      }

      if (v41 < v81)
      {
        v43 = v41;
      }

      v80[0] = v40 + v43;
      v80[1] = v41 - v43;
      sub_1000AAA64(&v82, v73, &v74, v80);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
        goto LABEL_77;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v91;
        v47 = __p;
        if (v91 != __p)
        {
          do
          {
            v46 = sub_10005BEF4(v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v91 = v45;
        operator delete(v47);
      }

      v48 = v88;
      if (!v88)
      {
        goto LABEL_75;
      }

      v49 = v89;
      v50 = v88;
      if (v89 == v88)
      {
        goto LABEL_74;
      }

      do
      {
        v51 = *--v49;
        *v49 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v49 != v48);
    }

    v50 = v88;
    goto LABEL_74;
  }

  return v4;
}

void sub_1000AA77C(uint64_t a1, uint64_t a2, void ***a3)
{
  mlir::emitError(a2, &v12);
  if (v12)
  {
    mlir::Diagnostic::operator<<(&v13, a3);
  }

  sub_10006BAFC(a1, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_10005BEF4(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void sub_1000AA8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::emitError(a2, &v12);
  if (v12)
  {
    sub_100084AE8(&v13, "dialect '", a3, "' does not implement the bytecode interface");
  }

  sub_10006BAFC(a1, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_10005BEF4(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void sub_1000AAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_1000AABF0(&v15, "trailing characters found after ", a3, " assembly format: ", a4);
  }

  sub_10006BAFC(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

uint64_t sub_1000AABF0(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = *(a3 + 8);
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  return sub_1000AAD18(a1, a4, a5);
}

uint64_t sub_1000AAD18(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v16) = 3;
  v17 = __s;
  v18 = v6;
  v9 = *(a1 + 24);
  v10 = &v16;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= &v16 && v8 + 24 * v9 > &v16)
    {
      v15 = &v16 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v15[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v16;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v19 = 261;
  v13 = *(a3 + 8);
  v16 = *a3;
  v17 = v13;
  mlir::Diagnostic::operator<<(a1, &v16);
  return a1;
}

uint64_t sub_1000AAE24(mlir::Attribute *this, unint64_t a2)
{
  if (*(this + 22) <= a2)
  {
    mlir::emitError(*(this + 17), &v82);
    if (v82)
    {
      LODWORD(v74) = 3;
      v75 = "invalid ";
      *&v76 = 8;
      v19 = &v74;
      v20 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v74 && v84 + 24 * v85 > &v74)
        {
          v63 = &v74 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v20 = v84;
          v19 = (v84 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v19 = &v74;
          v20 = v84;
        }
      }

      v21 = &v20[24 * v85];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v85;
      if (v82)
      {
        LOWORD(v77) = 261;
        v74 = "Type";
        v75 = 4;
        mlir::Diagnostic::operator<<(&v83, &v74);
        if (v82)
        {
          LODWORD(v74) = 3;
          v75 = " index: ";
          *&v76 = 8;
          v23 = &v74;
          v24 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v74 && v84 + 24 * v85 > &v74)
            {
              v64 = &v74 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v24 = v84;
              v23 = (v84 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v23 = &v74;
              v24 = v84;
            }
          }

          v25 = &v24[24 * v85];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v85;
          if (v82)
          {
            LODWORD(v74) = 5;
            v75 = a2;
            v28 = &v74;
            v29 = v84;
            if (v27 >= v86)
            {
              if (v84 <= &v74 && v84 + 24 * v27 > &v74)
              {
                v65 = &v74 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v29 = v84;
                v28 = (v84 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v28 = &v74;
                v29 = v84;
              }
            }

            v30 = &v29[24 * v85];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v85;
            if (v82)
            {
              mlir::InFlightDiagnostic::report(&v82);
            }
          }
        }
      }
    }

    if (v93 != 1)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v91;
      v34 = __p;
      if (v91 != __p)
      {
        do
        {
          v33 = sub_10005BEF4(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v91 = v32;
      operator delete(v34);
    }

    v35 = v88;
    if (!v88)
    {
      goto LABEL_97;
    }

    v36 = v89;
    v37 = v88;
    if (v89 == v88)
    {
      goto LABEL_96;
    }

    do
    {
      v38 = *--v36;
      *v36 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v36 != v35);
    goto LABEL_95;
  }

  v3 = *(this + 10) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v71 = *(v3 + 24);
    v72 = v71;
    v73 = v5;
    if (*(v3 + 16) == 1)
    {
      v7 = *(this + 2);
      v8 = *(this + 18);
      v74 = off_1002D5F88;
      v75 = this;
      v76 = *this;
      v77 = v7;
      v78 = &v71;
      v79 = v8;
      v10 = *(v3 + 8);
      Context = mlir::Attribute::getContext((this + 136));
      if (!sub_1000A98B8(v10, &v74, Context))
      {
        return 0;
      }

      v12 = *(this + 19);
      v13 = *(v12 + 120);
      if (v13)
      {
        v14 = *(v12 + 112);
        v15 = 8 * v13;
        while (((*(**v14 + 16))(*v14, &v74, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
        {
          if (*v3)
          {
            goto LABEL_78;
          }

          v71 = *(v3 + 24);
          v72 = v71;
          ++v14;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_10;
          }
        }

        return 0;
      }

LABEL_10:
      v16 = *(v3 + 8);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (*(*v17 + 24))(v17, &v74);
        *v3 = v18;
        if (!v18)
        {
          return 0;
        }

        goto LABEL_78;
      }

      sub_1000AA8E8(&v82, v73, v16 + 24);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
LABEL_77:
        if (v44)
        {
LABEL_78:
          if (v72 == v71 + *(&v71 + 1))
          {
            return *v3;
          }

          v70 = 1283;
          v66 = "unexpected trailing bytes after ";
          v68 = "Type";
          v69 = 4;
          v74 = &v66;
          *&v76 = " entry";
          LOWORD(v77) = 770;
          sub_1000AA77C(&v82, v73, &v74);
          if (v82)
          {
            mlir::InFlightDiagnostic::report(&v82);
          }

          if (v93 != 1)
          {
            return 0;
          }

          if (v92 != &v93)
          {
            free(v92);
          }

          v57 = __p;
          if (__p)
          {
            v58 = v91;
            v59 = __p;
            if (v91 != __p)
            {
              do
              {
                v58 = sub_10005BEF4(v58 - 1);
              }

              while (v58 != v57);
              v59 = __p;
            }

            v91 = v57;
            operator delete(v59);
          }

          v35 = v88;
          if (!v88)
          {
            goto LABEL_97;
          }

          v60 = v89;
          v37 = v88;
          if (v89 == v88)
          {
LABEL_96:
            v89 = v35;
            operator delete(v37);
LABEL_97:
            if (v84 != v87)
            {
              free(v84);
            }

            return 0;
          }

          do
          {
            v61 = *--v60;
            *v60 = 0;
            if (v61)
            {
              operator delete[]();
            }
          }

          while (v60 != v35);
LABEL_95:
          v37 = v88;
          goto LABEL_96;
        }

        return 0;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v91;
        v54 = __p;
        if (v91 != __p)
        {
          do
          {
            v53 = sub_10005BEF4(v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v91 = v52;
        operator delete(v54);
      }

      v48 = v88;
      if (!v88)
      {
LABEL_75:
        if (v84 != v87)
        {
          free(v84);
        }

        goto LABEL_77;
      }

      v55 = v89;
      v50 = v88;
      if (v89 == v88)
      {
LABEL_74:
        v89 = v48;
        operator delete(v50);
        goto LABEL_75;
      }

      do
      {
        v56 = *--v55;
        *v55 = 0;
        if (v56)
        {
          operator delete[]();
        }
      }

      while (v55 != v48);
    }

    else
    {
      v74 = "Type";
      v75 = 4;
      v66 = 0;
      v67 = 0;
      if ((sub_1000A0338(&v71, &v66) & 1) == 0)
      {
        return 0;
      }

      v81 = 0;
      v39 = mlir::Attribute::getContext(v6);
      v40 = v66;
      v41 = v67;
      v42 = mlir::parseType(v66, v67, v39, &v81, 1);
      *v3 = v42;
      if (!v42)
      {
        return 0;
      }

      v43 = v81;
      if (v81 == v41)
      {
        goto LABEL_78;
      }

      if (v41 < v81)
      {
        v43 = v41;
      }

      v80[0] = &v40[v43];
      v80[1] = v41 - v43;
      sub_1000AAA64(&v82, v73, &v74, v80);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
        goto LABEL_77;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v91;
        v47 = __p;
        if (v91 != __p)
        {
          do
          {
            v46 = sub_10005BEF4(v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v91 = v45;
        operator delete(v47);
      }

      v48 = v88;
      if (!v88)
      {
        goto LABEL_75;
      }

      v49 = v89;
      v50 = v88;
      if (v89 == v88)
      {
        goto LABEL_74;
      }

      do
      {
        v51 = *--v49;
        *v49 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v49 != v48);
    }

    v50 = v88;
    goto LABEL_74;
  }

  return v4;
}

uint64_t sub_1000AB6C8(void *a1, BOOL *a2)
{
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    sub_1000A65B8(v12, a1[3], "attempting to parse a byte at the end of the bytecode");
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

      v4 = __p;
      if (__p)
      {
        v5 = v18;
        v6 = __p;
        if (v18 != __p)
        {
          do
          {
            v5 = sub_10005BEF4(v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v18 = v4;
        operator delete(v6);
      }

      v7 = v15;
      if (v15)
      {
        v8 = v16;
        v9 = v15;
        if (v16 != v15)
        {
          do
          {
            v10 = *--v8;
            *v8 = 0;
            if (v10)
            {
              operator delete[]();
            }
          }

          while (v8 != v7);
          v9 = v15;
        }

        v16 = v7;
        operator delete(v9);
      }

      if (v13 != &v14)
      {
        free(v13);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2 != 0;
    return 1;
  }

  return v3;
}

uint64_t sub_1000AB85C(void *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    sub_1000A65B8(v12, a1[3], "attempting to parse a byte at the end of the bytecode");
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

      v4 = __p;
      if (__p)
      {
        v5 = v18;
        v6 = __p;
        if (v18 != __p)
        {
          do
          {
            v5 = sub_10005BEF4(v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v18 = v4;
        operator delete(v6);
      }

      v7 = v15;
      if (v15)
      {
        v8 = v16;
        v9 = v15;
        if (v16 != v15)
        {
          do
          {
            v10 = *--v8;
            *v8 = 0;
            if (v10)
            {
              operator delete[]();
            }
          }

          while (v8 != v7);
          v9 = v15;
        }

        v16 = v7;
        operator delete(v9);
      }

      if (v13 != &v14)
      {
        free(v13);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

void sub_1000AB9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::emitError(a2, &v12);
  if (v12)
  {
    sub_100084AE8(&v13, "unexpected trailing bytes in resource entry '", a3, "'");
  }

  sub_10006BAFC(a1, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_10005BEF4(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void sub_1000ABB68(mlir::AsmParsedResourceEntry *a1)
{
  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(a1);

  operator delete();
}

uint64_t sub_1000ABBC0(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    LOBYTE(v28) = 0;
    v2 = sub_1000AB6C8(*(a1 + 32), &v28) & 1;
    if (v2)
    {
      v3 = v28;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    mlir::emitError(*(*(a1 + 32) + 24), &v28);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "expected a BOOL resource entry, but found a ";
      v26 = 44;
      v4 = &v24;
      v5 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v22 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v5 = v30;
          v4 = (v30 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v4 = &v24;
          v5 = v30;
        }
      }

      v6 = &v5[24 * v31];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      ++v31;
    }

    v8 = mlir::toString(*(a1 + 24));
    if (v28)
    {
      v27 = 261;
      v24 = v8;
      v25 = v9;
      mlir::Diagnostic::operator<<(&v29, &v24);
      if (v28)
      {
        LODWORD(v24) = 3;
        v25 = " entry instead";
        v26 = 14;
        v10 = &v24;
        v11 = v30;
        if (v31 >= v32)
        {
          if (v30 <= &v24 && v30 + 24 * v31 > &v24)
          {
            v23 = &v24 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v11 = v30;
            v10 = (v30 + v23);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v10 = &v24;
            v11 = v30;
          }
        }

        v12 = &v11[24 * v31];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v31;
        if (v28)
        {
          mlir::InFlightDiagnostic::report(&v28);
        }
      }
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v37;
        v16 = __p;
        if (v37 != __p)
        {
          do
          {
            v15 = sub_10005BEF4(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v37 = v14;
        operator delete(v16);
      }

      v17 = v34;
      if (v34)
      {
        v18 = v35;
        v19 = v34;
        if (v35 != v34)
        {
          do
          {
            v20 = *--v18;
            *v18 = 0;
            if (v20)
            {
              operator delete[]();
            }
          }

          while (v18 != v17);
          v19 = v34;
        }

        v35 = v17;
        operator delete(v19);
      }

      if (v30 != v33)
      {
        free(v30);
      }
    }

    v3 = 0;
    v2 = 0;
  }

  return v3 | (v2 << 8);
}

double sub_1000ABF00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24) == 2)
  {
    __src = 0uLL;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *&__dst = 0;
    if (sub_1000A3554(v4, &__dst) & 1) != 0 && (sub_1000A87D4(v4[3], *v5, *(v5 + 8), __dst, &__src, "string", 6))
    {
      if (__src)
      {
        v7 = *(&__src + 1);
        if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
        {
          sub_100003FC0();
        }

        if (*(&__src + 1) >= 0x17uLL)
        {
          operator new();
        }

        HIBYTE(v32) = BYTE8(__src);
        if (*(&__src + 1))
        {
          memmove(&__dst, __src, *(&__src + 1));
        }

        *(&__dst + v7) = 0;
      }

      else
      {
        __dst = 0uLL;
        v32 = 0;
      }

      *&v6 = __dst;
      *a2 = __dst;
      *(a2 + 16) = v32;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    return *&v6;
  }

  mlir::emitError(*(*(a1 + 32) + 24), &__dst);
  if (__dst)
  {
    LODWORD(__src) = 3;
    *(&__src + 1) = "expected a string resource entry, but found a ";
    v29 = 46;
    p_src = &__src;
    v9 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &__src && v33 + 24 * v34 > &__src)
      {
        v25 = &__src - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v9 = v33;
        p_src = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        p_src = &__src;
        v9 = v33;
      }
    }

    v10 = &v9[24 * v34];
    v11 = *p_src;
    *(v10 + 2) = *(p_src + 2);
    *v10 = v11;
    ++v34;
  }

  v12 = mlir::toString(*(a1 + 24));
  if (!__dst || (v30 = 261, *&__src = v12, *(&__src + 1) = v13, mlir::Diagnostic::operator<<(&__dst + 8, &__src), !__dst))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v42 != 1)
    {
      return *&v6;
    }

    goto LABEL_21;
  }

  LODWORD(__src) = 3;
  *(&__src + 1) = " entry instead";
  v29 = 14;
  v14 = &__src;
  v15 = v33;
  if (v34 >= v35)
  {
    if (v33 <= &__src && v33 + 24 * v34 > &__src)
    {
      v26 = &__src - v33;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
      v15 = v33;
      v14 = (v33 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
      v14 = &__src;
      v15 = v33;
    }
  }

  v16 = &v15[24 * v34];
  v6 = *v14;
  *(v16 + 2) = *(v14 + 2);
  *v16 = v6;
  ++v34;
  v17 = __dst;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v17)
  {
    mlir::InFlightDiagnostic::report(&__dst);
  }

  if (v42 == 1)
  {
LABEL_21:
    if (v41 != &v42)
    {
      free(v41);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return *&v6;
}

void sub_1000AC364(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, void *, unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 24))
  {
    mlir::emitError(*(*(a1 + 32) + 24), __dst);
    if (__dst[0])
    {
      v61.n128_u32[0] = 3;
      v61.n128_u64[1] = "expected a blob resource entry, but found a ";
      v62 = 44;
      v6 = &v61;
      v7 = v51.n128_u64[0];
      if (v51.n128_u32[2] >= v51.n128_u32[3])
      {
        if (v51.n128_u64[0] <= &v61 && v51.n128_u64[0] + 24 * v51.n128_u32[2] > &v61)
        {
          v41 = &v61 - v51.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v7 = v51.n128_u64[0];
          v6 = &v41[v51.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v6 = &v61;
          v7 = v51.n128_u64[0];
        }
      }

      v8 = v7 + 24 * v51.n128_u32[2];
      v9 = *v6;
      *(v8 + 16) = v6[1].n128_u64[0];
      *v8 = v9;
      ++v51.n128_u32[2];
    }

    v10 = mlir::toString(*(a1 + 24));
    if (__dst[0] && (v64 = 261, v61.n128_u64[0] = v10, v61.n128_u64[1] = v11, mlir::Diagnostic::operator<<(&__dst[1], &v61), __dst[0]))
    {
      v61.n128_u32[0] = 3;
      v61.n128_u64[1] = " entry instead";
      v62 = 14;
      v12 = &v61;
      v13 = v51.n128_u64[0];
      if (v51.n128_u32[2] >= v51.n128_u32[3])
      {
        if (v51.n128_u64[0] <= &v61 && v51.n128_u64[0] + 24 * v51.n128_u32[2] > &v61)
        {
          v42 = &v61 - v51.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v13 = v51.n128_u64[0];
          v12 = &v42[v51.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v12 = &v61;
          v13 = v51.n128_u64[0];
        }
      }

      v14 = v13 + 24 * v51.n128_u32[2];
      v15 = *v12;
      *(v14 + 16) = v12[1].n128_u64[0];
      *v14 = v15;
      ++v51.n128_u32[2];
      v16 = __dst[0];
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v16)
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v60 != 1)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v60 != 1)
      {
        return;
      }
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v58;
      v19 = __p;
      if (v58 != __p)
      {
        do
        {
          v18 = sub_10005BEF4(v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v58 = v17;
      operator delete(v19);
    }

    v20 = v55;
    if (v55)
    {
      v21 = v56;
      v22 = v55;
      if (v56 != v55)
      {
        do
        {
          v23 = *--v21;
          *v21 = 0;
          if (v23)
          {
            operator delete[]();
          }
        }

        while (v21 != v20);
        v22 = v55;
      }

      v56 = v20;
      operator delete(v22);
    }

    if (v51.n128_u64[0] != &v52)
    {
      free(v51.n128_u64[0]);
    }

    return;
  }

  __src = 0;
  v45 = 0;
  v43 = 0;
  v26 = *(a1 + 32);
  if ((sub_1000A3554(v26, &v43) & 1) == 0 || (__dst[0] = 0, (sub_1000A3554(v26, __dst) & 1) == 0) || (v27 = v43, (sub_1000A73E4(v26, v43) & 1) == 0) || (sub_1000A7B24(v26, __dst[0], &__src) & 1) == 0)
  {
    *a4 = 0;
    *(a4 + 64) = 0;
    return;
  }

  v28 = *(a1 + 48);
  v29 = *v28;
  if (*v28)
  {
    v30 = __src;
    v31 = v45;
    v32 = v28[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v46.n128_u64[0] = v29;
    v46.n128_u64[1] = v32;
    v48 = &off_1002E05A8 + 6;
    v63 = &off_1002E05A8 + 6;
    off_1002E05B0(&v61, &v46);
    (*((v63 & 0xFFFFFFFFFFFFFFF8) + 16))(&v46);
    v33 = v63;
    v48 = 0;
    __dst[0] = v30;
    __dst[1] = v31;
    v50 = v27;
    v53 = v63;
    if (v63 <= 7)
    {
      v34 = 0;
      v54 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v50;
      *(a4 + 48) = v33;
      goto LABEL_54;
    }

    if ((~v63 & 6) != 0)
    {
      v51 = v61;
      v52 = v62;
      v54 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v50;
      *(a4 + 48) = v33;
      v35 = (a4 + 48);
    }

    else
    {
      (*((v63 & 0xFFFFFFFFFFFFFFF8) + 8))(&v51, &v61);
      (*((v53 & 0xFFFFFFFFFFFFFFF8) + 16))(&v61);
      v34 = 0;
      v54 = 0;
      *a4 = *__dst;
      v33 = v53;
      *(a4 + 16) = v50;
      *(a4 + 48) = v33;
      v35 = (a4 + 48);
      if (v33 < 8)
      {
        goto LABEL_54;
      }
    }

    if ((v33 & 2) != 0 && (v33 & 4) != 0)
    {
      v38 = (*((v33 & 0xFFFFFFFFFFFFFFF8) + 8))((a4 + 24), &v51);
      (*((*v35 & 0xFFFFFFFFFFFFFFF8) + 16))(&v51, v38);
      v34 = v54;
    }

    else
    {
      v34 = 0;
      *(a4 + 24) = v51;
      *(a4 + 40) = v52;
    }

    v53 = 0;
LABEL_54:
    *(a4 + 56) = v34;
    *(a4 + 64) = 1;
    v39 = v48;
    if (v48 >= 8)
    {
      if ((v48 & 4) != 0)
      {
        if ((v48 & 2) != 0)
        {
          v40 = &v46;
        }

        else
        {
          v40 = v46.n128_u64[0];
        }

        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 16))(v40);
      }

      if ((v39 & 2) == 0)
      {
        llvm::deallocate_buffer(v46.n128_u64[0], v46.n128_u64[1], v47);
      }
    }

    return;
  }

  v36 = v45;
  a2(__dst, a3, v45, v27);
  memcpy(__dst[0], __src, v36);
  *a4 = *__dst;
  v37 = v53;
  *(a4 + 16) = v50;
  *(a4 + 48) = v37;
  if (v37 >= 8)
  {
    if ((v37 & 2) != 0 && (v37 & 4) != 0)
    {
      (*((v37 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v51);
      (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v51);
    }

    else
    {
      *(a4 + 24) = v51;
      *(a4 + 40) = v52;
    }
  }

  *(a4 + 56) = v54;
  *(a4 + 64) = 1;
}

__n128 sub_1000AC97C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void sub_1000AC98C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1000ACA08(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  (*(***a1 + 32))(v44);
  if (v45)
  {
    (*(***a1 + 40))(&v50);
    v7 = llvm::StringMapImpl::hash(a2, a3);
    v8 = sub_1000ACF7C((v6 + 64), a2, a3, v7);
    v9 = *v8;
    if (*(*v8 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    v10 = v50;
    *(v9 + 24) = v51;
    *(v9 + 8) = v10;
    v11 = *(v6 + 8);
    v12 = *v6;
    v13 = v44;
    if (v11 >= *(v6 + 12))
    {
      if (v12 <= v44 && v12 + 24 * v11 > v44)
      {
        v40 = v44 - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v11 + 1, 24);
        v12 = *v6;
        v13 = &v40[*v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v11 + 1, 24);
        v12 = *v6;
        v13 = v44;
      }
    }

    v14 = v12 + 24 * *(v6 + 8);
    v15 = *v13;
    *(v14 + 16) = *(v13 + 2);
    *v14 = v15;
    ++*(v6 + 8);
    return 1;
  }

  else
  {
    mlir::emitError(*(*(a1 + 8) + 24), &v50);
    if (v50)
    {
      LODWORD(v46) = 3;
      v47 = "unknown 'resource' key '";
      v48 = 24;
      v17 = &v46;
      v18 = v52;
      if (v53 >= v54)
      {
        if (v52 <= &v46 && v52 + 24 * v53 > &v46)
        {
          v41 = &v46 - v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v18 = v52;
          v17 = (v52 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v17 = &v46;
          v18 = v52;
        }
      }

      v19 = &v18[24 * v53];
      v20 = *v17;
      *(v19 + 2) = v17[2];
      *v19 = v20;
      ++v53;
      if (v50)
      {
        v49 = 261;
        v46 = a2;
        v47 = a3;
        mlir::Diagnostic::operator<<(&v50 + 8, &v46);
        if (v50)
        {
          LODWORD(v46) = 3;
          v47 = "' for dialect '";
          v48 = 15;
          v21 = &v46;
          v22 = v52;
          if (v53 >= v54)
          {
            if (v52 <= &v46 && v52 + 24 * v53 > &v46)
            {
              v42 = &v46 - v52;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
              v22 = v52;
              v21 = (v52 + v42);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
              v21 = &v46;
              v22 = v52;
            }
          }

          v23 = &v22[24 * v53];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          ++v53;
          if (v50)
          {
            v25 = ***(a1 + 16);
            v49 = 261;
            v27 = *(v25 + 24);
            v26 = *(v25 + 32);
            v46 = v27;
            v47 = v26;
            mlir::Diagnostic::operator<<(&v50 + 8, &v46);
            if (v50)
            {
              LODWORD(v46) = 3;
              v47 = "'";
              v48 = 1;
              v28 = &v46;
              v29 = v52;
              if (v53 >= v54)
              {
                if (v52 <= &v46 && v52 + 24 * v53 > &v46)
                {
                  v43 = &v46 - v52;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                  v29 = v52;
                  v28 = (v52 + v43);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                  v28 = &v46;
                  v29 = v52;
                }
              }

              v30 = &v29[24 * v53];
              v31 = *v28;
              *(v30 + 2) = v28[2];
              *v30 = v31;
              ++v53;
            }
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v59;
        v34 = __p;
        if (v59 != __p)
        {
          do
          {
            v33 = sub_10005BEF4(v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v59 = v32;
        operator delete(v34);
      }

      v35 = v56;
      if (v56)
      {
        v36 = v57;
        v37 = v56;
        if (v57 != v56)
        {
          do
          {
            v38 = *--v36;
            *v36 = 0;
            if (v38)
            {
              operator delete[]();
            }
          }

          while (v36 != v35);
          v37 = v56;
        }

        v57 = v35;
        operator delete(v37);
      }

      if (v52 != v55)
      {
        free(v52);
      }
    }
  }

  return v16;
}

uint64_t *sub_1000ACF7C(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 33), 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer((a3 + 33), 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  buffer[2] = 0;
  buffer[3] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

void sub_1000AD09C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_100003FC0();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_100003FC0();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1000AD1F0(uint64_t a1, void *a2, uint64_t *a3)
{
  v19[0] = 0;
  if ((sub_1000A3554(a2, v19) & 1) == 0)
  {
    return 0;
  }

  result = sub_1000A9ED4((a1 + 88), v19[0]);
  v18 = result;
  if (result)
  {
    v7 = result;
    if (mlir::LocationAttr::classof(result))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
    if (v8)
    {
      return 1;
    }

    else
    {
      if ((atomic_load_explicit(&qword_1002E05D0, memory_order_acquire) & 1) == 0)
      {
        sub_100299D4C();
      }

      v17 = xmmword_1002E05C0;
      sub_1000ADC68(v19, a2[3], &v17, &v18);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
      v9 = result;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
        result = v9;
      }

      if (v27 == 1)
      {
        if (v26 != &v27)
        {
          free(v26);
          result = v9;
        }

        v10 = __p;
        if (__p)
        {
          v11 = v25;
          v12 = __p;
          if (v25 != __p)
          {
            do
            {
              v11 = sub_10005BEF4(v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v25 = v10;
          operator delete(v12);
          result = v9;
        }

        v13 = v22;
        if (v22)
        {
          v14 = v23;
          v15 = v22;
          if (v23 != v22)
          {
            do
            {
              v16 = *--v14;
              *v14 = 0;
              if (v16)
              {
                operator delete[]();
              }
            }

            while (v14 != v13);
            v15 = v22;
          }

          v23 = v13;
          operator delete(v15);
          result = v9;
        }

        if (v20 != &v21)
        {
          free(v20);
          return v9;
        }
      }
    }
  }

  return result;
}

void sub_1000AD3EC(uint64_t a1, void *a2, unint64_t a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v6 = 1;
  v31 = 1;
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  if (sub_1000A3554(a2, &v31))
  {
    v6 = v31;
    if (v31)
    {
LABEL_4:
      v7 = 0;
      while (1)
      {
        v30 = 0;
        if (a3 >= 2 && (sub_1000A3554(a2, &v30) & 1) == 0)
        {
          goto LABEL_47;
        }

        v29 = 0;
        if ((sub_1000A3554(a2, &v29) & 1) == 0)
        {
          goto LABEL_47;
        }

        v8 = v29;
        v9 = v29 >> 1;
        v29 >>= 1;
        __src = v40;
        v39 = 0x400000000;
        if (v8 >= 2)
        {
          while (1)
          {
            __dst = 0;
            if ((sub_1000A3554(a2, &__dst) & 1) == 0)
            {
              break;
            }

            v10 = __dst;
            v11 = v39;
            if (v39 >= HIDWORD(v39))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v40, v39 + 1, 4);
              v11 = v39;
            }

            *(__src + v11) = v10;
            v12 = (v39 + 1);
            LODWORD(v39) = v39 + 1;
            if (!--v9)
            {
              v28 = v30;
              __dst = v37;
              v36 = 0x400000000;
              if (v12)
              {
                if (__src == v40)
                {
                  v13 = v12;
                  if (v12 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v37, v12, 4), (v13 = v39) != 0))
                  {
                    memcpy(__dst, __src, 4 * v13);
                  }

                  LODWORD(v36) = v12;
                }

                else
                {
                  __dst = __src;
                  v36 = __PAIR64__(HIDWORD(v39), v12);
                  __src = v40;
                  HIDWORD(v39) = 0;
                }

                LODWORD(v39) = 0;
              }

              goto LABEL_22;
            }
          }

          *a1 = 0;
          *(a1 + 24) = 0;
          if (__src == v40)
          {
            goto LABEL_48;
          }

          free(__src);
          v22 = v34;
          v23 = v32;
          if (v34)
          {
            goto LABEL_49;
          }

          goto LABEL_56;
        }

        v28 = v30;
        __dst = v37;
        v36 = 0x400000000;
LABEL_22:
        v37[16] = v8 & 1;
        if (!v34)
        {
          break;
        }

        v14 = (37 * v28) & (v34 - 1);
        v15 = (v32 + 48 * v14);
        v16 = *v15;
        if (v28 != *v15)
        {
          v17 = 0;
          v18 = 1;
          while (v16 != -1)
          {
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v16 == -2;
            }

            if (v19)
            {
              v17 = v15;
            }

            v20 = v14 + v18++;
            v14 = v20 & (v34 - 1);
            v15 = (v32 + 48 * v14);
            v16 = *v15;
            if (v28 == *v15)
            {
              goto LABEL_35;
            }
          }

          if (v17)
          {
            v21 = v17;
          }

          else
          {
            v21 = v15;
          }

          goto LABEL_34;
        }

LABEL_35:
        if (__dst != v37)
        {
          free(__dst);
        }

        if (__src != v40)
        {
          free(__src);
        }

        if (++v7 == v6)
        {
          goto LABEL_55;
        }
      }

      v21 = 0;
LABEL_34:
      sub_1000AE260(&v32, v21, &v28, &__dst);
      goto LABEL_35;
    }

LABEL_55:
    *a1 = v32;
    *(a1 + 8) = v33;
    v32 = 0;
    v33 = 0;
    *(a1 + 16) = v34;
    v34 = 0;
    *(a1 + 24) = 1;
    v23 = v32;
    goto LABEL_56;
  }

LABEL_47:
  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_48:
  v22 = v34;
  v23 = v32;
  if (!v34)
  {
LABEL_56:
    v27 = 0;
    goto LABEL_57;
  }

LABEL_49:
  v24 = 48 * v22;
  v25 = v23 + 24;
  do
  {
    if (*(v25 - 6) <= 0xFFFFFFFD)
    {
      v26 = *(v25 - 2);
      if (v25 != v26)
      {
        free(v26);
      }
    }

    v25 += 48;
    v24 -= 48;
  }

  while (v24);
  v23 = v32;
  v27 = 48 * v34;
LABEL_57:
  llvm::deallocate_buffer(v23, v27, 8uLL);
}

void sub_1000AD78C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 12) >= a2)
  {
    return;
  }

  v26[7] = v2;
  v26[8] = v3;
  v26[0] = 0;
  v5 = (a1 + 16);
  v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, v26);
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 8 * v8;
    if (v9 >= 0xB)
    {
      v13 = v7 >= &v6[v10] || v6 >= &v7[v10];
      v11 = v6;
      v12 = *a1;
      if (v13)
      {
        v14 = v9 + 1;
        v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = &v6[v15];
        v12 = &v7[v15];
        v16 = (v7 + 16);
        v17 = v6 + 16;
        v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = *(v16 - 1);
          v20 = *v16;
          *(v16 - 1) = 0uLL;
          *v16 = 0uLL;
          *(v17 - 1) = v19;
          *v17 = v20;
          v16 += 2;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_15:
          v23 = v7 - 8;
          do
          {
            v24 = *&v23[v10];
            *&v23[v10] = 0;
            if (v24)
            {
              mlir::Region::~Region(v24);
              operator delete();
            }

            v10 -= 8;
          }

          while (v10);
          v7 = *a1;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v11 = v6;
      v12 = *a1;
    }

    v21 = &v7[8 * v8];
    do
    {
      v22 = *v12;
      *v12 = 0;
      v12 += 8;
      *v11 = v22;
      v11 += 8;
    }

    while (v12 != v21);
    goto LABEL_15;
  }

LABEL_20:
  v25 = v26[0];
  if (v7 != v5)
  {
    free(v7);
  }

  *a1 = v6;
  *(a1 + 12) = v25;
}

uint64_t sub_1000AD8F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50[0] = a3;
  v50[1] = a4;
  v4 = a1[86];
  v5 = *(v4 - 32) + 4 * *(v4 - 24);
  v7 = *(v5 - 4);
  v6 = (v5 - 4);
  v40 = v7 + a4;
  v8 = (*(v4 - 48) - *(v4 - 56)) >> 3;
  if (v8 >= (v7 + a4))
  {
    if (a4)
    {
      v17 = 0;
      v18 = a4;
      do
      {
        v20 = mlir::ValueRange::dereference_iterator(v50, v17);
        v19 = *v6;
        v21 = *(v4 - 56);
        v22 = *(v21 + 8 * v19);
        *(v21 + 8 * v19) = v20;
        v51 = v22;
        if (v22)
        {
          v23 = v20;
          DefiningOp = mlir::Value::getDefiningOp(&v51);
          v25 = v51;
          while (1)
          {
            v26 = *v25;
            if (!*v25)
            {
              break;
            }

            v27 = v26[1];
            if (v27)
            {
              v28 = *v26;
              *v27 = *v26;
              if (v28)
              {
                *(v28 + 8) = v27;
              }
            }

            v26[3] = v23;
            v26[1] = v23;
            v29 = *v23;
            *v26 = *v23;
            if (v29)
            {
              *(v29 + 8) = v26;
            }

            *v23 = v26;
          }

          mlir::Operation::moveBefore(DefiningOp, (a1 + 100), a1 + 104);
          LODWORD(v19) = *v6;
        }

        ++v17;
        *v6 = v19 + 1;
      }

      while (v17 != v18);
    }

    return 1;
  }

  else
  {
    v39 = (v8 - 1);
    mlir::emitError(a2, &v51);
    if (v51)
    {
      sub_1000AE7D4(&v52, "value index range was outside of the expected range for the parent region, got [", v6, ", ", &v40, "), but the maximum index was ", &v39);
    }

    sub_10006BAFC(v41, &v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v60 == 1)
    {
      if (v59 != &v60)
      {
        free(v59);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v58;
        v11 = __p;
        if (v58 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v58 = v9;
        operator delete(v11);
      }

      v12 = v55;
      if (v55)
      {
        v13 = v56;
        v14 = v55;
        if (v56 != v55)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v55;
        }

        v56 = v12;
        operator delete(v14);
      }

      if (v53 != &v54)
      {
        free(v53);
      }
    }

    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v31 = v46;
      if (v46)
      {
        v32 = v47;
        v33 = v46;
        if (v47 != v46)
        {
          do
          {
            v32 = sub_10005BEF4(v32 - 1);
          }

          while (v32 != v31);
          v33 = v46;
        }

        v47 = v31;
        operator delete(v33);
      }

      v34 = v44;
      if (v44)
      {
        v35 = v45;
        v36 = v44;
        if (v45 != v44)
        {
          do
          {
            v37 = *--v35;
            *v35 = 0;
            if (v37)
            {
              operator delete[]();
            }
          }

          while (v35 != v34);
          v36 = v44;
        }

        v45 = v34;
        operator delete(v36);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v30;
}

void sub_1000ADC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_1000ADDF4(&v15, "expected attribute of type: ", a3, ", but got: ", a4);
  }

  sub_10006BAFC(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

uint64_t sub_1000ADDF4(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = *(a3 + 8);
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  return sub_1000ADF1C(a1, a4, a5);
}

uint64_t sub_1000ADF1C(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  v12 = *a3;
  v13 = &v21;
  mlir::DiagnosticArgument::DiagnosticArgument(&v21, v12);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  if (v14 >= *(a1 + 28))
  {
    if (v15 <= &v21 && v15 + 24 * v14 > &v21)
    {
      v20 = &v21 - v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v20[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v21;
    }
  }

  v16 = v15 + 24 * *(a1 + 24);
  v17 = *v13;
  *(v16 + 16) = *(v13 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

const char *sub_1000AE0BC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LocationAttr]";
  v6 = 80;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *sub_1000AE13C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DictionaryAttr]";
  v6 = 82;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_1000AE1BC(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 48 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1000AE260(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v5 = a2;
  v12 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v9 = a3;
    v7 *= 2;
  }

  else
  {
    if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = a3;
  }

  v10 = a1;
  sub_1000AE378(a1, v7);
  sub_1000AE1BC(v10, v9, &v12);
  a1 = v10;
  a3 = v9;
  v11 = *(v10 + 2);
  v5 = v12;
  *(a1 + 2) = v11 + 1;
  if (*v5 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (*(a4 + 8))
  {
    sub_100094D2C(v5 + 8, a4);
  }

  *(v5 + 40) = *(a4 + 32);
  return v5;
}

void sub_1000AE378(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 48 * v11 - 48;
    if (v12 >= 0x30)
    {
      v14 = v12 / 0x30 + 1;
      v13 = &buffer[12 * (v14 & 0xFFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -1;
        v15[12] = -1;
        v15 += 24;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0xFFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[12 * v11];
    do
    {
      *v13 = -1;
      v13 += 12;
    }

    while (v13 != v17);
    return;
  }

  v10 = 12 * v3;
  sub_1000AE4BC(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 4), 8uLL);
}

void sub_1000AE4BC(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[12 * v6];
      do
      {
        *v9 = -1;
        v9 += 12;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[12 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[12] = -1;
      v11 += 24;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & (37 * v14);
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          sub_100094D2C(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != (v4 + 3))
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

void sub_1000AE680(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      mlir::Region::~Region(v22);
      operator delete();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_19:
  v23 = v24;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v23;
}

double sub_1000AE7D4(uint64_t a1, char *__s, unsigned int *a3, char *a4, unsigned int *a5, char *a6, char **a7)
{
  v14 = strlen(__s);
  v15 = a1;
  v18 = *(a1 + 16);
  v17 = a1 + 16;
  v16 = v18;
  v37 = 3;
  v38 = __s;
  v39 = v14;
  v19 = *(v17 + 8);
  v20 = &v37;
  if (v19 >= *(v17 + 12))
  {
    if (v16 <= &v37 && v16 + 24 * v19 > &v37)
    {
      v33 = &v37 - v16;
      v34 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v19 + 1, 24);
      v15 = v34;
      v16 = *(v34 + 16);
      v20 = &v33[v16];
    }

    else
    {
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v19 + 1, 24);
      v15 = v31;
      v16 = *(v31 + 16);
      v20 = &v37;
    }
  }

  v21 = v16 + 24 * *(v15 + 24);
  v22 = *v20;
  *(v21 + 16) = *(v20 + 2);
  *v21 = v22;
  v23 = *(v15 + 28);
  v24 = (*(v15 + 24) + 1);
  *(v15 + 24) = v24;
  v25 = *a3;
  v37 = 5;
  v38 = v25;
  v26 = *(v15 + 16);
  v27 = &v37;
  if (v24 >= v23)
  {
    if (v26 <= &v37 && v26 + 24 * v24 > &v37)
    {
      v35 = &v37 - v26;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v24 + 1, 24);
      v15 = v36;
      v26 = *(v36 + 16);
      v27 = &v35[v26];
    }

    else
    {
      v32 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v24 + 1, 24);
      v15 = v32;
      v26 = *(v32 + 16);
      v27 = &v37;
    }
  }

  v28 = v26 + 24 * *(v15 + 24);
  v29 = *v27;
  *(v28 + 16) = *(v27 + 2);
  *v28 = v29;
  ++*(v15 + 24);
  return sub_1000AE9C8(v15, a4, a5, a6, a7);
}

double sub_1000AE9C8(uint64_t a1, char *__s, unsigned int *a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = sub_1000A83D8(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t sub_1000AEBA4(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 48 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1000AEC4C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v15 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v12 = a3;
    v7 *= 2;
    goto LABEL_16;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
    v12 = a3;
LABEL_16:
    v13 = a1;
    sub_1000AEDA8(a1, v7);
    sub_1000AEBA4(v13, v12, &v15);
    a1 = v13;
    a3 = v12;
    v14 = *(v13 + 2);
    v5 = v15;
    *(a1 + 2) = v14 + 1;
    if (*v5 == -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  v8 = (v5 + 24);
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (v5 + 8 != a4)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      if (v9 < 5)
      {
        v10 = *(a4 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 8, (v5 + 24), *(a4 + 8), 4);
        v10 = *(a4 + 8);
        if (!v10)
        {
LABEL_12:
          *(v5 + 16) = v9;
          goto LABEL_13;
        }

        v8 = *(v5 + 8);
      }

      memcpy(v8, *a4, 4 * v10);
      goto LABEL_12;
    }
  }

LABEL_13:
  *(v5 + 40) = *(a4 + 32);
  return v5;
}

void sub_1000AEDA8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 48 * v11 - 48;
    if (v12 >= 0x30)
    {
      v14 = v12 / 0x30 + 1;
      v13 = &buffer[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[6] = -4096;
        v15 += 12;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0xFFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[6 * v11];
    do
    {
      *v13 = -4096;
      v13 += 6;
    }

    while (v13 != v17);
    return;
  }

  v10 = 6 * v3;
  sub_1000AEEEC(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_1000AEEEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[6 * v6];
      do
      {
        *v9 = -4096;
        v9 += 6;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[6 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[6] = -4096;
      v11 += 12;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((v14 >> 4) ^ (v14 >> 9));
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          sub_100094D2C(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != v4 + 3)
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1000AF0B8(uint64_t a1, mlir::MLIRContext *a2, mlir::UnknownLoc **a3, char a4, _OWORD *a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a1 + 536;
  *(a1 + 96) = a1 + 424;
  *(a1 + 104) = a1 + 336;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = &_mh_execute_header;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = &_mh_execute_header;
  *(a1 + 224) = a2;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x600000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0x1000000000;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = &_mh_execute_header;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x200000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0x2000000000;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = a1 + 552;
  *(a1 + 544) = 0x300000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x600000000;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 832) = a1 + 832;
  *(a1 + 840) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  v10 = mlir::UnknownLoc::get(*a3, a2);
  mlir::ValueRange::ValueRange(v17, 0, 0);
  v14 = mlir::NoneType::get(*a3, v11);
  mlir::TypeRange::TypeRange(v16, &v14, 1uLL);
  mlir::BlockRange::BlockRange(v15, 0, 0);
  mlir::OperationState::OperationState(a1 + 872, v10, "builtin.unrealized_conversion_cast", 34, v17[0], v17[1], v16[0], v16[1], 0, 0, v15[0], v15[1], 0, 0);
  v12 = a5[1];
  *(a1 + 1176) = *a5;
  *(a1 + 1192) = v12;
  *(a1 + 1208) = a6;
  return a1;
}

uint64_t sub_1000AF2E8(uint64_t a1)
{
  mlir::OperationState::~OperationState((a1 + 872));
  mlir::Block::~Block((a1 + 800));
  mlir::Block::~Block((a1 + 728));
  llvm::deallocate_buffer(*(a1 + 704), (16 * *(a1 + 720)), 8uLL);
  v2 = *(a1 + 680);
  if (v2)
  {
    v3 = *(a1 + 688);
    v4 = *(a1 + 680);
    if (v3 != v2)
    {
      v5 = v3 - 16;
      do
      {
        v7 = *(v5 - 2);
        if (v5 != v7)
        {
          free(v7);
        }

        v8 = *(v5 - 5);
        if (v8)
        {
          *(v5 - 4) = v8;
          operator delete(v8);
        }

        v6 = v5 - 40;
        v5 -= 56;
      }

      while (v6 != v2);
      v4 = *(a1 + 680);
    }

    *(a1 + 688) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 616);
  if (v9 != (a1 + 632))
  {
    free(v9);
  }

  v10 = *(a1 + 536);
  if (v10 != (a1 + 552))
  {
    free(v10);
  }

  v11 = *(a1 + 528);
  v12 = *(a1 + 512);
  if (!v11)
  {
    llvm::deallocate_buffer(v12, 0, 8uLL);
    if (!*(a1 + 500))
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v13 = v12 + 24;
  v14 = 48 * v11;
  do
  {
    if ((*(v13 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }
    }

    v13 += 48;
    v14 -= 48;
  }

  while (v14);
  llvm::deallocate_buffer(*(a1 + 512), (48 * *(a1 + 528)), 8uLL);
  if (*(a1 + 500))
  {
LABEL_24:
    v16 = *(a1 + 496);
    if (v16)
    {
      v17 = 0;
      v18 = 8 * v16;
      do
      {
        v19 = *(*(a1 + 488) + v17);
        if (v19 != -8 && v19 != 0)
        {
          v21 = *v19;
          if (*(v19 + 31) < 0)
          {
            operator delete(*(v19 + 1));
          }

          llvm::deallocate_buffer(v19, (v21 + 33), 8uLL);
        }

        v17 += 8;
      }

      while (v18 != v17);
    }
  }

LABEL_34:
  free(*(a1 + 488));
  v22 = *(a1 + 424);
  if (v22 != (a1 + 440))
  {
    free(v22);
  }

  v23 = *(a1 + 360);
  if (v23 != (a1 + 376))
  {
    free(v23);
  }

  if (*(a1 + 348))
  {
    v24 = *(a1 + 344);
    if (v24)
    {
      v25 = 0;
      v26 = 8 * v24;
      do
      {
        v27 = *(*(a1 + 336) + v25);
        if (v27 != -8 && v27 != 0)
        {
          llvm::deallocate_buffer(v27, (*v27 + 17), 8uLL);
        }

        v25 += 8;
      }

      while (v26 != v25);
    }
  }

  free(*(a1 + 336));
  v29 = *(a1 + 272);
  v30 = *(a1 + 280);
  if (v30)
  {
    v31 = 8 * v30;
    v32 = v29 - 8;
    do
    {
      v33 = *&v32[v31];
      *&v32[v31] = 0;
      if (v33)
      {
        v34 = *(v33 + 56);
        *(v33 + 56) = 0;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        operator delete();
      }

      v31 -= 8;
    }

    while (v31);
    v29 = *(a1 + 272);
  }

  if (v29 != (a1 + 288))
  {
    free(v29);
  }

  v35 = *(a1 + 168);
  if (v35 != (a1 + 184))
  {
    free(v35);
  }

  v36 = *(a1 + 112);
  if (v36 != (a1 + 128))
  {
    free(v36);
  }

  llvm::deallocate_buffer(*(a1 + 48), (16 * *(a1 + 64)), 8uLL);
  if (*(a1 + 40))
  {
    v37 = *(a1 + 32);
    v38 = *(*(a1 + 24) + 8);
    v39 = *v37;
    *(v39 + 8) = v38;
    *v38 = v39;
    *(a1 + 40) = 0;
    if (v37 != (a1 + 24))
    {
      do
      {
        v40 = v37[1];
        v41 = v37[8];
        if (v41 != v37 + 10)
        {
          free(v41);
        }

        v42 = v37[6];
        v37[6] = 0;
        if (v42)
        {
          operator delete();
        }

        operator delete(v37);
        v37 = v40;
      }

      while (v40 != (a1 + 24));
    }
  }

  return a1;
}

uint64_t sub_1000AF688(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    sub_100003FC0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v17 = a1;
  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v5 = 56 * v1;
  __p = 0;
  v14 = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 48) = 0;
  *(v5 + 24) = v5 + 40;
  *(v5 + 36) = 4;
  v15 = 56 * v1 + 56;
  v16 = 0;
  sub_1000AF7FC(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 56);
    v15 -= 56;
    v10 = *(v8 - 32);
    if (v10 != (v8 - 16))
    {
      free(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 48) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_1000AF7FC(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = v5 + v7;
      v9 = (v6 + v7);
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = *(v5 + v7);
      v9[2] = *(v5 + v7 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v9[3] = v6 + v7 + 40;
      *(v6 + v7 + 32) = 0x400000000;
      if (*(v5 + v7 + 32))
      {
        sub_100094D2C(v6 + v7 + 24, (v8 + 24));
      }

      v7 += 56;
    }

    while (v8 + 56 != v4);
    do
    {
      v10 = *(v5 + 24);
      if ((v5 + 40) != v10)
      {
        free(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v11;
        operator delete(v11);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_1000AF92C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_100003FC0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    sub_100003FC0();
  }

  v8 = v2 << 7;
  __p = 0;
  v18 = v8;
  v20 = 0;
  *v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 40) = v8 + 56;
  *(v8 + 48) = 0x600000000;
  if (*(a2 + 48))
  {
    sub_10005F9E8(v8 + 40, (a2 + 40));
  }

  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  v19 = v8 + 128;
  sub_1000AFAC0(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  for (i = v19; v19 != v12; i = v19)
  {
    v19 = i - 128;
    v14 = *(i - 88);
    if (v14 != (i - 72))
    {
      free(v14);
    }

    v15 = *(i - 104);
    *(i - 104) = 0;
    if (v15)
    {
      operator delete();
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

uint64_t *sub_1000AFAC0(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v9 = v4 + v7;
      v10 = v6 + v7;
      v11 = *(v4 + v7);
      *(v10 + 16) = *(v4 + v7 + 16);
      *v10 = v11;
      v12 = *(v4 + v7 + 24);
      *(v4 + v7 + 24) = 0;
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v4 + v7 + 32);
      *(v6 + v7 + 40) = v6 + v7 + 56;
      *(v10 + 48) = 0x600000000;
      if (*(v4 + v7 + 48))
      {
        sub_10005F9E8(v6 + v7 + 40, (v9 + 40));
      }

      v8 = *(v9 + 104);
      *(v10 + 120) = *(v9 + 120);
      *(v10 + 104) = v8;
      v7 += 128;
    }

    while ((v9 + 128) != v5);
    v13 = (v4 + 56);
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      result = *(v13 - 4);
      *(v13 - 4) = 0;
      if (result)
      {
        operator delete();
      }

      v14 = (v13 + 9);
      v13 += 16;
    }

    while (v14 != v5);
  }

  a2[1] = v6;
  v16 = *v3;
  *v3 = v6;
  v3[1] = v16;
  a2[1] = v16;
  v17 = v3[1];
  v3[1] = a2[2];
  a2[2] = v17;
  v18 = v3[2];
  v3[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1000AFECC(uint64_t a1, char *__s, void **a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v15[0]) = 3;
  v15[1] = __s;
  v15[2] = v6;
  v9 = *(a1 + 24);
  v10 = v15;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= v15 && v8 + 24 * v9 > v15)
    {
      v14 = v15 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v14[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = v15;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v16 = 260;
  v15[0] = a3;
  mlir::Diagnostic::operator<<(a1, v15);
  return a1;
}

uint64_t sub_1000AFFD4(void *a1, uint64_t a2)
{
  v14 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  if (*(*a1 + 248) <= 4uLL)
  {
    v15 = 0;
    if (sub_1000A3554(v3, &v15))
    {
      v5 = sub_1000A87D4(v3[3], *(v4 + 536), *(v4 + 544), v15, &v14, "string", 6);
      v6 = 0;
      v7 = 0;
      result = 0;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  v15 = 0;
  if ((sub_1000A3554(v3, &v15) & 1) == 0)
  {
    return 0;
  }

  v9 = v15;
  if ((sub_1000A87D4(v3[3], *(v4 + 536), *(v4 + 544), (v15 >> 1), &v14, "string", 6) & 1) == 0)
  {
    return 0;
  }

  v6 = v9 & 1;
  v7 = 1;
LABEL_8:
  v10 = v14;
  v11 = v6 | (v7 << 8);
  v12 = *(v4 + 368);
  if (v12 >= *(v4 + 372))
  {
    sub_1000B0144(v4 + 360, a2, v14, *(&v14 + 1), v11);
  }

  else
  {
    v13 = *(v4 + 360) + 48 * v12;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = a2;
    *(v13 + 24) = v10;
    *(v13 + 40) = v11;
    ++*(v4 + 368);
  }

  return 1;
}

__n128 sub_1000B0144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v14[0] = 0;
  v14[8] = 0;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = v14;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= v14 && v6 + 48 * v5 > v14)
    {
      v12 = &v14[-v6];
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 48);
      a1 = v13;
      v6 = *v13;
      v7 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 48);
      a1 = v11;
      v6 = *v11;
      v7 = v14;
    }
  }

  v8 = v6 + 48 * *(a1 + 8);
  result = *v7;
  v10 = *(v7 + 2);
  *(v8 + 16) = *(v7 + 1);
  *(v8 + 32) = v10;
  *v8 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t sub_1000B0224@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 4 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -2;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 4 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -1)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    sub_1000B0434(result, v4);
    sub_1000B0394(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 4 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_1000B0394(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 4 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 4 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_1000B0434(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((4 * v8), 4uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset(buffer, 255, 4 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v4;
      do
      {
        v16 = *v13;
        if (*v13 <= 0xFFFFFFFD)
        {
          v17 = *(a1 + 16) - 1;
          v18 = v17 & (37 * v16);
          v15 = &buffer[4 * v18];
          v19 = *v15;
          if (v16 != *v15)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v15;
              }

              v23 = v18 + v21++;
              v18 = v23 & v17;
              v15 = &buffer[4 * (v23 & v17)];
              v19 = *v15;
              if (v16 == *v15)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v15 = v20;
            }
          }

LABEL_16:
          *v15 = v16;
          *(a1 + 8) = ++v12;
        }

        v13 = (v13 + 4);
      }

      while (v13 != (v4 + 4 * v3));
    }

    llvm::deallocate_buffer(v4, (4 * v3), 4uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v14 = *(a1 + 16);
    if (v14)
    {

      memset(buffer, 255, 4 * v14);
    }
  }
}

uint64_t sub_1000B05C8(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    (a2)(a3, a1);
  }

  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        result = *(v12 + 40);
        v13 = v12 + 32;
        if (result != v12 + 32)
        {
          do
          {
            v14 = *(result + 8);
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
            sub_1000B05C8(ValuePtr, a2, a3, a4);
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return (a2)(a3, a1);
  }

  return result;
}

uint64_t sub_1000B06E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v8 = a2;
  v4 = (*v2)++;
  v7 = v4;
  return sub_1000B0730(v3 + 704, &v8, &v7, v6);
}

uint64_t sub_1000B0730@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    sub_1000415A0(result, v5);
    sub_1000414FC(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t sub_1000B08B4(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v8)
  {
    return 1;
  }

  v9 = Iterable;
  v10 = Iterable + 24 * v8;
  if (a4 == 1)
  {
    while (1)
    {
      v22 = *(v9 + 8);
      if (v22 != v9)
      {
        break;
      }

LABEL_24:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v23 = *(v22 + 8);
      v24 = *(v22 + 32);
      if (v24 != v22 + 24)
      {
        break;
      }

LABEL_29:
      result = (a2)(a3, v22 - 8);
      if (!result)
      {
        return result;
      }

      v22 = v23;
      if (v23 == v9)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
      result = sub_1000B08B4(ValuePtr, a2, a3, 1);
      if (!result)
      {
        break;
      }

      v24 = *(v24 + 8);
      if (v24 == v22 + 24)
      {
        goto LABEL_29;
      }
    }
  }

  else if (a4)
  {
    while (1)
    {
      v17 = *(v9 + 8);
      if (v17 != v9)
      {
        break;
      }

LABEL_16:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v18 = *(v17 + 8);
      v19 = v17 + 24;
      v20 = *(v17 + 32);
      if (v20 != v17 + 24)
      {
        break;
      }

LABEL_19:
      v17 = v18;
      if (v18 == v9)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v21 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v20);
      result = sub_1000B08B4(v21, a2, a3, a4);
      if (!result)
      {
        break;
      }

      v20 = *(v20 + 8);
      if (v20 == v19)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11 != v9)
      {
        break;
      }

LABEL_5:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v13 = *(v11 + 8);
      result = (a2)(a3, v11 - 8);
      if (result != 2)
      {
        if (!result)
        {
          return result;
        }

        v14 = v11 + 24;
        v15 = *(v11 + 32);
        if (v15 != v14)
        {
          break;
        }
      }

LABEL_7:
      v11 = v13;
      if (v13 == v9)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      v16 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v15);
      result = sub_1000B08B4(v16, a2, a3, 0);
      if (!result)
      {
        break;
      }

      v15 = *(v15 + 8);
      if (v15 == v14)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_1000B0A80(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a1;
  while ((mlir::BytecodeReader::Impl::sortUseListOrder(v4, *v2) & 1) != 0)
  {
    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000B0AE8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v4);
    if ((mlir::BytecodeReader::Impl::sortUseListOrder(v5, NextResultAtOffset) & 1) == 0)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000B0B68(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000B0B68(a1, *a2);
    sub_1000B0B68(a1, a2[1]);
    v4 = a2[11];
    if (v4 == a2 + 8)
    {
      (*(*v4 + 32))(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_6:
        v5 = a2;

LABEL_8:
        operator delete(v5);
        return;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      if ((*(a2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(a2[4]);
    v5 = a2;

    goto LABEL_8;
  }
}

mlir::MLIRContext *mlirContextDestroy(mlir::MLIRContext *result)
{
  if (result)
  {
    mlir::MLIRContext::~MLIRContext(result);

    operator delete();
  }

  return result;
}

uint64_t mlirDialectRegistryDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    v3 = *(v1 + 56);
    if (v3)
    {
      v4 = v2 - 8;
      v5 = 16 * v3;
      do
      {
        v6 = *&v4[v5];
        *&v4[v5] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v5 -= 16;
      }

      while (v5);
      v2 = *(v1 + 48);
    }

    if (v2 != (v1 + 64))
    {
      free(v2);
    }

    llvm::deallocate_buffer(*(v1 + 24), (16 * *(v1 + 40)), 8uLL);
    sub_1000B0B68(v1, *(v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1000B0E40(llvm::raw_ostream *this)
{
  *this = off_1002D6070;
  v2 = this + 48;
  v3 = *(this + 9);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = this;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = this;
  }

  llvm::raw_ostream::~raw_ostream(v4);
}

uint64_t *mlirModuleCreateParse(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1;
  v7 = 1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v14;
  v13 = 0x600000000;
  v14[6] = &v15;
  v14[7] = 0x600000000;
  memset(v16, 0, sizeof(v16));
  v17[0] = v17;
  v17[1] = v17;
  memset(&v17[2], 0, 24);
  if (mlir::parseSourceString(a2, a3, v16, &v6, "", 0, &v5))
  {
    sub_1000B1960(v16, v6, v5, &v4);
  }

  else
  {
    v4 = 0;
  }

  mlir::Block::~Block(v16);
  sub_10005C084(&v6);
  return v4;
}

void mlirModuleDestroy(mlir::Operation *this)
{
  if (this)
  {
    mlir::Operation::erase(this);
  }
}

void mlirOperationWriteBytecode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (a2)
  {
    v3 = v5;
    v5[0] = off_1002D60E8;
    v5[1] = a2;
    v6 = v5;
  }

  else
  {
    v3 = 0;
  }

  v8 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v7 = off_1002D6070;
  if (v3)
  {
    if (v3 == v5)
    {
      v15 = v14;
      (*(*v3 + 24))(v3, v14);
      v16 = a3;
      v17 = 0;
      if (v6 == v5)
      {
        (*(*v6 + 32))(v6);
      }

      else if (v6)
      {
        (*(*v6 + 40))();
      }

LABEL_9:
      mlir::BytecodeWriterConfig::BytecodeWriterConfig();
    }

    v6 = 0;
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v17 = 0;
  goto LABEL_9;
}

void sub_1000B123C(mlir::Region *a1, mlir::Region *a2)
{
  mlir::Region::dropAllReferences(a1);
  v4 = *(a1 + 1);
  if (v4 != a1)
  {
    v5 = *(v4 + 1);
    v6 = (v4 - 8);
    if (v4)
    {
      v7 = v4 - 8;
    }

    else
    {
      v7 = 0;
    }

    llvm::ilist_traits<mlir::Block>::removeNodeFromList(a1, v7);
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    *v9 = v8;
    *(v8 + 8) = v9;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    mlir::Block::~Block(v6);
    operator delete();
  }

  if (*a2 != a2 && a2 != a1)
  {
    v10 = *(a2 + 1);
    llvm::ilist_traits<mlir::Block>::transferNodesFromList(a1, a2, v10, a2);
    if (v10 != a2)
    {
      v11 = *a2;
      v12 = *v10;
      *(v12 + 8) = a2;
      *a2 = v12;
      v13 = *a1;
      v11[1] = a1;
      *v10 = v13;
      *(v13 + 8) = v10;
      *a1 = v11;
    }
  }
}

void sub_1000B1330(llvm::raw_ostream *this)
{
  *this = off_1002D6070;
  v2 = this + 48;
  v3 = *(this + 9);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  llvm::raw_ostream::~raw_ostream(this);

  operator delete();
}

uint64_t sub_1000B13F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v5 = a1 + 72;
  v4 = *(a1 + 72);
  v9 = *(v5 + 8);
  if (v4)
  {
    result = (*(*v4 + 48))(v4, v10, &v9);
    *(a1 + 88) += a3;
  }

  else
  {
    v8 = sub_10000520C();
    return sub_1000B146C(v8);
  }

  return result;
}

uint64_t sub_1000B1474()
{
  {
    sub_100299DA0();
  }

  return llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name;
}

const char *sub_1000B14BC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferTypeOpInterface]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_1000B153C(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 24 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 24 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 24);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 24 * v8), *a2 + 24 * v8, 24 * v11);
    goto LABEL_16;
  }

  return result;
}

void sub_1000B16C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  if (*(a1 + 47) && (Value = mlir::StringAttr::getValue(&v9), mlir::Operation::getInherentAttr(a1, Value, v6), (v7 & 1) != 0))
  {
    mlir::Operation::setInherentAttr(a1, v9, a3);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v10, *(a1 + 56));
    if (mlir::NamedAttrList::set(v10, v9, a3) != a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v10, Context);
    }

    if (v10[0] != &v11)
    {
      free(v10[0]);
    }
  }
}

uint64_t sub_1000B17BC(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  if (*(a1 + 47) && (Value = mlir::StringAttr::getValue(&v10), InherentAttr = mlir::Operation::getInherentAttr(a1, Value, v4), (v6 & 1) != 0))
  {
    v7 = InherentAttr;
    mlir::Operation::setInherentAttr(a1, v10, 0);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v11, *(a1 + 56));
    v7 = mlir::NamedAttrList::erase(v11, v10);
    if (v7)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v11, Context);
    }

    if (v11[0] != &v12)
    {
      free(v11[0]);
    }
  }

  return v7;
}

uint64_t sub_1000B1924(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002D60E8;
  a2[1] = v2;
  return result;
}

uint64_t *sub_1000B1960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v6 = *(a1 + 40);
  if (v6 == a1 + 32 || *(v6 + 8) != a1 + 32 || (v7 = a3, v8 = a2, ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v6), a2 = v8, a3 = v7, *(ValuePtr[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id))
  {
    v12[0] = a2;
    memset(&v12[1], 0, 24);
    sub_1000B1AD0(v12, a3);
  }

  v10 = ValuePtr;
  result = mlir::Operation::remove(ValuePtr);
  *a4 = v10;
  return result;
}

void sub_1000B1AD0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  Context = mlir::Attribute::getContext(&v7);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v6)
  {
    mlir::OperationState::OperationState(v10, a2, v5);
    v9[0] = 0;
    v9[16] = 0;
    mlir::ModuleOp::build(a1, v10);
  }

  sub_100299DF4(v10, v9, v8);
}

uint64_t sub_1000B1BB4(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = Iterable;
    v10 = Iterable + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        v13 = *(v12 + 40);
        v14 = v12 + 32;
        while (v13 != v14)
        {
          v15 = *(v13 + 8);
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
          v17 = sub_1000B1BB4(ValuePtr, a2, a3, a4);
          v13 = v15;
          if (!v17)
          {
            return 0;
          }
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 != 1)
  {
    return 1;
  }

  return (a2)(a3, a1);
}

mlir::PassManager *mlirPassManagerDestroy(mlir::PassManager *result)
{
  if (result)
  {
    mlir::PassManager::~PassManager(result);

    operator delete();
  }

  return result;
}

void mlirPassManagerEnableIRPrinting(llvm *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v20 = off_1002D6130;
    v21 = a2;
    v22 = &v20;
    v17 = off_1002D6178;
    v18 = a3;
    v19 = &v17;
    v13 = a7[1];
    v15 = a7[2];
    v11 = *a7;
    mlir::PassManager::enableIRPrintingToFileTree();
  }

  v26 = off_1002D6130;
  v27 = a2;
  v28 = &v26;
  v23 = off_1002D6178;
  v24 = a3;
  v25 = &v23;
  llvm::errs(a1);
  v14 = a7[1];
  v16 = a7[2];
  v12 = *a7;
  mlir::PassManager::enableIRPrinting();
}

uint64_t sub_1000B20E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = off_1002D6130;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1000B2194(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = off_1002D6178;
  *(a2 + 8) = v2;
  return result;
}

uint64_t mlir::call_interface_impl::parseFunctionResultList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 288))(a1))
  {
    if ((*(*a1 + 304))(a1))
    {
      return 1;
    }

    else
    {
      v11[0] = a2;
      v11[1] = a3;
      v11[2] = a1;
      v10 = (*(*a1 + 392))(a1, 0, sub_1000B357C, v11, 0, 0);
      result = 0;
      if (v10)
      {
        return (*(*a1 + 296))(a1);
      }
    }
  }

  else
  {
    v11[0] = 0;
    if ((*(*a1 + 536))(a1, v11))
    {
      v7 = v11[0];
      v8 = *(a2 + 8);
      if (v8 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v8 + 1, 8);
        LODWORD(v8) = *(a2 + 8);
      }

      *(*a2 + 8 * v8) = v7;
      ++*(a2 + 8);
      v9 = *(a3 + 8);
      if (v9 >= *(a3 + 12))
      {
        sub_1000B3720(a3);
      }

      else
      {
        *(*a3 + 8 * v9) = 0;
        *(a3 + 8) = v9 + 1;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::call_interface_impl::parseFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 304))(a1) & 1) == 0)
  {
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a1;
    if (((*(*a1 + 392))(a1, 0, sub_1000B357C, v13, 0, 0) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 64))(a1))
  {
    return mlir::call_interface_impl::parseFunctionResultList(a1, a4, a5);
  }

  return a6 ^ 1u;
}

llvm::raw_ostream *mlir::call_interface_impl::printFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10)
{
  v13 = a5;
  v75[0] = a2;
  v75[1] = a3;
  v71 = a4;
  v74[0] = a6;
  v74[1] = a7;
  if (a9)
  {
    v17 = *a9 == a9;
    if (*a9 != a9 && a5 == 0 && a4 == 0 && a8 == 0 && a10 != 0)
    {
      return sub_1000B2F00(a1, v75, v74);
    }

    v69 = a10;
  }

  else
  {
    v69 = a10;
    v17 = 1;
  }

  v22 = (*(*a1 + 16))(a1);
  v23 = *(v22 + 4);
  v70 = a8;
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 40);
    v24 = a3;
    if (!a3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 40;
    v24 = a3;
    if (!a3)
    {
      goto LABEL_40;
    }
  }

  if (!v17)
  {
    if (v71)
    {
      v73 = *mlir::ArrayAttr::getValue(&v71);
      Value = mlir::DictionaryAttr::getValue(&v73);
      v37 = v36;
    }

    else
    {
      v37 = 0;
      Value = 0;
    }

    v38 = a9[1];
    if (v38)
    {
      v39 = v38 - 8;
    }

    else
    {
      v39 = 0;
    }

    (*(*a1 + 152))(a1, **(v39 + 48), Value, v37, 0);
    if (v24 == 1)
    {
      goto LABEL_40;
    }

    v42 = 1;
    while (1)
    {
      v48 = (*(*a1 + 16))(a1);
      v49 = v48[4];
      if (v48[3] - v49 > 1uLL)
      {
        *v49 = 8236;
        v48[4] += 2;
        if (!v71)
        {
          goto LABEL_53;
        }
      }

      else
      {
        llvm::raw_ostream::write(v48, ", ", 2uLL);
        if (!v71)
        {
LABEL_53:
          v45 = 0;
          v43 = 0;
          goto LABEL_47;
        }
      }

      v73 = *(mlir::ArrayAttr::getValue(&v71) + 8 * v42);
      v43 = mlir::DictionaryAttr::getValue(&v73);
      v45 = v44;
LABEL_47:
      v46 = a9[1];
      if (v46)
      {
        v47 = v46 - 8;
      }

      else
      {
        v47 = 0;
      }

      (*(*a1 + 152))(a1, *(*(v47 + 48) + 8 * v42++), v43, v45, 0);
      if (v24 == v42)
      {
        goto LABEL_40;
      }
    }
  }

  v25 = mlir::TypeRange::dereference_iterator(a2, 0);
  (*(*a1 + 32))(a1, v25);
  if (v71)
  {
    v73 = *mlir::ArrayAttr::getValue(&v71);
    v26 = mlir::DictionaryAttr::getValue(&v73);
    (*(*a1 + 192))(a1, v26, v27, 0, 0);
  }

  if (v24 != 1)
  {
    for (i = 1; i != v24; ++i)
    {
      v29 = (*(*a1 + 16))(a1);
      v30 = v29[4];
      if (v29[3] - v30 >= 2uLL)
      {
        *v30 = 8236;
        v29[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v29, ", ", 2uLL);
      }

      v31 = mlir::TypeRange::dereference_iterator(a2, i);
      (*(*a1 + 32))(a1, v31);
      if (v71)
      {
        v73 = *(mlir::ArrayAttr::getValue(&v71) + 8 * i);
        v32 = mlir::DictionaryAttr::getValue(&v73);
        (*(*a1 + 192))(a1, v32, v33, 0, 0);
      }
    }
  }

LABEL_40:
  if (v13)
  {
    if (a3)
    {
      v40 = (*(*a1 + 16))(a1);
      v41 = v40[4];
      if (v40[3] - v41 > 1uLL)
      {
        *v41 = 8236;
        v40[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v40, ", ", 2uLL);
      }
    }

    v50 = (*(*a1 + 16))(a1);
    v51 = v50[4];
    if ((v50[3] - v51) > 2)
    {
      *(v51 + 2) = 46;
      *v51 = 11822;
      v50[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v50, "...", 3uLL);
    }
  }

  result = (*(*a1 + 16))(a1);
  v52 = *(result + 4);
  if (v52 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    v53 = v69;
    if (a7)
    {
      goto LABEL_60;
    }
  }

  else
  {
    *(result + 4) = v52 + 1;
    *v52 = 41;
    v53 = v69;
    if (a7)
    {
LABEL_60:
      v54 = (*(*a1 + 16))(a1);
      v55 = v54[4];
      if (v54[3] - v55 > 3uLL)
      {
        *v55 = 540945696;
        v54[4] += 4;
      }

      else
      {
        llvm::raw_ostream::write(v54, " -> ", 4uLL);
      }

      v72 = v70;
      v57 = (*(*a1 + 16))(a1);
      if (a7 != 1 || *(*mlir::TypeRange::dereference_iterator(a6, 0) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id || v70 && (v73 = *mlir::ArrayAttr::getValue(&v72), mlir::DictionaryAttr::size(&v73)))
      {
        v58 = *(v57 + 4);
        if (v58 >= *(v57 + 3))
        {
          llvm::raw_ostream::write(v57, 40);
        }

        else
        {
          *(v57 + 4) = v58 + 1;
          *v58 = 40;
        }

        v59 = 1;
      }

      else
      {
        v59 = 0;
      }

      v60 = mlir::TypeRange::dereference_iterator(a6, 0);
      result = (*(*a1 + 32))(a1, v60);
      if (v72)
      {
        v73 = *mlir::ArrayAttr::getValue(&v72);
        v61 = mlir::DictionaryAttr::getValue(&v73);
        result = (*(*a1 + 192))(a1, v61, v62, 0, 0);
      }

      if (a7 != 1)
      {
        v64 = 1;
        do
        {
          v65 = *(v57 + 4);
          if (*(v57 + 3) - v65 > 1uLL)
          {
            *v65 = 8236;
            *(v57 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v57, ", ", 2uLL);
          }

          v66 = mlir::TypeRange::dereference_iterator(a6, v64);
          result = (*(*a1 + 32))(a1, v66);
          if (v72)
          {
            v73 = *(mlir::ArrayAttr::getValue(&v72) + 8 * v64);
            v67 = mlir::DictionaryAttr::getValue(&v73);
            result = (*(*a1 + 192))(a1, v67, v68, 0, 0);
          }

          ++v64;
        }

        while (a7 != v64);
      }

      if (v59)
      {
        v63 = *(v57 + 4);
        if (v63 >= *(v57 + 3))
        {
          return llvm::raw_ostream::write(v57, 41);
        }

        else
        {
          *(v57 + 4) = v63 + 1;
          *v63 = 41;
        }
      }

      return result;
    }
  }

  if (v53)
  {
    result = (*(*a1 + 16))(a1);
    v56 = *(result + 4);
    if ((*(result + 3) - v56) > 5)
    {
      *(v56 + 4) = 10536;
      *v56 = 540945696;
      *(result + 4) += 6;
    }

    else
    {
      return llvm::raw_ostream::write(result, " -> ()", 6uLL);
    }
  }

  return result;
}

llvm::raw_ostream *sub_1000B2F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = v6;
  v8 = *(v6 + 4);
  if (v8 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 40);
    v9 = a2[1];
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 4) = v8 + 1;
    *v8 = 40;
    v9 = a2[1];
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v10 = *a2;
  v11 = mlir::TypeRange::dereference_iterator(v10, 0);
  (*(*a1 + 32))(a1, v11);
  if (v9 != 1)
  {
    for (i = 1; i != v9; ++i)
    {
      v16 = (*(*a1 + 16))(a1);
      v17 = v16[4];
      if (v16[3] - v17 <= 1uLL)
      {
        llvm::raw_ostream::write(v16, ", ", 2uLL);
      }

      else
      {
        *v17 = 8236;
        v16[4] += 2;
      }

      v15 = mlir::TypeRange::dereference_iterator(v10, i);
      (*(*a1 + 32))(a1, v15);
    }
  }

LABEL_6:
  v12 = *(v7 + 4);
  if (v12 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 41);
  }

  else
  {
    *(v7 + 4) = v12 + 1;
    *v12 = 41;
  }

  return sub_1000B3788(a1, a3);
}

uint64_t mlir::call_interface_impl::addArgAndResultAttrs(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (a4)
  {
    v14 = a3;
    v15 = 8 * a4;
    v16 = 8 * a4;
    v17 = a3;
    while (1)
    {
      v29 = *v17;
      if (v29)
      {
        result = mlir::DictionaryAttr::size(&v29);
        if (result)
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v18) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      DictionaryAttr = *v14;
      if (!*v14)
      {
        DictionaryAttr = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v18) = v30;
      }

      if (v18 >= HIDWORD(v30))
      {
        v20 = DictionaryAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v18 + 1, 8);
        DictionaryAttr = v20;
        LODWORD(v18) = v30;
      }

      *(v29 + v18) = DictionaryAttr;
      v18 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++v14;
      v15 -= 8;
    }

    while (v15);
    ArrayAttr = mlir::Builder::getArrayAttr(v12, v29, v18);
    if (v29 != v31)
    {
      free(v29);
    }

    mlir::NamedAttribute::NamedAttribute(&v29, a7, ArrayAttr);
    result = mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

LABEL_15:
  if (a6)
  {
    v22 = 8 * a6;
    v23 = 8 * a6;
    for (i = a5; ; ++i)
    {
      v29 = *i;
      if (v29)
      {
        result = mlir::DictionaryAttr::size(&v29);
        if (result)
        {
          break;
        }
      }

      v23 -= 8;
      if (!v23)
      {
        return result;
      }
    }

    LODWORD(v25) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      v26 = *a5;
      if (!*a5)
      {
        v26 = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v25) = v30;
      }

      if (v25 >= HIDWORD(v30))
      {
        v27 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v25 + 1, 8);
        v26 = v27;
        LODWORD(v25) = v30;
      }

      *(v29 + v25) = v26;
      v25 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++a5;
      v22 -= 8;
    }

    while (v22);
    v28 = mlir::Builder::getArrayAttr(v12, v29, v25);
    if (v29 != v31)
    {
      free(v29);
    }

    mlir::NamedAttribute::NamedAttribute(&v29, a8, v28);
    return mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

  return result;
}