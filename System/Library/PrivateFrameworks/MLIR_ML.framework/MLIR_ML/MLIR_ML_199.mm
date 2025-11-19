uint64_t mlir::detail::SourceMgrDiagnosticVerifierHandlerImpl::computeExpectedDiags(mlir::detail::SourceMgrDiagnosticVerifierHandlerImpl *this, llvm::raw_ostream *a2, llvm::SourceMgr *a3, const llvm::MemoryBuffer *a4)
{
  v66[200] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 0;
  }

  v7 = (*(*a4 + 16))(a4);
  v9 = v8;
  v11 = llvm::StringMapImpl::hash(v7, v8, v10);
  v12 = *llvm::StringMap<llvm::SmallVector<mlir::detail::ExpectedDiag,2u>,llvm::MallocAllocator>::try_emplace_with_hash<>((this + 8), v7, v9, v11);
  v57 = &v59;
  v58 = 0x100000000;
  v64 = v66;
  v65 = 0x6400000000;
  v13 = *(a4 + 2) - *(a4 + 1);
  v61 = *(a4 + 1);
  v62 = v13;
  llvm::StringRef::split(&v61, &v64, 10, -1, 1);
  v14 = v65;
  if (v65)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v61 = v63;
      v62 = 0x400000000;
      v17 = (v64 + 16 * v15);
      v18 = v17[1];
      last_not_of = llvm::StringRef::find_last_not_of(v17, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      v20 = v17[1];
      if (last_not_of + 1 < v20)
      {
        v21 = last_not_of + 1;
      }

      else
      {
        v21 = v17[1];
      }

      v22 = v20 - v18 + v21;
      if (v20 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v17[1];
      }

      if ((llvm::Regex::match(this + 32, *v17, v23, &v61, 0) & 1) == 0)
      {
        if (v58)
        {
          v31 = v57;
          v32 = *(v12 + 8);
          v33 = 4 * v58;
          do
          {
            v34 = *v31++;
            *(v32 + (v34 << 6) + 4) = v15 + 1;
            v33 -= 4;
          }

          while (v33);
          LODWORD(v58) = 0;
        }

        v16 = v15;
        goto LABEL_64;
      }

      v24 = v61;
      v25 = *v61;
      v26 = *(v61 + 2);
      v27 = *(v61 + 3);
      switch(v27)
      {
        case 7:
          v30 = memcmp(v26, "warning", 7uLL) == 0;
          break;
        case 6:
          if (!memcmp(v26, "remark", 6uLL))
          {
            v30 = 3;
          }

          else
          {
            v30 = 0;
          }

          break;
        case 5:
          v29 = *v26 == 1869771365 && v26[4] == 114;
          v30 = 2 * v29;
          break;
        default:
          v30 = 0;
          break;
      }

      LODWORD(v53) = v30;
      DWORD1(v53) = v15 + 1;
      *(&v53 + 1) = v25;
      v54[0] = 0;
      *&v54[8] = *(v24 + 5);
      v55[0] = 0;
      v56 = 0;
      if (*(v24 + 5))
      {
        if ((mlir::detail::ExpectedDiag::computeRegex(&v53, a2, a3) & 1) == 0)
        {
          *this = 0;
          if (v56 != 1)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        v24 = v61;
      }

      v35 = *(v24 + 7);
      if (v35)
      {
        v36 = *(v24 + 6);
        v39 = *(v36 + 1);
        v38 = (v36 + 1);
        v37 = v39;
        if (v39 == 45 || v37 == 43)
        {
          v40 = v35 - 1;
          if (v40)
          {
            v41 = v38 + 1;
          }

          else
          {
            v41 = v38;
          }

          v60 = 0;
          AsSignedInteger = llvm::getAsSignedInteger(v41, v40 - (v40 != 0), 0, &v60);
          if (v60 == v60)
          {
            v43 = v60;
          }

          else
          {
            v43 = 0;
          }

          if (AsSignedInteger)
          {
            v43 = 0;
          }

          if (*v38 == 43)
          {
            v44 = DWORD1(v53) + v43;
          }

          else
          {
            v44 = DWORD1(v53) - v43;
          }
        }

        else if (v35 >= 6 && (*v38 == 1987011169 ? (v45 = v38[4] == 101) : (v45 = 0), v45))
        {
          v44 = v16 + 1;
        }

        else
        {
          if (v58 >= HIDWORD(v58))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v57 + v58) = *(v12 + 16);
          LODWORD(v58) = v58 + 1;
          v44 = v14;
        }

        DWORD1(v53) = v44;
      }

      v46 = *(v12 + 16);
      if (v46 >= *(v12 + 20))
      {
        llvm::SmallVectorTemplateBase<mlir::detail::ExpectedDiag,false>::growAndEmplaceBack<mlir::detail::ExpectedDiag>();
      }

      v47 = *(v12 + 8) + (v46 << 6);
      v48 = v53;
      v49 = *v54;
      *(v47 + 32) = *&v54[16];
      *v47 = v48;
      *(v47 + 16) = v49;
      *(v47 + 40) = 0;
      *(v47 + 56) = 0;
      if (v56 == 1)
      {
        llvm::Regex::Regex(v47 + 40, v55);
        *(v47 + 56) = 1;
      }

      ++*(v12 + 16);
      if (v56 != 1)
      {
        goto LABEL_64;
      }

LABEL_63:
      llvm::Regex::~Regex(v55);
LABEL_64:
      if (v61 != v63)
      {
        free(v61);
      }

      ++v15;
    }

    while (v15 != v14);
  }

  v50 = *(v12 + 8);
  if (v64 != v66)
  {
    free(v64);
  }

  if (v57 != &v59)
  {
    free(v57);
  }

  return v50;
}

uint64_t mlir::detail::ExpectedDiag::computeRegex(mlir::detail::ExpectedDiag *this, llvm::raw_ostream *a2, llvm::SourceMgr *a3)
{
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  v25 = 0;
  v29 = 0;
  v30 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v24 = &unk_2868A3EF8;
  v31 = v32;
  llvm::raw_ostream::SetBufferAndMode(&v24, 0, 0, 0);
  v23 = *(this + 24);
  if (!*(&v23 + 1))
  {
    goto LABEL_26;
  }

  v5 = llvm::StringRef::find(&v23, "{{", 2uLL, 0);
  if (v5 == -1)
  {
    llvm::Regex::escape(v23, *(&v23 + 1), &__p);
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

    llvm::raw_ostream::write(&v24, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_26:
    llvm::Regex::Regex();
  }

  v6 = v5;
  if (*(&v23 + 1) >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(&v23 + 1);
  }

  llvm::Regex::escape(v23, v7, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(&v24, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v6 + 2;
  if (*(&v23 + 1) < v6 + 2)
  {
    v10 = *(&v23 + 1);
  }

  *&v23 = v23 + v10;
  *(&v23 + 1) -= v10;
  if (llvm::StringRef::find(&v23, "}}", 2uLL, 0) != -1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    llvm::Regex::Regex();
  }

  __p.__r_.__value_.__r.__words[0] = "found start of regex with no end '}}'";
  v22 = 259;
  v14 = *(this + 1);
  v15 = &v14[*(this + 4)];
  v18 = v14;
  v19 = v15;
  llvm::SourceMgr::PrintMessage(a3, a2, v14, 0, &__p, &v18, 1, v11, 0, 0, 1);
  llvm::raw_ostream::~raw_ostream(&v24);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  return 0;
}

void mlir::SourceMgrDiagnosticVerifierHandler::SourceMgrDiagnosticVerifierHandler(mlir::SourceMgrDiagnosticVerifierHandler *this, llvm::SourceMgr *a2, mlir::MLIRContext *a3, llvm::raw_ostream *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  *v5 = 0u;
  mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(this, a2, a3, a4, &v4);
}

void mlir::SourceMgrDiagnosticVerifierHandler::SourceMgrDiagnosticVerifierHandler(mlir::SourceMgrDiagnosticVerifierHandler *this, llvm::SourceMgr *a2, mlir::MLIRContext *a3)
{
  v6 = llvm::errs(this);

  mlir::SourceMgrDiagnosticVerifierHandler::SourceMgrDiagnosticVerifierHandler(this, a2, a3, v6);
}

{
  v6 = llvm::errs(this);

  mlir::SourceMgrDiagnosticVerifierHandler::SourceMgrDiagnosticVerifierHandler(this, a2, a3, v6);
}

void mlir::SourceMgrDiagnosticVerifierHandler::~SourceMgrDiagnosticVerifierHandler(mlir::SourceMgrDiagnosticVerifierHandler *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  mlir::SourceMgrDiagnosticVerifierHandler::verify(this, a2, a3, a4, a5, a6, a7, a8);
  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    llvm::Regex::~Regex((v9 + 32));
    llvm::StringMap<llvm::SmallVector<mlir::detail::ExpectedDiag,2u>,llvm::MallocAllocator>::~StringMap(v9 + 8);
    MEMORY[0x259C63180](v9, 0x10A0C40702EBEC7);
  }

  mlir::SourceMgrDiagnosticHandler::~SourceMgrDiagnosticHandler(this);
}

{
  mlir::SourceMgrDiagnosticVerifierHandler::verify(this, a2, a3, a4, a5, a6, a7, a8);
  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    llvm::Regex::~Regex((v9 + 32));
    llvm::StringMap<llvm::SmallVector<mlir::detail::ExpectedDiag,2u>,llvm::MallocAllocator>::~StringMap(v9 + 8);
    MEMORY[0x259C63180](v9, 0x10A0C40702EBEC7);
  }

  mlir::SourceMgrDiagnosticHandler::~SourceMgrDiagnosticHandler(this);
}

uint64_t mlir::SourceMgrDiagnosticVerifierHandler::verify(mlir::SourceMgrDiagnosticVerifierHandler *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *(this + 10);
  v10 = *(v9 + 1);
  v11 = *(v9 + 4);
  if (!v11)
  {
    v12 = *(v9 + 1);
    v45 = &v10[v11];
    if (v10 == v45)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v12 = *(v9 + 1);
  if (*v10)
  {
    v13 = *v10 == -8;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    do
    {
      v15 = v12[1];
      ++v12;
      v14 = v15;
      if (v15)
      {
        v16 = v14 == -8;
      }

      else
      {
        v16 = 1;
      }
    }

    while (v16);
  }

  v45 = &v10[v11];
  if (v12 != v45)
  {
LABEL_14:
    v17 = *v12;
    do
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (*(v17 + 8) + 32);
        v20 = v18 << 6;
        do
        {
          if ((*(v19 - 2) & 1) == 0)
          {
            v21 = *(v19 - 8);
            v22 = qword_25739AC78[v21];
            v23 = *(this + 2);
            v24 = *(this + 3);
            v25 = (&off_27983B600)[v21];
            v47 = 1283;
            v46[0] = "expected ";
            v46[2] = v25;
            v46[3] = v22;
            v48[0] = v46;
            v48[2] = " ";
            v49 = 770;
            v27 = *(v19 - 1);
            v26 = *v19;
            v50[0] = v48;
            v50[2] = v27;
            v50[3] = v26;
            v51 = 1282;
            v52[0] = v50;
            v52[2] = " was not produced";
            v53 = 770;
            v28 = *(v19 - 3);
            v29 = &v28[*v19];
            v54[0] = v28;
            v54[1] = v29;
            llvm::SourceMgr::PrintMessage(v23, v24, v28, 0, v52, v54, 1, a8, 0, 0, 1);
            v9 = *(this + 10);
            *v9 = 0;
          }

          v19 += 8;
          v20 -= 64;
        }

        while (v20);
      }

      do
      {
        v30 = v12[1];
        ++v12;
        v17 = v30;
        if (v30)
        {
          v31 = v17 == -8;
        }

        else
        {
          v31 = 1;
        }
      }

      while (v31);
    }

    while (v12 != v45);
  }

LABEL_25:
  if (*(v9 + 5))
  {
    v32 = *(v9 + 4);
    v33 = v9;
    if (v32)
    {
      for (i = 0; i != v32; ++i)
      {
        v35 = *(v9 + 1);
        v36 = *(v35 + 8 * i);
        if (v36 != -8 && v36 != 0)
        {
          v39 = *v36;
          v38 = *(v36 + 1);
          v40 = *(v36 + 4);
          if (v40)
          {
            v41 = v40 << 6;
            v42 = &v38[v41 - 24];
            v43 = -v41;
            do
            {
              if (*(v42 + 16) == 1)
              {
                llvm::Regex::~Regex(v42);
              }

              v42 = (v42 - 64);
              v43 += 64;
            }

            while (v43);
            v38 = *(v36 + 1);
          }

          if (v38 != v36 + 24)
          {
            free(v38);
          }

          llvm::deallocate_buffer(v36, (v39 + 153));
        }

        *(v35 + 8 * i) = 0;
      }

      v33 = *(this + 10);
    }

    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    v9 = v33;
  }

  return *v9;
}

void mlir::SourceMgrDiagnosticVerifierHandler::process(mlir::SourceMgrDiagnosticVerifierHandler *this, mlir::Diagnostic *a2)
{
  v4 = *(a2 + 2);
  v19[0] = *a2;
  v25 = 0;
  __p = &v25;
  mlir::LocationAttr::walk(v19, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FileLineColLoc mlir::LocationAttr::findInstanceOf<mlir::FileLineColLoc>(void)::{lambda(mlir::FileLineColLoc)#1}>, &__p);
  v5 = v25;
  if (v25)
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v30 = 0;
    v31 = 1;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v25 = &unk_2868A3EF8;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v25, 0, 0, 0);
    v6 = *(a2 + 6);
    if (v6)
    {
      v7 = *(a2 + 2);
      v8 = 24 * v6;
      do
      {
        mlir::DiagnosticArgument::print(v7, &v25);
        v7 = (v7 + 24);
        v8 -= 24;
      }

      while (v8);
    }

    llvm::raw_ostream::~raw_ostream(&v25);
    if (SHIBYTE(v23) >= 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p;
    }

    if (SHIBYTE(v23) >= 0)
    {
      v10 = SHIBYTE(v23);
    }

    else
    {
      v10 = v22;
    }

    mlir::SourceMgrDiagnosticVerifierHandler::process(this, v5, v9, v10, v4);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v11 = *a2;
    v12 = qword_25739AC78[v4];
    v13 = (&off_27983B600)[v4];
    v20 = 1283;
    v18 = 0;
    v19[0] = "unexpected ";
    v19[2] = v13;
    v19[3] = v12;
    __p = v19;
    v23 = ": ";
    v24 = 770;
    v17[0] = 0;
    v17[1] = 0;
    v26 = 0;
    v30 = 0;
    v31 = 1;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v25 = &unk_2868A3EF8;
    p_p = v17;
    llvm::raw_ostream::SetBufferAndMode(&v25, 0, 0, 0);
    v14 = *(a2 + 6);
    if (v14)
    {
      v15 = *(a2 + 2);
      v16 = 24 * v14;
      do
      {
        mlir::DiagnosticArgument::print(v15, &v25);
        v15 = (v15 + 24);
        v16 -= 24;
      }

      while (v16);
    }

    llvm::raw_ostream::~raw_ostream(&v25);
    v25 = &__p;
    v27 = v17;
    LOWORD(v29) = 1026;
    mlir::SourceMgrDiagnosticHandler::emitDiagnostic(this, v11, &v25, 2, 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    **(this + 10) = 0;
  }
}

void mlir::SourceMgrDiagnosticVerifierHandler::process(void *a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4, int a5)
{
  v56 = a2;
  v9 = a1[10];
  v52[0] = mlir::FileLineColLoc::getFilename(&v56);
  Value = mlir::StringAttr::getValue(v52);
  v12 = v11;
  v14 = llvm::StringMapImpl::hash(Value, v11, v13);
  Key = llvm::StringMapImpl::FindKey((v9 + 8), Value, v12, v14);
  if (Key == -1 || Key == *(v9 + 16))
  {
    v16 = a1[10];
    v18 = a1[2];
    v17 = a1[3];
    v52[0] = mlir::FileLineColLoc::getFilename(&v56);
    v19 = mlir::StringAttr::getValue(v52);
    SourceMgrBufferIDForFile = mlir::detail::SourceMgrDiagnosticHandlerImpl::getSourceMgrBufferIDForFile(a1[9], a1[2], v19, v20);
    if (SourceMgrBufferIDForFile)
    {
      v22 = *(*a1[2] + 24 * (SourceMgrBufferIDForFile - 1));
    }

    else
    {
      v22 = 0;
    }

    v24 = mlir::detail::SourceMgrDiagnosticVerifierHandlerImpl::computeExpectedDiags(v16, v17, v18, v22);
    v25 = v28;
    Line = mlir::FileLineColLoc::getLine(&v56);
    if (v25)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = *(*(v9 + 8) + 8 * Key);
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    Line = mlir::FileLineColLoc::getLine(&v56);
    if (v25)
    {
LABEL_9:
      v29 = Line;
      v30 = 0;
      v31 = v25 << 6;
      while (1)
      {
        if (v29 == *(v24 + 4))
        {
          v52[0] = a3;
          v52[1] = a4;
          if (*(v24 + 56) == 1)
          {
            if (llvm::Regex::match(v24 + 40, a3, a4, 0, 0))
            {
LABEL_11:
              v30 = v24;
              if (*v24 == a5)
              {
                *(v24 + 16) = 1;
                return;
              }
            }
          }

          else if (llvm::StringRef::find(v52, *(v24 + 24), *(v24 + 32), 0) != -1)
          {
            goto LABEL_11;
          }
        }

        v24 += 64;
        v31 -= 64;
        if (!v31)
        {
          if (!v30)
          {
            break;
          }

          v32 = a1[2];
          v33 = a1[3];
          v34 = qword_25739AC78[a5];
          v35 = (&off_27983B600)[a5];
          v36 = *(v30 + 1);
          v43 = 1283;
          v42[0] = "'";
          v42[2] = v35;
          v42[3] = v34;
          v44[0] = v42;
          v45 = "' diagnostic emitted when expecting a '";
          v47 = 770;
          v37 = *v30;
          v38 = qword_25739AC78[v37];
          v39 = (&off_27983B600)[v37];
          v48[0] = v44;
          v49 = v39;
          v50 = v38;
          v51 = 1282;
          v52[0] = v48;
          v53 = "'";
          v55 = 770;
          llvm::SourceMgr::PrintMessage(v32, v33, v36, 0, v52, 0, 0, v27, 0, 0, 1);
          goto LABEL_20;
        }
      }
    }
  }

  v40 = qword_25739AC78[a5];
  v41 = (&off_27983B600)[a5];
  v47 = 1283;
  v44[0] = "unexpected ";
  v45 = v41;
  v46 = v40;
  v48[0] = v44;
  v49 = ": ";
  v51 = 770;
  v52[0] = v48;
  v53 = a3;
  v54 = a4;
  v55 = 1282;
  mlir::SourceMgrDiagnosticHandler::emitDiagnostic(a1, v56, v52, 2, 1);
LABEL_20:
  *a1[10] = 0;
}

void mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(mlir::ParallelDiagnosticHandler *this, mlir::MLIRContext *a2)
{
  operator new();
}

{
  operator new();
}

void mlir::ParallelDiagnosticHandler::~ParallelDiagnosticHandler(mlir::ParallelDiagnosticHandler *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void mlir::ParallelDiagnosticHandler::setOrderIDForThread(mlir::ParallelDiagnosticHandler *this, uint64_t a2)
{
  v3 = *this;
  threadid = llvm::get_threadid(this);
  std::recursive_mutex::lock((v3 + 24));
  *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](v3 + 96, &threadid) = a2;
  std::recursive_mutex::unlock((v3 + 24));
}

void mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(mlir::ParallelDiagnosticHandler *this)
{
  v1 = *this;
  threadid = llvm::get_threadid(this);
  std::recursive_mutex::lock((v1 + 24));
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v1 + 96);
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid));
    v7 = *(v4 + 16 * v6);
    if (threadid == v7)
    {
LABEL_3:
      *(v4 + 16 * v6) = -2;
      *(v1 + 104) = vadd_s32(*(v1 + 104), 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -1)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(v4 + 16 * v6);
        if (threadid == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  std::recursive_mutex::unlock((v1 + 24));
}

void std::vector<std::unique_ptr<char []>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

mlir::detail::ParallelDiagnosticHandlerImpl *mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::detail::ParallelDiagnosticHandlerImpl *this, mlir::MLIRContext *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(this, 0);
  *v4 = &unk_28689CAE0;
  MEMORY[0x259C62E30](v4 + 3);
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = a2;
  DiagEngine = mlir::MLIRContext::getDiagEngine(a2);
  v10[0] = this;
  v11 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1},mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1},void>::Callbacks + 2;
  *(this + 18) = mlir::DiagnosticEngine::registerHandler(DiagEngine, v10);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      else
      {
        v8 = v10[0];
      }

      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return this;
}

void mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl(mlir::detail::ParallelDiagnosticHandlerImpl *this)
{
  mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl(this);
}

{
  *this = &unk_28689CAE0;
  DiagEngine = mlir::MLIRContext::getDiagEngine(*(this + 19));
  mlir::DiagnosticEngine::eraseHandler(DiagEngine, *(this + 18));
  v3 = *(this + 15);
  if (v3 != *(this + 16))
  {
    v7 = this;
    mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(this, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl()::{lambda(mlir::Diagnostic &)#1}>, &v7);
    v3 = *(this + 15);
  }

  if (v3)
  {
    v4 = *(this + 16);
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 200;
        mlir::Diagnostic::~Diagnostic((v4 - 192));
        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(this + 15);
    }

    *(this + 16) = v3;
    operator delete(v5);
  }

  llvm::deallocate_buffer(*(this + 12), (16 * *(this + 28)));
}

void sub_2570E00DC()
{

  JUMPOUT(0x259C63180);
}

void mlir::detail::ParallelDiagnosticHandlerImpl::print(mlir::detail::ParallelDiagnosticHandlerImpl *this, llvm::raw_ostream *a2)
{
  if (*(this + 15) != *(this + 16))
  {
    v7[3] = v2;
    v7[4] = v3;
    v4 = *(a2 + 4);
    if (*(a2 + 3) - v4 > 0x16uLL)
    {
      qmemcpy(v4, "In-Flight Diagnostics:\n", 23);
      *(a2 + 4) += 23;
    }

    else
    {
      v5 = this;
      v6 = a2;
      llvm::raw_ostream::write(a2, "In-Flight Diagnostics:\n", 0x17uLL);
      a2 = v6;
      this = v5;
    }

    v7[0] = a2;
    mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(this, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::print(llvm::raw_ostream &)::{lambda(mlir::Diagnostic const&)#1}>, v7);
  }
}

uint64_t mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1}::operator()(llvm *a1, uint64_t *a2)
{
  v3 = *a1;
  threadid = llvm::get_threadid(a1);
  v18 = threadid;
  std::recursive_mutex::lock((v3 + 24));
  v5 = *(v3 + 112);
  if (!v5)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *(v3 + 96);
  v7 = v5 - 1;
  v8 = v7 & (((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid));
  v9 = *(v6 + 16 * v8);
  if (threadid != v9)
  {
    v15 = 1;
    while (v9 != -1)
    {
      v16 = v8 + v15++;
      v8 = v16 & v7;
      v9 = *(v6 + 16 * (v16 & v7));
      if (threadid == v9)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_11;
  }

LABEL_3:
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](v3 + 96, &v18);
  v11 = *(v3 + 128);
  v12 = (v3 + 120);
  if (v11 >= *(v3 + 136))
  {
    v13 = std::vector<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::__emplace_back_slow_path<unsigned long &,mlir::Diagnostic>(v12, v10, a2);
  }

  else
  {
    std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(v12, *(v3 + 128), v10, a2);
    v13 = v11 + 200;
  }

  *(v3 + 128) = v13;
  v14 = 1;
LABEL_12:
  std::recursive_mutex::unlock((v3 + 24));
  return v14;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t std::vector<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::__emplace_back_slow_path<unsigned long &,mlir::Diagnostic>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3) + 1;
  if (v3 > 0x147AE147AE147AELL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v5 = 0x147AE147AE147AELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(a1, v6, a2, a3);
  v7 = a1[1];
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>,mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6 + 200;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6 + 200;
}

void std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v23 = *a4;
  v24 = *(a4 + 2);
  __src = v27;
  v26 = 0x400000000;
  if (*(a4 + 6))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(&__src, a4 + 2);
  }

  *v28 = *(a4 + 8);
  v7 = a4[18];
  a4[16] = 0;
  a4[17] = 0;
  __p = *(a4 + 19);
  v8 = a4[21];
  v29 = v7;
  a4[18] = 0;
  a4[19] = 0;
  a4[20] = 0;
  a4[21] = 0;
  v31 = v8;
  v32 = &v34;
  v33 = 0;
  if (*(a4 + 46))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(&v32, a4 + 22);
  }

  *a2 = v6;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0x400000000;
  if ((a2 + 24) != &__src)
  {
    v9 = v26;
    if (v26)
    {
      if (__src == v27)
      {
        if (v26 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*(a2 + 24), __src, 24 * v26);
        *(a2 + 32) = v9;
      }

      else
      {
        *(a2 + 24) = __src;
        v10 = HIDWORD(v26);
        *(a2 + 32) = v9;
        *(a2 + 36) = v10;
        __src = v27;
        HIDWORD(v26) = 0;
      }

      LODWORD(v26) = 0;
    }
  }

  *(a2 + 184) = a2 + 200;
  v12 = v31;
  v11 = v32;
  *(a2 + 152) = v29;
  *(a2 + 136) = *v28;
  v28[0] = 0;
  v28[1] = 0;
  *(a2 + 160) = __p;
  *(a2 + 176) = v12;
  v29 = 0;
  __p = 0uLL;
  v31 = 0;
  *(a2 + 192) = 0;
  if ((a2 + 184) != &v32)
  {
    v13 = v33;
    if (v33)
    {
      if (v11 == &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(a2 + 184) = v11;
      v14 = HIDWORD(v33);
      *(a2 + 192) = v13;
      *(a2 + 196) = v14;
      v32 = &v34;
      v11 = &v34;
      v33 = 0;
    }
  }

  if (v11 != &v34)
  {
    free(v11);
  }

  v15 = __p;
  if (__p)
  {
    v16 = *(&__p + 1);
    v17 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
      }

      while (v16 != v15);
      v17 = __p;
    }

    *(&__p + 1) = v15;
    operator delete(v17);
  }

  v18 = v28[0];
  if (v28[0])
  {
    v19 = v28[1];
    v20 = v28[0];
    if (v28[1] != v28[0])
    {
      do
      {
        v22 = *--v19;
        v21 = v22;
        *v19 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v19 != v18);
      v20 = v28[0];
    }

    v28[1] = v18;
    operator delete(v20);
  }

  if (__src != v27)
  {
    free(__src);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>,mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *(a4 + v7) = *(v6 + v7);
      v10 = *(v6 + v7 + 8);
      v11 = *(v6 + v7 + 16);
      *(a4 + v7 + 24) = a4 + v7 + 40;
      v12 = a4 + v7 + 24;
      *(v12 - 8) = v11;
      *(v12 - 16) = v10;
      *(v12 + 8) = 0x400000000;
      if (*(v6 + v7 + 32))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v12, (v8 + 24));
      }

      v9[17] = 0;
      v9[18] = 0;
      v9[19] = 0;
      *(v9 + 17) = *(v8 + 136);
      v9[19] = *(v8 + 152);
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      v9[20] = 0;
      v9[21] = 0;
      v9[22] = 0;
      *(v9 + 10) = *(v8 + 160);
      v9[22] = *(v8 + 176);
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      *(v8 + 176) = 0;
      v9[23] = v9 + 25;
      v9[24] = 0;
      v13 = (v9 + 23);
      if (*(v8 + 192))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v13, (v6 + v7 + 184));
      }

      v7 += 200;
    }

    while (v8 + 200 != a3);
    while (v6 != a3)
    {
      mlir::Diagnostic::~Diagnostic((v6 + 8));
      v6 += 200;
    }
  }
}

void *llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v16 & (((0xBF58476D1CE4E5B9 * v25) >> 31) ^ (484763065 * v25));
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = &result[2 * (v31 & v16)];
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  if (v7 - v6 < 1)
  {
    v11 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v7, &v16, 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3), 0, v11);
    v14 = *(a1 + 120);
    i = *(a1 + 128);
    if (v14 != i)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3);
    while (1)
    {
      v10 = operator new(200 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v15 = v10;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v7, &v16, 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3), v10, v9);
    operator delete(v15);
    v14 = *(a1 + 120);
    for (i = *(a1 + 128); v14 != i; v14 += 200)
    {
LABEL_10:
      a2(a3, v14 + 8);
    }
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a1;
    if (a4 == 2)
    {
      v8 = *(a2 - 25);
      v7 = (a2 - 25);
      if (v8 < *a1)
      {

        std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(a1, v7);
      }
    }

    else
    {
      v9 = a4;
      if (a4 <= 0)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, a2);
      }

      else
      {
        v12 = a4 >> 1;
        v13 = &a1[25 * (a4 >> 1)];
        v14 = a4 - (a4 >> 1);
        if (a4 <= a6)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, v13, a3, a4 >> 1, a5);
          v18 = &a5[25 * v12];
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(&v6[25 * (v9 >> 1)], a2, a3, v9 - (v9 >> 1), v18);
          v19 = &a5[25 * v9];
          v20 = v18;
          v21 = a5;
          while (v20 != v19)
          {
            if (*v20 >= *v21)
            {
              *v6 = *v21;
              mlir::Diagnostic::operator=((v6 + 1), v21 + 1);
              v21 += 25;
              v6 += 25;
              if (v21 == v18)
              {
                goto LABEL_21;
              }
            }

            else
            {
              *v6 = *v20;
              mlir::Diagnostic::operator=((v6 + 1), v20 + 1);
              v20 += 25;
              v6 += 25;
              if (v21 == v18)
              {
LABEL_21:
                if (v20 != v19)
                {
                  v22 = 0;
                  do
                  {
                    v23 = &v20[v22 + 25];
                    v6[v22] = v20[v22];
                    mlir::Diagnostic::operator=(&v6[v22 + 1], &v20[v22 + 1]);
                    v22 += 25;
                  }

                  while (v23 != v19);
                }

                goto LABEL_28;
              }
            }
          }

          if (v21 != v18)
          {
            v24 = 0;
            do
            {
              v25 = &v21[v24 + 25];
              v6[v24] = v21[v24];
              mlir::Diagnostic::operator=(&v6[v24 + 1], &v21[v24 + 1]);
              v24 += 25;
            }

            while (v25 != v18);
          }

LABEL_28:
          if (a5)
          {
            v26 = (a5 + 1);
            do
            {
              mlir::Diagnostic::~Diagnostic(v26);
              v26 = (v27 + 200);
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, v13, a3, v12, a5, a6);
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v13, a2, a3, v14, a5, a6);

          std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v13, a2, a3, v12, v14, a5, a6);
        }
      }
    }
  }
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(unint64_t *a1, unint64_t *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v4 = a1 + 25;
  if (a1 + 25 == a2)
  {
    return;
  }

  v5 = &v56;
  v6 = a1;
  while (2)
  {
    v7 = v4;
    v8 = *v4;
    if (v8 >= *v6)
    {
      goto LABEL_4;
    }

    v47 = v6[26];
    v48 = *(v6 + 54);
    v46 = v8;
    v49[0] = v50;
    v49[1] = 0x400000000;
    if (*(v6 + 58))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v49, v6 + 28);
    }

    *v51 = *(v6 + 21);
    v52 = v6[44];
    v6[42] = 0;
    v6[43] = 0;
    *__p = *(v6 + 45);
    v9 = v6[47];
    v6[44] = 0;
    v6[45] = 0;
    v6[46] = 0;
    v6[47] = 0;
    v54 = v9;
    v55[0] = v5;
    v10 = v5;
    v55[1] = 0;
    if (*(v6 + 98))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v55, v6 + 48);
    }

    v11 = *v6;
    v12 = v7;
    while (1)
    {
      v13 = v6;
      *v12 = v11;
      v15 = (v6 + 1);
      v14 = v6[1];
      *(v12 + 4) = *(v6 + 4);
      v12[1] = v14;
      v16 = v6[3];
      v17 = v6 + 5;
      if (v16 == v17)
      {
        v20 = *(v13 + 8);
        v21 = *(v12 + 8);
        if (v21 >= v20)
        {
          if (v20)
          {
            memmove(v12[3], v16, 24 * v20);
          }
        }

        else
        {
          if (*(v12 + 9) < v20)
          {
            *(v12 + 8) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v21)
          {
            memmove(v12[3], v16, 24 * v21);
            v22 = *(v13 + 8) - v21;
            if (!v22)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          v21 = 0;
          v22 = *(v13 + 8);
          if (*(v13 + 8))
          {
LABEL_23:
            memcpy((v12[3] + 24 * v21), (v13[3] + 24 * v21), 24 * v22);
          }
        }

LABEL_24:
        *(v12 + 8) = v20;
        *(v13 + 8) = 0;
        v19 = v12[17];
        if (!v19)
        {
          goto LABEL_32;
        }

LABEL_25:
        v23 = v12 + 18;
        v24 = v12[18];
        v25 = v19;
        if (v24 != v19)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v19);
          v25 = v12[17];
        }

        *v23 = v19;
        operator delete(v25);
        *v23 = 0;
        v12[19] = 0;
        goto LABEL_32;
      }

      v18 = v12[3];
      if (v18 != v12 + 5)
      {
        free(v18);
        v16 = v13[3];
      }

      v12[3] = v16;
      v12[4] = v13[4];
      v13[3] = v17;
      v13[4] = 0;
      v19 = v12[17];
      if (v19)
      {
        goto LABEL_25;
      }

LABEL_32:
      *(v12 + 17) = *(v13 + 17);
      v12[19] = v13[19];
      v13[17] = 0;
      v13[18] = 0;
      v13[19] = 0;
      v28 = v12[20];
      if (v28)
      {
        v30 = v12 + 21;
        v29 = v12[21];
        v31 = v12[20];
        if (v29 != v28)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v31 = v12[20];
        }

        *v30 = v28;
        operator delete(v31);
        *v30 = 0;
        v12[22] = 0;
      }

      v33 = (v13 + 24);
      v32 = *(v13 + 48);
      *(v12 + 10) = *(v13 + 10);
      v12[22] = v13[22];
      v13[20] = 0;
      v13[21] = 0;
      v13[22] = 0;
      if (v32)
      {
        break;
      }

      *(v12 + 48) = 0;
      v36 = v46;
      if (v13 == a1)
      {
        goto LABEL_47;
      }

LABEL_43:
      v6 = v13 - 25;
      v11 = *(v13 - 25);
      v12 = v13;
      if (v36 >= v11)
      {
        goto LABEL_48;
      }
    }

    v34 = v12[23];
    if (v34 != v12 + 25)
    {
      free(v34);
      v32 = *v33;
    }

    v12[23] = v13[23];
    v35 = *(v13 + 49);
    *(v12 + 48) = v32;
    *(v12 + 49) = v35;
    v13[23] = (v13 + 25);
    *(v13 + 49) = 0;
    *v33 = 0;
    v36 = v46;
    if (v13 != a1)
    {
      goto LABEL_43;
    }

LABEL_47:
    v13 = a1;
LABEL_48:
    *v13 = v36;
    mlir::Diagnostic::operator=(v15, &v47);
    v5 = v10;
    if (v55[0] != v10)
    {
      free(v55[0]);
    }

    v37 = __p[0];
    v2 = a2;
    if (__p[0])
    {
      v38 = __p[1];
      v39 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p[0];
      }

      __p[1] = v37;
      operator delete(v39);
    }

    v40 = v51[0];
    if (v51[0])
    {
      v41 = v51[1];
      v42 = v51[0];
      if (v51[1] != v51[0])
      {
        do
        {
          v44 = *--v41;
          v43 = v44;
          *v41 = 0;
          if (v44)
          {
            MEMORY[0x259C63150](v43, 0x1000C8077774924);
          }
        }

        while (v41 != v40);
        v42 = v51[0];
      }

      v51[1] = v40;
      operator delete(v42);
    }

    if (v49[0] != v50)
    {
      free(v49[0]);
    }

LABEL_4:
    v4 = v7 + 25;
    v6 = v7;
    if (v7 + 25 != v2)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return result;
  }

  v7 = result;
  if (a4 == 2)
  {
    v13 = *(a2 - 25);
    v14 = a5 + 40;
    if (v13 >= *result)
    {
      *a5 = *result;
      v18 = *(result + 8);
      *(a5 + 16) = *(result + 16);
      *(a5 + 8) = v18;
      *(a5 + 24) = v14;
      *(a5 + 32) = 0x400000000;
      if (*(result + 32))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 24, (result + 24));
      }

      *(a5 + 136) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      *(a5 + 136) = *(v7 + 136);
      *(a5 + 152) = *(v7 + 152);
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(v7 + 160);
      *(a5 + 176) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(a5 + 184) = a5 + 200;
      *(a5 + 192) = 0;
      if (*(v7 + 192))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 184, (v7 + 184));
      }

      *(a5 + 200) = *(a2 - 25);
      v19 = *(a2 - 24);
      v20 = *(a2 - 46);
      *(a5 + 224) = a5 + 240;
      result = a5 + 224;
      *(a5 + 216) = v20;
      *(a5 + 208) = v19;
      *(a5 + 232) = 0x400000000;
      if (*(a2 - 42))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, a2 - 22);
      }

      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 352) = 0;
      *(a5 + 336) = *(a2 - 4);
      *(a5 + 352) = *(a2 - 6);
      *(a2 - 8) = 0;
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a5 + 360) = 0;
      *(a5 + 368) = 0;
      *(a5 + 376) = 0;
      *(a5 + 360) = *(a2 - 5);
      *(a5 + 376) = *(a2 - 3);
      *(a2 - 5) = 0;
      *(a2 - 4) = 0;
      *(a2 - 3) = 0;
      *(a5 + 384) = a5 + 400;
      *(a5 + 392) = 0;
      if (*(a2 - 2))
      {
        v11 = (a2 - 2);
        v12 = a5 + 384;
        goto LABEL_29;
      }
    }

    else
    {
      *a5 = v13;
      v15 = *(a2 - 24);
      *(a5 + 16) = *(a2 - 46);
      *(a5 + 8) = v15;
      *(a5 + 24) = v14;
      *(a5 + 32) = 0x400000000;
      if (*(a2 - 42))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 24, a2 - 22);
      }

      *(a5 + 136) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      *(a5 + 136) = *(a2 - 4);
      *(a5 + 152) = *(a2 - 6);
      *(a2 - 8) = 0;
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(a2 - 5);
      *(a5 + 176) = *(a2 - 3);
      *(a2 - 5) = 0;
      *(a2 - 4) = 0;
      *(a2 - 3) = 0;
      *(a5 + 184) = a5 + 200;
      *(a5 + 192) = 0;
      if (*(a2 - 2))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 184, a2 - 2);
      }

      *(a5 + 200) = *v7;
      v16 = *(v7 + 8);
      v17 = *(v7 + 16);
      *(a5 + 224) = a5 + 240;
      result = a5 + 224;
      *(a5 + 216) = v17;
      *(a5 + 208) = v16;
      *(a5 + 232) = 0x400000000;
      if (*(v7 + 32))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v7 + 24));
      }

      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 352) = 0;
      *(a5 + 336) = *(v7 + 136);
      *(a5 + 352) = *(v7 + 152);
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(a5 + 360) = 0;
      *(a5 + 368) = 0;
      *(a5 + 376) = 0;
      *(a5 + 360) = *(v7 + 160);
      *(a5 + 376) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(a5 + 384) = a5 + 400;
      *(a5 + 392) = 0;
      if (*(v7 + 192))
      {
        v12 = a5 + 384;
        v11 = (v7 + 184);
        goto LABEL_29;
      }
    }
  }

  else if (a4 == 1)
  {
    *a5 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    *(a5 + 24) = a5 + 40;
    result = a5 + 24;
    *(a5 + 16) = v9;
    *(a5 + 8) = v8;
    *(a5 + 32) = 0x400000000;
    if (*(v7 + 32))
    {
      result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v7 + 24));
    }

    *(a5 + 136) = 0;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 136) = *(v7 + 136);
    *(a5 + 152) = *(v7 + 152);
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    *(a5 + 176) = 0;
    *(a5 + 160) = *(v7 + 160);
    *(a5 + 176) = *(v7 + 176);
    *(v7 + 160) = 0;
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(a5 + 184) = a5 + 200;
    *(a5 + 192) = 0;
    v10 = a5 + 184;
    if (*(v7 + 192))
    {
      v11 = (v7 + 184);
      v12 = v10;
LABEL_29:

      return llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v12, v11);
    }
  }

  else if (a4 > 8)
  {
    v21 = a4 >> 1;
    v22 = 200 * (a4 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, v22 + result, a3, v21, a5, v21);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v22 + v7, a2, a3, a4 - v21, a5 + v22, a4 - v21);

    return std::__merge_move_construct[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v7, v22 + v7, v22 + v7, a2, a5);
  }

  else
  {

    return std::__insertion_sort_move[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, a2, a5);
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (!a6)
  {
    return;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v10 = 0;
    v11 = -a5;
    while (*a2 >= a1[v10 / 8])
    {
      v10 += 200;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    v13 = -v11;
    v54 = &a1[v10 / 8];
    if (-v11 >= a6)
    {
      if (v11 == -1)
      {
        v46 = &a1[v10 / 8];

        std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v46, a2);
        return;
      }

      v22 = v13 / 2;
      v16 = &a1[25 * (v13 / 2) + v10 / 8];
      v15 = a2;
      if (a2 != a3)
      {
        v24 = 0x8F5C28F5C28F5C29 * (a3 - a2);
        v15 = a2;
        do
        {
          v25 = v24 >> 1;
          v26 = &v15[25 * (v24 >> 1)];
          v28 = *v26;
          v27 = (v26 + 25);
          v24 += ~(v24 >> 1);
          if (v28 < *v16)
          {
            v15 = v27;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
      }

      v14 = 0x8F5C28F5C28F5C29 * (v15 - a2);
      v23 = v15;
      if (a2 != v16)
      {
LABEL_27:
        v23 = v16;
        if (a2 != v15)
        {
          v47 = v14;
          v48 = a8;
          v49 = a4;
          v52 = a6;
          v53 = a1;
          v51 = a3;
          std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v16, a2);
          v23 = v16 + 25;
          v29 = a2 + 25;
          for (i = a7; v29 != v15; v29 += 25)
          {
            if (v23 == a2)
            {
              a2 = v29;
            }

            std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v23, v29);
            v23 += 25;
          }

          if (v23 != a2)
          {
            v30 = v23;
            v31 = a2;
            while (1)
            {
              std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v30, v31);
              v31 += 25;
              v32 = v30 + 25 == a2;
              if (v31 == v15)
              {
                if (v30 + 25 == a2)
                {
                  break;
                }

                v31 = a2 + 25;
                v30 += 50;
                while (1)
                {
                  std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v30 - 25, a2);
                  v32 = v30 == a2;
                  if (v31 != v15)
                  {
                    break;
                  }

                  v33 = v30 == a2;
                  v30 += 25;
                  if (v33)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                v30 += 25;
              }

              if (v32)
              {
                a2 = v31;
              }
            }
          }

LABEL_44:
          a3 = v51;
          a6 = v52;
          a1 = v53;
          a4 = v49;
          a7 = i;
          v14 = v47;
          a8 = v48;
        }
      }
    }

    else
    {
      v14 = a6 / 2;
      v15 = &a2[25 * (a6 / 2)];
      v16 = a2;
      if (a2 - a1 != v10)
      {
        v17 = 0x8F5C28F5C28F5C29 * ((a2 - a1 - v10) >> 3);
        v16 = &a1[v10 / 8];
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[25 * (v17 >> 1)];
          v21 = *v19;
          v20 = v19 + 25;
          v17 += ~(v17 >> 1);
          if (*v15 < v21)
          {
            v17 = v18;
          }

          else
          {
            v16 = v20;
          }
        }

        while (v17);
      }

      v22 = 0x8F5C28F5C28F5C29 * ((v16 - a1 - v10) >> 3);
      v23 = &a2[25 * (a6 / 2)];
      if (a2 != v16)
      {
        goto LABEL_27;
      }
    }

    v34 = -v11 - v22;
    v35 = a6 - v14;
    if (v22 + v14 >= a6 - (v22 + v14) - v11)
    {
      v38 = a4;
      v44 = v22;
      v41 = a7;
      v45 = a7;
      v43 = a8;
      v35 = v14;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v23, v15, a3, a4, v34, a6 - v14, v45);
      a2 = v16;
      a5 = v44;
      a3 = v23;
      a1 = v54;
    }

    else
    {
      v36 = &a1[v10 / 8];
      v37 = a3;
      v38 = a4;
      v39 = v34;
      v40 = v22;
      v41 = a7;
      v42 = a7;
      v43 = a8;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v36, v16, v23, a4, v40, v14, v42);
      a5 = v39;
      a3 = v37;
      a1 = v23;
      a2 = v15;
    }

    a6 = v35;
    a4 = v38;
    a8 = v43;
    a7 = v41;
    if (!v35)
    {
      return;
    }
  }

  std::__buffered_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, a2, a3, a4, a5, a6, a7);
}

void std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(uint64_t *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 1);
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 4);
  v17[0] = v18;
  v17[1] = 0x400000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v17, a1 + 3);
  }

  *v19 = *(a1 + 17);
  v20 = a1[19];
  a1[17] = 0;
  a1[18] = 0;
  *__p = *(a1 + 10);
  v5 = a1[22];
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[22] = 0;
  v22 = v5;
  v23[0] = &v24;
  v23[1] = 0;
  if (*(a1 + 48))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v23, a1 + 23);
  }

  *a1 = *a2;
  mlir::Diagnostic::operator=(v4, a2 + 1);
  *a2 = v14;
  mlir::Diagnostic::operator=((a2 + 1), &v15);
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  v6 = __p[0];
  if (__p[0])
  {
    v7 = __p[1];
    v8 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
      }

      while (v7 != v6);
      v8 = __p[0];
    }

    __p[1] = v6;
    operator delete(v8);
  }

  v9 = v19[0];
  if (v19[0])
  {
    v10 = v19[1];
    v11 = v19[0];
    if (v19[1] != v19[0])
    {
      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          MEMORY[0x259C63150](v12, 0x1000C8077774924);
        }
      }

      while (v10 != v9);
      v11 = v19[0];
    }

    v19[1] = v9;
    operator delete(v11);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }
}

uint64_t mlir::Diagnostic::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 16, a2 + 2);
  v5 = (a1 + 128);
  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = *(a1 + 136);
    v8 = *(a1 + 128);
    if (v7 != v6)
    {
      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          MEMORY[0x259C63150](v9, 0x1000C8077774924);
        }
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 136) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  v11 = (a1 + 152);
  v12 = *(a1 + 152);
  if (v12)
  {
    v13 = *(a1 + 160);
    v14 = *(a1 + 152);
    if (v13 != v12)
    {
      do
      {
        v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 160) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  if (a1 != a2)
  {
    v16 = (a2 + 23);
    v15 = *(a2 + 46);
    if (v15)
    {
      v17 = *(a1 + 176);
      if (v17 != (a1 + 192))
      {
        free(v17);
        v15 = *v16;
      }

      *(a1 + 176) = a2[22];
      v18 = *(a2 + 47);
      *(a1 + 184) = v15;
      *(a1 + 188) = v18;
      a2[22] = (a2 + 24);
      *(a2 + 47) = 0;
    }

    else
    {
      v16 = (a1 + 184);
    }

    *v16 = 0;
  }

  return a1;
}

uint64_t std::__insertion_sort_move[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    *a3 = *result;
    v6 = *(result + 8);
    v7 = *(result + 16);
    *(a3 + 24) = a3 + 40;
    *(a3 + 16) = v7;
    *(a3 + 8) = v6;
    *(a3 + 32) = 0x400000000;
    if (*(result + 32))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a3 + 24, (result + 24));
    }

    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 136) = *(v5 + 17);
    *(a3 + 152) = v5[19];
    v5[17] = 0;
    v5[18] = 0;
    v5[19] = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 160) = *(v5 + 10);
    *(a3 + 176) = v5[22];
    v5[20] = 0;
    v5[21] = 0;
    v5[22] = 0;
    *(a3 + 184) = a3 + 200;
    *(a3 + 192) = 0;
    result = a3 + 184;
    if (*(v5 + 48))
    {
      result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, v5 + 23);
    }

    v8 = v5 + 25;
    if (v5 + 25 != a2)
    {
      v9 = a3;
      do
      {
        v11 = v5;
        v5 = v8;
        v12 = *v8;
        v13 = v9 + 240;
        if (v12 >= *v9)
        {
          *(v9 + 200) = v12;
          v39 = v11[26];
          *(v9 + 216) = *(v11 + 54);
          *(v9 + 208) = v39;
          *(v9 + 224) = v13;
          *(v9 + 232) = 0x400000000;
          if (*(v11 + 58))
          {
            result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 224, v11 + 28);
          }

          *(v9 + 336) = 0;
          *(v9 + 344) = 0;
          *(v9 + 352) = 0;
          *(v9 + 336) = *(v11 + 21);
          *(v9 + 352) = v11[44];
          v11[42] = 0;
          v11[43] = 0;
          v11[44] = 0;
          *(v9 + 360) = 0;
          *(v9 + 368) = 0;
          *(v9 + 376) = 0;
          *(v9 + 360) = v11[45];
          *(v9 + 368) = *(v11 + 23);
          v11[45] = 0;
          v11[46] = 0;
          v11[47] = 0;
          *(v9 + 384) = v9 + 400;
          *(v9 + 392) = 0;
          if (*(v11 + 98))
          {
            result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 384, v11 + 48);
          }
        }

        else
        {
          v14 = *(v9 + 8);
          *(v9 + 200) = *v9;
          *(v9 + 208) = v14;
          *(v9 + 216) = *(v9 + 16);
          *(v9 + 224) = v13;
          *(v9 + 232) = 0x400000000;
          if (*(v9 + 32))
          {
            llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 224, (v9 + 24));
          }

          *(v9 + 336) = *(v9 + 136);
          *(v9 + 352) = *(v9 + 152);
          *(v9 + 136) = 0;
          *(v9 + 144) = 0;
          *(v9 + 360) = *(v9 + 160);
          v15 = *(v9 + 176);
          *(v9 + 152) = 0;
          *(v9 + 160) = 0;
          *(v9 + 168) = 0;
          *(v9 + 176) = 0;
          *(v9 + 376) = v15;
          *(v9 + 384) = v9 + 400;
          *(v9 + 392) = 0;
          if (*(v9 + 192))
          {
            llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 384, (v9 + 184));
          }

          v10 = a3;
          if (v9 != a3)
          {
            v10 = v9;
            v16 = v9;
            while (1)
            {
              v18 = *(v16 - 200);
              v16 -= 200;
              v17 = v18;
              if (*v5 >= v18)
              {
                break;
              }

              v19 = *(v10 - 192);
              *v10 = v17;
              *(v10 + 8) = v19;
              *(v10 + 16) = *(v10 - 184);
              v20 = *(v10 - 176);
              if (v20 != (v10 - 160))
              {
                v21 = *(v10 + 24);
                if (v21 != (v10 + 40))
                {
                  free(v21);
                  v20 = *(v10 - 176);
                }

                *(v10 + 24) = v20;
                *(v10 + 32) = *(v10 - 168);
                *(v10 - 176) = v10 - 160;
                *(v10 - 168) = 0;
                v22 = *(v10 + 136);
                if (!v22)
                {
                  goto LABEL_41;
                }

LABEL_34:
                v26 = *(v10 + 144);
                v27 = v22;
                if (v26 != v22)
                {
                  do
                  {
                    v29 = *--v26;
                    v28 = v29;
                    *v26 = 0;
                    if (v29)
                    {
                      MEMORY[0x259C63150](v28, 0x1000C8077774924);
                    }
                  }

                  while (v26 != v22);
                  v27 = *(v10 + 136);
                }

                *(v10 + 144) = v22;
                operator delete(v27);
                goto LABEL_41;
              }

              v23 = *(v10 - 168);
              v24 = *(v10 + 32);
              if (v24 >= v23)
              {
                if (v23)
                {
                  memmove(*(v10 + 24), v20, 24 * v23);
                }
              }

              else
              {
                if (*(v10 + 36) < v23)
                {
                  *(v10 + 32) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v24)
                {
                  memmove(*(v10 + 24), v20, 24 * v24);
                  v25 = *(v10 - 168) - v24;
                  if (!v25)
                  {
                    goto LABEL_33;
                  }

LABEL_32:
                  memcpy((*(v10 + 24) + 24 * v24), (*(v10 - 176) + 24 * v24), 24 * v25);
                  goto LABEL_33;
                }

                v24 = 0;
                v25 = *(v10 - 168);
                if (*(v10 - 168))
                {
                  goto LABEL_32;
                }
              }

LABEL_33:
              *(v10 + 32) = v23;
              *(v10 - 168) = 0;
              v22 = *(v10 + 136);
              if (v22)
              {
                goto LABEL_34;
              }

LABEL_41:
              v30 = (v10 - 64);
              *(v10 + 136) = *(v10 - 64);
              *(v10 + 152) = *(v10 - 48);
              v30[1] = 0;
              v30[2] = 0;
              *v30 = 0;
              v31 = *(v10 + 160);
              if (v31)
              {
                v32 = *(v10 + 168);
                v33 = *(v10 + 160);
                if (v32 != v31)
                {
                  do
                  {
                    v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
                  }

                  while (v32 != v31);
                  v33 = *(v10 + 160);
                }

                *(v10 + 168) = v31;
                operator delete(v33);
              }

              v34 = (v10 - 40);
              v36 = (v10 - 8);
              v35 = *(v10 - 8);
              *(v10 + 160) = *(v10 - 40);
              *(v10 + 176) = *(v10 - 24);
              v34[1] = 0;
              v34[2] = 0;
              *v34 = 0;
              if (v35)
              {
                v37 = *(v10 + 184);
                if (v37 != (v10 + 200))
                {
                  free(v37);
                  v35 = *v36;
                }

                *(v10 + 184) = *(v10 - 16);
                v38 = *(v10 - 4);
                *(v10 + 192) = v35;
                *(v10 + 196) = v38;
                *(v10 - 16) = v10;
                *(v10 - 4) = 0;
                *v36 = 0;
                v10 = v16;
                if (v16 == a3)
                {
LABEL_8:
                  v10 = a3;
                  break;
                }
              }

              else
              {
                *(v10 + 192) = 0;
                v10 = v16;
                if (v16 == a3)
                {
                  goto LABEL_8;
                }
              }
            }
          }

          *v10 = *v5;
          result = mlir::Diagnostic::operator=(v10 + 8, v11 + 26);
        }

        v9 += 200;
        v8 = v5 + 25;
      }

      while (v5 + 25 != a2);
    }
  }

  return result;
}

uint64_t std::__merge_move_construct[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (result == a2)
  {
LABEL_24:
    if (a3 != a4)
    {
      v20 = 0;
      do
      {
        v21 = (v5 + v20);
        v22 = a3 + v20;
        *(v5 + v20) = *(a3 + v20);
        v23 = *(a3 + v20 + 8);
        v24 = *(a3 + v20 + 16);
        *(v5 + v20 + 24) = v5 + v20 + 40;
        result = v5 + v20 + 24;
        *(result - 8) = v24;
        *(result - 16) = v23;
        *(result + 8) = 0x400000000;
        if (*(a3 + v20 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v22 + 24));
        }

        v21[17] = 0;
        v21[18] = 0;
        v21[19] = 0;
        *(v21 + 17) = *(v22 + 136);
        v21[19] = *(v22 + 152);
        *(v22 + 136) = 0;
        *(v22 + 144) = 0;
        *(v22 + 152) = 0;
        v21[20] = 0;
        v21[21] = 0;
        v21[22] = 0;
        *(v21 + 10) = *(v22 + 160);
        v21[22] = *(v22 + 176);
        *(v22 + 160) = 0;
        *(v22 + 168) = 0;
        *(v22 + 176) = 0;
        v21[23] = v21 + 25;
        v21[24] = 0;
        v25 = (v21 + 23);
        if (*(v22 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v25, (a3 + v20 + 184));
        }

        v20 += 200;
      }

      while (v22 + 200 != a4);
    }
  }

  else
  {
    v9 = result;
    v10 = a5 + 200;
    while (a3 != a4)
    {
      v11 = (v10 - 192);
      result = v10 - 176;
      v12 = v10 - 160;
      if (*a3 >= *v9)
      {
        *(v10 - 200) = *v9;
        v14 = *(v9 + 8);
        *(v10 - 184) = *(v9 + 16);
        *v11 = v14;
        *(v10 - 176) = v12;
        *(v10 - 168) = 0x400000000;
        if (*(v9 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v9 + 24));
        }

        *(v10 - 64) = 0;
        *(v10 - 56) = 0;
        *(v10 - 48) = 0;
        *(v10 - 64) = *(v9 + 136);
        *(v10 - 48) = *(v9 + 152);
        *(v9 + 136) = 0;
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *(v10 - 40) = 0;
        *(v10 - 32) = 0;
        *(v10 - 24) = 0;
        *(v10 - 40) = *(v9 + 160);
        *(v10 - 24) = *(v9 + 176);
        *(v9 + 160) = 0;
        *(v9 + 168) = 0;
        *(v9 + 176) = 0;
        *(v10 - 16) = v10;
        *(v10 - 8) = 0;
        if (*(v9 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v10 - 16, (v9 + 184));
        }

        v9 += 200;
        v10 += 200;
        if (v9 == a2)
        {
LABEL_23:
          v5 = v10 - 200;
          goto LABEL_24;
        }
      }

      else
      {
        *(v10 - 200) = *a3;
        v13 = *(a3 + 8);
        *(v10 - 184) = *(a3 + 16);
        *v11 = v13;
        *(v10 - 176) = v12;
        *(v10 - 168) = 0x400000000;
        if (*(a3 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (a3 + 24));
        }

        *(v10 - 64) = 0;
        *(v10 - 56) = 0;
        *(v10 - 48) = 0;
        *(v10 - 64) = *(a3 + 136);
        *(v10 - 48) = *(a3 + 152);
        *(a3 + 136) = 0;
        *(a3 + 144) = 0;
        *(a3 + 152) = 0;
        *(v10 - 40) = 0;
        *(v10 - 32) = 0;
        *(v10 - 24) = 0;
        *(v10 - 40) = *(a3 + 160);
        *(v10 - 24) = *(a3 + 176);
        *(a3 + 160) = 0;
        *(a3 + 168) = 0;
        *(a3 + 176) = 0;
        *(v10 - 16) = v10;
        *(v10 - 8) = 0;
        if (*(a3 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v10 - 16, (a3 + 184));
        }

        a3 += 200;
        v10 += 200;
        if (v9 == a2)
        {
          goto LABEL_23;
        }
      }
    }

    if (v9 != a2)
    {
      v15 = 0;
      do
      {
        v16 = v10 + v15;
        v17 = v9 + v15;
        *(v10 + v15 - 200) = *(v9 + v15);
        v18 = *(v9 + v15 + 8);
        v19 = *(v9 + v15 + 16);
        *(v10 + v15 - 176) = v10 + v15 - 160;
        result = v10 + v15 - 176;
        *(result - 8) = v19;
        *(result - 16) = v18;
        *(result + 8) = 0x400000000;
        if (*(v9 + v15 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v17 + 24));
        }

        *(v16 - 64) = 0;
        *(v16 - 56) = 0;
        *(v16 - 48) = 0;
        *(v16 - 64) = *(v17 + 136);
        *(v16 - 48) = *(v17 + 152);
        *(v17 + 136) = 0;
        *(v17 + 144) = 0;
        *(v17 + 152) = 0;
        *(v16 - 40) = 0;
        *(v16 - 32) = 0;
        *(v16 - 24) = 0;
        *(v16 - 40) = *(v17 + 160);
        *(v16 - 24) = *(v17 + 176);
        *(v17 + 160) = 0;
        *(v17 + 168) = 0;
        *(v17 + 176) = 0;
        *(v16 - 16) = v16;
        *(v16 - 8) = 0;
        if (*(v17 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v16 - 16, (v9 + v15 + 184));
        }

        v15 += 200;
      }

      while (v17 + 200 != a2);
    }
  }

  return result;
}

void *std::__buffered_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a2;
  v10 = result;
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = 0;
    v12 = 0;
    do
    {
      v19 = &a7[v18];
      v20 = &v10[v18];
      a7[v18] = v10[v18];
      v21 = v10[v18 + 1];
      v22 = v10[v18 + 2];
      a7[v18 + 3] = &a7[v18 + 5];
      v23 = &a7[v18 + 3];
      *(v23 - 8) = v22;
      *(v23 - 16) = v21;
      *(v23 + 8) = 0x400000000;
      if (LODWORD(v10[v18 + 4]))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v23, v20 + 3);
      }

      v19[17] = 0;
      v19[18] = 0;
      v19[19] = 0;
      *(v19 + 17) = *(v20 + 17);
      v19[19] = v20[19];
      v20[17] = 0;
      v20[18] = 0;
      v20[19] = 0;
      v19[20] = 0;
      v19[21] = 0;
      v19[22] = 0;
      *(v19 + 10) = *(v20 + 10);
      v19[22] = v20[22];
      v20[20] = 0;
      v20[21] = 0;
      v20[22] = 0;
      v19[23] = v19 + 25;
      v19[24] = 0;
      v24 = (v19 + 23);
      if (*(v20 + 48))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v24, &v10[v18 + 23]);
      }

      ++v12;
      v18 += 25;
    }

    while (v20 + 25 != v9);
    v32 = &a7[v18];
    v33 = &a7[v18 - 25];
    v34 = a7;
    while (v9 != a3)
    {
      if (*v9 >= *v34)
      {
        *v10 = *v34;
        result = mlir::Diagnostic::operator=((v10 + 1), v34 + 1);
        v34 += 25;
        v10 += 25;
        if (v32 == v34)
        {
          goto LABEL_40;
        }
      }

      else
      {
        *v10 = *v9;
        result = mlir::Diagnostic::operator=((v10 + 1), v9 + 1);
        v9 += 25;
        v10 += 25;
        if (v32 == v34)
        {
          goto LABEL_40;
        }
      }
    }

    v37 = 0;
    do
    {
      v38 = &v34[v37];
      v10[v37] = v34[v37];
      result = mlir::Diagnostic::operator=(&v10[v37 + 1], &v34[v37 + 1]);
      v37 += 25;
    }

    while (v33 != v38);
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v11 = 0;
    v12 = 0;
    do
    {
      v13 = &a7[v11];
      v14 = &v9[v11];
      a7[v11] = v9[v11];
      v15 = v9[v11 + 1];
      v16 = v9[v11 + 2];
      a7[v11 + 3] = &a7[v11 + 5];
      result = &a7[v11 + 3];
      *(result - 2) = v16;
      *(result - 2) = v15;
      result[1] = 0x400000000;
      if (LODWORD(v9[v11 + 4]))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, v14 + 3);
      }

      v13[17] = 0;
      v13[18] = 0;
      v13[19] = 0;
      *(v13 + 17) = *(v14 + 17);
      v13[19] = v14[19];
      v14[17] = 0;
      v14[18] = 0;
      v14[19] = 0;
      v13[20] = 0;
      v13[21] = 0;
      v13[22] = 0;
      *(v13 + 10) = *(v14 + 10);
      v13[22] = v14[22];
      v14[20] = 0;
      v14[21] = 0;
      v14[22] = 0;
      v13[23] = v13 + 25;
      v13[24] = 0;
      v17 = (v13 + 23);
      if (*(v14 + 48))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v17, &v9[v11 + 23]);
      }

      ++v12;
      v11 += 25;
    }

    while (v14 + 25 != a3);
    v25 = a3 - 25;
    v26 = &a7[v11];
    while (v9 != v10)
    {
      v27 = *(v26 - 25);
      v28 = *(v9 - 25);
      v29 = v27 >= v28;
      if (v27 <= v28)
      {
        v27 = *(v9 - 25);
      }

      if (v29)
      {
        v30 = v26;
      }

      else
      {
        v30 = v9;
      }

      if (v29)
      {
        v26 -= 25;
      }

      else
      {
        v9 -= 25;
      }

      *v25 = v27;
      v31 = v25 - 25;
      result = mlir::Diagnostic::operator=((v25 + 1), v30 - 24);
      v25 = v31;
      if (v26 == a7)
      {
        goto LABEL_40;
      }
    }

    if (v26 != a7)
    {
      v35 = v25;
      do
      {
        v36 = *(v26 - 25);
        v26 -= 25;
        *v35 = v36;
        v35 -= 25;
        result = mlir::Diagnostic::operator=((v25 + 1), v26 + 1);
        v25 = v35;
      }

      while (v26 != a7);
    }
  }

LABEL_40:
  if (a7 && v12)
  {
    result = a7 + 1;
    do
    {
      mlir::Diagnostic::~Diagnostic(result);
      result = (v39 + 200);
      --v12;
    }

    while (v12);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl()::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = *mlir::MLIRContext::getDiagEngine(*(*a1 + 152));

  mlir::detail::DiagnosticEngineImpl::emit(v3, a2);
}

void mlir::detail::ParallelDiagnosticHandlerImpl::print(llvm::raw_ostream &)const::{lambda(mlir::Diagnostic const&)#1}::operator()(llvm::raw_ostream **a1, uint64_t *a2)
{
  llvm::raw_ostream::indent(*a1, 4u);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_4:
    v6 = *(a2 + 2);
    if (v6 <= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = *a1;
  v18 = *a2;
  mlir::Attribute::print(&v18, v4);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 <= 1uLL)
  {
    llvm::raw_ostream::write(v4, ": ", 2uLL);
    goto LABEL_4;
  }

  *v5 = 8250;
  *(v4 + 4) += 2;
  v6 = *(a2 + 2);
  if (v6 <= 1)
  {
LABEL_5:
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_23;
      }

      v7 = *a1;
      v8 = *(*a1 + 4);
      if ((*(*a1 + 3) - v8) <= 8)
      {
        llvm::raw_ostream::write(v7, "warning: ", 9uLL);
        goto LABEL_23;
      }

      *(v8 + 8) = 32;
      *v8 = *"warning: ";
      v12 = *(v7 + 4) + 9;
    }

    else
    {
      v7 = *a1;
      v10 = *(*a1 + 4);
      if ((*(*a1 + 3) - v10) <= 5)
      {
        llvm::raw_ostream::write(v7, "note: ", 6uLL);
        goto LABEL_23;
      }

      *(v10 + 4) = 8250;
      *v10 = 1702129518;
      v12 = *(v7 + 4) + 6;
    }

    goto LABEL_22;
  }

LABEL_10:
  if (v6 == 3)
  {
    v7 = *a1;
    v11 = *(*a1 + 4);
    if (*(*a1 + 3) - v11 <= 7uLL)
    {
      llvm::raw_ostream::write(v7, "remark: ", 8uLL);
      goto LABEL_23;
    }

    *v11 = 0x203A6B72616D6572;
    v12 = *(v7 + 4) + 8;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_23;
    }

    v7 = *a1;
    v9 = *(*a1 + 4);
    if (*(*a1 + 3) - v9 <= 6uLL)
    {
      llvm::raw_ostream::write(v7, "error: ", 7uLL);
      goto LABEL_23;
    }

    *(v9 + 3) = 540701295;
    *v9 = 1869771365;
    v12 = *(v7 + 4) + 7;
  }

LABEL_22:
  *(v7 + 4) = v12;
LABEL_23:
  v13 = *a1;
  v14 = *(a2 + 6);
  if (v14)
  {
    v15 = a2[2];
    v16 = 24 * v14;
    do
    {
      mlir::DiagnosticArgument::print(v15, v13);
      v15 = (v15 + 24);
      v16 -= 24;
    }

    while (v16);
  }

  v17 = *(v13 + 4);
  if (v17 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 10);
  }

  else
  {
    *(v13 + 4) = v17 + 1;
    *v17 = 10;
  }
}

void std::default_delete<mlir::detail::DiagnosticEngineImpl>::operator()[abi:nn200100](int a1, std::recursive_mutex *this)
{
  if (this)
  {
    v3 = *&this[1].__m_.__opaque[40];
    v4 = *&this[1].__m_.__opaque[48];
    if (v4)
    {
      v5 = v3 + 40 * v4 - 32;
      v6 = -40 * v4;
      do
      {
        v7 = *(v5 + 24);
        if (v7 >= 8)
        {
          if ((v7 & 4) != 0)
          {
            v8 = v5;
            if ((v7 & 2) == 0)
            {
              v8 = *v5;
            }

            (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
          }

          if ((v7 & 2) == 0)
          {
            llvm::deallocate_buffer(*v5, *(v5 + 8));
          }
        }

        v5 -= 40;
        v6 += 40;
      }

      while (v6);
      v3 = *&this[1].__m_.__opaque[40];
    }

    if (v3 != &this[2])
    {
      free(v3);
    }

    if ((this[1].__m_.__opaque[0] & 1) == 0)
    {
      llvm::deallocate_buffer(*&this[1].__m_.__opaque[8], (16 * *&this[1].__m_.__opaque[16]));
    }

    std::recursive_mutex::~recursive_mutex(this);

    JUMPOUT(0x259C63180);
  }
}

uint64_t llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::try_emplace<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>(uint64_t a1, void *a2, __int128 *a3)
{
  v12 = *a2;
  v13 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::try_emplace<unsigned int>(a1, &v12, &v13, &v14);
  if (v15 != 1)
  {
    return *(a1 + 40) + 40 * *(v14 + 8);
  }

  v6 = *(a1 + 48);
  *(v14 + 8) = v6;
  v12 = a2;
  if (v6 >= *(a1 + 52))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>();
  }

  v7 = *(a1 + 40) + 40 * v6;
  *v7 = *a2;
  *(v7 + 32) = 0;
  v8 = *(a3 + 3);
  *(v7 + 32) = v8;
  if (v8 >= 8)
  {
    if ((v8 & 2) != 0 && (v8 & 4) != 0)
    {
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(v7 + 8, a3);
      (*((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) + 16))(a3);
    }

    else
    {
      v9 = *a3;
      *(v7 + 24) = *(a3 + 2);
      *(v7 + 8) = v9;
    }

    *(a3 + 3) = 0;
  }

  v11 = *(a1 + 48) + 1;
  *(a1 + 48) = v11;
  return *(a1 + 40) + 40 * v11 - 40;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::try_emplace<unsigned int>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 2;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = v7 - 1;
  v10 = (v7 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v11 = &v8[4 * v10];
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v5 = *(result + 1);
      v13 = result[4];
    }

    *a4 = v11;
    *(a4 + 8) = &v5[4 * v13];
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -2;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = &v8[4 * (v19 & v9)];
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 2;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -1)
  {
    --result[1];
  }

  *v11 = *a2;
  v11[2] = *a3;
  if (*result)
  {
    v15 = 2;
  }

  else
  {
    v5 = *(result + 1);
    v15 = result[4];
  }

  *a4 = v11;
  *(a4 + 8) = &v5[4 * v15];
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (v3 + 16 * v6);
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
        v7 = (v3 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void *llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::grow(unsigned int *a1, unsigned int a2)
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (a2 >= 3)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 2)
    {
      v20 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(a1 + 1) = buffer;
      *(a1 + 2) = v20;
      v22 = *a1;
      v9 = (v7 + 16 * v8);
      *a1 = *a1 & 1;
      if ((v22 & 1) == 0)
      {
        v23 = &buffer[2 * v20];
        v24 = 16 * v20 - 16;
        if (v24 < 0x10)
        {
          v26 = buffer;
          goto LABEL_26;
        }

LABEL_20:
        v25 = (v24 >> 4) + 1;
        v26 = &buffer[2 * (v25 & 0x1FFFFFFFFFFFFFFELL)];
        v27 = buffer + 2;
        v28 = v25 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v27 - 2) = -1;
          *v27 = -1;
          v27 += 4;
          v28 -= 2;
        }

        while (v28);
        if (v25 == (v25 & 0x1FFFFFFFFFFFFFFELL))
        {
LABEL_27:
          if (v8)
          {
            v29 = v7;
            do
            {
              v35 = *v29;
              if (*v29 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                if (*a1)
                {
                  v31 = 1;
                  v30 = (a1 + 2);
                }

                else
                {
                  v30 = *(a1 + 1);
                  v31 = a1[4] - 1;
                }

                v32 = v31 & (((0xBF58476D1CE4E5B9 * v35) >> 31) ^ (484763065 * v35));
                v33 = &v30[4 * v32];
                v34 = *v33;
                if (v35 != *v33)
                {
                  v36 = 0;
                  v37 = 1;
                  while (v34 != -1)
                  {
                    if (v36)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      v38 = v34 == -2;
                    }

                    if (v38)
                    {
                      v36 = v33;
                    }

                    v39 = v32 + v37++;
                    v32 = v39 & v31;
                    v33 = &v30[4 * (v39 & v31)];
                    v34 = *v33;
                    if (v35 == *v33)
                    {
                      goto LABEL_31;
                    }
                  }

                  if (v36)
                  {
                    v33 = v36;
                  }
                }

LABEL_31:
                *v33 = v35;
                *(v33 + 2) = *(v29 + 2);
                *a1 += 2;
              }

              v29 = (v29 + 16);
            }

            while (v29 != v9);
          }

          llvm::deallocate_buffer(v7, (16 * v8));
        }

        do
        {
LABEL_26:
          *v26 = -1;
          v26 += 2;
        }

        while (v26 != v23);
        goto LABEL_27;
      }
    }

    else
    {
      v9 = (v7 + 16 * v8);
      *a1 = 1;
    }

    v23 = a1 + 10;
    buffer = a1 + 2;
    v24 = 16;
    goto LABEL_20;
  }

  result = *(a1 + 1);
  v11 = &v53;
  if (result <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v53 = *(a1 + 1);
    v54 = a1[4];
    v11 = v55;
    v12 = *(a1 + 3);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      if (a2 < 3)
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v12 = *(a1 + 3);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v11 = v12;
  *(v11 + 2) = a1[8];
  v11 += 2;
  if (a2 < 3)
  {
LABEL_11:
    *a1 = v6 & 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v14 = (a1 + 10);
    result = a1 + 2;
    v15 = 16;
    goto LABEL_14;
  }

LABEL_53:
  *a1 = v6 & 0xFFFFFFFE;
  v40 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(a1 + 1) = result;
  *(a1 + 2) = v40;
  v41 = *a1;
  *a1 = *a1 & 1;
  if (v41)
  {
    goto LABEL_54;
  }

LABEL_12:
  v13 = a1[4];
  if (!v13)
  {
    goto LABEL_57;
  }

  v14 = &result[2 * v13];
  v15 = v14 - result - 16;
  if (v15 < 0x10)
  {
    v17 = result;
    do
    {
LABEL_56:
      *v17 = -1;
      v17 += 16;
    }

    while (v17 != v14);
    goto LABEL_57;
  }

LABEL_14:
  v16 = (v15 >> 4) + 1;
  v17 = &result[2 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
  v18 = result + 2;
  v19 = v16 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v18 - 2) = -1;
    *v18 = -1;
    v18 += 4;
    v19 -= 2;
  }

  while (v19);
  if (v16 != (v16 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_56;
  }

LABEL_57:
  if (&v53 != v11)
  {
    v42 = &v53;
    do
    {
      v48 = *v42;
      if (*v42 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*a1)
        {
          v44 = 1;
          v43 = (a1 + 2);
        }

        else
        {
          v43 = *(a1 + 1);
          v44 = a1[4] - 1;
        }

        v45 = v44 & (((0xBF58476D1CE4E5B9 * v48) >> 31) ^ (484763065 * v48));
        v46 = &v43[4 * v45];
        v47 = *v46;
        if (v48 != *v46)
        {
          v49 = 0;
          v50 = 1;
          while (v47 != -1)
          {
            if (v49)
            {
              v51 = 0;
            }

            else
            {
              v51 = v47 == -2;
            }

            if (v51)
            {
              v49 = v46;
            }

            v52 = v45 + v50++;
            v45 = v52 & v44;
            v46 = &v43[4 * (v52 & v44)];
            v47 = *v46;
            if (v48 == *v46)
            {
              goto LABEL_61;
            }
          }

          if (v49)
          {
            v46 = v49;
          }
        }

LABEL_61:
        *v46 = v48;
        *(v46 + 2) = *(v42 + 2);
        *a1 += 2;
      }

      v42 += 2;
    }

    while (v42 != v11);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::moveElementsForGrow(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = result;
    v4 = (*result + 32);
    v5 = (a2 + 32);
    v6 = 40 * v2;
    do
    {
      *(v5 - 4) = *(v4 - 4);
      *v5 = 0;
      v8 = *v4;
      *v5 = *v4;
      if (v8 >= 8)
      {
        result = (v5 - 3);
        if ((v8 & 2) != 0 && (v8 & 4) != 0)
        {
          (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(result, v4 - 3);
          result = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v4 - 3);
        }

        else
        {
          v7 = *(v4 - 3);
          *(v5 - 1) = *(v4 - 1);
          *result = v7;
        }

        *v4 = 0;
      }

      v4 += 5;
      v5 += 5;
      v6 -= 40;
    }

    while (v6);
    v9 = *(v3 + 8);
    if (v9)
    {
      v10 = *v3 + 40 * v9 - 32;
      v11 = -40 * v9;
      do
      {
        v12 = *(v10 + 24);
        if (v12 >= 8)
        {
          if ((v12 & 4) != 0)
          {
            v13 = v10;
            if ((v12 & 2) == 0)
            {
              v13 = *v10;
            }

            result = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
          }

          if ((v12 & 2) == 0)
          {
            llvm::deallocate_buffer(*v10, *(v10 + 8));
          }
        }

        v10 -= 40;
        v11 += 40;
      }

      while (v11);
    }
  }

  return result;
}

void *llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase(int *a1, void *a2)
{
  v4 = (a1 + 2);
  if (*a1)
  {
    v5 = 2;
    v6 = a1 + 2;
  }

  else
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 1);
  }

  v7 = v5 - 1;
  v8 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v9 = *&v6[4 * (v7 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)))];
  if (*a2 == v9)
  {
LABEL_6:
    *&v6[4 * v8] = -2;
    v10 = a1[1] + 1;
    *a1 -= 2;
    a1[1] = v10;
  }

  else
  {
    v24 = 1;
    while (v9 != -1)
    {
      v25 = v8 + v24++;
      v8 = v25 & v7;
      v9 = *&v6[4 * v8];
      if (*a2 == v9)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v11 = a1 + 10;
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *>(&v26, (a2 + 5), *(a1 + 5) + 40 * a1[12], a2);
  v12 = a1[12] - 1;
  a1[12] = v12;
  v13 = *v11 + 40 * v12;
  v14 = *(v13 + 32);
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v15 = (v13 + 8);
      if ((v14 & 2) == 0)
      {
        v15 = *v15;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v15);
    }

    if ((v14 & 2) == 0)
    {
      llvm::deallocate_buffer(*(v13 + 8), *(v13 + 16));
    }
  }

  v16 = *(a1 + 5);
  if ((v16 + 40 * a1[12]) != a2)
  {
    v17 = *a1;
    if (*a1 > 1)
    {
      v19 = (a1 + 10);
      if ((v17 & 1) != 0 || (v4 = *(a1 + 1), v20 = a1[4], v19 = v4 + 16 * v20, v18 = v4, v20))
      {
        v18 = v4;
        while (*v18 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v18 += 16;
          if (v18 == v19)
          {
            v18 = v19;
            break;
          }
        }

        if (*a1)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (v17)
      {
        v18 = (a1 + 10);
        v19 = v4 + 32;
        goto LABEL_26;
      }

      v18 = *(a1 + 1) + 16 * a1[4];
      v19 = v18;
    }

    v11 = (*(a1 + 1) + 16 * a1[4]);
LABEL_26:
    if (v18 != v11)
    {
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v16) >> 3);
      do
      {
        v22 = *(v18 + 8);
        if (v21 < v22)
        {
          *(v18 + 8) = v22 - 1;
        }

        do
        {
          v18 += 16;
        }

        while (v18 != v19 && *v18 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v18 != v11);
    }
  }

  return a2;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v9 = a4 + v7;
    *(a4 + v7) = *(a2 + v7);
    v10 = (a4 + v7 + 8);
    if (a2 != a4)
    {
      v11 = *(v9 + 32);
      if (v11 >= 8)
      {
        if ((v11 & 4) != 0)
        {
          v12 = (a4 + v7 + 8);
          if ((v11 & 2) == 0)
          {
            v12 = *v10;
          }

          (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v12);
        }

        if ((v11 & 2) == 0)
        {
          llvm::deallocate_buffer(*v10, *(a4 + v7 + 16));
        }
      }

      *(v9 + 32) = 0;
      v13 = *(a2 + v7 + 32);
      *(v9 + 32) = v13;
      if (v13 >= 8)
      {
        if ((v13 & 2) != 0 && (v13 & 4) != 0)
        {
          (*((v13 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + v7 + 8, a2 + v7 + 8);
          (*((*(v9 + 32) & 0xFFFFFFFFFFFFFFF8) + 16))(a2 + v7 + 8);
        }

        else
        {
          v8 = *(a2 + v7 + 8);
          *(a4 + v7 + 24) = *(a2 + v7 + 24);
          *v10 = v8;
        }

        *(a2 + v7 + 32) = 0;
      }
    }

    v7 += 40;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FileLineColLoc mlir::LocationAttr::findInstanceOf<mlir::FileLineColLoc>(void)::{lambda(mlir::FileLineColLoc)#1}>(void **a1, uint64_t a2)
{
  result = 1;
  if (a2)
  {
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
    {
      result = 0;
      **a1 = a2;
    }
  }

  return result;
}

uint64_t *llvm::StringMap<llvm::SmallVector<mlir::detail::ExpectedDiag,2u>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 153, 8uLL);
    v11 = buffer + 19;
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

    buffer = llvm::allocate_buffer(a3 + 153, 8uLL);
    v11 = buffer + 19;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = buffer + 3;
  buffer[2] = 0x200000000;
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

uint64_t llvm::StringMap<llvm::SmallVector<mlir::detail::ExpectedDiag,2u>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v4 = *(*a1 + 8 * i);
        if (v4 != -8 && v4 != 0)
        {
          v7 = *v4;
          v6 = *(v4 + 1);
          v8 = *(v4 + 4);
          if (v8)
          {
            v9 = v8 << 6;
            v10 = &v6[v9 - 24];
            v11 = -v9;
            do
            {
              if (*(v10 + 16) == 1)
              {
                llvm::Regex::~Regex(v10);
              }

              v10 = (v10 - 64);
              v11 += 64;
            }

            while (v11);
            v6 = *(v4 + 1);
          }

          if (v6 != v4 + 24)
          {
            free(v6);
          }

          llvm::deallocate_buffer(v4, (v7 + 153));
        }
      }
    }
  }

  free(*a1);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEE8CallImplIZNS3_16DiagnosticEngine15registerHandlerIZNS3_34SourceMgrDiagnosticVerifierHandlerC1ERNS_9SourceMgrEPNS3_11MLIRContextERNS_11raw_ostreamEE3__0vEENSt3__19enable_ifIXsr3std7is_sameIT0_vEE5valueEyE4typeEOT_EUlS5_E_EES2_PvS5_(mlir::SourceMgrDiagnosticVerifierHandler **a1, mlir::Diagnostic *a2)
{
  v3 = *a1;
  mlir::SourceMgrDiagnosticVerifierHandler::process(*a1, a2);
  v5 = *(a2 + 19);
  v4 = *(a2 + 20);
  while (v5 != v4)
  {
    v6 = *v5++;
    mlir::SourceMgrDiagnosticVerifierHandler::process(v3, v6);
  }

  return 1;
}

uint64_t mlir::Dialect::Dialect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = &unk_28689CB20;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

{
  *result = &unk_28689CB20;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void mlir::Dialect::~Dialect(llvm **this)
{
  *this = &unk_28689CB20;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)));
}

{
  *this = &unk_28689CB20;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)));
}

{
  *this = &unk_28689CB20;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)));
}

void sub_2570E44AC()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::Dialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v21 = 257;
  (*(*a2 + 24))(&v25, a2, v4, v20);
  if (v25)
  {
    LODWORD(v22) = 3;
    *(&v22 + 1) = "dialect '";
    v23 = 9;
    if (v28 >= v29)
    {
      if (v27 > &v22 || v27 + 24 * v28 <= &v22)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v27 + 24 * v28;
    v6 = v22;
    *(v5 + 2) = v23;
    *v5 = v6;
    ++v28;
    if (v25)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v24 = 261;
      *&v22 = v7;
      *(&v22 + 1) = v8;
      mlir::Diagnostic::operator<<(&v26, &v22);
      if (v25)
      {
        LODWORD(v22) = 3;
        *(&v22 + 1) = "' provides no attribute parsing hook";
        v23 = 36;
        if (v28 >= v29)
        {
          if (v27 > &v22 || v27 + 24 * v28 <= &v22)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v27 + 24 * v28;
        v10 = v22;
        *(v9 + 2) = v23;
        *v9 = v10;
        ++v28;
        if (v25)
        {
          mlir::InFlightDiagnostic::report(&v25);
        }
      }
    }
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v34;
      v13 = __p;
      if (v34 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v34 = v11;
      operator delete(v13);
    }

    v14 = v31;
    if (v31)
    {
      v15 = v32;
      v16 = v31;
      if (v32 != v31)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v31;
      }

      v32 = v14;
      operator delete(v16);
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return 0;
}

uint64_t mlir::Dialect::parseType(mlir::Dialect *this, mlir::DialectAsmParser *a2, const llvm::Twine *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(this + 41) == 1)
  {
    v5 = *(this + 4);
    v6 = *(this + 1);
    v7 = *(this + 2);
    LOWORD(v35) = 261;
    v32 = v6;
    v33 = v7;
    v8 = mlir::StringAttr::get(v5, &v32, a3);
    v9 = (*(*a2 + 656))(a2);
    return mlir::OpaqueType::get(v8, v9, v10);
  }

  else
  {
    v12 = (*(*a2 + 16))(a2);
    v28 = 257;
    (*(*a2 + 24))(&v32, a2, v12, v27);
    if (v32)
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = "dialect '";
      v30 = 9;
      if (v35 >= v36)
      {
        if (v34 > &v29 || v34 + 24 * v35 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v34 + 24 * v35;
      v14 = v29;
      *(v13 + 2) = v30;
      *v13 = v14;
      ++v35;
      if (v32)
      {
        v15 = *(this + 1);
        v16 = *(this + 2);
        v31 = 261;
        *&v29 = v15;
        *(&v29 + 1) = v16;
        mlir::Diagnostic::operator<<(&v33, &v29);
        if (v32)
        {
          LODWORD(v29) = 3;
          *(&v29 + 1) = "' provides no type parsing hook";
          v30 = 31;
          if (v35 >= v36)
          {
            if (v34 > &v29 || v34 + 24 * v35 <= &v29)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v17 = v34 + 24 * v35;
          v18 = v29;
          *(v17 + 2) = v30;
          *v17 = v18;
          ++v35;
          if (v32)
          {
            mlir::InFlightDiagnostic::report(&v32);
          }
        }
      }
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v41;
        v21 = __p;
        if (v41 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v41 = v19;
        operator delete(v21);
      }

      v22 = v38;
      if (v38)
      {
        v23 = v39;
        v24 = v38;
        if (v39 != v38)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              MEMORY[0x259C63150](v25, 0x1000C8077774924);
            }
          }

          while (v23 != v22);
          v24 = v38;
        }

        v39 = v22;
        operator delete(v24);
      }

      if (v34 != &v37)
      {
        free(v34);
      }
    }

    return 0;
  }
}

uint64_t mlir::Dialect::addInterface(int32x2_t *a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v4 = a1[11].i32[0];
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[9];
    v7 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (((v5.i32[0] >> 4) ^ (v5.i32[0] >> 9)) << 32));
    v8 = v4 - 1;
    v9 = v8 & ((v7 >> 31) ^ v7);
    v10 = (*&v6 + 16 * v9);
    v12 = v10->i64[0];
    v11 = v10->i64[1];
    if (v10->i64[0] == *&v5 && v11 == v3)
    {
LABEL_7:
      *v10 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      a1[10] = vadd_s32(a1[10], 0x1FFFFFFFFLL);
      v3 = *(v2 + 16);
    }

    else
    {
      v15 = 1;
      while (v12 != -4096 || v11 != -4096)
      {
        v16 = v9 + v15++;
        v9 = v16 & v8;
        v10 = (*&v6 + 16 * v9);
        v12 = v10->i64[0];
        v11 = v10->i64[1];
        if (v10->i64[0] == *&v5 && v11 == v3)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v18 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::try_emplace<std::unique_ptr<mlir::DialectInterface>>(&a1[6], &v18, a2, v19);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::try_emplace<std::unique_ptr<mlir::DialectInterface>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v15 = 0;
    v16 = 1;
    while (v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17)
      {
        v15 = v9;
      }

      v18 = v8 + v16++;
      v8 = v18 & v7;
      v9 = (v6 + 16 * (v18 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_5:
    v22 = v9;
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
        v13 = *a2;
        v14 = *a3;
        *a3 = 0;
        *v9 = v13;
        v9[1] = v14;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v9 = v22;
    ++*(v19 + 8);
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

uint64_t mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(uint64_t a1, mlir::MLIRContext *this, uint64_t a3)
{
  *a1 = &unk_28689CBA0;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  mlir::MLIRContext::getLoadedDialects(this, &v17);
  v7 = v17;
  v8 = v18;
  if (v17 != v18)
  {
    do
    {
      v9 = *(*v7 + 64);
      if (v9)
      {
        v10 = *(*v7 + 48);
        v11 = (v9 - 1) & ((a3 >> 4) ^ (a3 >> 9));
        v12 = *(v10 + 16 * v11);
        if (v12 == a3)
        {
LABEL_6:
          if (v11 != v9)
          {
            v16 = *(v10 + 16 * v11 + 8);
            if (v16)
            {
              llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(v5, &v16, v19);
              std::vector<mlir::DialectInterface const*>::push_back[abi:nn200100](v6, &v16);
            }
          }
        }

        else
        {
          v13 = 1;
          while (v12 != -4096)
          {
            v14 = v11 + v13++;
            v11 = v14 & (v9 - 1);
            v12 = *(v10 + 16 * v11);
            if (v12 == a3)
            {
              goto LABEL_6;
            }
          }
        }
      }

      v7 += 8;
    }

    while (v7 != v8);
    v7 = v17;
  }

  if (v7)
  {
    v18 = v7;
    operator delete(v7);
  }

  return a1;
}

void std::vector<mlir::DialectInterface const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(mlir::detail::DialectInterfaceCollectionBase *this)
{
  *this = &unk_28689CBA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)));
}

{
  *this = &unk_28689CBA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)));
}

{
  *this = &unk_28689CBA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)));
}

void sub_2570E52D8()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(mlir::detail::DialectInterfaceCollectionBase *this, Operation *a2)
{
  v3 = *(a2 + 6);
  if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v14 = *(v3 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v14);
    v5 = *(this + 6);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    ReferencedDialect = *(v3 + 24);
    v5 = *(this + 6);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(this + 1);
  v7 = 0x9DDFEA08EB382D69 * ((8 * ReferencedDialect - 0xAE502812AA7333) ^ HIDWORD(ReferencedDialect));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(ReferencedDialect) ^ (v7 >> 47) ^ v7);
  v9 = 1;
  v10 = (-348639895 * ((v8 >> 47) ^ v8)) & (v5 - 1);
  v11 = *(v6 + 8 * v10);
  if (v11 == -8192)
  {
    goto LABEL_8;
  }

  while (v11 != -4096)
  {
    if (*(v11 + 8) == ReferencedDialect)
    {
      if (v10 == v5)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }

    do
    {
LABEL_8:
      v12 = v10 + v9++;
      v10 = v12 & (v5 - 1);
      v11 = *(v6 + 8 * v10);
    }

    while (v11 == -8192);
  }

  return 0;
}

void mlir::DialectExtensionBase::~DialectExtensionBase(mlir::DialectExtensionBase *this)
{
  *this = &unk_28689CBC0;
  v1 = *(this + 1);
  if (v1 != this + 24)
  {
    free(v1);
  }
}

uint64_t mlir::Dialect::handleUseOfUndefinedPromisedInterface(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 88);
  if (v5)
  {
    v6 = result;
    v7 = *(result + 72);
    v8 = 0xBF58476D1CE4E5B9 * ((a3 >> 4) ^ (a3 >> 9) | (((a2 >> 4) ^ (a2 >> 9)) << 32));
    v9 = v5 - 1;
    v10 = v9 & ((v8 >> 31) ^ v8);
    v11 = (v7 + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v13 == a2 && v12 == a3)
    {
LABEL_7:
      v28 = 1283;
      v27[2] = a4;
      v27[3] = a5;
      v26 = 259;
      llvm::operator+(v27, &v25, v29);
      v15 = *(v6 + 8);
      v16 = *(v6 + 16);
      v24 = 261;
      v23[0] = v15;
      v23[1] = v16;
      llvm::operator+(v29, v23, v30);
      v21 = "' but never implemented. This is generally an indication that the dialect extension implementing the interface was never registered.";
      v22 = 259;
      llvm::operator+(v30, &v21, v31);
      llvm::report_fatal_error(v31, 1);
    }

    v17 = 1;
    while (v13 != -4096 || v12 != -4096)
    {
      v18 = v10 + v17++;
      v10 = v18 & v9;
      v19 = (v7 + 16 * v10);
      v13 = *v19;
      v12 = v19[1];
      if (v13 == a2 && v12 == a3)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

int32x2_t *mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(int32x2_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[11].i32[0];
  if (v3)
  {
    v4 = result[9];
    v5 = 0xBF58476D1CE4E5B9 * ((a3 >> 4) ^ (a3 >> 9) | (((a2 >> 4) ^ (a2 >> 9)) << 32));
    v6 = v3 - 1;
    v7 = v6 & ((v5 >> 31) ^ v5);
    v8 = (*&v4 + 16 * v7);
    v10 = v8->i64[0];
    v9 = v8->i64[1];
    if (v8->i64[0] == a2 && v9 == a3)
    {
LABEL_7:
      *v8 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      result[10] = vadd_s32(result[10], 0x1FFFFFFFFLL);
    }

    else
    {
      v12 = 1;
      while (v10 != -4096 || v9 != -4096)
      {
        v13 = v7 + v12++;
        v7 = v13 & v6;
        v8 = (*&v4 + 16 * v7);
        v10 = v8->i64[0];
        v9 = v8->i64[1];
        if (v8->i64[0] == a2 && v9 == a3)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::dialect_extension_detail::hasPromisedInterface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 72);
  v5 = 0xBF58476D1CE4E5B9 * ((a3 >> 4) ^ (a3 >> 9) | (((a2 >> 4) ^ (a2 >> 9)) << 32));
  v6 = v3 - 1;
  v7 = v6 & ((v5 >> 31) ^ v5);
  v8 = (v4 + 16 * v7);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == a2 && v10 == a3)
  {
    return 1;
  }

  v13 = 1;
  do
  {
    v14 = v9 == -4096 && v10 == -4096;
    result = !v14;
    if (v14)
    {
      break;
    }

    v15 = v7 + v13++;
    v7 = v15 & v6;
    v16 = (v4 + 16 * v7);
    v9 = *v16;
    v10 = v16[1];
    result = 1;
  }

  while (v9 != a2 || v10 != a3);
  return result;
}

mlir::DialectRegistry *mlir::DialectRegistry::DialectRegistry(mlir::DialectRegistry *this)
{
  v5 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0u;
  *this = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0;
  v3[0] = &unk_28689CC50;
  v4 = v3;
  mlir::DialectRegistry::insert(this, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, "builtin", 7uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  return this;
}

{
  v5 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0u;
  *this = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0;
  v3[0] = &unk_28689CC50;
  v4 = v3;
  mlir::DialectRegistry::insert(this, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, "builtin", 7uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  return this;
}

void *(*mlir::DialectRegistry::getDialectAllocator(uint64_t a1, const void *a2, size_t a3))(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v29) = a3;
    if (a3)
    {
      memmove(&__dst, a2, a3);
    }

    *(&__dst + a3) = 0;
    v8 = *(a1 + 8);
    v5 = a1 + 8;
    v6 = v8;
    v7 = HIBYTE(v29);
    if (!v8)
    {
      goto LABEL_49;
    }
  }

  else
  {
    __dst = 0;
    v28 = 0;
    v29 = 0;
    v5 = a1 + 8;
    v6 = *(a1 + 8);
    v7 = 0;
    if (!v6)
    {
LABEL_49:
      v11 = v5;
      goto LABEL_50;
    }
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v28;
  }

  if ((v7 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v11 = v5;
  do
  {
    v12 = *(v6 + 55);
    if (v12 >= 0)
    {
      v13 = *(v6 + 55);
    }

    else
    {
      v13 = *(v6 + 40);
    }

    if (v12 >= 0)
    {
      v14 = (v6 + 32);
    }

    else
    {
      v14 = *(v6 + 32);
    }

    if (v9 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    v16 = memcmp(v14, p_dst, v15);
    v17 = v13 < v9;
    if (v16)
    {
      v17 = v16 < 0;
    }

    v18 = !v17;
    if (v17)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v11 = v6;
    }

    v6 = *(v6 + v19);
  }

  while (v6);
  if (v11 == v5)
  {
    goto LABEL_49;
  }

  v20 = *(v11 + 55);
  if (v20 >= 0)
  {
    v21 = *(v11 + 55);
  }

  else
  {
    v21 = *(v11 + 40);
  }

  if (v20 >= 0)
  {
    v22 = (v11 + 32);
  }

  else
  {
    v22 = *(v11 + 32);
  }

  if (v21 >= v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = v21;
  }

  v24 = memcmp(p_dst, v22, v23);
  v25 = v9 < v21;
  if (v24)
  {
    v25 = v24 < 0;
  }

  if (v25)
  {
    goto LABEL_49;
  }

LABEL_50:
  if ((v7 & 0x80) != 0)
  {
    operator delete(__dst);
  }

  if (v11 == v5)
  {
    return 0;
  }

  else
  {
    return llvm::function_ref<mlir::Dialect * ()(mlir::MLIRContext *)>::callback_fn<std::function<mlir::Dialect * ()(mlir::MLIRContext *)> const>;
  }
}

_BYTE *mlir::DialectRegistry::insert(uint64_t a1, size_t a2, void *__src, size_t __len, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v21) = __len;
  if (__len)
  {
    memmove(&v20, __src, __len);
    *(&v20 + __len) = 0;
    v22 = a2;
    v10 = *(a5 + 24);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = 0;
    *__p = v20;
    v13 = v21;
    v20 = 0uLL;
    v21 = 0;
    v26 = v13;
    v27 = a2;
    v29 = 0;
    goto LABEL_16;
  }

  LOBYTE(v20) = 0;
  v22 = a2;
  v10 = *(a5 + 24);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v10 == a5)
  {
    v24 = v23;
    (*(*v10 + 24))(v10, v23);
    v12 = v22;
    v11 = v24;
  }

  else
  {
    v11 = (*(*v10 + 16))(v10);
    v24 = v11;
    v12 = a2;
  }

  *__p = v20;
  v14 = v21;
  v21 = 0;
  v20 = 0uLL;
  v26 = v14;
  v27 = v12;
  if (v11)
  {
    if (v11 == v23)
    {
      v29 = v28;
      (*(*v11 + 24))(v11, v28);
    }

    else
    {
      v29 = v11;
      v24 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_16:
  v17 = std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>(a1, __p);
  v18 = v15;
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29, v15, v16);
    }

    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_20:
      result = v24;
      if (v24 != v23)
      {
        goto LABEL_21;
      }

LABEL_27:
      result = (*(*result + 32))(result);
      if (v18)
      {
        return result;
      }

      goto LABEL_28;
    }
  }

  operator delete(__p[0]);
  result = v24;
  if (v24 == v23)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  if ((v18 & 1) == 0)
  {
LABEL_28:
    if (v17[7] != a2)
    {
      v28[0] = 1283;
      __p[0] = "Trying to register different dialects for the same namespace: ";
      v26 = __src;
      v27 = __len;
      llvm::report_fatal_error(__p, 1);
    }
  }

  return result;
}

void mlir::DialectRegistry::insertDynamic(int a1, void *__src, size_t __len, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    __dst.__r_.__value_.__s.__data_[__len] = 0;
    v6 = *(a4 + 24);
    if (v6)
    {
LABEL_12:
      if (v6 == a4)
      {
        v13 = v12;
        (*(*v6 + 24))(v6, v12);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_14:
          __p = __dst;
          v7 = v13;
          if (v13)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v13 = (*(*v6 + 16))(v6);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      v7 = v13;
      if (v13)
      {
LABEL_15:
        if (v7 == v12)
        {
          v10 = v9;
          (*(*v7 + 24))(v7, v9);
        }

        else
        {
          v10 = (*(*v7 + 16))(v7);
        }

LABEL_21:
        operator new();
      }

LABEL_19:
      v10 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
    v6 = *(a4 + 24);
    if (v6)
    {
      goto LABEL_12;
    }
  }

  v13 = 0;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_18;
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, mlir::Dialect *a2)
{
  v46[6] = *MEMORY[0x277D85DE8];
  v39 = a2;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = 0;
    v38 = *(a2 + 4);
    v5 = *(a2 + 1);
    v4 = *(a2 + 2);
    v6 = *(this + 6);
    v7 = v6 + 16 * v2;
    while (1)
    {
      v8 = v7 - v6;
      v9 = (v7 - v6) >> 4;
      v40 = v42;
      v41 = 0x600000000;
      if (v9 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v42;
      v11 = v42;
      v12 = v8 - 16;
      if (v8 - 16 >= 0xA0)
      {
        v13 = v12 >> 4;
        if (v42 >= v6 + (v12 & 0xFFFFFFFFFFFFFFF0) + 16 || v6 + 8 >= &v42[v13 + 1])
        {
          v14 = v13 + 1;
          v15 = v14 & 3;
          if ((v14 & 3) == 0)
          {
            v15 = 4;
          }

          v16 = v14 - v15;
          v11 = &v42[v16];
          v17 = v6 + 16 * v16;
          v18 = (v6 + 40);
          v19 = &v43;
          do
          {
            v20 = v18 - 4;
            v21 = vld2q_f64(v20);
            v22 = vld2q_f64(v18);
            *(v19 - 1) = v21;
            *v19 = v22;
            v18 += 8;
            v19 += 2;
            v16 -= 4;
          }

          while (v16);
          v6 = v17;
        }
      }

      v3 += v9;
      do
      {
        *v11++ = *(v6 + 8);
        v6 += 16;
      }

      while (v6 != v7);
      v23 = v8 >> 4;
      LODWORD(v41) = v23;
      if (v23)
      {
        break;
      }

LABEL_48:
      v34 = *(this + 6);
      v35 = *(this + 14);
      if (v10 != v42)
      {
        free(v10);
      }

      v6 = v34 + 16 * v3;
      v7 = v34 + 16 * v35;
      if (v3 == v35)
      {
        return;
      }
    }

    v37 = v3;
    v24 = &v42[v23];
    while (1)
    {
      v25 = *v10;
      v26 = *(*v10 + 8);
      v27 = *(*v10 + 16);
      if (v27 == 1)
      {
        if (*(v26 + 8) != v4 || v4 && memcmp(*v26, v5, v4))
        {
          goto LABEL_19;
        }
      }

      else if (v27)
      {
        v28 = 16 * v27;
        if (v4)
        {
          v29 = 16 * v27;
          v30 = *(*v10 + 8);
          while (*(v30 + 8) != v4 || memcmp(*v30, v5, v4))
          {
            v30 += 16;
            v29 -= 16;
            if (!v29)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          v31 = 16 * v27;
          v30 = *(*v10 + 8);
          while (*(v30 + 8))
          {
            v30 += 16;
            v31 -= 16;
            if (!v31)
            {
              goto LABEL_19;
            }
          }
        }

        if (v30 != v26 + 16 * v27)
        {
          v44 = v46;
          v45 = 0x600000000;
          if (v27 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          do
          {
            if (v26 == v30)
            {
              LoadedDialect = v39;
              v33 = v45;
              if (v45 >= HIDWORD(v45))
              {
                goto LABEL_44;
              }
            }

            else
            {
              LoadedDialect = mlir::MLIRContext::getLoadedDialect(v38, *v26, *(v26 + 8));
              if (!LoadedDialect)
              {
                goto LABEL_45;
              }

              v33 = v45;
              if (v45 >= HIDWORD(v45))
              {
LABEL_44:
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }
            }

            *(v44 + v33) = LoadedDialect;
            LODWORD(v45) = v45 + 1;
            v26 += 16;
            v28 -= 16;
          }

          while (v28);
          (*(*v25 + 16))(v25, v38, v44);
LABEL_45:
          if (v44 != v46)
          {
            free(v44);
          }
        }

        goto LABEL_19;
      }

      (*(*v25 + 16))(v25, v38, &v39, 1);
LABEL_19:
      if (++v10 == v24)
      {
        v10 = v40;
        v3 = v37;
        goto LABEL_48;
      }
    }
  }
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, mlir::MLIRContext *a2)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  if (v2)
  {
    v5 = 0;
    v6 = *(this + 6);
    v7 = v6 + 16 * v2;
    do
    {
      v8 = v7 - v6;
      v9 = (v7 - v6) >> 4;
      if (v9 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v32;
      v11 = v32;
      v12 = v8 - 16;
      if (v8 - 16 >= 0xA0)
      {
        v13 = v12 >> 4;
        if (v32 >= v6 + (v12 & 0xFFFFFFFFFFFFFFF0) + 16 || v6 + 8 >= &v32[v13 + 1])
        {
          v14 = v13 + 1;
          v15 = v14 & 3;
          if ((v14 & 3) == 0)
          {
            v15 = 4;
          }

          v16 = v14 - v15;
          v11 = &v32[v16];
          v17 = v6 + 16 * v16;
          v18 = (v6 + 40);
          v19 = &v33;
          do
          {
            v20 = v18 - 4;
            v21 = vld2q_f64(v20);
            v22 = vld2q_f64(v18);
            *(v19 - 1) = v21;
            *v19 = v22;
            v18 += 8;
            v19 += 2;
            v16 -= 4;
          }

          while (v16);
          v6 = v17;
        }
      }

      v5 += v9;
      do
      {
        *v11++ = *(v6 + 8);
        v6 += 16;
      }

      while (v6 != v7);
      v23 = v8 >> 4;
      if (v23)
      {
        v24 = &v32[v23];
        do
        {
          v25 = *v10;
          v26 = *(*v10 + 16);
          if (v26)
          {
            v27 = v25[1];
            __p = v36;
            v35 = 0x600000000;
            if (v26 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v28 = &v27[2 * v26];
            while (1)
            {
              LoadedDialect = mlir::MLIRContext::getLoadedDialect(a2, *v27, v27[1]);
              if (!LoadedDialect)
              {
                break;
              }

              if (v35 >= HIDWORD(v35))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(__p + v35) = LoadedDialect;
              LODWORD(v35) = v35 + 1;
              v27 += 2;
              if (v27 == v28)
              {
                (*(*v25 + 16))(v25, a2, __p);
                break;
              }
            }

            if (__p != v36)
            {
              free(__p);
            }
          }

          else
          {
            mlir::MLIRContext::getLoadedDialects(a2, &__p);
            (*(*v25 + 16))(v25, a2);
            if (__p)
            {
              v35 = __p;
              operator delete(__p);
            }
          }

          ++v10;
        }

        while (v10 != v24);
      }

      v30 = *(this + 6);
      v31 = *(this + 14);
      v6 = v30 + 16 * v5;
      v7 = v30 + 16 * v31;
    }

    while (v5 != v31);
  }
}

uint64_t mlir::DialectRegistry::isSubsetOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = &v4[2 * v2];
      v6 = *(a2 + 24);
      v7 = v3 - 1;
      while (1)
      {
        v8 = ((*v4 >> 4) ^ (*v4 >> 9)) & v7;
        v9 = *(v6 + 16 * v8);
        if (v9 != *v4)
        {
          break;
        }

LABEL_5:
        if (v8 == v3)
        {
          return 0;
        }

        v4 += 2;
        if (v4 == v5)
        {
          goto LABEL_12;
        }
      }

      v10 = 1;
      while (v9 != -4096)
      {
        v11 = v8 + v10++;
        v8 = v11 & v7;
        v9 = *(v6 + 16 * v8);
        if (v9 == *v4)
        {
          goto LABEL_5;
        }
      }
    }

    return 0;
  }

LABEL_12:
  v12 = (a1 + 8);
  v13 = *a1;
  if (*a1 == a1 + 8)
  {
    return 1;
  }

  v14 = *(a2 + 8);
  if (!v14)
  {
    return 0;
  }

  do
  {
    v15 = *(v13 + 55);
    if (v15 >= 0)
    {
      v16 = *(v13 + 55);
    }

    else
    {
      v16 = v13[5];
    }

    if (v15 >= 0)
    {
      v17 = v13 + 4;
    }

    else
    {
      v17 = v13[4];
    }

    v18 = v14;
    while (1)
    {
      v19 = *(v18 + 55);
      if (v19 >= 0)
      {
        v20 = *(v18 + 55);
      }

      else
      {
        v20 = v18[5];
      }

      if (v19 >= 0)
      {
        v21 = (v18 + 4);
      }

      else
      {
        v21 = v18[4];
      }

      if (v20 >= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v17, v21, v22);
      v24 = v16 < v20;
      if (v23)
      {
        v24 = v23 < 0;
      }

      if (v24)
      {
        goto LABEL_21;
      }

      v25 = memcmp(v21, v17, v22);
      v26 = v20 < v16;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        break;
      }

      ++v18;
LABEL_21:
      v18 = *v18;
      if (!v18)
      {
        return 0;
      }
    }

    v27 = v13[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v13[2];
        v29 = *v28 == v13;
        v13 = v28;
      }

      while (!v29);
    }

    result = 1;
    v13 = v28;
  }

  while (v28 != v12);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = &v7[2 * v10];
      v12 = v7 + 2;
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *result;
    }

    v14 = &v7[2 * v6];
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(v5 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*v5 + 16 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*v5 + 16 * (v24 & v16));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        v20 = v4[1];
        v4[1] = 0;
        *v18 = v15;
        v18[1] = v20;
        ++*(v5 + 8);
        result = v4[1];
        v4[1] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*(*a2 + 8));
  v7 = 0x9DDFEA08EB382D69 * ((8 * *(*a2 + 8) - 0xAE502812AA7333) ^ v6);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v7 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*(*a2 + 8));
    v6 = 0x9DDFEA08EB382D69 * ((8 * *(*a2 + 8) - 0xAE502812AA7333) ^ v5);
    LODWORD(v5) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != result + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = HIDWORD(*(v28 + 8));
          v30 = 0x9DDFEA08EB382D69 * ((8 * *(v28 + 8) - 0xAE502812AA7333) ^ v29);
          v31 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30)))) & v18;
          v27 = &result->i8[8 * v31];
          v32 = *v27;
          if (v28 != *v27)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v27;
              }

              v36 = v31 + v34++;
              v31 = v36 & v18;
              v27 = &result->i8[8 * (v36 & v18)];
              v32 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v33)
            {
              v27 = v33;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = &result->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = &result->i8[8 * v20];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v26);
    }
  }

  return result;
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::BuiltinDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::BuiltinDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::function_ref<mlir::Dialect * ()(mlir::MLIRContext *)>::callback_fn<std::function<mlir::Dialect * ()(mlir::MLIRContext *)> const>(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>(v4, v5);
}

void *std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::~__func(uint64_t a1)
{
  *a1 = &unk_28689CCD0;
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*(a1 + 8));
  return a1;
}

void std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::~__func(uint64_t a1)
{
  *a1 = &unk_28689CCD0;
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_5:

      JUMPOUT(0x259C63180);
    }
  }

  operator delete(*(a1 + 8));
  goto LABEL_5;
}

uint64_t std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28689CCD0;
  v4 = (a2 + 1);
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
    result = *(a1 + 56);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    a2[7] = 0;
    return result;
  }

  std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  result = *(a1 + 56);
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result == a1 + 32)
  {
    a2[7] = a2 + 4;
    v7 = *(**(a1 + 56) + 24);

    return v7();
  }

  else
  {
    result = (*(*result + 16))(result);
    a2[7] = result;
  }

  return result;
}

void std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::destroy(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 31) < 0)
  {
LABEL_7:
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

void std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::destroy_deallocate(char *__p)
{
  v2 = __p + 32;
  v3 = *(__p + 7);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((__p[31] & 0x80000000) == 0)
    {
LABEL_5:
      v4 = __p;

      goto LABEL_7;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((__p[31] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(__p + 1));
  v4 = __p;

LABEL_7:
  operator delete(v4);
}

mlir::DynamicDialect *std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::operator()(uint64_t a1, mlir::StringAttr **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 31);
  if (v3 >= 0)
  {
    v4 = (a1 + 8);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    if (v6 == a1 + 32)
    {
      v10 = v9;
      (*(*v6 + 24))(v6, v9);
    }

    else
    {
      v10 = (*(*v6 + 16))(*(a1 + 56));
    }
  }

  else
  {
    v10 = 0;
  }

  DynamicDialect = mlir::MLIRContext::getOrLoadDynamicDialect(v2, v4, v5);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return DynamicDialect;
}

uint64_t std::__function::__func<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0,std::allocator<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry13insertDynamicEN4llvm9StringRefERKNSt3__18functionIFvPNS_11MLIRContextEPNS_14DynamicDialectEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry13insertDynamicEN4llvm9StringRefERKNSt3__18functionIFvPNS_11MLIRContextEPNS_14DynamicDialectEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry13insertDynamicEN4llvm9StringRefERKNSt3__18functionIFvPNS_11MLIRContextEPNS_14DynamicDialectEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry13insertDynamicEN4llvm9StringRefERKNSt3__18functionIFvPNS_11MLIRContextEPNS_14DynamicDialectEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::DynamicDialect *)>::callback_fn<mlir::DialectRegistry::insertDynamic(llvm::StringRef,std::function<void ()(mlir::MLIRContext *,mlir::DynamicDialect *)> const&)::$_0::operator() const(mlir::MLIRContext *)::{lambda(mlir::DynamicDialect *)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[4];
  v8 = a2;
  v9 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v9, &v8);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::DialectResourceBlobManager::lookup(v5, v6, v7);
}

uint64_t mlir::DialectResourceBlobManager::lookup(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  llvm::sys::RWMutexImpl::lock_shared(a1);
  v7 = llvm::StringMapImpl::hash(a2, a3, v6);
  Key = llvm::StringMapImpl::FindKey((a1 + 16), a2, a3, v7);
  if (Key == -1 || Key == *(a1 + 24))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(a1 + 16) + 8 * Key) + 8;
  }

  llvm::sys::RWMutexImpl::unlock_shared(a1);
  return v9;
}

uint64_t *mlir::DialectResourceBlobManager::update(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  llvm::sys::RWMutexImpl::lock_shared(a1);
  v9 = llvm::StringMapImpl::hash(a2, a3, v8);
  Key = llvm::StringMapImpl::FindKey((a1 + 16), a2, a3, v9);
  if (Key == -1 || Key == *(a1 + 24))
  {
    v11 = 0;
    result = llvm::sys::RWMutexImpl::unlock_shared(a1);
    if (MEMORY[0x50] == 1)
    {
LABEL_4:

      return mlir::AsmResourceBlob::operator=((v11 + 16), a4);
    }
  }

  else
  {
    v11 = *(*(a1 + 16) + 8 * Key) + 8;
    result = llvm::sys::RWMutexImpl::unlock_shared(a1);
    if (*(v11 + 80) == 1)
    {
      goto LABEL_4;
    }
  }

  v13 = *a4;
  *(v11 + 32) = *(a4 + 16);
  *(v11 + 16) = v13;
  *(v11 + 64) = 0;
  v14 = *(a4 + 48);
  *(v11 + 64) = v14;
  if (v14 >= 8)
  {
    if ((v14 & 2) != 0 && (v14 & 4) != 0)
    {
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(v11 + 40, a4 + 24);
      result = (*((*(v11 + 64) & 0xFFFFFFFFFFFFFFF8) + 16))(a4 + 24);
    }

    else
    {
      v15 = *(a4 + 24);
      *(v11 + 56) = *(a4 + 40);
      *(v11 + 40) = v15;
    }

    *(a4 + 48) = 0;
  }

  *(v11 + 72) = *(a4 + 56);
  *(v11 + 80) = 1;
  return result;
}

uint64_t mlir::DialectResourceBlobManager::insert(pthread_rwlock_t **a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  llvm::sys::RWMutexImpl::lock(a1);
  v19[0] = a1;
  v19[1] = a4;
  v8 = mlir::DialectResourceBlobManager::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v19, a2, a3);
  if (!v8)
  {
    v20 = v22;
    v21 = xmmword_25736B040;
    if (a3 >= 0x21)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v9 = 0;
    if (a3)
    {
      memcpy(v20, a2, a3);
      v9 = v21;
    }

    v10 = &a3[v9];
    *&v21 = v10;
    if ((v10 + 1) > *(&v21 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v10[v20] = 95;
    *&v21 = v21 + 1;
    v11 = (a3 + 1);
    v12 = 1;
    while (1)
    {
      v16 = v12;
      v17 = &v16;
      v18 = 267;
      llvm::Twine::toVector(&v17, &v20);
      v8 = mlir::DialectResourceBlobManager::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v19, v20, v21);
      if (v8)
      {
        break;
      }

      if (v21 == v11)
      {
        ++v12;
      }

      else
      {
        if (v21 <= v11)
        {
          if (*(&v21 + 1) < v11)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v11 != v21)
          {
            bzero(v20 + v21, v11 - v21);
          }
        }

        *&v21 = v11;
        ++v12;
      }
    }

    if (v20 != v22)
    {
      v13 = v8;
      free(v20);
      v8 = v13;
    }
  }

  v14 = v8;
  llvm::sys::RWMutexImpl::unlock(a1);
  return v14;
}

uint64_t mlir::DialectResourceBlobManager::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v37 = 0;
  *v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  v8 = llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>((v6 + 16), a2, a3, v7, &v32);
  v10 = v9;
  if (v37 == 1 && v36 >= 8)
  {
    v11 = (v36 & 2) != 0 ? (&v34 + 8) : *(&v34 + 1);
    (*(v36 & 0xFFFFFFFFFFFFFFF8))(v11, v33, *(&v33 + 1), v34);
    v12 = v36;
    if (v36 >= 8)
    {
      if ((v36 & 4) != 0)
      {
        if ((v36 & 2) != 0)
        {
          v13 = &v34 + 8;
        }

        else
        {
          v13 = *(&v34 + 1);
        }

        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
      }

      if ((v12 & 2) == 0)
      {
        llvm::deallocate_buffer(*(&v34 + 1), v35[0]);
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v14 = *v8;
  v15 = *v8 + 96;
  v16 = **v8;
  v17 = a1[1];
  LOBYTE(v25) = 0;
  v31 = 0;
  if (*(v17 + 64) == 1)
  {
    v18 = *(v17 + 2);
    v25 = *v17;
    v19 = *(v17 + 6);
    v26 = v18;
    v29 = v19;
    if (v19 >= 8)
    {
      if ((v19 & 2) != 0 && (v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 8))(&v27, v17 + 24);
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v17 + 24);
      }

      else
      {
        v20 = *(v17 + 24);
        v28 = *(v17 + 5);
        v27 = v20;
      }

      *(v17 + 6) = 0;
    }

    v30 = *(v17 + 56);
    v31 = 1;
  }

  v14[1] = v15;
  v14[2] = v16;
  std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(v14 + 3, &v25);
  if (v31 == 1 && v29 >= 8)
  {
    v22 = (v29 & 2) != 0 ? &v27 : v27;
    (*(v29 & 0xFFFFFFFFFFFFFFF8))(v22, v25, *(&v25 + 1), v26);
    v23 = v29;
    if (v29 >= 8)
    {
      if ((v29 & 4) != 0)
      {
        if ((v29 & 2) != 0)
        {
          v24 = &v27;
        }

        else
        {
          v24 = v27;
        }

        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v24);
      }

      if ((v23 & 2) == 0)
      {
        llvm::deallocate_buffer(v27, *(&v27 + 1));
      }
    }
  }

  return *v8 + 8;
}

uint64_t *llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 97, 8uLL);
    v13 = buffer + 96;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v15 = v10[1];
      ++v10;
      v11 = v15;
    }

    return v10;
  }

  buffer = llvm::allocate_buffer(a3 + 97, 8uLL);
  v13 = buffer + 96;
  if (a3)
  {
LABEL_4:
    memcpy(v13, a2, a3);
  }

LABEL_5:
  *(v13 + a3) = 0;
  *buffer = a3;
  *(buffer + 8) = *a5;
  buffer[24] = 0;
  buffer[88] = 0;
  if (*(a5 + 80) == 1)
  {
    *(buffer + 24) = *(a5 + 16);
    *(buffer + 5) = *(a5 + 32);
    v14 = *(a5 + 64);
    *(buffer + 9) = v14;
    if (v14 >= 8)
    {
      if ((v14 & 2) != 0 && (v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(buffer + 48, a5 + 40);
        (*((*(buffer + 9) & 0xFFFFFFFFFFFFFFF8) + 16))(a5 + 40);
      }

      else
      {
        *(buffer + 3) = *(a5 + 40);
        *(buffer + 8) = *(a5 + 56);
      }

      *(a5 + 64) = 0;
    }

    buffer[80] = *(a5 + 72);
    buffer[88] = 1;
  }

  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v16 = *v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v10[1];
      ++v10;
      v17 = v18;
      if (v18)
      {
        v19 = v17 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v10;
}

void llvm::DominatorTreeBase<mlir::Block,false>::DominatorTreeBase(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(a1, a2);
  }

  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0x600000000;
  if (*(a2 + 32))
  {
    llvm::SmallVectorImpl<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>>::operator=(a1 + 24, a2 + 24);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  v4 = *(a1 + 100);
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = v4;
  v5 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  llvm::DominatorTreeBase<mlir::Block,false>::wipe();
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::wipe(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = *(result + 24) - 8;
    do
    {
      v5 = *(v4 + v3);
      *(v4 + v3) = 0;
      if (v5)
      {
        v6 = *(v5 + 24);
        if (v6 != (v5 + 40))
        {
          free(v6);
        }

        result = MEMORY[0x259C63180](v5, 0x10A0C40528A66C4);
      }

      v3 -= 8;
    }

    while (v3);
  }

  *(v1 + 32) = 0;
  v7 = *(v1 + 96);
  if (!v7 && !*(v1 + 100))
  {
    goto LABEL_13;
  }

  v8 = *(v1 + 104);
  if (v8 > 4 * v7 && v8 >= 0x41)
  {
    result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(v1 + 88);
LABEL_13:
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    return result;
  }

  if (v8)
  {
    v9 = *(v1 + 88);
    v10 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v13 = (v9 + 16 * v12);
      v14 = (v9 + 16);
      v15 = v12;
      do
      {
        *(v14 - 2) = -4096;
        *v14 = -4096;
        v14 += 4;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *(v1 + 88);
    }

    v16 = (v9 + 16 * v8);
    do
    {
      *v13 = -4096;
      v13 += 2;
    }

    while (v13 != v16);
  }

LABEL_23:
  *(v1 + 96) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  return result;
}

void llvm::DominatorTreeBase<mlir::Block,false>::operator=(uint64_t a1, const void **a2)
{
  llvm::SmallVectorImpl<unsigned long>::operator=(a1, a2);
  llvm::SmallVectorImpl<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>>::operator=(a1 + 24, (a2 + 3));
  llvm::deallocate_buffer(*(a1 + 88), (16 * *(a1 + 104)));
}

void sub_2570E893C()
{
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = *(v0 + 88);
  *(v0 + 88) = 0;
  *(v1 + 96) = *(v0 + 96);
  *(v0 + 96) = 0;
  v2 = *(v1 + 100);
  *(v1 + 100) = *(v0 + 100);
  *(v0 + 100) = v2;
  v3 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 104);
  *(v0 + 104) = v3;
  *(v1 + 112) = *(v0 + 112);
  *(v1 + 128) = *(v0 + 128);
  *(v1 + 132) = *(v0 + 132);
  llvm::DominatorTreeBase<mlir::Block,false>::wipe();
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::root_begin(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::root_end(uint64_t a1)
{
  return *a1 + 8 * *(a1 + 8);
}

{
  return *a1 + 8 * *(a1 + 8);
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::roots(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::compare(uint64_t *a1, uint64_t *a2)
{
  if (a1[15] != a2[15])
  {
    return 1;
  }

  v4 = *(a1 + 2);
  if (v4 != *(a2 + 2))
  {
    return 1;
  }

  if (v4)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *a1 + 8 * v4;
    v8 = *a2;
    v9 = 8 * v4;
    v10 = 8 * v4 - 8;
    v11 = 8 * v4 - 16;
    v12 = v10;
    while (*(v6 + v5) == *(v8 + v5))
    {
      v12 -= 8;
      v11 -= 8;
      v5 += 8;
      if (v9 == v5)
      {
        goto LABEL_8;
      }
    }

    if (v10 != v5)
    {
      v23 = v9 - v5;
      if (v9 != v5)
      {
        v24 = 0;
        v25 = v9 - v5;
        v26 = v9 - v5 - 16;
        v27 = v6 + v5 + 24;
        v28 = v25 - 8;
        v29 = (v8 + v5);
        v30 = v8 + v5 + 16;
        v31 = (v8 + v25 + v5);
        v32 = v23 - 8;
        v33 = v8 + v5 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 8) & 0xFFFFFFFFFFFFFFE0);
        v34 = ((v28 >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v35 = (v6 + v5);
        while (1)
        {
          v37 = *v35;
          if ((v6 + v5) == v35)
          {
            break;
          }

          v38 = 0;
          while (*(v6 + v38 + v5) != v37)
          {
            v38 += 8;
            if (v24 == v38)
            {
              goto LABEL_32;
            }
          }

LABEL_27:
          ++v35;
          v24 += 8;
          v27 += 8;
          v26 -= 8;
          if (v35 == v7)
          {
            goto LABEL_8;
          }
        }

LABEL_32:
        if (v32 > 0x17)
        {
          v41 = vdupq_n_s64(v37);
          v42 = 0uLL;
          v43 = v34;
          v44 = v30;
          v45 = 0uLL;
          do
          {
            v42 = vsubq_s64(v42, vceqq_s64(v41, v44[-1]));
            v45 = vsubq_s64(v45, vceqq_s64(v41, *v44));
            v44 += 2;
            v43 -= 4;
          }

          while (v43);
          v39 = vaddvq_s64(vaddq_s64(v45, v42));
          v40 = v33;
          if ((v32 >> 3) + 1 == (((v32 >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v39 = 0;
          v40 = v29;
        }

        do
        {
          v46 = *v40++;
          if (v37 == v46)
          {
            ++v39;
          }
        }

        while (v31 != v40);
LABEL_40:
        if (!v39)
        {
          return 1;
        }

        v47 = (v35 + 1);
        if (v35 + 1 == v7)
        {
          v36 = 1;
          goto LABEL_26;
        }

        if ((v11 - v24) > 0x17)
        {
          v48 = ((v26 >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL;
          v49 = ((v11 - v24) >> 3) + 1;
          v47 += v49 & 0x3FFFFFFFFFFFFFFCLL;
          v50 = vdupq_n_s64(v37);
          v51 = 0uLL;
          v52 = v27;
          v53 = xmmword_25736B7A0;
          do
          {
            v53 = vsubq_s64(v53, vceqq_s64(v50, v52[-1]));
            v51 = vsubq_s64(v51, vceqq_s64(v50, *v52));
            v52 += 2;
            v48 -= 4;
          }

          while (v48);
          v36 = vaddvq_s64(vaddq_s64(v51, v53));
          if (v49 == (v49 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v36 = 1;
        }

        do
        {
          v54 = *v47++;
          if (v37 == v54)
          {
            ++v36;
          }
        }

        while (v47 != v7);
LABEL_26:
        if (v36 != v39)
        {
          return 1;
        }

        goto LABEL_27;
      }
    }

    return 1;
  }

LABEL_8:
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = a1[3];
    v15 = &v14[v13];
    do
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = *(a2 + 26);
        if (v17)
        {
          v18 = a2[11];
          v19 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v17 - 1);
          v20 = *(v18 + 16 * v19);
          if (v20 == *v16)
          {
LABEL_15:
            if (v19 != v17 && *(a2 + 8) > *(v18 + 16 * v19 + 8))
            {
              llvm::DomTreeNodeBase<mlir::Block>::compare();
            }
          }

          else
          {
            v21 = 1;
            while (v20 != -4096)
            {
              v22 = v19 + v21++;
              v19 = v22 & (v17 - 1);
              v20 = *(v18 + 16 * v19);
              if (v20 == *v16)
              {
                goto LABEL_15;
              }
            }
          }
        }

        llvm::DomTreeNodeBase<mlir::Block>::compare();
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v55 = *(a2 + 8);
  if (v55)
  {
    v56 = a2[3];
    v57 = (v55 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v57 <= 2)
    {
      v58 = 0;
      v59 = a2[3];
      goto LABEL_59;
    }

    v60 = v57 + 1;
    v61 = (v57 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v59 = &v56->i64[v61];
    v62 = v56 + 1;
    v63 = 0uLL;
    v64 = v61;
    v65 = 0uLL;
    do
    {
      v63 = vsubq_s64(v63, vtstq_s64(v62[-1], v62[-1]));
      v65 = vsubq_s64(v65, vtstq_s64(*v62, *v62));
      v62 += 2;
      v64 -= 4;
    }

    while (v64);
    v58 = vaddvq_s64(vaddq_s64(v65, v63));
    if (v60 != v61)
    {
LABEL_59:
      v66 = &v56->i64[v55];
      do
      {
        if (*v59++)
        {
          ++v58;
        }
      }

      while (v59 != v66);
    }
  }

  else
  {
    v58 = 0;
  }

  return v58 != 0;
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 != v3)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 1;
  }

  v4 = v32;
  v28 = v32;
  v29 = v32;
  v30 = 4;
  v31 = 0;
  if (!v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a2 + 24);
  v8 = &v7[v3];
  v9 = 4;
  v10 = v32;
  do
  {
    v11 = **v7;
    if (v10 != v4)
    {
      goto LABEL_5;
    }

    if (!v6)
    {
LABEL_13:
      if (v6 >= v9)
      {
LABEL_5:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v28, v11);
      }

      else
      {
        HIDWORD(v30) = v6 + 1;
        v4[v6] = v11;
      }

      v4 = v28;
      goto LABEL_7;
    }

    v12 = 0;
    while (v4[v12] != v11)
    {
      if (v6 == ++v12)
      {
        goto LABEL_13;
      }
    }

LABEL_7:
    v10 = v29;
    v9 = v30;
    v6 = HIDWORD(v30);
    ++v7;
  }

  while (v7 != v8);
  v15 = *(a1 + 32);
  if (!v15)
  {
    v13 = 0;
    goto LABEL_50;
  }

  v16 = *(a1 + 24);
  v17 = &v16[v15];
  if (v29 == v4)
  {
    if (HIDWORD(v30))
    {
      v18 = (v29 + 8 * HIDWORD(v30));
      do
      {
        v19 = 8 * HIDWORD(v30);
        v20 = v4;
        while (*v20 != **v16)
        {
          ++v20;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_52;
          }
        }

        v13 = v20 == v18;
        if (v20 == v18)
        {
          break;
        }

        ++v16;
      }

      while (v16 != v17);
      goto LABEL_50;
    }

LABEL_52:
    v13 = 1;
    if (v29 == v4)
    {
      return v13;
    }
  }

  else
  {
    do
    {
      v25 = **v16;
      if (v10 == v4)
      {
        if (v6)
        {
          v27 = 8 * v6;
          v21 = v4;
          while (*v21 != v25)
          {
            ++v21;
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
LABEL_29:
          v21 = &v10[v6];
        }
      }

      else
      {
        v21 = llvm::SmallPtrSetImplBase::doFind(&v28, v25);
        v4 = v28;
        v10 = v29;
        v9 = v30;
        v6 = HIDWORD(v30);
        if (!v21)
        {
          if (v29 == v28)
          {
            v26 = HIDWORD(v30);
          }

          else
          {
            v26 = v30;
          }

          v21 = (v29 + 8 * v26);
        }
      }

      if (v10 == v4)
      {
        v22 = v6;
      }

      else
      {
        v22 = v9;
      }

      v23 = &v10[v22];
      v13 = v21 == v23;
      ++v16;
    }

    while (v21 != v23 && v16 != v17);
LABEL_50:
    if (v10 == v4)
    {
      return v13;
    }
  }

  free(v10);
  return v13;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getNode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = *(v3 + 16 * v4 + 8);
        if (*(a1 + 32) > v6)
        {
          return *(*(a1 + 24) + 8 * v6);
        }
      }
    }

    else
    {
      v8 = 1;
      while (v5 != -4096)
      {
        v9 = v4 + v8++;
        v4 = v9 & (v2 - 1);
        v5 = *(v3 + 16 * v4);
        if (v5 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 88);
  v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != a2)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8) | 0x100000000;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndexForInsert(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v13 = *(a1 + 32);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(a1 + 88, &v15, &v13, v14);
  v3 = *(v14[0] + 8);
  v4 = *(a1 + 32);
  v5 = (v3 + 1);
  if (v4 <= v3 && v4 != v5)
  {
    if (v4 <= v5)
    {
      if (*(a1 + 36) < v5)
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,false>::grow();
      }

      if (v5 != v4)
      {
        bzero((*(a1 + 24) + 8 * v4), 8 * (v5 - v4));
      }
    }

    else
    {
      v7 = 8 * v4;
      v8 = 8 * v5 - v7;
      v9 = (v7 + *(a1 + 24) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11 != (v10 + 40))
          {
            free(v11);
          }

          MEMORY[0x259C63180](v10, 0x10A0C40528A66C4);
        }

        --v9;
        v8 += 8;
      }

      while (v8);
    }

    *(a1 + 32) = v5;
  }

  return v3;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = *(v3 + 16 * v4 + 8);
        if (*(a1 + 32) > v6)
        {
          return *(*(a1 + 24) + 8 * v6);
        }
      }
    }

    else
    {
      v8 = 1;
      while (v5 != -4096)
      {
        v9 = v4 + v8++;
        v4 = v9 & (v2 - 1);
        v5 = *(v3 + 16 * v4);
        if (v5 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getRootNode(uint64_t a1)
{
  return *(a1 + 112);
}

{
  return *(a1 + 112);
}

void llvm::DominatorTreeBase<mlir::Block,false>::getDescendants(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[8] = *MEMORY[0x277D85DE8];
  *(a3 + 8) = 0;
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = *(a1 + 88);
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v3)
      {
        v7 = *(v4 + 16 * v5 + 8);
        if (*(a1 + 32) > v7)
        {
          v8 = *(*(a1 + 24) + 8 * v7);
          if (v8)
          {
            v28 = 8;
            v29[0] = v8;
            v9 = 1;
            do
            {
              v10 = v29[v9 - 1];
              v27 = v9 - 1;
              v11 = *(a3 + 8);
              if (v11 >= *(a3 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*a3 + 8 * v11) = *v10;
              ++*(a3 + 8);
              v12 = *(v10 + 24);
              v13 = *(v10 + 32);
              v14 = v27;
              if (v27 + v13 > v28)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (!v13)
              {
                goto LABEL_7;
              }

              v15 = &v29[v27];
              v16 = (v13 - 1) & 0x1FFFFFFFFFFFFFFFLL;
              if (v16 >= 3)
              {
                v17 = v12;
                if (&v29[v27] - v12 >= 0x20)
                {
                  v18 = v16 + 1;
                  v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
                  v15 = (v15 + v19);
                  v17 = (v12 + v19);
                  v20 = (v12 + 16);
                  v21 = &v29[v27 + 2];
                  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v23 = *v20;
                    *(v21 - 1) = *(v20 - 1);
                    *v21 = v23;
                    v20 += 2;
                    v21 += 2;
                    v22 -= 4;
                  }

                  while (v22);
                  if (v18 == (v18 & 0x3FFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_7;
                  }
                }
              }

              else
              {
                v17 = v12;
              }

              do
              {
                v24 = *v17++;
                *v15++ = v24;
              }

              while (v17 != (v12 + 8 * v13));
LABEL_7:
              v9 = v14 + v13;
              v27 = v9;
            }

            while (v9);
          }
        }
      }
    }

    else
    {
      v25 = 1;
      while (v6 != -4096)
      {
        v26 = v5 + v25++;
        v5 = v26 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::begin(uint64_t a1)
{
  return *(a1 + 24);
}

{
  return *(a1 + 24);
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::end(uint64_t a1)
{
  return *(a1 + 24) + 8 * *(a1 + 32);
}

{
  return *(a1 + 24) + 8 * *(a1 + 32);
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 != a3 && a2 && a3)
  {
    if (*(a3 + 8) == a2)
    {
      return 1;
    }

    else
    {
      if (*(a2 + 8) == a3)
      {
        return 0;
      }

      v5 = *(a2 + 16);
      if (v5 >= *(a3 + 16))
      {
        return 0;
      }

      if (*(a1 + 128) == 1)
      {
        if (*(a3 + 72) < *(a2 + 72))
        {
          return 0;
        }

        return *(a3 + 76) <= *(a2 + 76);
      }

      else
      {
        v6 = *(a1 + 132) + 1;
        *(a1 + 132) = v6;
        if (v6 > 0x20)
        {
          llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers();
        }

        do
        {
          v7 = a3;
          a3 = *(a3 + 8);
        }

        while (a3 && *(a3 + 16) >= v5);
        return v7 == a2;
      }
    }
  }

  return result;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a3 == a2 || !a3)
  {
    return v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a3 + 8) == a2)
  {
    return 1;
  }

  if (*(a2 + 8) == a3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 >= *(a3 + 16))
  {
    return 0;
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a3 + 72) < *(a2 + 72))
    {
      return 0;
    }

    return *(a3 + 76) <= *(a2 + 76);
  }

  v6 = *(a1 + 132) + 1;
  *(a1 + 132) = v6;
  if (v6 > 0x20)
  {
    llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers();
  }

  do
  {
    v7 = a3;
    a3 = *(a3 + 8);
  }

  while (a3 && *(a3 + 16) >= v4);
  return v7 == a2;
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_4:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(a1 + 32) > v8)
      {
        v9 = *(*(a1 + 24) + 8 * v8);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = 0;
LABEL_14:
  v13 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v14 = *(v4 + 16 * v13);
  if (v14 != a3)
  {
    v21 = 1;
    while (v14 != -4096)
    {
      v22 = v13 + v21++;
      v13 = v22 & v5;
      v14 = *(v4 + 16 * v13);
      if (v14 == a3)
      {
        goto LABEL_15;
      }
    }

    return 1;
  }

LABEL_15:
  if (v13 == v3)
  {
    return 1;
  }

  v15 = *(v4 + 16 * v13 + 8);
  if (*(a1 + 32) <= v15)
  {
    return 1;
  }

  v16 = *(*(a1 + 24) + 8 * v15);
  if (v16 == v9 || v16 == 0)
  {
    return 1;
  }

  if (!v9)
  {
    return 0;
  }

  if (*(v16 + 8) == v9)
  {
    return 1;
  }

  if (*(v9 + 8) == v16)
  {
    return 0;
  }

  v18 = *(v9 + 16);
  if (v18 >= *(v16 + 16))
  {
    return 0;
  }

  if (*(a1 + 128) == 1)
  {
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  else
  {
    v19 = *(a1 + 132) + 1;
    *(a1 + 132) = v19;
    if (v19 > 0x20)
    {
      llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers();
    }

    do
    {
      v20 = v16;
      v16 = *(v16 + 8);
    }

    while (v16 && *(v16 + 16) >= v18);
    return v20 == v9;
  }
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::isReachableFromEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = *(v3 + 16 * v4 + 8);
        if (*(a1 + 32) > v6)
        {
          return *(*(a1 + 24) + 8 * v6) != 0;
        }
      }
    }

    else
    {
      v8 = 1;
      while (v5 != -4096)
      {
        v9 = v4 + v8++;
        v4 = v9 & (v2 - 1);
        v5 = *(v3 + 16 * v4);
        if (v5 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return 0;
}

{
  return a2 != 0;
}

void llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(uint64_t a1)
{
  v17[64] = *MEMORY[0x277D85DE8];
  if (*(a1 + 128) == 1)
  {
    *(a1 + 132) = 0;
  }

  else
  {
    v14 = v17;
    v16 = 32;
    v1 = *(a1 + 112);
    if (v1)
    {
      v2 = *(v1 + 24);
      v17[0] = *(a1 + 112);
      v17[1] = v2;
      v3 = 1;
      v15 = 1;
      *(v1 + 72) = 0;
      v4 = 1;
      do
      {
        while (1)
        {
          v5 = v14;
          v6 = v4;
          v7 = v14 + 16 * v4;
          v9 = *(v7 - 2);
          v8 = *(v7 - 1);
          if (v8 != (*(v9 + 24) + 8 * *(v9 + 32)))
          {
            break;
          }

          *(v9 + 76) = v3;
          v4 = v6 - 1;
          v15 = v6 - 1;
          ++v3;
          if (v6 == 1)
          {
            goto LABEL_11;
          }
        }

        v10 = *v8;
        *(v7 - 1) = v8 + 1;
        v11 = *(v10 + 24);
        if (v6 >= v16)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = &v5[16 * v6];
        *v12 = v10;
        *(v12 + 1) = v11;
        v4 = ++v15;
        *(v10 + 72) = v3++;
      }

      while (v4);
LABEL_11:
      v13 = v14;
      *(a1 + 132) = 0;
      *(a1 + 128) = 1;
      if (v13 != v17)
      {
        free(v13);
      }
    }
  }
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::dominatedBySlowTreeWalk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v3 = a3;
    a3 = *(a3 + 8);
  }

  while (a3 && *(a3 + 16) >= *(a2 + 16));
  return v3 == a2;
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_4:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(a1 + 32) > v8)
      {
        v9 = *(*(a1 + 24) + 8 * v8);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = 0;
LABEL_13:
  v13 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v14 = *(v4 + 16 * v13);
  if (v14 != a3)
  {
    v21 = 1;
    while (v14 != -4096)
    {
      v22 = v13 + v21++;
      v13 = v22 & v5;
      v14 = *(v4 + 16 * v13);
      if (v14 == a3)
      {
        goto LABEL_14;
      }
    }

    return 1;
  }

LABEL_14:
  if (v13 == v3)
  {
    return 1;
  }

  v15 = *(v4 + 16 * v13 + 8);
  if (*(a1 + 32) <= v15)
  {
    return 1;
  }

  v16 = *(*(a1 + 24) + 8 * v15);
  if (v16 == v9 || v16 == 0)
  {
    return 1;
  }

  if (!v9)
  {
    return 0;
  }

  if (*(v16 + 8) == v9)
  {
    return 1;
  }

  if (*(v9 + 8) == v16)
  {
    return 0;
  }

  v18 = *(v9 + 16);
  if (v18 >= *(v16 + 16))
  {
    return 0;
  }

  if (*(a1 + 128) == 1)
  {
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  else
  {
    v19 = *(a1 + 132) + 1;
    *(a1 + 132) = v19;
    if (v19 > 0x20)
    {
      llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers();
    }

    do
    {
      v20 = v16;
      v16 = *(v16 + 8);
    }

    while (v16 && *(v16 + 16) >= v18);
    return v20 == v9;
  }
}

mlir::Block *llvm::DominatorTreeBase<mlir::Block,false>::findNearestCommonDominator(uint64_t a1, mlir::Block *this, mlir::Block *a3)
{
  v6 = *(mlir::Block::getParent(this) + 8);
  if (v6)
  {
    result = (v6 - 8);
  }

  else
  {
    result = 0;
  }

  if (result == this || result == a3)
  {
    return result;
  }

  v9 = *(a1 + 88);
  v10 = *(a1 + 104);
  v11 = v10 - 1;
  v12 = (v10 - 1) & ((this >> 4) ^ (this >> 9));
  v13 = *(v9 + 16 * v12);
  if (v13 != this)
  {
    v16 = 1;
    while (v13 != -4096)
    {
      v17 = v12 + v16++;
      v12 = v17 & v11;
      v13 = *(v9 + 16 * v12);
      if (v13 == this)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  if (v12 == v10 || (v14 = *(v9 + 16 * v12 + 8), *(a1 + 32) <= v14))
  {
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v15 = *(*(a1 + 24) + 8 * v14);
LABEL_17:
  v18 = v11 & ((a3 >> 4) ^ (a3 >> 9));
  v19 = *(v9 + 16 * v18);
  if (v19 == a3)
  {
LABEL_18:
    if (v18 == v10)
    {
      v20 = 0;
    }

    else
    {
      v21 = *(v9 + 16 * v18 + 8);
      if (*(a1 + 32) <= v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(*(a1 + 24) + 8 * v21);
      }
    }
  }

  else
  {
    v22 = 1;
    while (v19 != -4096)
    {
      v23 = v18 + v22++;
      v18 = v23 & v11;
      v19 = *(v9 + 16 * v18);
      if (v19 == a3)
      {
        goto LABEL_18;
      }
    }

    v20 = 0;
  }

  while (v15 != v20)
  {
    v24 = v15[4];
    v25 = v20[4];
    v26 = v24 >= v25;
    if (v24 >= v25)
    {
      v27 = v15;
    }

    else
    {
      v27 = v20;
    }

    if (!v26)
    {
      v20 = v15;
    }

    v15 = *(v27 + 1);
  }

  return *v15;
}

int *llvm::DominatorTreeBase<mlir::Block,false>::applyUpdates(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::GraphDiff<mlir::Block *,false>::GraphDiff(v5, a2, a3, 1u);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ApplyUpdates(a1, v5, 0);
  return llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v5);
}

void llvm::DominatorTreeBase<mlir::Block,false>::applyUpdates(uint64_t a1, const void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = v12;
    v11 = 0x300000000;
    v8 = 16 * a3;
    if (((16 * a3) >> 4) >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v12, a2, v8);
    LODWORD(v11) = v11 + (v8 >> 4);
    llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>>::insert<llvm::cfg::Update<mlir::Block *> const*,void>(&v10, v10 + 16 * v11, a4, &a4[16 * a5]);
    llvm::GraphDiff<mlir::Block *,false>::GraphDiff(v13, v10, v11, 1u);
    llvm::GraphDiff<mlir::Block *,false>::GraphDiff(v9, a4, a5, 0);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ApplyUpdates(a1, v13, v9);
    llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v9);
    llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v13);
    if (v10 != v12)
    {
      free(v10);
    }
  }

  else
  {
    llvm::GraphDiff<mlir::Block *,false>::GraphDiff(v13, a4, a5, 0);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ApplyUpdates(a1, v13, v13);
    llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v13);
  }
}