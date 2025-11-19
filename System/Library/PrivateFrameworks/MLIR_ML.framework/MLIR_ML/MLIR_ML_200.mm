void llvm::DominatorTreeBase<mlir::Block,false>::addNewBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = *(a1 + 88);
    v5 = (v3 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a3)
    {
LABEL_3:
      if (v5 != v3 && *(a1 + 32) > *(v4 + 16 * v5 + 8))
      {
        *(a1 + 128) = 0;
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 1;
      while (v6 != -4096)
      {
        v8 = v5 + v7++;
        v5 = v8 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  *(a1 + 128) = 0;
LABEL_6:
  llvm::DominatorTreeBase<mlir::Block,false>::createNode();
}

void llvm::DominatorTreeBase<mlir::Block,false>::createNode()
{
  operator new();
}

{
    ;
  }
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::addRoot(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::addChild(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2 >= *(result + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 24) + 8 * v2) = a2;
  ++*(result + 32);
  return result;
}

void llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel(uint64_t a1)
{
  v8[64] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != *(*(a1 + 8) + 16) + 1)
  {
    v7 = 64;
    v8[0] = a1;
    v1 = 1;
    do
    {
      v2 = v8[--v1];
      v6 = v1;
      *(v2 + 16) = *(*(v2 + 8) + 16) + 1;
      v3 = *(v2 + 32);
      if (v3)
      {
        v4 = *(v2 + 24);
        v5 = 8 * v3;
        do
        {
          if (*(*v4 + 16) != *(*(*v4 + 8) + 16) + 1)
          {
            if (v1 >= v7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v8[v1] = *v4;
            v1 = ++v6;
          }

          v4 += 8;
          v5 -= 8;
        }

        while (v5);
      }
    }

    while (v1);
  }
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::changeImmediateDominator(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 128) = 0;
  v3 = *(a2 + 8);
  if (v3 != a3)
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = &v6[v7];
    if (v7)
    {
      v9 = 8 * v7;
      do
      {
        if (*v6 == a2)
        {
          goto LABEL_7;
        }

        ++v6;
        v9 -= 8;
      }

      while (v9);
      v6 = v8;
    }

LABEL_7:
    if (v8 != v6 + 1)
    {
      memmove(v6, v6 + 1, v8 - (v6 + 1));
      LODWORD(v7) = *(v3 + 32);
    }

    *(v3 + 32) = v7 - 1;
    *(a2 + 8) = a3;
    v10 = *(a3 + 32);
    if (v10 < *(a3 + 36))
    {
      *(*(a3 + 24) + 8 * v10) = a2;
      ++*(a3 + 32);

      llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return result;
}

{
  v3 = *(result + 104);
  if (!v3)
  {
    v9 = 0;
    v10 = 0;
    *(result + 128) = 0;
    v11 = MEMORY[8];
    if (!MEMORY[8])
    {
      return result;
    }

    goto LABEL_23;
  }

  v4 = *(result + 88);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_3:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(result + 32) > v8)
      {
        v9 = *(*(result + 24) + 8 * v8);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 1;
    while (v7 != -4096)
    {
      v13 = v6 + v12++;
      v6 = v13 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = 0;
LABEL_13:
  v14 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v15 = *(v4 + 16 * v14);
  if (v15 != a3)
  {
    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & v5;
      v15 = *(v4 + 16 * v14);
      if (v15 == a3)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    v10 = 0;
    *(result + 128) = 0;
    v11 = *(v9 + 8);
    if (!v11)
    {
      return result;
    }

LABEL_23:
    v19 = *(v11 + 24);
    v20 = *(v11 + 32);
    v21 = &v19[v20];
    if (v20)
    {
      v22 = 8 * v20;
      do
      {
        if (*v19 == v9)
        {
          goto LABEL_28;
        }

        ++v19;
        v22 -= 8;
      }

      while (v22);
      v19 = v21;
    }

LABEL_28:
    if (v21 != v19 + 1)
    {
      memmove(v19, v19 + 1, v21 - (v19 + 1));
      LODWORD(v20) = *(v11 + 32);
    }

    *(v11 + 32) = v20 - 1;
    *(v9 + 8) = v10;
    v23 = *(v10 + 32);
    if (v23 < *(v10 + 36))
    {
      *(*(v10 + 24) + 8 * v23) = v9;
      ++*(v10 + 32);

      llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_14:
  if (v14 == v3)
  {
    goto LABEL_22;
  }

  v16 = *(v4 + 16 * v14 + 8);
  if (*(result + 32) <= v16)
  {
    goto LABEL_22;
  }

  v10 = *(*(result + 24) + 8 * v16);
  *(result + 128) = 0;
  v11 = *(v9 + 8);
  if (v11 != v10)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::setIDom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = &v4[v5];
    if (v5)
    {
      v7 = 8 * v5;
      do
      {
        if (*v4 == result)
        {
          goto LABEL_7;
        }

        ++v4;
        v7 -= 8;
      }

      while (v7);
      v4 = v6;
    }

LABEL_7:
    if (v6 != v4 + 1)
    {
      v8 = result;
      memmove(v4, v4 + 1, v6 - (v4 + 1));
      result = v8;
      LODWORD(v5) = *(v2 + 32);
    }

    *(v2 + 32) = v5 - 1;
    *(result + 8) = a2;
    v9 = *(a2 + 32);
    if (v9 < *(a2 + 36))
    {
      *(*(a2 + 24) + 8 * v9) = result;
      ++*(a2 + 32);

      llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return result;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::eraseNode(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 88);
  v5 = *(result + 104);
  v6 = a2 >> 4;
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = (v5 - 1) & (v6 ^ (a2 >> 9));
  v8 = *(*&v4 + 16 * v7);
  if (v8 != a2)
  {
    v22 = 1;
    while (v8 != -4096)
    {
      v23 = v7 + v22++;
      v7 = v23 & (v5 - 1);
      v8 = *(*&v4 + 16 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    v9 = 0;
    v10 = *(result + 24);
    v11 = *v10;
    *(result + 128) = 0;
    v12 = v11[1];
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_19:
    v10[v9] = 0;
    v18 = v11[3];
    if (v18 == v11 + 5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_4;
  }

  v9 = *(*&v4 + 16 * v7 + 8);
  v10 = *(result + 24);
  v11 = v10[v9];
  *(result + 128) = 0;
  v12 = v11[1];
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_5:
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  v15 = &v13[v14];
  if (v14)
  {
    v16 = 8 * v14;
    while (*v13 != v11)
    {
      ++v13;
      v16 -= 8;
      if (!v16)
      {
        v13 = v15;
        break;
      }
    }
  }

  v17 = *v13;
  *v13 = *(v15 - 1);
  *(v15 - 1) = v17;
  *(v12 + 32) = v14 - 1;
  v11 = v10[v9];
  v10[v9] = 0;
  if (v11)
  {
    v18 = v11[3];
    if (v18 == v11 + 5)
    {
LABEL_13:
      result = MEMORY[0x259C63180](v11, 0x10A0C40528A66C4);
      v4 = v3[11];
      LODWORD(v5) = v3[13].i32[0];
      goto LABEL_14;
    }

LABEL_12:
    free(v18);
    goto LABEL_13;
  }

LABEL_14:
  if (v5)
  {
    v19 = v5 - 1;
    v20 = (v5 - 1) & (v6 ^ (a2 >> 9));
    v21 = *(*&v4 + 16 * v20);
    if (v21 == a2)
    {
LABEL_16:
      *(*&v4 + 16 * v20) = -8192;
      v3[12] = vadd_s32(v3[12], 0x1FFFFFFFFLL);
    }

    else
    {
      v24 = 1;
      while (v21 != -4096)
      {
        v25 = v20 + v24++;
        v20 = v25 & v19;
        v21 = *(*&v4 + 16 * v20);
        if (v21 == a2)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return result;
}

void llvm::DominatorTreeBase<mlir::Block,false>::Split<mlir::Block*>(uint64_t a1, mlir::Block *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  mlir::SuccessorRange::SuccessorRange(&v34, a2);
  v4 = *(v34 + 3);
  v5 = *a2;
  v34 = v36;
  v35 = 0x400000000;
  if (!v5)
  {
    v8 = 0;
    LODWORD(v35) = 0;
    v9 = *v4;
    if (!*v4)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_14:
      if (mlir::PredecessorIterator::unwrap(v9) != a2)
      {
        llvm::DominatorTreeBase<mlir::Block,false>::dominates();
      }

      v9 = *v9;
    }

    while (v9);
    v8 = v35;
    if (!v35)
    {
      goto LABEL_54;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v7 = v5;
  do
  {
    ++v6;
    v7 = *v7;
  }

  while (v7);
  if ((v6 - 1) >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = v36;
  do
  {
    *v10++ = mlir::PredecessorIterator::unwrap(v5);
    v5 = *v5;
  }

  while (v5);
  v8 = v35 + v6;
  LODWORD(v35) = v35 + v6;
  v9 = *v4;
  if (*v4)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (!v8)
  {
    goto LABEL_54;
  }

LABEL_17:
  v11 = *(a1 + 104);
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = 0;
  v13 = *(a1 + 88);
  v14 = v11 - 1;
  while (1)
  {
    v15 = *(v34 + v12);
    v16 = ((v15 >> 4) ^ (v15 >> 9)) & v14;
    v17 = *(v13 + 16 * v16);
    if (v17 != v15)
    {
      v19 = 1;
      while (v17 != -4096)
      {
        v20 = v16 + v19++;
        v16 = v20 & v14;
        v17 = *(v13 + 16 * v16);
        if (v17 == v15)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_19;
    }

LABEL_21:
    if (v16 != v11)
    {
      v18 = *(v13 + 16 * v16 + 8);
      if (*(a1 + 32) > v18)
      {
        if (*(*(a1 + 24) + 8 * v18))
        {
          break;
        }
      }
    }

LABEL_19:
    if (++v12 == v8)
    {
      goto LABEL_54;
    }
  }

  if (v15)
  {
    v21 = v12 + 1;
    if (v8 > v12 + 1)
    {
      do
      {
        v22 = *(a1 + 104);
        if (v22)
        {
          v23 = *(v34 + v21);
          v24 = *(a1 + 88);
          v25 = ((v23 >> 4) ^ (v23 >> 9)) & (v22 - 1);
          v26 = *(v24 + 16 * v25);
          if (v26 == v23)
          {
LABEL_35:
            if (v25 != v22)
            {
              v27 = *(v24 + 16 * v25 + 8);
              if (*(a1 + 32) > v27)
              {
                if (*(*(a1 + 24) + 8 * v27))
                {
                  llvm::DominatorTreeBase<mlir::Block,false>::findNearestCommonDominator();
                }
              }
            }
          }

          else
          {
            v28 = 1;
            while (v26 != -4096)
            {
              v29 = v25 + v28++;
              v25 = v29 & (v22 - 1);
              v26 = *(v24 + 16 * v25);
              if (v26 == v23)
              {
                goto LABEL_35;
              }
            }
          }
        }

        ++v21;
      }

      while (v8 > v21);
      v13 = *(a1 + 88);
      LODWORD(v11) = *(a1 + 104);
    }

    if (v11)
    {
      v30 = (v11 - 1) & ((v15 >> 4) ^ (v15 >> 9));
      v31 = *(v13 + 16 * v30);
      if (v31 == v15)
      {
LABEL_46:
        if (v30 != v11 && *(a1 + 32) > *(v13 + 16 * v30 + 8))
        {
          *(a1 + 128) = 0;
          llvm::DominatorTreeBase<mlir::Block,false>::createNode();
        }
      }

      else
      {
        v32 = 1;
        while (v31 != -4096)
        {
          v33 = v30 + v32++;
          v30 = v33 & (v11 - 1);
          v31 = *(v13 + 16 * v30);
          if (v31 == v15)
          {
            goto LABEL_46;
          }
        }
      }
    }

    *(a1 + 128) = 0;
    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

LABEL_54:
  if (v34 != v36)
  {
    free(v34);
  }
}

void llvm::DominatorTreeBase<mlir::Block,false>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) - v4 <= 0x3DuLL)
  {
    llvm::raw_ostream::write(this, "=============================--------------------------------\n", 0x3EuLL);
    v5 = *(this + 4);
    if (*(this + 3) - v5 > 0x17uLL)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::raw_ostream::write(this, "Inorder Dominator Tree: ", 0x18uLL);
    if (*(a1 + 128))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  qmemcpy(v4, "=============================--------------------------------\n", 62);
  v6 = *(this + 3);
  v5 = (*(this + 4) + 62);
  *(this + 4) = v5;
  if ((v6 - v5) <= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  qmemcpy(v5, "Inorder Dominator Tree: ", 24);
  *(this + 4) += 24;
  if (*(a1 + 128))
  {
LABEL_10:
    v11 = *(this + 4);
    if (*(this + 3) != v11)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_7:
  v7 = *(this + 4);
  if ((*(this + 3) - v7) > 0x13)
  {
    *(v7 + 16) = 540697705;
    *v7 = *"DFSNumbers invalid: ";
    *(this + 4) += 20;
    v9 = llvm::raw_ostream::operator<<(this, *(a1 + 132));
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 0xDuLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(this, "DFSNumbers invalid: ", 0x14uLL);
    v9 = llvm::raw_ostream::operator<<(v8, *(a1 + 132));
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 0xDuLL)
    {
LABEL_9:
      qmemcpy(v10, " slow queries.", 14);
      *(v9 + 4) += 14;
      goto LABEL_10;
    }
  }

  llvm::raw_ostream::write(v9, " slow queries.", 0xEuLL);
  v11 = *(this + 4);
  if (*(this + 3) != v11)
  {
LABEL_11:
    *v11 = 10;
    ++*(this + 4);
    v12 = *(a1 + 112);
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_28:
  llvm::raw_ostream::write(this, "\n", 1uLL);
  v12 = *(a1 + 112);
  if (v12)
  {
LABEL_12:
    llvm::PrintDomTree<mlir::Block>(v12, this, 1u);
  }

LABEL_13:
  v13 = *(this + 4);
  if (*(this + 3) - v13 > 6uLL)
  {
    *(v13 + 3) = 540701556;
    *v13 = 1953460050;
    *(this + 4) += 7;
    v14 = *(a1 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, "Roots: ", 7uLL);
    v14 = *(a1 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v15 = *a1;
  v16 = 8 * v14;
  do
  {
    while (1)
    {
      mlir::Block::printAsOperand(*v15, this);
      v17 = *(this + 4);
      if (*(this + 3) == v17)
      {
        break;
      }

      *v17 = 32;
      ++*(this + 4);
      ++v15;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    llvm::raw_ostream::write(this, " ", 1uLL);
    ++v15;
    v16 -= 8;
  }

  while (v16);
LABEL_21:
  v18 = *(this + 4);
  if (*(this + 3) == v18)
  {

    llvm::raw_ostream::write(this, "\n", 1uLL);
  }

  else
  {
    *v18 = 10;
    ++*(this + 4);
  }
}

llvm::raw_ostream *llvm::PrintDomTree<mlir::Block>(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = llvm::raw_ostream::indent(a2, 2 * a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    v13 = llvm::raw_ostream::write(v6, "[", 1uLL);
    v8 = llvm::raw_ostream::operator<<(v13, a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 <= 1uLL)
    {
LABEL_3:
      v10 = llvm::raw_ostream::write(v8, "] ", 2uLL);
      result = llvm::operator<<<mlir::Block>(v10, a1);
      v12 = *(a1 + 32);
      if (!v12)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
    v8 = llvm::raw_ostream::operator<<(v6, a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 <= 1uLL)
    {
      goto LABEL_3;
    }
  }

  *v9 = 8285;
  *(v8 + 4) += 2;
  result = llvm::operator<<<mlir::Block>(v8, a1);
  v12 = *(a1 + 32);
  if (!v12)
  {
    return result;
  }

LABEL_7:
  v14 = *(a1 + 24);
  v15 = 8 * v12;
  do
  {
    v16 = *v14++;
    result = llvm::PrintDomTree<mlir::Block>(v16, a2, a3 + 1);
    v15 -= 8;
  }

  while (v15);
  return result;
}

void llvm::DominatorTreeBase<mlir::Block,false>::recalculate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  *(a1 + 120) = a2;
  llvm::GraphDiff<mlir::Block *,false>::GraphDiff(v4, a3, a4, 1u);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::CalculateFromScratch();
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::reset(uint64_t result)
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
  if (v7 || *(v1 + 100))
  {
    v8 = *(v1 + 104);
    if (v8 > 4 * v7 && v8 >= 0x41)
    {
      result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(v1 + 88);
      goto LABEL_23;
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
          goto LABEL_22;
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

LABEL_22:
    *(v1 + 96) = 0;
  }

LABEL_23:
  *(v1 + 8) = 0;
  *(v1 + 132) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  return result;
}

void llvm::DominatorTreeBase<mlir::Block,true>::DominatorTreeBase(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(a1, a2);
  }

  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 0x600000000;
  if (*(a2 + 56))
  {
    llvm::SmallVectorImpl<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>>::operator=(a1 + 48, a2 + 48);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  v4 = *(a1 + 124);
  *(a1 + 124) = *(a2 + 124);
  *(a2 + 124) = v4;
  v5 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v5;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  llvm::DominatorTreeBase<mlir::Block,true>::wipe();
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::wipe(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = *(result + 48) - 8;
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

  *(v1 + 56) = 0;
  v7 = *(v1 + 120);
  if (!v7 && !*(v1 + 124))
  {
    goto LABEL_13;
  }

  v8 = *(v1 + 128);
  if (v8 > 4 * v7 && v8 >= 0x41)
  {
    result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(v1 + 112);
LABEL_13:
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    return result;
  }

  if (v8)
  {
    v9 = *(v1 + 112);
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
      v13 = *(v1 + 112);
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
  *(v1 + 120) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  return result;
}

void llvm::DominatorTreeBase<mlir::Block,true>::operator=(uint64_t a1, const void **a2)
{
  llvm::SmallVectorImpl<unsigned long>::operator=(a1, a2);
  llvm::SmallVectorImpl<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>>::operator=(a1 + 48, (a2 + 6));
  llvm::deallocate_buffer(*(a1 + 112), (16 * *(a1 + 128)));
}

void sub_2570EBCD0()
{
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = *(v0 + 112);
  *(v0 + 112) = 0;
  *(v1 + 120) = *(v0 + 120);
  *(v0 + 120) = 0;
  v2 = *(v1 + 124);
  *(v1 + 124) = *(v0 + 124);
  *(v0 + 124) = v2;
  v3 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 128);
  *(v0 + 128) = v3;
  *(v1 + 136) = *(v0 + 136);
  *(v1 + 152) = *(v0 + 152);
  *(v1 + 156) = *(v0 + 156);
  llvm::DominatorTreeBase<mlir::Block,true>::wipe();
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::root_begin(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::root_end(uint64_t a1)
{
  return *a1 + 8 * *(a1 + 8);
}

{
  return *a1 + 8 * *(a1 + 8);
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::roots(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

BOOL llvm::DominatorTreeBase<mlir::Block,true>::compare(uint64_t *a1, uint64_t *a2)
{
  if (a1[18] != a2[18])
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
  v13 = *(a1 + 14);
  if (v13)
  {
    v14 = a1[6];
    v15 = &v14[v13];
    do
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = *(a2 + 32);
        if (v17)
        {
          v18 = a2[14];
          v19 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v17 - 1);
          v20 = *(v18 + 16 * v19);
          if (v20 == *v16)
          {
LABEL_15:
            if (v19 != v17 && *(a2 + 14) > *(v18 + 16 * v19 + 8))
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

  v55 = *(a2 + 14);
  if (v55)
  {
    v56 = a2[6];
    v57 = (v55 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v57 <= 2)
    {
      v58 = 0;
      v59 = a2[6];
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::getNode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 112);
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = *(v3 + 16 * v4 + 8);
        if (*(a1 + 56) > v6)
        {
          return *(*(a1 + 48) + 8 * v6);
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::getNodeIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 112);
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::getNodeIndexForInsert(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v13 = *(a1 + 56);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(a1 + 112, &v15, &v13, v14);
  v3 = *(v14[0] + 8);
  v4 = *(a1 + 56);
  v5 = (v3 + 1);
  if (v4 <= v3 && v4 != v5)
  {
    if (v4 <= v5)
    {
      if (*(a1 + 60) < v5)
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,false>::grow();
      }

      if (v5 != v4)
      {
        bzero((*(a1 + 48) + 8 * v4), 8 * (v5 - v4));
      }
    }

    else
    {
      v7 = 8 * v4;
      v8 = 8 * v5 - v7;
      v9 = (v7 + *(a1 + 48) - 8);
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

    *(a1 + 56) = v5;
  }

  return v3;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 112);
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = *(v3 + 16 * v4 + 8);
        if (*(a1 + 56) > v6)
        {
          return *(*(a1 + 48) + 8 * v6);
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::getRootNode(uint64_t a1)
{
  return *(a1 + 136);
}

{
  return *(a1 + 136);
}

void llvm::DominatorTreeBase<mlir::Block,true>::getDescendants(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[8] = *MEMORY[0x277D85DE8];
  *(a3 + 8) = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 112);
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v3)
      {
        v7 = *(v4 + 16 * v5 + 8);
        if (*(a1 + 56) > v7)
        {
          v8 = *(*(a1 + 48) + 8 * v7);
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (*(a1 + 152) == 1)
      {
        if (*(a3 + 72) < *(a2 + 72))
        {
          return 0;
        }

        return *(a3 + 76) <= *(a2 + 76);
      }

      else
      {
        v6 = *(a1 + 156) + 1;
        *(a1 + 156) = v6;
        if (v6 > 0x20)
        {
          llvm::DominatorTreeBase<mlir::Block,true>::updateDFSNumbers();
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (*(a1 + 152) == 1)
  {
    if (*(a3 + 72) < *(a2 + 72))
    {
      return 0;
    }

    return *(a3 + 76) <= *(a2 + 76);
  }

  v6 = *(a1 + 156) + 1;
  *(a1 + 156) = v6;
  if (v6 > 0x20)
  {
    llvm::DominatorTreeBase<mlir::Block,true>::updateDFSNumbers();
  }

  do
  {
    v7 = a3;
    a3 = *(a3 + 8);
  }

  while (a3 && *(a3 + 16) >= v4);
  return v7 == a2;
}

BOOL llvm::DominatorTreeBase<mlir::Block,true>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v3 = *(a1 + 128);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 112);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_4:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(a1 + 56) > v8)
      {
        v9 = *(*(a1 + 48) + 8 * v8);
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
  if (*(a1 + 56) <= v15)
  {
    return 1;
  }

  v16 = *(*(a1 + 48) + 8 * v15);
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

  if (*(a1 + 152) == 1)
  {
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  else
  {
    v19 = *(a1 + 156) + 1;
    *(a1 + 156) = v19;
    if (v19 > 0x20)
    {
      llvm::DominatorTreeBase<mlir::Block,true>::updateDFSNumbers();
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

BOOL llvm::DominatorTreeBase<mlir::Block,true>::isReachableFromEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 112);
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = *(v3 + 16 * v4 + 8);
        if (*(a1 + 56) > v6)
        {
          return *(*(a1 + 48) + 8 * v6) != 0;
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

void llvm::DominatorTreeBase<mlir::Block,true>::updateDFSNumbers(uint64_t a1)
{
  v17[64] = *MEMORY[0x277D85DE8];
  if (*(a1 + 152) == 1)
  {
    *(a1 + 156) = 0;
  }

  else
  {
    v14 = v17;
    v16 = 32;
    v1 = *(a1 + 136);
    if (v1)
    {
      v2 = *(v1 + 24);
      v17[0] = *(a1 + 136);
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
      *(a1 + 156) = 0;
      *(a1 + 152) = 1;
      if (v13 != v17)
      {
        free(v13);
      }
    }
  }
}

BOOL llvm::DominatorTreeBase<mlir::Block,true>::dominatedBySlowTreeWalk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v3 = a3;
    a3 = *(a3 + 8);
  }

  while (a3 && *(a3 + 16) >= *(a2 + 16));
  return v3 == a2;
}

BOOL llvm::DominatorTreeBase<mlir::Block,true>::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v3 = *(a1 + 128);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 112);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_4:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(a1 + 56) > v8)
      {
        v9 = *(*(a1 + 48) + 8 * v8);
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
  if (*(a1 + 56) <= v15)
  {
    return 1;
  }

  v16 = *(*(a1 + 48) + 8 * v15);
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

  if (*(a1 + 152) == 1)
  {
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  else
  {
    v19 = *(a1 + 156) + 1;
    *(a1 + 156) = v19;
    if (v19 > 0x20)
    {
      llvm::DominatorTreeBase<mlir::Block,true>::updateDFSNumbers();
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

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::findNearestCommonDominator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v3 + 16 * v6);
  if (v7 == a2)
  {
LABEL_2:
    if (v6 != v4)
    {
      v8 = *(v3 + 16 * v6 + 8);
      if (*(a1 + 56) > v8)
      {
        v9 = *(*(a1 + 48) + 8 * v8);
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = 1;
    while (v7 != -4096)
    {
      v11 = v6 + v10++;
      v6 = v11 & v5;
      v7 = *(v3 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_2;
      }
    }
  }

  v9 = 0;
LABEL_10:
  v12 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v13 = *(v3 + 16 * v12);
  if (v13 == a3)
  {
LABEL_11:
    if (v12 == v4)
    {
      v14 = 0;
    }

    else
    {
      v15 = *(v3 + 16 * v12 + 8);
      if (*(a1 + 56) <= v15)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*(a1 + 48) + 8 * v15);
      }
    }
  }

  else
  {
    v16 = 1;
    while (v13 != -4096)
    {
      v17 = v12 + v16++;
      v12 = v17 & v5;
      v13 = *(v3 + 16 * v12);
      if (v13 == a3)
      {
        goto LABEL_11;
      }
    }

    v14 = 0;
  }

  while (v9 != v14)
  {
    v18 = v9[4];
    v19 = v14[4];
    v20 = v18 >= v19;
    if (v18 >= v19)
    {
      v21 = v9;
    }

    else
    {
      v21 = v14;
    }

    if (!v20)
    {
      v14 = v9;
    }

    v9 = *(v21 + 1);
  }

  return *v9;
}

int *llvm::DominatorTreeBase<mlir::Block,true>::applyUpdates(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::GraphDiff<mlir::Block *,true>::GraphDiff(v5, a2, a3, 1u);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ApplyUpdates(a1, v5, 0);
  return llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v5);
}

void llvm::DominatorTreeBase<mlir::Block,true>::applyUpdates(uint64_t a1, const void *a2, uint64_t a3, char *a4, uint64_t a5)
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
    llvm::GraphDiff<mlir::Block *,true>::GraphDiff(v13, v10, v11, 1u);
    llvm::GraphDiff<mlir::Block *,true>::GraphDiff(v9, a4, a5, 0);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ApplyUpdates(a1, v13, v9);
    llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v9);
    llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v13);
    if (v10 != v12)
    {
      free(v10);
    }
  }

  else
  {
    llvm::GraphDiff<mlir::Block *,true>::GraphDiff(v13, a4, a5, 0);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ApplyUpdates(a1, v13, v13);
    llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(v13);
  }
}

void llvm::DominatorTreeBase<mlir::Block,true>::addNewBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 112);
    v5 = (v3 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a3)
    {
LABEL_3:
      if (v5 != v3 && *(a1 + 56) > *(v4 + 16 * v5 + 8))
      {
        *(a1 + 152) = 0;
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 1;
      while (v6 != -4096)
      {
        v8 = v5 + v7++;
        v5 = v8 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  *(a1 + 152) = 0;
LABEL_6:
  llvm::DominatorTreeBase<mlir::Block,true>::createNode();
}

void llvm::DominatorTreeBase<mlir::Block,true>::createNode()
{
  operator new();
}

{
    ;
  }
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::addRoot(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::changeImmediateDominator(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 152) = 0;
  v3 = *(a2 + 8);
  if (v3 != a3)
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = &v6[v7];
    if (v7)
    {
      v9 = 8 * v7;
      do
      {
        if (*v6 == a2)
        {
          goto LABEL_7;
        }

        ++v6;
        v9 -= 8;
      }

      while (v9);
      v6 = v8;
    }

LABEL_7:
    if (v8 != v6 + 1)
    {
      memmove(v6, v6 + 1, v8 - (v6 + 1));
      LODWORD(v7) = *(v3 + 32);
    }

    *(v3 + 32) = v7 - 1;
    *(a2 + 8) = a3;
    v10 = *(a3 + 32);
    if (v10 < *(a3 + 36))
    {
      *(*(a3 + 24) + 8 * v10) = a2;
      ++*(a3 + 32);

      llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return result;
}

{
  v3 = *(result + 128);
  if (!v3)
  {
    v9 = 0;
    v10 = 0;
    *(result + 152) = 0;
    v11 = MEMORY[8];
    if (!MEMORY[8])
    {
      return result;
    }

    goto LABEL_23;
  }

  v4 = *(result + 112);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_3:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(result + 56) > v8)
      {
        v9 = *(*(result + 48) + 8 * v8);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 1;
    while (v7 != -4096)
    {
      v13 = v6 + v12++;
      v6 = v13 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = 0;
LABEL_13:
  v14 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v15 = *(v4 + 16 * v14);
  if (v15 != a3)
  {
    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & v5;
      v15 = *(v4 + 16 * v14);
      if (v15 == a3)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    v10 = 0;
    *(result + 152) = 0;
    v11 = *(v9 + 8);
    if (!v11)
    {
      return result;
    }

LABEL_23:
    v19 = *(v11 + 24);
    v20 = *(v11 + 32);
    v21 = &v19[v20];
    if (v20)
    {
      v22 = 8 * v20;
      do
      {
        if (*v19 == v9)
        {
          goto LABEL_28;
        }

        ++v19;
        v22 -= 8;
      }

      while (v22);
      v19 = v21;
    }

LABEL_28:
    if (v21 != v19 + 1)
    {
      memmove(v19, v19 + 1, v21 - (v19 + 1));
      LODWORD(v20) = *(v11 + 32);
    }

    *(v11 + 32) = v20 - 1;
    *(v9 + 8) = v10;
    v23 = *(v10 + 32);
    if (v23 < *(v10 + 36))
    {
      *(*(v10 + 24) + 8 * v23) = v9;
      ++*(v10 + 32);

      llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_14:
  if (v14 == v3)
  {
    goto LABEL_22;
  }

  v16 = *(v4 + 16 * v14 + 8);
  if (*(result + 56) <= v16)
  {
    goto LABEL_22;
  }

  v10 = *(*(result + 48) + 8 * v16);
  *(result + 152) = 0;
  v11 = *(v9 + 8);
  if (v11 != v10)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::eraseNode(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 112);
  v5 = *(result + 128);
  v6 = a2 >> 4;
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = (v5 - 1) & (v6 ^ (a2 >> 9));
  v8 = *(v4 + 16 * v7);
  if (v8 != a2)
  {
    v27 = 1;
    while (v8 != -4096)
    {
      v28 = v7 + v27++;
      v7 = v28 & (v5 - 1);
      v8 = *(v4 + 16 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    v9 = 0;
    v10 = *(result + 48);
    v11 = *v10;
    *(result + 152) = 0;
    v12 = v11[1];
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_27:
    v10[v9] = 0;
    v18 = v11[3];
    if (v18 == v11 + 5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_4;
  }

  v9 = *(v4 + 16 * v7 + 8);
  v10 = *(result + 48);
  v11 = v10[v9];
  *(result + 152) = 0;
  v12 = v11[1];
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_5:
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  v15 = &v13[v14];
  if (v14)
  {
    v16 = 8 * v14;
    while (*v13 != v11)
    {
      ++v13;
      v16 -= 8;
      if (!v16)
      {
        v13 = v15;
        break;
      }
    }
  }

  v17 = *v13;
  *v13 = *(v15 - 1);
  *(v15 - 1) = v17;
  *(v12 + 32) = v14 - 1;
  v11 = v10[v9];
  v10[v9] = 0;
  if (v11)
  {
    v18 = v11[3];
    if (v18 == v11 + 5)
    {
LABEL_13:
      result = MEMORY[0x259C63180](v11, 0x10A0C40528A66C4);
      v4 = *(v3 + 112);
      LODWORD(v5) = *(v3 + 128);
      goto LABEL_14;
    }

LABEL_12:
    free(v18);
    goto LABEL_13;
  }

LABEL_14:
  if (v5)
  {
    v19 = v5 - 1;
    v20 = (v5 - 1) & (v6 ^ (a2 >> 9));
    v21 = *(v4 + 16 * v20);
    if (v21 == a2)
    {
LABEL_16:
      *(v4 + 16 * v20) = -8192;
      *(v3 + 120) = vadd_s32(*(v3 + 120), 0x1FFFFFFFFLL);
    }

    else
    {
      v29 = 1;
      while (v21 != -4096)
      {
        v30 = v20 + v29++;
        v20 = v30 & v19;
        v21 = *(v4 + 16 * v20);
        if (v21 == a2)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v22 = *(v3 + 8);
  if (v22)
  {
    v23 = 8 * v22;
    for (i = *v3; *i != a2; ++i)
    {
      v23 -= 8;
      if (!v23)
      {
        return result;
      }
    }
  }

  else
  {
    i = *v3;
  }

  v25 = *v3 + 8 * v22;
  if (i != v25)
  {
    v26 = *i;
    *i = *(v25 - 8);
    *(v25 - 8) = v26;
    *(v3 + 8) = v22 - 1;
  }

  return result;
}

void llvm::DominatorTreeBase<mlir::Block,true>::Split<llvm::Inverse<mlir::Block*>>(uint64_t a1, uint64_t *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v4 = mlir::PredecessorIterator::unwrap(*a2);
  mlir::SuccessorRange::SuccessorRange(&v38, a2);
  v5 = v38;
  mlir::SuccessorRange::SuccessorRange(&v38, a2);
  v6 = v39;
  v38 = v40;
  v39 = 0x400000000;
  if (v6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v6)
  {
    v7 = v38;
    v8 = v6;
    v9 = (v5 + 24);
    do
    {
      v10 = *v9;
      v9 += 4;
      *v7++ = v10;
      --v8;
    }

    while (v8);
  }

  LODWORD(v39) = v6;
  mlir::SuccessorRange::SuccessorRange(&v36, v4);
  v11 = v36;
  mlir::SuccessorRange::SuccessorRange(&v36, v4);
  if (v37)
  {
    for (i = 0; i != v37; ++i)
    {
      if (*(v11 + 32 * i + 24) != a2)
      {
        llvm::DominatorTreeBase<mlir::Block,true>::dominates();
      }
    }
  }

  if (!v39)
  {
    goto LABEL_49;
  }

  v13 = *(a1 + 128);
  if (!v13)
  {
    goto LABEL_49;
  }

  v14 = 0;
  v15 = *(a1 + 112);
  v16 = v13 - 1;
  while (1)
  {
    v17 = *(v38 + v14);
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & v16;
    v19 = *(v15 + 16 * v18);
    if (v19 != v17)
    {
      v21 = 1;
      while (v19 != -4096)
      {
        v22 = v18 + v21++;
        v18 = v22 & v16;
        v19 = *(v15 + 16 * v18);
        if (v19 == v17)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_14;
    }

LABEL_16:
    if (v18 != v13)
    {
      v20 = *(v15 + 16 * v18 + 8);
      if (*(a1 + 56) > v20)
      {
        if (*(*(a1 + 48) + 8 * v20))
        {
          break;
        }
      }
    }

LABEL_14:
    if (++v14 == v39)
    {
      goto LABEL_49;
    }
  }

  if (v17)
  {
    v23 = v14 + 1;
    if (v39 > v14 + 1)
    {
      do
      {
        v24 = *(a1 + 128);
        if (v24)
        {
          v25 = *(v38 + v23);
          v26 = *(a1 + 112);
          v27 = ((v25 >> 4) ^ (v25 >> 9)) & (v24 - 1);
          v28 = *(v26 + 16 * v27);
          if (v28 == v25)
          {
LABEL_30:
            if (v27 != v24)
            {
              v29 = *(v26 + 16 * v27 + 8);
              if (*(a1 + 56) > v29)
              {
                if (*(*(a1 + 48) + 8 * v29))
                {
                  llvm::DominatorTreeBase<mlir::Block,true>::findNearestCommonDominator();
                }
              }
            }
          }

          else
          {
            v30 = 1;
            while (v28 != -4096)
            {
              v31 = v27 + v30++;
              v27 = v31 & (v24 - 1);
              v28 = *(v26 + 16 * v27);
              if (v28 == v25)
              {
                goto LABEL_30;
              }
            }
          }
        }

        ++v23;
      }

      while (v39 > v23);
      v15 = *(a1 + 112);
      LODWORD(v13) = *(a1 + 128);
    }

    if (v13)
    {
      v32 = (v13 - 1) & ((v17 >> 4) ^ (v17 >> 9));
      v33 = *(v15 + 16 * v32);
      if (v33 == v17)
      {
LABEL_41:
        if (v32 != v13 && *(a1 + 56) > *(v15 + 16 * v32 + 8))
        {
          *(a1 + 152) = 0;
          llvm::DominatorTreeBase<mlir::Block,true>::createNode();
        }
      }

      else
      {
        v34 = 1;
        while (v33 != -4096)
        {
          v35 = v32 + v34++;
          v32 = v35 & (v13 - 1);
          v33 = *(v15 + 16 * v32);
          if (v33 == v17)
          {
            goto LABEL_41;
          }
        }
      }
    }

    *(a1 + 152) = 0;
    llvm::DominatorTreeBase<mlir::Block,true>::createNode();
  }

LABEL_49:
  if (v38 != v40)
  {
    free(v38);
  }
}

void llvm::DominatorTreeBase<mlir::Block,true>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) - v4 <= 0x3DuLL)
  {
    llvm::raw_ostream::write(this, "=============================--------------------------------\n", 0x3EuLL);
    v5 = *(this + 4);
    if (*(this + 3) - v5 > 0x1BuLL)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::raw_ostream::write(this, "Inorder PostDominator Tree: ", 0x1CuLL);
    if (*(a1 + 152))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  qmemcpy(v4, "=============================--------------------------------\n", 62);
  v6 = *(this + 3);
  v5 = (*(this + 4) + 62);
  *(this + 4) = v5;
  if ((v6 - v5) <= 0x1B)
  {
    goto LABEL_6;
  }

LABEL_3:
  qmemcpy(v5, "Inorder PostDominator Tree: ", 28);
  *(this + 4) += 28;
  if (*(a1 + 152))
  {
LABEL_10:
    v11 = *(this + 4);
    if (*(this + 3) != v11)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_7:
  v7 = *(this + 4);
  if ((*(this + 3) - v7) > 0x13)
  {
    *(v7 + 16) = 540697705;
    *v7 = *"DFSNumbers invalid: ";
    *(this + 4) += 20;
    v9 = llvm::raw_ostream::operator<<(this, *(a1 + 156));
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 0xDuLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(this, "DFSNumbers invalid: ", 0x14uLL);
    v9 = llvm::raw_ostream::operator<<(v8, *(a1 + 156));
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 0xDuLL)
    {
LABEL_9:
      qmemcpy(v10, " slow queries.", 14);
      *(v9 + 4) += 14;
      goto LABEL_10;
    }
  }

  llvm::raw_ostream::write(v9, " slow queries.", 0xEuLL);
  v11 = *(this + 4);
  if (*(this + 3) != v11)
  {
LABEL_11:
    *v11 = 10;
    ++*(this + 4);
    v12 = *(a1 + 136);
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_28:
  llvm::raw_ostream::write(this, "\n", 1uLL);
  v12 = *(a1 + 136);
  if (v12)
  {
LABEL_12:
    llvm::PrintDomTree<mlir::Block>(v12, this, 1u);
  }

LABEL_13:
  v13 = *(this + 4);
  if (*(this + 3) - v13 > 6uLL)
  {
    *(v13 + 3) = 540701556;
    *v13 = 1953460050;
    *(this + 4) += 7;
    v14 = *(a1 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, "Roots: ", 7uLL);
    v14 = *(a1 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v15 = *a1;
  v16 = 8 * v14;
  do
  {
    while (1)
    {
      mlir::Block::printAsOperand(*v15, this);
      v17 = *(this + 4);
      if (*(this + 3) == v17)
      {
        break;
      }

      *v17 = 32;
      ++*(this + 4);
      ++v15;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    llvm::raw_ostream::write(this, " ", 1uLL);
    ++v15;
    v16 -= 8;
  }

  while (v16);
LABEL_21:
  v18 = *(this + 4);
  if (*(this + 3) == v18)
  {

    llvm::raw_ostream::write(this, "\n", 1uLL);
  }

  else
  {
    *v18 = 10;
    ++*(this + 4);
  }
}

void llvm::DominatorTreeBase<mlir::Block,true>::recalculate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  *(a1 + 144) = a2;
  llvm::GraphDiff<mlir::Block *,true>::GraphDiff(v4, a3, a4, 1u);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::CalculateFromScratch();
}

uint64_t llvm::DominatorTreeBase<mlir::Block,true>::reset(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = *(result + 48) - 8;
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

  *(v1 + 56) = 0;
  v7 = *(v1 + 120);
  if (v7 || *(v1 + 124))
  {
    v8 = *(v1 + 128);
    if (v8 > 4 * v7 && v8 >= 0x41)
    {
      result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(v1 + 112);
      goto LABEL_23;
    }

    if (v8)
    {
      v9 = *(v1 + 112);
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
          goto LABEL_22;
        }
      }

      else
      {
        v13 = *(v1 + 112);
      }

      v16 = (v9 + 16 * v8);
      do
      {
        *v13 = -4096;
        v13 += 2;
      }

      while (v13 != v16);
    }

LABEL_22:
    *(v1 + 120) = 0;
  }

LABEL_23:
  *(v1 + 8) = 0;
  *(v1 + 156) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  return result;
}

double llvm::DomTreeNodeBase<mlir::Block>::DomTreeNodeBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    v3 = *(a3 + 16) + 1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0x400000000;
  result = NAN;
  *(a1 + 72) = -1;
  return result;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    v3 = *(a3 + 16) + 1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0x400000000;
  result = NAN;
  *(a1 + 72) = -1;
  return result;
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::back(uint64_t a1)
{
  return *(a1 + 24) + 8 * *(a1 + 32) - 8;
}

{
  return *(a1 + 24) + 8 * *(a1 + 32) - 8;
}

uint64_t llvm::DomTreeNodeBase<mlir::Block>::children(uint64_t a1)
{
  return *(a1 + 24);
}

{
  return *(a1 + 24);
}

uint64_t mlir::detail::DominanceInfoBase<true>::DominanceInfoBase(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void mlir::detail::DominanceInfoBase<true>::~DominanceInfoBase(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v2)
  {
    v5 = v3;
    if (v4)
    {
      v6 = 16 * v4;
      v5 = v3;
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 = (v5 + 16);
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_16;
        }
      }
    }

    v7 = (v3 + 16 * v4);
    if (v5 != v7)
    {
      do
      {
        v8 = *(v5 + 1) & 0xFFFFFFFFFFFFFFF8;
        if (v8)
        {
          llvm::deallocate_buffer(*(v8 + 112), (16 * *(v8 + 128)));
        }

        do
        {
          v5 = (v5 + 16);
        }

        while (v5 != v7 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v5 != v7);
      v3 = *a1;
      v4 = *(a1 + 16);
    }
  }

LABEL_16:
  llvm::deallocate_buffer(v3, (16 * v4));
}

uint64_t mlir::detail::DominanceInfoBase<true>::invalidate(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = *(result + 16);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = *result;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 2;
      v3 -= 16;
      if (!v3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = *result;
  }

  v5 = *result + 16 * v2;
  if (v4 != v5)
  {
    do
    {
      v6 = v4[1] & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        llvm::deallocate_buffer(*(v6 + 112), (16 * *(v6 + 128)));
      }

      do
      {
        v4 += 2;
      }

      while (v4 != v5 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v4 != v5);
    v1 = *(result + 8);
  }

LABEL_17:
  if (!v1)
  {
LABEL_18:
    if (!*(result + 12))
    {
      return result;
    }

    v1 = 0;
  }

  v7 = *(result + 16);
  if (v7 <= 4 * v1 || v7 < 0x41)
  {
    if (v7)
    {
      v8 = *result;
      v9 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v9)
      {
        v10 = v9 + 1;
        v11 = (v9 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v12 = &v8[2 * v11];
        v13 = v8 + 2;
        v14 = v11;
        do
        {
          *(v13 - 2) = -4096;
          *v13 = -4096;
          v13 += 4;
          v14 -= 2;
        }

        while (v14);
        if (v10 == v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v12 = *result;
      }

      v15 = &v8[2 * v7];
      do
      {
        *v12 = -4096;
        v12 += 2;
      }

      while (v12 != v15);
    }

LABEL_34:
    *(result + 8) = 0;
    return result;
  }

  return llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(result);
}

int32x2_t *mlir::detail::DominanceInfoBase<true>::invalidate(int32x2_t *result, uint64_t a2)
{
  v2 = result[2].u32[0];
  if (v2)
  {
    v3 = *result;
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(*result + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = (*&v3 + 16 * v4);
        v7 = v6[1] & 0xFFFFFFFFFFFFFFF8;
        if (v7)
        {
          llvm::deallocate_buffer(*(v7 + 112), (16 * *(v7 + 128)));
        }

        *v6 = -8192;
        result[1] = vadd_s32(result[1], 0x1FFFFFFFFLL);
      }
    }

    else
    {
      v8 = 1;
      while (v5 != -4096)
      {
        v9 = v4 + v8++;
        v4 = v9 & (v2 - 1);
        v5 = *(*&v3 + 16 * v4);
        if (v5 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

mlir::Block *mlir::detail::DominanceInfoBase<true>::findNearestCommonDominator(uint64_t a1, mlir::Block *a2, mlir::Block *a3)
{
  result = 0;
  v4 = a3;
  v5 = a2;
  if (a2)
  {
    if (a3)
    {
      result = a2;
      if (a2 != a3)
      {
        if (tryGetBlocksInSameRegion(&v5, &v4))
        {
          result = v5;
          if (v5 != v4)
          {
            mlir::Block::getParent(v5);
            mlir::detail::DominanceInfoBase<true>::getDominanceInfo();
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t tryGetBlocksInSameRegion(mlir::Block **a1, mlir::Block **a2)
{
  Parent = mlir::Block::getParent(*a1);
  v5 = mlir::Block::getParent(*a2);
  if (Parent == v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *a1;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    if (mlir::Block::getParent(v7) == v6)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v7);
    if (ParentOp)
    {
      v7 = *(ParentOp + 16);
      v8 = v9 + 1;
      if (v7)
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  if (v7)
  {
    *a1 = v7;
    return 1;
  }

LABEL_9:
  v11 = *a2;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    if (mlir::Block::getParent(v11) == Parent)
    {
      break;
    }

    v14 = mlir::Block::getParentOp(v11);
    if (v14)
    {
      v11 = *(v14 + 16);
      v12 = v13 + 1;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *a2 = v11;
    return 1;
  }

  while (1)
  {
LABEL_20:
    for (i = v9 >= v13; v9 > v13; i = v9 >= v13)
    {
      while (1)
      {
        v19 = mlir::Block::getParentOp(*a1);
        if (!v19)
        {
          break;
        }

        *a1 = *(v19 + 16);
        i = --v9 >= v13;
        if (v9 <= v13)
        {
          goto LABEL_21;
        }
      }

      *a1 = 0;
      --v9;
    }

LABEL_21:
    if (i)
    {
      break;
    }

    v18 = mlir::Block::getParentOp(*a2);
    if (v18)
    {
      v16 = *(v18 + 16);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    --v13;
  }

LABEL_30:
  for (result = *a1; *a1; result = *a1)
  {
    v20 = mlir::Block::getParent(result);
    v21 = v20 == mlir::Block::getParent(*a2);
    result = v21;
    if (v21)
    {
      break;
    }

    v22 = mlir::Block::getParentOp(*a1);
    if (v22)
    {
      *a1 = *(v22 + 16);
      v23 = mlir::Block::getParentOp(*a2);
      if (!v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *a1 = 0;
      v23 = mlir::Block::getParentOp(*a2);
      if (!v23)
      {
LABEL_29:
        *a2 = 0;
        goto LABEL_30;
      }
    }

    *a2 = *(v23 + 16);
  }

  return result;
}

uint64_t mlir::detail::DominanceInfoBase<true>::getDominanceInfo(uint64_t a1, void *a2, int a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16[0] = 4;
  llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::try_emplace<mlir::pdl_interp::ApplyConstraintOp>(a1, &v15, v16, &v13);
  v5 = v13;
  if (v14)
  {
    if (*a2 == a2 || *(a2[1] + 8) != a2)
    {
      goto LABEL_4;
    }

    v6 = a2[2];
    if (v6)
    {
      if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_5:
        *(v5 + 8) = v8;
        return *(v5 + 8);
      }

      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(a2[2]);
      if (InterfaceFor)
      {
        InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v6);
      }

      else
      {
        v6 = 0;
      }

      v15 = v6;
      v16[0] = InterfaceFor;
      if (v6)
      {
        RegionNumber = mlir::Region::getRegionNumber(a2);
        hasSSADominance = mlir::RegionKindInterface::hasSSADominance(&v15, RegionNumber);
        v11 = 4;
        if (!hasSSADominance)
        {
          v11 = 0;
        }

        v8 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFBLL | v11;
        goto LABEL_5;
      }
    }
  }

  else if (a3 && *(v13 + 8) <= 7uLL && (*a2 == a2 || *(a2[1] + 8) != a2))
  {
LABEL_4:
    operator new();
  }

  return *(v5 + 8);
}

uint64_t mlir::detail::DominanceInfoBase<true>::isReachableFromEntry(int a1, mlir::Block *this)
{
  v3 = *(mlir::Block::getParent(this) + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  if (v4 != this)
  {
    mlir::detail::DominanceInfoBase<true>::getDominanceInfo();
  }

  return 1;
}

uint64_t mlir::detail::DominanceInfoBase<true>::properlyDominates(int a1, mlir::Block *this, mlir::Block *a3)
{
  if (this == a3)
  {
    return 0;
  }

  Parent = mlir::Block::getParent(this);
  if (Parent == mlir::Block::getParent(a3))
  {
    goto LABEL_6;
  }

  if (!Parent)
  {
    return 0;
  }

  result = mlir::Region::findAncestorBlockInRegion(Parent, a3);
  if (result)
  {
    if (result != this)
    {
LABEL_6:
      mlir::detail::DominanceInfoBase<true>::getDominanceInfo();
    }

    return 1;
  }

  return result;
}

uint64_t mlir::detail::DominanceInfoBase<false>::DominanceInfoBase(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v2)
  {
    v5 = v3;
    if (v4)
    {
      v6 = 16 * v4;
      v5 = v3;
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 = (v5 + 16);
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_16;
        }
      }
    }

    v7 = (v3 + 16 * v4);
    if (v5 != v7)
    {
      do
      {
        v8 = *(v5 + 1) & 0xFFFFFFFFFFFFFFF8;
        if (v8)
        {
          llvm::deallocate_buffer(*(v8 + 88), (16 * *(v8 + 104)));
        }

        do
        {
          v5 = (v5 + 16);
        }

        while (v5 != v7 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v5 != v7);
      v3 = *a1;
      v4 = *(a1 + 16);
    }
  }

LABEL_16:
  llvm::deallocate_buffer(v3, (16 * v4));
}

uint64_t mlir::detail::DominanceInfoBase<false>::invalidate(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = *(result + 16);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = *result;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 2;
      v3 -= 16;
      if (!v3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = *result;
  }

  v5 = *result + 16 * v2;
  if (v4 != v5)
  {
    do
    {
      v6 = v4[1] & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        llvm::deallocate_buffer(*(v6 + 88), (16 * *(v6 + 104)));
      }

      do
      {
        v4 += 2;
      }

      while (v4 != v5 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v4 != v5);
    v1 = *(result + 8);
  }

LABEL_17:
  if (!v1)
  {
LABEL_18:
    if (!*(result + 12))
    {
      return result;
    }

    v1 = 0;
  }

  v7 = *(result + 16);
  if (v7 <= 4 * v1 || v7 < 0x41)
  {
    if (v7)
    {
      v8 = *result;
      v9 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v9)
      {
        v10 = v9 + 1;
        v11 = (v9 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v12 = &v8[2 * v11];
        v13 = v8 + 2;
        v14 = v11;
        do
        {
          *(v13 - 2) = -4096;
          *v13 = -4096;
          v13 += 4;
          v14 -= 2;
        }

        while (v14);
        if (v10 == v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v12 = *result;
      }

      v15 = &v8[2 * v7];
      do
      {
        *v12 = -4096;
        v12 += 2;
      }

      while (v12 != v15);
    }

LABEL_34:
    *(result + 8) = 0;
    return result;
  }

  return llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(result);
}

int32x2_t *mlir::detail::DominanceInfoBase<false>::invalidate(int32x2_t *result, uint64_t a2)
{
  v2 = result[2].u32[0];
  if (v2)
  {
    v3 = *result;
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(*result + 16 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = (*&v3 + 16 * v4);
        v7 = v6[1] & 0xFFFFFFFFFFFFFFF8;
        if (v7)
        {
          llvm::deallocate_buffer(*(v7 + 88), (16 * *(v7 + 104)));
        }

        *v6 = -8192;
        result[1] = vadd_s32(result[1], 0x1FFFFFFFFLL);
      }
    }

    else
    {
      v8 = 1;
      while (v5 != -4096)
      {
        v9 = v4 + v8++;
        v4 = v9 & (v2 - 1);
        v5 = *(*&v3 + 16 * v4);
        if (v5 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

mlir::Block *mlir::detail::DominanceInfoBase<false>::findNearestCommonDominator(uint64_t a1, mlir::Block *a2, mlir::Block *a3)
{
  result = 0;
  v4 = a3;
  v5 = a2;
  if (a2)
  {
    if (a3)
    {
      result = a2;
      if (a2 != a3)
      {
        if (tryGetBlocksInSameRegion(&v5, &v4))
        {
          result = v5;
          if (v5 != v4)
          {
            mlir::Block::getParent(v5);
            mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::detail::DominanceInfoBase<false>::getDominanceInfo(uint64_t a1, void *a2, int a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16[0] = 4;
  llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::try_emplace<mlir::pdl_interp::ApplyConstraintOp>(a1, &v15, v16, &v13);
  v5 = v13;
  if (v14)
  {
    if (*a2 == a2 || *(a2[1] + 8) != a2)
    {
      goto LABEL_4;
    }

    v6 = a2[2];
    if (v6)
    {
      if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_5:
        *(v5 + 8) = v8;
        return *(v5 + 8);
      }

      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(a2[2]);
      if (InterfaceFor)
      {
        InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v6);
      }

      else
      {
        v6 = 0;
      }

      v15 = v6;
      v16[0] = InterfaceFor;
      if (v6)
      {
        RegionNumber = mlir::Region::getRegionNumber(a2);
        hasSSADominance = mlir::RegionKindInterface::hasSSADominance(&v15, RegionNumber);
        v11 = 4;
        if (!hasSSADominance)
        {
          v11 = 0;
        }

        v8 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFBLL | v11;
        goto LABEL_5;
      }
    }
  }

  else if (a3 && *(v13 + 8) <= 7uLL && (*a2 == a2 || *(a2[1] + 8) != a2))
  {
LABEL_4:
    operator new();
  }

  return *(v5 + 8);
}

uint64_t mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(int a1, mlir::Block *this)
{
  v3 = *(mlir::Block::getParent(this) + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  if (v4 != this)
  {
    mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
  }

  return 1;
}

uint64_t mlir::detail::DominanceInfoBase<false>::properlyDominates(int a1, mlir::Block *this, mlir::Block *a3)
{
  if (this == a3)
  {
    return 0;
  }

  Parent = mlir::Block::getParent(this);
  if (Parent == mlir::Block::getParent(a3))
  {
    goto LABEL_6;
  }

  if (!Parent)
  {
    return 0;
  }

  result = mlir::Region::findAncestorBlockInRegion(Parent, a3);
  if (result)
  {
    if (result != this)
    {
LABEL_6:
      mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
    }

    return 1;
  }

  return result;
}

uint64_t mlir::DominanceInfo::properlyDominatesImpl(mlir::DominanceInfo *this, mlir::Operation *a2, mlir::Operation *a3, char a4)
{
  v4 = *(a2 + 2);
  if (a2 == a3)
  {
    mlir::Block::getParent(*(a2 + 2));
    mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
  }

  v8 = *(a3 + 2);
  Parent = mlir::Block::getParent(*(a2 + 2));
  if (Parent == mlir::Block::getParent(v8))
  {
    goto LABEL_10;
  }

  if (!Parent)
  {
    return 0;
  }

  result = mlir::Region::findAncestorOpInRegion(Parent, a3);
  if (result)
  {
    v8 = *(result + 16);
    if (result == a2 && (a4 & 1) != 0)
    {
      return 1;
    }

LABEL_10:
    if (v4 != v8)
    {
      mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
    }

    mlir::Block::getParent(v4);
    mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
  }

  return result;
}

uint64_t mlir::DominanceInfo::properlyDominates(mlir::DominanceInfo *a1, uint64_t a2, mlir::Operation *a3)
{
  v10 = a2;
  if (a2 && (*(a2 + 8) & 7) == 7)
  {
    v4 = *(a2 + 16);
    v5 = *(a3 + 2);
    if (v4 == v5)
    {
      return 1;
    }

    Parent = mlir::Block::getParent(*(a2 + 16));
    if (Parent == mlir::Block::getParent(v5))
    {
      goto LABEL_8;
    }

    if (Parent)
    {
      result = mlir::Region::findAncestorBlockInRegion(Parent, v5);
      if (result)
      {
        if (result != v4)
        {
LABEL_8:
          mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    DefiningOp = mlir::Value::getDefiningOp(&v10);
    return mlir::DominanceInfo::properlyDominatesImpl(a1, DefiningOp, a3, 0);
  }

  return result;
}

uint64_t mlir::PostDominanceInfo::properlyPostDominates(mlir::PostDominanceInfo *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v3 = *(a2 + 2);
  if (a2 == a3)
  {
    mlir::Block::getParent(*(a2 + 2));
    mlir::detail::DominanceInfoBase<true>::getDominanceInfo();
  }

  v6 = *(a3 + 2);
  Parent = mlir::Block::getParent(*(a2 + 2));
  if (Parent == mlir::Block::getParent(v6))
  {
LABEL_7:
    if (v3 != v6)
    {
      mlir::detail::DominanceInfoBase<true>::getDominanceInfo();
    }

    mlir::Block::getParent(v3);
    mlir::detail::DominanceInfoBase<true>::getDominanceInfo();
  }

  if (!Parent)
  {
    return 0;
  }

  result = mlir::Region::findAncestorOpInRegion(Parent, a3);
  if (result)
  {
    if (result != a2)
    {
      v6 = *(result + 16);
      goto LABEL_7;
    }

    return 1;
  }

  return result;
}

int *llvm::GraphDiff<mlir::Block *,false>::~GraphDiff(int *a1)
{
  v2 = *(a1 + 75);
  if (v2 != a1 + 154)
  {
    free(v2);
  }

  v3 = a1[74];
  if (v3)
  {
    v5 = a1 + 76;
    v4 = 4;
  }

  else
  {
    v4 = a1[78];
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = *(a1 + 38);
  }

  v6 = v5 + 14;
  v7 = 72 * v4;
  do
  {
    if ((*(v6 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v8 = *(v6 - 2);
      if (v6 != v8)
      {
        free(v8);
      }

      v9 = *(v6 - 6);
      if (v6 - 4 != v9)
      {
        free(v9);
      }
    }

    v6 += 9;
    v7 -= 72;
  }

  while (v7);
  v3 = a1[74];
LABEL_15:
  if ((v3 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 38), (72 * a1[78]));
  }

  v10 = *a1;
  if (*a1)
  {
    v12 = a1 + 2;
    v11 = 4;
  }

  else
  {
    v11 = a1[4];
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = *(a1 + 1);
  }

  v13 = v12 + 14;
  v14 = 72 * v11;
  do
  {
    if ((*(v13 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      v16 = *(v13 - 6);
      if (v13 - 4 != v16)
      {
        free(v16);
      }
    }

    v13 += 9;
    v14 -= 72;
  }

  while (v14);
  v10 = *a1;
LABEL_29:
  if ((v10 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (72 * a1[4]));
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 8 * v7;
        v9 = (v6 - 1);
        do
        {
          v10 = *&v9[v8];
          *&v9[v8] = 0;
          if (v10)
          {
            v11 = *(v10 + 24);
            if (v11 != (v10 + 40))
            {
              free(v11);
            }

            MEMORY[0x259C63180](v10, 0x10A0C40528A66C4);
          }

          v8 -= 8;
        }

        while (v8);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_14:
      *v12 = 0;
      return a1;
    }

    v12 = (a2 + 8);
    v14 = *(a2 + 8);
    v15 = *(a1 + 8);
    if (v15 >= v14)
    {
      v20 = *a1;
      if (v14)
      {
        v21 = 8 * v14;
        do
        {
          v22 = *v5;
          *v5 = 0;
          v23 = *v20;
          *v20 = v22;
          if (v23)
          {
            v24 = *(v23 + 24);
            if (v24 != (v23 + 40))
            {
              free(v24);
            }

            MEMORY[0x259C63180](v23, 0x10A0C40528A66C4);
          }

          ++v5;
          ++v20;
          v21 -= 8;
        }

        while (v21);
        v25 = *a1;
        v15 = *(a1 + 8);
      }

      else
      {
        v25 = *a1;
      }

      v54 = &v25[v15];
      while (v54 != v20)
      {
        v56 = *--v54;
        v55 = v56;
        *v54 = 0;
        if (v56)
        {
          v57 = *(v55 + 24);
          if (v57 != (v55 + 40))
          {
            free(v57);
          }

          MEMORY[0x259C63180](v55, 0x10A0C40528A66C4);
        }
      }

      *(a1 + 8) = v14;
      v58 = *(a2 + 8);
      if (v58)
      {
        v59 = *a2;
        v60 = v58;
        v61 = v59 - 1;
        do
        {
          v62 = v61[v60];
          v61[v60] = 0;
          if (v62)
          {
            v63 = *(v62 + 24);
            if (v63 != (v62 + 40))
            {
              free(v63);
            }

            MEMORY[0x259C63180](v62, 0x10A0C40528A66C4);
          }

          --v60;
        }

        while (v60 * 8);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) < v14)
    {
      if (v15)
      {
        v16 = 8 * v15;
        v17 = *a1 - 8;
        do
        {
          v18 = *(v17 + v16);
          *(v17 + v16) = 0;
          if (v18)
          {
            v19 = *(v18 + 24);
            if (v19 != (v18 + 40))
            {
              free(v19);
            }

            MEMORY[0x259C63180](v18, 0x10A0C40528A66C4);
          }

          v16 -= 8;
        }

        while (v16);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,false>::grow();
    }

    if (v15)
    {
      v26 = *a1;
      v27 = 8 * v15;
      do
      {
        v28 = *v5;
        *v5 = 0;
        v29 = *v26;
        *v26 = v28;
        if (v29)
        {
          v30 = *(v29 + 24);
          if (v30 != (v29 + 40))
          {
            free(v30);
          }

          MEMORY[0x259C63180](v29, 0x10A0C40528A66C4);
        }

        ++v5;
        ++v26;
        v27 -= 8;
      }

      while (v27);
      v31 = *a2;
      v32 = *(a2 + 8);
      if (v15 == v32)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v15 = 0;
      v31 = *a2;
      v32 = *(a2 + 8);
      if (!*(a2 + 8))
      {
LABEL_50:
        *(a1 + 8) = v14;
        v49 = *v12;
        if (v49)
        {
          v50 = v49;
          v51 = v31 - 1;
          do
          {
            v52 = v51[v50];
            v51[v50] = 0;
            if (v52)
            {
              v53 = *(v52 + 24);
              if (v53 != (v52 + 40))
              {
                free(v53);
              }

              MEMORY[0x259C63180](v52, 0x10A0C40528A66C4);
            }

            --v50;
          }

          while (v50 * 8);
        }

        goto LABEL_14;
      }
    }

    v33 = *a1;
    v34 = v15;
    v35 = (*a1 + 8 * v15);
    v36 = &v31[v15];
    v37 = v32;
    v38 = 8 * v32 - 8 * v15 - 8;
    if (v38 < 0x78 || v36 < &v33[v37] && v35 < &v31[v37])
    {
      goto LABEL_48;
    }

    v39 = (v38 >> 3) + 1;
    v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
    v35 = (v35 + v40);
    v36 = (v36 + v40);
    v41 = v34 * 8 + 16;
    v42 = &v31[v34 + 2];
    v43 = (v33 + v41);
    v44 = v39 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = *(v42 - 1);
      v46 = *v42;
      *(v42 - 1) = 0uLL;
      *v42 = 0uLL;
      *(v43 - 1) = v45;
      *v43 = v46;
      v42 += 2;
      v43 += 2;
      v44 -= 4;
    }

    while (v44);
    if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      v47 = &v31[v32];
      do
      {
        v48 = *v36;
        *v36++ = 0;
        *v35++ = v48;
      }

      while (v36 != v47);
    }

    goto LABEL_50;
  }

  return a1;
}

uint64_t llvm::GraphDiff<mlir::Block *,false>::GraphDiff(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  *a1 = 1;
  *(a1 + 8) = -4096;
  v6 = a1 + 8;
  *(a1 + 80) = -4096;
  *(a1 + 152) = -4096;
  *(a1 + 224) = -4096;
  *(a1 + 296) = 1;
  *(a1 + 304) = -4096;
  *(a1 + 376) = -4096;
  *(a1 + 448) = -4096;
  *(a1 + 520) = -4096;
  *(a1 + 600) = a1 + 616;
  *(a1 + 608) = 0x400000000;
  llvm::cfg::LegalizeUpdates<mlir::Block *>(a2, a3, a1 + 600, 0, 0);
  v7 = *(a1 + 608);
  if (v7)
  {
    v8 = *(a1 + 600);
    v9 = &v8[2 * v7];
    do
    {
      v11 = *v8;
      v10 = v8[1];
      v42 = *v8;
      if (*a1)
      {
        v12 = 4;
        v13 = v6;
      }

      else
      {
        v12 = *(a1 + 16);
        if (!v12)
        {
          v31 = 0;
          goto LABEL_18;
        }

        v13 = *(a1 + 8);
      }

      v14 = v12 - 1;
      v15 = v14 & ((v11 >> 4) ^ (v11 >> 9));
      v16 = (v13 + 72 * v15);
      v17 = *v16;
      if (v11 == *v16)
      {
        goto LABEL_8;
      }

      v33 = 0;
      v34 = 1;
      while (v17 != -4096)
      {
        if (v33)
        {
          v35 = 0;
        }

        else
        {
          v35 = v17 == -8192;
        }

        if (v35)
        {
          v33 = v16;
        }

        v36 = v15 + v34++;
        v15 = v36 & v14;
        v16 = (v13 + 72 * v15);
        v17 = *v16;
        if (v11 == *v16)
        {
          goto LABEL_8;
        }
      }

      if (v33)
      {
        v31 = v33;
      }

      else
      {
        v31 = v16;
      }

LABEL_18:
      v16 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>(a1, v31, &v42);
LABEL_8:
      v18 = ((v10 & 4) == 0) ^ a4;
      v19 = &v16[4 * v18];
      v20 = v19 + 1;
      v21 = *(v19 + 4);
      if (v21 >= *(v19 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v10 & 0xFFFFFFFFFFFFFFF8;
      *(*v20 + 8 * v21) = v10 & 0xFFFFFFFFFFFFFFF8;
      ++*(v20 + 2);
      v42 = v10 & 0xFFFFFFFFFFFFFFF8;
      if (*(a1 + 296))
      {
        v23 = 4;
        v24 = a1 + 304;
      }

      else
      {
        v23 = *(a1 + 312);
        if (!v23)
        {
          v32 = 0;
LABEL_20:
          v27 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>((a1 + 296), v32, &v42);
          goto LABEL_14;
        }

        v24 = *(a1 + 304);
      }

      v25 = v23 - 1;
      v26 = v25 & ((v22 >> 4) ^ (v22 >> 9));
      v27 = (v24 + 72 * v26);
      v28 = *v27;
      if (*v27 != v22)
      {
        v37 = 0;
        v38 = 1;
        while (v28 != -4096)
        {
          if (v37)
          {
            v39 = 0;
          }

          else
          {
            v39 = v28 == -8192;
          }

          if (v39)
          {
            v37 = v27;
          }

          v40 = v26 + v38++;
          v26 = v40 & v25;
          v27 = (v24 + 72 * v26);
          v28 = *v27;
          if (*v27 == v22)
          {
            goto LABEL_14;
          }
        }

        if (v37)
        {
          v32 = v37;
        }

        else
        {
          v32 = v27;
        }

        goto LABEL_20;
      }

LABEL_14:
      v29 = &v27[4 * v18];
      v30 = *(v29 + 4);
      if (v30 >= *(v29 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v29[1] + 8 * v30) = v11;
      ++*(v29 + 4);
      v8 += 2;
    }

    while (v8 != v9);
  }

  *(a1 + 592) = a4;
  return a1;
}

void llvm::cfg::LegalizeUpdates<mlir::Block *>(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v52 = 1;
  v49 = a5;
  *v53 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v54 = *v53;
  v55 = *v53;
  v56 = *v53;
  v48 = a4;
  if (a2)
  {
    v8 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
    v10 = v9 | (v9 >> 8) | ((v9 | (v9 >> 8)) >> 16);
    if (v10 >= 4)
    {
      v11 = a4;
      llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(&v52, v10 + 1);
      a4 = v11;
    }
  }

  else if (!a2)
  {
    v22 = 1;
    goto LABEL_16;
  }

  v12 = &a1[2 * a2];
  v13 = a1;
  if (a4)
  {
    do
    {
      v14 = *v13;
      v15 = v13[1];
      v13 += 2;
      v50 = (v15 & 0xFFFFFFFFFFFFFFF8);
      v51 = v14;
      v16 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](&v52, &v50);
      if ((v15 & 4) != 0)
      {
        v17 = *v16 - 1;
      }

      else
      {
        v17 = *v16 + 1;
      }

      *v16 = v17;
    }

    while (v13 != v12);
  }

  else
  {
    do
    {
      v18 = *v13;
      v19 = v13[1];
      v13 += 2;
      v50 = v18;
      v51 = (v19 & 0xFFFFFFFFFFFFFFF8);
      v20 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](&v52, &v50);
      if ((v19 & 4) != 0)
      {
        v21 = *v20 - 1;
      }

      else
      {
        v21 = *v20 + 1;
      }

      *v20 = v21;
    }

    while (v13 != v12);
  }

  v22 = 0;
LABEL_16:
  v23 = &v57;
  *(a3 + 8) = 0;
  if (*(a3 + 12) < v52 >> 1)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v24 = v53;
  if (v52 > 1)
  {
    v29 = &v57;
    if ((v52 & 1) == 0)
    {
      v24 = v53[0];
      v29 = (v53[0] + 24 * LODWORD(v53[1]));
      v27 = v53[0];
      if (!LODWORD(v53[1]))
      {
        goto LABEL_40;
      }
    }

    v27 = v24;
    while (1)
    {
      v30 = *(v27 + 1);
      if ((*v27 != -4096 || v30 != -4096) && (*v27 != -8192 || v30 != -8192))
      {
        break;
      }

      v27 = (v27 + 24);
      if (v27 == v29)
      {
        v27 = v29;
        break;
      }
    }

    v25 = v53[0];
    v26 = v53[1];
    if ((v52 & 1) == 0)
    {
LABEL_39:
      v24 = (v25 + 24 * v26);
LABEL_40:
      v23 = v24;
    }
  }

  else
  {
    v25 = v53[0];
    v26 = v53[1];
    if (v52)
    {
      v27 = &v57;
    }

    else
    {
      v27 = (v53[0] + 24 * LODWORD(v53[1]));
    }

    if (!v52)
    {
      v24 = v53[0];
    }

    v28 = 4;
    if (!v52)
    {
      v28 = v53[1];
    }

    v29 = &v24[3 * v28];
    if (!v52)
    {
      goto LABEL_39;
    }
  }

  while (v27 != v23)
  {
    v31 = *(v27 + 4);
    if (v31)
    {
      v32 = v31 < 1;
      v33 = *(v27 + 1);
      v34 = *(a3 + 8);
      if (v34 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = (*a3 + 16 * v34);
      *v35 = *v27;
      v35[1] = v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * v32);
      ++*(a3 + 8);
    }

    do
    {
      v27 = (v27 + 24);
      if (v27 == v29)
      {
        break;
      }

      v36 = *(v27 + 1);
    }

    while (*v27 == -4096 && v36 == -4096 || *v27 == -8192 && v36 == -8192);
  }

  if ((v22 & 1) == 0)
  {
    if (v48)
    {
      v37 = 0;
      v38 = a1 + 1;
      do
      {
        v39 = *(v38 - 1);
        v50 = (*v38 & 0xFFFFFFFFFFFFFFF8);
        v51 = v39;
        *llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](&v52, &v50) = v37++;
        v38 += 2;
      }

      while (a2 != v37);
    }

    else
    {
      v40 = 0;
      v41 = a1 + 1;
      do
      {
        v42 = *v41 & 0xFFFFFFFFFFFFFFF8;
        v50 = *(v41 - 1);
        v51 = v42;
        *llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](&v52, &v50) = v40++;
        v41 += 2;
      }

      while (a2 != v40);
    }
  }

  v43 = *a3;
  v44 = *(a3 + 8);
  v45 = (*a3 + 16 * v44);
  v50 = &v52;
  v51 = &v49;
  v46 = 126 - 2 * __clz(v44);
  if (v44)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,false>(v43, v45, &v50, v47, 1);
  if ((v52 & 1) == 0)
  {
    llvm::deallocate_buffer(v53[0], (24 * LODWORD(v53[1])));
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(a1, 0, a2) + 16;
    }

    v3 = *(a1 + 8);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v8 = (v7 >> 31) ^ v7;
  v9 = v4 - 1;
  v10 = (v4 - 1) & v8;
  v11 = (v3 + 24 * v10);
  v13 = *v11;
  v12 = v11[1];
  if (*a2 == *v11 && v6 == v12)
  {
    return (v11 + 2);
  }

  v16 = 0;
  v17 = 1;
  while (v13 != -4096 || v12 != -4096)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -8192;
    }

    if (v18 && v13 == -8192)
    {
      v16 = v11;
    }

    v20 = v10 + v17++;
    v10 = v20 & v9;
    v11 = (v3 + 24 * (v20 & v9));
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      return (v11 + 2);
    }
  }

  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(a1, v22, a2) + 16;
}

int *llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(uint64_t a1, unsigned int a2)
{
  v25[10] = *MEMORY[0x277D85DE8];
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v6 > 4)
    {
      v21 = a1;
      buffer = llvm::allocate_buffer(8 * (v6 + 2 * v6), 8uLL);
      a1 = v21;
      *(v21 + 8) = buffer;
      *(v21 + 16) = v6;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::moveFromOldBuckets(a1, v7, &v7[3 * v8]);

    llvm::deallocate_buffer(v7, (24 * v8));
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v10 == -4096 && v9 == -4096)
  {
    v11 = &v23;
  }

  else
  {
    v11 = &v23;
    if (v10 != -8192 || v9 != -8192)
    {
      v23 = *(a1 + 8);
      v24 = *(a1 + 24);
      v11 = v25;
    }
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if ((v13 != -4096 || v12 != -4096) && (v13 != -8192 || v12 != -8192))
  {
    *v11 = *(a1 + 32);
    *(v11 + 4) = *(a1 + 48);
    v11 = (v11 + 24);
  }

  v15 = *(a1 + 56);
  v14 = *(a1 + 64);
  if ((v15 != -4096 || v14 != -4096) && (v15 != -8192 || v14 != -8192))
  {
    *v11 = *(a1 + 56);
    *(v11 + 4) = *(a1 + 72);
    v11 = (v11 + 24);
  }

  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  if ((v17 != -4096 || v16 != -4096) && (v17 != -8192 || v16 != -8192))
  {
    *v11 = *(a1 + 80);
    *(v11 + 4) = *(a1 + 96);
    v11 = (v11 + 24);
  }

  if (v6 >= 5)
  {
    *a1 &= ~1u;
    v18 = a1;
    v19 = llvm::allocate_buffer(8 * (v6 + 2 * v6), 8uLL);
    a1 = v18;
    *(v18 + 8) = v19;
    *(v18 + 16) = v6;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::moveFromOldBuckets(a1, &v23, v11);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = (result + 26);
    v5 = (result + 2);
    v7 = 72;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = *(result + 1);
    v6 = (v5 + 24 * v4);
    v7 = v6 - v5 - 24;
    if (v7 < 0x18)
    {
      v9 = *(result + 1);
LABEL_10:
      v12 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *v9 = v12;
        v9 = (v9 + 24);
      }

      while (v9 != v6);
      goto LABEL_12;
    }
  }

  v8 = v7 / 0x18 + 1;
  v9 = (v5 + 24 * (v8 & 0x1FFFFFFFFFFFFFFELL));
  v10 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *v5 = v10;
    *(v5 + 24) = v10;
    v5 += 3;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_12:
  while (a2 != a3)
  {
    v21 = *a2;
    v22 = a2[1];
    if ((*a2 != -4096 || v22 != -4096) && (v21 != -8192 || v22 != -8192))
    {
      if (*result)
      {
        v14 = 3;
        v13 = result + 2;
      }

      else
      {
        v13 = *(result + 1);
        v14 = result[4] - 1;
      }

      v15 = 0xBF58476D1CE4E5B9 * ((v22 >> 4) ^ (v22 >> 9) | (((v21 >> 4) ^ (v21 >> 9)) << 32));
      v16 = v14 & ((v15 >> 31) ^ v15);
      v17 = &v13[6 * v16];
      v18 = *v17;
      v19 = v17[1];
      if (v21 != *v17 || v22 != v19)
      {
        v23 = 0;
        v24 = 1;
        while (v18 != -4096 || v19 != -4096)
        {
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v19 == -8192;
          }

          if (v25 && v18 == -8192)
          {
            v23 = v17;
          }

          v27 = v16 + v24++;
          v16 = v27 & v14;
          v17 = &v13[6 * (v27 & v14)];
          v18 = *v17;
          v19 = v17[1];
          if (v21 == *v17 && v22 == v19)
          {
            goto LABEL_20;
          }
        }

        if (v23)
        {
          v17 = v23;
        }
      }

LABEL_20:
      *v17 = v21;
      v17[1] = a2[1];
      *(v17 + 4) = *(a2 + 4);
      *result += 2;
    }

    a2 += 3;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::LookupBucketFor<std::pair<mlir::Block *,mlir::Block *>>(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v4 - 1;
    v10 = (v4 - 1) & v8;
    v11 = (v3 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -4096 || v12 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -8192;
        }

        if (v18 && v13 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v3 + 24 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_12;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v11 = 0;
  result = 0;
LABEL_12:
  *a3 = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v10 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_11;
  }

  if (v6 + ~v5 - a1[1] <= v6 >> 3)
  {
LABEL_11:
    v8 = a1;
    v9 = a3;
    llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::LookupBucketFor<std::pair<mlir::Block *,mlir::Block *>>(v8, v9, &v10);
    a1 = v8;
    a3 = v9;
    v4 = *v8;
    v3 = v10;
  }

  *a1 = v4 + 2;
  if (*v3 != -4096 || *(v3 + 8) != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = a3[1];
  *(v3 + 16) = 0;
  return v3;
}

void std::__introsort<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v40 = *MEMORY[0x277D85DE8];
LABEL_2:
  v9 = a1;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(v9, v9 + 2, a2 - 2, a3);
          return;
        case 4uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(v9, v9 + 2, v9 + 4, a2 - 2, a3);
          return;
        case 5uLL:
          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v27 = *a3;
        v28 = *(a2 - 2);
        v29 = *(a2 - 1);
        v30 = a2 - 2;
        v39[0] = v28;
        v39[1] = v29 & 0xFFFFFFFFFFFFFFF8;
        v31 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v27, v39);
        v32 = *a3;
        v33 = v9[1] & 0xFFFFFFFFFFFFFFF8;
        v39[0] = *v9;
        v39[1] = v33;
        v34 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v32, v39);
        if (**(a3 + 8))
        {
          v35 = *v31 < *v34;
        }

        else
        {
          v35 = *v31 > *v34;
        }

        if (v35)
        {
          *v39 = *v9;
          *v9 = *v30;
          *v30 = *v39;
        }

        return;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(v9, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(v9, a2, a3);
      }

      return;
    }

    if (v10 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(&a1[2 * (v12 >> 1)], a1, a2 - 2, a3);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, &a1[2 * (v12 >> 1)], a2 - 2, a3);
      v15 = 2 * v13;
      v16 = &a1[2 * v13 - 2];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1 + 2, v16, a2 - 4, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1 + 4, &a1[v15 + 2], a2 - 6, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(v16, v14, &a1[v15 + 2], a3);
      *v39 = *a1;
      *a1 = *v14;
      *v14 = *v39;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v17 = *a3;
    v18 = *(a1 - 1) & 0xFFFFFFFFFFFFFFF8;
    v39[0] = *(a1 - 2);
    v39[1] = v18;
    v19 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v17, v39);
    v20 = *a3;
    v21 = a1[1] & 0xFFFFFFFFFFFFFFF8;
    v39[0] = *a1;
    v39[1] = v21;
    v22 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v20, v39);
    if (**(a3 + 8))
    {
      v23 = *v19 < *v22;
    }

    else
    {
      v23 = *v19 > *v22;
    }

    if (!v23)
    {
      v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::cfg::Update<mlir::Block *> *,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &>(a1, a2, a3);
      goto LABEL_26;
    }

LABEL_21:
    v24 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::cfg::Update<mlir::Block *> *,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &>(a1, a2, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

    v26 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(a1, v24, a3);
    v9 = v24 + 2;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(v24 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v26)
    {
LABEL_24:
      std::__introsort<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,false>(a1, v24, a3, -v11, a5 & 1);
      v9 = v24 + 2;
LABEL_26:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v9 != a2)
  {
    v36 = (v12 - 2) >> 1;
    v37 = v36 + 1;
    v38 = &v9[2 * v36];
    do
    {
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(v9, a3, (a2 - v9) >> 4, v38);
      v38 -= 2;
      --v37;
    }

    while (v37);
    std::__sort_heap[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(v9, a2, a3);
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = a2[1] & 0xFFFFFFFFFFFFFFF8;
  v49 = *a2;
  v50 = v9;
  v10 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v8, &v49);
  v11 = *a4;
  v12 = a1[1] & 0xFFFFFFFFFFFFFFF8;
  v49 = *a1;
  v50 = v12;
  v13 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v11, &v49);
  v14 = *a4;
  LODWORD(v13) = *v13;
  v15 = *v10 <= v13;
  v16 = *v10 < v13;
  v17 = !v15;
  if (!**(a4 + 8))
  {
    v16 = v17;
  }

  if (v16)
  {
    v18 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    v49 = *a3;
    v50 = v18;
    v19 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v14, &v49);
    v20 = *a4;
    v21 = a2[1] & 0xFFFFFFFFFFFFFFF8;
    v49 = *a2;
    v50 = v21;
    v22 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v20, &v49);
    if (**(a4 + 8))
    {
      v23 = *v19 < *v22;
    }

    else
    {
      v23 = *v19 > *v22;
    }

    if (v23)
    {
      v24 = *a1;
      *a1 = *a3;
    }

    else
    {
      v40 = *a1;
      *a1 = *a2;
      *a2 = v40;
      v41 = *a4;
      v42 = a3[1] & 0xFFFFFFFFFFFFFFF8;
      v49 = *a3;
      v50 = v42;
      v43 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v41, &v49);
      v44 = *a4;
      v45 = a2[1] & 0xFFFFFFFFFFFFFFF8;
      v49 = *a2;
      v50 = v45;
      v46 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v44, &v49);
      if (**(a4 + 8))
      {
        v47 = *v43 < *v46;
      }

      else
      {
        v47 = *v43 > *v46;
      }

      if (!v47)
      {
        return 1;
      }

      v24 = *a2;
      *a2 = *a3;
    }

    *a3 = v24;
    return 1;
  }

  v25 = a3[1] & 0xFFFFFFFFFFFFFFF8;
  v49 = *a3;
  v50 = v25;
  v26 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v14, &v49);
  v27 = *a4;
  v28 = a2[1] & 0xFFFFFFFFFFFFFFF8;
  v49 = *a2;
  v50 = v28;
  v29 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v27, &v49);
  if (**(a4 + 8))
  {
    v30 = *v26 < *v29;
  }

  else
  {
    v30 = *v26 > *v29;
  }

  if (v30)
  {
    v31 = *a2;
    *a2 = *a3;
    *a3 = v31;
    v32 = *a4;
    v33 = a2[1] & 0xFFFFFFFFFFFFFFF8;
    v49 = *a2;
    v50 = v33;
    v34 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v32, &v49);
    v35 = *a4;
    v36 = a1[1] & 0xFFFFFFFFFFFFFFF8;
    v49 = *a1;
    v50 = v36;
    v37 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v35, &v49);
    if (**(a4 + 8))
    {
      v38 = *v34 < *v37;
    }

    else
    {
      v38 = *v34 > *v37;
    }

    if (v38)
    {
      v39 = *a1;
      *a1 = *a2;
      *a2 = v39;
    }

    return 1;
  }

  return 0;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = a4[1] & 0xFFFFFFFFFFFFFFF8;
  v34 = *a4;
  v35 = v11;
  v12 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v10, &v34);
  v13 = *a5;
  v14 = a3[1] & 0xFFFFFFFFFFFFFFF8;
  v34 = *a3;
  v35 = v14;
  v15 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v13, &v34);
  if (**(a5 + 8))
  {
    v17 = *v12 < *v15;
  }

  else
  {
    v17 = *v12 > *v15;
  }

  if (v17)
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    v19 = *a5;
    v20 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    v34 = *a3;
    v35 = v20;
    v21 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v19, &v34);
    v22 = *a5;
    v23 = a2[1] & 0xFFFFFFFFFFFFFFF8;
    v34 = *a2;
    v35 = v23;
    v24 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v22, &v34);
    if (**(a5 + 8) ? *v21 < *v24 : *v21 > *v24)
    {
      v26 = *a2;
      *a2 = *a3;
      *a3 = v26;
      v27 = *a5;
      v28 = a2[1] & 0xFFFFFFFFFFFFFFF8;
      v34 = *a2;
      v35 = v28;
      v29 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v27, &v34);
      v30 = *a5;
      v31 = a1[1] & 0xFFFFFFFFFFFFFFF8;
      v34 = *a1;
      v35 = v31;
      v32 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v30, &v34);
      if (**(a5 + 8))
      {
        v33 = *v29 < *v32;
      }

      else
      {
        v33 = *v29 > *v32;
      }

      if (v33)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v46 = *MEMORY[0x277D85DE8];
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = a5[1] & 0xFFFFFFFFFFFFFFF8;
  v44 = *a5;
  v45 = v13;
  v14 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v12, &v44);
  v15 = *a6;
  v16 = a4[1] & 0xFFFFFFFFFFFFFFF8;
  v44 = *a4;
  v45 = v16;
  v17 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v15, &v44);
  if (**(a6 + 8))
  {
    v19 = *v14 < *v17;
  }

  else
  {
    v19 = *v14 > *v17;
  }

  if (v19)
  {
    v20 = *a4;
    *a4 = *a5;
    *a5 = v20;
    v21 = *a6;
    v22 = a4[1] & 0xFFFFFFFFFFFFFFF8;
    v44 = *a4;
    v45 = v22;
    v23 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v21, &v44);
    v24 = *a6;
    v25 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    v44 = *a3;
    v45 = v25;
    v26 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v24, &v44);
    if (**(a6 + 8) ? *v23 < *v26 : *v23 > *v26)
    {
      v28 = *a3;
      *a3 = *a4;
      *a4 = v28;
      v29 = *a6;
      v30 = a3[1] & 0xFFFFFFFFFFFFFFF8;
      v44 = *a3;
      v45 = v30;
      v31 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v29, &v44);
      v32 = *a6;
      v33 = a2[1] & 0xFFFFFFFFFFFFFFF8;
      v44 = *a2;
      v45 = v33;
      v34 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v32, &v44);
      if (**(a6 + 8) ? *v31 < *v34 : *v31 > *v34)
      {
        v36 = *a2;
        *a2 = *a3;
        *a3 = v36;
        v37 = *a6;
        v38 = a2[1] & 0xFFFFFFFFFFFFFFF8;
        v44 = *a2;
        v45 = v38;
        v39 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v37, &v44);
        v40 = *a6;
        v41 = a1[1] & 0xFFFFFFFFFFFFFFF8;
        v44 = *a1;
        v45 = v41;
        v42 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v40, &v44);
        if (**(a6 + 8))
        {
          v43 = *v39 < *v42;
        }

        else
        {
          v43 = *v39 > *v42;
        }

        if (v43)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v65 = v3;
  v66 = v4;
  v5 = a2;
  v6 = result;
  v7 = (result + 16);
  if ((result + 16) == a2)
  {
    return result;
  }

  v9 = result;
  while (2)
  {
    v11 = v7;
    v12 = *a3;
    v13 = v9[3] & 0xFFFFFFFFFFFFFFF8;
    v63 = v9[2];
    v64 = v13;
    v14 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v12, &v63);
    v15 = *a3;
    v16 = v9[1] & 0xFFFFFFFFFFFFFFF8;
    v63 = *v9;
    v64 = v16;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v15, &v63);
    if (**(a3 + 8))
    {
      v17 = *v14 < *result;
    }

    else
    {
      v17 = *v14 > *result;
    }

    if (!v17)
    {
      goto LABEL_6;
    }

    v18 = *v11;
    v62 = v9[3];
    v19 = v62 & 0xFFFFFFFFFFFFFFF8;
    v20 = 0xBF58476D1CE4E5B9 * (((v62 & 0xFFFFFFF8) >> 4) ^ ((v62 & 0xFFFFFFF8) >> 9) | (((v18 >> 4) ^ (v18 >> 9)) << 32));
    v21 = (v20 >> 31) ^ v20;
    v10 = v11;
    while (1)
    {
      *v10 = *v9;
      if (v9 == v6)
      {
        break;
      }

      v10 = v9;
      result = *a3;
      v63 = v18;
      v64 = v62 & 0xFFFFFFFFFFFFFFF8;
      v36 = result + 8;
      if (*result)
      {
        v37 = 4;
      }

      else
      {
        v37 = *(result + 16);
        if (!v37)
        {
          v47 = 0;
LABEL_38:
          v40 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(result, v47, &v63);
          result = *a3;
          goto LABEL_34;
        }

        v36 = *(result + 8);
      }

      v38 = v37 - 1;
      v39 = v38 & v21;
      v40 = v36 + 24 * (v38 & v21);
      v41 = *v40;
      v42 = *(v40 + 8);
      if (v18 != *v40 || v42 != v19)
      {
        v55 = 0;
        v56 = 1;
        while (v41 != -4096 || v42 != -4096)
        {
          if (v55)
          {
            v57 = 0;
          }

          else
          {
            v57 = v42 == -8192;
          }

          if (v57 && v41 == -8192)
          {
            v55 = v40;
          }

          v59 = v39 + v56++;
          v39 = v59 & v38;
          v40 = v36 + 24 * v39;
          v41 = *v40;
          v42 = *(v40 + 8);
          if (v18 == *v40 && v42 == v19)
          {
            goto LABEL_34;
          }
        }

        if (v55)
        {
          v47 = v55;
        }

        else
        {
          v47 = v40;
        }

        goto LABEL_38;
      }

LABEL_34:
      v44 = *(v9 - 2);
      v45 = *(v9 - 1) & 0xFFFFFFFFFFFFFFF8;
      v63 = v44;
      v64 = v45;
      v46 = result + 8;
      if (*result)
      {
        v22 = 4;
      }

      else
      {
        v22 = *(result + 16);
        if (!v22)
        {
          v48 = 0;
          goto LABEL_40;
        }

        v46 = *(result + 8);
      }

      v23 = 0xBF58476D1CE4E5B9 * ((v45 >> 4) ^ (v45 >> 9) | (((v44 >> 4) ^ (v44 >> 9)) << 32));
      v24 = (v23 >> 31) ^ v23;
      v25 = v22 - 1;
      v26 = (v22 - 1) & v24;
      v27 = v46 + 24 * v26;
      v28 = *v27;
      v29 = *(v27 + 8);
      if (v44 == *v27 && v29 == v45)
      {
        goto LABEL_18;
      }

      v49 = 0;
      v50 = 1;
      while (v28 != -4096 || v29 != -4096)
      {
        if (v49)
        {
          v51 = 0;
        }

        else
        {
          v51 = v29 == -8192;
        }

        if (v51 && v28 == -8192)
        {
          v49 = v27;
        }

        v53 = v26 + v50++;
        v26 = v53 & v25;
        v27 = v46 + 24 * (v53 & v25);
        v28 = *v27;
        v29 = *(v27 + 8);
        if (v44 == *v27 && v29 == v45)
        {
          goto LABEL_18;
        }
      }

      if (v49)
      {
        v48 = v49;
      }

      else
      {
        v48 = v27;
      }

LABEL_40:
      result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(result, v48, &v63);
      v27 = result;
LABEL_18:
      v9 -= 2;
      v31 = *(v40 + 16);
      v32 = *(v27 + 16);
      v33 = v31 <= v32;
      v34 = v31 < v32;
      v35 = !v33;
      if (!**(a3 + 8))
      {
        v34 = v35;
      }

      if (!v34)
      {
        goto LABEL_5;
      }
    }

    v10 = v6;
LABEL_5:
    *v10 = v18;
    v10[1] = v62;
    v5 = a2;
LABEL_6:
    v7 = v11 + 2;
    v9 = v11;
    if (v11 + 2 != v5)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v65 = v3;
    v66 = v4;
    v5 = a2;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      while (1)
      {
        v9 = v7;
        v10 = *a3;
        v11 = v6[3] & 0xFFFFFFFFFFFFFFF8;
        v63 = v6[2];
        v64 = v11;
        v12 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v10, &v63);
        v13 = *a3;
        v14 = v6[1] & 0xFFFFFFFFFFFFFFF8;
        v63 = *v6;
        v64 = v14;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v13, &v63);
        if (**(a3 + 8) ? *v12 < *result : *v12 > *result)
        {
          break;
        }

LABEL_5:
        v7 = v9 + 2;
        v6 = v9;
        if (v9 + 2 == v5)
        {
          return result;
        }
      }

      v16 = *v9;
      v62 = v6[3];
      v17 = v62 & 0xFFFFFFFFFFFFFFF8;
      v18 = 0xBF58476D1CE4E5B9 * (((v62 & 0xFFFFFFF8) >> 4) ^ ((v62 & 0xFFFFFFF8) >> 9) | (((v16 >> 4) ^ (v16 >> 9)) << 32));
      v19 = (v18 >> 31) ^ v18;
      v20 = v9;
      while (1)
      {
        v35 = v20;
        v20 = v6;
        *v35 = *v6;
        result = *a3;
        v63 = v16;
        v64 = v62 & 0xFFFFFFFFFFFFFFF8;
        v36 = result + 8;
        if (*result)
        {
          v37 = 4;
        }

        else
        {
          v37 = *(result + 16);
          if (!v37)
          {
            v47 = 0;
LABEL_36:
            v40 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(result, v47, &v63);
            result = *a3;
            goto LABEL_32;
          }

          v36 = *(result + 8);
        }

        v38 = v37 - 1;
        v39 = v38 & v19;
        v40 = v36 + 24 * (v38 & v19);
        v41 = *v40;
        v42 = *(v40 + 8);
        if (v16 != *v40 || v42 != v17)
        {
          v55 = 0;
          v56 = 1;
          while (v41 != -4096 || v42 != -4096)
          {
            if (v55)
            {
              v57 = 0;
            }

            else
            {
              v57 = v42 == -8192;
            }

            if (v57 && v41 == -8192)
            {
              v55 = v40;
            }

            v59 = v39 + v56++;
            v39 = v59 & v38;
            v40 = v36 + 24 * v39;
            v41 = *v40;
            v42 = *(v40 + 8);
            if (v16 == *v40 && v42 == v17)
            {
              goto LABEL_32;
            }
          }

          if (v55)
          {
            v47 = v55;
          }

          else
          {
            v47 = v40;
          }

          goto LABEL_36;
        }

LABEL_32:
        v44 = *(v6 - 2);
        v45 = *(v6 - 1) & 0xFFFFFFFFFFFFFFF8;
        v63 = v44;
        v64 = v45;
        v46 = result + 8;
        if (*result)
        {
          v21 = 4;
        }

        else
        {
          v21 = *(result + 16);
          if (!v21)
          {
            v48 = 0;
            goto LABEL_38;
          }

          v46 = *(result + 8);
        }

        v22 = 0xBF58476D1CE4E5B9 * ((v45 >> 4) ^ (v45 >> 9) | (((v44 >> 4) ^ (v44 >> 9)) << 32));
        v23 = (v22 >> 31) ^ v22;
        v24 = v21 - 1;
        v25 = (v21 - 1) & v23;
        v26 = v46 + 24 * v25;
        v27 = *v26;
        v28 = *(v26 + 8);
        if (v44 == *v26 && v28 == v45)
        {
          goto LABEL_17;
        }

        v49 = 0;
        v50 = 1;
        while (v27 != -4096 || v28 != -4096)
        {
          if (v49)
          {
            v51 = 0;
          }

          else
          {
            v51 = v28 == -8192;
          }

          if (v51 && v27 == -8192)
          {
            v49 = v26;
          }

          v53 = v25 + v50++;
          v25 = v53 & v24;
          v26 = v46 + 24 * (v53 & v24);
          v27 = *v26;
          v28 = *(v26 + 8);
          if (v44 == *v26 && v28 == v45)
          {
            goto LABEL_17;
          }
        }

        if (v49)
        {
          v48 = v49;
        }

        else
        {
          v48 = v26;
        }

LABEL_38:
        result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(result, v48, &v63);
        v26 = result;
LABEL_17:
        v6 -= 2;
        v30 = *(v40 + 16);
        v31 = *(v26 + 16);
        v32 = v30 <= v31;
        v33 = v30 < v31;
        v34 = !v32;
        if (!**(a3 + 8))
        {
          v33 = v34;
        }

        if (!v33)
        {
          v5 = a2;
          *v20 = v16;
          v20[1] = v62;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::cfg::Update<mlir::Block *> *,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &>(void *a1, _OWORD *a2, uint64_t *a3)
{
  v193 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = *a3;
  v190 = v6;
  v9 = v6 & 0xFFFFFFFFFFFFFFF8;
  *&v192 = v7;
  *(&v192 + 1) = v6 & 0xFFFFFFFFFFFFFFF8;
  v10 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v8, &v192);
  v11 = *a3;
  v12 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8;
  *&v192 = *(a2 - 2);
  *(&v192 + 1) = v12;
  v13 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v11, &v192);
  if (*a3[1])
  {
    v14 = *v10 < *v13;
  }

  else
  {
    v14 = *v10 > *v13;
  }

  v191 = a1;
  if (v14)
  {
    v15 = a1;
    do
    {
      v16 = *a3;
      *&v192 = v7;
      *(&v192 + 1) = v9;
      v17 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v16, &v192);
      v18 = *a3;
      v19 = v15[2];
      v20 = v15[3];
      v15 += 2;
      *&v192 = v19;
      *(&v192 + 1) = v20 & 0xFFFFFFFFFFFFFFF8;
      v21 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v18, &v192);
      if (*a3[1])
      {
        v22 = *v17 < *v21;
      }

      else
      {
        v22 = *v17 > *v21;
      }
    }

    while (!v22);
  }

  else
  {
    v23 = a1 + 2;
    do
    {
      v15 = v23;
      if (v23 >= a2)
      {
        break;
      }

      v24 = *a3;
      *&v192 = v7;
      *(&v192 + 1) = v9;
      v25 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v24, &v192);
      v26 = *a3;
      v27 = v15[1] & 0xFFFFFFFFFFFFFFF8;
      *&v192 = *v15;
      *(&v192 + 1) = v27;
      v28 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v26, &v192);
      v29 = *v25 < *v28;
      if (!*a3[1])
      {
        v29 = *v25 > *v28;
      }

      v23 = v15 + 2;
    }

    while (!v29);
  }

  if (v15 < a2)
  {
    do
    {
      v30 = *a3;
      *&v192 = v7;
      *(&v192 + 1) = v9;
      v31 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v30, &v192);
      v32 = *a3;
      v33 = *(a2 - 2);
      v34 = *(a2-- - 1);
      *&v192 = v33;
      *(&v192 + 1) = v34 & 0xFFFFFFFFFFFFFFF8;
      v35 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v32, &v192);
      if (*a3[1])
      {
        v36 = *v31 < *v35;
      }

      else
      {
        v36 = *v31 > *v35;
      }
    }

    while (v36);
  }

  if (v15 < a2)
  {
    v37 = 0xBF58476D1CE4E5B9;
    v38 = 0xBF58476D1CE4E5B9 * ((v9 >> 4) ^ (v9 >> 9) | (((v7 >> 4) ^ (v7 >> 9)) << 32));
    v39 = (v38 >> 31) ^ v38;
    do
    {
      v192 = *v15;
      *v15 = *a2;
      *a2 = v192;
      do
      {
        v56 = *a3;
        v58 = *a3 + 8;
        v57 = **a3;
        v59 = v57 & 1;
        if (v57)
        {
          v60 = 4;
          v61 = *a3 + 8;
        }

        else
        {
          v60 = *(v56 + 16);
          if (!v60)
          {
            v64 = 0;
            v72 = 0;
            goto LABEL_51;
          }

          v61 = *(v56 + 8);
        }

        v62 = v60 - 1;
        v63 = v62 & v39;
        v64 = v61 + 24 * (v62 & v39);
        v65 = *v64;
        v66 = *(v64 + 8);
        if (v7 == *v64 && v66 == v9)
        {
          goto LABEL_47;
        }

        v80 = 0;
        v81 = 1;
        while (v65 != -4096 || v66 != -4096)
        {
          if (v80)
          {
            v82 = 0;
          }

          else
          {
            v82 = v66 == -8192;
          }

          if (v82 && v65 == -8192)
          {
            v80 = v64;
          }

          v84 = v63 + v81++;
          v63 = v84 & v62;
          v64 = v61 + 24 * v63;
          v65 = *v64;
          v66 = *(v64 + 8);
          if (v7 == *v64 && v66 == v9)
          {
            goto LABEL_47;
          }
        }

        if (v80)
        {
          v64 = v80;
        }

        if (v57)
        {
          v72 = 4;
        }

        else
        {
          v72 = *(v56 + 16);
        }

LABEL_51:
        if (4 * (v57 >> 1) + 4 >= 3 * v72)
        {
          v72 *= 2;
        }

        else if (v72 + ~(v57 >> 1) - *(v56 + 4) > v72 >> 3)
        {
          goto LABEL_53;
        }

        v86 = v39;
        v87 = v37;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(*a3, v72);
        v57 = *v56;
        if (*v56)
        {
          v88 = 4;
          v37 = v87;
          v39 = v86;
LABEL_113:
          v59 = *v56 & 1;
          v90 = v88 - 1;
          v91 = v90 & v39;
          v64 = v58 + 24 * (v90 & v39);
          v92 = *v64;
          v93 = *(v64 + 8);
          if (v7 != *v64 || v93 != v9)
          {
            v95 = 0;
            v96 = 1;
            while (v92 != -4096 || v93 != -4096)
            {
              if (v95)
              {
                v97 = 0;
              }

              else
              {
                v97 = v93 == -8192;
              }

              if (v97 && v92 == -8192)
              {
                v95 = v64;
              }

              v99 = v91 + v96++;
              v91 = v99 & v90;
              v64 = v58 + 24 * v91;
              v92 = *v64;
              v93 = *(v64 + 8);
              if (v7 == *v64 && v93 == v9)
              {
                goto LABEL_158;
              }
            }

            if (v95)
            {
              v64 = v95;
            }

LABEL_158:
            v37 = v87;
            v39 = v86;
          }

          goto LABEL_53;
        }

        v88 = *(v56 + 16);
        v39 = v86;
        if (v88)
        {
          v58 = *(v56 + 8);
          v37 = v87;
          goto LABEL_113;
        }

        v59 = 0;
        v64 = 0;
        v37 = v87;
LABEL_53:
        *v56 = (v57 & 0xFFFFFFFE | v59) + 2;
        if (*v64 != -4096 || *(v64 + 8) != -4096)
        {
          --*(v56 + 4);
        }

        *v64 = v7;
        *(v64 + 8) = v9;
        *(v64 + 16) = 0;
        v56 = *a3;
        v57 = **a3;
LABEL_47:
        v68 = v15[2];
        v69 = v15[3] & 0xFFFFFFFFFFFFFFF8;
        v70 = v57 & 1;
        v71 = v56 + 8;
        if (v57)
        {
          v40 = 4;
          v41 = v56 + 8;
        }

        else
        {
          v40 = *(v56 + 16);
          if (!v40)
          {
            v46 = 0;
            v73 = 0;
            goto LABEL_58;
          }

          v41 = *(v56 + 8);
        }

        v42 = ((v69 >> 4) ^ (v69 >> 9) | (((v68 >> 4) ^ (v68 >> 9)) << 32)) * v37;
        v43 = (v42 >> 31) ^ v42;
        v44 = v40 - 1;
        v45 = (v40 - 1) & v43;
        v46 = v41 + 24 * v45;
        v47 = *v46;
        v48 = *(v46 + 8);
        if (v68 == *v46 && v48 == v69)
        {
          goto LABEL_31;
        }

        v74 = 0;
        v75 = 1;
        while (v47 != -4096 || v48 != -4096)
        {
          if (v74)
          {
            v76 = 0;
          }

          else
          {
            v76 = v48 == -8192;
          }

          if (v76 && v47 == -8192)
          {
            v74 = v46;
          }

          v78 = v45 + v75++;
          v45 = v78 & v44;
          v46 = v41 + 24 * (v78 & v44);
          v47 = *v46;
          v48 = *(v46 + 8);
          if (v68 == *v46 && v48 == v69)
          {
            goto LABEL_31;
          }
        }

        if (v74)
        {
          v46 = v74;
        }

        if (v57)
        {
          v73 = 4;
        }

        else
        {
          v73 = *(v56 + 16);
        }

LABEL_58:
        if (4 * (v57 >> 1) + 4 >= 3 * v73)
        {
          v73 *= 2;
        }

        else if (v73 + ~(v57 >> 1) - *(v56 + 4) > v73 >> 3)
        {
          goto LABEL_60;
        }

        v188 = v39;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(v56, v73);
        v57 = *v56;
        if (*v56)
        {
          v89 = 4;
          v37 = 0xBF58476D1CE4E5B9;
          v39 = v188;
LABEL_134:
          v70 = *v56 & 1;
          v101 = 0xBF58476D1CE4E5B9 * ((v69 >> 4) ^ (v69 >> 9) | (((v68 >> 4) ^ (v68 >> 9)) << 32));
          v102 = (v101 >> 31) ^ v101;
          v103 = v89 - 1;
          v104 = (v89 - 1) & v102;
          v46 = v71 + 24 * v104;
          v105 = *v46;
          v106 = *(v46 + 8);
          if (v68 != *v46 || v106 != v69)
          {
            v108 = 0;
            v109 = 1;
            while (v105 != -4096 || v106 != -4096)
            {
              if (v108)
              {
                v110 = 0;
              }

              else
              {
                v110 = v106 == -8192;
              }

              if (v110 && v105 == -8192)
              {
                v108 = v46;
              }

              v112 = v104 + v109++;
              v104 = v112 & v103;
              v46 = v71 + 24 * (v112 & v103);
              v105 = *v46;
              v106 = *(v46 + 8);
              if (v68 == *v46 && v106 == v69)
              {
                goto LABEL_161;
              }
            }

            if (v108)
            {
              v46 = v108;
            }

LABEL_161:
            v37 = 0xBF58476D1CE4E5B9;
            v39 = v188;
          }

          goto LABEL_60;
        }

        v89 = *(v56 + 16);
        v37 = 0xBF58476D1CE4E5B9;
        if (v89)
        {
          v71 = *(v56 + 8);
          v39 = v188;
          goto LABEL_134;
        }

        v70 = 0;
        v46 = 0;
        v39 = v188;
LABEL_60:
        *v56 = (v57 & 0xFFFFFFFE | v70) + 2;
        if (*v46 != -4096 || *(v46 + 8) != -4096)
        {
          --*(v56 + 4);
        }

        *v46 = v68;
        *(v46 + 8) = v69;
        *(v46 + 16) = 0;
LABEL_31:
        v15 += 2;
        v50 = *(v64 + 16);
        v51 = *(v46 + 16);
        v52 = v50 <= v51;
        v53 = v50 < v51;
        v54 = !v52;
        if (*a3[1])
        {
          v55 = v53;
        }

        else
        {
          v55 = v54;
        }
      }

      while (v55 != 1);
      do
      {
        v129 = *a3;
        v131 = *a3 + 8;
        v130 = **a3;
        v132 = v130 & 1;
        if (v130)
        {
          v133 = 4;
          v134 = *a3 + 8;
        }

        else
        {
          v133 = *(v129 + 16);
          if (!v133)
          {
            v137 = 0;
            v145 = 0;
            goto LABEL_188;
          }

          v134 = *(v129 + 8);
        }

        v135 = v133 - 1;
        v136 = v135 & v39;
        v137 = v134 + 24 * (v135 & v39);
        v138 = *v137;
        v139 = *(v137 + 8);
        if (v7 == *v137 && v139 == v9)
        {
          goto LABEL_184;
        }

        v153 = 0;
        v154 = 1;
        while (v138 != -4096 || v139 != -4096)
        {
          if (v153)
          {
            v155 = 0;
          }

          else
          {
            v155 = v139 == -8192;
          }

          if (v155 && v138 == -8192)
          {
            v153 = v137;
          }

          v157 = v136 + v154++;
          v136 = v157 & v135;
          v137 = v134 + 24 * v136;
          v138 = *v137;
          v139 = *(v137 + 8);
          if (v7 == *v137 && v139 == v9)
          {
            goto LABEL_184;
          }
        }

        if (v153)
        {
          v137 = v153;
        }

        if (v130)
        {
          v145 = 4;
        }

        else
        {
          v145 = *(v129 + 16);
        }

LABEL_188:
        if (4 * (v130 >> 1) + 4 >= 3 * v145)
        {
          v145 *= 2;
        }

        else if (v145 + ~(v130 >> 1) - *(v129 + 4) > v145 >> 3)
        {
          goto LABEL_190;
        }

        v159 = v39;
        v160 = v37;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(*a3, v145);
        v130 = *v129;
        if (*v129)
        {
          v161 = 4;
          v37 = v160;
          v39 = v159;
LABEL_250:
          v132 = *v129 & 1;
          v163 = v161 - 1;
          v164 = v163 & v39;
          v137 = v131 + 24 * (v163 & v39);
          v165 = *v137;
          v166 = *(v137 + 8);
          if (v7 != *v137 || v166 != v9)
          {
            v168 = 0;
            v169 = 1;
            while (v165 != -4096 || v166 != -4096)
            {
              if (v168)
              {
                v170 = 0;
              }

              else
              {
                v170 = v166 == -8192;
              }

              if (v170 && v165 == -8192)
              {
                v168 = v137;
              }

              v172 = v164 + v169++;
              v164 = v172 & v163;
              v137 = v131 + 24 * v164;
              v165 = *v137;
              v166 = *(v137 + 8);
              if (v7 == *v137 && v166 == v9)
              {
                goto LABEL_295;
              }
            }

            if (v168)
            {
              v137 = v168;
            }

LABEL_295:
            v37 = v160;
            v39 = v159;
          }

          goto LABEL_190;
        }

        v161 = *(v129 + 16);
        v39 = v159;
        if (v161)
        {
          v131 = *(v129 + 8);
          v37 = v160;
          goto LABEL_250;
        }

        v132 = 0;
        v137 = 0;
        v37 = v160;
LABEL_190:
        *v129 = (v130 & 0xFFFFFFFE | v132) + 2;
        if (*v137 != -4096 || *(v137 + 8) != -4096)
        {
          --*(v129 + 4);
        }

        *v137 = v7;
        *(v137 + 8) = v9;
        *(v137 + 16) = 0;
        v129 = *a3;
        v130 = **a3;
LABEL_184:
        v141 = *(a2 - 2);
        v142 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8;
        v143 = v130 & 1;
        v144 = v129 + 8;
        if (v130)
        {
          v114 = 4;
          v115 = v129 + 8;
        }

        else
        {
          v114 = *(v129 + 16);
          if (!v114)
          {
            v120 = 0;
            v146 = 0;
            goto LABEL_195;
          }

          v115 = *(v129 + 8);
        }

        v116 = ((v142 >> 4) ^ (v142 >> 9) | (((v141 >> 4) ^ (v141 >> 9)) << 32)) * v37;
        v117 = (v116 >> 31) ^ v116;
        v118 = v114 - 1;
        v119 = (v114 - 1) & v117;
        v120 = v115 + 24 * v119;
        v121 = *v120;
        v122 = *(v120 + 8);
        if (v141 == *v120 && v122 == v142)
        {
          goto LABEL_168;
        }

        v147 = 0;
        v148 = 1;
        while (v121 != -4096 || v122 != -4096)
        {
          if (v147)
          {
            v149 = 0;
          }

          else
          {
            v149 = v122 == -8192;
          }

          if (v149 && v121 == -8192)
          {
            v147 = v120;
          }

          v151 = v119 + v148++;
          v119 = v151 & v118;
          v120 = v115 + 24 * (v151 & v118);
          v121 = *v120;
          v122 = *(v120 + 8);
          if (v141 == *v120 && v122 == v142)
          {
            goto LABEL_168;
          }
        }

        if (v147)
        {
          v120 = v147;
        }

        if (v130)
        {
          v146 = 4;
        }

        else
        {
          v146 = *(v129 + 16);
        }

LABEL_195:
        if (4 * (v130 >> 1) + 4 >= 3 * v146)
        {
          v146 *= 2;
        }

        else if (v146 + ~(v130 >> 1) - *(v129 + 4) > v146 >> 3)
        {
          goto LABEL_197;
        }

        v189 = v39;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(v129, v146);
        v130 = *v129;
        if (*v129)
        {
          v162 = 4;
          v37 = 0xBF58476D1CE4E5B9;
          v39 = v189;
LABEL_271:
          v143 = *v129 & 1;
          v174 = 0xBF58476D1CE4E5B9 * ((v142 >> 4) ^ (v142 >> 9) | (((v141 >> 4) ^ (v141 >> 9)) << 32));
          v175 = (v174 >> 31) ^ v174;
          v176 = v162 - 1;
          v177 = (v162 - 1) & v175;
          v120 = v144 + 24 * v177;
          v178 = *v120;
          v179 = *(v120 + 8);
          if (v141 != *v120 || v179 != v142)
          {
            v181 = 0;
            v182 = 1;
            while (v178 != -4096 || v179 != -4096)
            {
              if (v181)
              {
                v183 = 0;
              }

              else
              {
                v183 = v179 == -8192;
              }

              if (v183 && v178 == -8192)
              {
                v181 = v120;
              }

              v185 = v177 + v182++;
              v177 = v185 & v176;
              v120 = v144 + 24 * (v185 & v176);
              v178 = *v120;
              v179 = *(v120 + 8);
              if (v141 == *v120 && v179 == v142)
              {
                goto LABEL_298;
              }
            }

            if (v181)
            {
              v120 = v181;
            }

LABEL_298:
            v37 = 0xBF58476D1CE4E5B9;
            v39 = v189;
          }

          goto LABEL_197;
        }

        v162 = *(v129 + 16);
        v37 = 0xBF58476D1CE4E5B9;
        if (v162)
        {
          v144 = *(v129 + 8);
          v39 = v189;
          goto LABEL_271;
        }

        v143 = 0;
        v120 = 0;
        v39 = v189;
LABEL_197:
        *v129 = (v130 & 0xFFFFFFFE | v143) + 2;
        if (*v120 != -4096 || *(v120 + 8) != -4096)
        {
          --*(v129 + 4);
        }

        *v120 = v141;
        *(v120 + 8) = v142;
        *(v120 + 16) = 0;
LABEL_168:
        --a2;
        v124 = *(v137 + 16);
        v125 = *(v120 + 16);
        v52 = v124 <= v125;
        v126 = v124 < v125;
        v127 = !v52;
        if (*a3[1])
        {
          v128 = v126;
        }

        else
        {
          v128 = v127;
        }
      }

      while ((v128 & 1) != 0);
    }

    while (v15 < a2);
  }

  if (v15 - 2 != v191)
  {
    *v191 = *(v15 - 1);
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v190;
  return v15;
}

_OWORD *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::cfg::Update<mlir::Block *> *,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &>(void *a1, _OWORD *a2, uint64_t *a3)
{
  v6 = 0;
  v186 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v183 = a1[1];
  v8 = v183 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 3] & 0xFFFFFFFFFFFFFFF8;
    *&v185 = a1[v6 + 2];
    *(&v185 + 1) = v10;
    v11 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v9, &v185);
    v12 = *a3;
    *&v185 = v7;
    *(&v185 + 1) = v183 & 0xFFFFFFFFFFFFFFF8;
    v13 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v12, &v185);
    if (*a3[1])
    {
      v14 = *v11 < *v13;
    }

    else
    {
      v14 = *v11 > *v13;
    }

    v6 += 2;
  }

  while (v14);
  v15 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v15 >= a2)
      {
        break;
      }

      v23 = *a3;
      v24 = *(a2 - 2);
      v25 = *(a2-- - 1);
      *&v185 = v24;
      *(&v185 + 1) = v25 & 0xFFFFFFFFFFFFFFF8;
      v26 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v23, &v185);
      v27 = *a3;
      *&v185 = v7;
      *(&v185 + 1) = v183 & 0xFFFFFFFFFFFFFFF8;
      v28 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v27, &v185);
    }

    while (!(*a3[1] ? *v26 < *v28 : *v26 > *v28));
  }

  else
  {
    do
    {
      v16 = *a3;
      v17 = *(a2 - 2);
      v18 = *(a2-- - 1);
      *&v185 = v17;
      *(&v185 + 1) = v18 & 0xFFFFFFFFFFFFFFF8;
      v19 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v16, &v185);
      v20 = *a3;
      *&v185 = v7;
      *(&v185 + 1) = v183 & 0xFFFFFFFFFFFFFFF8;
      v21 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v20, &v185);
      if (*a3[1])
      {
        v22 = *v19 < *v21;
      }

      else
      {
        v22 = *v19 > *v21;
      }
    }

    while (!v22);
  }

  v184 = a1;
  if (v15 < a2)
  {
    v30 = 0xBF58476D1CE4E5B9;
    v31 = 0xBF58476D1CE4E5B9 * ((v8 >> 4) ^ (v8 >> 9) | (((v7 >> 4) ^ (v7 >> 9)) << 32));
    v32 = (v31 >> 31) ^ v31;
    v33 = a2;
    do
    {
      v185 = *v15;
      v34 = v185;
      *v15 = *v33;
      *v33 = v34;
      do
      {
        v50 = v15[2];
        v49 = v15[3];
        v15 += 2;
        v51 = *a3;
        v52 = v49 & 0xFFFFFFFFFFFFFFF8;
        v54 = *a3 + 8;
        v53 = **a3;
        v55 = v53 & 1;
        if (v53)
        {
          v56 = 4;
          v57 = *a3 + 8;
        }

        else
        {
          v56 = v51[4];
          if (!v56)
          {
            v61 = 0;
            v67 = 0;
            goto LABEL_47;
          }

          v57 = *(v51 + 1);
        }

        v58 = ((v52 >> 4) ^ (v52 >> 9) | (((v50 >> 4) ^ (v50 >> 9)) << 32)) * v30;
        v59 = v56 - 1;
        v60 = v59 & ((v58 >> 31) ^ v58);
        v61 = v57 + 24 * v60;
        v62 = *v61;
        v63 = *(v61 + 8);
        if (v50 == *v61 && v63 == v52)
        {
          goto LABEL_43;
        }

        v75 = 0;
        v76 = 1;
        while (v62 != -4096 || v63 != -4096)
        {
          if (v75)
          {
            v77 = 0;
          }

          else
          {
            v77 = v63 == -8192;
          }

          if (v77 && v62 == -8192)
          {
            v75 = v61;
          }

          v79 = v60 + v76++;
          v60 = v79 & v59;
          v61 = v57 + 24 * v60;
          v62 = *v61;
          v63 = *(v61 + 8);
          if (v50 == *v61 && v63 == v52)
          {
            goto LABEL_43;
          }
        }

        if (v75)
        {
          v61 = v75;
        }

        if (v53)
        {
          v67 = 4;
        }

        else
        {
          v67 = v51[4];
        }

LABEL_47:
        if (4 * (v53 >> 1) + 4 >= 3 * v67)
        {
          v67 *= 2;
        }

        else if (v67 + ~(v53 >> 1) - v51[1] > v67 >> 3)
        {
          goto LABEL_49;
        }

        v181 = v32;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(v51, v67);
        v53 = *v51;
        if (*v51)
        {
          v81 = 4;
          v30 = 0xBF58476D1CE4E5B9;
          v32 = v181;
LABEL_109:
          v55 = *v51 & 1;
          v85 = 0xBF58476D1CE4E5B9 * ((v52 >> 4) ^ (v52 >> 9) | (((v50 >> 4) ^ (v50 >> 9)) << 32));
          v86 = v81 - 1;
          v87 = v86 & ((v85 >> 31) ^ v85);
          v61 = v54 + 24 * v87;
          v88 = *v61;
          v89 = *(v61 + 8);
          if (v50 != *v61 || v89 != v52)
          {
            v91 = 0;
            v92 = 1;
            while (v88 != -4096 || v89 != -4096)
            {
              if (v91)
              {
                v93 = 0;
              }

              else
              {
                v93 = v89 == -8192;
              }

              if (v93 && v88 == -8192)
              {
                v91 = v61;
              }

              v95 = v87 + v92++;
              v87 = v95 & v86;
              v61 = v54 + 24 * v87;
              v88 = *v61;
              v89 = *(v61 + 8);
              if (v50 == *v61 && v89 == v52)
              {
                goto LABEL_154;
              }
            }

            if (v91)
            {
              v61 = v91;
            }

LABEL_154:
            v30 = 0xBF58476D1CE4E5B9;
            v32 = v181;
          }

          goto LABEL_49;
        }

        v81 = v51[4];
        v30 = 0xBF58476D1CE4E5B9;
        if (v81)
        {
          v54 = *(v51 + 1);
          v32 = v181;
          goto LABEL_109;
        }

        v55 = 0;
        v61 = 0;
        v32 = v181;
LABEL_49:
        *v51 = (v53 & 0xFFFFFFFE | v55) + 2;
        if (*v61 != -4096 || *(v61 + 8) != -4096)
        {
          --v51[1];
        }

        *v61 = v50;
        *(v61 + 8) = v52;
        *(v61 + 16) = 0;
        v51 = *a3;
        v53 = **a3;
LABEL_43:
        v65 = v53 & 1;
        v66 = v51 + 2;
        if (v53)
        {
          v35 = 4;
          v36 = v51 + 2;
        }

        else
        {
          v35 = v51[4];
          if (!v35)
          {
            v39 = 0;
            v68 = 0;
            goto LABEL_54;
          }

          v36 = *(v51 + 1);
        }

        v37 = v35 - 1;
        v38 = (v35 - 1) & v32;
        v39 = &v36[6 * v38];
        v40 = *v39;
        v41 = *(v39 + 1);
        if (v7 == *v39 && v41 == v8)
        {
          goto LABEL_27;
        }

        v69 = 0;
        v70 = 1;
        while (v40 != -4096 || v41 != -4096)
        {
          if (v69)
          {
            v71 = 0;
          }

          else
          {
            v71 = v41 == -8192;
          }

          if (v71 && v40 == -8192)
          {
            v69 = v39;
          }

          v73 = v38 + v70++;
          v38 = v73 & v37;
          v39 = &v36[6 * (v73 & v37)];
          v40 = *v39;
          v41 = *(v39 + 1);
          if (v7 == *v39 && v41 == v8)
          {
            goto LABEL_27;
          }
        }

        if (v69)
        {
          v39 = v69;
        }

        if (v53)
        {
          v68 = 4;
        }

        else
        {
          v68 = v51[4];
        }

LABEL_54:
        if (4 * (v53 >> 1) + 4 >= 3 * v68)
        {
          v68 *= 2;
        }

        else if (v68 + ~(v53 >> 1) - v51[1] > v68 >> 3)
        {
          goto LABEL_56;
        }

        v82 = v32;
        v83 = v30;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(v51, v68);
        v53 = *v51;
        if (*v51)
        {
          v84 = 4;
          v30 = v83;
          v32 = v82;
LABEL_130:
          v65 = *v51 & 1;
          v97 = v84 - 1;
          v98 = (v84 - 1) & v32;
          v39 = &v66[6 * v98];
          v99 = *v39;
          v100 = *(v39 + 1);
          if (v7 != *v39 || v100 != v8)
          {
            v102 = 0;
            v103 = 1;
            while (v99 != -4096 || v100 != -4096)
            {
              if (v102)
              {
                v104 = 0;
              }

              else
              {
                v104 = v100 == -8192;
              }

              if (v104 && v99 == -8192)
              {
                v102 = v39;
              }

              v106 = v98 + v103++;
              v98 = v106 & v97;
              v39 = &v66[6 * (v106 & v97)];
              v99 = *v39;
              v100 = *(v39 + 1);
              if (v7 == *v39 && v100 == v8)
              {
                goto LABEL_157;
              }
            }

            if (v102)
            {
              v39 = v102;
            }

LABEL_157:
            v30 = v83;
            v32 = v82;
          }

          goto LABEL_56;
        }

        v84 = v51[4];
        v32 = v82;
        if (v84)
        {
          v66 = *(v51 + 1);
          v30 = v83;
          goto LABEL_130;
        }

        v65 = 0;
        v39 = 0;
        v30 = v83;
LABEL_56:
        *v51 = (v53 & 0xFFFFFFFE | v65) + 2;
        if (*v39 != -4096 || *(v39 + 1) != -4096)
        {
          --v51[1];
        }

        *v39 = v7;
        *(v39 + 1) = v8;
        v39[4] = 0;
LABEL_27:
        v43 = *(v61 + 16);
        v44 = v39[4];
        v45 = v43 <= v44;
        v46 = v43 < v44;
        v47 = !v45;
        if (*a3[1])
        {
          v48 = v46;
        }

        else
        {
          v48 = v47;
        }
      }

      while ((v48 & 1) != 0);
      do
      {
        v122 = *(v33 - 2);
        v121 = *(v33-- - 1);
        v123 = *a3;
        v124 = v121 & 0xFFFFFFFFFFFFFFF8;
        v126 = *a3 + 8;
        v125 = **a3;
        v127 = v125 & 1;
        if (v125)
        {
          v128 = 4;
          v129 = *a3 + 8;
        }

        else
        {
          v128 = v123[4];
          if (!v128)
          {
            v133 = 0;
            v139 = 0;
            goto LABEL_184;
          }

          v129 = *(v123 + 1);
        }

        v130 = ((v124 >> 4) ^ (v124 >> 9) | (((v122 >> 4) ^ (v122 >> 9)) << 32)) * v30;
        v131 = v128 - 1;
        v132 = v131 & ((v130 >> 31) ^ v130);
        v133 = v129 + 24 * v132;
        v134 = *v133;
        v135 = *(v133 + 8);
        if (v122 == *v133 && v135 == v124)
        {
          goto LABEL_180;
        }

        v147 = 0;
        v148 = 1;
        while (v134 != -4096 || v135 != -4096)
        {
          if (v147)
          {
            v149 = 0;
          }

          else
          {
            v149 = v135 == -8192;
          }

          if (v149 && v134 == -8192)
          {
            v147 = v133;
          }

          v151 = v132 + v148++;
          v132 = v151 & v131;
          v133 = v129 + 24 * v132;
          v134 = *v133;
          v135 = *(v133 + 8);
          if (v122 == *v133 && v135 == v124)
          {
            goto LABEL_180;
          }
        }

        if (v147)
        {
          v133 = v147;
        }

        if (v125)
        {
          v139 = 4;
        }

        else
        {
          v139 = v123[4];
        }

LABEL_184:
        if (4 * (v125 >> 1) + 4 >= 3 * v139)
        {
          v139 *= 2;
        }

        else if (v139 + ~(v125 >> 1) - v123[1] > v139 >> 3)
        {
          goto LABEL_186;
        }

        v182 = v32;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(v123, v139);
        v125 = *v123;
        if (*v123)
        {
          v153 = 4;
          v30 = 0xBF58476D1CE4E5B9;
          v32 = v182;
LABEL_246:
          v127 = *v123 & 1;
          v157 = 0xBF58476D1CE4E5B9 * ((v124 >> 4) ^ (v124 >> 9) | (((v122 >> 4) ^ (v122 >> 9)) << 32));
          v158 = v153 - 1;
          v159 = v158 & ((v157 >> 31) ^ v157);
          v133 = v126 + 24 * v159;
          v160 = *v133;
          v161 = *(v133 + 8);
          if (v122 != *v133 || v161 != v124)
          {
            v163 = 0;
            v164 = 1;
            while (v160 != -4096 || v161 != -4096)
            {
              if (v163)
              {
                v165 = 0;
              }

              else
              {
                v165 = v161 == -8192;
              }

              if (v165 && v160 == -8192)
              {
                v163 = v133;
              }

              v167 = v159 + v164++;
              v159 = v167 & v158;
              v133 = v126 + 24 * v159;
              v160 = *v133;
              v161 = *(v133 + 8);
              if (v122 == *v133 && v161 == v124)
              {
                goto LABEL_291;
              }
            }

            if (v163)
            {
              v133 = v163;
            }

LABEL_291:
            v30 = 0xBF58476D1CE4E5B9;
            v32 = v182;
          }

          goto LABEL_186;
        }

        v153 = v123[4];
        v30 = 0xBF58476D1CE4E5B9;
        if (v153)
        {
          v126 = *(v123 + 1);
          v32 = v182;
          goto LABEL_246;
        }

        v127 = 0;
        v133 = 0;
        v32 = v182;
LABEL_186:
        *v123 = (v125 & 0xFFFFFFFE | v127) + 2;
        if (*v133 != -4096 || *(v133 + 8) != -4096)
        {
          --v123[1];
        }

        *v133 = v122;
        *(v133 + 8) = v124;
        *(v133 + 16) = 0;
        v123 = *a3;
        v125 = **a3;
LABEL_180:
        v137 = v125 & 1;
        v138 = v123 + 2;
        if (v125)
        {
          v108 = 4;
          v109 = v123 + 2;
        }

        else
        {
          v108 = v123[4];
          if (!v108)
          {
            v112 = 0;
            v140 = 0;
            goto LABEL_191;
          }

          v109 = *(v123 + 1);
        }

        v110 = v108 - 1;
        v111 = (v108 - 1) & v32;
        v112 = &v109[6 * v111];
        v113 = *v112;
        v114 = *(v112 + 1);
        if (v7 == *v112 && v114 == v8)
        {
          goto LABEL_164;
        }

        v141 = 0;
        v142 = 1;
        while (v113 != -4096 || v114 != -4096)
        {
          if (v141)
          {
            v143 = 0;
          }

          else
          {
            v143 = v114 == -8192;
          }

          if (v143 && v113 == -8192)
          {
            v141 = v112;
          }

          v145 = v111 + v142++;
          v111 = v145 & v110;
          v112 = &v109[6 * (v145 & v110)];
          v113 = *v112;
          v114 = *(v112 + 1);
          if (v7 == *v112 && v114 == v8)
          {
            goto LABEL_164;
          }
        }

        if (v141)
        {
          v112 = v141;
        }

        if (v125)
        {
          v140 = 4;
        }

        else
        {
          v140 = v123[4];
        }

LABEL_191:
        if (4 * (v125 >> 1) + 4 >= 3 * v140)
        {
          v140 *= 2;
        }

        else if (v140 + ~(v125 >> 1) - v123[1] > v140 >> 3)
        {
          goto LABEL_193;
        }

        v154 = v32;
        v155 = v30;
        llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::grow(v123, v140);
        v125 = *v123;
        if (*v123)
        {
          v156 = 4;
          v30 = v155;
          v32 = v154;
LABEL_267:
          v137 = *v123 & 1;
          v169 = v156 - 1;
          v170 = (v156 - 1) & v32;
          v112 = &v138[6 * v170];
          v171 = *v112;
          v172 = *(v112 + 1);
          if (v7 != *v112 || v172 != v8)
          {
            v174 = 0;
            v175 = 1;
            while (v171 != -4096 || v172 != -4096)
            {
              if (v174)
              {
                v176 = 0;
              }

              else
              {
                v176 = v172 == -8192;
              }

              if (v176 && v171 == -8192)
              {
                v174 = v112;
              }

              v178 = v170 + v175++;
              v170 = v178 & v169;
              v112 = &v138[6 * (v178 & v169)];
              v171 = *v112;
              v172 = *(v112 + 1);
              if (v7 == *v112 && v172 == v8)
              {
                goto LABEL_294;
              }
            }

            if (v174)
            {
              v112 = v174;
            }

LABEL_294:
            v30 = v155;
            v32 = v154;
          }

          goto LABEL_193;
        }

        v156 = v123[4];
        v32 = v154;
        if (v156)
        {
          v138 = *(v123 + 1);
          v30 = v155;
          goto LABEL_267;
        }

        v137 = 0;
        v112 = 0;
        v30 = v155;
LABEL_193:
        *v123 = (v125 & 0xFFFFFFFE | v137) + 2;
        if (*v112 != -4096 || *(v112 + 1) != -4096)
        {
          --v123[1];
        }

        *v112 = v7;
        *(v112 + 1) = v8;
        v112[4] = 0;
LABEL_164:
        v116 = *(v133 + 16);
        v117 = v112[4];
        v45 = v116 <= v117;
        v118 = v116 < v117;
        v119 = !v45;
        if (*a3[1])
        {
          v120 = v118;
        }

        else
        {
          v120 = v119;
        }
      }

      while (v120 != 1);
    }

    while (v15 < v33);
  }

  result = v15 - 2;
  if (v15 - 2 != v184)
  {
    *v184 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v183;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v42 = *MEMORY[0x277D85DE8];
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 1);
        v9 = a2 - 2;
        v40 = *(a2 - 2);
        v41 = v8 & 0xFFFFFFFFFFFFFFF8;
        v10 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v7, &v40);
        v11 = *a3;
        v12 = a1[1] & 0xFFFFFFFFFFFFFFF8;
        v40 = *a1;
        v41 = v12;
        v13 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v11, &v40);
        if (**(a3 + 8))
        {
          v14 = *v10 < *v13;
        }

        else
        {
          v14 = *v10 > *v13;
        }

        if (v14)
        {
          v15 = *a1;
          *a1 = *v9;
          *v9 = v15;
        }

        return 1;
      }

      goto LABEL_14;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_14:
  v16 = a1 + 4;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*,0>(a1, a1 + 2, a1 + 4, a3);
  v17 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  v38 = v4;
  while (1)
  {
    v20 = *a3;
    v21 = v17[1] & 0xFFFFFFFFFFFFFFF8;
    v40 = *v17;
    v41 = v21;
    v22 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v20, &v40);
    v23 = *a3;
    v24 = v16[1] & 0xFFFFFFFFFFFFFFF8;
    v40 = *v16;
    v41 = v24;
    v25 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v23, &v40);
    if (**(a3 + 8) ? *v22 < *v25 : *v22 > *v25)
    {
      break;
    }

LABEL_29:
    v16 = v17;
    v18 += 16;
    v17 += 2;
    if (v17 == v4)
    {
      return 1;
    }
  }

  v27 = *v17;
  v39 = v17[1];
  v28 = v18;
  do
  {
    v29 = a1 + v28;
    *(a1 + v28 + 48) = *(a1 + v28 + 32);
    if (v28 == -32)
    {
      v4 = v38;
      *a1 = v27;
      a1[1] = v39;
      if (++v19 != 8)
      {
        goto LABEL_29;
      }

      return v17 + 2 == v4;
    }

    v30 = *a3;
    v40 = v27;
    v41 = v39 & 0xFFFFFFFFFFFFFFF8;
    v31 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v30, &v40);
    v32 = *a3;
    v33 = *(v29 + 3) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v29 + 2);
    v41 = v33;
    v34 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v32, &v40);
    if (**(a3 + 8))
    {
      v35 = *v31 < *v34;
    }

    else
    {
      v35 = *v31 > *v34;
    }

    v28 -= 16;
  }

  while (v35);
  v36 = a1 + v28;
  v4 = v38;
  *(v36 + 6) = v27;
  *(v36 + 7) = v39;
  if (++v19 != 8)
  {
    goto LABEL_29;
  }

  return v17 + 2 == v4;
}

_DWORD *std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v49 = v4;
    v50 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v10 = a3;
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = &result[4 * v12 + 4];
      v15 = v12 + 2;
      if (v12 + 2 < a3)
      {
        v16 = *a2;
        v17 = v14[1] & 0xFFFFFFFFFFFFFFF8;
        v47 = *v14;
        v48 = v17;
        v18 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v16, &v47);
        v19 = *a2;
        v20 = v14[3] & 0xFFFFFFFFFFFFFFF8;
        v47 = v14[2];
        v48 = v20;
        v21 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v19, &v47);
        if (**(a2 + 8) ? *v18 < *v21 : *v18 > *v21)
        {
          v14 += 2;
          v13 = v15;
        }
      }

      v23 = *a2;
      v24 = v14[1] & 0xFFFFFFFFFFFFFFF8;
      v47 = *v14;
      v48 = v24;
      v25 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v23, &v47);
      v26 = *a2;
      v27 = v7[1] & 0xFFFFFFFFFFFFFFF8;
      v47 = *v7;
      v48 = v27;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v26, &v47);
      if (**(a2 + 8))
      {
        v28 = *v25 < *result;
      }

      else
      {
        v28 = *v25 > *result;
      }

      if (!v28)
      {
        v29 = *v7;
        v45 = v7[1];
        v46 = v10;
        do
        {
          v35 = v7;
          v7 = v14;
          *v35 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v36 = (2 * v13) | 1;
          v14 = &v8[4 * v36];
          v37 = 2 * v13 + 2;
          if (v37 < v10)
          {
            v38 = *a2;
            v39 = v14[1] & 0xFFFFFFFFFFFFFFF8;
            v47 = *v14;
            v48 = v39;
            v40 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v38, &v47);
            v41 = *a2;
            v42 = v14[3] & 0xFFFFFFFFFFFFFFF8;
            v47 = v14[2];
            v48 = v42;
            v43 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v41, &v47);
            if (**(a2 + 8))
            {
              v44 = *v40 < *v43;
            }

            else
            {
              v44 = *v40 > *v43;
            }

            if (v44)
            {
              v14 += 2;
            }

            v10 = v46;
            if (v44)
            {
              v36 = v37;
            }
          }

          v30 = *a2;
          v31 = v14[1] & 0xFFFFFFFFFFFFFFF8;
          v47 = *v14;
          v48 = v31;
          v32 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v30, &v47);
          v33 = *a2;
          v47 = v29;
          v48 = v45 & 0xFFFFFFFFFFFFFFF8;
          result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v33, &v47);
          v34 = **(a2 + 8) ? *v32 < *result : *v32 > *result;
          v13 = v36;
        }

        while (!v34);
        *v7 = v29;
        v7[1] = v45;
      }
    }
  }

  return result;
}

double std::__sort_heap[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(char *a1, char *a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = (a2 - a1) >> 4;
  if (v3 >= 2)
  {
    v5 = a2;
    do
    {
      while (2)
      {
        v58 = v5;
        v8 = 0;
        v9 = a1;
        v61 = *a1;
        v10 = (v3 - 2) >> 1;
        do
        {
          while (1)
          {
            v11 = &v9[16 * v8];
            v12 = v11 + 16;
            v13 = (2 * v8) | 1;
            v14 = 2 * v8 + 2;
            if (v14 < v3)
            {
              break;
            }

            v8 = (2 * v8) | 1;
            *v9 = *v12;
            v9 = v11 + 16;
            if (v13 > v10)
            {
              goto LABEL_3;
            }
          }

          v15 = *a3;
          v16 = *(v11 + 2);
          v17 = *(v11 + 3) & 0xFFFFFFFFFFFFFFF8;
          v59 = v16;
          v60 = v17;
          v18 = v15 + 8;
          if (*v15)
          {
            v19 = 4;
          }

          else
          {
            v19 = *(v15 + 16);
            if (!v19)
            {
              v43 = 0;
LABEL_40:
              v23 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(v15, v43, &v59);
              v15 = *a3;
              goto LABEL_20;
            }

            v18 = *(v15 + 8);
          }

          v20 = 0xBF58476D1CE4E5B9 * ((v17 >> 4) ^ (v17 >> 9) | (((v16 >> 4) ^ (v16 >> 9)) << 32));
          v21 = v19 - 1;
          v22 = v21 & ((v20 >> 31) ^ v20);
          v23 = v18 + 24 * v22;
          v24 = *v23;
          v25 = *(v23 + 8);
          if (v16 != *v23 || v25 != v17)
          {
            v45 = 0;
            v46 = 1;
            while (v24 != -4096 || v25 != -4096)
            {
              if (v45)
              {
                v47 = 0;
              }

              else
              {
                v47 = v25 == -8192;
              }

              if (v47 && v24 == -8192)
              {
                v45 = v23;
              }

              v49 = v22 + v46++;
              v22 = v49 & v21;
              v23 = v18 + 24 * v22;
              v24 = *v23;
              v25 = *(v23 + 8);
              if (v16 == *v23 && v25 == v17)
              {
                goto LABEL_20;
              }
            }

            if (v45)
            {
              v43 = v45;
            }

            else
            {
              v43 = v23;
            }

            goto LABEL_40;
          }

LABEL_20:
          v27 = *(v11 + 4);
          v28 = *(v11 + 5) & 0xFFFFFFFFFFFFFFF8;
          v59 = v27;
          v60 = v28;
          v29 = v15 + 8;
          if (*v15)
          {
            v30 = 4;
          }

          else
          {
            v30 = *(v15 + 16);
            if (!v30)
            {
              v44 = 0;
LABEL_42:
              v35 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::InsertIntoBucket<std::pair<mlir::Block *,mlir::Block *>>(v15, v44, &v59);
              goto LABEL_29;
            }

            v29 = *(v15 + 8);
          }

          v31 = 0xBF58476D1CE4E5B9 * ((v28 >> 4) ^ (v28 >> 9) | (((v27 >> 4) ^ (v27 >> 9)) << 32));
          v32 = (v31 >> 31) ^ v31;
          v33 = v30 - 1;
          v34 = (v30 - 1) & v32;
          v35 = v29 + 24 * v34;
          v36 = *v35;
          v37 = *(v35 + 8);
          if (v27 != *v35 || v37 != v28)
          {
            v51 = 0;
            v52 = 1;
            while (v36 != -4096 || v37 != -4096)
            {
              if (v51)
              {
                v53 = 0;
              }

              else
              {
                v53 = v37 == -8192;
              }

              if (v53 && v36 == -8192)
              {
                v51 = v35;
              }

              v55 = v34 + v52++;
              v34 = v55 & v33;
              v35 = v29 + 24 * (v55 & v33);
              v36 = *v35;
              v37 = *(v35 + 8);
              if (v27 == *v35 && v37 == v28)
              {
                goto LABEL_29;
              }
            }

            if (v51)
            {
              v44 = v51;
            }

            else
            {
              v44 = v35;
            }

            goto LABEL_42;
          }

LABEL_29:
          v39 = *(v23 + 16);
          v40 = *(v35 + 16);
          v7 = v39 <= v40;
          v41 = v39 < v40;
          v42 = !v7;
          if (!**(a3 + 8))
          {
            v41 = v42;
          }

          if (v41)
          {
            v12 = v11 + 32;
            v8 = v14;
          }

          else
          {
            v8 = v13;
          }

          *v9 = *v12;
          v9 = v12;
        }

        while (v8 <= v10);
LABEL_3:
        v5 = v58 - 16;
        if (v12 != v58 - 16)
        {
          *v12 = *v5;
          *v5 = v61;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(a1, (v12 + 16), a3, (v12 + 16 - a1) >> 4);
          v7 = v3-- <= 2;
          if (v7)
          {
            return result;
          }

          continue;
        }

        break;
      }

      result = *&v61;
      *v12 = v61;
      v7 = v3-- <= 2;
    }

    while (!v7);
  }

  return result;
}

_DWORD *std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void llvm::cfg::LegalizeUpdates<mlir::Block *>(llvm::ArrayRef<llvm::cfg::Update<mlir::Block *>>,llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>> &,BOOL,BOOL)::{lambda(llvm::cfg::Update<mlir::Block *> const&,llvm::cfg::Update<mlir::Block *> const&)#1} &,llvm::cfg::Update<mlir::Block *>*>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v29 = v4;
    v30 = v5;
    v9 = result;
    v10 = v6 >> 1;
    v11 = &result[4 * (v6 >> 1)];
    v12 = *a3;
    v13 = v11[1] & 0xFFFFFFFFFFFFFFF8;
    v27 = *v11;
    v28 = v13;
    v14 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v12, &v27);
    v15 = *a3;
    v16 = (a2 - 16);
    v17 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(a2 - 16);
    v28 = v17;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v15, &v27);
    if (**(a3 + 8) ? *v14 < *result : *v14 > *result)
    {
      v19 = *(a2 - 16);
      v20 = *(a2 - 8);
      do
      {
        v21 = v16;
        v16 = v11;
        *v21 = *v11;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = &v9[4 * v10];
        v22 = *a3;
        v23 = v11[1] & 0xFFFFFFFFFFFFFFF8;
        v27 = *v11;
        v28 = v23;
        v24 = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v22, &v27);
        v25 = *a3;
        v27 = v19;
        v28 = v20 & 0xFFFFFFFFFFFFFFF8;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<mlir::Block *,mlir::Block *>,int,4u,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>,std::pair<mlir::Block *,mlir::Block *>,int,llvm::DenseMapInfo<std::pair<mlir::Block *,mlir::Block *>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Block *,mlir::Block *>,int>>::operator[](v25, &v27);
      }

      while (**(a3 + 8) ? *v24 < *result : *v24 > *result);
      *v16 = v19;
      v16[1] = v20;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::LookupBucketFor<mlir::Block *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 72 * v6);
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
        v7 = (v3 + 72 * (v13 & v5));
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

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v11 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v9 = a1;
  v10 = a3;
  llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::LookupBucketFor<mlir::Block *>(v9, v10, &v11);
  a1 = v9;
  a3 = v10;
  v4 = *v9;
  v3 = v11;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  v7 = *a3;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 24) = 0u;
  *v3 = v7;
  *(v3 + 8) = v3 + 24;
  *(v3 + 16) = 0x200000000;
  *(v3 + 40) = v3 + 56;
  *(v3 + 52) = 2;
  return v3;
}

void llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::grow(uint64_t a1, unsigned int a2)
{
  v27[27] = *MEMORY[0x277D85DE8];
  v3 = (a2 - 1) | ((a2 - 1) >> 1);
  v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
  v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
  if ((v5 + 1) > 0x40)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 64;
  }

  if (a2 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v7 > 4)
    {
      *(a1 + 8) = llvm::allocate_buffer(8 * (v7 + 8 * v7), 8uLL);
      *(a1 + 16) = v7;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::moveFromOldBuckets(a1, v8, &v8[9 * v9]);

    llvm::deallocate_buffer(v8, (72 * v9));
  }

  v10 = &v22;
  if ((*(a1 + 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    v22 = *(a1 + 8);
    v23[0] = &v24;
    v23[1] = 0x200000000;
    if (*(a1 + 24))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v23, (a1 + 16));
    }

    v25[0] = &v26;
    v25[1] = 0x200000000;
    if (*(a1 + 56))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v25, (a1 + 48));
    }

    v10 = v27;
    v11 = *(a1 + 48);
    if (v11 != (a1 + 64))
    {
      free(v11);
    }

    v12 = *(a1 + 16);
    if (v12 != (a1 + 32))
    {
      free(v12);
    }
  }

  v13 = *(a1 + 80);
  if ((v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v10 = v13;
    v10[1] = (v10 + 3);
    v10[2] = 0x200000000;
    if (*(a1 + 96))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=((v10 + 1), (a1 + 88));
    }

    v10[5] = (v10 + 7);
    v10[6] = 0x200000000;
    if (*(a1 + 128))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=((v10 + 5), (a1 + 120));
    }

    v10 += 9;
    v14 = *(a1 + 120);
    if (v14 != (a1 + 136))
    {
      free(v14);
    }

    v15 = *(a1 + 88);
    if (v15 != (a1 + 104))
    {
      free(v15);
    }
  }

  v16 = *(a1 + 152);
  if ((v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v10 = v16;
    v10[1] = (v10 + 3);
    v10[2] = 0x200000000;
    if (*(a1 + 168))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=((v10 + 1), (a1 + 160));
    }

    v10[5] = (v10 + 7);
    v10[6] = 0x200000000;
    if (*(a1 + 200))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=((v10 + 5), (a1 + 192));
    }

    v10 += 9;
    v17 = *(a1 + 192);
    if (v17 != (a1 + 208))
    {
      free(v17);
    }

    v18 = *(a1 + 160);
    if (v18 != (a1 + 176))
    {
      free(v18);
    }
  }

  v19 = *(a1 + 224);
  if ((v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v10 = v19;
    v10[1] = (v10 + 3);
    v10[2] = 0x200000000;
    if (*(a1 + 240))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=((v10 + 1), (a1 + 232));
    }

    v10[5] = (v10 + 7);
    v10[6] = 0x200000000;
    if (*(a1 + 272))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=((v10 + 5), (a1 + 264));
    }

    v10 += 9;
    v20 = *(a1 + 264);
    if (v20 != (a1 + 280))
    {
      free(v20);
    }

    v21 = *(a1 + 232);
    if (v21 != (a1 + 248))
    {
      free(v21);
    }
  }

  if (v7 >= 5)
  {
    *a1 &= ~1u;
    *(a1 + 8) = llvm::allocate_buffer(8 * (v7 + 8 * v7), 8uLL);
    *(a1 + 16) = v7;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::moveFromOldBuckets(a1, &v22, v10);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = (a1 + 74);
    v9 = (a1 + 2);
    v11 = 216;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[72 * v8];
    v11 = v10 - v9 - 72;
    if (v11 < 0x48)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 72;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x48 + 1;
  v13 = &v9[72 * (v12 & 0x7FFFFFFFFFFFFFELL)];
  v14 = v12 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 9) = -4096;
    v9 += 144;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    while (1)
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_13:
      v4 += 9;
      if (v4 == a3)
      {
        return;
      }
    }

    if (*a1)
    {
      v16 = 4;
      v17 = v7;
    }

    else
    {
      v16 = a1[4];
      if (!v16)
      {
        v20 = 0;
LABEL_20:
        *v20 = v15;
        *(v20 + 1) = v20 + 6;
        *(v20 + 2) = 0x200000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((v20 + 2), v4 + 1);
        }

        *(v20 + 5) = v20 + 14;
        v22 = (v20 + 10);
        *(v22 + 8) = 0x200000000;
        if (*(v4 + 12))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v22, v4 + 5);
        }

        *a1 += 2;
        v23 = v4[5];
        if (v23 != v4 + 7)
        {
          free(v23);
        }

        v24 = v4[1];
        if (v24 != v4 + 3)
        {
          free(v24);
        }

        goto LABEL_13;
      }

      v17 = *(a1 + 1);
    }

    v18 = v16 - 1;
    v19 = v18 & ((v15 >> 4) ^ (v15 >> 9));
    v20 = &v17[18 * v19];
    v21 = *v20;
    if (v15 != *v20)
    {
      v25 = 0;
      v26 = 1;
      while (v21 != -4096)
      {
        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v21 == -8192;
        }

        if (v27)
        {
          v25 = v20;
        }

        v28 = v19 + v26++;
        v19 = v28 & v18;
        v20 = &v17[18 * v19];
        v21 = *v20;
        if (v15 == *v20)
        {
          goto LABEL_20;
        }
      }

      if (v25)
      {
        v20 = v25;
      }
    }

    goto LABEL_20;
  }
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ApplyUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 608);
  if (!v3)
  {
    return;
  }

  if (v3 == 1)
  {
    v7 = llvm::GraphDiff<mlir::Block *,false>::popUpdateForIncrementalUpdates(a2);
    if (a3)
    {
      v14[0] = 0;
      v15 = a3;
      v16 = a3;
      v17 = *(a3 + 608);
      v8 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 4) != 0)
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteEdge(a1, v14, v7, v8);
      }

      else
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertEdge(a1, v14, v7, v8);
      }
    }

    else
    {
      v13 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 4) != 0)
      {

        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteEdge(a1, 0, v7, v13);
      }

      else
      {

        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertEdge(a1, 0, v7, v13);
      }
    }

    return;
  }

  v14[0] = 0;
  v15 = a2;
  v16 = a3;
  v17 = v3;
  v9 = *(a1 + 32);
  if (v9 > 0x64)
  {
    if (v3 <= v9 / 0x28)
    {
      goto LABEL_12;
    }

LABEL_11:
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::CalculateFromScratch();
  }

  if (v3 > v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = 1;
  do
  {
    v12 = llvm::GraphDiff<mlir::Block *,false>::popUpdateForIncrementalUpdates(v15);
    if ((v11 & 4) != 0)
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteEdge(a1, v14, v12, v11 & 0xFFFFFFFFFFFFFFF8);
      if (v10 >= v17)
      {
        return;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertEdge(a1, v14, v12, (v11 & 0xFFFFFFFFFFFFFFF8));
      if (v10 >= v17)
      {
        return;
      }
    }

    ++v10;
  }

  while ((v14[0] & 1) == 0);
}

unint64_t llvm::GraphDiff<mlir::Block *,false>::popUpdateForIncrementalUpdates(uint64_t a1)
{
  v2 = *(a1 + 608);
  v3 = *(a1 + 600) + 16 * v2;
  v4 = *(v3 - 16);
  v5 = *(v3 - 8);
  *(a1 + 608) = v2 - 1;
  v6 = (v5 & 4) == 0;
  v7 = *(a1 + 592);
  v58 = v4;
  v8 = a1 + 8;
  if (*a1)
  {
    v9 = 4;
    v10 = a1 + 8;
  }

  else
  {
    v9 = *(a1 + 16);
    if (!v9)
    {
      v19 = 0;
LABEL_12:
      v13 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>(a1, v19, &v58);
      goto LABEL_6;
    }

    v10 = *(a1 + 8);
  }

  v11 = v9 - 1;
  v12 = v11 & ((v4 >> 4) ^ (v4 >> 9));
  v13 = (v10 + 72 * v12);
  v14 = *v13;
  if (*v13 != v4)
  {
    v46 = 0;
    v47 = 1;
    while (v14 != -4096)
    {
      if (v46)
      {
        v48 = 0;
      }

      else
      {
        v48 = v14 == -8192;
      }

      if (v48)
      {
        v46 = v13;
      }

      v49 = v12 + v47++;
      v12 = v49 & v11;
      v13 = (v10 + 72 * v12);
      v14 = *v13;
      if (*v13 == v4)
      {
        goto LABEL_6;
      }
    }

    if (v46)
    {
      v19 = v46;
    }

    else
    {
      v19 = v13;
    }

    goto LABEL_12;
  }

LABEL_6:
  v15 = v7 != v6;
  v16 = &v13[4 * v15 + 1];
  v17 = *(v16 + 8) - 1;
  *(v16 + 8) = v17;
  if (!v17 && !LODWORD(v13[4 * (v7 == v6) + 2]))
  {
    if (*a1)
    {
      v18 = 4;
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 8);
    }

    v20 = v18 - 1;
    v21 = v20 & ((v4 >> 4) ^ (v4 >> 9));
    v22 = (v8 + 72 * v21);
    v23 = *v22;
    if (*v22 == v4)
    {
LABEL_15:
      v24 = v22[5];
      if (v24 != v22 + 7)
      {
        free(v24);
      }

      v25 = v22[1];
      if (v25 != v22 + 3)
      {
        free(v25);
      }

      *v22 = -8192;
      v26 = *(a1 + 4) + 1;
      *a1 -= 2;
      *(a1 + 4) = v26;
    }

    else
    {
      v54 = 1;
      while (v23 != -4096)
      {
        v55 = v21 + v54++;
        v21 = v55 & v20;
        v22 = (v8 + 72 * v21);
        v23 = *v22;
        if (*v22 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_20:
  v27 = v5 & 0xFFFFFFFFFFFFFFF8;
  v58 = v5 & 0xFFFFFFFFFFFFFFF8;
  v28 = a1 + 304;
  if (*(a1 + 296))
  {
    v29 = 4;
    v30 = a1 + 304;
  }

  else
  {
    v29 = *(a1 + 312);
    if (!v29)
    {
      v38 = 0;
LABEL_31:
      v33 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>((a1 + 296), v38, &v58);
      goto LABEL_25;
    }

    v30 = *(a1 + 304);
  }

  v31 = v29 - 1;
  v32 = v31 & ((v27 >> 4) ^ (v27 >> 9));
  v33 = (v30 + 72 * v32);
  v34 = *v33;
  if (*v33 != v27)
  {
    v50 = 0;
    v51 = 1;
    while (v34 != -4096)
    {
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v34 == -8192;
      }

      if (v52)
      {
        v50 = v33;
      }

      v53 = v32 + v51++;
      v32 = v53 & v31;
      v33 = (v30 + 72 * v32);
      v34 = *v33;
      if (*v33 == v27)
      {
        goto LABEL_25;
      }
    }

    if (v50)
    {
      v38 = v50;
    }

    else
    {
      v38 = v33;
    }

    goto LABEL_31;
  }

LABEL_25:
  v35 = &v33[4 * v15 + 1];
  v36 = *(v35 + 8) - 1;
  *(v35 + 8) = v36;
  if (!v36 && !LODWORD(v33[4 * (v7 == v6) + 2]))
  {
    if (*(a1 + 296))
    {
      v37 = 4;
    }

    else
    {
      v37 = *(a1 + 312);
      if (!v37)
      {
        return v4;
      }

      v28 = *(a1 + 304);
    }

    v39 = v37 - 1;
    v40 = v39 & ((v27 >> 4) ^ (v27 >> 9));
    v41 = (v28 + 72 * v40);
    v42 = *v41;
    if (*v41 == v27)
    {
LABEL_34:
      v43 = v41[5];
      if (v43 != v41 + 7)
      {
        free(v43);
      }

      v44 = v41[1];
      if (v44 != v41 + 3)
      {
        free(v44);
      }

      *v41 = -8192;
      *(a1 + 296) -= 2;
      ++*(a1 + 300);
    }

    else
    {
      v56 = 1;
      while (v42 != -4096)
      {
        v57 = v40 + v56++;
        v40 = v57 & v39;
        v41 = (v28 + 72 * v40);
        v42 = *v41;
        if (*v41 == v27)
        {
          goto LABEL_34;
        }
      }
    }
  }

  return v4;
}