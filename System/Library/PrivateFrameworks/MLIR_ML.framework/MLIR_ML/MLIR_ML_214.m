void llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff(llvm *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<int>::printOptionDiff(llvm *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<long>::printOptionDiff(llvm *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<long long>::printOptionDiff(llvm *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<unsigned int>::printOptionDiff(llvm *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<unsigned long>::printOptionDiff(llvm *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<unsigned long long>::printOptionDiff(llvm *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<double>::printOptionDiff(llvm *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a4 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a5);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a3 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a3 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a3 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<float>::printOptionDiff(llvm *a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a4 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a5);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a3 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a3 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a3 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<char>::printOptionDiff(llvm *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v34 = *(a2 + 16);
  v35 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v42 = 0;
  v43 = 0;
  DWORD2(v34) = 0;
  v38 = 0;
  v39 = 1;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  *&v34 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v34, 0, 0, 0);
  v12 = v37;
  if (v37 >= v36)
  {
    llvm::raw_ostream::write(&v34, a3);
  }

  else
  {
    ++v37;
    *v12 = a3;
  }

  llvm::raw_ostream::~raw_ostream(&v34);
  v14 = llvm::outs(v13);
  v15 = v14[4];
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 8253;
    v14[4] += 2;
  }

  else
  {
    v14 = llvm::raw_ostream::write(v14, "= ", 2uLL);
  }

  if (v43 >= 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  if (v43 >= 0)
  {
    v17 = HIBYTE(v43);
  }

  else
  {
    v17 = v42;
  }

  v18 = llvm::raw_ostream::write(v14, v16, v17);
  v19 = SHIBYTE(v43);
  if ((SHIBYTE(v43) & 0x8000000000000000) != 0)
  {
    v19 = v42;
    if (v42 < 8)
    {
      goto LABEL_15;
    }
  }

  else if (SHIBYTE(v43) <= 7)
  {
LABEL_15:
    v20 = 8 - v19;
    goto LABEL_18;
  }

  v20 = 0;
LABEL_18:
  v21 = llvm::outs(v18);
  v22 = llvm::raw_ostream::indent(v21, v20);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) <= 0xA)
  {
    v24 = llvm::raw_ostream::write(v22, " (default: ", 0xBuLL);
    v25 = *(a4 + 9);
    v26 = llvm::outs(v24);
    v27 = *(v26 + 4);
    if (v25 != 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    v32 = *(a4 + 8);
    if (v27 >= *(v26 + 3))
    {
      v33 = llvm::raw_ostream::write(v26, v32);
      v29 = llvm::outs(v33);
      v30 = v29[4];
      if (v29[3] - v30 > 1uLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(v26 + 4) = v27 + 1;
      *v27 = v32;
      v29 = llvm::outs(v26);
      v30 = v29[4];
      if (v29[3] - v30 > 1uLL)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_22;
  }

  *(v23 + 7) = 540701804;
  *v23 = *" (default: ";
  *(v22 + 4) += 11;
  v31 = *(a4 + 9);
  v26 = llvm::outs(v22);
  v27 = *(v26 + 4);
  if (v31 == 1)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (*(v26 + 3) - v27 > 0xB)
  {
    *(v27 + 8) = 712273013;
    *v27 = *"*no default*";
    *(v26 + 4) += 12;
    v29 = llvm::outs(v26);
    v30 = v29[4];
    if (v29[3] - v30 > 1uLL)
    {
      goto LABEL_31;
    }

LABEL_22:
    llvm::raw_ostream::write(v29, ")\n", 2uLL);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  v28 = llvm::raw_ostream::write(v26, "*no default*", 0xCuLL);
  v29 = llvm::outs(v28);
  v30 = v29[4];
  if (v29[3] - v30 <= 1uLL)
  {
    goto LABEL_22;
  }

LABEL_31:
  *v30 = 2601;
  v29[4] += 2;
  if (SHIBYTE(v43) < 0)
  {
LABEL_23:
    operator delete(__p);
  }
}

void *llvm::cl::parser<std::string>::printOptionDiff(llvm *a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, int a6)
{
  v11 = llvm::outs(a1);
  v39 = *(a2 + 16);
  v40 = 2;
  v13 = llvm::outs(v12);
  v14 = llvm::raw_ostream::indent(v13, a6 - *(a2 + 24));
  v15 = llvm::outs(v14);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 8253;
    v20 = *(v15 + 3);
    v17 = (*(v15 + 4) + 2);
    *(v15 + 4) = v17;
    if (a4 <= v20 - v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, "= ", 2uLL);
    v17 = *(v15 + 4);
    if (a4 <= *(v15 + 3) - v17)
    {
LABEL_3:
      if (a4)
      {
        v18 = v15;
        v15 = memcpy(v17, a3, a4);
        *(v18 + 4) += a4;
        if (a4 > 7)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_8;
    }
  }

  v15 = llvm::raw_ostream::write(v15, a3, a4);
  if (a4 > 7)
  {
LABEL_5:
    v19 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v19 = 8 - a4;
LABEL_9:
  v21 = llvm::outs(v15);
  v22 = llvm::raw_ostream::indent(v21, v19);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) <= 0xA)
  {
    v24 = llvm::raw_ostream::write(v22, " (default: ", 0xBuLL);
    v25 = *(a5 + 32);
    v26 = llvm::outs(v24);
    if (v25 != 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v34 = *(a5 + 8);
    v33 = a5 + 8;
    v32 = v34;
    v35 = *(v33 + 23);
    if (v35 >= 0)
    {
      v36 = v33;
    }

    else
    {
      v36 = v32;
    }

    if (v35 >= 0)
    {
      v37 = *(v33 + 23);
    }

    else
    {
      v37 = *(v33 + 8);
    }

    v38 = llvm::raw_ostream::write(v26, v36, v37);
    result = llvm::outs(v38);
    v30 = result[4];
    if (result[3] - v30 > 1uLL)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  *(v23 + 7) = 540701804;
  *v23 = *" (default: ";
  *(v22 + 4) += 11;
  v31 = *(a5 + 32);
  v26 = llvm::outs(v22);
  if (v31 == 1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v27 = *(v26 + 4);
  if ((*(v26 + 3) - v27) > 0xB)
  {
    *(v27 + 8) = 712273013;
    *v27 = *"*no default*";
    *(v26 + 4) += 12;
    result = llvm::outs(v26);
    v30 = result[4];
    if (result[3] - v30 > 1uLL)
    {
LABEL_26:
      *v30 = 2601;
      result[4] += 2;
      return result;
    }
  }

  else
  {
    v28 = llvm::raw_ostream::write(v26, "*no default*", 0xCuLL);
    result = llvm::outs(v28);
    v30 = result[4];
    if (result[3] - v30 > 1uLL)
    {
      goto LABEL_26;
    }
  }

LABEL_22:

  return llvm::raw_ostream::write(result, ")\n", 2uLL);
}

double llvm::cl::basic_parser_impl::printOptionNoValue(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v5 = llvm::outs(this);
  v12 = *(a2 + 1);
  v13 = 2;
  v7 = llvm::outs(v6);
  v8 = llvm::raw_ostream::indent(v7, a3 - *(a2 + 6));
  v9 = llvm::outs(v8);
  v10 = v9[4];
  if (v9[3] - v10 > 0x1DuLL)
  {
    qmemcpy(v10, "= *cannot print option value*\n", 30);
    result = *"t option value*\n";
    v9[4] += 30;
  }

  else
  {

    llvm::raw_ostream::write(v9, "= *cannot print option value*\n", 0x1EuLL);
  }

  return result;
}

uint64_t llvm::cl::OptionCategory::OptionCategory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v6 = *(qword_27F8743B8[0] + 112);
  if (*(qword_27F8743B8[0] + 120) != v6)
  {
    goto LABEL_4;
  }

  v8 = *(qword_27F8743B8[0] + 132);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = *(qword_27F8743B8[0] + 112);
    while (*v10 != a1)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    return a1;
  }

LABEL_10:
  if (v8 >= *(qword_27F8743B8[0] + 128))
  {
LABEL_4:
    llvm::SmallPtrSetImplBase::insert_imp_big((qword_27F8743B8[0] + 112), a1);
    return a1;
  }

  *(qword_27F8743B8[0] + 132) = v8 + 1;
  *(v6 + 8 * v8) = a1;
  return a1;
}

void llvm::cl::PrintOptionValues(llvm::cl *this)
{
  v11[256] = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    v1 = qword_27F8743B8[0];
    if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(qword_27F874400[0] + 1128))
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v1 = qword_27F8743B8[0];
  if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_27F874400[0] + 1128))
  {
    goto LABEL_11;
  }

LABEL_7:
  if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
  {
    if (*(qword_27F874400[0] + 1320) != 1)
    {
      return;
    }
  }

  else
  {
    if (*(qword_27F874400[0] + 1320) != 1)
    {
      return;
    }
  }

LABEL_11:
  v9 = v11;
  v10 = 0x8000000000;
  sortOpts(*(*(v1 + 336) + 128), *(*(v1 + 336) + 136), &v9, 1);
  v2 = v10;
  if (v10)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = (*(**(v9 + v4) + 40))(*(v9 + v4));
      if (v3 <= v5)
      {
        v3 = v5;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
    v6 = v10;
    if (v10)
    {
      v7 = 8;
      do
      {
        v8 = *(v9 + v7);
        if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
        {
        }

        (*(*v8 + 56))(v8, v3, *(qword_27F874400[0] + 1320));
        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void llvm::cl::PrintHelpMessage(llvm::cl *this, uint64_t a2)
{
  if (this & 1) != 0 || (a2)
  {
    if (!a2 || (this & 1) != 0)
    {
      explicit = atomic_load_explicit(qword_27F874400, memory_order_acquire);
      if (!this || (a2 & 1) != 0)
      {
        if (explicit)
        {
          v2 = (qword_27F874400[0] + 48);
        }

        else
        {
          v2 = (qword_27F874400[0] + 48);
        }
      }

      else if (explicit)
      {
        v2 = (qword_27F874400[0] + 16);
      }

      else
      {
        v2 = (qword_27F874400[0] + 16);
      }
    }

    else if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
    {
      v2 = (qword_27F874400[0] + 32);
    }

    else
    {
      v2 = (qword_27F874400[0] + 32);
    }
  }

  else
  {
    if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
    {
    }

    v2 = qword_27F874400[0];
  }
}

void anonymous namespace::HelpPrinter::printHelp(_anonymous_namespace_::HelpPrinter *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v146[256] = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v3 = *(qword_27F8743B8[0] + 336);
  v144 = v146;
  v145 = 0x8000000000;
  sortOpts(*(v3 + 128), *(v3 + 136), &v144, *(v2 + 8));
  __nel = 0;
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v139 = v2;
  v5 = *(qword_27F8743B8[0] + 280);
  v6 = 16;
  if (v5 == *(qword_27F8743B8[0] + 272))
  {
    v6 = 20;
  }

  v7 = *(qword_27F8743B8[0] + 272 + v6);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(qword_27F8743B8[0] + 280);
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = *(qword_27F8743B8[0] + 280);
  }

  v11 = (v5 + 8 * v7);
LABEL_22:
  if (v9 != v11)
  {
    v12 = *v9;
    if ((*v9)[1])
    {
      if (__nel >= 0x80uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = &v142 + 2 * __nel;
      *v13 = *v12;
      v13[1] = v12;
      ++__nel;
    }

    while (++v9 != v11)
    {
      if (*v9 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_11:
  if (__nel < 2)
  {
    if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
      goto LABEL_13;
    }

LABEL_16:
    if (!*(qword_27F8743B8[0] + 32))
    {
      goto LABEL_38;
    }

    goto LABEL_17;
  }

  qsort(&v142, __nel, 0x10uLL, SubNameCompare);
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    goto LABEL_16;
  }

LABEL_13:
  if (!*(qword_27F8743B8[0] + 32))
  {
LABEL_38:
    if (atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_17:
  v4 = llvm::outs(v4);
  v10 = *(v4 + 4);
  if ((*(v4 + 3) - v10) > 9)
  {
    *(v10 + 8) = 8250;
    *v10 = *"OVERVIEW: ";
    *(v4 + 4) += 10;
    if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
      goto LABEL_33;
    }

LABEL_31:
    v14 = *(qword_27F8743B8[0] + 24);
    v15 = *(qword_27F8743B8[0] + 32);
    v16 = *(v4 + 4);
    if (v15 <= *(v4 + 3) - v16)
    {
      goto LABEL_34;
    }

LABEL_32:
    v4 = llvm::raw_ostream::write(v4, v14, v15);
    v16 = *(v4 + 4);
    goto LABEL_36;
  }

  v4 = llvm::raw_ostream::write(v4, "OVERVIEW: ", 0xAuLL);
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    goto LABEL_31;
  }

LABEL_33:
  v17 = v4;
  v4 = v17;
  v14 = *(qword_27F8743B8[0] + 24);
  v15 = *(qword_27F8743B8[0] + 32);
  v16 = *(v17 + 4);
  if (v15 > *(v17 + 3) - v16)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (v15)
  {
    v18 = v4;
    v19 = v15;
    memcpy(v16, v14, v15);
    v4 = v18;
    v16 = (*(v18 + 4) + v19);
    *(v18 + 4) = v16;
  }

LABEL_36:
  if (*(v4 + 3) != v16)
  {
    *v16 = 10;
    ++*(v4 + 4);
    goto LABEL_38;
  }

  v4 = llvm::raw_ostream::write(v4, "\n", 1uLL);
  if (atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
  {
LABEL_39:
    if (v3 != qword_27F8743D0[0])
    {
      goto LABEL_40;
    }

LABEL_56:
    v34 = llvm::outs(v4);
    v35 = v34[4];
    if (v34[3] - v35 > 6uLL)
    {
      *(v35 + 3) = 540689735;
      *v35 = 1195463509;
      v34[4] += 7;
      if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v34 = llvm::raw_ostream::write(v34, "USAGE: ", 7uLL);
      if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
      {
        goto LABEL_84;
      }
    }

    v51 = v34;
    v34 = v51;
LABEL_84:
    v52 = *(qword_27F8743B8[0] + 23);
    if (v52 >= 0)
    {
      v53 = qword_27F8743B8[0];
    }

    else
    {
      v53 = *qword_27F8743B8[0];
    }

    if (v52 >= 0)
    {
      v54 = *(qword_27F8743B8[0] + 23);
    }

    else
    {
      v54 = *(qword_27F8743B8[0] + 8);
    }

    v55 = llvm::raw_ostream::write(v34, v53, v54);
    if (__nel)
    {
      v56 = llvm::outs(v55);
      v57 = *(v56 + 4);
      if (*(v56 + 3) - v57 > 0xCuLL)
      {
        qmemcpy(v57, " [subcommand]", 13);
        *(v56 + 4) += 13;
        v42 = llvm::outs(v56);
        v45 = *(v42 + 4);
        if (*(v42 + 3) - v45 > 9uLL)
        {
          goto LABEL_80;
        }

        goto LABEL_94;
      }

      v55 = llvm::raw_ostream::write(v56, " [subcommand]", 0xDuLL);
    }

    v42 = llvm::outs(v55);
    v45 = *(v42 + 4);
    if (*(v42 + 3) - v45 <= 9uLL)
    {
      goto LABEL_94;
    }

    goto LABEL_80;
  }

LABEL_55:
  llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  if (v3 == qword_27F8743D0[0])
  {
    goto LABEL_56;
  }

LABEL_40:
  if (!*(v3 + 24))
  {
    goto LABEL_51;
  }

  v20 = llvm::outs(v4);
  v21 = *(v20 + 4);
  if ((*(v20 + 3) - v21) <= 0xB)
  {
    v20 = llvm::raw_ostream::write(v20, "SUBCOMMAND '", 0xCuLL);
    v22 = *(v20 + 4);
    v23 = *v3;
    v24 = *(v3 + 8);
    if (v24 <= *(v20 + 3) - v22)
    {
      goto LABEL_43;
    }

LABEL_60:
    v20 = llvm::raw_ostream::write(v20, v23, v24);
    v22 = *(v20 + 4);
    if (*(v20 + 3) - v22 <= 2uLL)
    {
      goto LABEL_46;
    }

    goto LABEL_61;
  }

  *(v21 + 8) = 656426062;
  *v21 = *"SUBCOMMAND '";
  v36 = *(v20 + 3);
  v22 = (*(v20 + 4) + 12);
  *(v20 + 4) = v22;
  v23 = *v3;
  v24 = *(v3 + 8);
  if (v24 > v36 - v22)
  {
    goto LABEL_60;
  }

LABEL_43:
  if (v24)
  {
    v25 = v20;
    v26 = v24;
    memcpy(v22, v23, v24);
    v20 = v25;
    v22 = (*(v25 + 4) + v26);
    *(v25 + 4) = v22;
  }

  if (*(v20 + 3) - v22 <= 2uLL)
  {
LABEL_46:
    v20 = llvm::raw_ostream::write(v20, "': ", 3uLL);
    v27 = *(v20 + 4);
    v28 = *(v3 + 16);
    v29 = *(v3 + 24);
    if (v29 <= *(v20 + 3) - v27)
    {
      goto LABEL_47;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22[2] = 32;
  *v22 = 14887;
  v37 = *(v20 + 3);
  v27 = (*(v20 + 4) + 3);
  *(v20 + 4) = v27;
  v28 = *(v3 + 16);
  v29 = *(v3 + 24);
  if (v29 <= v37 - v27)
  {
LABEL_47:
    if (v29)
    {
      v30 = v20;
      v31 = v29;
      memcpy(v27, v28, v29);
      v20 = v30;
      v27 = (*(v30 + 4) + v31);
      *(v30 + 4) = v27;
    }

    if (*(v20 + 3) - v27 <= 1uLL)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = llvm::raw_ostream::write(v20, v28, v29);
  v27 = *(v20 + 4);
  if (*(v20 + 3) - v27 <= 1uLL)
  {
LABEL_50:
    v4 = llvm::raw_ostream::write(v20, "\n\n", 2uLL);
LABEL_51:
    v32 = llvm::outs(v4);
    v33 = v32[4];
    if (v32[3] - v33 <= 6uLL)
    {
      goto LABEL_52;
    }

LABEL_64:
    *(v33 + 3) = 540689735;
    *v33 = 1195463509;
    v32[4] += 7;
    if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_63:
  *v27 = 2570;
  *(v20 + 4) += 2;
  v32 = llvm::outs(v20);
  v33 = v32[4];
  if (v32[3] - v33 > 6uLL)
  {
    goto LABEL_64;
  }

LABEL_52:
  v32 = llvm::raw_ostream::write(v32, "USAGE: ", 7uLL);
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    goto LABEL_66;
  }

LABEL_65:
  v38 = v32;
  v32 = v38;
LABEL_66:
  v39 = *(qword_27F8743B8[0] + 23);
  if (v39 >= 0)
  {
    v40 = qword_27F8743B8[0];
  }

  else
  {
    v40 = *qword_27F8743B8[0];
  }

  if (v39 >= 0)
  {
    v41 = *(qword_27F8743B8[0] + 23);
  }

  else
  {
    v41 = *(qword_27F8743B8[0] + 8);
  }

  v42 = llvm::raw_ostream::write(v32, v40, v41);
  v43 = *(v42 + 4);
  if (*(v42 + 3) != v43)
  {
    *v43 = 32;
    v44 = *(v42 + 3);
    v45 = (*(v42 + 4) + 1);
    *(v42 + 4) = v45;
    v46 = *v3;
    v47 = *(v3 + 8);
    if (v47 > v44 - v45)
    {
      goto LABEL_74;
    }

    goto LABEL_77;
  }

  v42 = llvm::raw_ostream::write(v42, " ", 1uLL);
  v45 = *(v42 + 4);
  v46 = *v3;
  v47 = *(v3 + 8);
  if (v47 <= *(v42 + 3) - v45)
  {
LABEL_77:
    if (v47)
    {
      v48 = v42;
      v49 = v47;
      memcpy(v45, v46, v47);
      v42 = v48;
      v45 = (*(v48 + 4) + v49);
      *(v48 + 4) = v45;
    }

    if (*(v42 + 3) - v45 > 9uLL)
    {
      goto LABEL_80;
    }

LABEL_94:
    v42 = llvm::raw_ostream::write(v42, " [options]", 0xAuLL);
    v140 = v3;
    v50 = *(v3 + 40);
    if (v50)
    {
      goto LABEL_95;
    }

    goto LABEL_111;
  }

LABEL_74:
  v42 = llvm::raw_ostream::write(v42, v46, v47);
  v45 = *(v42 + 4);
  if (*(v42 + 3) - v45 <= 9uLL)
  {
    goto LABEL_94;
  }

LABEL_80:
  v45[4] = 23923;
  *v45 = *" [options]";
  *(v42 + 4) += 10;
  v140 = v3;
  v50 = *(v3 + 40);
  if (v50)
  {
LABEL_95:
    v58 = *(v140 + 32);
    for (i = 8 * v50; i; i -= 8)
    {
      v60 = *v58;
      if (!*(*v58 + 24))
      {
        goto LABEL_103;
      }

      v42 = llvm::outs(v42);
      v61 = *(v42 + 4);
      if ((*(v42 + 3) - v61) > 2)
      {
        *(v61 + 2) = 45;
        *v61 = 11552;
        v72 = *(v42 + 3);
        v62 = (*(v42 + 4) + 3);
        *(v42 + 4) = v62;
        v63 = v60[2];
        v64 = v60[3];
        if (v64 <= v72 - v62)
        {
LABEL_101:
          if (v64)
          {
            v65 = v42;
            v66 = v64;
            v42 = memcpy(v62, v63, v64);
            *(v65 + 4) += v66;
          }

LABEL_103:
          v42 = llvm::outs(v42);
          v67 = *(v42 + 4);
          if (*(v42 + 3) != v67)
          {
            goto LABEL_104;
          }

          goto LABEL_108;
        }
      }

      else
      {
        v42 = llvm::raw_ostream::write(v42, " --", 3uLL);
        v62 = *(v42 + 4);
        v63 = v60[2];
        v64 = v60[3];
        if (v64 <= *(v42 + 3) - v62)
        {
          goto LABEL_101;
        }
      }

      v73 = llvm::raw_ostream::write(v42, v63, v64);
      v42 = llvm::outs(v73);
      v67 = *(v42 + 4);
      if (*(v42 + 3) != v67)
      {
LABEL_104:
        *v67 = 32;
        v68 = *(v42 + 3);
        v69 = (*(v42 + 4) + 1);
        *(v42 + 4) = v69;
        v70 = v60[4];
        v71 = v60[5];
        if (v71 <= v68 - v69)
        {
          goto LABEL_109;
        }

        goto LABEL_96;
      }

LABEL_108:
      v42 = llvm::raw_ostream::write(v42, " ", 1uLL);
      v69 = *(v42 + 4);
      v70 = v60[4];
      v71 = v60[5];
      if (v71 <= *(v42 + 3) - v69)
      {
LABEL_109:
        if (v71)
        {
          v74 = v42;
          v75 = v71;
          v42 = memcpy(v69, v70, v71);
          *(v74 + 4) += v75;
        }

        goto LABEL_97;
      }

LABEL_96:
      v42 = llvm::raw_ostream::write(v42, v70, v71);
LABEL_97:
      v58 += 8;
    }
  }

LABEL_111:
  v76 = &unk_27F874000;
  if (!*(v140 + 152))
  {
    goto LABEL_118;
  }

  v42 = llvm::outs(v42);
  v77 = *(v42 + 4);
  if (*(v42 + 3) == v77)
  {
    v42 = llvm::raw_ostream::write(v42, " ", 1uLL);
    v82 = *(v140 + 152);
    v80 = *(v82 + 32);
    v81 = *(v82 + 40);
    v78 = *(v42 + 4);
    if (v81 > *(v42 + 3) - v78)
    {
      goto LABEL_114;
    }
  }

  else
  {
    *v77 = 32;
    v78 = (*(v42 + 4) + 1);
    *(v42 + 4) = v78;
    v79 = *(v140 + 152);
    v80 = *(v79 + 32);
    v81 = *(v79 + 40);
    if (v81 > *(v42 + 3) - v78)
    {
LABEL_114:
      v42 = llvm::raw_ostream::write(v42, v80, v81);
      goto LABEL_118;
    }
  }

  if (v81)
  {
    v83 = v42;
    v84 = v81;
    v42 = memcpy(v78, v80, v81);
    *(v83 + 4) += v84;
  }

LABEL_118:
  if (atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
  {
    if (v140 != qword_27F8743D0[0])
    {
      goto LABEL_171;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    if (v140 != qword_27F8743D0[0])
    {
      goto LABEL_171;
    }
  }

  v85 = __nel;
  if (!__nel)
  {
LABEL_171:
    v123 = llvm::outs(v42);
    v124 = *(v123 + 4);
    if (*(v123 + 3) - v124 > 1uLL)
    {
      goto LABEL_180;
    }

LABEL_172:
    v123 = llvm::raw_ostream::write(v123, "\n\n", 2uLL);
    v125 = v145;
    if (!v145)
    {
      goto LABEL_181;
    }

    goto LABEL_173;
  }

  v86 = 0;
  v87 = &v142;
  do
  {
    v88 = *v87;
    v87 += 2;
    v89 = strlen(v88);
    if (v86 <= v89)
    {
      v86 = v89;
    }

    --v85;
  }

  while (v85);
  v90 = llvm::outs(v89);
  v91 = *(v90 + 4);
  if (*(v90 + 3) - v91 > 1uLL)
  {
    *v91 = 2570;
    *(v90 + 4) += 2;
    v93 = llvm::outs(v90);
    v94 = *(v93 + 4);
    if (*(v93 + 3) - v94 > 0xDuLL)
    {
      goto LABEL_129;
    }

LABEL_133:
    v93 = llvm::raw_ostream::write(v93, "SUBCOMMANDS:\n\n", 0xEuLL);
    v95 = __nel;
    goto LABEL_134;
  }

  v92 = llvm::raw_ostream::write(v90, "\n\n", 2uLL);
  v93 = llvm::outs(v92);
  v94 = *(v93 + 4);
  if (*(v93 + 3) - v94 <= 0xDuLL)
  {
    goto LABEL_133;
  }

LABEL_129:
  qmemcpy(v94, "SUBCOMMANDS:\n\n", 14);
  *(v93 + 4) += 14;
  v95 = __nel;
LABEL_134:
  v96 = 16 * v95;
  v97 = &v143;
  do
  {
    while (1)
    {
      v98 = llvm::outs(v93);
      v100 = *(v98 + 4);
      if (*(v98 + 3) - v100 > 1uLL)
      {
        *v100 = 8224;
        *(v98 + 4) += 2;
        v101 = *(v97 - 1);
        if (!v101)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v98 = llvm::raw_ostream::write(v98, "  ", 2uLL);
        v101 = *(v97 - 1);
        if (!v101)
        {
          goto LABEL_148;
        }
      }

      v102 = v98;
      v98 = strlen(v101);
      v103 = v98;
      if (v98 <= *(v102 + 3) - *(v102 + 4))
      {
        if (v98)
        {
          v98 = memcpy(*(v102 + 4), v101, v98);
          *(v102 + 4) += v103;
        }
      }

      else
      {
        v98 = llvm::raw_ostream::write(v102, v101, v98);
      }

LABEL_148:
      if (*(*v97 + 24))
      {
        v104 = llvm::outs(v98);
        v105 = strlen(*(v97 - 1));
        v106 = llvm::raw_ostream::indent(v104, v86 - v105);
        v98 = llvm::outs(v106);
        v107 = *(v98 + 4);
        if ((*(v98 + 3) - v107) > 2)
        {
          *(v107 + 2) = 32;
          *v107 = 11552;
          v110 = (*(v98 + 4) + 3);
          *(v98 + 4) = v110;
          v108 = *(*v97 + 16);
          v109 = *(*v97 + 24);
          if (v109 > *(v98 + 3) - v110)
          {
LABEL_135:
            v98 = llvm::raw_ostream::write(v98, v108, v109);
            goto LABEL_136;
          }
        }

        else
        {
          v98 = llvm::raw_ostream::write(v98, " - ", 3uLL);
          v108 = *(*v97 + 16);
          v109 = *(*v97 + 24);
          v110 = *(v98 + 4);
          if (v109 > *(v98 + 3) - v110)
          {
            goto LABEL_135;
          }
        }

        if (v109)
        {
          v111 = v98;
          v112 = v109;
          v98 = memcpy(v110, v108, v109);
          *(v111 + 4) += v112;
        }
      }

LABEL_136:
      v93 = llvm::outs(v98);
      v99 = *(v93 + 4);
      if (*(v93 + 3) == v99)
      {
        break;
      }

      *v99 = 10;
      ++*(v93 + 4);
      v97 += 2;
      v96 -= 16;
      if (!v96)
      {
        goto LABEL_155;
      }
    }

    v93 = llvm::raw_ostream::write(v93, "\n", 1uLL);
    v97 += 2;
    v96 -= 16;
  }

  while (v96);
LABEL_155:
  v113 = llvm::outs(v93);
  v114 = *(v113 + 4);
  if (*(v113 + 3) == v114)
  {
    v113 = llvm::raw_ostream::write(v113, "\n", 1uLL);
  }

  else
  {
    *v114 = 10;
    ++*(v113 + 4);
  }

  v76 = &unk_27F874000;
  v115 = llvm::outs(v113);
  v116 = v115[4];
  if (v115[3] - v116 > 7uLL)
  {
    *v116 = 0x2220657079542020;
    v115[4] += 8;
    if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
      goto LABEL_162;
    }
  }

  else
  {
    v115 = llvm::raw_ostream::write(v115, "  Type ", 8uLL);
    if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
LABEL_162:
      v117 = v115;
      v115 = v117;
    }
  }

  v118 = *(qword_27F8743B8[0] + 23);
  if (v118 >= 0)
  {
    v119 = qword_27F8743B8[0];
  }

  else
  {
    v119 = *qword_27F8743B8[0];
  }

  if (v118 >= 0)
  {
    v120 = *(qword_27F8743B8[0] + 23);
  }

  else
  {
    v120 = *(qword_27F8743B8[0] + 8);
  }

  v121 = llvm::raw_ostream::write(v115, v119, v120);
  v122 = *(v121 + 4);
  if (*(v121 + 3) - v122 <= 0x3EuLL)
  {
    v42 = llvm::raw_ostream::write(v121, " <subcommand> --help to get more help on a specific subcommand", 0x3FuLL);
    goto LABEL_171;
  }

  qmemcpy(v122, " <subcommand> --help to get more help on a specific subcommand", 63);
  *(v121 + 4) += 63;
  v123 = llvm::outs(v121);
  v124 = *(v123 + 4);
  if (*(v123 + 3) - v124 <= 1uLL)
  {
    goto LABEL_172;
  }

LABEL_180:
  *v124 = 2570;
  *(v123 + 4) += 2;
  v125 = v145;
  if (!v145)
  {
LABEL_181:
    v126 = 0;
    v129 = llvm::outs(v123);
    v130 = v129[4];
    if ((v129[3] - v130) > 8)
    {
      goto LABEL_182;
    }

LABEL_178:
    llvm::raw_ostream::write(v129, "OPTIONS:\n", 9uLL);
    goto LABEL_183;
  }

LABEL_173:
  v126 = 0;
  v127 = 8;
  do
  {
    v128 = (*(**(v144 + v127) + 40))(*(v144 + v127));
    if (v126 <= v128)
    {
      v126 = v128;
    }

    v127 += 16;
    --v125;
  }

  while (v125);
  v129 = llvm::outs(v128);
  v130 = v129[4];
  if ((v129[3] - v130) <= 8)
  {
    goto LABEL_178;
  }

LABEL_182:
  *(v130 + 8) = 10;
  *v130 = *"OPTIONS:\n";
  v129[4] += 9;
LABEL_183:
  v131 = (**v139)(v139, &v144, v126);
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v132 = v76[119];
  v133 = *(v132 + 40);
  for (j = *(v132 + 48); v133 != j; v133 += 16)
  {
    while (1)
    {
      v131 = llvm::outs(v131);
      v135 = *v133;
      v136 = *(v133 + 8);
      if (v136 <= v131[3] - v131[4])
      {
        break;
      }

      v131 = llvm::raw_ostream::write(v131, v135, v136);
      v133 += 16;
      if (v133 == j)
      {
        goto LABEL_192;
      }
    }

    if (v136)
    {
      v137 = v131;
      v138 = *(v133 + 8);
      v131 = memcpy(v131[4], v135, v136);
      v137[4] = v137[4] + v138;
    }
  }

LABEL_192:
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  *(v76[119] + 48) = *(v76[119] + 40);
  if (v144 != v146)
  {
    free(v144);
  }
}

llvm::raw_ostream *llvm::cl::printBuildConfig(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v2 = *(this + 4);
  if (*(this + 3) - v2 > 0xDuLL)
  {
    qmemcpy(v2, "Build config: ", 14);
    v5 = *(this + 3);
    v4 = (*(this + 4) + 14);
    *(this + 4) = v4;
    if (v4 >= v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(this + 4) = v4 + 1;
    *v4 = 10;
    return this;
  }

  v3 = this;
  llvm::raw_ostream::write(this, "Build config: ", 0xEuLL);
  this = v3;
  v4 = *(v3 + 4);
  if (v4 < *(v3 + 3))
  {
    goto LABEL_7;
  }

LABEL_3:

  return llvm::raw_ostream::write(this, 10);
}

llvm *llvm::cl::PrintVersionMessage(llvm::cl *this)
{
  if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
  {
    if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

LABEL_3:
  memset(v4, 0, sizeof(v4));
  v1 = *(qword_27F874400[0] + 1416);
  v2 = *(qword_27F874400[0] + 1424);
  if (v2 != v1)
  {
    if (((v2 - v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

llvm *anonymous namespace::VersionPrinter::print(llvm *a1)
{
  v2 = llvm::outs(a1);
  v3 = v2;
  v4 = *(v2 + 4);
  if (*(v2 + 3) - v4 > 0x1AuLL)
  {
    qmemcpy(v4, "LLVM (http://llvm.org/):\n  ", 27);
    v17 = *(v2 + 3);
    v5 = (*(v2 + 4) + 27);
    *(v2 + 4) = v5;
    if ((v17 - v5) > 3)
    {
LABEL_3:
      *v5 = 1297501260;
      v6 = *(v3 + 4) + 4;
      *(v3 + 4) = v6;
      result = v3;
      if ((*(v3 + 3) - v6) > 8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    llvm::raw_ostream::write(v2, "LLVM (http://llvm.org/):\n  ", 0x1BuLL);
    v5 = *(v3 + 4);
    if (*(v3 + 3) - v5 > 3uLL)
    {
      goto LABEL_3;
    }
  }

  result = llvm::raw_ostream::write(v3, "LLVM", 4uLL);
  v6 = *(result + 4);
  if ((*(result + 3) - v6) > 8)
  {
LABEL_4:
    *(v6 + 8) = 32;
    *v6 = *" version ";
    v8 = *(result + 3);
    v9 = *(result + 4) + 9;
    *(result + 4) = v9;
    if ((v8 - v9) > 8)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = llvm::raw_ostream::write(result, " version ", 9uLL);
  v9 = *(result + 4);
  if ((*(result + 3) - v9) > 8)
  {
LABEL_5:
    *(v9 + 8) = 116;
    *v9 = *"20.0.0git";
    v10 = *(result + 3);
    v11 = *(result + 4) + 9;
    *(result + 4) = v11;
    if ((v10 - v11) > 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = llvm::raw_ostream::write(result, "20.0.0git", 9uLL);
  v11 = *(result + 4);
  if ((*(result + 3) - v11) > 2)
  {
LABEL_6:
    *(v11 + 2) = 32;
    *v11 = 8202;
    *(result + 4) += 3;
    v12 = *(v3 + 4);
    if (*(v3 + 3) - v12 > 0xEuLL)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = llvm::raw_ostream::write(result, "\n  ", 3uLL);
  v12 = *(v3 + 4);
  if (*(v3 + 3) - v12 > 0xEuLL)
  {
LABEL_7:
    qmemcpy(v12, "Optimized build", 15);
    v13 = *(v3 + 3);
    v14 = (*(v3 + 4) + 15);
    *(v3 + 4) = v14;
    if ((v13 - v14) > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = llvm::raw_ostream::write(v3, "Optimized build", 0xFuLL);
  v14 = *(v3 + 4);
  if (*(v3 + 3) - v14 > 1uLL)
  {
LABEL_8:
    *v14 = 2606;
    *(v3 + 4) += 2;
    v16 = *a1;
    v15 = *(a1 + 1);
    if (v16 != v15)
    {
      goto LABEL_17;
    }

    return result;
  }

LABEL_16:
  result = llvm::raw_ostream::write(v3, ".\n", 2uLL);
  v16 = *a1;
  v15 = *(a1 + 1);
  if (v16 != v15)
  {
LABEL_17:
    while (1)
    {
      v18 = llvm::outs(result);
      v19 = *(v16 + 24);
      if (!v19)
      {
        break;
      }

      result = (*(*v19 + 48))(v19, v18);
      v16 += 32;
      if (v16 == v15)
      {
        return result;
      }
    }

    v20 = std::__throw_bad_function_call[abi:nn200100]();
    return std::vector<std::function<void ()(llvm::raw_ostream &)>>::vector[abi:nn200100](v20);
  }

  return result;
}

void *std::vector<std::function<void ()(llvm::raw_ostream &)>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void **std::vector<std::function<void ()(llvm::raw_ostream &)>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::cl::SetVersionPrinter(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
  {
    v2 = qword_27F874400[0];
    v3 = *(a1 + 24);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = qword_27F874400[0];
    v3 = *(a1 + 24);
    if (v3)
    {
LABEL_3:
      if (v3 == a1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }

      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  std::__function::__value_func<void ()(llvm::raw_ostream &)>::swap[abi:nn200100](v5, v2 + 1384);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

uint64_t llvm::cl::AddExtraVersionPrinter(uint64_t a1)
{
  if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
  {
    v2 = qword_27F874400[0];
    v3 = *(qword_27F874400[0] + 1424);
    if (v3 < *(qword_27F874400[0] + 1432))
    {
      goto LABEL_3;
    }

LABEL_8:
    result = std::vector<std::function<void ()(llvm::raw_ostream &)>>::__emplace_back_slow_path<std::function<void ()(llvm::raw_ostream &)> const&>((v2 + 1416), a1);
    *(v2 + 1424) = result;
    return result;
  }

  v2 = qword_27F874400[0];
  v3 = *(qword_27F874400[0] + 1424);
  if (v3 >= *(qword_27F874400[0] + 1432))
  {
    goto LABEL_8;
  }

LABEL_3:
  v4 = *(a1 + 24);
  if (v4)
  {
    if (v4 == a1)
    {
      *(v3 + 24) = v3;
      (*(**(a1 + 24) + 24))(*(a1 + 24), v3);
    }

    else
    {
      *(v3 + 24) = (*(*v4 + 16))(v4);
    }

    result = v3 + 32;
    *(v2 + 1424) = v3 + 32;
  }

  else
  {
    *(v3 + 24) = 0;
    result = v3 + 32;
    *(v2 + 1424) = v3 + 32;
  }

  return result;
}

uint64_t llvm::cl::getRegisteredOptions(llvm::cl *this, llvm::cl::SubCommand *a2)
{
  initCommonOptions(this);
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  return this + 128;
}

void llvm::cl::getRegisteredSubcommands(void *a1@<X8>)
{
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    v2 = a1;
    a1 = v2;
  }

  v3 = *(qword_27F8743B8[0] + 280);
  v4 = 16;
  if (v3 == *(qword_27F8743B8[0] + 272))
  {
    v4 = 20;
  }

  v5 = *(qword_27F8743B8[0] + 272 + v4);
  v6 = &v3[v5];
  if (v5)
  {
    v7 = 8 * v5;
    while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v3;
      v7 -= 8;
      if (!v7)
      {
        v3 = v6;
        break;
      }
    }
  }

  *a1 = v3;
  a1[1] = v6;
  a1[2] = v6;
  a1[3] = v6;
}

void llvm::cl::HideUnrelatedOptions(llvm::cl *this, llvm::cl::OptionCategory *a2, llvm::cl::SubCommand *a3)
{
  initCommonOptions(this);
  v5 = *(a2 + 16);
  v6 = *(a2 + 34);
  if (!v6)
  {
    v7 = *(a2 + 16);
    v12 = &v5[v6];
    if (v5 == v12)
    {
      return;
    }

    goto LABEL_14;
  }

  v7 = *(a2 + 16);
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v12 = &v5[v6];
  if (v7 != v12)
  {
LABEL_14:
    v13 = *v7;
    do
    {
      v14 = *(v13 + 8);
      v15 = *(v14 + 72);
      if (v15)
      {
        v16 = *(v14 + 64);
        v17 = &v16[v15];
        v18 = 1;
        do
        {
          while (1)
          {
            v19 = *v16;
            if (*v16 != this)
            {
              if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
              {
              }

              if (v19 != (qword_27F874400[0] + 96))
              {
                break;
              }
            }

            v18 = 0;
            if (++v16 == v17)
            {
              goto LABEL_26;
            }
          }

          ++v16;
        }

        while (v16 != v17);
        if ((v18 & 1) == 0)
        {
          goto LABEL_26;
        }

        v14 = *(v13 + 8);
      }

      *(v14 + 10) = *(v14 + 10) & 0xFF9F | 0x40;
      do
      {
LABEL_26:
        v20 = v7[1];
        ++v7;
        v13 = v20;
        if (v20)
        {
          v21 = v13 == -8;
        }

        else
        {
          v21 = 1;
        }
      }

      while (v21);
    }

    while (v7 != v12);
  }
}

void llvm::cl::HideUnrelatedOptions(llvm *a1, uint64_t a2, uint64_t a3)
{
  initCommonOptions(a1);
  v6 = *(a3 + 128);
  v7 = *(a3 + 136);
  if (!v7)
  {
    v8 = *(a3 + 128);
    v32 = &v6[v7];
    if (v6 == v32)
    {
      return;
    }

LABEL_14:
    v13 = *v8;
    if (a2)
    {
      while (1)
      {
        v14 = *(v13 + 8);
        v15 = *(v14 + 72);
        if (v15)
        {
          v16 = *(v14 + 64);
          v17 = &v16[v15];
          v18 = 1;
          do
          {
            while (1)
            {
              v19 = *v16;
              v20 = 8 * a2;
              v21 = a1;
              while (*v21 != v19)
              {
                v21 = (v21 + 8);
                v20 -= 8;
                if (!v20)
                {
                  goto LABEL_23;
                }
              }

              if (!v20)
              {
                break;
              }

LABEL_17:
              v18 = 0;
              if (++v16 == v17)
              {
                goto LABEL_30;
              }
            }

LABEL_23:
            if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
            {
            }

            if (v19 == qword_27F874400[0] + 96)
            {
              goto LABEL_17;
            }

            ++v16;
          }

          while (v16 != v17);
          if ((v18 & 1) == 0)
          {
            goto LABEL_30;
          }

          v14 = *(v13 + 8);
        }

        *(v14 + 10) = *(v14 + 10) & 0xFF9F | 0x40;
        do
        {
LABEL_30:
          v22 = v8[1];
          ++v8;
          v13 = v22;
          if (v22)
          {
            v23 = v13 == -8;
          }

          else
          {
            v23 = 1;
          }
        }

        while (v23);
        if (v8 == v32)
        {
          return;
        }
      }
    }

    while (1)
    {
      v24 = *(v13 + 8);
      v25 = *(v24 + 72);
      if (v25)
      {
        v26 = *(v24 + 64);
        v27 = 8 * v25;
        LOBYTE(v28) = 1;
        do
        {
          v29 = *v26;
          if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
          {
          }

          v28 = (v29 != qword_27F874400[0] + 96) & v28;
          ++v26;
          v27 -= 8;
        }

        while (v27);
        if (!v28)
        {
          goto LABEL_44;
        }

        v24 = *(v13 + 8);
      }

      *(v24 + 10) = *(v24 + 10) & 0xFF9F | 0x40;
      do
      {
LABEL_44:
        v30 = v8[1];
        ++v8;
        v13 = v30;
        if (v30)
        {
          v31 = v13 == -8;
        }

        else
        {
          v31 = 1;
        }
      }

      while (v31);
      if (v8 == v32)
      {
        return;
      }
    }
  }

  v8 = *(a3 + 128);
  if (*v6)
  {
    v9 = *v6 == -8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    do
    {
      v11 = v8[1];
      ++v8;
      v10 = v11;
      if (v11)
      {
        v12 = v10 == -8;
      }

      else
      {
        v12 = 1;
      }
    }

    while (v12);
  }

  v32 = &v6[v7];
  if (v8 != v32)
  {
    goto LABEL_14;
  }
}

void llvm::cl::ResetCommandLineParser(llvm::cl *this)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    v1 = qword_27F8743B8[0];
    *(qword_27F8743B8[0] + 336) = 0;
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      *v1 = 0;
      *(v1 + 23) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v1 = qword_27F8743B8[0];
    *(qword_27F8743B8[0] + 336) = 0;
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  **v1 = 0;
  *(v1 + 8) = 0;
LABEL_6:
  v2 = *(v1 + 112);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 48) = *(v1 + 40);
  if (*(v1 + 120) != v2)
  {
    v3 = *(v1 + 128);
    if (v3 >= 0x21 && 4 * (*(v1 + 132) - *(v1 + 136)) < v3)
    {
      llvm::SmallPtrSetImplBase::shrink_and_clear((v1 + 112));
      v5 = *(v1 + 280);
      if (v5 != *(v1 + 272))
      {
        goto LABEL_16;
      }

LABEL_22:
      *(v1 + 292) = 0;
      if (atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    memset(*(v1 + 120), 255, 8 * v3);
  }

  *(v1 + 132) = 0;
  *(v1 + 136) = 0;
  v5 = *(v1 + 280);
  if (v5 == *(v1 + 272))
  {
    goto LABEL_22;
  }

LABEL_16:
  v6 = *(v1 + 288);
  if (v6 < 0x21 || 4 * (*(v1 + 292) - *(v1 + 296)) >= v6)
  {
    memset(v5, 255, 8 * v6);
    goto LABEL_22;
  }

  llvm::SmallPtrSetImplBase::shrink_and_clear((v1 + 272));
  if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
  {
LABEL_23:
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

LABEL_24:
  v8 = qword_27F8743D0[0];
  *(qword_27F8743D0[0] + 40) = 0;
  *(v8 + 88) = 0;
  if (*(v8 + 140))
  {
    v9 = *(v8 + 136);
    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = *(v8 + 128);
        v12 = *(v11 + v10);
        if (v12 != -8 && v12 != 0)
        {
          llvm::deallocate_buffer(v12, (*v12 + 17));
        }

        *(v11 + v10) = 0;
        v10 += 8;
      }

      while (8 * v9 != v10);
    }

    *(v8 + 140) = 0;
    *(v8 + 144) = 0;
  }

  *(v8 + 152) = 0;
  if (!atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v14 = qword_27F8743E8;
  *(qword_27F8743E8 + 40) = 0;
  *(v14 + 88) = 0;
  if (*(v14 + 140))
  {
    v15 = *(v14 + 136);
    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = *(v14 + 128);
        v18 = *(v17 + v16);
        if (v18 != -8 && v18 != 0)
        {
          llvm::deallocate_buffer(v18, (*v18 + 17));
        }

        *(v17 + v16) = 0;
        v16 += 8;
      }

      while (8 * v15 != v16);
    }

    *(v14 + 140) = 0;
    *(v14 + 144) = 0;
  }

  *(v14 + 152) = 0;
  if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  *(v1 + 72) = 0;
}

void llvm::cl::ResetAllOptionOccurrences(llvm::cl *this)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    v2 = qword_27F8743B8[0];
  }

  else
  {
    v2 = qword_27F8743B8[0];
  }
}

void anonymous namespace::CommandLineParser::ResetAllOptionOccurrences(_anonymous_namespace_::CommandLineParser *this)
{
  v1 = *(this + 35);
  v2 = 16;
  if (v1 == *(this + 34))
  {
    v2 = 20;
  }

  v3 = *(this + v2 + 272);
  if (v3)
  {
    v4 = 8 * v3;
    for (i = *(this + 35); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return;
      }
    }
  }

  else
  {
    i = *(this + 35);
  }

  v6 = (v1 + 8 * v3);
  if (i != v6)
  {
    v102 = v6;
    v7 = &unk_27F874000;
    while (1)
    {
      v8 = *(*i + 128);
      v103 = *i;
      v9 = *(*i + 136);
      if (v9)
      {
        break;
      }

      v10 = *(*i + 128);
      v15 = &v8[v9];
      if (v8 != v15)
      {
        goto LABEL_25;
      }

LABEL_79:
      v44 = *(v103 + 40);
      if (v44)
      {
        v45 = *(v103 + 32);
        v46 = &v45[v44];
        do
        {
          v48 = *v45;
          v48[4] = 0;
          (*(*v48 + 64))(v48);
          if ((v48[5] & 0x2000) == 0)
          {
            goto LABEL_83;
          }

          if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
          {
            v49 = v7[119];
            v105 = &v106;
            v106 = v48;
            v104 = v49;
            v50 = *(v48 + 27) - *(v48 + 28);
            if (v50)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v49 = v7[119];
            v105 = &v106;
            v106 = v48;
            v104 = v49;
            v50 = *(v48 + 27) - *(v48 + 28);
            if (v50)
            {
LABEL_89:
              v51 = v48 + 44;
              if (v50 != 1)
              {
                goto LABEL_99;
              }

              v52 = *(v48 + 12);
              v53 = 8;
              if (v52 == *(v48 + 11))
              {
                v53 = 10;
              }

              v54 = *&v51[v53];
              if (v54)
              {
                v55 = 8 * v54;
                v56 = &v52[v54];
                while (*v52 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  ++v52;
                  v55 -= 8;
                  if (!v55)
                  {
                    v52 = v56;
                    break;
                  }
                }
              }

              v57 = *v52;
              if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
              {
                v11 = v57 == qword_27F8743E8;
                v7 = &unk_27F874000;
                if (!v11)
                {
                  goto LABEL_99;
                }
              }

              else
              {
                llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
                v11 = v57 == qword_27F8743E8;
                v7 = &unk_27F874000;
                if (!v11)
                {
LABEL_99:
                  v58 = *(v48 + 12);
                  v59 = 8;
                  if (v58 == *(v48 + 11))
                  {
                    v59 = 10;
                  }

                  v60 = *&v51[v59];
                  if (v60)
                  {
                    v61 = 8 * v60;
                    v62 = *(v48 + 12);
                    while (*v62 >= 0xFFFFFFFFFFFFFFFELL)
                    {
                      ++v62;
                      v61 -= 8;
                      if (!v61)
                      {
                        goto LABEL_83;
                      }
                    }
                  }

                  else
                  {
                    v62 = *(v48 + 12);
                  }

                  v63 = (v58 + 8 * v60);
                  while (v62 != v63)
                  {
                    v64 = *v62++;
                    if (v62 == v63)
                    {
                      break;
                    }

                    while (*v62 >= 0xFFFFFFFFFFFFFFFELL)
                    {
                      if (++v62 == v63)
                      {
                        goto LABEL_83;
                      }
                    }
                  }

                  goto LABEL_83;
                }
              }

              v65 = *(v49 + 280);
              v66 = 16;
              if (v65 == *(v49 + 272))
              {
                v66 = 20;
              }

              v67 = *(v49 + 272 + v66);
              if (v67)
              {
                v68 = 8 * v67;
                v69 = *(v49 + 280);
                while (*v69 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  ++v69;
                  v68 -= 8;
                  if (!v68)
                  {
                    goto LABEL_128;
                  }
                }
              }

              else
              {
                v69 = *(v49 + 280);
              }

              v70 = (v65 + 8 * v67);
              while (v69 != v70)
              {
                v71 = *v69++;
                if (v69 == v70)
                {
                  break;
                }

                while (*v69 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  if (++v69 == v70)
                  {
                    goto LABEL_128;
                  }
                }
              }

LABEL_128:
              v47 = &qword_27F8743E8;
              if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
              {
                goto LABEL_82;
              }

LABEL_129:
              llvm::ManagedStaticBase::RegisterManagedStatic(v47, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
              goto LABEL_82;
            }
          }

          v47 = qword_27F8743D0;
          if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
          {
            goto LABEL_129;
          }

LABEL_82:
LABEL_83:
          ++v45;
        }

        while (v45 != v46);
      }

      v72 = *(v103 + 88);
      if (v72)
      {
        v73 = *(v103 + 80);
        v74 = &v73[v72];
        while (2)
        {
          v76 = *v73;
          v76[4] = 0;
          (*(*v76 + 64))(v76);
          if ((v76[5] & 0x2000) == 0)
          {
            goto LABEL_134;
          }

          if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
          {
            v77 = v7[119];
            v105 = &v106;
            v106 = v76;
            v104 = v77;
            v78 = *(v76 + 27) - *(v76 + 28);
            if (v78)
            {
LABEL_140:
              v79 = v76 + 44;
              if (v78 != 1)
              {
                goto LABEL_150;
              }

              v80 = *(v76 + 12);
              v81 = 8;
              if (v80 == *(v76 + 11))
              {
                v81 = 10;
              }

              v82 = *&v79[v81];
              if (v82)
              {
                v83 = 8 * v82;
                v84 = &v80[v82];
                while (*v80 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  ++v80;
                  v83 -= 8;
                  if (!v83)
                  {
                    v80 = v84;
                    break;
                  }
                }
              }

              v85 = *v80;
              if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
              {
                v11 = v85 == qword_27F8743E8;
                v7 = &unk_27F874000;
                if (!v11)
                {
                  goto LABEL_150;
                }
              }

              else
              {
                llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
                v11 = v85 == qword_27F8743E8;
                v7 = &unk_27F874000;
                if (!v11)
                {
LABEL_150:
                  v86 = *(v76 + 12);
                  v87 = 8;
                  if (v86 == *(v76 + 11))
                  {
                    v87 = 10;
                  }

                  v88 = *&v79[v87];
                  if (v88)
                  {
                    v89 = 8 * v88;
                    v90 = *(v76 + 12);
                    while (*v90 >= 0xFFFFFFFFFFFFFFFELL)
                    {
                      ++v90;
                      v89 -= 8;
                      if (!v89)
                      {
                        goto LABEL_134;
                      }
                    }
                  }

                  else
                  {
                    v90 = *(v76 + 12);
                  }

                  v91 = (v86 + 8 * v88);
                  while (v90 != v91)
                  {
                    v92 = *v90++;
                    if (v90 == v91)
                    {
                      break;
                    }

                    while (*v90 >= 0xFFFFFFFFFFFFFFFELL)
                    {
                      if (++v90 == v91)
                      {
                        goto LABEL_134;
                      }
                    }
                  }

                  goto LABEL_134;
                }
              }

              v93 = *(v77 + 280);
              v94 = 16;
              if (v93 == *(v77 + 272))
              {
                v94 = 20;
              }

              v95 = *(v77 + 272 + v94);
              if (v95)
              {
                v96 = 8 * v95;
                v97 = *(v77 + 280);
                while (*v97 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  ++v97;
                  v96 -= 8;
                  if (!v96)
                  {
                    goto LABEL_179;
                  }
                }
              }

              else
              {
                v97 = *(v77 + 280);
              }

              v98 = (v93 + 8 * v95);
              while (v97 != v98)
              {
                v99 = *v97++;
                if (v97 == v98)
                {
                  break;
                }

                while (*v97 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  if (++v97 == v98)
                  {
                    goto LABEL_179;
                  }
                }
              }

LABEL_179:
              v75 = &qword_27F8743E8;
              if (!atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
              {
LABEL_180:
                llvm::ManagedStaticBase::RegisterManagedStatic(v75, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
              }

LABEL_133:
LABEL_134:
              if (++v73 == v74)
              {
                goto LABEL_181;
              }

              continue;
            }
          }

          else
          {
            v77 = v7[119];
            v105 = &v106;
            v106 = v76;
            v104 = v77;
            v78 = *(v76 + 27) - *(v76 + 28);
            if (v78)
            {
              goto LABEL_140;
            }
          }

          break;
        }

        v75 = qword_27F8743D0;
        if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
        {
          goto LABEL_180;
        }

        goto LABEL_133;
      }

LABEL_181:
      v100 = *(v103 + 152);
      if (v100)
      {
        v100[4] = 0;
        (*(*v100 + 64))(v100);
        if ((v100[5] & 0x2000) != 0)
        {
          if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
          {
          }

          v101 = v7[119];
          v105 = &v106;
          v106 = v100;
          v104 = v101;
        }
      }

      for (++i; i != v102; ++i)
      {
        if (*i < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }
      }

      if (i == v102)
      {
        return;
      }
    }

    v10 = *(*i + 128);
    if (*v8)
    {
      v11 = *v8 == -8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      do
      {
        v13 = v10[1];
        ++v10;
        v12 = v13;
        if (v13)
        {
          v14 = v12 == -8;
        }

        else
        {
          v14 = 1;
        }
      }

      while (v14);
    }

    v15 = &v8[v9];
    if (v10 == v15)
    {
      goto LABEL_79;
    }

LABEL_25:
    v16 = *v10;
    while (1)
    {
      v17 = *(v16 + 8);
      v17[4] = 0;
      (*(*v17 + 64))(v17);
      if ((v17[5] & 0x2000) != 0)
      {
        break;
      }

      do
      {
LABEL_56:
        v35 = v10[1];
        ++v10;
        v16 = v35;
        if (v35)
        {
          v36 = v16 == -8;
        }

        else
        {
          v36 = 1;
        }
      }

      while (v36);
      if (v10 == v15)
      {
        goto LABEL_79;
      }
    }

    if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
      v18 = v7[119];
      v105 = &v106;
      v106 = v17;
      v104 = v18;
      v19 = *(v17 + 27) - *(v17 + 28);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = v7[119];
      v105 = &v106;
      v106 = v17;
      v104 = v18;
      v19 = *(v17 + 27) - *(v17 + 28);
      if (!v19)
      {
LABEL_29:
        v20 = qword_27F8743D0;
        if (atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
        {
LABEL_31:
          goto LABEL_56;
        }

LABEL_30:
        llvm::ManagedStaticBase::RegisterManagedStatic(v20, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
        goto LABEL_31;
      }
    }

    v21 = v17 + 44;
    if (v19 != 1)
    {
      goto LABEL_43;
    }

    v22 = *(v17 + 12);
    v23 = 8;
    if (v22 == *(v17 + 11))
    {
      v23 = 10;
    }

    v24 = *&v21[v23];
    if (v24)
    {
      v25 = 8 * v24;
      v26 = &v22[v24];
      while (*v22 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v22;
        v25 -= 8;
        if (!v25)
        {
          v22 = v26;
          break;
        }
      }
    }

    v27 = *v22;
    if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
    {
      v11 = v27 == qword_27F8743E8;
      v7 = &unk_27F874000;
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      v11 = v27 == qword_27F8743E8;
      v7 = &unk_27F874000;
      if (!v11)
      {
LABEL_43:
        v28 = *(v17 + 12);
        v29 = 8;
        if (v28 == *(v17 + 11))
        {
          v29 = 10;
        }

        v30 = *&v21[v29];
        if (v30)
        {
          v31 = 8 * v30;
          v32 = *(v17 + 12);
          while (*v32 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v32;
            v31 -= 8;
            if (!v31)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          v32 = *(v17 + 12);
        }

        v33 = (v28 + 8 * v30);
        while (v32 != v33)
        {
          v34 = *v32++;
          if (v32 == v33)
          {
            break;
          }

          while (*v32 >= 0xFFFFFFFFFFFFFFFELL)
          {
            if (++v32 == v33)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }
    }

    v37 = *(v18 + 280);
    v38 = 16;
    if (v37 == *(v18 + 272))
    {
      v38 = 20;
    }

    v39 = *(v18 + 272 + v38);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = *(v18 + 280);
      while (*v41 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v41;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
      v41 = *(v18 + 280);
    }

    v42 = (v37 + 8 * v39);
    while (v41 != v42)
    {
      v43 = *v41++;
      if (v41 == v42)
      {
        break;
      }

      while (*v41 >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (++v41 == v42)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_77:
    v20 = &qword_27F8743E8;
    if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }
}

uint64_t LLVMParseCommandLineOptions(llvm *a1, void *a2, char *__s)
{
  v5 = a1;
  if (__s)
  {
    a1 = strlen(__s);
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = llvm::nulls(a1);

  return llvm::cl::ParseCommandLineOptions(v5, a2, __s, v6, v7, 0, 0);
}

void *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(void *a1)
{
  *a1 = &unk_28689F660;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(void *a1)
{
  *a1 = &unk_28689F660;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void *llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt(void *a1)
{
  *a1 = &unk_28689F710;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt(void *a1)
{
  *a1 = &unk_28689F710;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_28689F7C0;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 152) = &unk_28685B750;
    if ((*(a1 + 183) & 0x80000000) == 0)
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

    *(a1 + 152) = &unk_28685B750;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 160));
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
LABEL_6:
    *a1 = &unk_28689F010;
    v4 = *(a1 + 96);
    if (v4 == *(a1 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(*(a1 + 128));
  *a1 = &unk_28689F010;
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
LABEL_7:
    free(v4);
  }

LABEL_8:
  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_28689F7C0;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 152) = &unk_28685B750;
    if ((*(a1 + 183) & 0x80000000) == 0)
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

    *(a1 + 152) = &unk_28685B750;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  operator delete(*(a1 + 160));
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
LABEL_6:
    *a1 = &unk_28689F010;
    v4 = *(a1 + 96);
    if (v4 == *(a1 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  operator delete(*(a1 + 128));
  *a1 = &unk_28689F010;
  v4 = *(a1 + 96);
  if (v4 == *(a1 + 88))
  {
LABEL_8:
    v5 = *(a1 + 64);
    if (v5 != (a1 + 80))
    {
      free(v5);
    }

    JUMPOUT(0x259C63180);
  }

LABEL_7:
  free(v4);
  goto LABEL_8;
}

void *llvm::cl::opt<char,false,llvm::cl::parser<char>>::~opt(void *a1)
{
  *a1 = &unk_28689F888;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<char,false,llvm::cl::parser<char>>::~opt(void *a1)
{
  *a1 = &unk_28689F888;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689F938;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689F938;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::alias::getValueExpectedFlagDefault(llvm::cl::alias *this)
{
  v1 = *(this + 16);
  if (((v1[5] >> 3) & 3) != 0)
  {
    return (v1[5] >> 3) & 3;
  }

  else
  {
    return (*(*v1 + 8))();
  }
}

void llvm::cl::alias::~alias(llvm::cl::alias *this)
{
  *this = &unk_28689F010;
  v2 = *(this + 12);
  if (v2 != *(this + 11))
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }
}

{
  *this = &unk_28689F010;
  v2 = *(this + 12);
  if (v2 != *(this + 11))
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::CommandLineParser::forEachSubCommand(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = *(a2 + 108) - *(a2 + 112);
  if (!v5)
  {
    v6 = &qword_27F8743D0;
LABEL_3:
    if (!atomic_load_explicit(v6, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(v6, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    }

    v7 = *v6;

    return a3(a4, v7);
  }

  v8 = a2 + 88;
  if (v5 == 1)
  {
    v9 = *(a2 + 96);
    v10 = 16;
    if (v9 == *(a2 + 88))
    {
      v10 = 20;
    }

    v11 = *(v8 + v10);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = &v9[v11];
      while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v9;
        v12 -= 8;
        if (!v12)
        {
          v9 = v13;
          break;
        }
      }
    }

    v14 = *v9;
    v6 = &qword_27F8743E8;
    if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
    {
      if (v14 != qword_27F8743E8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = result;
      v23 = a2;
      llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      a2 = v23;
      result = v22;
      if (v14 != qword_27F8743E8)
      {
        goto LABEL_18;
      }
    }

    v24 = *(result + 280);
    v25 = 16;
    if (v24 == *(result + 272))
    {
      v25 = 20;
    }

    v26 = *(result + 272 + v25);
    if (v26)
    {
      v27 = 8 * v26;
      v28 = *(result + 280);
      while (*v28 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v28;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v28 = *(result + 280);
    }

    v29 = (v24 + 8 * v26);
    while (v28 != v29)
    {
      v30 = *v28++;
      a3(a4, v30);
      for (; v28 != v29; ++v28)
      {
        if (*v28 < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }
      }
    }

    goto LABEL_3;
  }

LABEL_18:
  v15 = *(a2 + 96);
  v16 = 16;
  if (v15 == *(a2 + 88))
  {
    v16 = 20;
  }

  v17 = *(v8 + v16);
  if (v17)
  {
    v18 = 8 * v17;
    for (i = *(a2 + 96); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v18 -= 8;
      if (!v18)
      {
        return result;
      }
    }
  }

  else
  {
    i = *(a2 + 96);
  }

  v20 = (v15 + 8 * v17);
  while (i != v20)
  {
    v21 = *i++;
    for (result = a3(a4, v21); i != v20; ++i)
    {
      if (*i < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t *anonymous namespace::CommandLineParser::addLiteralOption(uint64_t *result, uint64_t a2, const unsigned __int8 *a3, unsigned int *a4, unint64_t a5)
{
  if (!*(a2 + 24))
  {
    v8 = result;
    v15 = a2;
    v9 = llvm::StringMapImpl::hash(a4, a5, a3);
    result = llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>((a3 + 128), a4, a5, v9, &v15);
    if ((v10 & 1) == 0)
    {
      v11 = llvm::errs(result);
      v12 = llvm::raw_ostream::operator<<(v11, v8);
      v13 = llvm::raw_ostream::operator<<(v12, ": CommandLine Error: Option '");
      v14 = llvm::raw_ostream::operator<<(v13, a4, a5);
      llvm::raw_ostream::operator<<(v14, "' registered more than once!\n");
      llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
    }
  }

  return result;
}

char *anonymous namespace::CommandLineParser::addOption(char *this, llvm::cl::Option *a2, llvm::cl::SubCommand *a3)
{
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = this;
    if ((*(a2 + 5) & 0x2000) != 0)
    {
      v7 = *(a2 + 2);
      v8 = llvm::StringMapImpl::hash(v7, *(a2 + 3), a3);
      this = llvm::StringMapImpl::FindKey(a3 + 16, v7, v5, v8);
      if (this != -1 && this != *(a3 + 34))
      {
        return this;
      }
    }

    v27 = *(a2 + 1);
    v28 = a2;
    v9 = llvm::StringMapImpl::hash(v27, *(&v27 + 1), a3);
    this = llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>((a3 + 128), v27, *(&v27 + 1), v9, &v28);
    if ((v10 & 1) == 0)
    {
      v14 = llvm::errs(this);
      v15 = v6[23];
      if (v15 >= 0)
      {
        v16 = v6;
      }

      else
      {
        v16 = *v6;
      }

      if (v15 >= 0)
      {
        v17 = *(v6 + 23);
      }

      else
      {
        v17 = *(v6 + 1);
      }

      this = llvm::raw_ostream::write(v14, v16, v17);
      v18 = *(this + 4);
      if (*(this + 3) - v18 > 0x1CuLL)
      {
        qmemcpy(v18, ": CommandLine Error: Option '", 29);
        v24 = *(this + 3);
        v19 = (*(this + 4) + 29);
        *(this + 4) = v19;
        v20 = *(a2 + 2);
        v21 = *(a2 + 3);
        if (v21 <= v24 - v19)
        {
LABEL_18:
          if (v21)
          {
            v22 = this;
            v23 = v21;
            memcpy(v19, v20, v21);
            this = v22;
            v19 = (*(v22 + 4) + v23);
            *(v22 + 4) = v19;
          }

          if (*(this + 3) - v19 <= 0x1CuLL)
          {
LABEL_21:
            this = llvm::raw_ostream::write(this, "' registered more than once!\n", 0x1DuLL);
            v11 = 1;
            v12 = *(a2 + 5);
            if ((v12 & 0x180) != 0x80)
            {
              goto LABEL_26;
            }

LABEL_7:
            v13 = *(a3 + 10);
            if (v13 >= *(a3 + 11))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*(a3 + 4) + 8 * v13) = a2;
            ++*(a3 + 10);
            if (v11)
            {
              goto LABEL_39;
            }

            return this;
          }

LABEL_25:
          qmemcpy(v19, "' registered more than once!\n", 29);
          *(this + 4) += 29;
          v11 = 1;
          v12 = *(a2 + 5);
          if ((v12 & 0x180) != 0x80)
          {
            goto LABEL_26;
          }

          goto LABEL_7;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(this, ": CommandLine Error: Option '", 0x1DuLL);
        v19 = *(this + 4);
        v20 = *(a2 + 2);
        v21 = *(a2 + 3);
        if (v21 <= *(this + 3) - v19)
        {
          goto LABEL_18;
        }
      }

      this = llvm::raw_ostream::write(this, v20, v21);
      v19 = *(this + 4);
      if (*(this + 3) - v19 <= 0x1CuLL)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  v11 = 0;
  v12 = *(a2 + 5);
  if ((v12 & 0x180) == 0x80)
  {
    goto LABEL_7;
  }

LABEL_26:
  if ((v12 & 0x800) != 0)
  {
    v25 = *(a3 + 22);
    if (v25 >= *(a3 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a3 + 10) + 8 * v25) = a2;
    ++*(a3 + 22);
    if ((v11 & 1) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

  if ((v12 & 7) != 4)
  {
    if (v11)
    {
      goto LABEL_39;
    }

    return this;
  }

  if (*(a3 + 19))
  {
    *&v27 = "Cannot specify more than one option with cl::ConsumeAfter!";
    v29 = 259;
    v26 = llvm::errs(this);
    llvm::cl::Option::error(a2, &v27, 0, 0, v26);
    *(a3 + 19) = a2;
    goto LABEL_39;
  }

  *(a3 + 19) = a2;
  if (v11)
  {
LABEL_39:
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  return this;
}

void llvm::function_ref<void ()(llvm::cl::SubCommand &)>::callback_fn<anonymous namespace::CommandLineParser::removeOption(llvm::cl::Option *)::{lambda(llvm::cl::SubCommand &)#1}>(uint64_t a1, uint64_t a2)
{
  v31[32] = *MEMORY[0x277D85DE8];
  v3 = **(a1 + 8);
  v29 = v31;
  v30 = 0x1000000000;
  (*(*v3 + 72))(v3, &v29);
  v5 = *(v3 + 24);
  v6 = v30;
  if (v5)
  {
    if (v30 >= HIDWORD(v30))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v29 + 16 * v30;
    *v7 = *(v3 + 16);
    v7[1] = v5;
    v6 = v30 + 1;
    LODWORD(v30) = v30 + 1;
  }

  if (v6)
  {
    v8 = *(a2 + 128) + 8 * *(a2 + 136);
    v9 = v29;
    v10 = v29 + 16 * v6;
    do
    {
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = llvm::StringMapImpl::hash(*v9, v12, v4);
      Key = llvm::StringMapImpl::FindKey((a2 + 128), v11, v12, v13);
      v15 = Key;
      if (Key == -1)
      {
        v15 = *(a2 + 136);
      }

      v16 = *(a2 + 128) + 8 * v15;
      if (v16 != v8)
      {
        v17 = *v16;
        if (*(*v16 + 8) == v3)
        {
          llvm::StringMapImpl::RemoveKey(a2 + 128, v17);
          llvm::deallocate_buffer(v17, (*v17 + 17));
        }
      }

      v9 += 16;
    }

    while (v9 != v10);
  }

  if ((*(v3 + 10) & 0x180) == 0x80)
  {
    v18 = *(a2 + 40);
    if (v18)
    {
      v19 = *(a2 + 32);
      v20 = 8 * v18 - 8;
      v21 = v19;
      while (1)
      {
        v22 = *v21++;
        if (v22 == v3)
        {
          break;
        }

        v20 -= 8;
        v19 = v21;
        if (v20 == -8)
        {
          goto LABEL_30;
        }
      }

      if (v20)
      {
        memmove(v19, v19 + 1, v20);
        LODWORD(v18) = *(a2 + 40);
      }

      *(a2 + 40) = v18 - 1;
    }

LABEL_30:
    v23 = v29;
    if (v29 == v31)
    {
      return;
    }

    goto LABEL_31;
  }

  if ((*(v3 + 10) & 0x800) == 0)
  {
    if (*(a2 + 152) != v3)
    {
      goto LABEL_30;
    }

    *(a2 + 152) = 0;
    v23 = v29;
    if (v29 == v31)
    {
      return;
    }

    goto LABEL_31;
  }

  v24 = *(a2 + 88);
  if (!v24)
  {
    goto LABEL_30;
  }

  v25 = *(a2 + 80);
  v26 = 8 * v24 - 8;
  v27 = v25;
  while (1)
  {
    v28 = *v27++;
    if (v28 == v3)
    {
      break;
    }

    v26 -= 8;
    v25 = v27;
    if (v26 == -8)
    {
      goto LABEL_30;
    }
  }

  if (v26)
  {
    memmove(v25, v25 + 1, v26);
    LODWORD(v24) = *(a2 + 88);
  }

  *(a2 + 88) = v24 - 1;
  v23 = v29;
  if (v29 != v31)
  {
LABEL_31:
    free(v23);
  }
}

uint64_t llvm::function_ref<void ()(llvm::cl::SubCommand &)>::callback_fn<anonymous namespace::CommandLineParser::updateArgStr(llvm::cl::Option *,llvm::StringRef)::{lambda(llvm::cl::SubCommand &)#1}>(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = **(a1 + 8);
  v6 = *(a1 + 16);
  v20 = *v6;
  v21 = *(v6 + 8);
  v22 = v5;
  v7 = llvm::StringMapImpl::hash(v20, v21, a3);
  v8 = llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>((a2 + 128), v20, v21, v7, &v22);
  if ((v10 & 1) == 0)
  {
    v16 = llvm::errs(v8);
    v17 = llvm::raw_ostream::operator<<(v16, v4);
    v18 = llvm::raw_ostream::operator<<(v17, ": CommandLine Error: Option '");
    v19 = llvm::raw_ostream::operator<<(v18, *(v5 + 16), *(v5 + 24));
    llvm::raw_ostream::operator<<(v19, "' registered more than once!\n");
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = llvm::StringMapImpl::hash(v11, v12, v9);
  result = llvm::StringMapImpl::FindKey((a2 + 128), v11, v12, v13);
  if (result != -1 && result != *(a2 + 136))
  {
    v15 = *(*(a2 + 128) + 8 * result);
    llvm::StringMapImpl::RemoveKey(a2 + 128, v15);
    llvm::deallocate_buffer(v15, (*v15 + 17));
  }

  return result;
}

uint64_t CommaSeparateAndAddOccurrence(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, size_t __n, uint64_t a7)
{
  v8 = __n;
  v9 = __s;
  if ((a1[5] & 0x200) != 0 && __n && (v14 = memchr(__s, 44, __n)) != 0 && (v15 = v14 - v9, v14 - v9 != -1))
  {
    while (1)
    {
      v16 = v8 >= v15 ? v15 : v8;
      if ((*(*a1 + 80))(a1, a2, a3, a4, v9, v16, a7))
      {
        return 1;
      }

      if (v8 >= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v8;
      }

      v9 += v17;
      v8 -= v17;
      if (v8)
      {
        v18 = memchr(v9, 44, v8);
        v15 = v18 - v9;
        if (v18 && v15 != -1)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
LABEL_18:
    v20 = *(*a1 + 80);

    return v20(a1, a2, a3, a4, v9, v8, a7);
  }
}

uint64_t parseBackslash(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = a2 - 1;
  v6 = a2 - a3;
  do
  {
    if (!(a3 - a2 + 1 + v4))
    {
      goto LABEL_9;
    }

    v7 = *(a3 + a1 + 1 + v4++);
  }

  while (v7 == 92);
  if (v7 != 34)
  {
    v5 = a3 + v4 - 1;
    v6 = v4;
LABEL_9:
    v11 = v6;
    v12 = a4[1];
    v10 = a4 + 1;
    if (v12 + v11 > a4[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memset((*a4 + v12), 92, v11);
LABEL_16:
    *v10 += v11;
    return v5;
  }

  v8 = v4 >> 1;
  v9 = a4[1];
  v10 = a4 + 1;
  if ((v9 + v8) > a4[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v5 = a3 + v4;
  if (v4 == 1)
  {
    *v10 = v9;
LABEL_14:
    if ((v9 + 1) > a4[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a4 + v9) = 34;
    v11 = 1;
    goto LABEL_16;
  }

  v13 = v4 - 1;
  v14 = v4 >> 1;
  v15 = a4;
  memset((*a4 + v9), 92, v14);
  a4 = v15;
  v9 = v15[1] + v8;
  v15[1] = v9;
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  return --v5;
}

uint64_t anonymous namespace::CommandLineParser::LookupLongOption(_anonymous_namespace_::CommandLineParser *this, llvm::cl::SubCommand *a2, llvm::StringRef *a3, llvm::StringRef *a4, char a5)
{
  v5 = *(a2 + 1);
  if (!v5)
  {
    return 0;
  }

  v7 = a4;
  v11 = *a2;
  v12 = memchr(*a2, 61, v5);
  v14 = v12 - v11;
  if (v12)
  {
    v15 = v14 == -1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (v5 >= v14)
    {
      v5 = v12 - v11;
    }

    v20 = llvm::StringMapImpl::hash(v11, v5, v13);
    Key = llvm::StringMapImpl::FindKey(this + 16, v11, v5, v20);
    if (Key == -1 || Key == *(this + 34))
    {
      return 0;
    }

    result = *(*(*(this + 16) + 8 * Key) + 8);
    if ((~*(result + 10) & 0x180) == 0)
    {
      return 0;
    }

    v23 = *(a2 + 1);
    if (v23 >= v14 + 1)
    {
      v24 = v14 + 1;
    }

    else
    {
      v24 = *(a2 + 1);
    }

    *a3 = *a2 + v24;
    *(a3 + 1) = v23 - v24;
    v25 = *(a2 + 1);
    if (v25 >= v14)
    {
      v25 = v14;
    }

    *(a2 + 1) = v25;
    if (result)
    {
      v26 = v7 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return result;
    }

    goto LABEL_31;
  }

  v16 = llvm::StringMapImpl::hash(v11, v5, v13);
  v17 = llvm::StringMapImpl::FindKey(this + 16, v11, v5, v16);
  if (v17 == -1 || v17 == *(this + 34))
  {
    return 0;
  }

  result = *(*(*(this + 16) + 8 * v17) + 8);
  if (result)
  {
    v19 = v7 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
LABEL_31:
    if ((a5 & 1) == 0 && (*(result + 10) & 0x1000) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getOptionPred(unsigned int *a1, unint64_t a2, unsigned __int8 *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = a2;
  v10 = llvm::StringMapImpl::hash(a1, a2, a3);
  Key = llvm::StringMapImpl::FindKey(a5, a1, v8, v10);
  v13 = *a5;
  v14 = Key;
  v15 = *(a5 + 8);
  if (Key == -1)
  {
    v14 = *(a5 + 8);
  }

  v16 = v13 + 8 * v14;
  if (v14 != v15)
  {
    v17 = a4(*(*v16 + 8));
    v13 = *a5;
    v15 = *(a5 + 8);
    if (!v17)
    {
      v16 = *a5 + 8 * v15;
    }
  }

  v18 = v13 + 8 * v15;
  if (v16 == v18 && v8 >= 2)
  {
    do
    {
      v22 = llvm::StringMapImpl::hash(a1, --v8, v12);
      v23 = llvm::StringMapImpl::FindKey(a5, a1, v8, v22);
      v24 = *a5;
      v25 = v23;
      v26 = *(a5 + 8);
      if (v23 == -1)
      {
        v25 = *(a5 + 8);
      }

      v16 = v24 + 8 * v25;
      if (v25 != v26)
      {
        v27 = a4(*(*v16 + 8));
        v24 = *a5;
        v26 = *(a5 + 8);
        if (!v27)
        {
          v16 = *a5 + 8 * v26;
        }
      }

      v18 = v24 + 8 * v26;
    }

    while (v16 == v18 && v8 > 1);
  }

  if (v16 == v18 || !a4(*(*v16 + 8)))
  {
    return 0;
  }

  *a3 = v8;
  return *(*v16 + 8);
}

void *llvm::object_deleter<anonymous namespace::CommandLineCommonOptions>::call(void *result)
{
  if (result)
  {
    v1 = result;
    result[181] = &unk_28689FDE0;
    v2 = result + 200;
    v3 = result[203];
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      v1[181] = &unk_28689F010;
      v4 = v1[193];
      if (v4 != v1[192])
      {
LABEL_6:
        free(v4);
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v1[181] = &unk_28689F010;
      v4 = v1[193];
      if (v4 != v1[192])
      {
        goto LABEL_6;
      }
    }

    v5 = v1[189];
    if (v5 != v1 + 191)
    {
      free(v5);
    }

    v6 = v1[177];
    if (v6)
    {
      v7 = v1[178];
      v8 = v1[177];
      if (v7 != v6)
      {
        v9 = v7 - 32;
        do
        {
          v10 = *(v7 - 8);
          v7 -= 32;
          if (v7 == v10)
          {
            (*(*v10 + 32))(v10);
          }

          else if (v10)
          {
            (*(*v10 + 40))(v10);
          }

          v9 -= 32;
        }

        while (v7 != v6);
        v8 = v1[177];
      }

      v1[178] = v6;
      operator delete(v8);
    }

    v11 = v1[176];
    if (v11 == v1 + 173)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v1[149] = &unk_28689F938;
    v12 = v1[172];
    if (v12 == v1 + 169)
    {
      (*(*v12 + 32))(v12);
      v1[149] = &unk_28689F010;
      v13 = v1[161];
      if (v13 != v1[160])
      {
LABEL_30:
        free(v13);
      }
    }

    else
    {
      if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v1[149] = &unk_28689F010;
      v13 = v1[161];
      if (v13 != v1[160])
      {
        goto LABEL_30;
      }
    }

    v14 = v1[157];
    if (v14 != v1 + 159)
    {
      free(v14);
    }

    v1[125] = &unk_28689F938;
    v15 = v1[148];
    if (v15 == v1 + 145)
    {
      (*(*v15 + 32))(v15);
      v1[125] = &unk_28689F010;
      v16 = v1[137];
      if (v16 != v1[136])
      {
LABEL_37:
        free(v16);
      }
    }

    else
    {
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      v1[125] = &unk_28689F010;
      v16 = v1[137];
      if (v16 != v1[136])
      {
        goto LABEL_37;
      }
    }

    v17 = v1[133];
    if (v17 != v1 + 135)
    {
      free(v17);
    }

    v1[102] = &unk_28689FC60;
    v18 = v1[124];
    if (v18 == v1 + 121)
    {
      (*(*v18 + 32))(v18);
      v1[102] = &unk_28689F010;
      v19 = v1[114];
      if (v19 != v1[113])
      {
LABEL_44:
        free(v19);
      }
    }

    else
    {
      if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v1[102] = &unk_28689F010;
      v19 = v1[114];
      if (v19 != v1[113])
      {
        goto LABEL_44;
      }
    }

    v20 = v1[110];
    if (v20 != v1 + 112)
    {
      free(v20);
    }

    v1[85] = &unk_28689F010;
    v21 = v1[97];
    if (v21 != v1[96])
    {
      free(v21);
    }

    v22 = v1[93];
    if (v22 != v1 + 95)
    {
      free(v22);
    }

    v1[62] = &unk_28689FC60;
    v23 = v1[84];
    if (v23 == v1 + 81)
    {
      (*(*v23 + 32))(v23);
      v1[62] = &unk_28689F010;
      v24 = v1[74];
      if (v24 != v1[73])
      {
LABEL_55:
        free(v24);
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))(v23);
      }

      v1[62] = &unk_28689F010;
      v24 = v1[74];
      if (v24 != v1[73])
      {
        goto LABEL_55;
      }
    }

    v25 = v1[70];
    if (v25 != v1 + 72)
    {
      free(v25);
    }

    v1[39] = &unk_28689FAE0;
    v26 = v1[61];
    if (v26 == v1 + 58)
    {
      (*(*v26 + 32))(v26);
      v1[39] = &unk_28689F010;
      v27 = v1[51];
      if (v27 != v1[50])
      {
LABEL_62:
        free(v27);
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v1[39] = &unk_28689F010;
      v27 = v1[51];
      if (v27 != v1[50])
      {
        goto LABEL_62;
      }
    }

    v28 = v1[47];
    if (v28 != v1 + 49)
    {
      free(v28);
    }

    v1[16] = &unk_28689FAE0;
    v29 = v1[38];
    if (v29 == v1 + 35)
    {
      (*(*v29 + 32))(v29);
      v1[16] = &unk_28689F010;
      v30 = v1[28];
      if (v30 != v1[27])
      {
LABEL_69:
        free(v30);
      }
    }

    else
    {
      if (v29)
      {
        (*(*v29 + 40))(v29);
      }

      v1[16] = &unk_28689F010;
      v30 = v1[28];
      if (v30 != v1[27])
      {
        goto LABEL_69;
      }
    }

    v31 = v1[24];
    if (v31 != v1 + 26)
    {
      free(v31);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t anonymous namespace::HelpPrinter::printOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = 8;
    do
    {
      result = (*(**(*a2 + v6) + 48))(*(*a2 + v6), a3);
      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void anonymous namespace::CategorizedHelpPrinter::printOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = 0;
  v77 = 0;
  v78 = 0;
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v4 = *(qword_27F8743B8[0] + 120);
  v5 = 16;
  if (v4 == *(qword_27F8743B8[0] + 112))
  {
    v5 = 20;
  }

  v6 = *(qword_27F8743B8[0] + 112 + v5);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = *(qword_27F8743B8[0] + 120);
    while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v8 = *(qword_27F8743B8[0] + 120);
  }

  v9 = (v4 + 8 * v6);
  if (v8 == v9)
  {
LABEL_22:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = v10 >> 3;
      if (((v10 >> 3) + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v10 >> 3 != -1)
      {
        if (!(((v10 >> 3) + 1) >> 61))
        {
          operator new();
        }

LABEL_119:
        std::string::__throw_length_error[abi:nn200100]();
      }

      *(8 * v12) = *v8;
      v10 = 8 * v12 + 8;
      memcpy(0, 0, v11);
      do
      {
        ++v8;
      }

      while (v8 != v9 && *v8 >= 0xFFFFFFFFFFFFFFFELL);
    }

    while (v8 != v9);
  }

  v74 = v10;
  if (v10 >> 3 >= 2)
  {
  }

  v72 = *(a2 + 8);
  if (v72)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(*a2 + 16 * v13 + 8);
      v15 = *(v14 + 72);
      if (v15)
      {
        break;
      }

LABEL_27:
      if (++v13 == v72)
      {
        goto LABEL_81;
      }
    }

    v16 = *(v14 + 64);
    v17 = &v16[v15];
    while (1)
    {
      v19 = v78;
      if (!v78)
      {
        break;
      }

      v20 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v78 - 1);
      v21 = (v76 + 32 * v20);
      v22 = *v21;
      if (*v16 == *v21)
      {
        goto LABEL_48;
      }

      v23 = 0;
      v24 = 1;
      while (v22 != -4096)
      {
        if (v23)
        {
          v25 = 0;
        }

        else
        {
          v25 = v22 == -8192;
        }

        if (v25)
        {
          v23 = v21;
        }

        v26 = v20 + v24++;
        v20 = v26 & (v78 - 1);
        v21 = (v76 + 32 * v20);
        v22 = *v21;
        if (*v16 == *v21)
        {
          goto LABEL_48;
        }
      }

      if (v23)
      {
        v21 = v23;
      }

      if (4 * v77 + 4 >= 3 * v78)
      {
        break;
      }

      if (v78 + ~v77 - HIDWORD(v77) <= v78 >> 3)
      {
        goto LABEL_64;
      }

      LODWORD(v77) = v77 + 1;
      if (*v21 != -4096)
      {
        goto LABEL_46;
      }

LABEL_47:
      *v21 = *v16;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0;
LABEL_48:
      v28 = v21[2];
      v27 = v21[3];
      if (v28 < v27)
      {
        *v28 = v14;
        v18 = v28 + 8;
      }

      else
      {
        v29 = v21[1];
        v30 = v28 - v29;
        v31 = (v28 - v29) >> 3;
        v32 = v31 + 1;
        if ((v31 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v33 = v27 - v29;
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
          if (!(v34 >> 61))
          {
            operator new();
          }

          goto LABEL_119;
        }

        v35 = (v28 - v29) >> 3;
        v36 = (8 * v31);
        v37 = (8 * v31 - 8 * v35);
        *v36 = v14;
        v18 = v36 + 1;
        memcpy(v37, v29, v30);
        v21[1] = v37;
        v21[2] = v18;
        v21[3] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      v21[2] = v18;
      if (++v16 == v17)
      {
        goto LABEL_27;
      }
    }

    v19 = 2 * v78;
LABEL_64:
    llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(&v76, v19);
    if (v78)
    {
      v38 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v78 - 1);
      v21 = (v76 + 32 * v38);
      v39 = *v21;
      if (*v16 != *v21)
      {
        v40 = 0;
        v41 = 1;
        while (v39 != -4096)
        {
          if (v40)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39 == -8192;
          }

          if (v42)
          {
            v40 = v21;
          }

          v43 = v38 + v41++;
          v38 = v43 & (v78 - 1);
          v21 = (v76 + 32 * v38);
          v39 = *v21;
          if (*v16 == *v21)
          {
            goto LABEL_76;
          }
        }

        if (v40)
        {
          v21 = v40;
        }
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_76:
    LODWORD(v77) = v77 + 1;
    if (*v21 == -4096)
    {
      goto LABEL_47;
    }

LABEL_46:
    --HIDWORD(v77);
    goto LABEL_47;
  }

LABEL_81:
  if (!v74)
  {
LABEL_110:
    if (v78)
    {
      v69 = (v76 + 16);
      v70 = 32 * v78;
      while (1)
      {
        if ((*(v69 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v71 = *(v69 - 1);
          if (v71)
          {
            *v69 = v71;
            operator delete(v71);
          }
        }

        v69 += 4;
        v70 -= 32;
        if (!v70)
        {
          llvm::deallocate_buffer(v76, (32 * v78));
        }
      }
    }

    llvm::deallocate_buffer(v76, 0);
  }

  v44 = 0;
  while (1)
  {
    v75 = *v44;
    v45 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](&v76, &v75);
    if (*v45 == *(v45 + 1))
    {
      goto LABEL_83;
    }

    v46 = v45;
    v47 = llvm::outs(v45);
    v48 = *(v47 + 4);
    if (*(v47 + 3) == v48)
    {
      v47 = llvm::raw_ostream::write(v47, "\n", 1uLL);
    }

    else
    {
      *v48 = 10;
      ++*(v47 + 4);
    }

    v49 = llvm::outs(v47);
    v50 = *v75;
    v51 = *(v75 + 8);
    v52 = v49[4];
    if (v51 <= v49[3] - v52)
    {
      if (v51)
      {
        v53 = v49;
        v54 = *(v75 + 8);
        memcpy(v49[4], v50, v51);
        v49 = v53;
        v52 = (v53[4] + v54);
        v53[4] = v52;
      }
    }

    else
    {
      v49 = llvm::raw_ostream::write(v49, v50, v51);
      v52 = v49[4];
    }

    if (v49[3] - v52 > 1uLL)
    {
      *v52 = 2618;
      v49[4] += 2;
      v61 = *(v75 + 24);
      v57 = llvm::outs(v49);
      if (v61)
      {
LABEL_94:
        v58 = *(v75 + 16);
        v59 = *(v75 + 24);
        v60 = v57[4];
        if (v59 <= v57[3] - v60)
        {
          if (v59)
          {
            v64 = v57;
            v65 = *(v75 + 24);
            memcpy(v57[4], v58, v59);
            v57 = v64;
            v60 = (v64[4] + v65);
            v64[4] = v60;
          }
        }

        else
        {
          v57 = llvm::raw_ostream::write(v57, v58, v59);
          v60 = v57[4];
        }

        if (v57[3] - v60 <= 1uLL)
        {
          llvm::raw_ostream::write(v57, "\n\n", 2uLL);
          v67 = *v46;
          v66 = *(v46 + 1);
          if (v67 != v66)
          {
            goto LABEL_108;
          }

          goto LABEL_83;
        }

        *v60 = 2570;
        v63 = v57[4] + 2;
        goto LABEL_105;
      }
    }

    else
    {
      v55 = llvm::raw_ostream::write(v49, ":\n", 2uLL);
      v56 = *(v75 + 24);
      v57 = llvm::outs(v55);
      if (v56)
      {
        goto LABEL_94;
      }
    }

    v62 = v57[4];
    if (v57[3] != v62)
    {
      *v62 = 10;
      v63 = v57[4] + 1;
LABEL_105:
      v57[4] = v63;
      v67 = *v46;
      v66 = *(v46 + 1);
      if (v67 != v66)
      {
        goto LABEL_108;
      }

      goto LABEL_83;
    }

    llvm::raw_ostream::write(v57, "\n", 1uLL);
    v67 = *v46;
    v66 = *(v46 + 1);
    while (v67 != v66)
    {
LABEL_108:
      v68 = *v67++;
      (*(*v68 + 48))(v68, a3);
    }

LABEL_83:
    if (++v44 == v74)
    {
      goto LABEL_110;
    }
  }
}

uint64_t anonymous namespace::CategorizedHelpPrinter::OptionCategoryCompare(const void ***a1, const void ***a2)
{
  v2 = (*a1)[1];
  v3 = (*a2)[1];
  if (v3 >= v2)
  {
    v4 = (*a1)[1];
  }

  else
  {
    v4 = (*a2)[1];
  }

  if (v4)
  {
    v5 = memcmp(**a1, **a2, v4);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v2 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t llvm::cl::Option::Option(uint64_t result, char a2, char a3)
{
  *result = &unk_28689F010;
  *(result + 8) = 0;
  *(result + 10) = a2 & 7 | (32 * (a3 & 3)) | *(result + 10) & 0x8000;
  *(result + 64) = result + 80;
  *(result + 12) = 0u;
  *(result + 28) = 0u;
  *(result + 44) = 0u;
  *(result + 60) = 0;
  *(result + 72) = 0x100000000;
  *(result + 88) = result + 120;
  *(result + 96) = result + 120;
  *(result + 104) = 1;
  *(result + 112) = 0;
  if ((atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    v4 = result;
    llvm::cl::Option::addCategory();
    result = v4;
    v3 = *(v4 + 72);
    if (v3 < *(v4 + 76))
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*(result + 64) + 8 * v3) = &unk_27F874418;
  ++*(result + 72);
  return result;
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v12 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v12);
  if ((result & 1) == 0)
  {
    if (v12 == 1)
    {
      exit(0);
    }

    v10 = result;
    *(a1 + 12) = a2;
    v11 = *(a1 + 176);
    if (v11)
    {
      (*(*v11 + 48))(v11, &v12);
      return v10;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }
  }

  return result;
}

void *llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689FAE0;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689FAE0;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t std::__function::__func<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

const void **llvm::cl::apply<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>,llvm::cl::desc,llvm::cl::LocationClass<anonymous namespace::HelpPrinter>,llvm::cl::OptionHidden,llvm::cl::ValueExpected,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6, llvm::cl::OptionCategory **a7, uint64_t a8)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (*(a1 + 128))
  {
    v30 = "cl::location(x) specified more than once!";
    v31 = 259;
    v13 = llvm::errs(a1);
    llvm::cl::Option::error(a1, &v30, 0, 0, v13);
  }

  else
  {
    *(a1 + 128) = a4;
  }

  v14 = *(a1 + 10) & 0xFF9F | (32 * (*a5 & 3));
  *(a1 + 10) = v14;
  *(a1 + 10) = (8 * (*a6 & 3)) | v14 & 0xFFE7;
  result = llvm::cl::Option::addCategory(a1, *a7);
  v16 = *a8;
  if (!*a8)
  {
    v18 = *(a8 + 8);
    if (!v18)
    {
      return result;
    }

    v19 = *(v18 + 8);
    if (!v19)
    {
      return result;
    }

    v20 = *v18;
    v21 = *v18 + 8 * v19;
    while (1)
    {
      v22 = *v20;
      v23 = *(a1 + 88);
      if (*(a1 + 96) != v23)
      {
        goto LABEL_11;
      }

      v24 = *(a1 + 108);
      if (v24)
      {
        v25 = 8 * v24;
        v26 = *(a1 + 88);
        while (*v26 != v22)
        {
          ++v26;
          v25 -= 8;
          if (!v25)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }

LABEL_18:
      if (v24 < *(a1 + 104))
      {
        *(a1 + 108) = v24 + 1;
        *(v23 + 8 * v24) = v22;
      }

      else
      {
LABEL_11:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a1 + 88), v22);
      }

LABEL_12:
      if (++v20 == v21)
      {
        return result;
      }
    }
  }

  v17 = *(a1 + 88);
  result = (a1 + 88);
  if (*(a1 + 96) != v17)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v16);
  }

  v27 = *(a1 + 108);
  if (!v27)
  {
LABEL_24:
    if (v27 < *(a1 + 104))
    {
      *(a1 + 108) = v27 + 1;
      *(v17 + 8 * v27) = v16;
      return result;
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v16);
  }

  v28 = 8 * v27;
  v29 = *(a1 + 88);
  while (*v29 != v16)
  {
    ++v29;
    v28 -= 8;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::handleOccurrence(llvm *a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v7 = a1;
  v12 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v12);
  if ((result & 1) == 0)
  {
    if (v12 == 1)
    {
      v7 = *(v7 + 16);
      if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
      {
      }

      if ((*(qword_27F8743B8[0] + 132) - *(qword_27F8743B8[0] + 136)) >= 2)
      {
        if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
        {
        }

        *(qword_27F874400[0] + 138) &= 0xFF9Fu;
        exit(0);
      }
    }

    else
    {
      v10 = result;
      *(v7 + 6) = a2;
      v11 = *(v7 + 22);
      if (v11)
      {
        (*(*v11 + 48))(v11, &v12);
        return v10;
      }

      std::__throw_bad_function_call[abi:nn200100]();
    }

    exit(0);
  }

  return result;
}

void *llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689FC60;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689FC60;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t std::__function::__func<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

const void **llvm::cl::apply<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>,llvm::cl::ValueExpected,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, char a2, llvm::cl::OptionCategory **a3, uint64_t a4)
{
  *(a1 + 10) = *(a1 + 10) & 0xFFE7 | (8 * (a2 & 3));
  result = llvm::cl::Option::addCategory(a1, *a3);
  v7 = *a4;
  if (!*a4)
  {
    v9 = *(a4 + 8);
    if (!v9)
    {
      return result;
    }

    v10 = *(v9 + 8);
    if (!v10)
    {
      return result;
    }

    v11 = *v9;
    v12 = *v9 + 8 * v10;
    while (1)
    {
      v13 = *v11;
      v14 = *(a1 + 88);
      if (*(a1 + 96) != v14)
      {
        goto LABEL_9;
      }

      v15 = *(a1 + 108);
      if (v15)
      {
        v16 = 8 * v15;
        v17 = *(a1 + 88);
        while (*v17 != v13)
        {
          ++v17;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_10;
      }

LABEL_16:
      if (v15 < *(a1 + 104))
      {
        *(a1 + 108) = v15 + 1;
        *(v14 + 8 * v15) = v13;
      }

      else
      {
LABEL_9:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a1 + 88), v13);
      }

LABEL_10:
      if (++v11 == v12)
      {
        return result;
      }
    }
  }

  v8 = *(a1 + 88);
  result = (a1 + 88);
  if (*(a1 + 96) != v8)
  {
LABEL_3:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v7);
  }

  v18 = *(a1 + 108);
  if (!v18)
  {
LABEL_22:
    if (v18 < *(a1 + 104))
    {
      *(a1 + 108) = v18 + 1;
      *(v8 + 8 * v18) = v7;
      return result;
    }

    goto LABEL_3;
  }

  v19 = 8 * v18;
  v20 = *(a1 + 88);
  while (*v20 != v7)
  {
    ++v20;
    v19 -= 8;
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  return result;
}

llvm *llvm::cl::apply<llvm::cl::alias,char [2],llvm::cl::desc,llvm::cl::aliasopt,llvm::cl::MiscFlags>(uint64_t a1, char *__s, _OWORD *a3, uint64_t *a4, _WORD *a5)
{
  result = strlen(__s);
  v11 = result;
  if ((*(a1 + 10) & 0x4000) == 0)
  {
    *(a1 + 16) = __s;
    *(a1 + 24) = result;
    if (result != 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a1 + 10) |= 0x1000u;
    *(a1 + 32) = *a3;
    v12 = *a4;
    if (!*(a1 + 128))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v15[0] = __s;
  v15[1] = v11;
  v14 = a1;
  v16[0] = qword_27F8743B8[0];
  v16[1] = &v14;
  v16[2] = v15;
  *(a1 + 16) = __s;
  *(a1 + 24) = v11;
  if (v11 == 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  *(a1 + 32) = *a3;
  v12 = *a4;
  if (*(a1 + 128))
  {
LABEL_4:
    v16[0] = "cl::alias must only have one cl::aliasopt(...) specified!";
    v17 = 259;
    v13 = llvm::errs(result);
    result = llvm::cl::Option::error(a1, v16, 0, 0, v13);
  }

LABEL_5:
  *(a1 + 128) = v12;
  *(a1 + 10) |= (*a5 & 0x1F) << 9;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, char *a2, _OWORD *a3, _WORD *a4, _BYTE **a5, llvm::cl::OptionCategory **a6, const void **a7)
{
  v14 = llvm::cl::Option::Option(a1, 0, 0);
  *(v14 + 128) = 0;
  *(v14 + 136) = &unk_28685B4A0;
  *(v14 + 144) = 0;
  *v14 = &unk_28689F938;
  *(v14 + 152) = &unk_28689F1F8;
  *(v14 + 160) = &unk_28685B4C0;
  *(v14 + 184) = v14 + 160;
  llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>(v14, a2, a3, a4, a5, a6, a7);
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    v15 = qword_27F8743B8[0];
    v19 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v18[0] = v15;
      v18[1] = &v19;
      goto LABEL_7;
    }
  }

  else
  {
    v15 = qword_27F8743B8[0];
    v19 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v16 = *(v15 + 72);
  if (v16 >= *(v15 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(v15 + 64) + 8 * v16) = a1;
  ++*(v15 + 72);
LABEL_7:
  *(a1 + 10) |= 0x4000u;
  return a1;
}

const void **llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, char *__s, _OWORD *a3, _WORD *a4, _BYTE **a5, llvm::cl::OptionCategory **a6, const void **a7)
{
  v14 = strlen(__s);
  v15 = *(a1 + 10);
  if ((v15 & 0x4000) != 0)
  {
    if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
    }

    v20[0] = __s;
    v20[1] = v14;
    v18[0] = qword_27F8743B8[0];
    v18[1] = &v19;
    v18[2] = v20;
    v19 = a1;
    v15 = *(a1 + 10);
  }

  *(a1 + 16) = __s;
  *(a1 + 24) = v14;
  if (v14 == 1)
  {
    v15 |= 0x1000u;
    *(a1 + 10) = v15;
  }

  *(a1 + 32) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | v15 & 0xFF9F;
  v16 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v16;
  llvm::cl::Option::addCategory(a1, *a6);
  return llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a7, a1);
}

uint64_t llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::handleOccurrence(llvm *a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v7 = a1;
  v13 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v13);
  if ((result & 1) == 0)
  {
    if (v13 == 1)
    {
      v7 = qword_27F874400;
      if (atomic_load_explicit(qword_27F874400, memory_order_acquire))
      {
        v11 = *(qword_27F874400[0] + 1408);
        if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v9 = result;
      *(v7 + 6) = a2;
      v10 = v7[22];
      if (v10)
      {
        (*(*v10 + 48))(v10, &v13);
        return v9;
      }

      std::__throw_bad_function_call[abi:nn200100]();
    }

    v11 = *(*v7 + 1408);
    if (!atomic_load_explicit(v7, memory_order_acquire))
    {
LABEL_12:
      v12 = qword_27F874400[0];
      if (v11)
      {
LABEL_13:
        llvm::outs(result);
        std::function<void ()(llvm::raw_ostream &)>::operator()(v12 + 1384);
        exit(0);
      }

LABEL_9:
      std::vector<std::function<void ()(llvm::raw_ostream &)>>::vector[abi:nn200100](v14, (v12 + 1416));
      std::vector<std::function<void ()(llvm::raw_ostream &)>>::~vector[abi:nn200100](v14);
      exit(0);
    }

LABEL_8:
    v12 = qword_27F874400[0];
    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  return result;
}

void *llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689FDE0;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_28689FDE0;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t std::__function::__func<llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::function<void ()(llvm::raw_ostream &)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    v3();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    sortOpts(v4, v5, v6, v7);
  }
}

void sortOpts(void *a1, int a2, uint64_t a3, int a4)
{
  v28 = v32;
  v29 = v32;
  v30 = 32;
  v31 = 0;
  v6 = a1;
  if (a2)
  {
    v6 = a1;
    if (!*a1 || *a1 == -8)
    {
      do
      {
        v9 = v6[1];
        ++v6;
        v8 = v9;
        if (v9)
        {
          v10 = v8 == -8;
        }

        else
        {
          v10 = 1;
        }
      }

      while (v10);
    }
  }

  v11 = &a1[a2];
  if (v6 != v11)
  {
    v12 = *v6;
    while (1)
    {
      v13 = *(v12 + 8);
      v14 = (*(v13 + 10) >> 5) & 3;
      if (v14 == 1)
      {
        v15 = a4;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 2 || v15 == 0)
      {
        goto LABEL_24;
      }

      if (v29 == v28)
      {
        v24 = HIDWORD(v30);
        if (HIDWORD(v30))
        {
          v25 = 8 * HIDWORD(v30);
          v26 = v28;
          while (*v26 != v13)
          {
            ++v26;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_24;
        }

LABEL_34:
        if (HIDWORD(v30) < v30)
        {
          break;
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp_big(&v28, v13);
      if (v17)
      {
        v18 = *v6;
        v19 = *(*v6 + 8);
        v20 = *(a3 + 8);
        if (v20 >= *(a3 + 12))
        {
          goto LABEL_36;
        }

LABEL_23:
        v21 = (*a3 + 16 * v20);
        *v21 = v18 + 16;
        v21[1] = v19;
        ++*(a3 + 8);
        goto LABEL_24;
      }

      do
      {
LABEL_24:
        v22 = v6[1];
        ++v6;
        v12 = v22;
        if (v22)
        {
          v23 = v12 == -8;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
      if (v6 == v11)
      {
        goto LABEL_37;
      }
    }

    ++HIDWORD(v30);
    *&v28[8 * v24] = v13;
    v18 = *v6;
    v19 = *(*v6 + 8);
    v20 = *(a3 + 8);
    if (v20 >= *(a3 + 12))
    {
LABEL_36:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    goto LABEL_23;
  }

LABEL_37:
  v27 = *(a3 + 8);
  if (v27 >= 2)
  {
    qsort(*a3, v27, 0x10uLL, OptNameCompare);
  }

  if (v29 != v28)
  {
    free(v29);
  }
}

uint64_t std::__function::__value_func<void ()(char const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t llvm::object_deleter<anonymous namespace::CommandLineParser>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    if (v2 != *(v1 + 272))
    {
      free(v2);
    }

    v3 = *(v1 + 120);
    if (v3 != *(v1 + 112))
    {
      free(v3);
    }

    v4 = *(v1 + 64);
    if (v4 != (v1 + 80))
    {
      free(v4);
    }

    v5 = *(v1 + 40);
    if (v5)
    {
      *(v1 + 48) = v5;
      operator delete(v5);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::cl::SubCommand>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 140))
    {
      v2 = *(result + 136);
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = *(*(v1 + 128) + v3);
          if (v4 != -8 && v4 != 0)
          {
            llvm::deallocate_buffer(v4, (*v4 + 17));
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*(v1 + 128));
    v6 = *(v1 + 80);
    if (v6 != (v1 + 96))
    {
      free(v6);
    }

    v7 = *(v1 + 32);
    if (v7 != (v1 + 48))
    {
      free(v7);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t *llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::cl::TokenizeWindowsCommandLine(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_0>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  if (v3 >= *(*result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v3) = a2;
  ++*(v2 + 8);
  return result;
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<llvm::cl::TokenizeWindowsCommandLine(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_1>(uint64_t result)
{
  if (**result == 1)
  {
    v1 = *(result + 8);
    v2 = *(v1 + 8);
    if (v2 >= *(v1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v1 + 8 * v2) = 0;
    ++*(v1 + 8);
  }

  return result;
}

uint64_t *llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::cl::TokenizeWindowsCommandLineNoCopy(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<llvm::StringRef> &)::$_0>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 >= *(*result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (*v3 + 16 * v4);
  *v5 = a2;
  v5[1] = a3;
  ++*(v3 + 8);
  return result;
}

uint64_t *llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::cl::TokenizeWindowsCommandLineFull(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_0>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  if (v3 >= *(*result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v3) = a2;
  ++*(v2 + 8);
  return result;
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<llvm::cl::TokenizeWindowsCommandLineFull(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_1>(uint64_t result)
{
  if (**result == 1)
  {
    v1 = *(result + 8);
    v2 = *(v1 + 8);
    if (v2 >= *(v1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v1 + 8 * v2) = 0;
    ++*(v1 + 8);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::raw_ostream &)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t std::vector<std::function<void ()(llvm::raw_ostream &)>>::__emplace_back_slow_path<std::function<void ()(llvm::raw_ostream &)> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return llvm::cl::OptionCategory::OptionCategory(v4 + 104, a2, 15, a4, 0);
}

const char *llvm::compression::getReasonIfUnsupported(int a1)
{
  if (a1)
  {
    return "LLVM was not built with LLVM_ENABLE_ZSTD or did not find zstd at build time";
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::compression::compress(unint64_t result, int a2, const Bytef *a3, uLong sourceLen, uint64_t a5)
{
  if (!result)
  {
    v6 = HIDWORD(result);
    v9 = compressBound(sourceLen);
    destLen = v9;
    v10 = *(a5 + 8);
    if (v10 != v9)
    {
      if (v10 <= v9 && *(a5 + 16) < v9)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(a5 + 8) = v9;
    }

    result = compress2(*a5, &destLen, a3, sourceLen, v6);
    if (result == -4)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    if (destLen < *(a5 + 8))
    {
      *(a5 + 8) = destLen;
    }
  }

  return result;
}

uint64_t llvm::compression::zlib::compress(const Bytef *a1, uLong sourceLen, uint64_t a3, int a4)
{
  v8 = compressBound(sourceLen);
  destLen = v8;
  v9 = *(a3 + 8);
  if (v9 != v8)
  {
    if (v9 <= v8 && *(a3 + 16) < v8)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(a3 + 8) = v8;
  }

  result = compress2(*a3, &destLen, a1, sourceLen, a4);
  if (result == -4)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  if (destLen < *(a3 + 8))
  {
    *(a3 + 8) = destLen;
  }

  return result;
}

uint64_t llvm::compression::decompress@<X0>(Bytef *source@<X1>, uLong sourceLen@<X2>, Bytef *dest@<X3>, uLongf a4@<X4>, void *a5@<X8>)
{
  v8 = a4;
  v6 = uncompress(dest, &v8, source, sourceLen);
  if (v6 < -1)
  {
    llvm::inconvertibleErrorCode(v6);
    operator new();
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t llvm::compression::zlib::decompress@<X0>(Bytef *source@<X0>, uLong sourceLen@<X1>, Bytef *dest@<X2>, uLongf *destLen@<X3>, void *a5@<X8>)
{
  v6 = uncompress(dest, destLen, source, sourceLen);
  if (v6 < -1)
  {
    llvm::inconvertibleErrorCode(v6);
    operator new();
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t llvm::compression::decompress@<X0>(Bytef *source@<X1>, uLong sourceLen@<X2>, uint64_t a3@<X3>, uLongf a4@<X4>, void *a5@<X8>)
{
  return llvm::compression::zlib::decompress(source, sourceLen, a3, a4, a5);
}

{
  return llvm::compression::zlib::decompress(source, sourceLen, a3, a4, a5);
}

uint64_t llvm::compression::zlib::decompress@<X0>(Bytef *source@<X0>, uLong sourceLen@<X1>, uint64_t a3@<X2>, uLongf a4@<X3>, void *a5@<X8>)
{
  v11 = a4;
  v7 = *(a3 + 8);
  if (v7 != a4)
  {
    if (v7 <= a4 && *(a3 + 16) < a4)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(a3 + 8) = a4;
  }

  v9 = uncompress(*a3, &v11, source, sourceLen);
  if (v9 < -1)
  {
    llvm::inconvertibleErrorCode(v9);
    operator new();
  }

  result = 0;
  *a5 = 0;
  if (v11 < *(a3 + 8))
  {
    *(a3 + 8) = v11;
  }

  return result;
}

uLong llvm::crc32(uLong crc, Bytef *buf, unint64_t a3)
{
  crc = crc;
  do
  {
    if (a3 >= 0xFFFFFFFF)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = a3;
    }

    crc = crc32(crc, buf, v5);
    buf += v5;
    a3 -= v5;
  }

  while (a3);
  return crc;
}

uLong llvm::crc32(uLong buf, unint64_t a2)
{
  v3 = buf;
  LODWORD(buf) = 0;
  do
  {
    if (a2 >= 0xFFFFFFFF)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = a2;
    }

    buf = crc32(buf, v3, v4);
    v3 += v4;
    a2 -= v4;
  }

  while (a2);
  return buf;
}

uLong llvm::JamCRC::update(int *a1, Bytef *buf, unint64_t a3)
{
  v6 = *a1;
  result = v6 ^ 0xFFFFFFFFLL;
  *a1 = ~v6;
  do
  {
    if (a3 >= 0xFFFFFFFF)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = a3;
    }

    result = crc32(result, buf, v8);
    buf += v8;
    a3 -= v8;
  }

  while (a3);
  *a1 = ~result;
  return result;
}

uint64_t llvm::ConvertUTF32toUTF16(unsigned int **a1, unint64_t a2, _WORD **a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
LABEL_15:
    v9 = 0;
LABEL_16:
    *a1 = v5;
    *a3 = v6;
    return v9;
  }

  else
  {
    if (!a5)
    {
      v9 = 0;
      v11 = *a1;
      while (1)
      {
        if (v6 >= a4)
        {
LABEL_28:
          *a1 = v11;
          *a3 = v6;
          return 2;
        }

        v5 = v11 + 1;
        v12 = *v11;
        if (*v11 >= 0x10000)
        {
          if (v12 > 0x10FFFF)
          {
            v9 = 3;
          }

          else
          {
            if ((v6 + 1) >= a4)
            {
              goto LABEL_28;
            }

            *v6 = ((v12 + 67043328) >> 10) - 10240;
            v6[1] = v12 & 0x3FF | 0xDC00;
            v6 += 2;
          }
        }

        else
        {
          if ((*v11 & 0xF800) == 0xD800)
          {
            *a1 = v11;
            *a3 = v6;
            return 3;
          }

          *v6++ = v12;
        }

        ++v11;
        if (v5 >= a2)
        {
          goto LABEL_16;
        }
      }
    }

    while (1)
    {
      v7 = v5;
      if (v6 >= a4)
      {
        break;
      }

      ++v5;
      v8 = *v7;
      if (HIWORD(*v7))
      {
        if (v8 > 0x10FFFF)
        {
          *v6++ = -3;
        }

        else
        {
          if ((v6 + 1) >= a4)
          {
            break;
          }

          *v6 = ((v8 + 67043328) >> 10) - 10240;
          v6[1] = v8 & 0x3FF | 0xDC00;
          v6 += 2;
        }
      }

      else
      {
        if ((*v7 & 0xF800) == 0xD800)
        {
          *v6 = -3;
        }

        else
        {
          *v6 = v8;
        }

        ++v6;
      }

      if (v5 >= a2)
      {
        goto LABEL_15;
      }
    }

    *a1 = v7;
    *a3 = v6;
    return 2;
  }
}

uint64_t llvm::ConvertUTF16toUTF32(unint64_t *a1, unint64_t a2, _DWORD **a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
    *a1 = v5;
    *a3 = v6;
    return 0;
  }

  if (!a5)
  {
    v14 = *a1;
    while (1)
    {
      v16 = *v14++;
      v15 = v16;
      v17 = v16 & 0xFC00;
      if (v17 == 55296)
      {
        if (v14 >= a2)
        {
LABEL_27:
          *a1 = v5;
          *a3 = v6;
          return 1;
        }

        v18 = *v14;
        if ((v18 & 0xFC00) != 0xDC00)
        {
LABEL_28:
          *a1 = v5;
          *a3 = v6;
          return 3;
        }

        v15 = (v15 << 10) - 56613888 + v18;
        v14 = v5 + 2;
        if (v6 >= a4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 == 56320)
        {
          goto LABEL_28;
        }

        if (v6 >= a4)
        {
          goto LABEL_26;
        }
      }

      *v6++ = v15;
      v5 = v14;
      if (v14 >= a2)
      {
        *a1 = v14;
        *a3 = v6;
        return 0;
      }
    }
  }

  v7 = *a1;
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    if ((v9 & 0xFC00) == 0xD800)
    {
      if (v7 >= a2)
      {
        goto LABEL_27;
      }

      v10 = *v7;
      v11 = (v10 & 0xFC00) == 56320;
      v12 = (v8 << 10) - 56613888 + v10;
      if (v11)
      {
        v7 = v5 + 2;
      }

      if (v11)
      {
        v8 = v12;
      }
    }

    if (v6 >= a4)
    {
      break;
    }

    *v6++ = v8;
    v5 = v7;
    if (v7 >= a2)
    {
      *a1 = v7;
      *a3 = v6;
      return 0;
    }
  }

LABEL_26:
  *a1 = v5;
  *a3 = v6;
  return 2;
}

uint64_t llvm::ConvertUTF16toUTF8(unint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
    *a1 = v5;
    *a3 = v6;
    return 0;
  }

  if (a5)
  {
    v7 = *a1;
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      if ((v10 & 0xFC00) == 0xD800)
      {
        if (v7 >= a2)
        {
          goto LABEL_54;
        }

        v11 = *v7;
        v12 = (v11 & 0xFC00) == 56320;
        v13 = (v9 << 10) - 56613888 + v11;
        if (v12)
        {
          v9 = v13;
        }

        if (v12)
        {
          v7 = v5 + 2;
        }
      }

      if (v9 < 0x10000)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      if (v9 < 0x800)
      {
        v14 = 2;
      }

      if (v9 < 0x80)
      {
        v14 = 1;
      }

      v8 = v6 + v14;
      if (v8 > a4)
      {
        goto LABEL_52;
      }

      if (v14 > 2u)
      {
        if (v14 != 3)
        {
          *--v8 = v9 & 0x3F | 0x80;
          v9 >>= 6;
        }

        *--v8 = v9 & 0x3F | 0x80;
        v9 >>= 6;
      }

      else if (v14 == 1)
      {
        goto LABEL_6;
      }

      *--v8 = v9 & 0x3F | 0x80;
      v9 >>= 6;
LABEL_6:
      *(v8 - 1) = llvm::firstByteMark[v14] | v9;
      v6 = v8 - 1 + v14;
      v5 = v7;
      if (v7 >= a2)
      {
        *a1 = v7;
        *a3 = v6;
        return 0;
      }
    }
  }

  v16 = *a1;
  do
  {
    v19 = *v16++;
    v18 = v19;
    v20 = v19 & 0xFC00;
    if (v20 == 55296)
    {
      if (v16 >= a2)
      {
LABEL_54:
        *a1 = v5;
        *a3 = v6;
        return 1;
      }

      v21 = *v16;
      if ((v21 & 0xFC00) != 0xDC00)
      {
LABEL_55:
        *a1 = v5;
        *a3 = v6;
        return 3;
      }

      v18 = (v18 << 10) - 56613888 + v21;
      v16 = v5 + 2;
    }

    else if (v20 == 56320)
    {
      goto LABEL_55;
    }

    if (v18 < 0x10000)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    if (v18 < 0x800)
    {
      v22 = 2;
    }

    if (v18 < 0x80)
    {
      v22 = 1;
    }

    v17 = v6 + v22;
    if (v17 > a4)
    {
LABEL_52:
      *a1 = v5;
      *a3 = v6;
      return 2;
    }

    if (v22 > 2u)
    {
      if (v22 != 3)
      {
        *--v17 = v18 & 0x3F | 0x80;
        v18 >>= 6;
      }

      *--v17 = v18 & 0x3F | 0x80;
      v18 >>= 6;
LABEL_31:
      *--v17 = v18 & 0x3F | 0x80;
      v18 >>= 6;
      goto LABEL_32;
    }

    if (v22 != 1)
    {
      goto LABEL_31;
    }

LABEL_32:
    *(v17 - 1) = llvm::firstByteMark[v22] | v18;
    v6 = v17 - 1 + v22;
    v5 = v16;
  }

  while (v16 < a2);
  *a1 = v16;
  *a3 = v6;
  return 0;
}

uint64_t llvm::ConvertUTF32toUTF8(unsigned int **a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
    v7 = 0;
LABEL_62:
    *a1 = v5;
    *a3 = v6;
    return v7;
  }

  LODWORD(v7) = 0;
  v8 = *a1;
  if (a5)
  {
    while (1)
    {
      v11 = *v5++;
      v10 = v11;
      v12 = v11 >= 0x110000;
      if (v11 >= 0x110000)
      {
        v13 = 65533;
      }

      else
      {
        v13 = v10;
      }

      if (v12)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      if (v12)
      {
        v15 = 3;
      }

      else
      {
        v15 = v7;
      }

      if (v10 < 0x10000)
      {
        v13 = v10;
        v14 = 3;
        v15 = v7;
      }

      if (v10 < 0x800)
      {
        v13 = v10;
        v14 = 2;
        v15 = v7;
      }

      v16 = v10 >= 0x80;
      if (v10 < 0x80)
      {
        v17 = 1;
      }

      else
      {
        v10 = v13;
        v17 = v14;
      }

      if (v16)
      {
        v7 = v15;
      }

      else
      {
        v7 = v7;
      }

      v9 = v6 + v17;
      if (v9 > a4)
      {
LABEL_63:
        *a1 = v8;
        *a3 = v6;
        return 2;
      }

      if (v17 > 2u)
      {
        if (v17 != 3)
        {
          *--v9 = v10 & 0x3F | 0x80;
          v10 >>= 6;
        }

        *--v9 = v10 & 0x3F | 0x80;
        v10 >>= 6;
      }

      else if (v17 == 1)
      {
        goto LABEL_6;
      }

      *--v9 = v10 & 0x3F | 0x80;
      v10 >>= 6;
LABEL_6:
      *(v9 - 1) = llvm::firstByteMark[v17] | v10;
      v6 = v9 - 1 + v17;
      v8 = v5;
      if (v5 >= a2)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
    v20 = *v5++;
    v19 = v20;
    if (v20 >> 11 == 27)
    {
      break;
    }

    if (v19 >= 0x110000)
    {
      v21 = 65533;
    }

    else
    {
      v21 = v19;
    }

    if (v19 >= 0x110000)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    if (v19 >= 0x110000)
    {
      v23 = 3;
    }

    else
    {
      v23 = v7;
    }

    if (v19 < 0x10000)
    {
      v21 = v19;
      v22 = 3;
      v23 = v7;
    }

    if (v19 < 0x800)
    {
      v21 = v19;
      v22 = 2;
      v23 = v7;
    }

    v24 = v19 >= 0x80;
    if (v19 < 0x80)
    {
      v25 = 1;
    }

    else
    {
      v19 = v21;
      v25 = v22;
    }

    if (v24)
    {
      v7 = v23;
    }

    else
    {
      v7 = v7;
    }

    v18 = v6 + v25;
    if (v18 > a4)
    {
      goto LABEL_63;
    }

    if (v25 > 2u)
    {
      if (v25 != 3)
      {
        *--v18 = v19 & 0x3F | 0x80;
        v19 >>= 6;
      }

      *--v18 = v19 & 0x3F | 0x80;
      v19 >>= 6;
    }

    else if (v25 == 1)
    {
      goto LABEL_34;
    }

    *--v18 = v19 & 0x3F | 0x80;
    v19 >>= 6;
LABEL_34:
    *(v18 - 1) = llvm::firstByteMark[v25] | v19;
    v6 = v18 - 1 + v25;
    v8 = v5;
    if (v5 >= a2)
    {
      goto LABEL_62;
    }
  }

  *a1 = v8;
  *a3 = v6;
  return 3;
}

BOOL llvm::isLegalUTF8Sequence(llvm *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = *this;
  v4 = llvm::trailingBytesForUTF8[*this];
  if (a2 - this <= v4)
  {
    return 0;
  }

  result = 0;
  v7 = this + v4;
  v8 = this + v4 + 1;
  if (v4 <= 1u)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

LABEL_9:
    v10 = *(v8 - 1);
    if (v10 <= -65)
    {
      if (v3 <= 239)
      {
        if (v3 == 224)
        {
          if (v10 >= 0xA0u)
          {
            return v3 < 0xF5;
          }

          return 0;
        }

        if (v3 == 237)
        {
          if (v10 <= 0x9Fu)
          {
            return v3 < 0xF5;
          }

          return 0;
        }

        goto LABEL_20;
      }

      if (v3 == 240)
      {
        if (v10 >= 0x90u)
        {
          return v3 < 0xF5;
        }

        return 0;
      }

      if (v3 != 244)
      {
LABEL_20:
        if (v3 < -62)
        {
          return 0;
        }

        return v3 < 0xF5;
      }

      if (v10 <= 0x8Fu)
      {
        return v3 < 0xF5;
      }
    }

    return 0;
  }

  if (v4 == 2)
  {
LABEL_8:
    v9 = *--v8;
    if (v9 > -65)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v4 == 3)
  {
    v8 = v7;
    if (*v7 > -65)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t llvm::getUTF8SequenceSize(llvm *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v4 = *this;
  v5 = llvm::trailingBytesForUTF8[*this];
  result = v5 + 1;
  if (a2 - this < v5 + 1)
  {
    return 0;
  }

  v7 = this + result;
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        return 0;
      }

      v8 = *--v7;
      if (v8 > -65)
      {
        return 0;
      }
    }

    v9 = *--v7;
    if (v9 > -65)
    {
      return 0;
    }
  }

  else if (!v5)
  {
    goto LABEL_21;
  }

  v10 = *(v7 - 1);
  if (v10 > -65)
  {
    return 0;
  }

  if (v4 > 0xEFu)
  {
    if (v4 == 240)
    {
      if (v10 >= 0x90u)
      {
        return result;
      }

      return 0;
    }

    if (v4 == 244)
    {
      if (v10 > 0x8Fu)
      {
        return 0;
      }

      return result;
    }

LABEL_21:
    if (v4 < -62 || v4 >= 0xF5u)
    {
      return 0;
    }

    return result;
  }

  if (v4 != 224)
  {
    if (v4 == 237)
    {
      if (v10 <= 0x9Fu)
      {
        return result;
      }

      return 0;
    }

    goto LABEL_21;
  }

  if (v10 < 0xA0u)
  {
    return 0;
  }

  return result;
}

uint64_t llvm::isLegalUTF8String(const unsigned __int8 ***this, const unsigned __int8 **a2, const unsigned __int8 *a3)
{
  for (i = *this; i != a2; *this = i)
  {
    v4 = *i;
    v5 = llvm::trailingBytesForUTF8[*i];
    if (a2 - i <= v5)
    {
      return 0;
    }

    v6 = i;
    v7 = 0;
    v8 = v5 + 1;
    i = (i + v5 + 1);
    if (v5 > 1u)
    {
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          return v7;
        }

        if (*(v6 + v5) > -65)
        {
          return 0;
        }

        v8 = 3;
      }

      v10 = v6 + v8;
      v11 = *(v10 - 1);
      v9 = (v10 - 1);
      if (v11 > -65)
      {
        return 0;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_25;
      }

      v9 = i;
      if (v5 != 1)
      {
        return v7;
      }
    }

    if (*(v9 - 1) > -65)
    {
      return 0;
    }

    v12 = *(v9 - 1);
    if (v4 > 239)
    {
      if (v4 == 240)
      {
        if (v12 < 0x90)
        {
          return 0;
        }
      }

      else
      {
        if (v4 != 244)
        {
LABEL_25:
          v7 = 0;
          if (v4 < -62 || v4 > 0xF4)
          {
            return v7;
          }

          continue;
        }

        if (v12 > 0x8F)
        {
          return 0;
        }
      }
    }

    else if (v4 == 224)
    {
      if (v12 < 0xA0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 != 237)
      {
        goto LABEL_25;
      }

      if (v12 > 0x9F)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t llvm::ConvertUTF8toUTF16(unint64_t *a1, unint64_t a2, _WORD **a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
LABEL_46:
    v11 = 0;
LABEL_47:
    *a1 = v5;
    *a3 = v6;
    return v11;
  }

  while (1)
  {
    v7 = *v5;
    v8 = llvm::trailingBytesForUTF8[*v5];
    if ((a2 - v5) <= v8)
    {
      *a1 = v5;
      *a3 = v6;
      return 1;
    }

    v9 = llvm::trailingBytesForUTF8[*v5];
    v10 = v8 + 1;
    v11 = 3;
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          goto LABEL_47;
        }

        v10 = llvm::trailingBytesForUTF8[*v5];
        if (v5[v8] > -65)
        {
          goto LABEL_51;
        }
      }

      v12 = &v5[v10 - 1];
      if (*v12 > -65)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!llvm::trailingBytesForUTF8[*v5])
      {
        goto LABEL_23;
      }

      v12 = &v5[v10];
    }

    v13 = *(v12 - 1);
    if (v13 > -65)
    {
      goto LABEL_51;
    }

    if (*v5 > 0xEFu)
    {
      if (v7 == 240)
      {
        if (v13 < 0x90u)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v7 != 244)
        {
LABEL_23:
          v11 = 3;
          if (v7 < -62 || v7 > 0xF4)
          {
            goto LABEL_47;
          }

          goto LABEL_29;
        }

        if (v13 > 0x8Fu)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v7 == 224)
    {
      if (v13 < 0xA0u)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v7 != 237)
      {
        goto LABEL_23;
      }

      if (v13 > 0x9Fu)
      {
        goto LABEL_51;
      }
    }

LABEL_29:
    v14 = 0;
    if (llvm::trailingBytesForUTF8[*v5] > 1u)
    {
      if (v9 != 2)
      {
        v14 = v7 << 6;
        v15 = *++v5;
        v7 = v15;
      }

      v16 = v14 + v7;
      v17 = *++v5;
      v7 = v17;
      v14 = v16 << 6;
LABEL_35:
      v18 = v14 + v7;
      v19 = *++v5;
      v7 = v19;
      v9 = v18 << 6;
      goto LABEL_36;
    }

    if (llvm::trailingBytesForUTF8[*v5])
    {
      goto LABEL_35;
    }

LABEL_36:
    ++v5;
    if (v6 >= a4)
    {
      goto LABEL_48;
    }

    v20 = v9 + v7 - llvm::offsetsFromUTF8[v8];
    if (HIWORD(v20))
    {
      break;
    }

    if ((v20 & 0xF800) == 0xD800)
    {
      if (!a5)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    *v6++ = v20;
LABEL_4:
    if (v5 >= a2)
    {
      goto LABEL_46;
    }
  }

  if (v20 < 0x110000)
  {
    if ((v6 + 1) >= a4)
    {
LABEL_48:
      *a1 = &v5[~v8];
      *a3 = v6;
      return 2;
    }

    *v6 = ((v20 + 67043328) >> 10) - 10240;
    v6[1] = v20 & 0x3FF | 0xDC00;
    v6 += 2;
    goto LABEL_4;
  }

  if (a5)
  {
LABEL_43:
    *v6++ = -3;
    goto LABEL_4;
  }

LABEL_50:
  v5 += ~v8;
LABEL_51:
  *a1 = v5;
  *a3 = v6;
  return 3;
}