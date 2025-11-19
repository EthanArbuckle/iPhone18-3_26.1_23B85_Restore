mlir::OperationFingerPrint *sub_10015CB70(mlir::OperationFingerPrint *result, uint64_t a2, mlir::Operation *a3)
{
  v18 = a3;
  v19 = a2;
  v3 = *(a2 + 8);
  if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
  {
    if (v3 == qword_1002E0E00)
    {
      return result;
    }
  }

  else
  {
    v17 = result;
    sub_1002A2B0C();
    result = v17;
    if (v3 == qword_1002E0E00)
    {
      return result;
    }
  }

  v4 = *(result + 1);
  if (v4[10])
  {
    return result;
  }

  v5 = v19;
  if ((v4[9] & 1) == 0)
  {
    v13 = v18;
LABEL_21:
    v20 = &v19;
    v21 = &v18;
    v22 = result;
    return (*(*v4 + 24))(v4, v5, v13, sub_10015D8A0, &v20);
  }

  v6 = *(result + 2);
  v7 = *(result + 8);
  if (v7)
  {
    v8 = ((v19 >> 4) ^ (v19 >> 9)) & (v7 - 1);
    v9 = *(v6 + 32 * v8);
    v10 = result;
    if (v9 == v19)
    {
      goto LABEL_13;
    }

    v11 = 1;
    while (1)
    {
      result = v10;
      if (v9 == -4096)
      {
        break;
      }

      v12 = v8 + v11++;
      v8 = v12 & (v7 - 1);
      v9 = *(v6 + 32 * v8);
      if (v9 == v19)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = result;
  v8 = v7;
LABEL_13:
  v14 = v6 + 32 * v8;
  v13 = v18;
  result = mlir::OperationFingerPrint::OperationFingerPrint(&v20, v18, 1);
  v16 = *(v14 + 8) == v20 && *(v14 + 16) == v21 && *(v14 + 24) == v22;
  *v14 = -8192;
  v10[3] = vadd_s32(v10[3], 0x1FFFFFFFFLL);
  if (!v16)
  {
    result = v10;
    v4 = v10[1];
    goto LABEL_21;
  }

  return result;
}

int32x2_t *sub_10015CD48(int32x2_t *result, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = a2;
  v3 = *(a2 + 8);
  if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
  {
    if (v3 == qword_1002E0E00)
    {
      return result;
    }
  }

  else
  {
    v13 = v3;
    v14 = result;
    sub_1002A2B0C();
    result = v14;
    if (v13 == qword_1002E0E00)
    {
      return result;
    }
  }

  v4 = result[1];
  if (v4[9])
  {
    v5 = result[4].i32[0];
    v6 = v17;
    if (v5)
    {
      v7 = result[2];
      v8 = v5 - 1;
      v9 = ((v17 >> 4) ^ (v17 >> 9)) & (v5 - 1);
      v10 = *(*&v7 + 32 * v9);
      if (v17 == v10)
      {
LABEL_6:
        *(*&v7 + 32 * v9) = -8192;
        result[3] = vadd_s32(result[3], 0x1FFFFFFFFLL);
      }

      else
      {
        v11 = 1;
        while (v10 != -4096)
        {
          v12 = v9 + v11++;
          v9 = v12 & v8;
          v10 = *(*&v7 + 32 * v9);
          if (v17 == v10)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  else
  {
    v6 = v17;
  }

  v15[0] = &v17;
  v15[1] = &v16;
  v15[2] = result;
  return (*(*v4 + 24))(v4, v6, v16, sub_10015DB20, v15);
}

mlir::OperationFingerPrint *sub_10015CE94@<X0>(mlir::OperationFingerPrint *result@<X0>, void *a2@<X1>, mlir::Operation **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = *(result + 4);
  if (!v7)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v8 = *result;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v10 = (*result + 32 * v9);
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
      v9 = v17 & (v7 - 1);
      v10 = (v8 + 32 * v9);
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
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v13 - *(result + 3) > v7 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v12 = 1;
        result = mlir::OperationFingerPrint::OperationFingerPrint((v10 + 1), *a3, 1);
        v8 = *v5;
        v7 = *(v5 + 4);
        goto LABEL_10;
      }

LABEL_8:
      --*(v5 + 3);
      goto LABEL_9;
    }

    v18 = a2;
    v19 = a3;
    sub_10015D0F0(result, v7);
    sub_100088204(v5, v18, &v20);
    a2 = v18;
    a3 = v19;
    v10 = v20;
    ++*(v5 + 2);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a4 = v10;
  *(a4 + 8) = v8 + 32 * v7;
  *(a4 + 16) = v12;
  return result;
}

uint64_t sub_10015D028()
{
  if ((atomic_load_explicit(&qword_1002E0E20, memory_order_acquire) & 1) == 0)
  {
    sub_1002A2B60();
  }

  return qword_1002E0E10;
}

const char *sub_10015D070()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 93;
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

void sub_10015D0F0(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 6);
          *(v22 + 8) = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
      v19 = buffer + 4;
      v20 = v18 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 4) = -4096;
        *v19 = -4096;
        v19 += 8;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[4 * v17];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v21);
      }
    }
  }
}

void sub_10015D308(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x19uLL)
  {
    qmemcpy(v5, "// -----// IR Dump Before ", 26);
    *(this + 4) += 26;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump Before ", 0x1AuLL);
  }

  v8 = (*(***a1 + 16))(**a1);
  v9 = v7;
  v10 = *(v6 + 4);
  if (v7 <= *(v6 + 3) - v10)
  {
    if (v7)
    {
      memcpy(v10, v8, v7);
      v10 = (*(v6 + 4) + v9);
      *(v6 + 4) = v10;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v8, v7);
    v10 = *(v6 + 4);
  }

  if (*(v6 + 3) - v10 > 1uLL)
  {
    *v10 = 10272;
    *(v6 + 4) += 2;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v13 = v11;
  v14 = *(v6 + 4);
  if (v11 <= *(v6 + 3) - v14)
  {
    if (v11)
    {
      memcpy(v14, v12, v11);
      v14 = (*(v6 + 4) + v13);
      *(v6 + 4) = v14;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v12, v11);
    v14 = *(v6 + 4);
  }

  if (*(v6 + 3) == v14)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v6 + 4);
  }

  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19[0] = *(v16 + 16);
  v19[1] = v18;
  v19[2] = *(v16 + 48);
  sub_10015D588(v15, v17, this, v19);
}

void sub_10015D588(mlir::Operation *a1, char a2, llvm::raw_ostream *this, const mlir::OpPrintingFlags *a4)
{
  v5 = this;
  v6 = *(this + 4);
  v7 = *(this + 3) - v6;
  v8 = a1;
  if (a2)
  {
    if (v7 > 2)
    {
      *(v6 + 2) = 39;
      *v6 = 10272;
      *(this + 4) += 3;
      v9 = this;
    }

    else
    {
      v9 = llvm::raw_ostream::write(this, " ('", 3uLL);
      a1 = v8;
    }

    v27 = *(a1 + 6);
    mlir::OperationName::print(&v27, v9);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 0xA)
    {
      *(v10 + 7) = 1852795252;
      *v10 = *"' operation";
      *(v9 + 4) += 11;
      v11 = v8;
      if (!*(v8 + 47))
      {
        goto LABEL_18;
      }
    }

    else
    {
      llvm::raw_ostream::write(v9, "' operation", 0xBuLL);
      v11 = v8;
      if (!*(v8 + 47))
      {
        goto LABEL_18;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(v8, "sym_name", 8);
    v11 = v8;
    if (v13)
    {
LABEL_19:
      if (InherentAttr)
      {
        v14 = *(*InherentAttr + 136);
        v15 = v14 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
        v16 = v14 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
        v27 = v16;
        if (v15)
        {
          v17 = *(v5 + 4);
          if ((*(v5 + 3) - v17) > 2)
          {
            *(v17 + 2) = 64;
            *v17 = 8250;
            *(v5 + 4) += 3;
            v18 = v5;
          }

          else
          {
            v18 = llvm::raw_ostream::write(v5, ": @", 3uLL);
          }

          Value = mlir::StringAttr::getValue(&v27);
          v21 = v19;
          v22 = v18[4];
          if (v19 <= v18[3] - v22)
          {
            if (v19)
            {
              memcpy(v22, Value, v19);
              v18[4] += v21;
            }
          }

          else
          {
            llvm::raw_ostream::write(v18, Value, v19);
          }
        }
      }

      v23 = *(v5 + 4);
      if (*(v5 + 3) - v23 > 0xCuLL)
      {
        qmemcpy(v23, ") //----- //\n", 13);
        *(v5 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v5, ") //----- //\n", 0xDuLL);
      }

      ParentOp = v8;
      do
      {
        v25 = ParentOp;
        v26 = *(ParentOp + 16);
        if (!v26)
        {
          break;
        }

        ParentOp = mlir::Block::getParentOp(v26);
      }

      while (ParentOp);
      mlir::Operation::print(v25, v5, a4);
    }

LABEL_18:
    InherentAttr = mlir::DictionaryAttr::get(v11 + 56, "sym_name", 8uLL);
    goto LABEL_19;
  }

  if (v7 > 0xB)
  {
    *(v6 + 8) = 170864416;
    *v6 = *" //----- //\n";
    *(this + 4) += 12;
    if (!*(a1 + 2))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(this, " //----- //\n", 0xCuLL);
    a1 = v8;
    if (!*(v8 + 16))
    {
LABEL_13:

      mlir::Operation::print(a1, v5, a4);
    }
  }

  a4 = mlir::OpPrintingFlags::useLocalScope(a4, 1);
  a1 = v8;
  goto LABEL_13;
}

void sub_10015D8A0(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x18uLL)
  {
    qmemcpy(v5, "// -----// IR Dump After ", 25);
    *(this + 4) += 25;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump After ", 0x19uLL);
  }

  v8 = (*(***a1 + 16))(**a1);
  v9 = v7;
  v10 = *(v6 + 4);
  if (v7 <= *(v6 + 3) - v10)
  {
    if (v7)
    {
      memcpy(v10, v8, v7);
      v10 = (*(v6 + 4) + v9);
      *(v6 + 4) = v10;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v8, v7);
    v10 = *(v6 + 4);
  }

  if (*(v6 + 3) - v10 > 1uLL)
  {
    *v10 = 10272;
    *(v6 + 4) += 2;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v13 = v11;
  v14 = *(v6 + 4);
  if (v11 <= *(v6 + 3) - v14)
  {
    if (v11)
    {
      memcpy(v14, v12, v11);
      v14 = (*(v6 + 4) + v13);
      *(v6 + 4) = v14;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v12, v11);
    v14 = *(v6 + 4);
  }

  if (*(v6 + 3) == v14)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v6 + 4);
  }

  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19[0] = *(v16 + 16);
  v19[1] = v18;
  v19[2] = *(v16 + 48);
  sub_10015D588(v15, v17, this, v19);
}

void sub_10015DB20(void **a1, llvm::raw_ostream *a2)
{
  v4 = a1[2];
  v5 = (*(***a1 + 16))(**a1);
  v7 = v6;
  v8 = (*(***a1 + 32))(**a1);
  *&v19 = "// -----// IR Dump After {0} Failed ({1})";
  *(&v19 + 1) = 41;
  *&v20 = v25;
  *(&v20 + 1) = 2;
  LOBYTE(v21) = 1;
  *(&v21 + 1) = &off_1002D7FA8;
  v22 = v5;
  v23 = v7;
  v24[0] = &off_1002D7FA8;
  v24[1] = v8;
  v24[2] = v9;
  v25[0] = &v21 + 8;
  v25[1] = v24;
  llvm::raw_ostream::operator<<(a2, &v19, v10, v11, v12, v13, v14);
  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19 = *(v16 + 16);
  v20 = v18;
  v21 = *(v16 + 48);
  sub_10015D588(v15, v17, a2, &v19);
}

void *sub_10015DCD0(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xAu, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *(a1 + 8);
  if (*(a1 + 16) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

void *sub_10015DD7C(void *a1)
{
  *a1 = off_1002D7FD8;
  v2 = a1 + 12;
  v3 = a1[15];
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[11];
    if (v4 != a1 + 8)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = a1[11];
  if (v4 == a1 + 8)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void sub_10015DE94(void *a1)
{
  *a1 = off_1002D7FD8;
  v2 = a1 + 12;
  v3 = a1[15];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[11];
    if (v4 != a1 + 8)
    {
LABEL_5:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

LABEL_9:

      operator delete();
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[11];
    if (v4 != a1 + 8)
    {
      goto LABEL_5;
    }
  }

  (*(*v4 + 32))(v4);
  goto LABEL_9;
}

uint64_t sub_10015DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    v9 = a3;
    v10 = a2;
    result = (*(*result + 48))(result, &v10, &v9);
    if (result)
    {
      return a4(a5, *(a1 + 128));
    }
  }

  return result;
}

uint64_t sub_10015E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    v9 = a3;
    v10 = a2;
    result = (*(*result + 48))(result, &v10, &v9);
    if (result)
    {
      return a4(a5, *(a1 + 128));
    }
  }

  return result;
}

uint64_t sub_10015E0C0(uint64_t a1)
{
  *a1 = off_1002D8008;
  llvm::deallocate_buffer(*(a1 + 152), (16 * *(a1 + 168)), 8uLL);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    v2 = *(a1 + 120);
    if (v2 != a1 + 96)
    {
LABEL_3:
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = *(a1 + 88);
      if (v3 != a1 + 64)
      {
        goto LABEL_6;
      }

LABEL_11:
      (*(*v3 + 32))(v3);
      return a1;
    }
  }

  else
  {
    v2 = *(a1 + 120);
    if (v2 != a1 + 96)
    {
      goto LABEL_3;
    }
  }

  (*(*v2 + 32))(v2);
  v3 = *(a1 + 88);
  if (v3 == a1 + 64)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_10015E20C(uint64_t a1)
{
  *a1 = off_1002D8008;
  llvm::deallocate_buffer(*(a1 + 152), (16 * *(a1 + 168)), 8uLL);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    v2 = *(a1 + 120);
    if (v2 != a1 + 96)
    {
LABEL_3:
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = *(a1 + 88);
      if (v3 != a1 + 64)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(a1 + 120);
    if (v2 != a1 + 96)
    {
      goto LABEL_3;
    }
  }

  (*(*v2 + 32))(v2);
  v3 = *(a1 + 88);
  if (v3 != a1 + 64)
  {
LABEL_6:
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

LABEL_11:

    operator delete();
  }

LABEL_10:
  (*(*v3 + 32))(v3);
  goto LABEL_11;
}

void sub_10015E36C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v6 = *(a1 + 88);
  if (v6)
  {
    v21 = a3;
    v22 = a2;
    if ((*(*v6 + 48))(v6, &v22, &v21))
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      v17 = (v16 >= 0 ? v14 : v13);
      v18 = *(v14 + 8);
      v19 = v16 >= 0 ? *(v14 + 23) : *(v14 + 8);
      sub_10015E5C4(&v22, a3, v12, v11, v17, v19, v14 + 24);
      v20 = v22;
      if (v22)
      {
        a4(a5, *(v22 + 136));
        v20[24] = 1;
        if (v20[128] == 1)
        {
          llvm::raw_fd_ostream::~raw_fd_ostream((v20 + 32));
        }

        llvm::CleanupInstaller::~CleanupInstaller(v20);
        operator delete();
      }
    }
  }
}

void sub_10015E498(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v21 = a3;
    v22 = a2;
    if ((*(*v6 + 48))(v6, &v22, &v21))
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      v17 = (v16 >= 0 ? v14 : v13);
      v18 = *(v14 + 8);
      v19 = v16 >= 0 ? *(v14 + 23) : *(v14 + 8);
      sub_10015E5C4(&v22, a3, v12, v11, v17, v19, v14 + 24);
      v20 = v22;
      if (v22)
      {
        a4(a5, *(v22 + 136));
        v20[24] = 1;
        if (v20[128] == 1)
        {
          llvm::raw_fd_ostream::~raw_fd_ostream((v20 + 32));
        }

        llvm::CleanupInstaller::~CleanupInstaller(v20);
        operator delete();
      }
    }
  }
}

void sub_10015E5C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, unint64_t a6, uint64_t a7)
{
  v73[0] = a3;
  v73[1] = a4;
  v71 = a2;
  v72 = a2;
  v102 = v104;
  v103 = &_mh_execute_header;
  v98 = v100;
  v99 = 0xC00000000;
  LODWORD(v92) = -1;
  sub_1000B0730(a7, &v72, &v92, v85);
  ++*(*v85 + 8);
  if (a2)
  {
    do
    {
      v9 = *sub_1000400B4(a7, &v71);
      v10 = v99;
      if (v99 >= HIDWORD(v99))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v100, v99 + 1, 4);
        v10 = v99;
      }

      *&v98[4 * v10] = v9;
      LODWORD(v99) = v99 + 1;
      v11 = v71;
      if (!*(v71 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v71, "sym_name", 8), (v13 & 1) == 0))
      {
        InherentAttr = mlir::DictionaryAttr::get(v11 + 56, "sym_name", 8uLL);
      }

      if (InherentAttr)
      {
        if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v14 = InherentAttr;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v70 = v14;
      v92 = *(*(v71 + 48) + 8);
      Value = mlir::StringAttr::getValue(&v92);
      if (Value)
      {
        v17 = v16;
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_119:
          sub_100003FC0();
        }

        if (v16 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v68) = v16;
        if (v16)
        {
          memmove(&__dst, Value, v16);
        }

        *(&__dst + v17) = 0;
        v20 = HIBYTE(v68);
        v19 = __dst;
        v18 = v67;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        __dst = 0;
        v67 = 0;
        v68 = 0;
      }

      if ((v20 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v19;
      }

      if ((v20 & 0x80u) == 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      sub_10015F298(p_dst, v22, 0x2Eu, v85);
      LOBYTE(v78) = v85[0];
      v79 = *&v85[8];
      v80 = v86;
      v81 = v87;
      if (v87 == v85)
      {
        *&v81 = &v78;
        *(&v81 + 1) = 1;
      }

      LOBYTE(v74) = v88;
      v75 = v89;
      v76 = v90;
      v77 = v91;
      if (v91 == &v88)
      {
        *&v77 = &v74;
        *(&v77 + 1) = 1;
      }

      LOBYTE(v92) = v85[0];
      v93 = *&v85[8];
      v94 = v86;
      v95 = v81;
      if (v81 == &v78)
      {
        *&v95 = &v92;
        *(&v95 + 1) = 1;
      }

      LOBYTE(v82[0]) = v88;
      *&v82[1] = v89;
      v83 = v90;
      v84 = v77;
      if (v77 == &v74)
      {
        *&v84 = v82;
        *(&v84 + 1) = 1;
      }

      sub_10015F430(&v92, v82, "_", 1uLL, &__p);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__dst);
        if (v70)
        {
LABEL_39:
          *v85 = mlir::StringAttr::getValue(&v70);
          *&v85[8] = v23;
          v24 = v103;
          if (v103 < HIDWORD(v103))
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }
      }

      else if (v70)
      {
        goto LABEL_39;
      }

      *v85 = "no-symbol-name";
      *&v85[8] = 14;
      v24 = v103;
      if (v103 < HIDWORD(v103))
      {
LABEL_40:
        v25 = &v102[40 * v24];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100003FD0(v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v26 = *&__p.__r_.__value_.__l.__data_;
          *(v25 + 2) = *(&__p.__r_.__value_.__l + 2);
          *v25 = v26;
        }

        *(v25 + 24) = *v85;
        LODWORD(v103) = v103 + 1;
        goto LABEL_47;
      }

LABEL_44:
      sub_10015F770(&v102, &__p, v85);
LABEL_47:
      ParentOp = *(v71 + 16);
      if (ParentOp)
      {
        ParentOp = mlir::Block::getParentOp(ParentOp);
      }

      v71 = ParentOp;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        ParentOp = v71;
      }
    }

    while (ParentOp);
  }

  v28 = v98;
  if (v99)
  {
    v29 = &v98[4 * v99 - 4];
    if (v29 > v98)
    {
      v30 = v98 + 4;
      do
      {
        v31 = *(v30 - 1);
        *(v30 - 1) = *v29;
        *v29 = v31;
        v29 -= 4;
        v32 = v30 >= v29;
        v30 += 4;
      }

      while (!v32);
    }
  }

  v33 = v102;
  v34 = &v102[40 * v103 - 40];
  if (v103)
  {
    v35 = v34 > v102;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    do
    {
      v36 = *(v33 + 2);
      v37 = *v33;
      v38 = *(v34 + 2);
      *v33 = *v34;
      *(v33 + 2) = v38;
      *v34 = v37;
      *(v34 + 2) = v36;
      v39 = *(v33 + 24);
      *(v33 + 24) = *(v34 + 24);
      *(v34 + 24) = v39;
      v33 += 40;
      v34 -= 40;
    }

    while (v33 < v34);
    v28 = v98;
  }

  *v85 = "{0:$[_]}_{1}.mlir";
  *&v85[8] = 17;
  *&v85[16] = &v90;
  *&v86 = 2;
  BYTE8(v86) = 1;
  *&v87 = &off_1002D8038;
  *(&v87 + 1) = v28;
  v88 = v28 + 4 * v99;
  *&v89 = &off_1002D8098;
  *(&v89 + 1) = v73;
  *&v90 = &v87;
  *(&v90 + 1) = &v89;
  memset(v82, 0, sizeof(v82));
  LODWORD(v93) = 0;
  LOBYTE(v95) = 0;
  DWORD1(v95) = 1;
  *(&v93 + 1) = 0;
  v94 = 0uLL;
  v92 = &off_1002D49D0;
  *(&v95 + 1) = v82;
  llvm::raw_ostream::SetBufferAndMode(&v92, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v92, v85, v40, v41, v42, v43, v44);
  if (*(&v94 + 1) != *(&v93 + 1))
  {
    llvm::raw_ostream::flush_nonempty(&v92);
  }

  llvm::raw_ostream::~raw_ostream(&v92);
  v92 = &v93 + 8;
  *&v93 = &_mh_execute_header;
  if (v103)
  {
    sub_10015FEC4(&v92, &v102);
  }

  if (SHIBYTE(v82[2]) < 0)
  {
    sub_100003FD0(&v96, v82[0], v82[1]);
    if (SHIBYTE(v82[2]) < 0)
    {
      operator delete(v82[0]);
    }
  }

  else
  {
    v96 = *v82;
    v97 = v82[2];
  }

  if (v98 != v100)
  {
    free(v98);
  }

  v45 = v102;
  if (v103)
  {
    v46 = &v102[40 * v103 - 17];
    v47 = -40 * v103;
    v48 = v46;
    do
    {
      v49 = *v48;
      v48 -= 40;
      if (v49 < 0)
      {
        operator delete(*(v46 - 23));
      }

      v46 = v48;
      v47 += 40;
    }

    while (v47);
    v45 = v102;
  }

  if (v45 != v104)
  {
    free(v45);
  }

  *v85 = &v86;
  *&v85[8] = xmmword_1002B0230;
  if (a6 < 0x81)
  {
    v51 = 0;
    v50 = &v86;
    if (!a6)
    {
      goto LABEL_85;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v85, &v86, a6, 1);
    v50 = *v85;
    v51 = *&v85[8];
  }

  memcpy(v50 + v51, a5, a6);
  v50 = *v85;
  v51 = *&v85[8];
LABEL_85:
  *&v85[8] = v51 + a6;
  if (sub_10015F0AC(v50, v51 + a6))
  {
    if (!v93)
    {
LABEL_103:
      v101 = 260;
      v98 = &v96;
      WORD4(v83) = 257;
      WORD4(v80) = 257;
      WORD4(v76) = 257;
      llvm::sys::path::append(v85, &v98, v82, &v78, &v74);
      v98 = 0;
      v99 = 0;
      v100[0] = 0;
      mlir::openOutputFile();
    }

    v52 = 40 * v93;
    v53 = v92;
    while (1)
    {
      if (*(v53 + 23) >= 0)
      {
        v54 = *(v53 + 23);
      }

      else
      {
        v54 = v53[1];
      }

      if (v54 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_119;
      }

      if (v54 + 1 >= 0x17)
      {
        operator new();
      }

      v103 = 0;
      v104[0] = 0;
      v102 = 0;
      HIBYTE(v104[0]) = v54 + 1;
      if (v54)
      {
        if (*(v53 + 23) >= 0)
        {
          v55 = v53;
        }

        else
        {
          v55 = *v53;
        }

        memmove(&v102, v55, v54);
      }

      *(&v102 + v54) = 95;
      v56 = v53[3];
      v57 = v53[4];
      v98 = &v102;
      v100[0] = v56;
      v100[1] = v57;
      v101 = 1284;
      WORD4(v83) = 257;
      WORD4(v80) = 257;
      WORD4(v76) = 257;
      llvm::sys::path::append(v85, &v98, v82, &v78, &v74);
      if (SHIBYTE(v104[0]) < 0)
      {
        operator delete(v102);
      }

      if ((sub_10015F0AC(*v85, *&v85[8]) & 1) == 0)
      {
        break;
      }

      v53 += 5;
      v52 -= 40;
      if (!v52)
      {
        goto LABEL_103;
      }
    }

    *a1 = 0;
  }

  else
  {
    *a1 = 0;
  }

  if (*v85 != &v86)
  {
    free(*v85);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96);
  }

  v58 = v92;
  if (v93)
  {
    v59 = v92 + 40 * v93 - 17;
    v60 = -40 * v93;
    v61 = v59;
    do
    {
      v62 = *v61;
      v61 -= 40;
      if (v62 < 0)
      {
        operator delete(*(v59 - 23));
      }

      v59 = v61;
      v60 += 40;
    }

    while (v60);
    v58 = v92;
  }

  if (v58 != &v93 + 8)
  {
    free(v58);
  }
}

uint64_t sub_10015F0AC(const void *a1, std::string::size_type a2)
{
  v18 = 261;
  v17.__r_.__value_.__r.__words[0] = a1;
  v17.__r_.__value_.__l.__size_ = a2;
  directory = llvm::sys::fs::create_directory(&v17, 1, 0x1F8u);
  *&v19.__val_ = directory;
  v19.__cat_ = v5;
  if (!directory)
  {
    return 1;
  }

  v6 = llvm::errs(directory);
  v7 = v6[4];
  if (v6[3] - v7 > 0x1EuLL)
  {
    qmemcpy(v7, "Error while creating directory ", 31);
    v12 = v6[3];
    v8 = (v6[4] + 31);
    v6[4] = v8;
    if (a2 <= v12 - v8)
    {
LABEL_4:
      if (a2)
      {
        v9 = v6;
        memcpy(v8, a1, a2);
        v6 = v9;
        v8 = (v9[4] + a2);
        v9[4] = v8;
      }

      if (v6[3] - v8 <= 1uLL)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, "Error while creating directory ", 0x1FuLL);
    v8 = v6[4];
    if (a2 <= v6[3] - v8)
    {
      goto LABEL_4;
    }
  }

  v6 = llvm::raw_ostream::write(v6, a1, a2);
  v8 = v6[4];
  if (v6[3] - v8 <= 1uLL)
  {
LABEL_7:
    v10 = llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_12;
  }

LABEL_11:
  *v8 = 8250;
  v10 = v6;
  v6[4] += 2;
LABEL_12:
  std::error_code::message(&v17, &v19);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v17;
  }

  else
  {
    v13 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v15 = llvm::raw_ostream::write(v10, v13, size);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, "\n", 1uLL);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    *v16 = 10;
    ++v15[4];
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  return 0;
}

unint64_t sub_10015F298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v22[0] = a3;
  v23 = 0uLL;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = v22;
  *(&v25 + 1) = 1;
  v6 = llvm::StringRef::find(&v24, v22, 1uLL, 0);
  if (v6 == -1)
  {
    v11 = 0;
    v10 = 0;
    v8 = *(&v24 + 1);
    v7 = v24;
  }

  else
  {
    v7 = v24;
    if (v6 >= *(&v24 + 1))
    {
      v8 = *(&v24 + 1);
    }

    else
    {
      v8 = v6;
    }

    if (*(&v24 + 1) >= v6 + 1)
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = *(&v24 + 1);
    }

    v10 = v24 + v9;
    v11 = *(&v24 + 1) - v9;
  }

  *&v23 = v7;
  *(&v23 + 1) = v8;
  *&v24 = v10;
  *(&v24 + 1) = v11;
  v18[0] = a3;
  v19 = 0u;
  v20 = 0u;
  *&v21 = v18;
  *(&v21 + 1) = 1;
  result = llvm::StringRef::find(&v20, v18, 1uLL, 0);
  if (result == -1)
  {
    v17 = 0;
    v16 = 0;
    v14 = *(&v20 + 1);
    v13 = v20;
  }

  else
  {
    v13 = v20;
    if (result >= *(&v20 + 1))
    {
      v14 = *(&v20 + 1);
    }

    else
    {
      v14 = result;
    }

    if (*(&v20 + 1) >= result + 1)
    {
      v15 = result + 1;
    }

    else
    {
      v15 = *(&v20 + 1);
    }

    v16 = v20 + v15;
    v17 = *(&v20 + 1) - v15;
  }

  *&v19 = v13;
  *(&v19 + 1) = v14;
  *&v20 = v16;
  *(&v20 + 1) = v17;
  *a4 = v22[0];
  *(a4 + 8) = v23;
  *(a4 + 24) = v24;
  *(a4 + 40) = v25;
  if (v25 == v22)
  {
    *(a4 + 40) = a4;
    *(a4 + 48) = 1;
  }

  *(a4 + 56) = v18[0];
  *(a4 + 64) = v19;
  *(a4 + 80) = v20;
  *(a4 + 96) = v21;
  if (v21 == v18)
  {
    *(a4 + 96) = a4 + 56;
    *(a4 + 104) = 1;
  }

  return result;
}

unint64_t sub_10015F430@<X0>(unint64_t result@<X0>, char *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v6 = (result + 8);
  v7 = (a2 + 8);
  if (*(result + 8) != *(a2 + 1))
  {
    v10 = result;
    v11 = *result;
    v44 = *result;
    v45 = *v6;
    v46 = *(result + 24);
    v13 = (result + 40);
    v47 = *(result + 40);
    v12 = v47;
    if (v47 == result)
    {
      *&v47 = &v44;
      *(&v47 + 1) = 1;
    }

    v14 = *a2;
    v40 = *a2;
    v15 = *(a2 + 24);
    v41 = *v7;
    v42 = v15;
    v43 = *(a2 + 40);
    if (*(a2 + 5) == a2)
    {
      *&v43 = &v40;
      *(&v43 + 1) = 1;
    }

    v52 = v11;
    v16 = *(result + 24);
    v53 = *v6;
    v54 = v16;
    v55 = v47;
    if (v47 == &v44)
    {
      *&v55 = &v52;
      *(&v55 + 1) = 1;
    }

    v48 = v14;
    v49 = *v7;
    v50 = *(a2 + 24);
    v51 = v43;
    if (v43 == &v40)
    {
      *&v51 = &v48;
      *(&v51 + 1) = 1;
    }

    v17 = -1;
    if (v53 != v49)
    {
      do
      {
        while (1)
        {
          v21 = *(&v55 + 1);
          v22 = llvm::StringRef::find(&v54, v55, *(&v55 + 1), 0);
          if (v22 != -1)
          {
            break;
          }

          v53 = v54;
          v54 = 0uLL;
          ++v17;
          if (v49 == v53)
          {
            goto LABEL_21;
          }
        }

        v18 = v54;
        if (v22 >= *(&v54 + 1))
        {
          v19 = *(&v54 + 1);
        }

        else
        {
          v19 = v22;
        }

        if (*(&v54 + 1) >= v22 + v21)
        {
          v20 = v22 + v21;
        }

        else
        {
          v20 = *(&v54 + 1);
        }

        *&v53 = v54;
        *(&v53 + 1) = v19;
        *&v54 = v54 + v20;
        *(&v54 + 1) -= v20;
        ++v17;
      }

      while (v49 != v18);
LABEL_21:
      v11 = *v10;
      v12 = *(v10 + 40);
    }

    v23 = v17 * a4;
    v52 = v11;
    v24 = *(v10 + 24);
    v53 = *v6;
    v54 = v24;
    v55 = *v13;
    if (v12 == v10)
    {
      *&v55 = &v52;
      *(&v55 + 1) = 1;
    }

    if (v53 != *v7)
    {
      v25 = *(&v53 + 1);
      do
      {
        v31 = *(&v55 + 1);
        v32 = llvm::StringRef::find(&v54, v55, *(&v55 + 1), 0);
        if (v32 == -1)
        {
          v30 = 0;
          v29 = 0;
          v27 = *(&v54 + 1);
          v26 = v54;
        }

        else
        {
          v26 = v54;
          if (v32 >= *(&v54 + 1))
          {
            v27 = *(&v54 + 1);
          }

          else
          {
            v27 = v32;
          }

          if (*(&v54 + 1) >= v32 + v31)
          {
            v28 = v32 + v31;
          }

          else
          {
            v28 = *(&v54 + 1);
          }

          v29 = v54 + v28;
          v30 = *(&v54 + 1) - v28;
        }

        v23 += v25;
        *&v53 = v26;
        *(&v53 + 1) = v27;
        *&v54 = v29;
        *(&v54 + 1) = v30;
        v25 = v27;
      }

      while (*v7 != v26);
    }

    std::string::reserve(a5, v23);
    while (1)
    {
      std::string::append(a5, *(v10 + 8), *(v10 + 16));
      v33 = *(v10 + 48);
      result = llvm::StringRef::find((v10 + 24), *(v10 + 40), v33, 0);
      if (result == -1)
      {
        v38 = *(v10 + 24);
        v39 = *(v10 + 32);
        *(v10 + 8) = v38;
        *(v10 + 16) = v39;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        if (*v7 == v38)
        {
          return result;
        }
      }

      else
      {
        v34 = *(v10 + 24);
        v35 = *(v10 + 32);
        if (result >= v35)
        {
          v36 = *(v10 + 32);
        }

        else
        {
          v36 = result;
        }

        if (v35 >= result + v33)
        {
          v37 = result + v33;
        }

        else
        {
          v37 = *(v10 + 32);
        }

        *(v10 + 8) = v34;
        *(v10 + 16) = v36;
        *(v10 + 24) = v34 + v37;
        *(v10 + 32) = v35 - v37;
        if (*v7 == v34)
        {
          return result;
        }
      }

      std::string::append(a5, a3, a4);
    }
  }

  return result;
}

uint64_t sub_10015F770(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  v23 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v23);
  v8 = &v7[40 * *(a1 + 8)];
  if (*(a2 + 23) < 0)
  {
    sub_100003FD0(v8, *a2, *(a2 + 1));
    *(v8 + 24) = *a3;
    v10 = *a1;
    v11 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v9;
    *(v8 + 24) = *a3;
    v10 = *a1;
    v11 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = &v10[40 * v11];
  v13 = v7;
  do
  {
    v14 = *v10;
    *(v13 + 2) = *(v10 + 2);
    *v13 = v14;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *v10 = 0;
    *(v13 + 24) = *(v10 + 24);
    v13 += 40;
    v10 += 40;
  }

  while (v10 != v12);
  v10 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = &v10[40 * v15 - 17];
    v17 = -40 * v15;
    v18 = v16;
    do
    {
      v19 = *v18;
      v18 -= 40;
      if (v19 < 0)
      {
        operator delete(*(v16 - 23));
      }

      v16 = v18;
      v17 += 40;
    }

    while (v17);
    v10 = *a1;
  }

LABEL_13:
  v20 = v23;
  if (v10 != v6)
  {
    free(v10);
  }

  *a1 = v7;
  v21 = *(a1 + 8) + 1;
  *(a1 + 8) = v21;
  *(a1 + 12) = v20;
  return &v7[40 * v21 - 40];
}

void *sub_10015F904(unsigned int **a1, llvm::raw_ostream *a2, unsigned __int8 *a3, size_t a4)
{
  result = sub_10015FA74(a3, a4, &v14);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = *a1;
  v12 = a1[1];
  if (v11 != v12)
  {
    v14 = &off_1002D8068;
    v15 = v11;
    result = sub_10015FCC4(v11++, a2, v16, v17);
  }

  if (v11 != v12)
  {
    if (v8)
    {
      do
      {
        v13 = *(a2 + 4);
        if (v8 <= *(a2 + 3) - v13)
        {
          memcpy(v13, v7, v8);
          *(a2 + 4) += v8;
        }

        else
        {
          llvm::raw_ostream::write(a2, v7, v8);
        }

        v14 = &off_1002D8068;
        v15 = v11;
        result = sub_10015FCC4(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }

    else
    {
      do
      {
        v14 = &off_1002D8068;
        v15 = v11;
        result = sub_10015FCC4(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }
  }

  return result;
}

unsigned __int8 *sub_10015FA74@<X0>(unsigned __int8 *result@<X0>, size_t a2@<X1>, const char **a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  v3 = *result;
  if (v3 != 36)
  {
    v13 = ", ";
    v12 = 2;
    v4 = result;
    if (v3 != 64)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (!--a2)
  {
LABEL_8:
    v10 = 0;
    v11 = "";
    v12 = 2;
    v13 = ", ";
    goto LABEL_35;
  }

  v4 = result + 1;
  v5 = result[1];
  switch(v5)
  {
    case '(':
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = "()";
      break;
    case '[':
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = "[]";
      break;
    case '<':
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = "<>";
      break;
    default:
      v13 = ", ";
      v12 = 2;
      if (v5 != 64)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
  }

  result = memchr(result + 1, v9[1], v7);
  v13 = ", ";
  v12 = 2;
  if (result)
  {
    v14 = result - v4;
    a3 = v8;
    a2 = v7;
    if (result - v4 != -1)
    {
      if (result == v4)
      {
        v15 = 1;
      }

      else
      {
        v15 = result - v4;
      }

      if (v15 >= v7)
      {
        v15 = v7;
      }

      v13 = (v6 + 2);
      v12 = v15 - 1;
      if (v7 >= v14 + 1)
      {
        v16 = v14 + 1;
      }

      else
      {
        v16 = v7;
      }

      a2 = v7 - v16;
      if (v7 == v16)
      {
        goto LABEL_34;
      }

      v4 += v16;
    }
  }

  else
  {
    a3 = v8;
    a2 = v7;
  }

  if (*v4 != 64)
  {
LABEL_34:
    v10 = 0;
    v11 = "";
    goto LABEL_35;
  }

LABEL_29:
  v17 = a2 - 1;
  if (a2 == 1)
  {
    goto LABEL_34;
  }

  v18 = v4 + 1;
  v19 = v4[1];
  switch(v19)
  {
    case '(':
      v20 = a3;
      v21 = "()";
      break;
    case '[':
      v20 = a3;
      v21 = "[]";
      break;
    case '<':
      v20 = a3;
      v21 = "<>";
      break;
    default:
      goto LABEL_34;
  }

  result = memchr(v4 + 1, v21[1], v17);
  v10 = 0;
  v11 = "";
  if (result)
  {
    a3 = v20;
    if (result - v18 != -1)
    {
      if (result == v18)
      {
        v22 = 1;
      }

      else
      {
        v22 = result - v18;
      }

      if (v22 >= v17)
      {
        v22 = v17;
      }

      v11 = (v4 + 2);
      v10 = v22 - 1;
    }
  }

  else
  {
    a3 = v20;
  }

LABEL_35:
  *a3 = v13;
  a3[1] = v12;
  a3[2] = v11;
  a3[3] = v10;
  return result;
}

void *sub_10015FCC4(unsigned int *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v6 = sub_1000412F0(&v14);
  if ((v6 & 0x100000000) == 0)
  {
    if (v15)
    {
      v7 = 0;
      v8 = *v14;
      if (v8 <= 0x63)
      {
        if (v8 != 68)
        {
          if (v8 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v7 = 0;
        ++v14;
        goto LABEL_19;
      }

      if (v8 == 100)
      {
        goto LABEL_18;
      }

      if (v8 == 110)
      {
LABEL_17:
        ++v14;
        v7 = 1;
LABEL_19:
        --v15;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    v16 = 0;
    if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    return llvm::write_integer(a2, *a1, v13, v7);
  }

  v9 = v6;
  v16 = 0;
  if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

  if (llvm::isPrefixedHexStyle(v9))
  {
    v11 = v10 + 2;
  }

  else
  {
    v11 = v10;
  }

  return llvm::write_hex(a2, *a1, v9, v11, 1);
}

void *sub_10015FE18(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xAu, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *v5;
  if (*(v5 + 8) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

uint64_t sub_10015FEC4(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a2 + 40 * v4;
        v12 = *a1;
        do
        {
          std::string::operator=(v12, v10);
          *(v12 + 3) = *(v10 + 24);
          v10 += 40;
          v12 += 5;
        }

        while (v10 != v11);
        v13 = *a1;
        LODWORD(v5) = *(a1 + 8);
      }

      else
      {
        v13 = *a1;
        v12 = *a1;
      }

      v28 = &v13[5 * v5];
      while (v28 != v12)
      {
        v29 = *(v28 - 17);
        v28 -= 5;
        if (v29 < 0)
        {
          operator delete(*v28);
        }
      }

      goto LABEL_37;
    }

    if (*(a1 + 12) < v4)
    {
      if (v5)
      {
        v6 = *a1 + 40 * v5 - 17;
        v7 = -40 * v5;
        v8 = v6;
        do
        {
          v9 = *v8;
          v8 -= 40;
          if (v9 < 0)
          {
            operator delete(*(v6 - 23));
          }

          v6 = v8;
          v7 += 40;
        }

        while (v7);
      }

      *(a1 + 8) = 0;
      v39 = 0;
      v14 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v4, 40, &v39);
      v18 = *a1;
      v19 = *(a1 + 8);
      if (v19)
      {
        v20 = &v18[40 * v19];
        v21 = v14;
        do
        {
          v22 = *v18;
          v21[2] = *(v18 + 2);
          *v21 = v22;
          *(v18 + 1) = 0;
          *(v18 + 2) = 0;
          *v18 = 0;
          *(v21 + 3) = *(v18 + 24);
          v21 += 5;
          v18 += 40;
        }

        while (v18 != v20);
        v18 = *a1;
        v23 = *(a1 + 8);
        if (v23)
        {
          v24 = &v18[40 * v23 - 17];
          v25 = -40 * v23;
          v26 = v24;
          do
          {
            v27 = *v26;
            v26 -= 40;
            if (v27 < 0)
            {
              operator delete(*(v24 - 23));
            }

            v24 = v26;
            v25 += 40;
          }

          while (v25);
          v18 = *a1;
        }
      }

      v30 = v39;
      if (v18 != (a1 + 16))
      {
        free(v18);
      }

      v5 = 0;
      *a1 = v14;
      *(a1 + 12) = v30;
      v17 = *(a2 + 2);
      if (!*(a2 + 2))
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    v14 = *a1;
    if (v5)
    {
      v15 = *a2;
      v16 = *a2 + 40 * v5;
      do
      {
        std::string::operator=(v14, v15);
        *(v14 + 3) = *(v15 + 24);
        v15 += 40;
        v14 += 5;
      }

      while (v15 != v16);
      v14 = *a1;
      v17 = *(a2 + 2);
      if (v5 != v17)
      {
LABEL_39:
        v32 = *a2;
        v33 = 40 * v5;
        v34 = 40 * v17;
        do
        {
          v36 = &v14[v33 / 8];
          v37 = (v32 + v33);
          if (*(v32 + v33 + 23) < 0)
          {
            sub_100003FD0(v36, *v37, *(v37 + 1));
          }

          else
          {
            v38 = *v37;
            *(v36 + 2) = *(v37 + 2);
            *v36 = v38;
          }

          v35 = v32 + v33;
          v32 += 40;
          *&v14[v33 / 8 + 3] = *(v35 + 24);
          v14 += 5;
          v34 -= 40;
        }

        while (v33 != v34);
      }
    }

    else
    {
      v5 = 0;
      v17 = *(a2 + 2);
      if (*(a2 + 2))
      {
        goto LABEL_39;
      }
    }

LABEL_37:
    *(a1 + 8) = v4;
  }

  return a1;
}

void *mlir::PassExecutionAction::print(mlir::PassExecutionAction *this, llvm::raw_ostream *a2)
{
  v4 = (*(**(this + 4) + 16))(*(this + 4));
  v6 = v5;
  v7 = (*(*this + 32))(this);
  if ((*v7 & 6) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(v13 + 48);
  v16[1] = 38;
  v16[2] = v21;
  v16[3] = 3;
  v17 = 1;
  v18[0] = &off_1002D81E0;
  v18[1] = &mlir::PassExecutionAction::tag;
  v19[0] = &off_1002D7FA8;
  v19[1] = v4;
  v19[2] = v6;
  v20[0] = &off_1002D8210;
  v20[1] = v14;
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20;
  return llvm::raw_ostream::operator<<(a2, v16, v8, v9, v10, v11, v12);
}

uint64_t mlir::Pass::initializeOptions(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 1;
  v20 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &off_1002D49D0;
  v21 = v22;
  llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
  if ((mlir::detail::PassOptions::parseFromString(a1 + 144, a2, a3, &v14) & 1) == 0)
  {
    v13 = 260;
    v12 = v22;
    v10 = a4(a5, &v12);
  }

  llvm::raw_ostream::~raw_ostream(&v14);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v10;
}

void mlir::Pass::printAsTextualPipeline(mlir::Pass *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 1);
  if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
  {
    if (v4 != qword_1002E0E00)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1002A2BBC();
    if (v4 != qword_1002E0E00)
    {
LABEL_3:
      v5 = (*(*this + 32))(this);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = *(a2 + 4);
        if (v6 > *(a2 + 3) - v9)
        {
          v10 = a2;
          v11 = v7;
          v12 = v8;
LABEL_17:
          llvm::raw_ostream::write(v10, v11, v12);
          goto LABEL_18;
        }

        memcpy(v9, v7, v6);
        *(a2 + 4) += v8;
      }

      else
      {
        v13 = *(a2 + 4);
        if (*(a2 + 3) - v13 > 7uLL)
        {
          *v13 = 0x3C6E776F6E6B6E75;
          *(a2 + 4) += 8;
          v14 = a2;
        }

        else
        {
          v14 = llvm::raw_ostream::write(a2, "unknown<", 8uLL);
        }

        v16 = (*(*this + 16))(this);
        v17 = v15;
        v18 = *(v14 + 4);
        if (v15 <= *(v14 + 3) - v18)
        {
          if (v15)
          {
            memcpy(v18, v16, v15);
            v18 = (*(v14 + 4) + v17);
            *(v14 + 4) = v18;
          }
        }

        else
        {
          v14 = llvm::raw_ostream::write(v14, v16, v15);
          v18 = *(v14 + 4);
        }

        if (*(v14 + 3) == v18)
        {
          v11 = ">";
          v10 = v14;
          v12 = 1;
          goto LABEL_17;
        }

        *v18 = 62;
        ++*(v14 + 4);
      }

LABEL_18:

      mlir::detail::PassOptions::print((this + 144), a2);
      return;
    }
  }

  v19 = *(this + 86);
  if (v19)
  {
    v20 = *(this + 42);
    mlir::OpPassManager::printAsTextualPipeline(v20, a2);
    if (v19 != 1)
    {
      v21 = v20 + 1;
      v22 = 8 * v19 - 8;
      do
      {
        while (1)
        {
          v23 = *(a2 + 4);
          if (*(a2 + 3) != v23)
          {
            break;
          }

          llvm::raw_ostream::write(a2, ",", 1uLL);
          mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
          v22 -= 8;
          if (!v22)
          {
            return;
          }
        }

        *v23 = 44;
        ++*(a2 + 4);
        mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
        v22 -= 8;
      }

      while (v22);
    }
  }
}

void mlir::detail::OpPassManagerImpl::addPass(_BYTE *a1, uint64_t **a2)
{
  v3 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (a1[23])
    {
      goto LABEL_3;
    }

LABEL_13:
    v6 = *a2;
    goto LABEL_14;
  }

  if (!*(a1 + 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = *(v3 + 1);
  }

  v6 = *a2;
  if ((*a2)[4])
  {
    v8 = v6[2];
    v7 = v6[3];
    if (v5 != v7 || v5 && memcmp(a1, v6[2], v5))
    {
      if (!*(v3 + 17))
      {
        mlir::OpPassManager::OpPassManager();
      }

      v36 = "Can't add pass '";
      v37 = 259;
      v21 = (*(*v6 + 16))(v6);
      v35 = 261;
      v34[0] = v21;
      v34[1] = v22;
      sub_10000550C(&v36, v34, v38);
      v32 = "' restricted to '";
      v33 = 259;
      sub_10000550C(v38, &v32, v39);
      v31 = 261;
      v30[0] = v8;
      v30[1] = v7;
      sub_10000550C(v39, v30, v40);
      v28 = "' on a PassManager intended to run on '";
      v29 = 259;
      sub_10000550C(v40, &v28, v41);
      v27 = 261;
      v26[0] = sub_100160BF0(v3);
      v26[1] = v23;
      sub_10000550C(v41, v26, v42);
      v24 = "', did you intend to nest?";
      v25 = 259;
      sub_10000550C(v42, &v24, v43);
      llvm::report_fatal_error(v43, 1);
    }
  }

LABEL_14:
  v10 = *(v3 + 6);
  v9 = *(v3 + 7);
  if (v10 >= v9)
  {
    v12 = *(v3 + 5);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      sub_100003FC0();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 61))
      {
        operator new();
      }

      sub_100003FC0();
    }

    v18 = v14;
    v19 = (8 * v14);
    *a2 = 0;
    v20 = &v19[-v18];
    *v19 = v6;
    v11 = v19 + 1;
    memcpy(v20, v12, v13);
    *(v3 + 5) = v20;
    *(v3 + 6) = v11;
    *(v3 + 7) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *a2 = 0;
    *v10 = v6;
    v11 = v10 + 8;
  }

  *(v3 + 6) = v11;
}

uint64_t *mlir::OpPassManager::addPass(_BYTE **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::detail::OpPassManagerImpl::addPass(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

const char *sub_100160BF0(const char *result)
{
  v1 = result[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (result[23])
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!*(result + 1))
  {
    return "any";
  }

LABEL_3:
  v2 = *(result + 1);
  if (v1 < 0)
  {
    return *result;
  }

  return result;
}

BOOL mlir::detail::OpPassManagerImpl::finalizePassList(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v5 = *(this + 5);
  v6 = *(this + 6);
  v4 = (this + 40);
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    v7 = *v5;
    v9 = *(*v5 + 8);
    if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
    {
      if (v9 == qword_1002E0E00)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v57 = v9;
      sub_1002A2BBC();
      if (v57 == qword_1002E0E00)
      {
LABEL_14:
        if (v8 && (mlir::detail::OpToOpPassAdaptor::tryMergeInto(v7, a2, v8) & 1) != 0)
        {
          v13 = *v5;
          *v5 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v7 = v8;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      v10 = *(v8 + 344);
      if (v10)
      {
        v11 = *(v8 + 336);
        v12 = 8 * v10;
        while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v11, a2) & 1) != 0)
        {
          ++v11;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }
    }

LABEL_3:
    v7 = 0;
LABEL_4:
    ++v5;
  }

  while (v5 != v6);
  if (v7)
  {
    v14 = *(v7 + 344);
    if (v14)
    {
      v15 = *(v7 + 336);
      v16 = 8 * v14;
      while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v15, a2) & 1) != 0)
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      return 0;
    }
  }

LABEL_24:
  sub_100161800(v4);
  v17 = *(this + 23);
  if (v17 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_39;
    }
  }

  else if (!*(this + 23))
  {
    goto LABEL_39;
  }

  if ((*(this + 32) & 1) == 0)
  {
    if (v17 >= 0)
    {
      v19 = this;
    }

    else
    {
      v19 = *this;
    }

    if (v17 >= 0)
    {
      v20 = *(this + 23);
    }

    else
    {
      v20 = *(this + 1);
    }

    mlir::OperationName::OperationName(&v62, v19, v20, a2);
    v21 = v62;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 3) = v21;
  }

LABEL_39:
  if ((*(this + 8) & 1) == 0)
  {
    return 1;
  }

  v22 = *(*(this + 3) + 16);
  if (v22 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 3);
  }

  v24 = *(this + 5);
  v25 = *(this + 6);
  result = 1;
  if (v24 != v25 && v22 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if ((*(**v24 + 72))())
    {
      v27 = v24 + 1;
      while (v27 != v25)
      {
        v28 = *v27++;
        if (((*(*v28 + 72))(v28, v23) & 1) == 0)
        {
          v24 = v27 - 1;
          goto LABEL_50;
        }
      }

      return 1;
    }

LABEL_50:
    v29 = mlir::UnknownLoc::get(a2, v26);
    mlir::emitError(v29, &v62);
    if (v62)
    {
      LODWORD(v58) = 3;
      v59 = "unable to schedule pass '";
      v60 = 25;
      v30 = &v58;
      v31 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v58 && v64 + 24 * v65 > &v58)
        {
          v54 = &v58 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v31 = v64;
          v30 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v30 = &v58;
          v31 = v64;
        }
      }

      v32 = &v31[24 * v65];
      v33 = *v30;
      *(v32 + 2) = v30[2];
      *v32 = v33;
      ++v65;
    }

    v34 = (*(**v24 + 16))();
    if (v62)
    {
      v61 = 261;
      v58 = v34;
      v59 = v35;
      mlir::Diagnostic::operator<<(v63, &v58);
      if (v62)
      {
        LODWORD(v58) = 3;
        v59 = "' on a PassManager intended to run on '";
        v60 = 39;
        v36 = &v58;
        v37 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v58 && v64 + 24 * v65 > &v58)
          {
            v55 = &v58 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v37 = v64;
            v36 = (v64 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v36 = &v58;
            v37 = v64;
          }
        }

        v38 = &v37[24 * v65];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v65;
      }
    }

    v40 = *(this + 23);
    if (v40 < 0)
    {
      if (!*(this + 1))
      {
        goto LABEL_67;
      }

LABEL_59:
      v41 = *this;
      if (v40 < 0)
      {
        v40 = *(this + 1);
      }

      else
      {
        v41 = this;
      }

      if (v62)
      {
LABEL_68:
        v61 = 261;
        v58 = v41;
        v59 = v40;
        mlir::Diagnostic::operator<<(v63, &v58);
        if (v62)
        {
          LODWORD(v58) = 3;
          v59 = "'!";
          v60 = 2;
          v42 = &v58;
          v43 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v58 && v64 + 24 * v65 > &v58)
            {
              v56 = &v58 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v43 = v64;
              v42 = (v64 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v42 = &v58;
              v43 = v64;
            }
          }

          v44 = &v43[24 * v65];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v65;
        }
      }
    }

    else
    {
      if (*(this + 23))
      {
        goto LABEL_59;
      }

LABEL_67:
      v41 = "any";
      v40 = 3;
      if (v62)
      {
        goto LABEL_68;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
    v46 = result;
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
      result = v46;
    }

    if (v73)
    {
      if (v72 != &v73)
      {
        free(v72);
        result = v46;
      }

      v47 = __p;
      if (__p)
      {
        v48 = v71;
        v49 = __p;
        if (v71 != __p)
        {
          do
          {
            v48 = sub_10005BEF4(v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v71 = v47;
        operator delete(v49);
        result = v46;
      }

      v50 = v68;
      if (v68)
      {
        v51 = v69;
        v52 = v68;
        if (v69 != v68)
        {
          do
          {
            v53 = *--v51;
            *v51 = 0;
            if (v53)
            {
              operator delete[]();
            }
          }

          while (v51 != v50);
          v52 = v68;
        }

        v69 = v50;
        operator delete(v52);
        result = v46;
      }

      if (v64 != v67)
      {
        free(v64);
        return v46;
      }
    }
  }

  return result;
}

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::detail::OpToOpPassAdaptor *this, mlir::MLIRContext *a2, mlir::detail::OpToOpPassAdaptor *a3)
{
  v5 = *(this + 86);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = *(this + 42);
    while (1)
    {
      v8 = *(*v7 + 23);
      if (v8 < 0)
      {
        v8 = (*v7)[1];
      }

      if (!v8)
      {
        break;
      }

      ++v7;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v7 = *(this + 42);
  }

  if (v7 != (*(this + 42) + 8 * v5))
  {
    v9 = *(a3 + 86);
    if (v9)
    {
      v10 = *(a3 + 42);
      for (i = 8 * v9; i; i -= 8)
      {
        v12 = *v10;
        v13 = *(*v10 + 23);
        if (v13 < 0)
        {
          if (!v12[1])
          {
            goto LABEL_26;
          }
        }

        else if (!*(*v10 + 23))
        {
          goto LABEL_26;
        }

        if ((v12[4] & 1) == 0)
        {
          if (v13 >= 0)
          {
            v14 = *v10;
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(*v10 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          mlir::OperationName::OperationName(&v69, v14, v15, a2);
          if ((v12[4] & 1) == 0)
          {
            *(v12 + 32) = 1;
          }

          v12[3] = v69;
        }

LABEL_26:
        if (v12[4] & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v7, a2, v12[3]))
        {
          return 0;
        }

        ++v10;
      }
    }
  }

LABEL_29:
  v16 = *(a3 + 86);
  if (v16)
  {
    v17 = 8 * v16;
    v18 = *(a3 + 42);
    while (1)
    {
      v19 = *(*v18 + 23);
      if (v19 < 0)
      {
        v19 = (*v18)[1];
      }

      if (!v19)
      {
        break;
      }

      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v18 = *(a3 + 42);
  }

  if (v18 == (*(a3 + 42) + 8 * v16))
  {
LABEL_57:
    v27 = *(this + 86);
    if (!v27)
    {
      goto LABEL_127;
    }

    v28 = *(this + 42);
    v68 = &v28[v27];
    while (1)
    {
      v29 = *v28;
      v30 = *(*v28 + 23);
      if (v30 < 0)
      {
        if (!*(v29 + 8))
        {
LABEL_102:
          v31 = "any";
          v32 = 3;
          v33 = *(a3 + 42);
          v34 = *(a3 + 86);
          if (v34)
          {
            goto LABEL_69;
          }

          goto LABEL_103;
        }
      }

      else if (!*(*v28 + 23))
      {
        goto LABEL_102;
      }

      if (v30 >= 0)
      {
        v31 = *v28;
      }

      else
      {
        v31 = *v29;
      }

      if (v30 >= 0)
      {
        v32 = *(*v28 + 23);
      }

      else
      {
        v32 = *(v29 + 8);
      }

      v33 = *(a3 + 42);
      v34 = *(a3 + 86);
      if (v34)
      {
LABEL_69:
        v35 = 8 * v34;
        v36 = v33;
        if (v32 == 3)
        {
          while (1)
          {
            v41 = *v36;
            v45 = (*v36)[23];
            if (v45 < 0)
            {
              if (!*(v41 + 1))
              {
LABEL_85:
                v41 = "any";
                goto LABEL_86;
              }
            }

            else if (!(*v36)[23])
            {
              goto LABEL_85;
            }

            v46 = *(v41 + 1);
            if (v45 >= 0)
            {
              v46 = (*v36)[23];
            }

            if (v46 != 3)
            {
              goto LABEL_90;
            }

            if (v45 < 0)
            {
              v41 = *v41;
            }

LABEL_86:
            v42 = *v41;
            v43 = *(v41 + 2);
            if (v42 == *v31 && v43 == v31[2])
            {
              goto LABEL_104;
            }

LABEL_90:
            ++v36;
            v35 -= 8;
            if (!v35)
            {
              goto LABEL_59;
            }
          }
        }

        while (2)
        {
          v37 = *v36;
          v38 = (*v36)[23];
          if (v38 < 0)
          {
            if (!*(v37 + 1))
            {
              goto LABEL_71;
            }
          }

          else if (!(*v36)[23])
          {
LABEL_71:
            ++v36;
            v35 -= 8;
            if (!v35)
            {
              goto LABEL_59;
            }

            continue;
          }

          break;
        }

        v39 = *(v37 + 1);
        if (v38 >= 0)
        {
          v39 = (*v36)[23];
        }

        if (v39 == v32)
        {
          if (!v32)
          {
            goto LABEL_104;
          }

          v40 = v38 >= 0 ? *v36 : *v37;
          if (!memcmp(v40, v31, v32))
          {
            goto LABEL_104;
          }
        }

        goto LABEL_71;
      }

LABEL_103:
      v36 = v33;
LABEL_104:
      if (v36 == &v33[v34] || !v36)
      {
LABEL_59:
        sub_100162F70(a3 + 336, v28++);
        if (v28 == v68)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v48 = *(v29 + 40);
        v47 = *(v29 + 48);
        if (v48 != v47)
        {
          v49 = *v36;
          v50 = *(v49 + 6);
          do
          {
            v52 = *(v49 + 7);
            if (v50 < v52)
            {
              v51 = *v48;
              *v48 = 0;
              *v50 = v51;
              v50 += 8;
            }

            else
            {
              v53 = *(v49 + 5);
              v54 = v50 - v53;
              v55 = (v50 - v53) >> 3;
              v56 = v55 + 1;
              if ((v55 + 1) >> 61)
              {
                sub_100003FC0();
              }

              v57 = v52 - v53;
              if (v57 >> 2 > v56)
              {
                v56 = v57 >> 2;
              }

              if (v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v58 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                if (!(v58 >> 61))
                {
                  operator new();
                }

                sub_100003FC0();
              }

              v59 = (v50 - v53) >> 3;
              v60 = (8 * v55);
              v61 = *v48;
              *v48 = 0;
              v62 = (8 * v55 - 8 * v59);
              *v60 = v61;
              v50 = (v60 + 1);
              memcpy(v62, v53, v54);
              *(v49 + 5) = v62;
              *(v49 + 6) = v50;
              *(v49 + 7) = 0;
              if (v53)
              {
                operator delete(v53);
              }
            }

            *(v49 + 6) = v50;
            ++v48;
          }

          while (v48 != v47);
          v48 = *(v29 + 40);
          v47 = *(v29 + 48);
        }

        while (v47 != v48)
        {
          v64 = *--v47;
          v63 = v64;
          *v47 = 0;
          if (v64)
          {
            (*(*v63 + 8))(v63);
          }
        }

        *(v29 + 48) = v48;
        if (++v28 == v68)
        {
          goto LABEL_127;
        }
      }
    }
  }

  v20 = *(this + 86);
  if (v20)
  {
    v21 = *(this + 42);
    v22 = 8 * v20;
    while (1)
    {
      v23 = *v21;
      v24 = *(*v21 + 23);
      if (v24 < 0)
      {
        if (!v23[1])
        {
          goto LABEL_54;
        }
      }

      else if (!*(*v21 + 23))
      {
        goto LABEL_54;
      }

      if ((v23[4] & 1) == 0)
      {
        if (v24 >= 0)
        {
          v25 = *v21;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(*v21 + 23);
        }

        else
        {
          v26 = v23[1];
        }

        mlir::OperationName::OperationName(&v69, v25, v26, a2);
        if ((v23[4] & 1) == 0)
        {
          *(v23 + 32) = 1;
        }

        v23[3] = v69;
      }

LABEL_54:
      if (v23[4] & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v18, a2, v23[3]))
      {
        return 0;
      }

      ++v21;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_127:
  sub_100163130(this + 336);
  v65 = *(a3 + 86);
  if (v65 >= 2)
  {
    qsort(*(a3 + 42), v65, 8uLL, sub_100165940);
  }

  return 1;
}

void *sub_100161800(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    while (*v2)
    {
      if (++v2 == v3)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      v4 = v2 + 1;
      if (v2 + 1 != v3)
      {
        do
        {
          v5 = *v4;
          if (*v4)
          {
            *v4 = 0;
            result = *v2;
            *v2 = v5;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v2;
          }

          ++v4;
        }

        while (v4 != v3);
        v3 = v1[1];
      }
    }
  }

  if (v2 != v3)
  {
    while (v3 != v2)
    {
      v6 = *--v3;
      result = v6;
      *v3 = 0;
      if (v6)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1[1] = v2;
  }

  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::canScheduleOn(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!a1[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_15;
  }

  if ((a1[4] & 1) == 0)
  {
    v6 = a3;
    if (v5 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v5 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    mlir::OperationName::OperationName(&v17, v7, v8, a2);
    v9 = v17;
    if ((a1[4] & 1) == 0)
    {
      *(a1 + 32) = 1;
    }

    a1[3] = v9;
    a3 = v6;
  }

LABEL_15:
  if (a1[4])
  {
    return a1[3] == a3;
  }

  v11 = *(a3 + 16);
  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 0;
  }

  {
    sub_1002A2C0C();
  }

  result = (*(*v12 + 32))(v12, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v13 = a1[5];
    v14 = a1[6];
    if (v13 == v14)
    {
      return 1;
    }

    else
    {
      v15 = v13 + 8;
      do
      {
        result = (*(**(v15 - 8) + 72))(*(v15 - 8), v12);
        if (result)
        {
          v16 = v15 == v14;
        }

        else
        {
          v16 = 1;
        }

        v15 += 8;
      }

      while (!v16);
    }
  }

  return result;
}

void *mlir::OpPassManager::printAsTextualPipeline(const char **this, llvm::raw_ostream *a2)
{
  v3 = *this;
  v4 = (*this)[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((*this)[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = "any";
    v6 = 3;
    v7 = *(v3 + 5);
    v8 = *(v3 + 6);
    result = *(a2 + 4);
    if (*(a2 + 3) - result < 3uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!*(v3 + 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = (*this)[23];
  }

  else
  {
    v6 = *(v3 + 1);
  }

  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  result = *(a2 + 4);
  if (v6 > *(a2 + 3) - result)
  {
LABEL_10:
    v10 = llvm::raw_ostream::write(a2, v5, v6);
    result = *(v10 + 4);
    if (*(v10 + 3) != result)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (v6)
  {
    v11 = v6;
    memcpy(result, v5, v6);
    result = (*(a2 + 4) + v11);
    *(a2 + 4) = result;
  }

  v10 = a2;
  if (*(a2 + 3) != result)
  {
LABEL_11:
    *result = 40;
    ++*(v10 + 4);
    if (v7 == v8)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = llvm::raw_ostream::write(v10, "(", 1uLL);
  if (v7 == v8)
  {
    goto LABEL_24;
  }

LABEL_19:
  v13 = *v7;
  v12 = v7 + 1;
  for (result = mlir::Pass::printAsTextualPipeline(v13, a2); v12 != v8; result = mlir::Pass::printAsTextualPipeline(v16, a2))
  {
    while (1)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) == v15)
      {
        break;
      }

      *v15 = 44;
      ++*(a2 + 4);
      v14 = *v12++;
      result = mlir::Pass::printAsTextualPipeline(v14, a2);
      if (v12 == v8)
      {
        goto LABEL_24;
      }
    }

    llvm::raw_ostream::write(a2, ",", 1uLL);
    v16 = *v12++;
  }

LABEL_24:
  v17 = *(a2 + 4);
  if (*(a2 + 3) == v17)
  {

    return llvm::raw_ostream::write(a2, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(a2 + 4);
  }

  return result;
}

uint64_t mlir::OpPassManager::initialize(mlir::OpPassManager *this, mlir::MLIRContext *a2, unsigned int a3)
{
  v3 = *this;
  if (*(*this + 64) == a3)
  {
    return 1;
  }

  *(v3 + 64) = a3;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v5 == v6)
  {
    return 1;
  }

  while (1)
  {
    v9 = *v5;
    v10 = *(*v5 + 8);
    if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
    {
      break;
    }

    v8 = v9;
    sub_1002A2BBC();
    v9 = v8;
    if (v10 == qword_1002E0E00)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (((*(*v9 + 64))(v9, a2) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (++v5 == v6)
    {
      return 1;
    }
  }

  if (v10 != qword_1002E0E00)
  {
    goto LABEL_5;
  }

LABEL_9:
  v11 = *(v9 + 344);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v9 + 336);
  v13 = 8 * v11;
  while ((mlir::OpPassManager::initialize(v12, a2, a3) & 1) != 0)
  {
    v12 = (v12 + 8);
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

unint64_t mlir::OpPassManager::hash(mlir::OpPassManager *this)
{
  v1 = *(*this + 40);
  v2 = *(*this + 48);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0uLL;
    while (1)
    {
      v6 = *v1;
      v7 = *(*v1 + 8);
      if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
      {
        if (v7 == qword_1002E0E00)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1002A2C48();
        v4 = 0uLL;
        if (v7 == qword_1002E0E00)
        {
LABEL_7:
          v8 = *(v6 + 344);
          if (v8)
          {
            v9 = *(v6 + 336);
            v10 = 8 * v8;
            do
            {
              v11 = mlir::OpPassManager::hash(v9);
              v21 = 0;
              v19 = 0u;
              v20 = 0u;
              v17 = 0u;
              v18 = 0u;
              v15 = 0u;
              v16 = 0u;
              v22 = 0xFF51AFD7ED558CCDLL;
              __src = v3;
              v14 = v11;
              sub_10002D330(&__src, 0, &v15, &v18);
              v9 = (v9 + 8);
              v10 -= 8;
            }

            while (v10);
            v4 = 0uLL;
          }

          goto LABEL_4;
        }
      }

      v21 = 0;
      v19 = v4;
      v20 = v4;
      v17 = v4;
      v18 = v4;
      v15 = v4;
      v16 = v4;
      v22 = 0xFF51AFD7ED558CCDLL;
      __src = v3;
      v14 = v6;
      v5 = sub_10002D330(&__src, 0, &v15, &v18);
      v4 = 0uLL;
      v3 = v5;
LABEL_4:
      if (++v1 == v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

BOOL mlir::detail::OpToOpPassAdaptor::run(uint64_t a1, void ***this, _DWORD *a3, char a4, int a5)
{
  v86 = a1;
  v87 = a3;
  v85 = this;
  v84 = a4;
  v83 = a5;
  v5 = this[6];
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v82 = 257;
    mlir::Operation::emitOpError(v92, this, &v79);
    if (v92[0])
    {
      LODWORD(threadid) = 3;
      v89 = "trying to schedule a pass on an unregistered operation";
      v90 = 54;
      v24 = &threadid;
      v25 = v93;
      if (v94 >= HIDWORD(v94))
      {
        if (v93 <= &threadid && &v93[3 * v94] > &threadid)
        {
          v65 = &threadid - v93;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v94 + 1, 24);
          v25 = v93;
          v24 = (v93 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v94 + 1, 24);
          v24 = &threadid;
          v25 = v93;
        }
      }

      v26 = &v25[3 * v94];
      v27 = *v24;
      v26[2] = v24[2];
      *v26 = v27;
      LODWORD(v94) = v94 + 1;
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
    if (v92[0])
    {
      mlir::InFlightDiagnostic::report(v92);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v29 = v98;
      if (v98)
      {
        v30 = v99;
        v31 = v98;
        if (v99 != v98)
        {
          do
          {
            v30 = sub_10005BEF4(v30 - 1);
          }

          while (v30 != v29);
          v31 = v98;
        }

        v99 = v29;
        operator delete(v31);
      }

      v32 = v96;
      if (!v96)
      {
        goto LABEL_83;
      }

      v33 = v97;
      v34 = v96;
      if (v97 == v96)
      {
        goto LABEL_82;
      }

      do
      {
        v35 = *--v33;
        *v33 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v33 != v32);
      goto LABEL_81;
    }
  }

  else
  {
    {
      v55 = v5;
      sub_1002A2C84();
      v5 = v55;
    }

    if ((*(*v5 + 4))(v5, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v6 = v85;
      v7 = v86;
      if (*(*(v85 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v85 + 6);
      }

      v9 = (*(*v86 + 72))(v86, v8);
      if (v9)
      {
        v10 = v87;
        v11 = *(v87 + 9);
        v12 = v11 & 0xFFFFFFFFFFFFFFF8;
        if ((v11 & 4) == 0 && v12)
        {
          do
          {
            v13 = *(v12 + 72);
            v12 = v13 & 0xFFFFFFFFFFFFFFF8;
          }

          while ((v13 & 4) == 0 && v12);
        }

        v78 = v12;
        threadid = llvm::get_threadid(v9);
        v89 = v86;
        v92[0] = &v85;
        v92[1] = &v83;
        v92[2] = &v87;
        v93 = &v84;
        v94 = &v78;
        v95[0] = &threadid;
        if (*(v86 + 112) == 1 && (*(v86 + 76) & 1) == 0)
        {
          free(*(v86 + 56));
          v6 = v85;
          v10 = v87;
          v12 = v78;
        }

        *(v7 + 40) = v6 & 0xFFFFFFFFFFFFFFFBLL;
        *(v7 + 48) = v10;
        *(v7 + 56) = v7 + 80;
        *(v7 + 64) = 2;
        *(v7 + 72) = 0;
        *(v7 + 76) = 1;
        *(v7 + 96) = sub_100166060;
        *(v7 + 104) = v92;
        *(v7 + 112) = 1;
        if (v12)
        {
          v14 = v86;
          v15 = *v12;
          std::recursive_mutex::lock(*v12);
          v16 = *v12;
          v17 = *(*v12 + 72);
          v18 = *&v16[1].__m_.__opaque[8];
          while (v17 != v18)
          {
            v19 = *v17++;
            (*(*v19 + 32))(v19, v14, v6);
          }

          std::recursive_mutex::unlock(v15);
          v6 = v85;
        }

        v77 = 0;
        Context = mlir::Attribute::getContext((v6 + 24));
        v79 = &v86;
        v80 = &v84;
        v81 = &v77;
        v21 = v86;
        v91 = v85 & 0xFFFFFFFFFFFFFFF9;
        if (mlir::MLIRContext::hasActionHandler(Context))
        {
          sub_100166384(Context, sub_1001663D8, &v79, &v91, 1, v21);
LABEL_101:
          mlir::detail::NestedAnalysisMap::invalidate(v87, v86 + 56);
          if (v77 || v84 != 1)
          {
            goto LABEL_117;
          }

          v58 = *(v86 + 8);
          if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
          {
            v59 = qword_1002E0E00;
            v60 = v86;
            if (atomic_load_explicit(&qword_1002E0E30, memory_order_acquire))
            {
              goto LABEL_105;
            }
          }

          else
          {
            sub_1002A2C48();
            v59 = qword_1002E0E00;
            v60 = v86;
            if (atomic_load_explicit(&qword_1002E0E30, memory_order_acquire))
            {
LABEL_105:
              v61 = qword_1002E0E28;
              if (*(v60 + 76) == 1)
              {
                goto LABEL_106;
              }

              goto LABEL_115;
            }
          }

          sub_1002A2CD4();
          v61 = qword_1002E0E28;
          if (*(v60 + 76) == 1)
          {
LABEL_106:
            v62 = *(v60 + 68);
            if (v62)
            {
              v63 = *(v60 + 56);
              v64 = 8 * v62;
              while (*v63 != v61)
              {
                ++v63;
                v64 -= 8;
                if (!v64)
                {
                  goto LABEL_116;
                }
              }

              goto LABEL_117;
            }

            goto LABEL_116;
          }

LABEL_115:
          if (llvm::SmallPtrSetImplBase::doFind((v60 + 56), v61))
          {
LABEL_117:
            v67 = v78;
            v68 = v77;
            if (v78)
            {
              v70 = v85;
              v69 = v86;
              v71 = *v78;
              std::recursive_mutex::lock(*v78);
              v73 = *(*v67)[1].__m_.__opaque;
              v72 = *&(*v67)[1].__m_.__opaque[8];
              if (v68)
              {
                while (v72 != v73)
                {
                  v74 = *(v72 - 8);
                  v72 -= 8;
                  (*(*v74 + 48))(v74, v69, v70);
                }
              }

              else
              {
                while (v72 != v73)
                {
                  v75 = *(v72 - 8);
                  v72 -= 8;
                  (*(*v75 + 40))(v75, v69, v70);
                }
              }

              std::recursive_mutex::unlock(v71);
              v68 = v77;
            }

            return !v68;
          }

LABEL_116:
          v77 = (mlir::verify(v85, (v58 != v59)) & 1) == 0;
          goto LABEL_117;
        }

        v22 = v86;
        v23 = *(v86 + 8);
        if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
        {
          if (v23 != qword_1002E0E00)
          {
LABEL_23:
            (*(**v79 + 56))();
LABEL_100:
            *v81 = (*(*v79 + 40) & 4) != 0;
            goto LABEL_101;
          }
        }

        else
        {
          sub_1002A2C48();
          if (v23 != qword_1002E0E00)
          {
            goto LABEL_23;
          }
        }

        v56 = *v80;
        v57 = mlir::Attribute::getContext(((*(v22 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
        if (mlir::MLIRContext::isMultithreadingEnabled(v57))
        {
          mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v22, v56);
        }

        else
        {
          mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v22, v56);
        }

        goto LABEL_100;
      }

      v82 = 257;
      mlir::Operation::emitOpError(v92, v85, &v79);
      if (v92[0])
      {
        LODWORD(threadid) = 3;
        v89 = "trying to schedule a pass on an unsupported operation";
        v90 = 53;
        p_threadid = &threadid;
        v46 = v93;
        if (v94 >= HIDWORD(v94))
        {
          if (v93 <= &threadid && &v93[3 * v94] > &threadid)
          {
            v76 = &threadid - v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v94 + 1, 24);
            v46 = v93;
            p_threadid = (v93 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v94 + 1, 24);
            p_threadid = &threadid;
            v46 = v93;
          }
        }

        v47 = &v46[3 * v94];
        v48 = *p_threadid;
        v47[2] = p_threadid[2];
        *v47 = v48;
        LODWORD(v94) = v94 + 1;
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
      if (v92[0])
      {
        mlir::InFlightDiagnostic::report(v92);
      }

      if (v101 == 1)
      {
        if (v100 != &v101)
        {
          free(v100);
        }

        v49 = v98;
        if (v98)
        {
          v50 = v99;
          v51 = v98;
          if (v99 != v98)
          {
            do
            {
              v50 = sub_10005BEF4(v50 - 1);
            }

            while (v50 != v49);
            v51 = v98;
          }

          v99 = v49;
          operator delete(v51);
        }

        v32 = v96;
        if (!v96)
        {
          goto LABEL_83;
        }

        v52 = v97;
        v34 = v96;
        if (v97 == v96)
        {
LABEL_82:
          v97 = v32;
          operator delete(v34);
LABEL_83:
          if (v93 != v95)
          {
            free(v93);
          }

          return v28;
        }

        do
        {
          v53 = *--v52;
          *v52 = 0;
          if (v53)
          {
            operator delete[]();
          }
        }

        while (v52 != v32);
LABEL_81:
        v34 = v96;
        goto LABEL_82;
      }
    }

    else
    {
      v82 = 257;
      mlir::Operation::emitOpError(v92, v85, &v79);
      if (v92[0])
      {
        LODWORD(threadid) = 3;
        v89 = "trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'";
        v90 = 75;
        v36 = &threadid;
        v37 = v93;
        if (v94 >= HIDWORD(v94))
        {
          if (v93 <= &threadid && &v93[3 * v94] > &threadid)
          {
            v66 = &threadid - v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v94 + 1, 24);
            v37 = v93;
            v36 = (v93 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v94 + 1, 24);
            v36 = &threadid;
            v37 = v93;
          }
        }

        v38 = &v37[3 * v94];
        v39 = *v36;
        v38[2] = v36[2];
        *v38 = v39;
        LODWORD(v94) = v94 + 1;
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
      if (v92[0])
      {
        mlir::InFlightDiagnostic::report(v92);
      }

      if (v101 == 1)
      {
        if (v100 != &v101)
        {
          free(v100);
        }

        v40 = v98;
        if (v98)
        {
          v41 = v99;
          v42 = v98;
          if (v99 != v98)
          {
            do
            {
              v41 = sub_10005BEF4(v41 - 1);
            }

            while (v41 != v40);
            v42 = v98;
          }

          v99 = v40;
          operator delete(v42);
        }

        v32 = v96;
        if (!v96)
        {
          goto LABEL_83;
        }

        v43 = v97;
        v34 = v96;
        if (v97 == v96)
        {
          goto LABEL_82;
        }

        do
        {
          v44 = *--v43;
          *v43 = 0;
          if (v44)
          {
            operator delete[]();
          }
        }

        while (v43 != v32);
        goto LABEL_81;
      }
    }
  }

  return v28;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runPipeline(uint64_t *a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, std::recursive_mutex **a6, uint64_t a7)
{
  v8 = a6;
  v41 = a3;
  if (!a6)
  {
    goto LABEL_19;
  }

  Context = mlir::Attribute::getContext((this + 24));
  v12 = *a1;
  v13 = *(*a1 + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v39 = a1;
    if (!*(*a1 + 23))
    {
      goto LABEL_16;
    }

LABEL_6:
    if ((v12[4] & 1) == 0)
    {
      if (v13 >= 0)
      {
        v14 = *a1;
      }

      else
      {
        v14 = *v12;
      }

      if (v13 >= 0)
      {
        v15 = *(*a1 + 23);
      }

      else
      {
        v15 = v12[1];
      }

      mlir::OperationName::OperationName(&v42, v14, v15, Context);
      v16 = v42;
      if ((v12[4] & 1) == 0)
      {
        *(v12 + 32) = 1;
      }

      v12[3] = v16;
    }

    goto LABEL_16;
  }

  v39 = a1;
  if (v12[1])
  {
    goto LABEL_6;
  }

LABEL_16:
  v17 = v12[3];
  v18 = *(v12 + 32);
  v19 = *a6;
  std::recursive_mutex::lock(*a6);
  v21 = *(*a6)[1].__m_.__opaque;
  v20 = *&(*a6)[1].__m_.__opaque[8];
  while (v21 != v20)
  {
    v22 = *v21++;
    (*(*v22 + 16))(v22, v17, v18, a7);
  }

  std::recursive_mutex::unlock(v19);
  a1 = v39;
  v8 = a6;
LABEL_19:
  v23 = *(*a1 + 40);
  v24 = *(*a1 + 48);
  if (v23 == v24)
  {
LABEL_22:
    if (!v8)
    {
LABEL_41:
      v28 = 1;
      goto LABEL_42;
    }

    v25 = mlir::Attribute::getContext((this + 24));
    v26 = *a1;
    v27 = *(*a1 + 23);
    if (v27 < 0)
    {
      if (!v26[1])
      {
LABEL_38:
        v32 = v26[3];
        v33 = *(v26 + 32);
        v34 = *v8;
        std::recursive_mutex::lock(*v8);
        v36 = *(*v8)[1].__m_.__opaque;
        for (i = *&(*v8)[1].__m_.__opaque[8]; i != v36; i -= 8)
        {
          v37 = *(i - 8);
          (*(*v37 + 24))(v37, v32, v33, a7);
        }

        std::recursive_mutex::unlock(v34);
        goto LABEL_41;
      }
    }

    else if (!*(*a1 + 23))
    {
      goto LABEL_38;
    }

    if ((v26[4] & 1) == 0)
    {
      if (v27 >= 0)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *v26;
      }

      if (v27 >= 0)
      {
        v30 = *(*a1 + 23);
      }

      else
      {
        v30 = v26[1];
      }

      mlir::OperationName::OperationName(&v42, v29, v30, v25);
      v31 = v42;
      if ((v26[4] & 1) == 0)
      {
        *(v26 + 32) = 1;
      }

      v26[3] = v31;
    }

    goto LABEL_38;
  }

  while ((mlir::detail::OpToOpPassAdaptor::run(*v23, this) & 1) != 0)
  {
    if (++v23 == v24)
    {
      goto LABEL_22;
    }
  }

  v28 = 0;
LABEL_42:
  sub_1001664C4(&v41);
  return v28;
}

uint64_t mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_1002E0E08, memory_order_acquire) & 1) == 0)
  {
    v4 = a2;
    sub_1002A2BBC();
    a2 = v4;
    v2 = a1;
  }

  *(v2 + 8) = qword_1002E0E00;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  *(v2 + 176) = v2 + 192;
  *(v2 + 184) = 0x400000000;
  *(v2 + 224) = v2 + 240;
  *(v2 + 232) = 0x400000000;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0x1000000000;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *v2 = off_1002D8100;
  *(v2 + 328) = 0;
  *(v2 + 336) = v2 + 352;
  *(v2 + 344) = &_mh_execute_header;
  *(v2 + 360) = v2 + 376;
  *(v2 + 368) = 0x800000000;
  sub_100162F70(v2 + 336, a2);
  return v2;
}

uint64_t sub_100162F70(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {

    return sub_100166680(a1, a2);
  }

  else
  {
    v3 = *a1;
    *(*a1 + 8 * v2) = 0;
    v4 = *a2;
    *a2 = 0;
    v5 = *(v3 + 8 * v2);
    *(v3 + 8 * v2) = v4;
    if (v5)
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = *(v5 + 48);
        v8 = *(v5 + 40);
        if (v7 != v6)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              (*(*v9 + 8))(v9);
            }
          }

          while (v7 != v6);
          v8 = *(v5 + 40);
        }

        *(v5 + 48) = v6;
        operator delete(v8);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete();
    }

    v11 = v2 + 1;
    *(a1 + 8) = v11;
    return v3 + 8 * v11 - 8;
  }
}

uint64_t mlir::detail::OpToOpPassAdaptor::getDependentDialects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v4 = *(result + 336);
    v5 = v4 + 8 * v2;
    v6 = *(*v4 + 40);
    i = *(*v4 + 48);
    if (v6 != i)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v4 += 8;
      if (v4 == v5)
      {
        break;
      }

      v6 = *(*v4 + 40);
      for (i = *(*v4 + 48); v6 != i; result = (*(*v8 + 24))(v8, a2))
      {
LABEL_5:
        v8 = *v6++;
      }
    }
  }

  return result;
}

uint64_t sub_100163130(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + 8 * v1);
    do
    {
      v5 = *--v3;
      v4 = v5;
      *v3 = 0;
      if (v5)
      {
        v6 = *(v4 + 40);
        if (v6)
        {
          v7 = *(v4 + 48);
          v8 = *(v4 + 40);
          if (v7 != v6)
          {
            do
            {
              v10 = *--v7;
              v9 = v10;
              *v7 = 0;
              if (v10)
              {
                (*(*v9 + 8))(v9);
              }
            }

            while (v7 != v6);
            v8 = *(v4 + 40);
          }

          *(v4 + 48) = v6;
          operator delete(v8);
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        operator delete();
      }
    }

    while (v3 != v2);
  }

  *(result + 8) = 0;
  return result;
}

void mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(mlir::detail::OpToOpPassAdaptor *this, char a2)
{
  v95 = a2;
  v3 = *(this + 5);
  v4 = *(this + 6);
  v94 = v4;
  Context = mlir::Attribute::getContext(((v3 & 0xFFFFFFFFFFFFFFF8) + 24));
  v78 = this;
  v79 = Context;
  if (*(this + 92))
  {
    v6 = *(this + 45);
    v7 = *(v6 + 2);
    if (v7 == *(this + 86))
    {
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = *v6;
      v9 = *(this + 42);
      while (*(*v8 + 48) - *(*v8 + 40) == *(*v9 + 48) - *(*v9 + 40))
      {
        v9 += 8;
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  ThreadPool = mlir::MLIRContext::getThreadPool(Context);
  v11 = (*(*ThreadPool + 40))(ThreadPool);
  sub_100164250(this + 360, v11, this + 336);
LABEL_9:
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v12 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 44);
  if ((v13 & 0x7FFFFF) == 0)
  {
    v15 = 0;
    v14 = 0;
    threadid = llvm::get_threadid(Context);
    v86 = this;
    v60 = *(v4 + 72);
    v59 = v60 & 0xFFFFFFFFFFFFFFF8;
    if ((v60 & 4) != 0)
    {
      goto LABEL_113;
    }

    goto LABEL_110;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = (((v12 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40));
  v74 = v17 + 24 * (v13 & 0x7FFFFF);
  while (2)
  {
    mlir::Region::OpIterator::OpIterator(&v100, v17, 0);
    v75 = v17;
    mlir::Region::OpIterator::OpIterator(v89, v17, 1);
    v88 = v101;
    v18 = v101;
    v87 = v100;
    v19 = v90;
    v77 = v90;
    if (v101 == v90)
    {
      goto LABEL_11;
    }

    while (2)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
      v21 = *(ValuePtr + 6);
      v22 = v93;
      if (!v93)
      {
        goto LABEL_89;
      }

      v23 = ((v21 >> 4) ^ (v21 >> 9)) & (v93 - 1);
      v24 = v91 + 16 * v23;
      v25 = *v24;
      if (v21 == *v24)
      {
        goto LABEL_70;
      }

      v26 = 0;
      v27 = 1;
      while (v25 != -4096)
      {
        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25 == -8192;
        }

        if (v28)
        {
          v26 = v24;
        }

        v29 = v23 + v27++;
        v23 = v29 & (v93 - 1);
        v24 = v91 + 16 * v23;
        v25 = *v24;
        if (v21 == *v24)
        {
          goto LABEL_70;
        }
      }

      if (v26)
      {
        v24 = v26;
      }

      if (4 * v92 + 4 >= 3 * v93)
      {
LABEL_89:
        v22 = 2 * v93;
LABEL_90:
        sub_100095FBC(&v91, v22);
        if (v93)
        {
          v51 = (v93 - 1) & ((v21 >> 4) ^ (v21 >> 9));
          v24 = v91 + 16 * v51;
          v52 = *v24;
          if (v21 != *v24)
          {
            v53 = 0;
            v54 = 1;
            while (v52 != -4096)
            {
              if (v53)
              {
                v55 = 0;
              }

              else
              {
                v55 = v52 == -8192;
              }

              if (v55)
              {
                v53 = v24;
              }

              v56 = v51 + v54++;
              v51 = v56 & (v93 - 1);
              v24 = v91 + 16 * v51;
              v52 = *v24;
              v19 = v77;
              if (v21 == *v24)
              {
                goto LABEL_102;
              }
            }

            if (v53)
            {
              v24 = v53;
            }

            v19 = v77;
          }
        }

        else
        {
          v24 = 0;
        }

LABEL_102:
        v30 = v14;
        LODWORD(v92) = v92 + 1;
        if (*v24 == -4096)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v93 + ~v92 - HIDWORD(v92) <= v93 >> 3)
      {
        goto LABEL_90;
      }

      v30 = v14;
      LODWORD(v92) = v92 + 1;
      if (*v24 != -4096)
      {
LABEL_30:
        --HIDWORD(v92);
      }

LABEL_31:
      *v24 = v21;
      v24[8] = 0;
      v24[12] = 0;
      v31 = *(v78 + 42);
      v32 = *(v78 + 86);
      v33 = &v31[v32];
      if (!v32)
      {
LABEL_61:
        if (v31 == v33)
        {
          v14 = v30;
LABEL_70:
          if (v24[12] != 1)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v14 = v30;
          if (v31)
          {
            v44 = *(v78 + 42);
            if ((v24[12] & 1) == 0)
            {
              v24[12] = 1;
            }

            *(v24 + 2) = (v31 - v44) >> 3;
            if (v24[12] != 1)
            {
              goto LABEL_15;
            }
          }

          else if (v24[12] != 1)
          {
            goto LABEL_15;
          }
        }

LABEL_71:
        v45 = mlir::AnalysisManager::nest(&v94, ValuePtr);
        if (v15 < v16)
        {
          *v15 = *(v24 + 2);
          *(v15 + 8) = ValuePtr;
          *(v15 + 16) = v45;
          v15 += 24;
        }

        else
        {
          v46 = v15 - v14;
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3) + 1;
          if (v47 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_100003FC0();
          }

          if (0x5555555555555556 * ((v16 - v14) >> 3) > v47)
          {
            v47 = 0x5555555555555556 * ((v16 - v14) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v16 - v14) >> 3) >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v47;
          }

          if (v48)
          {
            if (v48 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_100003FC0();
          }

          v49 = 8 * ((v15 - v14) >> 3);
          v16 = 0;
          *v49 = *(v24 + 2);
          *(v49 + 8) = ValuePtr;
          *(v49 + 16) = v45;
          v15 = v49 + 24;
          v50 = (v49 + 24 * (v46 / -24));
          memcpy(v50, v14, v46);
          if (v14)
          {
            operator delete(v14);
          }

          v14 = v50;
          v19 = v77;
        }

        goto LABEL_15;
      }

      v76 = v15;
      v34 = v16;
      v35 = *(ValuePtr + 6);
      do
      {
        v36 = *v31;
        v37 = *(*v31 + 23);
        if (v37 < 0)
        {
          if (!v36[1])
          {
            goto LABEL_49;
          }
        }

        else if (!*(*v31 + 23))
        {
          goto LABEL_49;
        }

        if ((v36[4] & 1) == 0)
        {
          if (v37 >= 0)
          {
            v38 = *v31;
          }

          else
          {
            v38 = *v36;
          }

          if (v37 >= 0)
          {
            v39 = *(*v31 + 23);
          }

          else
          {
            v39 = v36[1];
          }

          mlir::OperationName::OperationName(&__p, v38, v39, v79);
          if ((v36[4] & 1) == 0)
          {
            *(v36 + 32) = 1;
          }

          v36[3] = __p;
        }

LABEL_49:
        if (v36[4])
        {
          if (v36[3] == v35)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v40 = *(v35 + 16);
          if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            v41 = 0;
          }

          else
          {
            v41 = v35;
          }

          if (v40 != &mlir::detail::TypeIDResolver<void,void>::id)
          {
            {
              sub_1002A2C0C();
            }

            if ((*(*v41 + 32))(v41, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              v43 = v36[5];
              v42 = v36[6];
              if (v43 == v42)
              {
LABEL_60:
                v16 = v34;
                v15 = v76;
                v19 = v77;
                goto LABEL_61;
              }

              while (((*(**v43 + 72))(*v43, v41) & 1) != 0)
              {
                if (++v43 == v42)
                {
                  goto LABEL_60;
                }
              }
            }
          }
        }

        ++v31;
      }

      while (v31 != v33);
      v14 = v30;
      v16 = v34;
      v15 = v76;
      v19 = v77;
      if (v24[12] == 1)
      {
        goto LABEL_71;
      }

LABEL_15:
      mlir::Region::OpIterator::operator++(&v100);
      v18 = v101;
      if (v101 != v19)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v17 = (v75 + 24);
    if (v75 + 24 != v74)
    {
      continue;
    }

    break;
  }

  v57 = v94;
  threadid = llvm::get_threadid(v18);
  v86 = v78;
  v58 = *(v57 + 72);
  v59 = v58 & 0xFFFFFFFFFFFFFFF8;
  if ((v58 & 4) == 0)
  {
LABEL_110:
    if (v59)
    {
      do
      {
        v61 = *(v59 + 72);
        v59 = v61 & 0xFFFFFFFFFFFFFFF8;
      }

      while ((v61 & 4) == 0 && v59);
    }
  }

LABEL_113:
  v83 = 0;
  v84 = v59;
  v62 = *(v78 + 92);
  __p = 0;
  v82 = 0;
  if (v62)
  {
    operator new();
  }

  v80 = 0;
  *&v87 = &__p;
  *(&v87 + 1) = v78;
  v88 = &v95;
  v89[0] = &v84;
  v89[1] = &threadid;
  v90 = &v80;
  v96 = &v87;
  v99 = v14;
  v63 = -1431655765 * ((v15 - v14) >> 3);
  v98 = v63;
  if (v63)
  {
    if (mlir::MLIRContext::isMultithreadingEnabled(v79) && v63 != 1)
    {
      mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v97, v79);
    }

    if (v14 != v15)
    {
      v64 = v14;
      do
      {
        v65 = v96;
        v66 = v96[1];
        v67 = **v96;
        v68 = (*v96)[1];
        if (v67 == v68)
        {
          v70 = **v96;
        }

        else
        {
          while (1)
          {
            v69 = 0;
            atomic_compare_exchange_strong(v67, &v69, 1u);
            if (!v69)
            {
              break;
            }

            if (++v67 == v68)
            {
              LODWORD(v67) = v68;
              break;
            }
          }

          LODWORD(v70) = v67;
          v67 = **v65;
        }

        v71 = (v70 - v67);
        v72 = (*&v66[45][24 * v71] + 8 * *v64);
        if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v72, *(v64 + 1), *(v64 + 2), *v65[2], *(*v72 + 64), *v65[3], v65[4]) & 1) == 0)
        {
          atomic_store(1u, v65[5]);
        }

        atomic_store(0, &(**v65)[v71]);
        v64 = v99 + 6;
        v99 = v64;
      }

      while (v64 != v15);
    }
  }

  v73 = atomic_load(&v80);
  if (v73)
  {
    *(v78 + 5) |= 4uLL;
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  llvm::deallocate_buffer(v91, (16 * v93), 8uLL);
  if (v14)
  {
    operator delete(v14);
  }
}

uint64_t mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(mlir::detail::OpToOpPassAdaptor *this, unsigned int a2)
{
  v38 = *(this + 6);
  result = llvm::get_threadid(this);
  v37[0] = result;
  v37[1] = this;
  v4 = *(v38 + 72);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 4) == 0 && v5)
  {
    do
    {
      v6 = *(v5 + 72);
      v5 = v6 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v6 & 4) == 0 && v5);
  }

  v34 = v5;
  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v10 = ((v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
    v31 = v10 + 24 * v9;
    while (1)
    {
      v11 = *(v10 + 8);
      v32 = v10;
      if (v11 != v10)
      {
        break;
      }

LABEL_7:
      v10 += 24;
      if (v10 == v31)
      {
        return result;
      }
    }

    while (1)
    {
      v12 = v11 - 8;
      v33 = v11;
      if (!v11)
      {
        v12 = 0;
      }

      v13 = *(v12 + 40);
      v36 = v12 + 32;
      if (v13 != v12 + 32)
      {
        break;
      }

LABEL_10:
      v10 = v32;
      v11 = *(v33 + 8);
      if (v11 == v32)
      {
        goto LABEL_7;
      }
    }

    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
      v15 = *(this + 42);
      v16 = *(this + 86);
      v17 = ValuePtr[6];
      result = mlir::Attribute::getContext((ValuePtr + 3));
      v18 = &v15[v16];
      if (v16)
      {
        break;
      }

LABEL_45:
      if (v15 != v18 && v15 != 0)
      {
        v29 = *(*v15 + 64);
        v30 = mlir::AnalysisManager::nest(&v38, ValuePtr);
        result = mlir::detail::OpToOpPassAdaptor::runPipeline(v15, ValuePtr, v30, a2, v29, v34, v37);
        if ((result & 1) == 0)
        {
          *(this + 5) |= 4uLL;
        }
      }

LABEL_15:
      v13 = *(v13 + 8);
      if (v13 == v36)
      {
        goto LABEL_10;
      }
    }

    v19 = result;
    while (1)
    {
      v20 = *v15;
      v21 = *(*v15 + 23);
      if (v21 < 0)
      {
        if (!*(v20 + 8))
        {
          goto LABEL_34;
        }
      }

      else if (!*(*v15 + 23))
      {
        goto LABEL_34;
      }

      if ((*(v20 + 32) & 1) == 0)
      {
        if (v21 >= 0)
        {
          v22 = *v15;
        }

        else
        {
          v22 = *v20;
        }

        if (v21 >= 0)
        {
          v23 = *(*v15 + 23);
        }

        else
        {
          v23 = *(v20 + 8);
        }

        result = mlir::OperationName::OperationName(&v39, v22, v23, v19);
        if ((*(v20 + 32) & 1) == 0)
        {
          *(v20 + 32) = 1;
        }

        *(v20 + 24) = v39;
      }

LABEL_34:
      if (*(v20 + 32))
      {
        if (*(v20 + 24) == v17)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v24 = *(v17 + 16);
        if (v24 == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v25 = 0;
        }

        else
        {
          v25 = v17;
        }

        if (v24 != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          {
            sub_1002A2D14();
          }

          result = (*(*v25 + 32))(v25, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
          if (result)
          {
            v27 = *(v20 + 40);
            v26 = *(v20 + 48);
            if (v27 == v26)
            {
              goto LABEL_45;
            }

            while (1)
            {
              result = (*(**v27 + 72))(*v27, v25);
              if ((result & 1) == 0)
              {
                break;
              }

              if (++v27 == v26)
              {
                goto LABEL_45;
              }
            }
          }
        }
      }

      if (++v15 == v18)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t mlir::AnalysisManager::nest(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v3 = a2;
  v4 = *(*this + 24);
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(*(a2 + 2));
    v3 = a2;
  }

  if (v4 == ParentOp)
  {
    v14[0] = v3;
    sub_100164FFC(*this, v14, &v17);
    if (v19[0] == 1)
    {
      operator new();
    }

    return *(v17 + 1);
  }

  else
  {
    v17 = v19;
    v18 = 0x400000000;
    do
    {
      v7 = v18;
      if (v18 >= HIDWORD(v18))
      {
        v8 = v3;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v18 + 1, 8);
        v3 = v8;
        v7 = v18;
      }

      *(v17 + v7) = v3;
      LODWORD(v18) = v18 + 1;
      v3 = *(v3 + 2);
      if (v3)
      {
        v3 = mlir::Block::getParentOp(v3);
      }
    }

    while (v3 != v4);
    v9 = *this;
    v10 = v17;
    if (v18)
    {
      v11 = 8 * v18;
      v12 = v17 - 8;
      do
      {
        v16 = *&v12[v11];
        sub_100164FFC(v9, &v16, v14);
        if (v15 == 1)
        {
          operator new();
        }

        v9 = *(v14[0] + 8);
        v11 -= 8;
      }

      while (v11);
      v10 = v17;
    }

    if (v10 != v19)
    {
      free(v10);
    }
  }

  return v9;
}

void sub_100164250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v6 = *(a1 + 8);
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      v8 = *a1;
      do
      {
        sub_100166A7C(v8, a3);
        v8 += 24;
        --v7;
      }

      while (v7);
      v6 = *(a1 + 8);
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v12 = 24 * v6;
        v13 = 24 * a2 - v12;
        v14 = (v12 + *a1 - 24);
        do
        {
          v14 = sub_100165C1C(v14) - 3;
          v13 += 24;
        }

        while (v13);
      }
    }

    else
    {
      v10 = (*a1 + 24 * v6);
      do
      {
        *v10 = v10 + 2;
        v10[1] = &_mh_execute_header;
        if (*(a3 + 8))
        {
          sub_100166A7C(v10, a3);
        }

        v10 += 3;
      }

      while (!__CFADD__(v9++, 1));
    }

    *(a1 + 8) = a2;
  }

  else
  {

    sub_100166978(a1, a2, a3);
  }
}

void mlir::PassManager::~PassManager(mlir::PassManager *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(v2);
    operator delete();
  }

  sub_100167060(this + 3, 0);
  v3 = *this;
  *this = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 40);
      if (v5 != v4)
      {
        do
        {
          v8 = *--v5;
          v7 = v8;
          *v5 = 0;
          if (v8)
          {
            (*(*v7 + 8))(v7);
          }
        }

        while (v5 != v4);
        v6 = *(v3 + 40);
      }

      *(v3 + 48) = v4;
      operator delete(v6);
    }

    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }
}

BOOL mlir::PassManager::run(mlir::PassManager *this, mlir::Operation *a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(*this + 23);
  if (v6 < 0)
  {
    if (!v5[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(*this + 23))
  {
    goto LABEL_15;
  }

  if ((v5[4] & 1) == 0)
  {
    if (v6 >= 0)
    {
      v7 = *this;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(*this + 23);
    }

    else
    {
      v8 = v5[1];
    }

    mlir::OperationName::OperationName(&v78, v7, v8, v4);
    v9 = v78;
    if ((v5[4] & 1) == 0)
    {
      *(v5 + 32) = 1;
    }

    v5[3] = v9;
  }

LABEL_15:
  if ((v5[4] & 1) != 0 && *(a2 + 6) != v5[3])
  {
    mlir::emitError(*(a2 + 3), &v78);
    if (v78)
    {
      LODWORD(v69) = 3;
      v70 = "can't run '";
      v71 = 11;
      v10 = &v69;
      v11 = v81;
      if (v82 >= HIDWORD(v82))
      {
        if (v81 <= &v69 && v81 + 24 * v82 > &v69)
        {
          v66 = &v69 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, &v83, v82 + 1, 24);
          v11 = v81;
          v10 = (v81 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, &v83, v82 + 1, 24);
          v10 = &v69;
          v11 = v81;
        }
      }

      v12 = &v11[24 * v82];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      LODWORD(v82) = v82 + 1;
    }

    v14 = *this;
    v15 = *(*this + 23);
    if (v15 < 0)
    {
      if (*(v14 + 1))
      {
LABEL_22:
        v16 = *(v14 + 1);
        if (v15 < 0)
        {
          v14 = *v14;
          v15 = v16;
        }

        if (!v78)
        {
          goto LABEL_75;
        }

        goto LABEL_69;
      }
    }

    else if (*(*this + 23))
    {
      goto LABEL_22;
    }

    v14 = "any";
    v15 = 3;
    if (!v78)
    {
LABEL_75:
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
      if (v78)
      {
        mlir::InFlightDiagnostic::report(&v78);
      }

      if (v93 == 1)
      {
        if (v92 != &v93)
        {
          free(v92);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v91;
          v51 = __p;
          if (v91 != __p)
          {
            do
            {
              v50 = sub_10005BEF4(v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v91 = v49;
          operator delete(v51);
        }

        v52 = v88;
        if (v88)
        {
          v53 = v89;
          v54 = v88;
          if (v89 != v88)
          {
            do
            {
              v55 = *--v53;
              *v53 = 0;
              if (v55)
              {
                operator delete[]();
              }
            }

            while (v53 != v52);
            v54 = v88;
          }

          v89 = v52;
          operator delete(v54);
        }

        if (v81 != &v83)
        {
          free(v81);
        }
      }

      return v36;
    }

LABEL_69:
    v73 = 261;
    v69 = v14;
    v70 = v15;
    mlir::Diagnostic::operator<<(&v79, &v69);
    if (v78)
    {
      LODWORD(v69) = 3;
      v70 = "' pass manager on '";
      v71 = 19;
      v41 = &v69;
      v42 = v81;
      if (v82 >= HIDWORD(v82))
      {
        if (v81 <= &v69 && v81 + 24 * v82 > &v69)
        {
          v67 = &v69 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, &v83, v82 + 1, 24);
          v42 = v81;
          v41 = (v81 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, &v83, v82 + 1, 24);
          v41 = &v69;
          v42 = v81;
        }
      }

      v43 = &v42[24 * v82];
      v44 = *v41;
      *(v43 + 2) = v41[2];
      *v43 = v44;
      LODWORD(v82) = v82 + 1;
      if (v78)
      {
        mlir::Diagnostic::operator<<(&v79, *(a2 + 6));
        if (v78)
        {
          LODWORD(v69) = 3;
          v70 = "' op";
          v71 = 4;
          v45 = &v69;
          v46 = v81;
          if (v82 >= HIDWORD(v82))
          {
            if (v81 <= &v69 && v81 + 24 * v82 > &v69)
            {
              v68 = &v69 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, &v83, v82 + 1, 24);
              v46 = v81;
              v45 = (v81 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, &v83, v82 + 1, 24);
              v45 = &v69;
              v46 = v81;
            }
          }

          v47 = &v46[24 * v82];
          v48 = *v45;
          *(v47 + 2) = v45[2];
          *v47 = v48;
          LODWORD(v82) = v82 + 1;
        }
      }
    }

    goto LABEL_75;
  }

  mlir::DialectRegistry::DialectRegistry(&v69);
  v17 = *(*this + 40);
  v18 = *(*this + 48);
  while (v17 != v18)
  {
    v19 = *v17++;
    (*(*v19 + 24))(v19, &v69);
  }

  mlir::MLIRContext::appendDialectRegistry(v4, &v69);
  v20 = v69;
  if (v69 != &v70)
  {
    do
    {
      v28 = *(v20 + 55);
      if (v28 >= 0)
      {
        v29 = (v20 + 4);
      }

      else
      {
        v29 = v20[4];
      }

      v30 = v20[5];
      if (v28 >= 0)
      {
        v31 = *(v20 + 55);
      }

      else
      {
        v31 = v20[5];
      }

      mlir::MLIRContext::getOrLoadDialect(v4, v29, v31);
      v32 = v20[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v20[2];
          v34 = *v33 == v20;
          v20 = v33;
        }

        while (!v34);
      }

      v20 = v33;
    }

    while (v33 != &v70);
  }

  if (!mlir::detail::OpPassManagerImpl::finalizePassList(*this, v4))
  {
    goto LABEL_55;
  }

  mlir::MLIRContext::enterMultiThreadedExecution(v4);
  RegistryHash = mlir::MLIRContext::getRegistryHash(v4);
  v22 = mlir::OpPassManager::hash(this);
  if (RegistryHash != *(this + 5) || v22 != *(this + 6))
  {
    if (mlir::OpPassManager::initialize(this, v4, *(*this + 64) + 1))
    {
      *(this + 5) = RegistryHash;
      goto LABEL_34;
    }

LABEL_55:
    v36 = 0;
    v37 = v75;
    v38 = v76;
    if (v76)
    {
      goto LABEL_97;
    }

    goto LABEL_102;
  }

LABEL_34:
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v82 = 0;
  v83 = 0;
  v81 = a2;
  v84 = 0;
  v23 = *(this + 4);
  v24 = *(this + 3) | 4;
  v86 = 0;
  v87[0] = v24;
  v85 = v87;
  if (v23)
  {
    mlir::PassManager::runWithCrashRecovery(this, a2, &v78);
  }

  v56 = *(this + 56);
  v57 = *this;
  v58 = *(*this + 64);
  v77 = &v78;
  v59 = *(v57 + 40);
  v60 = *(v57 + 48);
  if (v59 == v60)
  {
LABEL_95:
    v36 = 1;
  }

  else
  {
    v61 = (v56 >> 1) & 1;
    while (mlir::detail::OpToOpPassAdaptor::run(*v59, a2, &v78, v61, v58))
    {
      if (++v59 == v60)
      {
        goto LABEL_95;
      }
    }

    v36 = 0;
  }

  sub_1001664C4(&v77);
  mlir::MLIRContext::exitMultiThreadedExecution(v4);
  if (*(this + 20) == 1)
  {
    mlir::PassManager::dumpStatistics(this);
  }

  v25 = v85;
  if (v86)
  {
    v26 = v85 - 8;
    v27 = 16 * v86;
    do
    {
      v35 = *&v26[v27];
      *&v26[v27] = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }

      v27 -= 16;
    }

    while (v27);
    v25 = v85;
  }

  if (v25 != v87)
  {
    free(v25);
  }

  llvm::deallocate_buffer(v82, (16 * v84), 8uLL);
  if (v80)
  {
    v39 = (v78 + 8);
    v40 = 16 * v80;
    do
    {
      if ((*(v39 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        sub_100167378(v39, 0);
      }

      v39 += 2;
      v40 -= 16;
    }

    while (v40);
    llvm::deallocate_buffer(v78, (16 * v80), 8uLL);
    v37 = v75;
    v38 = v76;
    if (!v76)
    {
      goto LABEL_102;
    }

    goto LABEL_97;
  }

  llvm::deallocate_buffer(v78, 0, 8uLL);
  v37 = v75;
  v38 = v76;
  if (v76)
  {
LABEL_97:
    v62 = v37 - 1;
    v63 = 2 * v38;
    do
    {
      v64 = v62[v63];
      v62[v63] = 0;
      if (v64)
      {
        (*(*v64 + 1))(v64);
      }

      v63 -= 2;
    }

    while (v63 * 8);
    v37 = v75;
  }

LABEL_102:
  if (v37 != &v77)
  {
    free(v37);
  }

  llvm::deallocate_buffer(v72, (16 * v74), 8uLL);
  sub_1000B0B68(&v69, v70);
  return v36;
}

uint64_t mlir::PassManager::runPasses(unsigned __int8 *a1, void ***a2, _DWORD *a3)
{
  v3 = a1[56];
  v4 = *a1;
  v5 = *(*a1 + 64);
  v13 = a3;
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v6 == v7)
  {
LABEL_5:
    v11 = 1;
  }

  else
  {
    v10 = (v3 >> 1) & 1;
    while (mlir::detail::OpToOpPassAdaptor::run(*v6, a2, a3, v10, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = 0;
  }

  sub_1001664C4(&v13);
  return v11;
}

uint64_t mlir::PassManager::addInstrumentation(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    operator new();
  }

  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::PassInstrumentor::addInstrumentation(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

void mlir::PassInstrumentor::addInstrumentation(std::recursive_mutex **a1, uint64_t *a2)
{
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v7 = *&(*a1)[1].__m_.__opaque[8];
  v6 = *&(*a1)[1].__m_.__opaque[16];
  if (v7 >= v6)
  {
    v10 = *v5[1].__m_.__opaque;
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      sub_100003FC0();
    }

    v14 = v6 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_100003FC0();
    }

    v16 = v12;
    v17 = (8 * v12);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v9 = v17 + 1;
    memcpy(v19, v10, v11);
    *v5[1].__m_.__opaque = v19;
    *&v5[1].__m_.__opaque[8] = v9;
    *&v5[1].__m_.__opaque[16] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    *v7 = v8;
    v9 = v7 + 8;
  }

  *&v5[1].__m_.__opaque[8] = v9;

  std::recursive_mutex::unlock(v4);
}

uint64_t sub_100164FFC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 16 * (v15 & v6));
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
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
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
    sub_100167150(result, v4);
    sub_1000414FC(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

void mlir::detail::NestedAnalysisMap::invalidate(_DWORD *a1, uint64_t a2)
{
  if (atomic_load_explicit(&qword_1002E0E30, memory_order_acquire))
  {
    v4 = qword_1002E0E28;
    if (*(a2 + 20) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (llvm::SmallPtrSetImplBase::doFind(a2, v4))
    {
      return;
    }

    goto LABEL_10;
  }

  sub_1002A2DA8();
  v4 = qword_1002E0E28;
  if (*(a2 + 20) != 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = *(a2 + 12);
  if (!v5)
  {
LABEL_10:
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v22, &v26, a2);
    sub_100165A20((a1 + 8), &v22);
    if ((BYTE4(v25) & 1) == 0)
    {
      free(v22);
    }

    if (*(a2 + 12) != *(a2 + 16))
    {
      v22 = &v25;
      v24 = 8;
      v25 = a1;
      v10 = 1;
      do
      {
        v11 = *(v22 + --v10);
        v23 = v10;
        if (*(v11 + 8))
        {
          v12 = *v11;
          v13 = *(v11 + 16);
          if (v13)
          {
            v14 = 16 * v13;
            v15 = v12;
            while ((*v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v15 += 2;
              v14 -= 16;
              if (!v14)
              {
                goto LABEL_20;
              }
            }
          }

          else
          {
            v15 = v12;
          }

          v16 = &v12[2 * v13];
          if (v15 != v16)
          {
            do
            {
              mlir::detail::NestedAnalysisMap::invalidate(v15[1], a2);
              v17 = v15[1];
              if (*(v17 + 8))
              {
                v18 = v23;
                if (v23 >= v24)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, &v25, v23 + 1, 8);
                  v18 = v23;
                }

                *(v22 + v18) = v17;
                ++v23;
              }

              do
              {
                v15 += 2;
              }

              while (v15 != v16 && (*v15 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v15 != v16);
            v10 = v23;
          }
        }

LABEL_20:
        ;
      }

      while (v10);
      if (v22 != &v25)
      {
        free(v22);
      }

      return;
    }

    v8 = a1[2];
    if (!v8 && !a1[3])
    {
      return;
    }

    v9 = a1[4];
    if (v9 > 4 * v8 && v9 >= 0x41)
    {
      sub_100165D2C(a1);
      return;
    }

    if (!v9)
    {
LABEL_48:
      *(a1 + 1) = 0;
      return;
    }

    v19 = (*a1 + 8);
    v20 = 16 * v9;
    while (1)
    {
      v21 = *(v19 - 1);
      if (v21 != -8192)
      {
        if (v21 == -4096)
        {
          goto LABEL_44;
        }

        sub_100167378(v19, 0);
      }

      *(v19 - 1) = -4096;
LABEL_44:
      v19 += 2;
      v20 -= 16;
      if (!v20)
      {
        goto LABEL_48;
      }
    }
  }

  v6 = *a2;
  v7 = 8 * v5;
  while (*v6 != v4)
  {
    ++v6;
    v7 -= 8;
    if (!v7)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1001654B4(uint64_t a1)
{
  *a1 = off_1002D8100;
  v2 = *(a1 + 360);
  v3 = *(a1 + 368);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = sub_100165C1C(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 360);
  }

  if (v2 != (a1 + 376))
  {
    free(v2);
  }

  sub_100165C1C((a1 + 336));

  return sub_1000053C4(a1);
}

void sub_100165550(uint64_t a1)
{
  *a1 = off_1002D8100;
  v2 = *(a1 + 360);
  v3 = *(a1 + 368);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = sub_100165C1C(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 360);
  }

  if (v2 != (a1 + 376))
  {
    free(v2);
  }

  sub_100165C1C((a1 + 336));
  sub_1000053C4(a1);

  operator delete();
}

uint64_t sub_100165600()
{
  if ((atomic_load_explicit(&qword_1002E0E20, memory_order_acquire) & 1) == 0)
  {
    sub_1002A2B60();
  }

  return qword_1002E0E10;
}

void *sub_10016578C(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xAu, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *v5;
  if (*(v5 + 8) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

uint64_t sub_100165878()
{
  if ((atomic_load_explicit(&qword_1002E0E48, memory_order_acquire) & 1) == 0)
  {
    sub_1002A2DFC();
  }

  return qword_1002E0E38;
}

const char *sub_1001658C0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]";
  v6 = 110;
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

uint64_t sub_100165940(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = *(*a1 + 23);
  }

  if (!v4)
  {
    return 1;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *v2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(v2 + 8);
  }

  v7 = *a2;
  v8 = *(*a2 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v7[1])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  if (v8 >= 0)
  {
    v9 = *(*a2 + 23);
  }

  else
  {
    v9 = v7[1];
  }

  if (v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = v8 >= 0 ? *a2 : *v7;
    v12 = memcmp(v5, v11, v10);
    if (v12)
    {
      return (v12 >> 31) | 1u;
    }
  }

  if (v6 == v9)
  {
    return 0;
  }

  if (v6 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_100165A20(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 24);
  v4 = *(result + 32);
  if (v4)
  {
    v6 = *&v3 + 16 * v4;
    v7 = *(result + 24);
    do
    {
      result = (*(**(*&v3 + 8) + 16))(*(*&v3 + 8), a2);
      if (result)
      {
        v9 = v2[2].i32[0];
        if (v9)
        {
          v10 = *v2;
          v11 = v9 - 1;
          v12 = ((**&v3 >> 4) ^ (**&v3 >> 9)) & (v9 - 1);
          v13 = *(*v2 + 16 * (((**&v3 >> 4) ^ (**&v3 >> 9)) & v11));
          if (**&v3 == v13)
          {
LABEL_9:
            *(*&v10 + 16 * v12) = -8192;
            v2[1] = vadd_s32(v2[1], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (v13 != -4096)
            {
              v18 = v12 + v17++;
              v12 = v18 & v11;
              v13 = *(*&v10 + 16 * v12);
              if (**&v3 == v13)
              {
                goto LABEL_9;
              }
            }
          }
        }
      }

      else
      {
        if (*&v3 != v7)
        {
          v14 = **&v3;
          v15 = *(*&v3 + 8);
          *(*&v3 + 8) = 0;
          v16 = v7[1];
          *v7 = v14;
          v7[1] = v15;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          v8 = (v7 - *&v2[3]) >> 4;
          result = sub_1000400B4(v2, v7);
          *result = v8;
        }

        v7 += 2;
      }

      *&v3 += 16;
    }

    while (*&v3 != v6);
    v3 = v2[3];
    v19 = (*&v3 + 16 * v2[4].u32[0]);
    if (v19 != v7)
    {
      do
      {
        result = *(v19 - 1);
        *(v19 - 1) = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v19 -= 2;
      }

      while (v19 != v7);
      v3 = v2[3];
    }
  }

  else
  {
    v7 = *(result + 24);
  }

  v2[4].i32[0] = (v7 - *&v3) >> 4;
  return result;
}

char **sub_100165C1C(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3];
    do
    {
      v6 = *(v4 - 1);
      v4 -= 8;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        operator delete();
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void sub_100165D2C(_DWORD *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  v4 = (16 * v2);
  if (v2)
  {
    v5 = (*a1 + 8);
    v6 = 16 * v2;
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        sub_100167378(v5, 0);
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  if (v3)
  {
    v7 = 1 << (33 - __clz(v3 - 1));
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    if (v8 == a1[4])
    {
      *(a1 + 1) = 0;
      v9 = *a1;
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
          return;
        }
      }

      else
      {
        v13 = *a1;
      }

      v26 = (v9 + 16 * v8);
      do
      {
        *v13 = -4096;
        v13 += 2;
      }

      while (v13 != v26);
      return;
    }
  }

  else
  {
    if (!a1[4])
    {
      *(a1 + 1) = 0;
      return;
    }

    LODWORD(v8) = 0;
  }

  llvm::deallocate_buffer(*a1, v4, 8uLL);
  if (!v8)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    a1[4] = 0;
    return;
  }

  v16 = (4 * v8 / 3u + 1) | ((4 * v8 / 3u + 1) >> 1);
  v17 = v16 | (v16 >> 2) | ((v16 | (v16 >> 2)) >> 4);
  LODWORD(v17) = (((v17 | (v17 >> 8)) >> 16) | v17 | (v17 >> 8)) + 1;
  a1[4] = v17;
  buffer = llvm::allocate_buffer((16 * v17), 8uLL);
  *a1 = buffer;
  *(a1 + 1) = 0;
  v19 = a1[4];
  if (v19)
  {
    v20 = (v19 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      v23 = buffer;
LABEL_32:
      v27 = &buffer[2 * v19];
      do
      {
        *v23 = -4096;
        v23 += 2;
      }

      while (v23 != v27);
      return;
    }

    v21 = v20 + 1;
    v22 = (v20 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v23 = &buffer[2 * v22];
    v24 = buffer + 2;
    v25 = v22;
    do
    {
      *(v24 - 2) = -4096;
      *v24 = -4096;
      v24 += 4;
      v25 -= 2;
    }

    while (v25);
    if (v21 != v22)
    {
      goto LABEL_32;
    }
  }
}

uint64_t sub_100165F3C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003FD0(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = *(a2 + 8);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  while (v6 != v7)
  {
    v8 = *v6 + 144;
    (*(**v6 + 80))(&v11);
    mlir::detail::PassOptions::copyOptionValuesFrom(v11 + 144, v8);
    *(v11 + 328) = *v6;
    sub_10002CAC8(a1 + 40, &v11);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v6 += 8;
  }

  return a1;
}

uint64_t sub_100166060(uint64_t a1, mlir::OpPassManager *a2, Operation *a3)
{
  v6 = **a1;
  if (v6 != a3 && (mlir::Operation::isProperAncestor(v6, a3) & 1) == 0)
  {
    v31 = 257;
    mlir::Operation::emitOpError(v35, a3, &v30);
    if (v35[0])
    {
      v32 = 3;
      v33 = "Trying to schedule a dynamic pipeline on an operation that isn't nested under the current operation the pass is processing";
      v34 = 122;
      v13 = &v32;
      v14 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v37 > &v32)
        {
          v29 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v14 = v36;
          v13 = (v36 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v13 = &v32;
          v14 = v36;
        }
      }

      v15 = &v14[24 * v37];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v37;
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v43;
        v19 = __p;
        if (v43 != __p)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v43 = v17;
        operator delete(v19);
      }

      v20 = v40;
      if (v40)
      {
        v21 = v41;
        v22 = v40;
        if (v41 != v40)
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
          v22 = v40;
        }

        v41 = v20;
        operator delete(v22);
      }

      if (v36 != v39)
      {
        free(v36);
      }
    }

    return v12;
  }

  v7 = *a2;
  Context = mlir::Attribute::getContext((a3 + 24));
  if (!mlir::detail::OpPassManagerImpl::finalizePassList(v7, Context))
  {
    return 0;
  }

  v9 = mlir::Attribute::getContext((a3 + 24));
  if ((mlir::OpPassManager::initialize(a2, v9, **(a1 + 8)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (**a1 == a3)
  {
    v11 = *v10;
  }

  else
  {
    v11 = mlir::AnalysisManager::nest(v10, a3);
  }

  v24 = **(a1 + 24);
  v25 = **(a1 + 8);
  v26 = **(a1 + 32);
  v27 = *(a1 + 40);

  return mlir::detail::OpToOpPassAdaptor::runPipeline(a2, a3, v11, v24, v25, v26, v27);
}

uint64_t sub_100166384(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = &unk_1002E0E50;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[0] = off_1002D80C8;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v7);
}

void sub_1001663D8(unsigned __int8 **a1)
{
  v2 = **a1;
  v3 = *(v2 + 1);
  if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
  {
    if (v3 != qword_1002E0E00)
    {
LABEL_3:
      (*(***a1 + 56))(**a1);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1002A2BBC();
    if (v3 != qword_1002E0E00)
    {
      goto LABEL_3;
    }
  }

  v4 = *a1[1];
  Context = mlir::Attribute::getContext(((*(v2 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (mlir::MLIRContext::isMultithreadingEnabled(Context))
  {
    mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v2, v4);
  }

  else
  {
    mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v2, v4);
  }

LABEL_8:
  *a1[2] = (*(**a1 + 40) & 4) != 0;
}

void sub_1001664C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (v3 || *(v2 + 44))
  {
    v4 = *(v2 + 48);
    if (v4 > 4 * v3 && v4 >= 0x41)
    {
      sub_100138FD8(v2 + 32);
      goto LABEL_6;
    }

    if (v4)
    {
      v6 = *(v2 + 32);
      v7 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v7)
      {
        v8 = v7 + 1;
        v9 = (v7 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v10 = (v6 + 16 * v9);
        v11 = (v6 + 16);
        v12 = v9;
        do
        {
          *(v11 - 2) = -4096;
          *v11 = -4096;
          v11 += 4;
          v12 -= 2;
        }

        while (v12);
        if (v8 == v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v10 = *(v2 + 32);
      }

      v13 = (v6 + 16 * v4);
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v13);
    }

LABEL_17:
    *(v2 + 40) = 0;
    v5 = *(v2 + 64);
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_6:
  v5 = *(v2 + 64);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_18:
  v14 = *(v2 + 56) - 8;
  v15 = 16 * v5;
  do
  {
    v16 = *(v14 + v15);
    *(v14 + v15) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v15 -= 16;
  }

  while (v15);
LABEL_22:
  *(v2 + 64) = 0;
  v17 = *a1;
  v18 = v17[2];
  if (!v18 && !v17[3])
  {
    return;
  }

  v19 = v17[4];
  if (v19 <= 4 * v18 || v19 < 0x41)
  {
    if (!v19)
    {
LABEL_36:
      *(v17 + 1) = 0;
      return;
    }

    v20 = (*v17 + 8);
    v21 = 16 * v19;
    while (1)
    {
      v22 = *(v20 - 1);
      if (v22 != -8192)
      {
        if (v22 == -4096)
        {
          goto LABEL_32;
        }

        sub_100167378(v20, 0);
      }

      *(v20 - 1) = -4096;
LABEL_32:
      v20 += 2;
      v21 -= 16;
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  sub_100165D2C(v17);
}

uint64_t sub_100166680(uint64_t a1, uint64_t *a2)
{
  v17 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v17);
  v6 = *(a1 + 8);
  v5[v6] = 0;
  v7 = *a2;
  *a2 = 0;
  v8 = v5[v6];
  v5[v6] = v7;
  if (v8)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = *(v8 + 48);
      v11 = *(v8 + 40);
      if (v10 != v9)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            (*(*v12 + 8))(v12);
          }
        }

        while (v10 != v9);
        v11 = *(v8 + 40);
      }

      *(v8 + 48) = v9;
      operator delete(v11);
    }

    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  sub_1001667BC(a1, v5);
  v14 = v17;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v15 = *(a1 + 8) + 1;
  *(a1 + 8) = v15;
  *(a1 + 12) = v14;
  return &v5[v15 - 1];
}

uint64_t sub_1001667BC(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = *result;
    v5 = *result + 8 * v2;
    do
    {
      *a2 = 0;
      v6 = *v4;
      *v4 = 0;
      v7 = *a2;
      *a2 = v6;
      if (v7)
      {
        v8 = *(v7 + 40);
        if (v8)
        {
          v9 = *(v7 + 48);
          v10 = *(v7 + 40);
          if (v9 != v8)
          {
            do
            {
              v12 = *--v9;
              v11 = v12;
              *v9 = 0;
              if (v12)
              {
                (*(*v11 + 8))(v11);
              }
            }

            while (v9 != v8);
            v10 = *(v7 + 40);
          }

          *(v7 + 48) = v8;
          operator delete(v10);
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        operator delete();
      }

      ++a2;
      ++v4;
    }

    while (v4 != v5);
    v13 = *(result + 8);
    if (v13)
    {
      v14 = *result;
      v15 = (*result + 8 * v13);
      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          v18 = *(v16 + 40);
          if (v18)
          {
            v19 = *(v16 + 48);
            v20 = *(v16 + 40);
            if (v19 != v18)
            {
              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  (*(*v21 + 8))(v21);
                }
              }

              while (v19 != v18);
              v20 = *(v16 + 40);
            }

            *(v16 + 48) = v18;
            operator delete(v20);
          }

          if (*(v16 + 23) < 0)
          {
            operator delete(*v16);
          }

          operator delete();
        }
      }

      while (v15 != v14);
    }
  }

  return result;
}

void sub_100166978(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v16);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    v10 = a2;
    do
    {
      *v9 = v9 + 2;
      v9[1] = &_mh_execute_header;
      if (*(a3 + 8))
      {
        sub_100166A7C(v9, a3);
      }

      v9 += 3;
      --v10;
    }

    while (v10);
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = -24 * v12;
    v14 = &v11[24 * v12 - 24];
    do
    {
      v14 = sub_100165C1C(v14) - 3;
      v13 += 24;
    }

    while (v13);
    v11 = *a1;
  }

  v15 = v16;
  if (v11 != v6)
  {
    free(v11);
  }

  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = v15;
}

uint64_t sub_100166A7C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 >= v3)
    {
      if (v3)
      {
        mlir::OpPassManager::operator=(*a1, *a2);
      }

      v8 = *a1;
      v9 = (*a1 + 8 * v4);
      if (v9 != *a1)
      {
        do
        {
          v11 = *--v9;
          v10 = v11;
          *v9 = 0;
          if (v11)
          {
            v12 = *(v10 + 40);
            if (v12)
            {
              v13 = *(v10 + 48);
              v14 = *(v10 + 40);
              if (v13 != v12)
              {
                do
                {
                  v16 = *--v13;
                  v15 = v16;
                  *v13 = 0;
                  if (v16)
                  {
                    (*(*v15 + 8))(v15);
                  }
                }

                while (v13 != v12);
                v14 = *(v10 + 40);
              }

              *(v10 + 48) = v12;
              operator delete(v14);
            }

            if (*(v10 + 23) < 0)
            {
              operator delete(*v10);
            }

            operator delete();
          }
        }

        while (v9 != v8);
      }

      goto LABEL_29;
    }

    if (*(a1 + 12) >= v3)
    {
      v6 = *a1;
      if (v4)
      {
        mlir::OpPassManager::operator=(v6, *a2);
      }

      if (!*(a2 + 8))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v5 = a2;
      sub_100163130(a1);
      v20 = 0;
      v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v3, 8, &v20);
      sub_1001667BC(a1, v6);
      v7 = v20;
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 12) = v7;
      a2 = v5;
      if (!*(v5 + 8))
      {
LABEL_29:
        *(a1 + 8) = v3;
        return a1;
      }
    }

    v17 = v6;
    v18 = *a2;
    *v17 = 0;
    mlir::OpPassManager::operator=(v17, v18);
  }

  return a1;
}

void sub_100166CEC(uint64_t a1@<X1>, std::future<void> *a2@<X8>)
{
  sub_100157780(2, a1, &v4);
  state = v4.__state_;
  a2->__state_ = v4.__state_;
  v4.__state_ = 0;
  std::future<void>::~future(&v4);
  if (state)
  {
    atomic_fetch_add_explicit(&state->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

__n128 sub_100166EEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D8250;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_100166F2C(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      v5 = **(a1 + 48);
      v6 = **(a1 + 40);
      v7 = v6[1];
      v8 = **v6;
      v9 = (*v6)[1];
      if (v8 == v9)
      {
        v11 = **v6;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v6;
      }

      v12 = 8 * (add + 2 * add);
      v13 = (v11 - v8);
      v14 = (*&v7[45][24 * v13] + 8 * *(v5 + v12));
      if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v14, *(v12 + v5 + 8), *(v12 + v5 + 16), *v6[2], *(*v14 + 64), *v6[3], v6[4]) & 1) == 0)
      {
        atomic_store(1u, v6[5]);
      }

      atomic_store(0, &(**v6)[v13]);
      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t **sub_100167060(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = *(v3 + 72);
      if (v4)
      {
        v5 = *(v3 + 80);
        v6 = *(v3 + 72);
        if (v5 != v4)
        {
          do
          {
            v8 = *--v5;
            v7 = v8;
            *v5 = 0;
            if (v8)
            {
              (*(*v7 + 8))(v7);
            }
          }

          while (v5 != v4);
          v6 = *(v3 + 72);
        }

        *(v3 + 80) = v4;
        operator delete(v6);
      }

      std::recursive_mutex::~recursive_mutex(v3);
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_100167150(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
          sub_100167378(v16 + 1, 0);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
      v19 = buffer + 2;
      v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 2) = -4096;
        *v19 = -4096;
        v19 += 4;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[2 * v17];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

uint64_t *sub_100167378(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    if (v4)
    {
      v5 = v3 - 8;
      v6 = 16 * v4;
      do
      {
        v7 = *&v5[v6];
        *&v5[v6] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v6 -= 16;
      }

      while (v6);
      v3 = *(v2 + 56);
    }

    if (v3 != (v2 + 72))
    {
      free(v3);
    }

    llvm::deallocate_buffer(*(v2 + 32), (16 * *(v2 + 48)), 8uLL);
    v8 = *(v2 + 16);
    v9 = *v2;
    if (v8)
    {
      v10 = v9 + 8;
      v11 = 16 * v8;
      do
      {
        if ((*(v10 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          sub_100167378(v10, 0);
        }

        v10 += 16;
        v11 -= 16;
      }

      while (v11);
      v9 = *v2;
      v12 = (16 * *(v2 + 16));
    }

    else
    {
      v12 = 0;
    }

    llvm::deallocate_buffer(v9, v12, 8uLL);

    operator delete();
  }

  return result;
}

uint64_t sub_1001674B8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        v5 = a2;
        if (v4)
        {
          v6 = -24 * v4;
          v7 = (*a1 + 24 * v4 - 24);
          do
          {
            v7 = sub_100165C1C(v7) - 3;
            v6 += 24;
          }

          while (v6);
        }

        *(a1 + 8) = 0;
        sub_1001676A4(a1, v3);
        v4 = 0;
        a2 = v5;
        v8 = *(v5 + 8);
        if (!*(v5 + 8))
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v4)
      {
        v13 = a2;
        v14 = *a2;
        v15 = *a1;
        v16 = 24 * v4;
        do
        {
          sub_100166A7C(v15, v14);
          v14 += 24;
          v15 += 24;
          v16 -= 24;
        }

        while (v16);
        a2 = v13;
        v8 = *(v13 + 8);
        if (v4 != v8)
        {
LABEL_24:
          v18 = *a2;
          v19 = *a1;
          v20 = 24 * v4;
          v21 = 24 * v8;
          do
          {
            v22 = (v19 + v20);
            *v22 = v19 + v20 + 16;
            v22[1] = &_mh_execute_header;
            if (*(v18 + v20 + 8))
            {
              sub_100166A7C(v22, v18 + v20);
            }

            v19 += 24;
            v21 -= 24;
            v18 += 24;
          }

          while (v20 != v21);
        }
      }

      else
      {
        v4 = 0;
        v8 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      *(a1 + 8) = v3;
      return a1;
    }

    if (v3)
    {
      v9 = *a2;
      v10 = *a1;
      v11 = 24 * v3;
      do
      {
        sub_100166A7C(v10, v9);
        v9 += 24;
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
      v12 = (*a1 + 24 * *(a1 + 8));
      if (v12 == v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = *a1;
      v12 = (*a1 + 24 * v4);
      if (v12 == *a1)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v12 = sub_100165C1C(v12 - 3);
    }

    while (v12 != v10);
    goto LABEL_21;
  }

  return a1;
}

void sub_1001676A4(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 24 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = &_mh_execute_header;
      if (v6[2])
      {
        sub_1001677AC(v9, v6);
      }

      v9 += 3;
      v6 += 6;
      v8 -= 24;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = -24 * v10;
      v12 = &v6[6 * v10 - 6];
      do
      {
        v12 = sub_100165C1C(v12) - 3;
        v11 += 24;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

uint64_t sub_1001677AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      sub_100167AA8(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 < v5)
    {
      if (*(a1 + 12) < v5)
      {
        sub_100163130(a1);
        v33 = 0;
        v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v5, 8, &v33);
        sub_1001667BC(a1, v7);
        v8 = v33;
        if (*a1 != a1 + 16)
        {
          free(*a1);
        }

        v6 = 0;
        *a1 = v7;
        *(a1 + 12) = v8;
        v9 = *(a2 + 8);
        if (!*(a2 + 8))
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v7 = *a1;
      if (v6)
      {
        sub_100167BD0(v4, &v4[8 * v6], *a1);
        v7 = *a1;
        v9 = *(a2 + 8);
        if (v6 != v9)
        {
LABEL_34:
          v22 = *a2 + 8 * v9;
          v23 = 8 * v6;
          v24 = &v7[8 * v6];
          v25 = (*a2 + v23);
          do
          {
            *v24 = 0;
            v26 = *v25;
            *v25 = 0;
            v27 = *v24;
            *v24 = v26;
            if (v27)
            {
              v28 = *(v27 + 40);
              if (v28)
              {
                v29 = *(v27 + 48);
                v30 = *(v27 + 40);
                if (v29 != v28)
                {
                  do
                  {
                    v32 = *--v29;
                    v31 = v32;
                    *v29 = 0;
                    if (v32)
                    {
                      (*(*v31 + 8))(v31);
                    }
                  }

                  while (v29 != v28);
                  v30 = *(v27 + 40);
                }

                *(v27 + 48) = v28;
                operator delete(v30);
              }

              if (*(v27 + 23) < 0)
              {
                operator delete(*v27);
              }

              operator delete();
            }

            v24 += 8;
            ++v25;
          }

          while (v25 != v22);
        }
      }

      else
      {
        v6 = 0;
        v9 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_34;
        }
      }

LABEL_32:
      *(a1 + 8) = v5;
      sub_100163130(a2);
      return a1;
    }

    v10 = *a1;
    if (v5)
    {
      sub_100167BD0(v4, &v4[8 * v5], v10);
      v12 = v11;
      v13 = (*a1 + 8 * *(a1 + 8));
      if (v13 == v11)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = *a1;
      v13 = &v10[8 * v6];
      if (v13 == v10)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v15 = *(v13 - 1);
      v13 -= 8;
      v14 = v15;
      *v13 = 0;
      if (v15)
      {
        v16 = *(v14 + 40);
        if (v16)
        {
          v17 = *(v14 + 48);
          v18 = *(v14 + 40);
          if (v17 != v16)
          {
            do
            {
              v20 = *--v17;
              v19 = v20;
              *v17 = 0;
              if (v20)
              {
                (*(*v19 + 8))(v19);
              }
            }

            while (v17 != v16);
            v18 = *(v14 + 40);
          }

          *(v14 + 48) = v16;
          operator delete(v18);
        }

        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        operator delete();
      }
    }

    while (v13 != v12);
    goto LABEL_32;
  }

  return a1;
}

double sub_100167AA8(char **a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[8 * v5];
    do
    {
      v8 = *(v6 - 1);
      v6 -= 8;
      v7 = v8;
      *v6 = 0;
      if (v8)
      {
        v9 = *(v7 + 40);
        if (v9)
        {
          v10 = *(v7 + 48);
          v11 = *(v7 + 40);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v7 + 40);
          }

          *(v7 + 48) = v9;
          operator delete(v11);
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        operator delete();
      }
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

uint64_t *sub_100167BD0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v5 = *v4;
      *v4 = 0;
      v6 = *a3;
      *a3 = v5;
      if (v6)
      {
        v7 = *(v6 + 40);
        if (v7)
        {
          v8 = *(v6 + 48);
          v9 = *(v6 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v6 + 40);
          }

          *(v6 + 48) = v7;
          operator delete(v9);
        }

        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        operator delete();
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void mlir::detail::RecoveryReproducerContext::enable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerMutex, sub_10003DAA4, sub_10003DAE8);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex[0];
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex[0]);
  if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
      goto LABEL_5;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, sub_100169F30, sub_100169F78);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
LABEL_5:
      if (atomic_load_explicit(&qword_1002E5488, memory_order_acquire))
      {
        goto LABEL_6;
      }

LABEL_11:
      sub_1002A2E50();
      if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  llvm::CrashRecoveryContext::Enable(v3);
  if ((atomic_load_explicit(&qword_1002E5488, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
LABEL_7:
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, sub_100169F30, sub_100169F78);
  }

LABEL_8:
  v4 = this;
  sub_100168510(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
  std::recursive_mutex::unlock(v2);
}

void mlir::detail::RecoveryReproducerContext::disable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerMutex, sub_10003DAA4, sub_10003DAE8);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex[0];
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex[0]);
  if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    v4 = this;
    v3 = sub_1001683A8(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
    if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, sub_100169F30, sub_100169F78);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
      goto LABEL_6;
    }

LABEL_9:
    llvm::CrashRecoveryContext::Disable(v3);
    goto LABEL_6;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, sub_100169F30, sub_100169F78);
  v4 = this;
  v3 = sub_1001683A8(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
  {
    goto LABEL_9;
  }

LABEL_6:
  std::recursive_mutex::unlock(v2);
}

void sub_100167F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v45 = a5;
  v44 = a6;
  v37 = 0;
  v41 = 0;
  v42 = 1;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v36 = &off_1002D49D0;
  v43 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v36, 0, 0, 0);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v9 = *(a3 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&v32);
    v10 = v32;
    v11 = v39 - v40;
    if (v32)
    {
      if (v11 > 0x18)
      {
        v40 += 25;
        v12 = &v36;
      }

      else
      {
        v10 = v32;
      }

      v15 = (*(*v10 + 16))(v10);
      v16 = v14;
      v17 = v12[4];
      if (v14 <= v12[3] - v17)
      {
        if (v14)
        {
          memcpy(v17, v15, v14);
          v17 = v12[4] + v16;
          v12[4] = v17;
        }
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, v15, v14);
        v17 = v12[4];
      }

      if (v12[3] == v17)
      {
      }

      else
      {
        *v17 = 96;
        v12[4] = (v12[4] + 1);
      }

      v25[0] = *(*(a2 + 48) + 8);
      Value = mlir::StringAttr::getValue(v25);
      v28 = 773;
      v27[0] = Value;
      v27[1] = v19;
      v27[2] = "(";
      v29[0] = v27;
      v29[2] = a4;
      v30 = 1026;
      v25[0] = v29;
      v25[2] = ")";
      v26 = 770;
      llvm::Twine::str(v25, &__p);
      mlir::OpPrintingFlags::OpPrintingFlags(v25);
      mlir::AsmState::AsmState(v29, a2, v25, 0, 0);
      operator new();
    }

    if (v11 > 0x1F)
    {
      qmemcpy(v40, "failed to create output stream: ", 32);
      v40 += 32;
      v13 = &v36;
    }

    else
    {
      v13 = llvm::raw_ostream::write(&v36, "failed to create output stream: ", 0x20uLL);
    }

    if (v35 >= 0)
    {
      v20 = &v33;
    }

    else
    {
      v20 = v33;
    }

    if (v35 >= 0)
    {
      v21 = HIBYTE(v35);
    }

    else
    {
      v21 = v34;
    }

    llvm::raw_ostream::write(v13, v20, v21);
    v22 = v32;
    v32 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v33);
    }

    llvm::raw_ostream::~raw_ostream(&v36);
  }

  else
  {
    v23 = sub_10000520C();
    sub_1001683A8(v23, v24);
  }
}