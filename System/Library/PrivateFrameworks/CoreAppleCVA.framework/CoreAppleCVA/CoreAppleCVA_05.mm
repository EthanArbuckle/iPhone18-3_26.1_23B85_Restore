void cva::VecLibSparse<double>::solve(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v3;
    v28 = *(a1 + 96);
    v4 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v4;
    v5 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v5;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      _SparseGetOptionsFromSymbolicFactor(&v30, &Factored.symbolicFactorization);
      reportError = v30.reportError;
      if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
      {
        v15 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) > v15)
        {
          v15 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if (v15 == v12)
        {
          v30.control = v12;
          *&v30.orderMethod = 1;
          v30.ignoreRowsAndColumns = v13;
          v30.order = v12;
          _SparseSolveOpaque_Double(&Factored, 0, &v30, a3);
          goto LABEL_8;
        }

        if (v30.reportError)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          memset(&v30, 0, sizeof(v30));
          snprintf(&v30, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
          goto LABEL_34;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v30.control = 136315650;
          *&v30.orderMethod = "xb";
          WORD2(v30.order) = 1024;
          *(&v30.order + 6) = v12;
          WORD1(v30.ignoreRowsAndColumns) = 2080;
          *(&v30.ignoreRowsAndColumns + 4) = "Factored";
          v26 = MEMORY[0x277D86220];
LABEL_51:
          _os_log_error_impl(&dword_245028000, v26, OS_LOG_TYPE_ERROR, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n", &v30, 0x1Cu);
          goto LABEL_7;
        }

        goto LABEL_7;
      }

      if (v30.reportError)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        memset(&v30, 0, sizeof(v30));
        snprintf(&v30, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_34:
        (reportError)(&v30);
        goto LABEL_8;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v30.control = 136315138;
      *&v30.orderMethod = "Factored";
      v24 = MEMORY[0x277D86220];
      v25 = "%s does not hold a completed matrix factorization.\n";
LABEL_43:
      _os_log_error_impl(&dword_245028000, v24, OS_LOG_TYPE_ERROR, v25, &v30, 0xCu);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v30.control) = 0;
    v6 = MEMORY[0x277D86220];
LABEL_40:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v30, 2u);
    goto LABEL_7;
  }

  v7 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v7;
  v28 = *(a1 + 96);
  v8 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v8;
  v9 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v9;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v30.control) = 0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_40;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  _SparseGetOptionsFromSymbolicFactor(&v30, &Factored.symbolicFactorization);
  v18 = v30.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v30.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v30.control = 136315138;
      *&v30.orderMethod = "Factored";
      v24 = MEMORY[0x277D86220];
      v25 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_43;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    snprintf(&v30, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_48:
    (v18)(&v30);
    goto LABEL_8;
  }

  v19 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) > v19)
  {
    v19 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (v19 == v16)
  {
    free = v30.free;
    Soln.rowCount = v16;
    Soln.columnCount = 1;
    *&Soln.attributes = 0;
    Soln.data = v17;
    Soln.columnStride = v16;
    v21 = v28 + Factored.solveWorkspaceRequiredPerRHS;
    v22 = (v30.malloc)(v28 + Factored.solveWorkspaceRequiredPerRHS);
    if (v22)
    {
      v23 = v22;
      _SparseSolveOpaque_Double(&Factored, 0, &Soln, v22);
      (free)(v23);
      goto LABEL_8;
    }

    if (!v18)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v30.control = 134217984;
      *&v30.orderMethod = v21;
      v24 = MEMORY[0x277D86220];
      v25 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
      goto LABEL_43;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    snprintf(&v30, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
    goto LABEL_48;
  }

  if (v30.reportError)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    snprintf(&v30, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v30.control = 136315650;
    *&v30.orderMethod = "xb";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v16;
    WORD1(v30.ignoreRowsAndColumns) = 2080;
    *(&v30.ignoreRowsAndColumns + 4) = "Factored";
    v26 = MEMORY[0x277D86220];
    goto LABEL_51;
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::solve(uint64_t a1, DenseMatrix_Double *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v3;
    v30 = *(a1 + 96);
    v4 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v4;
    v5 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v5;
    Soln = *a2;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float)
    {
      _SparseGetOptionsFromSymbolicFactor(&v31, &Factored.symbolicFactorization);
      reportError = v31.reportError;
      if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
      {
        if (Soln.columnStride < Soln.rowCount)
        {
          if (v31.reportError)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            memset(&v31, 0, sizeof(v31));
            snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
            (reportError)(&v31);
            goto LABEL_8;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_70;
          }

          goto LABEL_7;
        }

        if (*&Soln.attributes)
        {
          columnCount = Soln.columnCount;
        }

        else
        {
          columnCount = Soln.rowCount;
        }

        if (*&Soln.attributes)
        {
          rowCount = Soln.rowCount;
        }

        else
        {
          rowCount = Soln.columnCount;
        }

        if (rowCount > 0)
        {
          if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) <= Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization))
          {
            v16 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
          }

          else
          {
            v16 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
          }

          if (columnCount == v16)
          {
            _SparseSolveOpaque_Double(&Factored, 0, &Soln, a3);
            goto LABEL_8;
          }

          if (v31.reportError)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            memset(&v31, 0, sizeof(v31));
            snprintf(&v31, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
            goto LABEL_27;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v31.control = 136316162;
          *&v31.orderMethod = "XB";
          WORD2(v31.order) = 1024;
          *(&v31.order + 6) = columnCount;
          WORD1(v31.ignoreRowsAndColumns) = 1024;
          HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
          LOWORD(v31.malloc) = 2080;
          *(&v31.malloc + 2) = "Factored";
          WORD1(v31.free) = 1024;
          HIDWORD(v31.free) = v16;
          v27 = MEMORY[0x277D86220];
LABEL_86:
          _os_log_error_impl(&dword_245028000, v27, OS_LOG_TYPE_ERROR, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n", &v31, 0x28u);
          goto LABEL_7;
        }

        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v31.control = 136315650;
        *&v31.orderMethod = "XB";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = columnCount;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        v26 = MEMORY[0x277D86220];
LABEL_81:
        _os_log_error_impl(&dword_245028000, v26, OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v31, 0x18u);
        goto LABEL_7;
      }

      if (v31.reportError)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v31.control = 136315138;
      *&v31.orderMethod = "Factored";
      v17 = MEMORY[0x277D86220];
      v18 = "%s does not hold a completed matrix factorization.\n";
LABEL_62:
      _os_log_error_impl(&dword_245028000, v17, OS_LOG_TYPE_ERROR, v18, &v31, 0xCu);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v31.control) = 0;
    v6 = MEMORY[0x277D86220];
LABEL_59:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v31, 2u);
    goto LABEL_7;
  }

  v7 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v7;
  v30 = *(a1 + 96);
  v8 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v8;
  v9 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v9;
  Soln = *a2;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v31.control) = 0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_59;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, &Factored.symbolicFactorization);
  v13 = v31.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v31.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v31.control = 136315138;
      *&v31.orderMethod = "Factored";
      v17 = MEMORY[0x277D86220];
      v18 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_62;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(&v31, 0, sizeof(v31));
    snprintf(&v31, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_30:
    (v13)(&v31);
    goto LABEL_8;
  }

  if (Soln.columnStride >= Soln.rowCount)
  {
    if (*&Soln.attributes)
    {
      v19 = Soln.columnCount;
    }

    else
    {
      v19 = Soln.rowCount;
    }

    if (*&Soln.attributes)
    {
      v20 = Soln.rowCount;
    }

    else
    {
      v20 = Soln.columnCount;
    }

    if (v20 <= 0)
    {
      if (!v31.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v31.control = 136315650;
        *&v31.orderMethod = "XB";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v19;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = v20;
        v26 = MEMORY[0x277D86220];
        goto LABEL_81;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      memset(&v31, 0, sizeof(v31));
      snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
    }

    else
    {
      if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) <= Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization))
      {
        v21 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v21 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if (v19 == v21)
      {
        free = v31.free;
        v23 = Factored.solveWorkspaceRequiredPerRHS + v30 * v20;
        v24 = (v31.malloc)(v23);
        if (v24)
        {
          v25 = v24;
          _SparseSolveOpaque_Double(&Factored, 0, &Soln, v24);
          (free)(v25);
          goto LABEL_8;
        }

        if (!v13)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v31.control = 134217984;
          *&v31.orderMethod = v23;
          v17 = MEMORY[0x277D86220];
          v18 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
          goto LABEL_62;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      }

      else
      {
        if (!v31.reportError)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v31.control = 136316162;
          *&v31.orderMethod = "XB";
          WORD2(v31.order) = 1024;
          *(&v31.order + 6) = v19;
          WORD1(v31.ignoreRowsAndColumns) = 1024;
          HIDWORD(v31.ignoreRowsAndColumns) = v20;
          LOWORD(v31.malloc) = 2080;
          *(&v31.malloc + 2) = "Factored";
          WORD1(v31.free) = 1024;
          HIDWORD(v31.free) = v21;
          v27 = MEMORY[0x277D86220];
          goto LABEL_86;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      }
    }

    goto LABEL_30;
  }

  if (v31.reportError)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(&v31, 0, sizeof(v31));
    snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_70:
    v31.control = 136315906;
    *&v31.orderMethod = "XB";
    WORD2(v31.order) = 1024;
    *(&v31.order + 6) = Soln.columnStride;
    WORD1(v31.ignoreRowsAndColumns) = 2080;
    *(&v31.ignoreRowsAndColumns + 4) = "XB";
    WORD2(v31.malloc) = 1024;
    *(&v31.malloc + 6) = Soln.rowCount;
    _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v31, 0x22u);
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::subfactor(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  *&v24.symbolicFactorization.workspaceSize_Float = *(a2 + 32);
  *&v24.symbolicFactorization.factorSize_Float = v4;
  v5 = *(a2 + 80);
  *&v24.userFactorStorage = *(a2 + 64);
  *&v24.solveWorkspaceRequiredStatic = v5;
  v25 = *(a2 + 96);
  v6 = *(a2 + 16);
  *&v24.status = *a2;
  *&v24.symbolicFactorization.columnCount = v6;
  if (v24.symbolicFactorization.status || !v24.symbolicFactorization.workspaceSize_Float || v24.status || !v24.solveWorkspaceRequiredStatic)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Bad factor.\n";
      goto LABEL_51;
    }

LABEL_15:
    _SparseTrap();
LABEL_48:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 8) = -3;
    *(a3 + 16) = -3;
    goto LABEL_49;
  }

  _SparseGetOptionsFromSymbolicFactor(v28, &v24.symbolicFactorization);
  v8 = *&v28[40];
  if (a1 > 5)
  {
    if ((a1 - 7) < 2)
    {
      if ((BYTE1(v24.symbolicFactorization.factorization) & 0xFE) != 0x28)
      {
        if (!*&v28[40])
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          *v28 = 0;
          v9 = MEMORY[0x277D86220];
          v10 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
          goto LABEL_51;
        }

        memset(&v28[66], 0, 190);
        strcpy(&v28[64], "\n");
        v20 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
        goto LABEL_46;
      }

      v13 = 4;
      goto LABEL_39;
    }

    if ((a1 - 9) < 2)
    {
      if (BYTE1(v24.symbolicFactorization.factorization) - 81 < 3)
      {
        goto LABEL_38;
      }

      if (!*&v28[40])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v28 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "Subfactor Type only valid for LU factorization.\n";
        goto LABEL_51;
      }

      memset(&v28[48], 0, 208);
      v11 = "Subfactor Type only valid for LU factorization.\n";
      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v14 = BYTE1(v24.symbolicFactorization.factorization) - 40;
      if (v14 <= 0x2B && ((1 << v14) & 0xE0000000001) != 0)
      {
        goto LABEL_38;
      }

      if (!*&v28[40])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v28 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "SparseSubfactorQ only valid for QR or LU factorizations.\n";
        goto LABEL_51;
      }

      memset(&v28[58], 0, 198);
      strcpy(v28, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
      goto LABEL_47;
    }

LABEL_42:
    if (!*&v28[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Invalid subfactor type.";
      goto LABEL_51;
    }

    memset(&v28[24], 0, 232);
    strcpy(v28, "Invalid subfactor type.");
    goto LABEL_47;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      goto LABEL_38;
    }

    if (a1 == 2)
    {
      if (BYTE1(v24.symbolicFactorization.factorization) - 2 < 3)
      {
        goto LABEL_38;
      }

      if (!*&v28[40])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v28 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "Subfactor Type only valid for LDL^T factorization.\n";
        goto LABEL_51;
      }

      memset(&v28[52], 0, 204);
      strcpy(&v28[48], "n.\n");
      v11 = "Subfactor Type only valid for LDL^T factorization.\n";
LABEL_26:
      v12 = *(v11 + 1);
      *v28 = *v11;
      *&v28[16] = v12;
      *&v28[32] = *(v11 + 2);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (BYTE1(v24.symbolicFactorization.factorization) >= 5u || ((0x1Du >> SBYTE1(v24.symbolicFactorization.factorization)) & 1) == 0)
      {
        if (!*&v28[40])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *v28 = 0;
            v9 = MEMORY[0x277D86220];
            v10 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
LABEL_51:
            _os_log_error_impl(&dword_245028000, v9, OS_LOG_TYPE_ERROR, v10, v28, 2u);
            goto LABEL_15;
          }

          goto LABEL_15;
        }

        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if (BYTE1(v24.symbolicFactorization.factorization) - 2 < 3)
    {
LABEL_38:
      v13 = 2;
      goto LABEL_39;
    }

    if (!*&v28[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Subfactor Type only valid for LDL^T factorizations.\n";
      goto LABEL_51;
    }

    memset(&v28[53], 0, 203);
    strcpy(v28, "Subfactor Type only valid for LDL^T factorizations.\n");
LABEL_47:
    v8(v28);
    goto LABEL_48;
  }

  if (BYTE1(v24.symbolicFactorization.factorization) >= 5u || ((0x1Du >> SBYTE1(v24.symbolicFactorization.factorization)) & 1) == 0)
  {
    if (!*&v28[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
      goto LABEL_51;
    }

LABEL_45:
    memset(&v28[66], 0, 190);
    strcpy(&v28[64], "\n");
    v20 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
LABEL_46:
    v21 = *(v20 + 1);
    *v28 = *v20;
    *&v28[16] = v21;
    v22 = *(v20 + 3);
    *&v28[32] = *(v20 + 2);
    *&v28[48] = v22;
    goto LABEL_47;
  }

  v13 = 6;
LABEL_39:
  _SparseRetainNumeric_Double(&v24);
  workPerRHS = 0;
  workStatic = 0;
  *v28 = v24;
  *&v28[96] = v25;
  _SparseGetWorkspaceRequired_Double(a1, v28, &workStatic, &workPerRHS);
  v15 = *&v24.symbolicFactorization.workspaceSize_Float;
  *(a3 + 56) = *&v24.symbolicFactorization.factorSize_Float;
  v16 = *&v24.solveWorkspaceRequiredStatic;
  *(a3 + 72) = *&v24.userFactorStorage;
  *(a3 + 88) = v16;
  v17 = *&v24.symbolicFactorization.columnCount;
  *(a3 + 8) = *&v24.status;
  *(a3 + 24) = v17;
  *a3 = v13;
  *(a3 + 2) = 0;
  *(a3 + 4) = a1;
  v18 = v25;
  *(a3 + 40) = v15;
  v19 = workStatic;
  *(a3 + 104) = v18;
  *(a3 + 112) = v19;
  *(a3 + 120) = workPerRHS;
LABEL_49:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::solve(_OWORD *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a1[5];
  v14[4] = a1[4];
  v14[5] = v4;
  v5 = a1[7];
  v14[6] = a1[6];
  v14[7] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[3];
  v14[2] = a1[2];
  v14[3] = v7;
  v8 = *(a3 + 8);
  v9 = *a2;
  v10 = *(a2 + 8);
  v12[0] = *a3;
  v12[1] = 1;
  v12[2] = v12[0];
  v12[3] = 0;
  v13 = v8;
  v11.rowCount = v9;
  v11.columnCount = 1;
  v11.columnStride = v9;
  *&v11.attributes = 0;
  v11.data = v10;
  if (a4)
  {
    sub_2450712B8(v14, v12, &v11, a4);
  }

  else
  {
    sub_24507191C(v14, v12, &v11);
  }
}

void sub_2450712B8(const SparseOpaqueSubfactor_Double *a1, uint64_t a2, const DenseMatrix_Double *a3, char *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factor subobject.\n", &v36, 2u);
    }

    goto LABEL_65;
  }

  _SparseGetOptionsFromSymbolicFactor(&v36, &a1->factor.symbolicFactorization);
  reportError = v36.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a2 + 8);
  v19 = *a2;
  if (v18 < *a2)
  {
    if (v36.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "B";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v18;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "B";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = v19;
      v23 = MEMORY[0x277D86220];
LABEL_48:
      _os_log_error_impl(&dword_245028000, v23, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v36, 0x22u);
      goto LABEL_65;
    }

    goto LABEL_65;
  }

  columnStride = a3->columnStride;
  rowCount = a3->rowCount;
  if (columnStride >= a3->rowCount)
  {
    if (*(a2 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
      v19 = *(a2 + 4);
    }

    if (*&a3->attributes)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v25 = *(&a3->rowCount + v24);
    v26 = *(a2 + v22);
    if (*&a3->attributes)
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(&a3->rowCount + v27);
    if (v19 == v25)
    {
      if (v19 <= 0)
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          snprintf(&v36, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        v33 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v36.control = 136315650;
          *&v36.orderMethod = "B";
          WORD2(v36.order) = 1024;
          *(&v36.order + 6) = v33;
          WORD1(v36.ignoreRowsAndColumns) = 1024;
          HIDWORD(v36.ignoreRowsAndColumns) = v19;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v36, 0x18u);
        }

        goto LABEL_65;
      }

      if (v26 == v17)
      {
        if (v28 == v16)
        {
          _SparseSolveSubfactor_Double(a1, a2, a3, a4);
          goto LABEL_66;
        }

        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "X";
          goto LABEL_57;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "X";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v28;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "B";
LABEL_57:
          snprintf(&v36, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v32);
          goto LABEL_27;
        }

        v34 = v26;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "B";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v34;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v36.reportError)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        memset(&v36, 0, sizeof(v36));
        snprintf(&v36, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_27;
      }

      v29 = v26;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v36.control = 136316418;
      *&v36.orderMethod = "B";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v29;
      WORD1(v36.ignoreRowsAndColumns) = 1024;
      HIDWORD(v36.ignoreRowsAndColumns) = v19;
      LOWORD(v36.malloc) = 2080;
      *(&v36.malloc + 2) = "X";
      WORD1(v36.free) = 1024;
      HIDWORD(v36.free) = v28;
      LOWORD(v36.reportError) = 1024;
      *(&v36.reportError + 2) = v25;
      v30 = MEMORY[0x277D86220];
      v31 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v30, OS_LOG_TYPE_ERROR, v31, &v36, 0x2Eu);
    goto LABEL_65;
  }

  if (!v36.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "X";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = columnStride;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "X";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = rowCount;
      v23 = MEMORY[0x277D86220];
      goto LABEL_48;
    }

LABEL_65:
    _SparseTrap();
    goto LABEL_66;
  }

LABEL_26:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  memset(&v36, 0, sizeof(v36));
  snprintf(&v36, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v36);
LABEL_66:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_24507191C(const SparseOpaqueSubfactor_Double *a1, uint64_t a2, const DenseMatrix_Double *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factorization.\n", &v35, 2u);
    }

    goto LABEL_70;
  }

  _SparseGetOptionsFromSymbolicFactor(&v35, &a1->factor.symbolicFactorization);
  reportError = v35.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(a2 + 8);
  v17 = *a2;
  if (v16 < *a2)
  {
    if (v35.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "B";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v16;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "B";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = v17;
      v21 = MEMORY[0x277D86220];
LABEL_49:
      _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v35, 0x22u);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  columnStride = a3->columnStride;
  rowCount = a3->rowCount;
  if (columnStride >= a3->rowCount)
  {
    if (*(a2 + 12))
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
      v17 = *(a2 + 4);
    }

    if (*&a3->attributes)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(&a3->rowCount + v22);
    v24 = *(a2 + v20);
    if (*&a3->attributes)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(&a3->rowCount + v25);
    if (v17 == v23)
    {
      if (v17 <= 0)
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          snprintf(&v35, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v35.control = 136315650;
          *&v35.orderMethod = "B";
          WORD2(v35.order) = 1024;
          *(&v35.order + 6) = v24;
          WORD1(v35.ignoreRowsAndColumns) = 1024;
          HIDWORD(v35.ignoreRowsAndColumns) = v17;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v35, 0x18u);
        }

        goto LABEL_70;
      }

      if (v24 == v15)
      {
        if (v26 == v14)
        {
          free = v35.free;
          v28 = a1->workspaceRequiredPerRHS + *&a1[1].attributes * v17;
          v29 = (v35.malloc)(v28);
          if (v29)
          {
            v30 = v29;
            _SparseSolveSubfactor_Double(a1, a2, a3, v29);
            (free)(v30);
            goto LABEL_71;
          }

          if (reportError)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            memset(&v35, 0, sizeof(v35));
            snprintf(&v35, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v35.control = 134217984;
            *&v35.orderMethod = v28;
            _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", &v35, 0xCu);
          }

          goto LABEL_70;
        }

        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "X";
          goto LABEL_58;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "X";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v26;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v14;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v15;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "B";
LABEL_58:
          snprintf(&v35, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v33);
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "B";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v24;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v14;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v15;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v35.reportError)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        memset(&v35, 0, sizeof(v35));
        snprintf(&v35, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v35.control = 136316418;
      *&v35.orderMethod = "B";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v24;
      WORD1(v35.ignoreRowsAndColumns) = 1024;
      HIDWORD(v35.ignoreRowsAndColumns) = v17;
      LOWORD(v35.malloc) = 2080;
      *(&v35.malloc + 2) = "X";
      WORD1(v35.free) = 1024;
      HIDWORD(v35.free) = v26;
      LOWORD(v35.reportError) = 1024;
      *(&v35.reportError + 2) = v23;
      v31 = MEMORY[0x277D86220];
      v32 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v31, OS_LOG_TYPE_ERROR, v32, &v35, 0x2Eu);
    goto LABEL_70;
  }

  if (!v35.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "X";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = columnStride;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "X";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = rowCount;
      v21 = MEMORY[0x277D86220];
      goto LABEL_49;
    }

LABEL_70:
    _SparseTrap();
    goto LABEL_71;
  }

LABEL_26:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(&v35, 0, sizeof(v35));
  snprintf(&v35, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v35);
LABEL_71:
  v34 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::solve(_OWORD *a1, DenseMatrix_Double *a2, __int128 *a3, char *a4)
{
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[7];
  v11[6] = a1[6];
  v11[7] = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  v9 = *a3;
  v10 = *(a3 + 2);
  v8 = *a2;
  if (a4)
  {
    sub_2450712B8(v11, &v9, &v8, a4);
  }

  else
  {
    sub_24507191C(v11, &v9, &v8);
  }
}

void cva::VecLibSparse<double>::solve(_OWORD *a1, uint64_t a2, char *a3)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = *(a2 + 8);
  v8[0] = *a2;
  v8[1] = 1;
  v8[2] = v8[0];
  v8[3] = 0;
  v9 = v7;
  if (a3)
  {
    sub_2450721A0(v10, v8, a3);
  }

  else
  {
    sub_24507242C(v10, v8);
  }
}

void sub_2450721A0(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v20 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "Subfactor does not hold a valid factor subobject.\n";
    goto LABEL_34;
  }

  _SparseGetOptionsFromSymbolicFactor(v20, (a1 + 16));
  v6 = *&v20[40];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((*(a2 + 12) & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (*&v20[40])
    {
      memset(&v20[34], 0, 222);
      strcpy(v20, "XB must have non-zero dimension.\n");
LABEL_27:
      v6(v20);
      goto LABEL_28;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      _SparseTrap();
      goto LABEL_28;
    }

    *v20 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "XB must have non-zero dimension.\n";
LABEL_34:
    _os_log_error_impl(&dword_245028000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_22;
  }

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (*&v20[40])
    {
      memset(v20, 0, sizeof(v20));
      snprintf(v20, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v20 = 67109376;
      *&v20[4] = v10;
      *&v20[8] = 1024;
      *&v20[10] = v16;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v20, 0xEu);
    }

    goto LABEL_22;
  }

  _SparseSolveSubfactor_Double(a1, 0, a2, a3);
LABEL_28:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_24507242C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v24 = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "Subfactor does not hold a valid factorization.\n";
    goto LABEL_40;
  }

  _SparseGetOptionsFromSymbolicFactor(v24, (a1 + 16));
  v4 = *&v24[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (*&v24[40])
    {
      memset(&v24[34], 0, 222);
      strcpy(v24, "XB must have non-zero dimension.\n");
      goto LABEL_33;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v24 = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "XB must have non-zero dimension.\n";
LABEL_40:
    _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, v24, 2u);
    goto LABEL_24;
  }

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (!*&v24[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v24 = 67109376;
        *&v24[4] = v10;
        *&v24[8] = 1024;
        *&v24[10] = v16;
        _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v24, 0xEu);
      }

      goto LABEL_24;
    }

    memset(v24, 0, sizeof(v24));
    snprintf(v24, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n");
LABEL_33:
    v4(v24);
    goto LABEL_34;
  }

  v17 = *&v24[32];
  v18 = *(a1 + 112) + *(a1 + 120) * v9;
  v19 = (*&v24[24])(v18);
  if (!v19)
  {
    if (v4)
    {
      memset(v24, 0, sizeof(v24));
      snprintf(v24, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
      goto LABEL_33;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v24 = 134217984;
      *&v24[4] = v18;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", v24, 0xCu);
    }

LABEL_24:
    _SparseTrap();
    goto LABEL_34;
  }

  v20 = v19;
  _SparseSolveSubfactor_Double(a1, 0, a2, v19);
  v17(v20);
LABEL_34:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::solve(_OWORD *a1, __int128 *a2, char *a3)
{
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7 = *a2;
  v8 = *(a2 + 2);
  if (a3)
  {
    sub_2450721A0(v9, &v7, a3);
  }

  else
  {
    sub_24507242C(v9, &v7);
  }
}

void cva::VecLibSparse<double>::multiply(_OWORD *a1, DenseMatrix_Double *a2, DenseMatrix_Double *a3, char *a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v9 = *a2;
  v8 = *a3;
  if (a4)
  {
    sub_2450728C0(v10, &v9, &v8, a4);
  }

  else
  {
    sub_245072F24(v10, &v9, &v8);
  }
}

void sub_2450728C0(const SparseOpaqueSubfactor_Double *a1, const DenseMatrix_Double *a2, uint64_t a3, char *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factor subobject.\n", &v36, 2u);
    }

    goto LABEL_65;
  }

  _SparseGetOptionsFromSymbolicFactor(&v36, &a1->factor.symbolicFactorization);
  reportError = v36.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a3 + 8);
  v19 = *a3;
  if (v18 < *a3)
  {
    if (v36.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "Y";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v18;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "Y";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = v19;
      v23 = MEMORY[0x277D86220];
LABEL_48:
      _os_log_error_impl(&dword_245028000, v23, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v36, 0x22u);
      goto LABEL_65;
    }

    goto LABEL_65;
  }

  columnStride = a2->columnStride;
  rowCount = a2->rowCount;
  if (columnStride >= a2->rowCount)
  {
    if (*(a3 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
      v19 = *(a3 + 4);
    }

    if (*&a2->attributes)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v25 = *(&a2->rowCount + v24);
    v26 = *(a3 + v22);
    if (*&a2->attributes)
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(&a2->rowCount + v27);
    if (v19 == v25)
    {
      if (v19 <= 0)
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          snprintf(&v36, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        v33 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v36.control = 136315650;
          *&v36.orderMethod = "Y";
          WORD2(v36.order) = 1024;
          *(&v36.order + 6) = v33;
          WORD1(v36.ignoreRowsAndColumns) = 1024;
          HIDWORD(v36.ignoreRowsAndColumns) = v19;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v36, 0x18u);
        }

        goto LABEL_65;
      }

      if (v26 == v17)
      {
        if (v28 == v16)
        {
          _SparseMultiplySubfactor_Double(a1, a2, a3, a4);
          goto LABEL_66;
        }

        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "X";
          goto LABEL_57;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "X";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v28;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "Y";
LABEL_57:
          snprintf(&v36, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v32);
          goto LABEL_27;
        }

        v34 = v26;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "Y";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v34;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v36.reportError)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        memset(&v36, 0, sizeof(v36));
        snprintf(&v36, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "Y");
        goto LABEL_27;
      }

      v29 = v26;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v36.control = 136316418;
      *&v36.orderMethod = "Y";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v29;
      WORD1(v36.ignoreRowsAndColumns) = 1024;
      HIDWORD(v36.ignoreRowsAndColumns) = v19;
      LOWORD(v36.malloc) = 2080;
      *(&v36.malloc + 2) = "X";
      WORD1(v36.free) = 1024;
      HIDWORD(v36.free) = v28;
      LOWORD(v36.reportError) = 1024;
      *(&v36.reportError + 2) = v25;
      v30 = MEMORY[0x277D86220];
      v31 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v30, OS_LOG_TYPE_ERROR, v31, &v36, 0x2Eu);
    goto LABEL_65;
  }

  if (!v36.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "X";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = columnStride;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "X";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = rowCount;
      v23 = MEMORY[0x277D86220];
      goto LABEL_48;
    }

LABEL_65:
    _SparseTrap();
    goto LABEL_66;
  }

LABEL_26:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  memset(&v36, 0, sizeof(v36));
  snprintf(&v36, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v36);
LABEL_66:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_245072F24(const SparseOpaqueSubfactor_Double *a1, uint64_t a2, const DenseMatrix_Double *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factor subobject.\n", &v35, 2u);
    }

    goto LABEL_70;
  }

  _SparseGetOptionsFromSymbolicFactor(&v35, &a1->factor.symbolicFactorization);
  reportError = v35.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(a2 + 8);
  v17 = *a2;
  if (v16 < *a2)
  {
    if (v35.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "X";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v16;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "X";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = v17;
      v21 = MEMORY[0x277D86220];
LABEL_49:
      _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v35, 0x22u);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  columnStride = a3->columnStride;
  rowCount = a3->rowCount;
  if (columnStride >= a3->rowCount)
  {
    if (*(a2 + 12))
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
      v17 = *(a2 + 4);
    }

    if (*&a3->attributes)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(&a3->rowCount + v22);
    v24 = *(a2 + v20);
    if (*&a3->attributes)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(&a3->rowCount + v25);
    if (v17 == v23)
    {
      if (v17 <= 0)
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          snprintf(&v35, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v35.control = 136315650;
          *&v35.orderMethod = "X";
          WORD2(v35.order) = 1024;
          *(&v35.order + 6) = v24;
          WORD1(v35.ignoreRowsAndColumns) = 1024;
          HIDWORD(v35.ignoreRowsAndColumns) = v17;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v35, 0x18u);
        }

        goto LABEL_70;
      }

      if (v24 == v14)
      {
        if (v26 == v15)
        {
          free = v35.free;
          v28 = a1->workspaceRequiredPerRHS + *&a1[1].attributes * v17;
          v29 = (v35.malloc)(v28);
          if (v29)
          {
            v30 = v29;
            _SparseMultiplySubfactor_Double(a1, a2, a3, v29);
            (free)(v30);
            goto LABEL_71;
          }

          if (reportError)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            memset(&v35, 0, sizeof(v35));
            snprintf(&v35, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v35.control = 134217984;
            *&v35.orderMethod = v28;
            _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", &v35, 0xCu);
          }

          goto LABEL_70;
        }

        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "Y";
          goto LABEL_58;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "Y";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v26;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v15;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v14;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "X";
LABEL_58:
          snprintf(&v35, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v33);
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "X";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v24;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v15;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v14;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v35.reportError)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        memset(&v35, 0, sizeof(v35));
        snprintf(&v35, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "X");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v35.control = 136316418;
      *&v35.orderMethod = "X";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v24;
      WORD1(v35.ignoreRowsAndColumns) = 1024;
      HIDWORD(v35.ignoreRowsAndColumns) = v17;
      LOWORD(v35.malloc) = 2080;
      *(&v35.malloc + 2) = "Y";
      WORD1(v35.free) = 1024;
      HIDWORD(v35.free) = v26;
      LOWORD(v35.reportError) = 1024;
      *(&v35.reportError + 2) = v23;
      v31 = MEMORY[0x277D86220];
      v32 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v31, OS_LOG_TYPE_ERROR, v32, &v35, 0x2Eu);
    goto LABEL_70;
  }

  if (!v35.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "Y";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = columnStride;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "Y";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = rowCount;
      v21 = MEMORY[0x277D86220];
      goto LABEL_49;
    }

LABEL_70:
    _SparseTrap();
    goto LABEL_71;
  }

LABEL_26:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(&v35, 0, sizeof(v35));
  snprintf(&v35, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v35);
LABEL_71:
  v34 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::multiply(_OWORD *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  v8 = *(a2 + 8);
  v9 = *a3;
  v10 = *(a3 + 8);
  v12.rowCount = *a2;
  v12.columnCount = 1;
  v12.columnStride = v12.rowCount;
  *&v12.attributes = 0;
  v12.data = v8;
  v11.rowCount = v9;
  v11.columnCount = 1;
  v11.columnStride = v9;
  *&v11.attributes = 0;
  v11.data = v10;
  if (a4)
  {
    sub_2450728C0(v13, &v12, &v11, a4);
  }

  else
  {
    sub_245072F24(v13, &v12, &v11);
  }
}

void cva::BufferTiled<float>::allocTexture(_DWORD *a1, id *a2, char a3, void *a4)
{
  v7 = *a2;
  if ((a3 & 1) == 0)
  {
    if (a4[1])
    {
      goto LABEL_24;
    }

    v16 = v7;
    if (*a4)
    {
      v10 = *(*a4 + 8);
      if ([v10 pixelFormat] == 55)
      {
        goto LABEL_23;
      }

      v14 = [v10 newTextureViewWithPixelFormat:55];
      v15 = *a4;
      if (*a4)
      {

        MEMORY[0x245D61480](v15, 0xE0C400670D255);
      }

      v13 = v14;
      if (v13)
      {
        operator new();
      }
    }

    else
    {
      v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:(a1[5] * a1[4]) height:a1[6] mipmapped:0];
      v13 = [v16 newTextureWithDescriptor:v10];
      if (v13)
      {
        operator new();
      }
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v8 = a1[4];
  if ((v8 & 3) != 0)
  {
    goto LABEL_24;
  }

  v16 = v7;
  v9 = a4[1];
  if (!v9)
  {
    v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:a1[5] * (v8 >> 2) height:a1[6] mipmapped:0];
    v13 = [v16 newTextureWithDescriptor:v10];
    if (v13)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v10 = *(v9 + 8);
  if ([v10 pixelFormat] != 125)
  {
    v11 = [v10 newTextureViewWithPixelFormat:125];
    v12 = a4[1];
    if (v12)
    {

      MEMORY[0x245D61480](v12, 0xE0C400670D255);
    }

    v13 = v11;
    if (v13)
    {
      operator new();
    }

LABEL_20:

    a4[1] = 0;
LABEL_22:
  }

LABEL_23:

  v7 = v16;
LABEL_24:
}

uint64_t cva::BufferTiled<float>::doResize(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *a2;
  *(result + 8) = 0;
  *(result + 16) = v3;
  *(result + 24) = v2;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void cva::BufferTiled<unsigned short>::allocTexture(_DWORD *a1, id *a2, char a3, void *a4)
{
  v7 = *a2;
  if ((a3 & 1) == 0)
  {
    if (a4[1])
    {
      goto LABEL_24;
    }

    v16 = v7;
    if (*a4)
    {
      v10 = *(*a4 + 8);
      if ([v10 pixelFormat] == 23)
      {
        goto LABEL_23;
      }

      v14 = [v10 newTextureViewWithPixelFormat:23];
      v15 = *a4;
      if (*a4)
      {

        MEMORY[0x245D61480](v15, 0xE0C400670D255);
      }

      v13 = v14;
      if (v13)
      {
        operator new();
      }
    }

    else
    {
      v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:23 width:(a1[5] * a1[4]) height:a1[6] mipmapped:0];
      v13 = [v16 newTextureWithDescriptor:v10];
      if (v13)
      {
        operator new();
      }
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v8 = a1[4];
  if ((v8 & 3) != 0)
  {
    goto LABEL_24;
  }

  v16 = v7;
  v9 = a4[1];
  if (!v9)
  {
    v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:113 width:a1[5] * (v8 >> 2) height:a1[6] mipmapped:0];
    v13 = [v16 newTextureWithDescriptor:v10];
    if (v13)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v10 = *(v9 + 8);
  if ([v10 pixelFormat] != 113)
  {
    v11 = [v10 newTextureViewWithPixelFormat:113];
    v12 = a4[1];
    if (v12)
    {

      MEMORY[0x245D61480](v12, 0xE0C400670D255);
    }

    v13 = v11;
    if (v13)
    {
      operator new();
    }

LABEL_20:

    a4[1] = 0;
LABEL_22:
  }

LABEL_23:

  v7 = v16;
LABEL_24:
}

uint64_t cva::BufferTiled<unsigned short>::doResize(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *a2;
  *(result + 8) = 0;
  *(result + 16) = v3;
  *(result + 24) = v2;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void cva::BufferTiled<unsigned char>::allocTexture(_DWORD *a1, id *a2, char a3, void *a4)
{
  v7 = *a2;
  if ((a3 & 1) == 0)
  {
    if (a4[1])
    {
      goto LABEL_24;
    }

    v16 = v7;
    if (*a4)
    {
      v10 = *(*a4 + 8);
      if ([v10 pixelFormat] == 13)
      {
        goto LABEL_23;
      }

      v14 = [v10 newTextureViewWithPixelFormat:13];
      v15 = *a4;
      if (*a4)
      {

        MEMORY[0x245D61480](v15, 0xE0C400670D255);
      }

      v13 = v14;
      if (v13)
      {
        operator new();
      }
    }

    else
    {
      v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:(a1[5] * a1[4]) height:a1[6] mipmapped:0];
      v13 = [v16 newTextureWithDescriptor:v10];
      if (v13)
      {
        operator new();
      }
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v8 = a1[4];
  if ((v8 & 3) != 0)
  {
    goto LABEL_24;
  }

  v16 = v7;
  v9 = a4[1];
  if (!v9)
  {
    v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:73 width:a1[5] * (v8 >> 2) height:a1[6] mipmapped:0];
    v13 = [v16 newTextureWithDescriptor:v10];
    if (v13)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v10 = *(v9 + 8);
  if ([v10 pixelFormat] != 73)
  {
    v11 = [v10 newTextureViewWithPixelFormat:73];
    v12 = a4[1];
    if (v12)
    {

      MEMORY[0x245D61480](v12, 0xE0C400670D255);
    }

    v13 = v11;
    if (v13)
    {
      operator new();
    }

LABEL_20:

    a4[1] = 0;
LABEL_22:
  }

LABEL_23:

  v7 = v16;
LABEL_24:
}

uint64_t cva::BufferTiled<unsigned char>::doResize(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *a2;
  *(result + 8) = 0;
  *(result + 16) = v3;
  *(result + 24) = v2;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void cva::BufferTiled<unsigned int>::allocTexture(_DWORD *a1, id *a2, char a3, void *a4)
{
  v7 = *a2;
  if ((a3 & 1) == 0)
  {
    if (a4[1])
    {
      goto LABEL_24;
    }

    v16 = v7;
    if (*a4)
    {
      v10 = *(*a4 + 8);
      if ([v10 pixelFormat] == 53)
      {
        goto LABEL_23;
      }

      v14 = [v10 newTextureViewWithPixelFormat:53];
      v15 = *a4;
      if (*a4)
      {

        MEMORY[0x245D61480](v15, 0xE0C400670D255);
      }

      v13 = v14;
      if (v13)
      {
        operator new();
      }
    }

    else
    {
      v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:53 width:(a1[5] * a1[4]) height:a1[6] mipmapped:0];
      v13 = [v16 newTextureWithDescriptor:v10];
      if (v13)
      {
        operator new();
      }
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v8 = a1[4];
  if ((v8 & 3) != 0)
  {
    goto LABEL_24;
  }

  v16 = v7;
  v9 = a4[1];
  if (!v9)
  {
    v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:123 width:a1[5] * (v8 >> 2) height:a1[6] mipmapped:0];
    v13 = [v16 newTextureWithDescriptor:v10];
    if (v13)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v10 = *(v9 + 8);
  if ([v10 pixelFormat] != 123)
  {
    v11 = [v10 newTextureViewWithPixelFormat:123];
    v12 = a4[1];
    if (v12)
    {

      MEMORY[0x245D61480](v12, 0xE0C400670D255);
    }

    v13 = v11;
    if (v13)
    {
      operator new();
    }

LABEL_20:

    a4[1] = 0;
LABEL_22:
  }

LABEL_23:

  v7 = v16;
LABEL_24:
}

uint64_t cva::BufferTiled<unsigned int>::doResize(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *a2;
  *(result + 8) = 0;
  *(result + 16) = v3;
  *(result + 24) = v2;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void cva::BufferTiled<cva::half>::allocTexture(_DWORD *a1, id *a2, char a3, void *a4)
{
  v7 = *a2;
  if ((a3 & 1) == 0)
  {
    if (a4[1])
    {
      goto LABEL_24;
    }

    v16 = v7;
    if (*a4)
    {
      v10 = *(*a4 + 8);
      if ([v10 pixelFormat] == 25)
      {
        goto LABEL_23;
      }

      v14 = [v10 newTextureViewWithPixelFormat:25];
      v15 = *a4;
      if (*a4)
      {

        MEMORY[0x245D61480](v15, 0xE0C400670D255);
      }

      v13 = v14;
      if (v13)
      {
        operator new();
      }
    }

    else
    {
      v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:(a1[5] * a1[4]) height:a1[6] mipmapped:0];
      v13 = [v16 newTextureWithDescriptor:v10];
      if (v13)
      {
        operator new();
      }
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v8 = a1[4];
  if ((v8 & 3) != 0)
  {
    goto LABEL_24;
  }

  v16 = v7;
  v9 = a4[1];
  if (!v9)
  {
    v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:a1[5] * (v8 >> 2) height:a1[6] mipmapped:0];
    v13 = [v16 newTextureWithDescriptor:v10];
    if (v13)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v10 = *(v9 + 8);
  if ([v10 pixelFormat] != 115)
  {
    v11 = [v10 newTextureViewWithPixelFormat:115];
    v12 = a4[1];
    if (v12)
    {

      MEMORY[0x245D61480](v12, 0xE0C400670D255);
    }

    v13 = v11;
    if (v13)
    {
      operator new();
    }

LABEL_20:

    a4[1] = 0;
LABEL_22:
  }

LABEL_23:

  v7 = v16;
LABEL_24:
}

uint64_t cva::BufferTiled<cva::half>::doResize(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *a2;
  *(result + 8) = 0;
  *(result + 16) = v3;
  *(result + 24) = v2;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::Buffer<float>::texture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(*a1 + 24))(a1, a2, a3, a1 + 56);
  v5 = 56;
  if (v3)
  {
    v5 = 64;
  }

  return *(a1 + v5);
}

void cva::Buffer<float>::allocTexture(uint64_t a1, id *a2, char a3, void *a4)
{
  if (a3)
  {
    if ((*(a1 + 36) & 0xF) != 0)
    {
      return;
    }

    v5 = a4[1];
    if (v5)
    {
      v19 = *(v5 + 8);
      if ([v19 pixelFormat] != 125)
      {
        v6 = [v19 newTextureViewWithPixelFormat:125];
        v7 = a4[1];
        if (v7)
        {

          MEMORY[0x245D61480](v7, 0xE0C400670D255);
        }

        if (v6)
        {
          operator new();
        }

        a4[1] = 0;
LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 20);
    v16 = *(a1 + 24);
    image = 0;
    v17 = *a2;
    sub_245074BB0(v17);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatRGBA32Float, (v14 * v13 + 3) >> 2, v16, 0, &image);

    v18 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v18)
    {
      operator new();
    }

    a4[1] = 0;
LABEL_22:

    return;
  }

  if (!*a4)
  {
    image = 0;
    v11 = *a2;
    sub_245074BB0(v11);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatR32Float, (*(a1 + 20) * *(a1 + 16)), *(a1 + 24), 0, &image);

    v12 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v12)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v19 = *(*a4 + 8);
  if ([v19 pixelFormat] != 55)
  {
    v8 = [v19 newTextureViewWithPixelFormat:55];
    v9 = *a4;
    if (*a4)
    {

      MEMORY[0x245D61480](v9, 0xE0C400670D255);
    }

    if (v8)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_25;
  }

LABEL_26:
}

uint64_t sub_245074BB0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ((atomic_load_explicit(&qword_27EDF64C8, memory_order_acquire) & 1) == 0)
  {
    v4 = v1;
    v1 = __cxa_guard_acquire(&qword_27EDF64C8);
    v2 = v4;
    if (v1)
    {
      sub_245074C74(v4);
      __cxa_atexit(sub_245074D08, &qword_27EDF64B8, &dword_245028000);
      __cxa_guard_release(&qword_27EDF64C8);
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](v1, v2);
}

void sub_245074C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_guard_abort(&qword_27EDF64C8);

  _Unwind_Resume(a1);
}

void sub_245074C74(void *a1)
{
  qword_27EDF64B8 = a1;
  qword_27EDF64C0 = 0;
  v1 = qword_27EDF64B8;
  CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, qword_27EDF64B8, 0, &qword_27EDF64C0);
}

void sub_245074CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t cva::Buffer<unsigned short>::texture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(*a1 + 24))(a1, a2, a3, a1 + 56);
  v5 = 56;
  if (v3)
  {
    v5 = 64;
  }

  return *(a1 + v5);
}

void cva::Buffer<unsigned short>::allocTexture(uint64_t a1, id *a2, char a3, void *a4)
{
  if (a3)
  {
    if ((*(a1 + 36) & 7) != 0)
    {
      return;
    }

    v5 = a4[1];
    if (v5)
    {
      v19 = *(v5 + 8);
      if ([v19 pixelFormat] != 113)
      {
        v6 = [v19 newTextureViewWithPixelFormat:113];
        v7 = a4[1];
        if (v7)
        {

          MEMORY[0x245D61480](v7, 0xE0C400670D255);
        }

        if (v6)
        {
          operator new();
        }

        a4[1] = 0;
LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 20);
    v16 = *(a1 + 24);
    image = 0;
    v17 = *a2;
    sub_245074BB0(v17);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatRGBA16Uint, (v14 * v13 + 3) >> 2, v16, 0, &image);

    v18 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v18)
    {
      operator new();
    }

    a4[1] = 0;
LABEL_22:

    return;
  }

  if (!*a4)
  {
    image = 0;
    v11 = *a2;
    sub_245074BB0(v11);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatR16Uint, (*(a1 + 20) * *(a1 + 16)), *(a1 + 24), 0, &image);

    v12 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v12)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v19 = *(*a4 + 8);
  if ([v19 pixelFormat] != 23)
  {
    v8 = [v19 newTextureViewWithPixelFormat:23];
    v9 = *a4;
    if (*a4)
    {

      MEMORY[0x245D61480](v9, 0xE0C400670D255);
    }

    if (v8)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_25;
  }

LABEL_26:
}

uint64_t cva::Buffer<unsigned char>::texture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(*a1 + 24))(a1, a2, a3, a1 + 56);
  v5 = 56;
  if (v3)
  {
    v5 = 64;
  }

  return *(a1 + v5);
}

void cva::Buffer<unsigned char>::allocTexture(uint64_t a1, id *a2, char a3, void *a4)
{
  if (a3)
  {
    if ((*(a1 + 36) & 3) != 0)
    {
      return;
    }

    v5 = a4[1];
    if (v5)
    {
      v19 = *(v5 + 8);
      if ([v19 pixelFormat] != 73)
      {
        v6 = [v19 newTextureViewWithPixelFormat:73];
        v7 = a4[1];
        if (v7)
        {

          MEMORY[0x245D61480](v7, 0xE0C400670D255);
        }

        if (v6)
        {
          operator new();
        }

        a4[1] = 0;
LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 20);
    v16 = *(a1 + 24);
    image = 0;
    v17 = *a2;
    sub_245074BB0(v17);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatRGBA8Uint, (v14 * v13 + 3) >> 2, v16, 0, &image);

    v18 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v18)
    {
      operator new();
    }

    a4[1] = 0;
LABEL_22:

    return;
  }

  if (!*a4)
  {
    image = 0;
    v11 = *a2;
    sub_245074BB0(v11);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatR8Uint, (*(a1 + 20) * *(a1 + 16)), *(a1 + 24), 0, &image);

    v12 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v12)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v19 = *(*a4 + 8);
  if ([v19 pixelFormat] != 13)
  {
    v8 = [v19 newTextureViewWithPixelFormat:13];
    v9 = *a4;
    if (*a4)
    {

      MEMORY[0x245D61480](v9, 0xE0C400670D255);
    }

    if (v8)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_25;
  }

LABEL_26:
}

uint64_t cva::Buffer<unsigned int>::texture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(*a1 + 24))(a1, a2, a3, a1 + 56);
  v5 = 56;
  if (v3)
  {
    v5 = 64;
  }

  return *(a1 + v5);
}

void cva::Buffer<unsigned int>::allocTexture(uint64_t a1, id *a2, char a3, void *a4)
{
  if (a3)
  {
    if ((*(a1 + 36) & 0xF) != 0)
    {
      return;
    }

    v5 = a4[1];
    if (v5)
    {
      v19 = *(v5 + 8);
      if ([v19 pixelFormat] != 123)
      {
        v6 = [v19 newTextureViewWithPixelFormat:123];
        v7 = a4[1];
        if (v7)
        {

          MEMORY[0x245D61480](v7, 0xE0C400670D255);
        }

        if (v6)
        {
          operator new();
        }

        a4[1] = 0;
LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 20);
    v16 = *(a1 + 24);
    image = 0;
    v17 = *a2;
    sub_245074BB0(v17);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatRGBA32Uint, (v14 * v13 + 3) >> 2, v16, 0, &image);

    v18 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v18)
    {
      operator new();
    }

    a4[1] = 0;
LABEL_22:

    return;
  }

  if (!*a4)
  {
    image = 0;
    v11 = *a2;
    sub_245074BB0(v11);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatR32Uint, (*(a1 + 20) * *(a1 + 16)), *(a1 + 24), 0, &image);

    v12 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v12)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v19 = *(*a4 + 8);
  if ([v19 pixelFormat] != 53)
  {
    v8 = [v19 newTextureViewWithPixelFormat:53];
    v9 = *a4;
    if (*a4)
    {

      MEMORY[0x245D61480](v9, 0xE0C400670D255);
    }

    if (v8)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_25;
  }

LABEL_26:
}

uint64_t cva::Buffer<cva::half>::texture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(*a1 + 24))(a1, a2, a3, a1 + 56);
  v5 = 56;
  if (v3)
  {
    v5 = 64;
  }

  return *(a1 + v5);
}

void cva::Buffer<cva::half>::allocTexture(uint64_t a1, id *a2, char a3, void *a4)
{
  if (a3)
  {
    if ((*(a1 + 36) & 7) != 0)
    {
      return;
    }

    v5 = a4[1];
    if (v5)
    {
      v19 = *(v5 + 8);
      if ([v19 pixelFormat] != 115)
      {
        v6 = [v19 newTextureViewWithPixelFormat:115];
        v7 = a4[1];
        if (v7)
        {

          MEMORY[0x245D61480](v7, 0xE0C400670D255);
        }

        if (v6)
        {
          operator new();
        }

        a4[1] = 0;
LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 20);
    v16 = *(a1 + 24);
    image = 0;
    v17 = *a2;
    sub_245074BB0(v17);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatRGBA16Float, (v14 * v13 + 3) >> 2, v16, 0, &image);

    v18 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v18)
    {
      operator new();
    }

    a4[1] = 0;
LABEL_22:

    return;
  }

  if (!*a4)
  {
    image = 0;
    v11 = *a2;
    sub_245074BB0(v11);
    CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], qword_27EDF64C0, *(a1 + 48), 0, MTLPixelFormatR16Float, (*(a1 + 20) * *(a1 + 16)), *(a1 + 24), 0, &image);

    v12 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v12)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_22;
  }

  v19 = *(*a4 + 8);
  if ([v19 pixelFormat] != 25)
  {
    v8 = [v19 newTextureViewWithPixelFormat:25];
    v9 = *a4;
    if (*a4)
    {

      MEMORY[0x245D61480](v9, 0xE0C400670D255);
    }

    if (v8)
    {
      operator new();
    }

    *a4 = 0;
    goto LABEL_25;
  }

LABEL_26:
}

double cva::BufferTiled<float>::BufferTiled(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAA0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAA0;
  return result;
}

double cva::BufferTiled<float>::BufferTiled(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAA0;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAA0;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::BufferTiled<float>::BufferTiled(uint64_t result, int a2, int a3, int a4)
{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDAA0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDAA0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

double cva::BufferTiled<unsigned short>::BufferTiled(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA10;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA10;
  return result;
}

double cva::BufferTiled<unsigned short>::BufferTiled(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA10;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA10;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::BufferTiled<unsigned short>::BufferTiled(uint64_t result, int a2, int a3, int a4)
{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDA10;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDA10;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

double cva::BufferTiled<unsigned char>::BufferTiled(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA70;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA70;
  return result;
}

double cva::BufferTiled<unsigned char>::BufferTiled(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA70;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA70;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::BufferTiled<unsigned char>::BufferTiled(uint64_t result, int a2, int a3, int a4)
{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDA70;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDA70;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

double cva::BufferTiled<unsigned int>::BufferTiled(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA40;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA40;
  return result;
}

double cva::BufferTiled<unsigned int>::BufferTiled(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA40;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDA40;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::BufferTiled<unsigned int>::BufferTiled(uint64_t result, int a2, int a3, int a4)
{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDA40;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDA40;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

double cva::BufferTiled<cva::half>::BufferTiled(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAD0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAD0;
  return result;
}

double cva::BufferTiled<cva::half>::BufferTiled(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAD0;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v6 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2857FDAD0;
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::BufferTiled<cva::half>::BufferTiled(uint64_t result, int a2, int a3, int a4)
{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDAD0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

{
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_2857FDAD0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

void cva::ProgramOptions::ProgramOptions()
{
  operator new();
}

{
  operator new();
}

void cva::ProgramOptions::~ProgramOptions(cva::ProgramOptions *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_2450768A0(v2);
    MEMORY[0x245D61480](v3, 0x1032C407DCE974ALL);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_2450768A0(v2);
    MEMORY[0x245D61480](v3, 0x1032C407DCE974ALL);
  }
}

uint64_t sub_2450768A0(uint64_t a1)
{
  v3 = (a1 + 120);
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_24507697C(a1 + 120, v2);
    operator delete(*v3);
  }

  sub_245076A68(*(a1 + 104));
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 72);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(a1 + 72);
    }

    *(a1 + 80) = v4;
    operator delete(v6);
  }

  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_17:
    operator delete(*a1);
    return a1;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (*(a1 + 23) < 0)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_24507697C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
        v5 = *(v4 - 5);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v5 = *(v4 - 5);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if ((*(v4 - 49) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        operator delete(*(v4 - 9));
        goto LABEL_11;
      }

LABEL_9:
      if (*(v4 - 49) < 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      v6 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
        operator delete(*v6);
      }

      v4 -= 12;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_245076A68(char *a1)
{
  if (!a1)
  {
    return;
  }

  sub_245076A68(*a1);
  sub_245076A68(*(a1 + 1));
  v2 = *(a1 + 10);
  if (v2)
  {
    v3 = *(a1 + 11);
    v4 = *(a1 + 10);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 10);
    }

    *(a1 + 11) = v2;
    operator delete(v4);
  }

  if (a1[79] < 0)
  {
    operator delete(*(a1 + 7));
    if ((a1[55] & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    operator delete(*(a1 + 4));
    goto LABEL_13;
  }

  if (a1[55] < 0)
  {
    goto LABEL_17;
  }

LABEL_13:

  operator delete(a1);
}

void cva::ProgramOptions::Private::registerCommand(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  if (v2 != v3)
  {
    while (!sub_245076C7C(v2, a2))
    {
      v2 += 96;
      if (v2 == v3)
      {
        return;
      }
    }

    if (*(v2 + 23) < 0)
    {
      sub_24505989C(v8, *v2, *(v2 + 8));
    }

    else
    {
      v6 = *v2;
      v9 = *(v2 + 16);
      *v8 = v6;
    }

    if (*(v2 + 47) < 0)
    {
      sub_24505989C(__p, *(v2 + 24), *(v2 + 32));
    }

    else
    {
      v7 = *(v2 + 24);
      v11 = *(v2 + 40);
      *__p = v7;
    }

    v12 = v8;
    sub_245076DEC(a1 + 96, v8);
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v9) & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(v8[0]);
      return;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v9) < 0)
    {
      goto LABEL_15;
    }
  }
}

BOOL sub_245076C7C(uint64_t a1, const void **a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_24505989C(v14, *a1, *(a1 + 8));
  }

  else
  {
    *v14 = *a1;
    v15 = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    sub_24505989C(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
    v17 = *(a1 + 40);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = HIBYTE(v15);
  if (v15 < 0)
  {
    v6 = v14[1];
  }

  if (v5 != v6 || (v4 >= 0 ? (v7 = a2) : (v7 = *a2), v15 >= 0 ? (v8 = v14) : (v8 = v14[0]), memcmp(v7, v8, v5)))
  {
    v9 = HIBYTE(v17);
    if (v17 < 0)
    {
      v9 = *(&__p + 1);
    }

    if (v5 == v9)
    {
      if (v4 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v17 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v12 = memcmp(v10, p_p, v5) == 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_32:
    v12 = 0;
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v12 = 1;
  if (SHIBYTE(v17) < 0)
  {
LABEL_33:
    operator delete(__p);
  }

LABEL_34:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v12;
}

void *sub_245076DEC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!sub_245076F0C(a2, v2 + 4))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!sub_245076F0C(v4 + 4, a2))
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_245076F0C(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 23);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 < 0)
  {
    a1 = *a1;
  }

  if (v4 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v4 < 0)
  {
    a2 = *a2;
  }

  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(a1, a2, v8);
  if (v6 < v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v7 < v6;
  }

  if (v9)
  {
    v10 = v9;
  }

  if (!v10)
  {
    v13 = v2[3];
    v12 = v2 + 3;
    v11 = v13;
    v14 = *(v12 + 23);
    v17 = v3[3];
    v16 = v3 + 3;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = *(v16 + 23);
    }

    else
    {
      v19 = v16[1];
    }

    if (v18 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15;
    }

    if (v14 >= 0)
    {
      v21 = *(v12 + 23);
    }

    else
    {
      v21 = v12[1];
    }

    if (v14 >= 0)
    {
      v22 = v12;
    }

    else
    {
      v22 = v11;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    if (v19 < v21)
    {
      v10 = -1;
    }

    else
    {
      v10 = v21 < v19;
    }

    if (v24)
    {
      v10 = v24;
    }
  }

  return v10 >> 31;
}

uint64_t *sub_245076FF0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          *(v4 + 16) = v19;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v13[2] = v3;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

unint64_t *cva::ProgramOptions::Description::Option::key@<X0>(unint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  if (*(this + 23) < 0)
  {
    this = sub_24505989C(a2, *this, this[1]);
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a2 = *this;
    *(a2 + 16) = this[2];
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_3:
      *(a2 + 24) = *(v2 + 3);
      *(a2 + 40) = v2[5];
      return this;
    }
  }

  v4 = v2[3];
  v5 = v2[4];

  return sub_24505989C((a2 + 24), v4, v5);
}

void cva::ProgramOptions::Private::addValue(uint64_t a1, const void **a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3 != v4)
  {
    while (!sub_245076C7C(v3, a2))
    {
      v3 += 96;
      if (v3 == v4)
      {
        return;
      }
    }

    if (*(v3 + 23) < 0)
    {
      sub_24505989C(v15, *v3, *(v3 + 8));
    }

    else
    {
      v8 = *v3;
      v16 = *(v3 + 16);
      *v15 = v8;
    }

    if (*(v3 + 47) < 0)
    {
      sub_24505989C(__p, *(v3 + 24), *(v3 + 32));
    }

    else
    {
      v9 = *(v3 + 24);
      v18 = *(v3 + 40);
      *__p = v9;
    }

    v19 = v15;
    v10 = sub_245076DEC(a1 + 96, v15);
    v11 = v10;
    v12 = v10[11];
    if (v12 >= v10[12])
    {
      v14 = sub_245077364((v10 + 10), a3);
    }

    else
    {
      if (*(a3 + 23) < 0)
      {
        sub_24505989C(v10[11], *a3, *(a3 + 8));
      }

      else
      {
        v13 = *a3;
        *(v12 + 16) = *(a3 + 16);
        *v12 = v13;
      }

      v14 = v12 + 24;
    }

    v11[11] = v14;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        return;
      }

LABEL_21:
      operator delete(v15[0]);
      return;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v16) < 0)
    {
      goto LABEL_21;
    }
  }
}

uint64_t sub_245077364(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24504FAF4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  v5 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_24505989C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    *(v5 + 16) = *(a2 + 16);
  }

  v6 = v5 + 24;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = (v5 - v8);
  memcpy(v9, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void cva::ProgramOptions::Private::checkCommand(cva::ProgramOptions::Private *this)
{
  v1 = *(this + 15);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v4 = *(v1 + 23);
    if (v4 < 0)
    {
      v4 = *(v1 + 1);
    }

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 24;
    }

    v6 = (v1 + v5);
    if (*(v1 + 92) != 1 || (cva::ProgramOptions::Private::hasCommand(this, (v1 + v5)) & 1) != 0)
    {
      goto LABEL_25;
    }

    v7 = *(v1 + v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v1 + v5 + 23);
    }

    else
    {
      v8 = *(v1 + v5 + 8);
    }

    if (v8 + 8 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_60:
      sub_24504FAF4();
    }

    if (v8 + 8 >= 0x17)
    {
      operator new();
    }

    v26.__r_.__value_.__r.__words[2] = 0;
    *(&v26.__r_.__value_.__s + 23) = v8 + 8;
    *&v26.__r_.__value_.__l.__data_ = 0x20646E616D6D6F43uLL;
    if (v8)
    {
      if ((v7 & 0x80u) == 0)
      {
        v9 = v1 + v5;
      }

      else
      {
        v9 = *v6;
      }

      memmove(&v26.__r_.__value_.__r.__words[1], v9, v8);
    }

    *(&v26.__r_.__value_.__r.__words[1] + v8) = 0;
    v10 = std::string::append(&v26, " is required!", 0xDuLL);
    *__p = *v10;
    v10->__r_.__value_.__r.__words[0] = 0;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    sub_245065C58(this + 72, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
      if ((*(v1 + 22) & 0x80000000) != 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_25:
      if ((*(v1 + 22) & 0x80000000) != 0)
      {
        goto LABEL_3;
      }
    }

    if (!cva::ProgramOptions::Private::hasCommand(this, (v1 + v5)))
    {
      goto LABEL_3;
    }

    if (*(v1 + 23) < 0)
    {
      sub_24505989C(__p, *v1, *(v1 + 1));
      if ((*(v1 + 47) & 0x80000000) == 0)
      {
LABEL_29:
        v12 = *(v1 + 24);
        v25 = *(v1 + 5);
        *&__p[24] = v12;
        goto LABEL_32;
      }
    }

    else
    {
      v11 = *v1;
      *&__p[16] = *(v1 + 2);
      *__p = v11;
      if ((*(v1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_24505989C(&__p[24], *(v1 + 3), *(v1 + 4));
LABEL_32:
    v26.__r_.__value_.__r.__words[0] = __p;
    v13 = sub_245076DEC(this + 96, __p);
    v15 = v13[10];
    v14 = v13[11];
    if (SHIBYTE(v25) < 0)
    {
      operator delete(*&__p[24]);
      if ((__p[23] & 0x80000000) != 0)
      {
LABEL_49:
        operator delete(*__p);
      }
    }

    else if ((__p[23] & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

    v16 = -1431655765 * ((v14 - v15) >> 3);
    v17 = *(v1 + 22);
    if (v17 > v16)
    {
      v18 = v1 + v5;
      v19 = *(v18 + 23);
      if (v19 >= 0)
      {
        v20 = *(v18 + 23);
      }

      else
      {
        v20 = *(v18 + 8);
      }

      if (v20 + 33 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_60;
      }

      if (v20 + 33 > 0x16)
      {
        operator new();
      }

      qmemcpy(__p, "Not enough arguments for command ", 33);
      v22 = &__p[33];
LABEL_54:
      if ((v19 & 0x80u) == 0)
      {
        v23 = v6;
      }

      else
      {
        v23 = *v6;
      }

      memmove(v22, v23, v20);
      v22[v20] = 0;
      sub_245065C58(this + 72, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      goto LABEL_3;
    }

    if (v17 < v16)
    {
      v21 = v1 + v5;
      v19 = *(v21 + 23);
      if (v19 >= 0)
      {
        v20 = *(v21 + 23);
      }

      else
      {
        v20 = *(v21 + 8);
      }

      if (v20 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_60;
      }

      if (v20 + 31 > 0x16)
      {
        operator new();
      }

      qmemcpy(__p, "Too many arguments for command ", 31);
      v22 = &__p[31];
      goto LABEL_54;
    }

LABEL_3:
    v1 += 6;
  }
}

uint64_t cva::ProgramOptions::Private::hasCommand(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 96);
  v5 = (a1 + 104);
  if (v4 == (a1 + 104))
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v4 + 55);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4[5];
    }

    if (v3 == v7)
    {
      v9 = v8 >= 0 ? v4 + 4 : v4[4];
      if (!memcmp(v6, v9, v3))
      {
        break;
      }
    }

    v10 = *(v4 + 79);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v4[8];
    }

    if (v3 == v10)
    {
      v12 = v11 >= 0 ? v4 + 7 : v4[7];
      if (!memcmp(v6, v12, v3))
      {
        break;
      }
    }

    v13 = v4[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v4[2];
        v15 = *v14 == v4;
        v4 = v14;
      }

      while (!v15);
    }

    v4 = v14;
    if (v14 == v5)
    {
      return 0;
    }
  }

  return 1;
}

void *cva::ProgramOptions::Private::getValues(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 96);
  v3 = (a1 + 104);
  if (v2 == (a1 + 104))
  {
    return &unk_24508ABE0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = &unk_24508ABE0;
  if (v5)
  {
    while (1)
    {
      v8 = *(v2 + 55);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = v2[5];
      }

      if (v5 == v8)
      {
        v10 = v9 >= 0 ? v2 + 4 : v2[4];
        if (!memcmp(v6, v10, v5))
        {
          break;
        }
      }

      v11 = *(v2 + 79);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v2[8];
      }

      if (v5 == v11)
      {
        v13 = v12 >= 0 ? v2 + 7 : v2[7];
        if (!memcmp(v6, v13, v5))
        {
          break;
        }
      }

      v14 = v2[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
      if (v15 == v3)
      {
        return v7;
      }
    }

    return v2 + 10;
  }

  return v7;
}

uint64_t cva::ProgramOptions::parseCommands(cva::ProgramOptions *this, int a2, const char *const *a3, const cva::ProgramOptions::Description *a4, char a5)
{
  v7 = this;
  v8 = *this;
  v9 = *(*this + 72);
  v10 = *(*this + 80);
  v11 = *this;
  if (v10 != v9)
  {
    do
    {
      v12 = *(v10 - 1);
      v10 -= 3;
      if (v12 < 0)
      {
        operator delete(*v10);
      }
    }

    while (v10 != v9);
    v11 = *v7;
  }

  *(v8 + 80) = v9;
  v14 = *(v11 + 104);
  v13 = (v11 + 104);
  sub_245076A68(v14);
  *v13 = 0;
  v13[1] = 0;
  *(v13 - 1) = v13;
  v15 = *v7;
  v16 = *v7 + 120;
  v95 = a4;
  v98 = v7;
  if (v16 != a4)
  {
    v18 = *a4;
    v17 = *(a4 + 1);
    v19 = v17 - *v95;
    v20 = *(v15 + 136);
    v21 = *(v15 + 120);
    if (v20 - v21 < v19)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 5);
      if (v21)
      {
        sub_24507697C(v16, *(v15 + 120));
        operator delete(*v16);
        v20 = 0;
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
      }

      if (v22 <= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 5);
        v24 = 2 * v23;
        if (2 * v23 <= v22)
        {
          v24 = v22;
        }

        if (v23 >= 0x155555555555555)
        {
          v25 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v24;
        }

        if (v25 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }
      }

      sub_24504FAF4();
    }

    v26 = *(v15 + 128);
    v27 = v26 - v21;
    if (v26 - v21 >= v19)
    {
      while (v18 != v17)
      {
        sub_2450797FC(v21, v18);
        v18 += 12;
        v21 += 12;
      }

      sub_24507697C(v16, v21);
    }

    else
    {
      if (v26 != v21)
      {
        v28 = v26 - v21;
        v29 = *v95;
        do
        {
          sub_2450797FC(v21, v29);
          v29 += 12;
          v21 += 12;
          v28 -= 96;
        }

        while (v28);
      }

      sub_2450799B4(v16, v18 + v27, v17);
      v7 = v98;
    }
  }

  v107[0] = 0;
  v107[1] = 0;
  v108 = 0;
  if (a2 >= 2)
  {
    v30 = 0;
    v97 = a2;
    for (i = 1; i != v97; ++i)
    {
      v32 = a3[i];
      v33 = strlen(v32);
      if (v33 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_245;
      }

      v34 = v33;
      if (v33 >= 0x17)
      {
        operator new();
      }

      v106 = v33;
      if (v33)
      {
        memmove(&__dst, v32, v33);
      }

      *(&__dst + v34) = 0;
      v35 = v106;
      if ((v106 & 0x80) != 0)
      {
        if (v105 != 2)
        {
          if (v105 <= 2)
          {
            goto LABEL_93;
          }

          p_dst = __dst;
          goto LABEL_92;
        }

        v36 = __dst;
        if (*__dst != 45)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (v106 != 2)
        {
          if (v106 <= 2u)
          {
            goto LABEL_93;
          }

          p_dst = &__dst;
LABEL_92:
          if (*p_dst != 11565)
          {
LABEL_93:
            __p[0] = 0;
            __p[1] = 0;
            v103 = 0;
LABEL_94:
            if (v30)
            {
              v52 = HIBYTE(v108);
              if (v108 < 0)
              {
                v52 = v107[1];
              }

              if (v52)
              {
                cva::ProgramOptions::Private::addValue(*v7, v107, &__dst);
                if (SHIBYTE(v103) < 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_217;
              }

              goto LABEL_216;
            }

            if ((v106 & 0x80u) == 0)
            {
              v53 = v106;
            }

            else
            {
              v53 = v105;
            }

            if (v53 + 20 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_245;
            }

            v54 = *v7;
            if (v53 + 20 >= 0x17)
            {
              operator new();
            }

            HIDWORD(v100.__r_.__value_.__r.__words[2]) = 0;
            *(&v100.__r_.__value_.__s + 23) = v53 + 20;
            qmemcpy(&v100, "Unexpected argument ", 20);
            if (v53)
            {
              if ((v106 & 0x80u) == 0)
              {
                v55 = &__dst;
              }

              else
              {
                v55 = __dst;
              }

              memmove(&v100.__r_.__value_.__r.__words[2] + 4, v55, v53);
            }

            *(&v100.__r_.__value_.__r.__words[2] + v53 + 4) = 0;
            size = SHIBYTE(v100.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              size = v100.__r_.__value_.__l.__size_;
              v64 = (v100.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v64 - v100.__r_.__value_.__l.__size_ < 0x17)
              {
                if (0x7FFFFFFFFFFFFFF7 - (v100.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v100.__r_.__value_.__l.__size_ + 23 - v64)
                {
                  goto LABEL_245;
                }

LABEL_149:
                operator new();
              }

              v66 = v100.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0x17)
              {
                goto LABEL_149;
              }

              v66 = &v100;
            }

            qmemcpy(v66 + size, " while parsing command ", 23);
            v69 = size + 23;
            if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
            {
              v100.__r_.__value_.__l.__size_ = size + 23;
            }

            else
            {
              *(&v100.__r_.__value_.__s + 23) = v69 & 0x7F;
            }

            v66->__r_.__value_.__s.__data_[v69] = 0;
            v101 = v100;
            memset(&v100, 0, sizeof(v100));
            if (v108 >= 0)
            {
              v70 = v107;
            }

            else
            {
              v70 = v107[0];
            }

            if (v108 >= 0)
            {
              v71 = HIBYTE(v108);
            }

            else
            {
              v71 = v107[1];
            }

            v72 = std::string::append(&v101, v70, v71);
            *&v109[0].__locale_ = *&v72->__r_.__value_.__l.__data_;
            v110 = v72->__r_.__value_.__r.__words[2];
            v72->__r_.__value_.__r.__words[0] = 0;
            v72->__r_.__value_.__l.__size_ = 0;
            v72->__r_.__value_.__r.__words[2] = 0;
            sub_245065C58(v54 + 72, v109);
            if (SHIBYTE(v110) < 0)
            {
              operator delete(v109[0].__locale_);
              if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_178;
              }

LABEL_174:
              if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
              {
LABEL_179:
                operator delete(v100.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_174;
              }

LABEL_178:
              operator delete(v101.__r_.__value_.__l.__data_);
              if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_179;
              }
            }

            v30 = 0;
            if (SHIBYTE(v103) < 0)
            {
              goto LABEL_29;
            }

            goto LABEL_217;
          }

          if ((v106 & 0x80) != 0)
          {
            v35 = v105;
            if (v105 < 2)
            {
              sub_24504FAF4();
            }

            v65 = __dst;
          }

          else
          {
            v65 = &__dst;
          }

          v74 = v35 - 2;
          if (v35 - 2 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_245;
          }

          if (v74 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v103) = v35 - 2;
          if (v35 != 2)
          {
            memmove(__p, v65 + 2, v74);
          }

          *(__p + v74) = 0;
          v37 = SHIBYTE(v103);
          v75 = HIBYTE(v103);
          if (v103 < 0)
          {
            v75 = __p[1];
          }

          if (!v75)
          {
            goto LABEL_94;
          }

          goto LABEL_44;
        }

        if (__dst != 45)
        {
          goto LABEL_93;
        }

        v36 = &__dst;
      }

      v37 = 1;
      HIBYTE(v103) = 1;
      LOWORD(__p[0]) = *(v36 + 1);
LABEL_44:
      v38 = *v7;
      v40 = *(*v7 + 120);
      v39 = *(*v7 + 128);
      if (v40 == v39)
      {
        goto LABEL_81;
      }

      v42 = __p[0];
      v41 = __p[1];
      if (v37 >= 0)
      {
        v43 = v37;
      }

      else
      {
        v43 = __p[1];
      }

      if (v37 >= 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = __p[0];
      }

      while (1)
      {
        if (*(v40 + 23) < 0)
        {
          sub_24505989C(v109, *v40, *(v40 + 8));
          if ((*(v40 + 47) & 0x80000000) == 0)
          {
LABEL_53:
            v111 = *(v40 + 24);
            v112 = *(v40 + 40);
            if (!v43)
            {
              goto LABEL_72;
            }

            goto LABEL_57;
          }
        }

        else
        {
          *&v109[0].__locale_ = *v40;
          v110 = *(v40 + 16);
          if ((*(v40 + 47) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }
        }

        sub_24505989C(&v111, *(v40 + 24), *(v40 + 32));
        if (!v43)
        {
          goto LABEL_72;
        }

LABEL_57:
        locale = HIBYTE(v110);
        if (v110 < 0)
        {
          locale = v109[1].__locale_;
        }

        if (v43 == locale && (v110 >= 0 ? (v46 = v109) : (v46 = v109[0].__locale_), !memcmp(v44, v46, v43)))
        {
          v49 = 1;
          if ((SHIBYTE(v112) & 0x80000000) == 0)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v47 = HIBYTE(v112);
          if (v112 < 0)
          {
            v47 = *(&v111 + 1);
          }

          if (v43 != v47)
          {
LABEL_72:
            v49 = 0;
            if ((SHIBYTE(v112) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_77;
          }

          if (v112 >= 0)
          {
            v48 = &v111;
          }

          else
          {
            v48 = v111;
          }

          v49 = memcmp(v44, v48, v43) == 0;
          if ((SHIBYTE(v112) & 0x80000000) == 0)
          {
LABEL_73:
            if ((SHIBYTE(v110) & 0x80000000) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_78;
          }
        }

LABEL_77:
        operator delete(v111);
        if ((SHIBYTE(v110) & 0x80000000) == 0)
        {
LABEL_74:
          if (v49)
          {
            break;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109[0].__locale_);
        if (v49)
        {
          break;
        }

LABEL_79:
        v40 += 96;
        if (v40 == v39)
        {
          v7 = v98;
          v38 = *v98;
LABEL_81:
          if (*(v38 + 144))
          {
            goto LABEL_214;
          }

          if (v37 >= 0)
          {
            v50 = v37;
          }

          else
          {
            v50 = __p[1];
          }

          if (v50 + 19 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_245;
          }

          if (v50 + 19 >= 0x17)
          {
            operator new();
          }

          v100.__r_.__value_.__r.__words[2] = 0;
          *(&v100.__r_.__value_.__s + 23) = v50 + 19;
          qmemcpy(&v100, "Unexpected switch: ", 19);
          if (v50)
          {
            if (v37 >= 0)
            {
              v67 = __p;
            }

            else
            {
              v67 = __p[0];
            }

            memmove(&v100.__r_.__value_.__r.__words[2] + 3, v67, v50);
          }

          *(&v100.__r_.__value_.__r.__words[2] + v50 + 3) = 0;
          v68 = SHIBYTE(v100.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v68 = v100.__r_.__value_.__l.__size_;
            v73 = (v100.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v73 - v100.__r_.__value_.__l.__size_ < 0x15)
            {
              if (0x7FFFFFFFFFFFFFF7 - (v100.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= v100.__r_.__value_.__l.__size_ + 21 - v73)
              {
                goto LABEL_182;
              }

              goto LABEL_245;
            }

            v76 = v100.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) - 2) < 0x15)
            {
              if (*(&v100.__r_.__value_.__s + 23))
              {
LABEL_182:
                operator new();
              }

LABEL_245:
              sub_24504FAF4();
            }

            v76 = &v100;
          }

          qmemcpy(v76 + v68, " while parsing token ", 21);
          v77 = v68 + 21;
          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            v100.__r_.__value_.__l.__size_ = v68 + 21;
          }

          else
          {
            *(&v100.__r_.__value_.__s + 23) = v77 & 0x7F;
          }

          v76->__r_.__value_.__s.__data_[v77] = 0;
          v101 = v100;
          memset(&v100, 0, sizeof(v100));
          if ((v106 & 0x80u) == 0)
          {
            v78 = &__dst;
          }

          else
          {
            v78 = __dst;
          }

          if ((v106 & 0x80u) == 0)
          {
            v79 = v106;
          }

          else
          {
            v79 = v105;
          }

          v80 = std::string::append(&v101, v78, v79);
          *&v109[0].__locale_ = *&v80->__r_.__value_.__l.__data_;
          v110 = v80->__r_.__value_.__r.__words[2];
          v80->__r_.__value_.__r.__words[0] = 0;
          v80->__r_.__value_.__l.__size_ = 0;
          v80->__r_.__value_.__r.__words[2] = 0;
          sub_245065C58(v38 + 72, v109);
          if ((SHIBYTE(v110) & 0x80000000) == 0)
          {
            if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_213;
            }

LABEL_220:
            operator delete(v101.__r_.__value_.__l.__data_);
            if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_221;
            }

LABEL_214:
            if ((SHIBYTE(v108) & 0x80000000) == 0)
            {
              goto LABEL_215;
            }

LABEL_222:
            *v107[0] = 0;
            v107[1] = 0;
            v30 = -1;
            if (SHIBYTE(v103) < 0)
            {
              goto LABEL_29;
            }

LABEL_217:
            if (v106 < 0)
            {
              goto LABEL_218;
            }

            goto LABEL_30;
          }

          operator delete(v109[0].__locale_);
          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_220;
          }

LABEL_213:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_214;
          }

LABEL_221:
          operator delete(v100.__r_.__value_.__l.__data_);
          if (SHIBYTE(v108) < 0)
          {
            goto LABEL_222;
          }

LABEL_215:
          LOBYTE(v107[0]) = 0;
          HIBYTE(v108) = 0;
          v30 = -1;
LABEL_216:
          if (SHIBYTE(v103) < 0)
          {
            goto LABEL_29;
          }

          goto LABEL_217;
        }
      }

      v57 = *(*v98 + 120);
      v58 = *(*v98 + 128);
      if (v57 == v58)
      {
LABEL_144:
        v30 = 0;
        if (SHIBYTE(v108) < 0)
        {
          goto LABEL_197;
        }

        goto LABEL_145;
      }

      while (2)
      {
        if (*(v57 + 23) < 0)
        {
          sub_24505989C(v109, *v57, *(v57 + 8));
          if (*(v57 + 47) < 0)
          {
            goto LABEL_120;
          }

LABEL_117:
          v111 = *(v57 + 24);
          v112 = *(v57 + 40);
          if (!v43)
          {
            goto LABEL_136;
          }

LABEL_121:
          v59 = HIBYTE(v110);
          if (v110 < 0)
          {
            v59 = v109[1].__locale_;
          }

          if (v43 == v59 && (v110 >= 0 ? (v60 = v109) : (v60 = v109[0].__locale_), !memcmp(v44, v60, v43)))
          {
            v63 = 1;
            if ((SHIBYTE(v112) & 0x80000000) == 0)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v61 = HIBYTE(v112);
            if (v112 < 0)
            {
              v61 = *(&v111 + 1);
            }

            if (v43 != v61)
            {
              goto LABEL_136;
            }

            if (v112 >= 0)
            {
              v62 = &v111;
            }

            else
            {
              v62 = v111;
            }

            v63 = memcmp(v44, v62, v43) == 0;
            if ((SHIBYTE(v112) & 0x80000000) == 0)
            {
              goto LABEL_137;
            }
          }

LABEL_141:
          operator delete(v111);
          if ((SHIBYTE(v110) & 0x80000000) == 0)
          {
            goto LABEL_138;
          }

          goto LABEL_142;
        }

        *&v109[0].__locale_ = *v57;
        v110 = *(v57 + 16);
        if ((*(v57 + 47) & 0x80000000) == 0)
        {
          goto LABEL_117;
        }

LABEL_120:
        sub_24505989C(&v111, *(v57 + 24), *(v57 + 32));
        if (v43)
        {
          goto LABEL_121;
        }

LABEL_136:
        v63 = 0;
        if (SHIBYTE(v112) < 0)
        {
          goto LABEL_141;
        }

LABEL_137:
        if ((SHIBYTE(v110) & 0x80000000) == 0)
        {
LABEL_138:
          if (v63)
          {
            break;
          }

          goto LABEL_143;
        }

LABEL_142:
        operator delete(v109[0].__locale_);
        if (!v63)
        {
LABEL_143:
          v57 += 96;
          if (v57 == v58)
          {
            goto LABEL_144;
          }

          continue;
        }

        break;
      }

      v30 = *(v57 + 88);
      if (SHIBYTE(v108) < 0)
      {
LABEL_197:
        sub_24506122C(v107, v44, v43);
        goto LABEL_199;
      }

LABEL_145:
      if (v37 < 0)
      {
        sub_24505A134(v107, v42, v41);
      }

      else
      {
        *v107 = *__p;
        v108 = v103;
      }

LABEL_199:
      v7 = v98;
      cva::ProgramOptions::Private::registerCommand(*v98, __p);
      if ((SHIBYTE(v103) & 0x80000000) == 0)
      {
        goto LABEL_217;
      }

LABEL_29:
      operator delete(__p[0]);
      if ((v106 & 0x80000000) == 0)
      {
        continue;
      }

LABEL_218:
      operator delete(__dst);
LABEL_30:
      ;
    }
  }

  v81 = *v7;
  if ((a5 & 1) == 0 || (HIBYTE(v110) = 4, strcpy(v109, "help"), !cva::ProgramOptions::Private::hasCommand(v81, &v109[0].__locale_)))
  {
    cva::ProgramOptions::Private::checkCommand(v81);
    v83 = *v7;
    if (*(*v7 + 72) != *(*v7 + 80))
    {
      v85 = MEMORY[0x277D82678];
      sub_2450509AC(MEMORY[0x277D82678], "Could not parse commandline:", 28);
      std::ios_base::getloc((v85 + *(*v85 - 24)));
      v86 = std::locale::use_facet(v109, MEMORY[0x277D82680]);
      (v86->__vftable[2].~facet_0)(v86, 10);
      std::locale::~locale(v109);
      std::ostream::put();
      std::ostream::flush();
      v87 = *(*v7 + 72);
      v88 = *(*v7 + 80);
      if (v87 != v88)
      {
        v89 = MEMORY[0x277D82680];
        do
        {
          v90 = *(v87 + 23);
          if (v90 >= 0)
          {
            v91 = v87;
          }

          else
          {
            v91 = *v87;
          }

          if (v90 >= 0)
          {
            v92 = *(v87 + 23);
          }

          else
          {
            v92 = *(v87 + 8);
          }

          sub_2450509AC(v85, v91, v92);
          std::ios_base::getloc((v85 + *(*v85 - 24)));
          v93 = std::locale::use_facet(v109, v89);
          (v93->__vftable[2].~facet_0)(v93, 10);
          std::locale::~locale(v109);
          std::ostream::put();
          std::ostream::flush();
          v87 += 24;
        }

        while (v87 != v88);
      }

      v82 = 0;
      v84 = 1;
      if (SHIBYTE(v108) < 0)
      {
        goto LABEL_240;
      }

      return v82 & v84;
    }

    v82 = 1;
LABEL_243:
    v84 = v82;
    cva::ProgramOptions::Description::set_default_arguments((v83 + 120), v83 + 96);
    v82 = 1;
    if ((SHIBYTE(v108) & 0x80000000) == 0)
    {
      return v82 & v84;
    }

    goto LABEL_240;
  }

  cva::ProgramOptions::display_help(v7, v95);
  v82 = 0;
  v83 = *v7;
  if (*(*v7 + 72) == *(*v7 + 80))
  {
    goto LABEL_243;
  }

  v84 = 0;
  if (SHIBYTE(v108) < 0)
  {
LABEL_240:
    operator delete(v107[0]);
  }

  return v82 & v84;
}

uint64_t *cva::ProgramOptions::display_help(uint64_t **this, const cva::ProgramOptions::Description *a2)
{
  v4 = *this;
  v5 = *this + 6;
  v6 = *(*this + 71);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = v4[6];
    v8 = v4[7];
  }

  else
  {
    v7 = (*this + 6);
    v8 = *(*this + 71);
  }

  v9 = MEMORY[0x277D82678];
  if (v8)
  {
    v10 = (v7 + v8);
    v11 = v7;
    while (*v11 != 10)
    {
      ++v11;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
    v13 = 1;
    if (v11 != v10)
    {
      v27 = &v11[-v7];
      if (&v11[-v7] != -1)
      {
        if ((v6 & 0x80000000) != 0)
        {
          v28 = v4[6];
          v6 = v4[7];
        }

        else
        {
          v28 = *this + 6;
        }

        if (v6 >= v27)
        {
          v38 = &v11[-v7];
        }

        else
        {
          v38 = v6;
        }

        if (v38 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_73;
        }

        if (v38 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v46) = v38;
        if (v38)
        {
          memmove(__p, v28, v38);
        }

        *(__p + v38) = 0;
        sub_2450509AC(v9, "BRIEF:", 6);
        std::ios_base::getloc((v9 + *(*v9 - 24)));
        v39 = MEMORY[0x277D82680];
        v40 = std::locale::use_facet(&v47, MEMORY[0x277D82680]);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&v47);
        std::ostream::put();
        std::ostream::flush();
        if (v46 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        if (v46 >= 0)
        {
          v42 = HIBYTE(v46);
        }

        else
        {
          v42 = __p[1];
        }

        sub_2450509AC(v9, v41, v42);
        std::ios_base::getloc((v9 + *(*v9 - 24)));
        v43 = std::locale::use_facet(&v47, v39);
        (v43->__vftable[2].~facet_0)(v43, 10);
        std::locale::~locale(&v47);
        std::ostream::put();
        std::ostream::flush();
        std::ios_base::getloc((v9 + *(*v9 - 24)));
        v44 = std::locale::use_facet(&v47, v39);
        (v44->__vftable[2].~facet_0)(v44, 10);
        std::locale::~locale(&v47);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p[0]);
        }

        v13 = 0;
        v12 = v27 + 1;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = 0;
    v13 = 1;
  }

  sub_2450509AC(v9, "SYNOPSIS:", 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v14 = MEMORY[0x277D82680];
  v15 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v16 = *(*this + 23);
  if (v16 >= 0)
  {
    v17 = *this;
  }

  else
  {
    v17 = **this;
  }

  if (v16 >= 0)
  {
    v18 = *(*this + 23);
  }

  else
  {
    v18 = (*this)[1];
  }

  v19 = sub_2450509AC(v9, v17, v18);
  v20 = sub_2450509AC(v19, " ", 1);
  v21 = *(*this + 47);
  if (v21 >= 0)
  {
    v22 = (*this + 3);
  }

  else
  {
    v22 = (*this)[3];
  }

  if (v21 >= 0)
  {
    v23 = *(*this + 47);
  }

  else
  {
    v23 = (*this)[4];
  }

  sub_2450509AC(v20, v22, v23);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v24 = std::locale::use_facet(__p, v14);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v25 = std::locale::use_facet(__p, v14);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v26 = *(v4 + 71);
  if ((v26 & 0x8000000000000000) != 0)
  {
    if (!v4[7])
    {
      goto LABEL_53;
    }
  }

  else if (!*(v4 + 71))
  {
    goto LABEL_53;
  }

  if (!v13)
  {
    if ((v26 & 0x80000000) != 0)
    {
      v26 = v4[7];
      if (v26 < v12)
      {
        goto LABEL_74;
      }

      v5 = *v5;
    }

    else if (v12 > v26)
    {
LABEL_74:
      sub_24504FAF4();
    }

    v29 = v26 - v12;
    if (v26 - v12 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v29 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v46) = v26 - v12;
      if (v26 != v12)
      {
        memmove(__p, &v12[v5], v29);
      }

      *(__p + v29) = 0;
      goto LABEL_45;
    }

LABEL_73:
    sub_24504FAF4();
  }

  if ((v26 & 0x80000000) != 0)
  {
    sub_24505989C(__p, v4[6], v4[7]);
  }

  else
  {
    *__p = *v5;
    v46 = v5[2];
  }

LABEL_45:
  sub_2450509AC(v9, "DESCRIPTION:", 12);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v30 = MEMORY[0x277D82680];
  v31 = std::locale::use_facet(&v47, MEMORY[0x277D82680]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  if (v46 >= 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if (v46 >= 0)
  {
    v33 = HIBYTE(v46);
  }

  else
  {
    v33 = __p[1];
  }

  sub_2450509AC(v9, v32, v33);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v34 = std::locale::use_facet(&v47, v30);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v35 = std::locale::use_facet(&v47, v30);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_53:
  sub_2450509AC(v9, "OPTIONS:", 8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v36 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  return cva::ProgramOptions::Description::display_help(a2);
}

void cva::ProgramOptions::Description::set_default_arguments(__int128 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (!*(v2 + 6))
      {
        goto LABEL_4;
      }

      if (*(v2 + 23) < 0)
      {
        sub_24505989C(__p, *v2, *(v2 + 1));
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
LABEL_8:
          v6 = *(v2 + 24);
          v21 = *(v2 + 5);
          v20 = v6;
          goto LABEL_11;
        }
      }

      else
      {
        v5 = *v2;
        v19 = *(v2 + 2);
        *__p = v5;
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }
      }

      sub_24505989C(&v20, *(v2 + 3), *(v2 + 4));
LABEL_11:
      v22 = __p;
      v7 = sub_245076DEC(a2, __p);
      v8 = v7[10];
      v9 = v7[11];
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
        if ((SHIBYTE(v19) & 0x80000000) == 0)
        {
LABEL_15:
          if (v8 != v9)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      else if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(__p[0]);
      if (v8 != v9)
      {
        goto LABEL_4;
      }

LABEL_16:
      if (*(v2 + 23) < 0)
      {
        sub_24505989C(__p, *v2, *(v2 + 1));
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
LABEL_18:
          v11 = *(v2 + 24);
          v21 = *(v2 + 5);
          v20 = v11;
          goto LABEL_21;
        }
      }

      else
      {
        v10 = *v2;
        v19 = *(v2 + 2);
        *__p = v10;
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_24505989C(&v20, *(v2 + 3), *(v2 + 4));
LABEL_21:
      v22 = __p;
      v12 = sub_245076DEC(a2, __p);
      v13 = v12;
      v14 = *(v2 + 6);
      v15 = v12[11];
      if (v15 >= v12[12])
      {
        v17 = sub_245077364((v12 + 10), v14);
      }

      else
      {
        if (*(v14 + 23) < 0)
        {
          sub_24505989C(v12[11], *v14, *(v14 + 8));
        }

        else
        {
          v16 = *v14;
          *(v15 + 16) = *(v14 + 16);
          *v15 = v16;
        }

        v17 = v15 + 24;
      }

      v13[11] = v17;
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
        if (SHIBYTE(v19) < 0)
        {
LABEL_31:
          operator delete(__p[0]);
        }
      }

      else if (SHIBYTE(v19) < 0)
      {
        goto LABEL_31;
      }

LABEL_4:
      v2 += 6;
    }

    while (v2 != v3);
  }
}

uint64_t *cva::ProgramOptions::Description::display_help(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    v3 = MEMORY[0x277D82678];
    v4 = MEMORY[0x277D82680];
    do
    {
      v16 = *(v1 + 47);
      if (v16 < 0)
      {
        if (*(v1 + 32))
        {
          goto LABEL_17;
        }
      }

      else if (*(v1 + 47))
      {
        goto LABEL_17;
      }

      if ((*(v1 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v1 + 8))
        {
LABEL_50:
          v5 = v3;
          v6 = "\n\n";
          v7 = 2;
          goto LABEL_4;
        }
      }

      else if (!*(v1 + 23))
      {
        goto LABEL_50;
      }

LABEL_17:
      if ((v16 & 0x80000000) != 0)
      {
        if (!*(v1 + 32))
        {
LABEL_30:
          v21 = sub_2450509AC(v3, "--", 2);
          v22 = *(v1 + 23);
          if (v22 >= 0)
          {
            v23 = v1;
          }

          else
          {
            v23 = *v1;
          }

          if (v22 >= 0)
          {
            v24 = *(v1 + 23);
          }

          else
          {
            v24 = *(v1 + 8);
          }

          goto LABEL_44;
        }
      }

      else if (!*(v1 + 47))
      {
        goto LABEL_30;
      }

      v17 = sub_2450509AC(v3, "-", 1);
      v18 = *(v1 + 47);
      if (v18 >= 0)
      {
        v19 = v1 + 24;
      }

      else
      {
        v19 = *(v1 + 24);
      }

      if (v18 >= 0)
      {
        v20 = *(v1 + 47);
      }

      else
      {
        v20 = *(v1 + 32);
      }

      sub_2450509AC(v17, v19, v20);
      if ((*(v1 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v1 + 8))
        {
LABEL_27:
          if (*(v1 + 88))
          {
            goto LABEL_45;
          }

          goto LABEL_3;
        }
      }

      else if (!*(v1 + 23))
      {
        goto LABEL_27;
      }

      v25 = sub_2450509AC(v3, " [ --", 5);
      v26 = *(v1 + 23);
      if (v26 >= 0)
      {
        v27 = v1;
      }

      else
      {
        v27 = *v1;
      }

      if (v26 >= 0)
      {
        v28 = *(v1 + 23);
      }

      else
      {
        v28 = *(v1 + 8);
      }

      v21 = sub_2450509AC(v25, v27, v28);
      v23 = " ]";
      v24 = 2;
LABEL_44:
      sub_2450509AC(v21, v23, v24);
      if (*(v1 + 88))
      {
LABEL_45:
        sub_2450509AC(v3, " ", 1);
        v29 = *(v1 + 48);
        if (!v29)
        {
          goto LABEL_53;
        }

        if (*(v29 + 23) < 0)
        {
          v31 = *(v29 + 1);
          if (!v31)
          {
            goto LABEL_53;
          }

          sub_24505989C(__p, *v29, v31);
        }

        else
        {
          if (*(v29 + 23))
          {
            v30 = *v29;
            v35 = *(v29 + 2);
            *__p = v30;
            goto LABEL_54;
          }

LABEL_53:
          HIBYTE(v35) = 3;
          LODWORD(__p[0]) = 6779489;
        }

LABEL_54:
        if (v35 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = __p[0];
        }

        if (v35 >= 0)
        {
          v33 = HIBYTE(v35);
        }

        else
        {
          v33 = __p[1];
        }

        sub_2450509AC(v3, v32, v33);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_3:
      v5 = v3;
      v6 = "\n";
      v7 = 1;
LABEL_4:
      sub_2450509AC(v5, v6, v7);
      v10 = *(v1 + 64);
      v9 = v1 + 64;
      v8 = v10;
      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = *(v9 + 8);
      }

      v14 = sub_2450509AC(v3, v12, v13);
      sub_2450509AC(v14, "\n", 1);
      std::ios_base::getloc((v3 + *(*v3 - 24)));
      v15 = std::locale::use_facet(__p, v4);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      this = std::ostream::flush();
      v1 = v9 + 32;
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t sub_2450797FC(uint64_t a1, size_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    if (*(a1 + 23) < 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v5 = v2[1];
      }

      sub_24506122C(a1, a2, v5);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_24505A134(a1, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v4;
    }

    v6 = *(v2 + 47);
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      if ((*(v2 + 47) & 0x80) != 0)
      {
        sub_24505A134((a1 + 24), v2[3], v2[4]);
        v9 = v2[6];
        v8 = v2[7];
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v7 = *(v2 + 3);
        *(a1 + 40) = v2[5];
        *(a1 + 24) = v7;
        v9 = v2[6];
        v8 = v2[7];
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }

    if (v6 >= 0)
    {
      v10 = v2 + 3;
    }

    else
    {
      v10 = v2[3];
    }

    if (v6 >= 0)
    {
      v11 = *(v2 + 47);
    }

    else
    {
      v11 = v2[4];
    }

    sub_24506122C((a1 + 24), v10, v11);
  }

  v9 = v2[6];
  v8 = v2[7];
  if (v8)
  {
LABEL_22:
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_23:
  v12 = *(a1 + 56);
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (a1 != v2)
  {
    v13 = *(v2 + 87);
    if (*(a1 + 87) < 0)
    {
      if (v13 >= 0)
      {
        v15 = v2 + 8;
      }

      else
      {
        v15 = v2[8];
      }

      if (v13 >= 0)
      {
        v16 = *(v2 + 87);
      }

      else
      {
        v16 = v2[9];
      }

      sub_24506122C((a1 + 64), v15, v16);
    }

    else if ((*(v2 + 87) & 0x80) != 0)
    {
      sub_24505A134((a1 + 64), v2[8], v2[9]);
    }

    else
    {
      v14 = *(v2 + 4);
      *(a1 + 80) = v2[10];
      *(a1 + 64) = v14;
    }
  }

  v17 = *(v2 + 22);
  *(a1 + 92) = *(v2 + 92);
  *(a1 + 88) = v17;
  return a1;
}

void *sub_2450799B4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      result = (v4 + v7);
      v10 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        result = sub_24505989C(result, *v10, *(v10 + 1));
      }

      else
      {
        v11 = *v10;
        result[2] = *(v10 + 2);
        *result = v11;
      }

      v12 = v4 + v7;
      v13 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        result = sub_24505989C((v12 + 24), *(v13 + 24), *(v13 + 32));
      }

      else
      {
        v14 = *(v13 + 24);
        *(v12 + 40) = *(v13 + 40);
        *(v12 + 24) = v14;
      }

      v15 = v4 + v7;
      v16 = a2 + v7;
      v17 = *(a2 + v7 + 56);
      *(v15 + 48) = *(a2 + v7 + 48);
      *(v15 + 56) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(v16 + 87) < 0)
      {
        result = sub_24505989C((v15 + 64), *(v16 + 64), *(a2 + v7 + 72));
      }

      else
      {
        v18 = *(v16 + 64);
        *(v15 + 80) = *(v16 + 80);
        *(v15 + 64) = v18;
      }

      v8 = v4 + v7;
      v9 = *(a2 + v7 + 88);
      *(v8 + 92) = *(a2 + v7 + 92);
      *(v8 + 88) = v9;
      v7 += 96;
    }

    while (a2 + v7 != a3);
    v4 += v7;
  }

  v3[1] = v4;
  return result;
}

BOOL cva::ProgramOptions::Description::has(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  do
  {
    result = sub_245076C7C(v2, a2);
    if (result)
    {
      break;
    }

    v2 += 96;
  }

  while (v2 != v3);
  return result;
}

uint64_t cva::ProgramOptions::Description::expected_args(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  while (!sub_245076C7C(v2, a2))
  {
    v2 += 96;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return *(v2 + 88);
}

uint64_t *cva::ProgramOptions::as_string@<X0>(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = cva::ProgramOptions::Private::getValues(*a1, a2);
  v5 = *result;
  if (*result == result[1])
  {
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  else if (*(v5 + 23) < 0)
  {
    v6 = *v5;
    v7 = *(v5 + 8);

    return sub_24505989C(a3, v6, v7);
  }

  else
  {
    *a3 = *v5;
    *(a3 + 16) = *(v5 + 16);
  }

  return result;
}

char *cva::ProgramOptions::as_c_str(uint64_t *a1, const void **a2)
{
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  result = *Values;
  if (*Values == Values[1])
  {
    return &unk_24508C2EB;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t cva::ProgramOptions::as_int(uint64_t *a1, const void **a2)
{
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v3 = *Values;
  if (*Values == Values[1])
  {
    v3 = &unk_24508C2EB;
  }

  else if (v3[23] < 0)
  {
    v3 = *v3;
  }

  return atoi(v3);
}

BOOL cva::ProgramOptions::as_BOOL(uint64_t *a1, const void **a2)
{
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v3 = *Values;
  if (*Values == Values[1])
  {
    HIBYTE(v29) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else if (*(v3 + 23) < 0)
  {
    sub_24505989C(__p, *v3, *(v3 + 8));
  }

  else
  {
    *__p = *v3;
    v29 = *(v3 + 16);
  }

  v4 = HIBYTE(v29);
  v5 = SHIBYTE(v29);
  v6 = __p[1];
  if (v29 < 0)
  {
    v4 = __p[1];
  }

  if (v4 == 2)
  {
    if (v29 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    v22 = *v21;
    v23 = __toupper(111);
    if (v23 != __toupper(v22))
    {
      goto LABEL_32;
    }

    v14 = *(v21 + 1);
    v15 = 110;
  }

  else if (v4 == 3)
  {
    if (v29 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    v17 = *v16;
    v18 = __toupper(121);
    if (v18 != __toupper(v17))
    {
      goto LABEL_32;
    }

    v19 = *(v16 + 1);
    v20 = __toupper(101);
    if (v20 != __toupper(v19))
    {
      goto LABEL_32;
    }

    v14 = *(v16 + 2);
    v15 = 115;
  }

  else
  {
    if (v4 != 4)
    {
      goto LABEL_32;
    }

    v7 = v29 >= 0 ? __p : __p[0];
    v8 = *v7;
    v9 = __toupper(116);
    if (v9 != __toupper(v8))
    {
      goto LABEL_32;
    }

    v10 = v7[1];
    v11 = __toupper(114);
    if (v11 != __toupper(v10))
    {
      goto LABEL_32;
    }

    v12 = v7[2];
    v13 = __toupper(117);
    if (v13 != __toupper(v12))
    {
      goto LABEL_32;
    }

    v14 = v7[3];
    v15 = 101;
  }

  v24 = __toupper(v15);
  if (v24 == __toupper(v14))
  {
    v25 = 1;
    if (v5 < 0)
    {
      goto LABEL_41;
    }

    return v25;
  }

LABEL_32:
  if (v5 < 0)
  {
    if (v6 != 1)
    {
      v25 = 0;
LABEL_41:
      operator delete(__p[0]);
      return v25;
    }

    v26 = __p[0];
  }

  else
  {
    if (v5 != 1)
    {
      return 0;
    }

    v26 = __p;
  }

  v25 = *v26 == 49;
  if (v5 < 0)
  {
    goto LABEL_41;
  }

  return v25;
}

double cva::ProgramOptions::as_double(uint64_t *a1, const void **a2)
{
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v3 = *Values;
  if (*Values == Values[1])
  {
    v3 = &unk_24508C2EB;
  }

  else if (v3[23] < 0)
  {
    v3 = *v3;
  }

  return atof(v3);
}

float cva::ProgramOptions::as_float(uint64_t *a1, const void **a2)
{
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v3 = *Values;
  if (*Values == Values[1])
  {
    v3 = &unk_24508C2EB;
  }

  else if (v3[23] < 0)
  {
    v3 = *v3;
  }

  return atof(v3);
}

void cva::ProgramOptions::as_vector_int(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v5 = *Values;
  v6 = Values[1];
  if (*Values != v6)
  {
    v7 = 0;
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_24505989C(__p, *v5, *(v5 + 8));
      }

      else
      {
        *__p = *v5;
        v14 = *(v5 + 16);
      }

      v8 = HIBYTE(v14);
      if (v14 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = atoi(v9);
      v11 = v7;
      v12 = v7 >> 2;
      if (((v7 >> 2) + 1) >> 62)
      {
        a3[1] = v7;
        a3[2] = 0;
        *a3 = 0;
        sub_24504FAF4();
      }

      if (v7 >> 2 != -1)
      {
        if (!(((v7 >> 2) + 1) >> 62))
        {
          operator new();
        }

        a3[1] = v7;
        a3[2] = 0;
        *a3 = 0;
        sub_24504FAF4();
      }

      *(4 * v12) = v10;
      v7 = 4 * v12 + 4;
      memcpy(0, 0, v11);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 24;
    }

    while (v5 != v6);
    a3[1] = v7;
    a3[2] = 0;
    *a3 = 0;
  }
}

void cva::ProgramOptions::as_vector_double(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v5 = *Values;
  v6 = Values[1];
  if (*Values != v6)
  {
    v7 = 0;
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_24505989C(__p, *v5, *(v5 + 8));
      }

      else
      {
        *__p = *v5;
        v14 = *(v5 + 16);
      }

      v8 = HIBYTE(v14);
      if (v14 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = atof(v9);
      v11 = v7;
      v12 = v7 >> 3;
      if (((v7 >> 3) + 1) >> 61)
      {
        a3[1] = v7;
        a3[2] = 0;
        *a3 = 0;
        sub_24504FAF4();
      }

      if (v7 >> 3 != -1)
      {
        if (!(((v7 >> 3) + 1) >> 61))
        {
          operator new();
        }

        a3[1] = v7;
        a3[2] = 0;
        *a3 = 0;
        sub_24504FAF4();
      }

      *(8 * v12) = v10;
      v7 = 8 * v12 + 8;
      memcpy(0, 0, v11);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 24;
    }

    while (v5 != v6);
    a3[1] = v7;
    a3[2] = 0;
    *a3 = 0;
  }
}

void cva::ProgramOptions::as_vector_float(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  Values = cva::ProgramOptions::Private::getValues(*a1, a2);
  v5 = *Values;
  v6 = Values[1];
  if (*Values != v6)
  {
    v7 = 0;
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_24505989C(__p, *v5, *(v5 + 8));
      }

      else
      {
        *__p = *v5;
        v14 = *(v5 + 16);
      }

      v8 = HIBYTE(v14);
      if (v14 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = atof(v9);
      v11 = v7;
      v12 = v7 >> 2;
      if (((v7 >> 2) + 1) >> 62)
      {
        a3[1] = v7;
        a3[2] = 0;
        *a3 = 0;
        sub_24504FAF4();
      }

      if (v7 >> 2 != -1)
      {
        if (!(((v7 >> 2) + 1) >> 62))
        {
          operator new();
        }

        a3[1] = v7;
        a3[2] = 0;
        *a3 = 0;
        sub_24504FAF4();
      }

      *(4 * v12) = v10;
      v7 = 4 * v12 + 4;
      memcpy(0, 0, v11);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 24;
    }

    while (v5 != v6);
    a3[1] = v7;
    a3[2] = 0;
    *a3 = 0;
  }
}

uint64_t *cva::ProgramOptions::Description::newGroupHeader(uint64_t *a1, const void **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 < v5)
  {
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    v6 = v4 + 6;
    goto LABEL_28;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
  v8 = v7 + 1;
  if (v7 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_24504FAF4();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x155555555555555)
  {
    v10 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  v25 = a1;
  if (v10)
  {
    if (v10 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  v11 = 96 * v7;
  __p = 0;
  v22 = v11;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  v23 = 96 * v7 + 96;
  v24 = 0;
  sub_24507A724(a1, &__p);
  v6 = a1[1];
  v12 = v22;
  v13 = v23;
  while (v23 != v12)
  {
    v23 = v13 - 96;
    if (*(v13 - 9) < 0)
    {
      operator delete(*(v13 - 32));
      v14 = *(v13 - 40);
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(v13 - 40);
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    if (atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_20:
      if ((*(v13 - 49) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((*(v13 - 49) & 0x80000000) == 0)
    {
LABEL_21:
      if (*(v13 - 73) < 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

LABEL_24:
    operator delete(*(v13 - 72));
    if (*(v13 - 73) < 0)
    {
LABEL_25:
      operator delete(*(v13 - 96));
    }

LABEL_14:
    v13 = v23;
  }

  if (__p)
  {
    operator delete(__p);
  }

LABEL_28:
  a1[1] = v6;
  v15 = (v6 - 2);
  if (v6 - 2 != a2)
  {
    v16 = *(a2 + 23);
    if (*(v6 - 9) < 0)
    {
      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v16 >= 0)
      {
        v19 = *(a2 + 23);
      }

      else
      {
        v19 = a2[1];
      }

      sub_24506122C(v15, v18, v19);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_24505A134(v15, *a2, a2[1]);
    }

    else
    {
      v17 = *a2;
      *(v6 - 2) = a2[2];
      *v15 = v17;
    }
  }

  return a1;
}

void sub_24507A724(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 5);
      *(v8 + 24) = v10;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 3) = 0;
      *(v8 + 48) = v7[3];
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      v11 = v7[4];
      *(v8 + 80) = *(v7 + 10);
      *(v8 + 64) = v11;
      *(v7 + 9) = 0;
      *(v7 + 10) = 0;
      *(v7 + 8) = 0;
      v12 = *(v7 + 22);
      *(v8 + 92) = *(v7 + 92);
      *(v8 + 88) = v12;
      v7 += 6;
      v8 += 96;
    }

    while (v7 != v5);
    while (1)
    {
      if (*(v4 + 87) < 0)
      {
        operator delete(*(v4 + 64));
        v13 = *(v4 + 56);
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = *(v4 + 56);
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_11:
        if ((*(v4 + 47) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if ((*(v4 + 47) & 0x80000000) == 0)
      {
LABEL_12:
        if (*(v4 + 23) < 0)
        {
          goto LABEL_16;
        }

        goto LABEL_5;
      }

LABEL_15:
      operator delete(*(v4 + 24));
      if (*(v4 + 23) < 0)
      {
LABEL_16:
        operator delete(*v4);
      }

LABEL_5:
      v4 += 96;
      if (v4 == v5)
      {
        v4 = *a1;
        break;
      }
    }
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t *cva::ProgramOptions::Description::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, int a6)
{
  v67 = 0;
  v65 = 0u;
  *v66 = 0u;
  memset(v64, 0, sizeof(v64));
  *__dst = 0u;
  __p[0] = 0;
  __p[1] = 0;
  v62 = 0;
  cva::utils::string::split(__p, a2, ",", 1);
  v11 = __p[0];
  if ((__p[1] - __p[0]) == 24)
  {
    HIBYTE(v64[3]) = 0;
    LOBYTE(v64[1]) = 0;
    v64[0] = v64[3];
    *__dst = *&v64[1];
    v12 = *(__p[0] + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      if (*(__p[0] + 1) >= 2uLL)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *(__p[0] + 23);
      if (v12 >= 2)
      {
LABEL_4:
        if (__dst == __p[0])
        {
          goto LABEL_53;
        }

        if ((SHIBYTE(v64[0]) & 0x80000000) == 0)
        {
          if ((v12 & 0x80000000) == 0)
          {
            v14 = *__p[0];
            v64[0] = *(__p[0] + 2);
            *__dst = v14;
            goto LABEL_53;
          }

          v31 = *__p[0];
          v32 = *(__p[0] + 1);
          v25 = __dst;
          goto LABEL_52;
        }

        if ((v12 & 0x80000000) == 0)
        {
          v29 = __p[0];
        }

        else
        {
          v29 = *__p[0];
        }

        if ((v12 & 0x80000000) == 0)
        {
          v30 = *(__p[0] + 23);
        }

        else
        {
          v30 = *(__p[0] + 1);
        }

        v25 = __dst;
LABEL_49:
        sub_24506122C(v25, v29, v30);
        goto LABEL_53;
      }
    }

    v25 = &v64[1];
    if (&v64[1] == __p[0])
    {
      goto LABEL_53;
    }

    if ((v12 & 0x80000000) == 0)
    {
      v27 = *__p[0];
      v28 = *(__p[0] + 2);
      goto LABEL_29;
    }

    v31 = *__p[0];
    v32 = *(__p[0] + 1);
    goto LABEL_52;
  }

  v15 = *(__p[0] + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = *(__p[0] + 23);
    v17 = *(__p[0] + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = *(__p[0] + 1);
  v17 = *(__p[0] + 47);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_10:
    v17 = *(__p[0] + 4);
  }

LABEL_11:
  v18 = v16 > v17;
  v19 = 24;
  if (v18)
  {
    v19 = 0;
  }

  v20 = (__p[0] + v19);
  if (__dst == v20)
  {
LABEL_16:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  if ((*(v20 + 23) & 0x80000000) == 0)
  {
    v21 = *v20;
    v64[0] = v20[2];
    *__dst = v21;
    goto LABEL_16;
  }

  sub_24505A134(__dst, *v20, v20[1]);
  LOBYTE(v15) = v11[23];
  if ((v15 & 0x80) == 0)
  {
LABEL_17:
    v15 = v15;
    v22 = v11[47];
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  v15 = *(v11 + 1);
  v22 = v11[47];
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_18:
    v22 = *(v11 + 4);
  }

LABEL_19:
  v18 = v15 > v22;
  v23 = 24;
  if (!v18)
  {
    v23 = 0;
  }

  v24 = &v11[v23];
  v25 = &v64[1];
  if (&v64[1] != v24)
  {
    v26 = *(v24 + 23);
    if (SHIBYTE(v64[3]) < 0)
    {
      if (v26 >= 0)
      {
        v29 = v24;
      }

      else
      {
        v29 = *v24;
      }

      if (v26 >= 0)
      {
        v30 = *(v24 + 23);
      }

      else
      {
        v30 = v24[1];
      }

      goto LABEL_49;
    }

    if ((*(v24 + 23) & 0x80) == 0)
    {
      v27 = *v24;
      v28 = v24[2];
LABEL_29:
      v64[3] = v28;
      *&v64[1] = v27;
      goto LABEL_53;
    }

    v31 = *v24;
    v32 = v24[1];
LABEL_52:
    sub_24505A134(v25, v31, v32);
  }

LABEL_53:
  if (v66 != a5)
  {
    v33 = *(a5 + 23);
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
      if ((*(a5 + 23) & 0x80) != 0)
      {
        sub_24505A134(v66, *a5, *(a5 + 8));
        v35 = *a3;
        v34 = a3[1];
        if (!v34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        *v66 = *a5;
        v67 = *(a5 + 16);
        v35 = *a3;
        v34 = a3[1];
        if (!v34)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_66;
    }

    if (v33 >= 0)
    {
      v36 = a5;
    }

    else
    {
      v36 = *a5;
    }

    if (v33 >= 0)
    {
      v37 = *(a5 + 23);
    }

    else
    {
      v37 = *(a5 + 8);
    }

    sub_24506122C(v66, v36, v37);
  }

  v35 = *a3;
  v34 = a3[1];
  if (v34)
  {
LABEL_66:
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_67:
  v38 = *(&v65 + 1);
  *&v65 = v35;
  *(&v65 + 1) = v34;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v68 = a4;
  v69 = a6 == 1;
  v40 = a1[1];
  v39 = a1[2];
  if (v40 < v39)
  {
    if (SHIBYTE(v64[0]) < 0)
    {
      sub_24505989C(a1[1], __dst[0], __dst[1]);
      if ((SHIBYTE(v64[3]) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v41 = *__dst;
      *(v40 + 16) = v64[0];
      *v40 = v41;
      if ((SHIBYTE(v64[3]) & 0x80000000) == 0)
      {
LABEL_73:
        v42 = *&v64[1];
        *(v40 + 40) = v64[3];
        *(v40 + 24) = v42;
LABEL_85:
        v47 = *(&v65 + 1);
        *(v40 + 48) = v65;
        *(v40 + 56) = v47;
        if (v47)
        {
          atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v67) < 0)
        {
          sub_24505989C((v40 + 64), v66[0], v66[1]);
        }

        else
        {
          v48 = *v66;
          *(v40 + 80) = v67;
          *(v40 + 64) = v48;
        }

        v49 = v68;
        *(v40 + 92) = v69;
        *(v40 + 88) = v49;
        v50 = v40 + 96;
        goto LABEL_117;
      }
    }

    sub_24505989C((v40 + 24), v64[1], v64[2]);
    goto LABEL_85;
  }

  v43 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *a1) >> 5);
  if (v43 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_24504FAF4();
  }

  v44 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a1) >> 5);
  v45 = 2 * v44;
  if (2 * v44 <= v43 + 1)
  {
    v45 = v43 + 1;
  }

  if (v44 >= 0x155555555555555)
  {
    v46 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v46 = v45;
  }

  v74 = a1;
  if (v46)
  {
    if (v46 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  v51 = 96 * v43;
  v70 = 0;
  v71 = v51;
  v72 = v51;
  v73 = 0;
  if (SHIBYTE(v64[0]) < 0)
  {
    sub_24505989C(v51, __dst[0], __dst[1]);
    if ((SHIBYTE(v64[3]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }
  }

  else
  {
    *v51 = *__dst;
    *(v51 + 16) = v64[0];
    if ((SHIBYTE(v64[3]) & 0x80000000) == 0)
    {
LABEL_93:
      *(v51 + 24) = *&v64[1];
      *(v51 + 40) = v64[3];
      goto LABEL_96;
    }
  }

  sub_24505989C((v51 + 24), v64[1], v64[2]);
LABEL_96:
  v52 = *(&v65 + 1);
  *(v51 + 48) = v65;
  *(v51 + 56) = v52;
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v67) < 0)
  {
    sub_24505989C((v51 + 64), v66[0], v66[1]);
  }

  else
  {
    *(v51 + 64) = *v66;
    *(v51 + 80) = v67;
  }

  *(v51 + 88) = v68;
  *(v51 + 92) = v69;
  v72 = v51 + 96;
  sub_24507A724(a1, &v70);
  v50 = a1[1];
  v53 = v71;
  v54 = v72;
  while (v72 != v53)
  {
    v72 = v54 - 96;
    if (*(v54 - 9) < 0)
    {
      operator delete(*(v54 - 32));
      v55 = *(v54 - 40);
      if (!v55)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v55 = *(v54 - 40);
      if (!v55)
      {
        goto LABEL_110;
      }
    }

    if (atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_110:
      if (*(v54 - 49) < 0)
      {
        goto LABEL_103;
      }

      goto LABEL_111;
    }

    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
    if (*(v54 - 49) < 0)
    {
LABEL_103:
      operator delete(*(v54 - 72));
      if (*(v54 - 73) < 0)
      {
        goto LABEL_112;
      }

      goto LABEL_104;
    }

LABEL_111:
    if (*(v54 - 73) < 0)
    {
LABEL_112:
      operator delete(*(v54 - 96));
    }

LABEL_104:
    v54 = v72;
  }

  if (v70)
  {
    operator delete(v70);
  }

LABEL_117:
  a1[1] = v50;
  v56 = __p[0];
  if (__p[0])
  {
    v57 = __p[1];
    while (v57 != v56)
    {
      v58 = *(v57 - 1);
      v57 -= 3;
      if (v58 < 0)
      {
        operator delete(*v57);
      }
    }

    operator delete(v56);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
    v59 = *(&v65 + 1);
    if (!*(&v65 + 1))
    {
      goto LABEL_128;
    }
  }

  else
  {
    v59 = *(&v65 + 1);
    if (!*(&v65 + 1))
    {
LABEL_128:
      if ((SHIBYTE(v64[3]) & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

LABEL_132:
      operator delete(v64[1]);
      if ((SHIBYTE(v64[0]) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_133:
      operator delete(__dst[0]);
      return a1;
    }
  }

  if (atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_128;
  }

  (v59->__on_zero_shared)(v59);
  std::__shared_weak_count::__release_weak(v59);
  if (SHIBYTE(v64[3]) < 0)
  {
    goto LABEL_132;
  }

LABEL_129:
  if (SHIBYTE(v64[0]) < 0)
  {
    goto LABEL_133;
  }

  return a1;
}

CFTypeRef cva::ItemHandler::createValue<int>@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*a1];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t cva::ItemHandler::ItemHandler(uint64_t this, CFTypeRef cf, char a3)
{
  *this = cf;
  *(this + 8) = a3;
  if (cf)
  {
    v3 = this;
    CFRetain(cf);
    return v3;
  }

  else
  {
    *(this + 8) = 0;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = a3;
  if (cf)
  {
    v3 = this;
    CFRetain(cf);
    return v3;
  }

  else
  {
    *(this + 8) = 0;
  }

  return this;
}

CFTypeRef cva::ItemHandler::createValue<unsigned int>@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*a1];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef cva::ItemHandler::createValue<long long>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:*a1];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef cva::ItemHandler::createValue<unsigned long long>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:*a1];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef cva::ItemHandler::createValue<float>@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v5) = v3;
  result = [v4 initWithFloat:v5];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef cva::ItemHandler::createValue<double>@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*a1];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef cva::ItemHandler::createValue<BOOL>@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:*a1];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef cva::ItemHandler::createValue<std::string>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v3];
  *a2 = result;
  *(a2 + 8) = 0;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void cva::ItemHandler::createVector<BOOL>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:*(*a1 + v4)];
      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v6 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v6 = cf;
  }
}

void cva::ItemHandler::createVector<unsigned int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(*a1 + 4 * v4)];
      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v6 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v6 = cf;
  }
}

void cva::ItemHandler::createVector<int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*(*a1 + 4 * v4)];
      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v6 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v6 = cf;
  }
}

void cva::ItemHandler::createVector<float>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = *(*a1 + 4 * v4);
      v6 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v7) = v5;
      v8 = [v6 initWithFloat:v7];
      [cf addObject:v8];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v9 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v9 = cf;
  }
}

void cva::ItemHandler::createVector<double>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*(*a1 + 8 * v4)];
      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v6 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v6 = cf;
  }
}

void cva::ItemHandler::createMatrix<int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 20)];
      if (*(a1 + 20))
      {
        v6 = 0;
        do
        {
          v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*(*a1 + 4 * (v4 + *(a1 + 16) * v6))];
          [v5 addObject:v7];

          ++v6;
        }

        while (v6 < *(a1 + 20));
      }

      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v8 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v8 = cf;
  }
}

void cva::ItemHandler::createMatrix<float>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 20)];
      if (*(a1 + 20))
      {
        v6 = 0;
        do
        {
          v7 = *(*a1 + 4 * (v4 + *(a1 + 16) * v6));
          v8 = objc_alloc(MEMORY[0x277CCABB0]);
          LODWORD(v9) = v7;
          v10 = [v8 initWithFloat:v9];
          [v5 addObject:v10];

          ++v6;
        }

        while (v6 < *(a1 + 20));
      }

      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v11 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v11 = cf;
  }
}

void cva::ItemHandler::createMatrix<double>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 16)];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 20)];
      if (*(a1 + 20))
      {
        v6 = 0;
        do
        {
          v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*(*a1 + 8 * (v4 + *(a1 + 16) * v6))];
          [v5 addObject:v7];

          ++v6;
        }

        while (v6 < *(a1 + 20));
      }

      [cf addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v8 = cf;
  *a2 = cf;
  *(a2 + 8) = 0;
  if (cf)
  {
    CFRetain(cf);
    v8 = cf;
  }
}

void *cva::ItemHandler::getValue<int>(void **a1)
{
  result = *a1;
  if (result)
  {
    return [result intValue];
  }

  return result;
}

void *cva::ItemHandler::getValue<unsigned int>(void **a1)
{
  result = *a1;
  if (result)
  {
    return [result unsignedIntValue];
  }

  return result;
}

uint64_t cva::ItemHandler::getValue<long long>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_longLongValue);
  }

  return result;
}

uint64_t cva::ItemHandler::getValue<unsigned long long>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_unsignedLongLongValue);
  }

  return result;
}

double cva::ItemHandler::getValue<float>(void **a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  [v1 floatValue];
  return result;
}

double cva::ItemHandler::getValue<double>(void **a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  [v1 doubleValue];
  return result;
}

void *cva::ItemHandler::getValue<BOOL>(void **a1)
{
  result = *a1;
  if (result)
  {
    return [result BOOLValue];
  }

  return result;
}

void cva::ItemHandler::getValue<std::string>(id *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v6 = *a1;
    v3 = [v6 UTF8String];
    v4 = strlen(v3);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_24504FAF4();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      memmove(a2, v3, v4);
    }

    *(a2 + v5) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}