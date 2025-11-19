uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visit(mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis *a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    return 1;
  }

  v2 = a2 & 0xFFFFFFFFFFFFFFF8;
  if (!v2)
  {
    return 1;
  }

  else
  {
    return mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitOperation(a1, v2);
  }
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::getLatticeElements@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v12 = *MEMORY[0x277D85DE8];
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = a2;
  v11 = 0;
  if (a3)
  {
    for (i = 0; i != a3; v11 = i)
    {
      v8 = mlir::ValueRange::dereference_iterator(&v10, i);
      result = (*(*v5 + 72))(v5, v8);
      v9 = *(a4 + 8);
      if (v9 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v9) = result;
      ++*(a4 + 8);
      i = v11 + 1;
    }
  }

  return result;
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::getLatticeElementsFor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result;
  v15 = *MEMORY[0x277D85DE8];
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  if (a4 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = a3;
  v14 = 0;
  if (a4)
  {
    for (i = 0; i != a4; v14 = i)
    {
      v10 = mlir::ValueRange::dereference_iterator(&v13, i);
      v11 = (*(*v7 + 72))(v7, v10);
      result = mlir::DataFlowAnalysis::addDependency(v7, v11, a2);
      v12 = *(a5 + 8);
      if (v12 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a5 + 8 * v12) = v11;
      ++*(a5 + 8);
      i = v14 + 1;
    }
  }

  return result;
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::getLatticeElementFor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 72))(a1, a3);
  mlir::DataFlowAnalysis::addDependency(a1, v5, a2);
  return v5;
}

void mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitRegionSuccessors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63[6] = *MEMORY[0x277D85DE8];
  v49[0] = a2;
  v49[1] = a3;
  v61 = v63;
  v62 = 0x200000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = v5;
    v57 = v60;
    v59 = 6;
    if (v5 >= 7)
    {
      v58 = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5)
    {
      bzero(v60, 8 * v5);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v57 = v60;
    v59 = 6;
  }

  v58 = v6;
  mlir::RegionBranchOpInterface::getEntrySuccessorRegions(v49, v60, v5, &v61);
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v7 = 0;
    __b = v55;
    v54 = 0x600000000;
    v56 = 0;
    v9 = v62;
    if (!v62)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 68);
  v8 = (v7 + 63) >> 6;
  __b = v55;
  HIDWORD(v54) = 6;
  if (v7 + 63 >= 0x1C0)
  {
    LODWORD(v54) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7 + 63 >= 0x40)
  {
    memset(v55, 255, 8 * v8);
  }

  LODWORD(v54) = (v7 + 63) >> 6;
  v56 = v7;
  if ((v7 & 0x3F) != 0)
  {
    v55[v8 - 1] &= ~(-1 << (v7 & 0x3F));
  }

  v9 = v62;
  if (v62)
  {
LABEL_15:
    v10 = v61;
    v48 = &v61[3 * v9];
    do
    {
      EntrySuccessorOperands = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v49, *v10);
      v13 = v10[1];
      v14 = v10[2];
      v50 = EntrySuccessorOperands;
      v51 = v13;
      v52 = 0;
      if (v12)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = EntrySuccessorOperands;
        v17 = v12;
        v18 = 0;
        v19 = (EntrySuccessorOperands + 32 * v17);
        do
        {
          v20 = mlir::ValueRange::dereference_iterator(&v51, v18);
          v21 = (*(*a1 + 72))(a1, *(v16 + 3));
          v22 = (*(*a1 + 72))(a1, v20);
          mlir::DataFlowAnalysis::addDependency(a1, v22, a2 & 0xFFFFFFFFFFFFFFFBLL);
          v23 = (*(*v21 + 40))(v21, v22);
          mlir::DataFlowAnalysis::propagateIfChanged(a1, v21, v23);
          OperandNumber = mlir::OpOperand::getOperandNumber(v16);
          *(__b + (OperandNumber >> 6)) &= ~(1 << OperandNumber);
          v16 = (v50 + 32);
          v18 = v52 + 1;
          v50 = v16;
          ++v52;
        }

        while (v16 != v19 && v18 != v14);
      }

      v10 += 3;
    }

    while (v10 != v48);
    v7 = v56;
  }

LABEL_26:
  if (!v7)
  {
    goto LABEL_63;
  }

  v25 = *__b;
  if (v7 >= 0x41)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  }

  v27 = v25 & v26;
  if ((v25 & v26) != 0)
  {
    v28 = 0;
  }

  else
  {
    if (v7 < 0x41)
    {
      goto LABEL_63;
    }

    v30 = (v7 - 1) >> 6;
    v31 = (__b + 8);
    v28 = 64;
    while (1)
    {
      v33 = *v31++;
      v32 = v33;
      v34 = v30 == 1 ? 0xFFFFFFFFFFFFFFFFLL >> -v7 : -1;
      v27 = v34 & v32;
      if (v27)
      {
        break;
      }

      v28 += 64;
      if (!--v30)
      {
        goto LABEL_63;
      }
    }
  }

  v29 = __clz(__rbit64(v27)) | v28;
  if (v29 != 0xFFFFFFFF)
  {
    do
    {
      (*(*a1 + 48))(a1, *(a2 + 72) + 32 * v29);
      v36 = v29 + 1;
      if (v29 + 1 == v56)
      {
        break;
      }

      v35 = v36 >> 6;
      v37 = (v56 - 1) >> 6;
      if (v35 > v37)
      {
        break;
      }

      v38 = v36 & 0x3F;
      v15 = v38 == 0;
      v39 = 0xFFFFFFFFFFFFFFFFLL >> -v38;
      if (v15)
      {
        v40 = -1;
      }

      else
      {
        v40 = ~v39;
      }

      if (v35 == v37)
      {
        v41 = 0xFFFFFFFFFFFFFFFFLL >> ~(v56 - 1);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(__b + v35) & v40;
      if (!v42)
      {
        v43 = v35 + 1;
        if (v35 + 1 == v37 + 1)
        {
          break;
        }

        v44 = v37 - v35;
        v45 = -1;
        while (1)
        {
          v46 = v45 ? -1 : v40;
          v47 = --v44 ? -1 : 0xFFFFFFFFFFFFFFFFLL >> ~(v56 - 1);
          v42 = v46 & v47 & *(__b + v43);
          if (v42)
          {
            break;
          }

          ++v43;
          --v45;
          if (!v44)
          {
            goto LABEL_63;
          }
        }

        LODWORD(v35) = v43;
      }

      LODWORD(v29) = __clz(__rbit64(v42)) | (v35 << 6);
    }

    while (v29 != -1);
  }

LABEL_63:
  if (__b != v55)
  {
    free(__b);
  }

  if (v57 != v60)
  {
    free(v57);
  }

  if (v61 != v63)
  {
    free(v61);
  }
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::meet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 40))(a2, a3);

  return mlir::DataFlowAnalysis::propagateIfChanged(a1, a2, v5);
}

unsigned int *llvm::BitVector::set_bits@<X0>(unsigned int *this@<X0>, unsigned int **a2@<X8>)
{
  v2 = this[16];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
  v4 = **this;
  if (v2 >= 0x41)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  v6 = v4 & v5;
  if ((v4 & v5) == 0)
  {
    if (v2 >= 0x41)
    {
      v9 = (v2 - 1) >> 6;
      v10 = (*this + 8);
      v7 = 64;
      v8 = 0xFFFFFFFFLL;
      while (1)
      {
        v12 = *v10++;
        v11 = v12;
        v13 = v9 == 1 ? v3 : -1;
        v6 = v13 & v11;
        if (v6)
        {
          goto LABEL_7;
        }

        v7 += 64;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_10:
    *a2 = this;
    a2[1] = 0xFFFFFFFFLL;
    a2[2] = this;
    a2[3] = 0xFFFFFFFFLL;
    return this;
  }

  v7 = 0;
LABEL_7:
  v8 = __clz(__rbit64(v6)) | v7;
LABEL_8:
  *a2 = this;
  a2[1] = v8;
  a2[2] = this;
  a2[3] = 0xFFFFFFFFLL;
  return this;
}

void mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitRegionSuccessorsFromTerminator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63[3] = *MEMORY[0x277D85DE8];
  v48[0] = a2;
  v48[1] = a3;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
    v5 = v4;
    v56 = v59;
    v58 = 6;
    if (v4 >= 7)
    {
      v57 = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4)
    {
      bzero(v59, 8 * v4);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v56 = v59;
    v58 = 6;
  }

  v57 = v5;
  v53 = v55;
  v54 = 0x200000000;
  mlir::RegionBranchTerminatorOpInterface::getSuccessorRegions(v48, v59, v4, &v53);
  if ((*(v48[0] + 46) & 0x80) == 0)
  {
    v6 = 0;
    __b = v51;
    v50 = 0x600000000;
    v52 = 0;
    v8 = v54;
    if (!v54)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v6 = *(v48[0] + 68);
  v7 = (v6 + 63) >> 6;
  __b = v51;
  HIDWORD(v50) = 6;
  if (v6 + 63 >= 0x1C0)
  {
    LODWORD(v50) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v6 + 63 >= 0x40)
  {
    memset(v51, 255, 8 * v7);
  }

  LODWORD(v50) = (v6 + 63) >> 6;
  v52 = v6;
  if ((v6 & 0x3F) != 0)
  {
    v51[v7 - 1] &= ~(-1 << (v6 & 0x3F));
  }

  v8 = v54;
  if (v54)
  {
LABEL_15:
    v9 = v53;
    v47 = (v53 + 24 * v8);
    do
    {
      v11 = v9[1];
      v10 = v9[2];
      mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(v48, *v9);
      v12 = mlir::MutableOperandRange::operator mlir::OperandRange(&v60);
      v14 = v13;
      if (v62 != v63)
      {
        free(v62);
      }

      v60 = v12;
      v61 = v11;
      v62 = 0;
      if (v14 && v10)
      {
        v15 = 0;
        v16 = (v12 + 32 * v14);
        do
        {
          v17 = mlir::ValueRange::dereference_iterator(&v61, v15);
          v18 = (*(*a1 + 72))(a1, *(v12 + 3));
          v19 = v48[0];
          v20 = (*(*a1 + 72))(a1, v17);
          mlir::DataFlowAnalysis::addDependency(a1, v20, v19 & 0xFFFFFFFFFFFFFFFBLL);
          v21 = (*(*v18 + 40))(v18, v20);
          mlir::DataFlowAnalysis::propagateIfChanged(a1, v18, v21);
          OperandNumber = mlir::OpOperand::getOperandNumber(v12);
          *(__b + (OperandNumber >> 6)) &= ~(1 << OperandNumber);
          v12 = (v60 + 32);
          v15 = v62 + 1;
          v60 = v12;
          ++v62;
        }

        while (v12 != v16 && v15 != v10);
      }

      v9 += 3;
    }

    while (v9 != v47);
    v6 = v52;
  }

LABEL_26:
  if (!v6)
  {
    goto LABEL_63;
  }

  v23 = *__b;
  if (v6 >= 0x41)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  }

  v25 = v23 & v24;
  if ((v23 & v24) != 0)
  {
    v26 = 0;
  }

  else
  {
    if (v6 < 0x41)
    {
      goto LABEL_63;
    }

    v28 = (v6 - 1) >> 6;
    v29 = (__b + 8);
    v26 = 64;
    while (1)
    {
      v31 = *v29++;
      v30 = v31;
      v32 = v28 == 1 ? 0xFFFFFFFFFFFFFFFFLL >> -v6 : -1;
      v25 = v32 & v30;
      if (v25)
      {
        break;
      }

      v26 += 64;
      if (!--v28)
      {
        goto LABEL_63;
      }
    }
  }

  v27 = __clz(__rbit64(v25)) | v26;
  if (v27 != 0xFFFFFFFF)
  {
    do
    {
      (*(*a1 + 48))(a1, *(v48[0] + 72) + 32 * v27);
      v34 = v27 + 1;
      if (v27 + 1 == v52)
      {
        break;
      }

      v33 = v34 >> 6;
      v35 = (v52 - 1) >> 6;
      if (v33 > v35)
      {
        break;
      }

      v37 = v34 & 0x3F;
      v36 = v37 == 0;
      v38 = 0xFFFFFFFFFFFFFFFFLL >> -v37;
      if (v36)
      {
        v39 = -1;
      }

      else
      {
        v39 = ~v38;
      }

      if (v33 == v35)
      {
        v40 = 0xFFFFFFFFFFFFFFFFLL >> ~(v52 - 1);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(__b + v33) & v39;
      if (!v41)
      {
        v42 = v33 + 1;
        if (v33 + 1 == v35 + 1)
        {
          break;
        }

        v43 = v35 - v33;
        v44 = -1;
        while (1)
        {
          v45 = v44 ? -1 : v39;
          v46 = --v43 ? -1 : 0xFFFFFFFFFFFFFFFFLL >> ~(v52 - 1);
          v41 = v45 & v46 & *(__b + v42);
          if (v41)
          {
            break;
          }

          ++v42;
          --v44;
          if (!v43)
          {
            goto LABEL_63;
          }
        }

        LODWORD(v33) = v42;
      }

      LODWORD(v27) = __clz(__rbit64(v41)) | (v33 << 6);
    }

    while (v27 != -1);
  }

LABEL_63:
  if (__b != v51)
  {
    free(__b);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v59)
  {
    free(v56);
  }
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::setAllToExitStates(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      result = (*(*v4 + 64))(v4, v6);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t mlir::LoopLikeOpInterface::blockIsInLoop(mlir::LoopLikeOpInterface *this, mlir::Block *a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  ParentOp = mlir::Block::getParentOp(this);
  if (!mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
  {
    v5 = ParentOp;
    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = mlir::Block::getParentOp(v6);
      if (!v7)
      {
        break;
      }

      v5 = v7;
      if (mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v7))
      {
        mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
        return 1;
      }
    }

    if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp) || (v16 = *(ParentOp + 16)) == 0 || (mlir::LoopLikeOpInterface::blockIsInLoop(v16, v8) & 1) == 0)
    {
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      v23 = v26;
      v25 = 6;
      v26[0] = this;
      v9 = 1;
      while (1)
      {
        v10 = *(v23 + v9 - 1);
        v24 = v9 - 1;
        v17 = v10;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v18, &v17, &v20);
        if (v22)
        {
          v11 = v24;
          NumSuccessors = mlir::Block::getNumSuccessors(v17);
          if (v11 + NumSuccessors > v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          mlir::SuccessorRange::SuccessorRange(&v20, v17);
          v13 = v21;
          v9 = v24;
          if (v21)
          {
            v14 = (v20 + 24);
            do
            {
              if (v9 >= v25)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v23 + v9) = *v14;
              v9 = ++v24;
              v14 += 4;
              --v13;
            }

            while (v13);
          }
        }

        else
        {
          if (v17 == this)
          {
            v15 = v23;
            if (v23 == v26)
            {
LABEL_24:
              llvm::deallocate_buffer(v18[0], (8 * v19));
            }

LABEL_23:
            free(v15);
            goto LABEL_24;
          }

          v9 = v24;
        }

        if (!v9)
        {
          v15 = v23;
          if (v23 == v26)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }
    }
  }

  return 1;
}

BOOL mlir::detail::verifyLoopLikeOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v169 = *MEMORY[0x277D85DE8];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    v4 = (*(InterfaceFor + 64))(InterfaceFor, this);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  InterfaceFor = 0;
  v4 = MEMORY[0x40](0, 0);
  v6 = v65;
  if (v65)
  {
LABEL_3:
    mlir::OpOperand::getOperandNumber(v4);
  }

LABEL_4:
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v6 != v7)
  {
    *&v154[0] = "different number of inits and region iter_args: ";
    v155 = 259;
    mlir::Operation::emitOpError(&v156, this, v154);
    v46 = (*(InterfaceFor + 64))(InterfaceFor, this);
    v48 = v47;
    if (v47)
    {
      mlir::OpOperand::getOperandNumber(v46);
    }

    if (v156)
    {
      LODWORD(v150) = 5;
      *(&v150 + 1) = v48;
      if (v160 >= v161)
      {
        if (v159 > &v150 || v159 + 24 * v160 <= &v150)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v49 = v159 + 24 * v160;
      v50 = v150;
      *(v49 + 2) = v151;
      *v49 = v50;
      v51 = ++v160;
      if (v156)
      {
        LODWORD(v150) = 3;
        *(&v150 + 1) = " != ";
        v151 = 4;
        if (v51 >= v161)
        {
          if (v159 > &v150 || v159 + 24 * v51 <= &v150)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v52 = v159 + 24 * v160;
        v53 = v150;
        *(v52 + 2) = v151;
        *v52 = v53;
        ++v160;
      }
    }

    (*(InterfaceFor + 72))(InterfaceFor, this);
    if (v156)
    {
      LODWORD(v150) = 5;
      *(&v150 + 1) = v54;
      if (v160 >= v161)
      {
        if (v159 > &v150 || v159 + 24 * v160 <= &v150)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v55 = v159 + 24 * v160;
      v56 = v150;
      *(v55 + 2) = v151;
      *v55 = v56;
      ++v160;
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v156);
    if (v156)
    {
      mlir::InFlightDiagnostic::report(&v156);
    }

    if (v168 == 1)
    {
      if (v167 != &v168)
      {
        free(v167);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v166;
        v59 = __p;
        if (v166 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v166 = v57;
        operator delete(v59);
      }

      v60 = v163;
      if (!v163)
      {
        goto LABEL_208;
      }

      v61 = v164;
      v62 = v163;
      if (v164 == v163)
      {
        goto LABEL_207;
      }

      do
      {
        v64 = *--v61;
        v63 = v64;
        *v61 = 0;
        if (v64)
        {
          MEMORY[0x259C63150](v63, 0x1000C8077774924);
        }
      }

      while (v61 != v60);
      goto LABEL_206;
    }

    return v39;
  }

  (*(InterfaceFor + 80))(&v156, InterfaceFor, this);
  if (v158 == 1 && v157)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v156);
    if (!*(&v154[0] + 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v154, 0, 0);
    if (!*(&v154[0] + 1))
    {
LABEL_11:
      (*(InterfaceFor + 88))(&v156, InterfaceFor, this);
      if (v158 != 1 || ((*(InterfaceFor + 88))(v154, InterfaceFor, this), v10 = *(&v154[0] + 1), (*(InterfaceFor + 72))(InterfaceFor, this), v10 == v11))
      {
        (*(InterfaceFor + 80))(&v156, InterfaceFor, this);
        if (v158 == 1 && v157)
        {
          mlir::detail::verifyLoopLikeOpInterface(&v156);
        }

        else
        {
          mlir::ValueRange::ValueRange(v154, 0, 0);
        }

        v152 = v154[0];
        v12 = (*(InterfaceFor + 64))(InterfaceFor, this);
        if (v13)
        {
          v14 = v13;
          OperandNumber = mlir::OpOperand::getOperandNumber(v12);
          if ((*(this + 46) & 0x80) != 0)
          {
            v16 = *(this + 9);
          }

          else
          {
            v16 = 0;
          }

          v17 = OperandNumber;
          v18 = (*(InterfaceFor + 72))(InterfaceFor, this);
          v19 = 0;
          v20 = v16 + 32 * v17 + 24;
          while (1)
          {
            v21 = *v20;
            v22 = *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8;
            if (v22 != (*(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            if (*(&v152 + 1) && v22 != (*(mlir::ValueRange::dereference_iterator(&v152, v19) + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              std::to_string(&v153, v19);
              v155 = 260;
              *&v154[0] = &v153;
              mlir::Operation::emitOpError(&v156, this, v154);
              if (v156)
              {
                LODWORD(v150) = 3;
                *(&v150 + 1) = "-th region iter_arg and ";
                v151 = 24;
                if (v160 >= v161)
                {
                  if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v23 = v159 + 24 * v160;
                v24 = v150;
                *(v23 + 2) = v151;
                *v23 = v24;
                v25 = ++v160;
                if (v156)
                {
                  LODWORD(v150) = 5;
                  *(&v150 + 1) = v19;
                  if (v25 >= v161)
                  {
                    if (v159 > &v150 || v159 + 24 * v25 <= &v150)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v26 = v159 + 24 * v160;
                  v27 = v150;
                  *(v26 + 2) = v151;
                  *v26 = v27;
                  v28 = ++v160;
                  if (v156)
                  {
                    LODWORD(v150) = 3;
                    *(&v150 + 1) = "-th yielded value have different type: ";
                    v151 = 39;
                    if (v28 >= v161)
                    {
                      if (v159 > &v150 || v159 + 24 * v28 <= &v150)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v29 = v159 + 24 * v160;
                    v30 = v150;
                    *(v29 + 2) = v151;
                    *v29 = v30;
                    ++v160;
                    if (v156)
                    {
                      mlir::DiagnosticArgument::DiagnosticArgument(&v150, *(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8);
                      if (v160 >= v161)
                      {
                        if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v31 = v159 + 24 * v160;
                      v32 = v150;
                      *(v31 + 2) = v151;
                      *v31 = v32;
                      v33 = ++v160;
                      if (v156)
                      {
                        LODWORD(v150) = 3;
                        *(&v150 + 1) = " != ";
                        v151 = 4;
                        if (v33 >= v161)
                        {
                          if (v159 > &v150 || v159 + 24 * v33 <= &v150)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v34 = v159 + 24 * v160;
                        v35 = v150;
                        *(v34 + 2) = v151;
                        *v34 = v35;
                        ++v160;
                      }
                    }
                  }
                }
              }

              v36 = mlir::ValueRange::dereference_iterator(&v152, v19);
              if (v156)
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v150, *(v36 + 8) & 0xFFFFFFFFFFFFFFF8);
                if (v160 >= v161)
                {
                  if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v37 = v159 + 24 * v160;
                v38 = v150;
                *(v37 + 2) = v151;
                *v37 = v38;
                ++v160;
              }

              v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v156);
              if (v156)
              {
                mlir::InFlightDiagnostic::report(&v156);
              }

              if (v168 != 1)
              {
                goto LABEL_175;
              }

              if (v167 != &v168)
              {
                free(v167);
              }

              v40 = __p;
              if (__p)
              {
                v41 = v166;
                v42 = __p;
                if (v166 != __p)
                {
                  do
                  {
                    v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
                  }

                  while (v41 != v40);
                  v42 = __p;
                }

                v166 = v40;
                operator delete(v42);
              }

              v43 = v163;
              if (v163)
              {
                v44 = v164;
                v45 = v163;
                if (v164 != v163)
                {
                  do
                  {
                    v67 = *--v44;
                    v66 = v67;
                    *v44 = 0;
                    if (v67)
                    {
                      MEMORY[0x259C63150](v66, 0x1000C8077774924);
                    }
                  }

                  while (v44 != v43);
                  goto LABEL_171;
                }

                goto LABEL_172;
              }

              goto LABEL_173;
            }

            ++v19;
            v20 += 32;
            if (v14 == v19)
            {
              goto LABEL_83;
            }
          }

          std::to_string(&v153, v19);
          v155 = 260;
          *&v154[0] = &v153;
          mlir::Operation::emitOpError(&v156, this, v154);
          if (v156)
          {
            LODWORD(v150) = 3;
            *(&v150 + 1) = "-th init and ";
            v151 = 13;
            if (v160 >= v161)
            {
              if (v159 > &v150 || v159 + 24 * v160 <= &v150)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v89 = v159 + 24 * v160;
            v90 = v150;
            *(v89 + 2) = v151;
            *v89 = v90;
            v91 = ++v160;
            if (v156)
            {
              LODWORD(v150) = 5;
              *(&v150 + 1) = v19;
              if (v91 >= v161)
              {
                if (v159 > &v150 || v159 + 24 * v91 <= &v150)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v92 = v159 + 24 * v160;
              v93 = v150;
              *(v92 + 2) = v151;
              *v92 = v93;
              v94 = ++v160;
              if (v156)
              {
                LODWORD(v150) = 3;
                *(&v150 + 1) = "-th region iter_arg have different type: ";
                v151 = 41;
                if (v94 >= v161)
                {
                  if (v159 > &v150 || v159 + 24 * v94 <= &v150)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v95 = v159 + 24 * v160;
                v96 = v150;
                *(v95 + 2) = v151;
                *v95 = v96;
                ++v160;
                if (v156)
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v150, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (v160 >= v161)
                  {
                    if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v97 = v159 + 24 * v160;
                  v98 = v150;
                  *(v97 + 2) = v151;
                  *v97 = v98;
                  v99 = ++v160;
                  if (v156)
                  {
                    LODWORD(v150) = 3;
                    *(&v150 + 1) = " != ";
                    v151 = 4;
                    if (v99 >= v161)
                    {
                      if (v159 > &v150 || v159 + 24 * v99 <= &v150)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v100 = v159 + 24 * v160;
                    v101 = v150;
                    *(v100 + 2) = v151;
                    *v100 = v101;
                    ++v160;
                    if (v156)
                    {
                      mlir::DiagnosticArgument::DiagnosticArgument(&v150, *(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8);
                      if (v160 >= v161)
                      {
                        if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v102 = v159 + 24 * v160;
                      v103 = v150;
                      *(v102 + 2) = v151;
                      *v102 = v103;
                      ++v160;
                    }
                  }
                }
              }
            }
          }

          v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v156);
          if (v156)
          {
            mlir::InFlightDiagnostic::report(&v156);
          }

          if (v168 != 1)
          {
            goto LABEL_175;
          }

          if (v167 != &v168)
          {
            free(v167);
          }

          v104 = __p;
          if (__p)
          {
            v105 = v166;
            v106 = __p;
            if (v166 != __p)
            {
              do
              {
                v105 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v105 - 1);
              }

              while (v105 != v104);
              v106 = __p;
            }

            v166 = v104;
            operator delete(v106);
          }

          v43 = v163;
          if (v163)
          {
            v107 = v164;
            v45 = v163;
            if (v164 != v163)
            {
              do
              {
                v109 = *--v107;
                v108 = v109;
                *v107 = 0;
                if (v109)
                {
                  MEMORY[0x259C63150](v108, 0x1000C8077774924);
                }
              }

              while (v107 != v43);
LABEL_171:
              v45 = v163;
            }

LABEL_172:
            v164 = v43;
            operator delete(v45);
          }

LABEL_173:
          v134 = v159;
          if (v159 == v162)
          {
            goto LABEL_175;
          }
        }

        else
        {
          (*(InterfaceFor + 72))(InterfaceFor, this);
LABEL_83:
          (*(InterfaceFor + 88))(&v156, InterfaceFor, this);
          if (v158 != 1)
          {
            return 1;
          }

          v68 = (*(InterfaceFor + 72))(InterfaceFor, this);
          v70 = v69;
          (*(InterfaceFor + 88))(&v156, InterfaceFor, this);
          if (!v70)
          {
            return 1;
          }

          v71 = 0;
          v72 = v156;
          v73 = 8 * v70;
          while (1)
          {
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v72, v71);
            if ((*(NextResultAtOffset + 8) ^ *(*(v68 + 8 * v71) + 8)) >= 8)
            {
              break;
            }

            ++v71;
            v73 -= 8;
            if (!v73)
            {
              return 1;
            }
          }

          v110 = NextResultAtOffset;
          std::to_string(&v153, 0);
          v155 = 260;
          *&v154[0] = &v153;
          mlir::Operation::emitOpError(&v156, this, v154);
          if (v156)
          {
            LODWORD(v150) = 3;
            *(&v150 + 1) = "-th region iter_arg and ";
            v151 = 24;
            if (v160 >= v161)
            {
              if (v159 > &v150 || v159 + 24 * v160 <= &v150)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v111 = v159 + 24 * v160;
            v112 = v150;
            *(v111 + 2) = v151;
            *v111 = v112;
            v113 = ++v160;
            if (v156)
            {
              LODWORD(v150) = 2;
              *(&v150 + 1) = 0;
              if (v113 >= v161)
              {
                if (v159 > &v150 || v159 + 24 * v113 <= &v150)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v114 = v159 + 24 * v160;
              v115 = v150;
              *(v114 + 2) = v151;
              *v114 = v115;
              v116 = ++v160;
              if (v156)
              {
                LODWORD(v150) = 3;
                *(&v150 + 1) = "-th loop result have different type: ";
                v151 = 37;
                if (v116 >= v161)
                {
                  if (v159 > &v150 || v159 + 24 * v116 <= &v150)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v117 = v159 + 24 * v160;
                v118 = v150;
                *(v117 + 2) = v151;
                *v117 = v118;
                ++v160;
                if (v156)
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v150, *(*(v68 + 8 * v71) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (v160 >= v161)
                  {
                    if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v119 = v159 + 24 * v160;
                  v120 = v150;
                  *(v119 + 2) = v151;
                  *v119 = v120;
                  v121 = ++v160;
                  if (v156)
                  {
                    LODWORD(v150) = 3;
                    *(&v150 + 1) = " != ";
                    v151 = 4;
                    if (v121 >= v161)
                    {
                      if (v159 > &v150 || v159 + 24 * v121 <= &v150)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v122 = v159 + 24 * v160;
                    v123 = v150;
                    *(v122 + 2) = v151;
                    *v122 = v123;
                    ++v160;
                    if (v156)
                    {
                      mlir::DiagnosticArgument::DiagnosticArgument(&v150, *(v110 + 8) & 0xFFFFFFFFFFFFFFF8);
                      if (v160 >= v161)
                      {
                        if (v159 > &v150 || v159 + 24 * v160 <= &v150)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v124 = v159 + 24 * v160;
                      v125 = v150;
                      *(v124 + 2) = v151;
                      *v124 = v125;
                      ++v160;
                    }
                  }
                }
              }
            }
          }

          v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v156);
          if (v156)
          {
            mlir::InFlightDiagnostic::report(&v156);
          }

          if (v168 != 1)
          {
            goto LABEL_175;
          }

          if (v167 != &v168)
          {
            free(v167);
          }

          v126 = __p;
          if (__p)
          {
            v127 = v166;
            v128 = __p;
            if (v166 != __p)
            {
              do
              {
                v127 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v127 - 1);
              }

              while (v127 != v126);
              v128 = __p;
            }

            v166 = v126;
            operator delete(v128);
          }

          v129 = v163;
          if (v163)
          {
            v130 = v164;
            v131 = v163;
            if (v164 != v163)
            {
              do
              {
                v133 = *--v130;
                v132 = v133;
                *v130 = 0;
                if (v133)
                {
                  MEMORY[0x259C63150](v132, 0x1000C8077774924);
                }
              }

              while (v130 != v129);
              v131 = v163;
            }

            v164 = v129;
            operator delete(v131);
          }

          v134 = v159;
          if (v159 == v162)
          {
            goto LABEL_175;
          }
        }

        free(v134);
LABEL_175:
        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }

        return v39;
      }

      *&v154[0] = "different number of loop results and region iter_args: ";
      v155 = 259;
      mlir::Operation::emitOpError(&v156, this, v154);
      (*(InterfaceFor + 88))(&v153, InterfaceFor, this);
      if (v156)
      {
        LODWORD(v150) = 5;
        *(&v150 + 1) = v153.__r_.__value_.__l.__size_;
        if (v160 >= v161)
        {
          if (v159 > &v150 || v159 + 24 * v160 <= &v150)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v75 = v159 + 24 * v160;
        v76 = v150;
        *(v75 + 2) = v151;
        *v75 = v76;
        v77 = ++v160;
        if (v156)
        {
          LODWORD(v150) = 3;
          *(&v150 + 1) = " != ";
          v151 = 4;
          if (v77 >= v161)
          {
            if (v159 > &v150 || v159 + 24 * v77 <= &v150)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v78 = v159 + 24 * v160;
          v79 = v150;
          *(v78 + 2) = v151;
          *v78 = v79;
          ++v160;
        }
      }

      (*(InterfaceFor + 72))(InterfaceFor, this);
      if (v156)
      {
        LODWORD(v150) = 5;
        *(&v150 + 1) = v80;
        if (v160 >= v161)
        {
          if (v159 > &v150 || v159 + 24 * v160 <= &v150)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v81 = v159 + 24 * v160;
        v82 = v150;
        *(v81 + 2) = v151;
        *v81 = v82;
        ++v160;
      }

      v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v156);
      if (v156)
      {
        mlir::InFlightDiagnostic::report(&v156);
      }

      if (v168 == 1)
      {
        if (v167 != &v168)
        {
          free(v167);
        }

        v83 = __p;
        if (__p)
        {
          v84 = v166;
          v85 = __p;
          if (v166 != __p)
          {
            do
            {
              v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
            }

            while (v84 != v83);
            v85 = __p;
          }

          v166 = v83;
          operator delete(v85);
        }

        v60 = v163;
        if (!v163)
        {
          goto LABEL_208;
        }

        v86 = v164;
        v62 = v163;
        if (v164 == v163)
        {
LABEL_207:
          v164 = v60;
          operator delete(v62);
LABEL_208:
          if (v159 != v162)
          {
            free(v159);
          }

          return v39;
        }

        do
        {
          v88 = *--v86;
          v87 = v88;
          *v86 = 0;
          if (v88)
          {
            MEMORY[0x259C63150](v87, 0x1000C8077774924);
          }
        }

        while (v86 != v60);
LABEL_206:
        v62 = v163;
        goto LABEL_207;
      }

      return v39;
    }
  }

  (*(InterfaceFor + 72))(InterfaceFor, this);
  v9 = v8;
  (*(InterfaceFor + 80))(&v156, InterfaceFor, this);
  if (v158 == 1 && v157)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v156);
    if (v9 == *(&v154[0] + 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v154, 0, 0);
    if (v9 == *(&v154[0] + 1))
    {
      goto LABEL_11;
    }
  }

  *&v154[0] = "different number of region iter_args and yielded values: ";
  v155 = 259;
  mlir::Operation::emitOpError(&v156, this, v154);
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v156)
  {
    LODWORD(v150) = 5;
    *(&v150 + 1) = v135;
    if (v160 >= v161)
    {
      if (v159 > &v150 || v159 + 24 * v160 <= &v150)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v136 = v159 + 24 * v160;
    v137 = v150;
    *(v136 + 2) = v151;
    *v136 = v137;
    v138 = ++v160;
    if (v156)
    {
      LODWORD(v150) = 3;
      *(&v150 + 1) = " != ";
      v151 = 4;
      if (v138 >= v161)
      {
        if (v159 > &v150 || v159 + 24 * v138 <= &v150)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v139 = v159 + 24 * v160;
      v140 = v150;
      *(v139 + 2) = v151;
      *v139 = v140;
      ++v160;
    }
  }

  (*(InterfaceFor + 80))(&v150, InterfaceFor, this);
  if (v151 == 1 && *(&v150 + 1))
  {
    mlir::detail::verifyLoopLikeOpInterface(&v150);
    if (!v156)
    {
      goto LABEL_190;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v153, 0, 0);
    if (!v156)
    {
      goto LABEL_190;
    }
  }

  LODWORD(v150) = 5;
  *(&v150 + 1) = v153.__r_.__value_.__l.__size_;
  if (v160 >= v161)
  {
    if (v159 > &v150 || v159 + 24 * v160 <= &v150)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v141 = v159 + 24 * v160;
  v142 = v150;
  *(v141 + 2) = v151;
  *v141 = v142;
  ++v160;
LABEL_190:
  v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v156);
  if (v156)
  {
    mlir::InFlightDiagnostic::report(&v156);
  }

  if (v168 == 1)
  {
    if (v167 != &v168)
    {
      free(v167);
    }

    v143 = __p;
    if (__p)
    {
      v144 = v166;
      v145 = __p;
      if (v166 != __p)
      {
        do
        {
          v144 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v144 - 1);
        }

        while (v144 != v143);
        v145 = __p;
      }

      v166 = v143;
      operator delete(v145);
    }

    v60 = v163;
    if (!v163)
    {
      goto LABEL_208;
    }

    v146 = v164;
    v62 = v163;
    if (v164 == v163)
    {
      goto LABEL_207;
    }

    do
    {
      v148 = *--v146;
      v147 = v148;
      *v146 = 0;
      if (v148)
      {
        MEMORY[0x259C63150](v147, 0x1000C8077774924);
      }
    }

    while (v146 != v60);
    goto LABEL_206;
  }

  return v39;
}

unint64_t OUTLINED_FUNCTION_0_13(mlir::OpOperand **a1)
{
  v2 = *a1;

  return mlir::OpOperand::getOperandNumber(v2);
}

unint64_t *OUTLINED_FUNCTION_1_9@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v3;

  return mlir::ValueRange::ValueRange(v2, a2 + 32 * a1, v5);
}

unint64_t mlir::detail::getDefaultTypeSize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(a1, a2, a3, a4);
  if (DefaultTypeSizeInBits)
  {
    return ((DefaultTypeSizeInBits - (DefaultTypeSizeInBits != 0)) >> 3) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::getDefaultTypeSizeInBits(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a1;
  v4 = *(*a1 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v82);
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v23 = a1;
  }

  else
  {
    v23 = 0;
  }

  v85 = v23;
  if (v23)
  {
    ElementType = mlir::ComplexType::getElementType(&v85);
    v28 = 8 * mlir::detail::getDefaultPreferredAlignment(ElementType, a2, a3, a4);
    DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(ElementType, a2, a3, a4);
    return DefaultTypeSizeInBits + (v28 + DefaultTypeSizeInBits - 1) / v28 * v28;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    Context = mlir::Type::getContext(&v82);
    if (a4)
    {
      v41 = Context;
      *&v84 = (*(*(a3 + 8) + 8))();
      mlir::IntegerAttr::getValue(&v84, &v85);
      if (v86 > 0x40)
      {
        v42 = *v85;
        MEMORY[0x259C63150]();
      }

      else
      {
        LODWORD(v42) = v85;
      }

      Context = v41;
    }

    else
    {
      LODWORD(v42) = 64;
    }

    v65 = mlir::IntegerType::get(Context, v42, 0);
    v83 = a2;
    v66 = *(a2 + 64);
    v87 = v65;
    v67 = *(a2 + 80);
    if (v67)
    {
      v68 = (v67 - 1) & ((v65 >> 4) ^ (v65 >> 9));
      v69 = (v66 + 24 * v68);
      v70 = *v69;
      if (*v69 == v65)
      {
        goto LABEL_89;
      }

      v71 = 1;
      while (v70 != -4096)
      {
        v72 = v68 + v71++;
        v68 = v72 & (v67 - 1);
        v69 = (v66 + 24 * v68);
        v70 = *v69;
        if (*v69 == v65)
        {
          goto LABEL_89;
        }
      }
    }

    v69 = (v66 + 24 * v67);
LABEL_89:
    if (v69 != (v66 + 24 * v67))
    {
      return v69[1];
    }

    *&v84 = llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSizeInBits(mlir::Type)::$_0>(&v83, v65);
    BYTE8(v84) = v73;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(a2 + 64, &v87, &v84, &v85);
    return v85[1];
  }

  v31 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v32 = a1;
  }

  else
  {
    v32 = 0;
  }

  v81 = v32;
  if (!v31)
  {
    v35 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a1);
    if (!v35)
    {
      reportMissingDataLayout(v82);
    }

    return (*(v36 + 8))(v36, v35, a2, a3, a4);
  }

  Shape = mlir::VectorType::getShape(&v81);
  NumElements = mlir::ShapedType::getNumElements(Shape, v44);
  v46 = mlir::VectorType::getShape(&v81);
  v48 = *(v46 + 8 * v47 - 8);
  v49 = mlir::VectorType::getShape(&v81);
  v51 = *(v49 + 8 * v50 - 8);
  v52 = 1 << -__clz(v51 - 1);
  if (v51 <= 0)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  v54 = mlir::VectorType::getElementType(&v81);
  v55 = v54;
  v83 = a2;
  v58 = *(a2 + 40);
  v57 = a2 + 40;
  v56 = v58;
  v87 = v54;
  v59 = *(v57 + 16);
  if (!v59)
  {
    goto LABEL_92;
  }

  v60 = (v59 - 1) & ((v54 >> 4) ^ (v54 >> 9));
  v61 = (v56 + 24 * v60);
  v62 = *v61;
  if (*v61 != v54)
  {
    v63 = 1;
    while (v62 != -4096)
    {
      v64 = v60 + v63++;
      v60 = v64 & (v59 - 1);
      v61 = (v56 + 24 * v60);
      v62 = *v61;
      if (*v61 == v54)
      {
        goto LABEL_93;
      }
    }

LABEL_92:
    v61 = (v56 + 24 * v59);
  }

LABEL_93:
  v74 = NumElements / v48;
  if (v61 == (v56 + 24 * v59))
  {
    *&v84 = llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>(&v83, v54);
    BYTE8(v84) = v77;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(v57, &v87, &v84, &v85);
    v75 = v85[1];
    v76 = v85[2];
  }

  else
  {
    v75 = v61[1];
    v76 = v61[2];
  }

  v85 = (8 * v74 * v53 * v75);
  LOBYTE(v86) = v76;
  v78 = llvm::TypeSize::operator unsigned long long(&v85, v55);
  ScalableDims = mlir::VectorType::getScalableDims(&v81);
  memchr(ScalableDims, 1, v80);
  return v78;
}

unint64_t mlir::detail::divideCeil(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return (a1 - (a1 != 0)) / a3 + 1;
  }

  else
  {
    return 0 / a3;
  }
}

uint64_t mlir::detail::getDefaultPreferredAlignment(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a1;
  v5 = *(*a1 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v73 = a2;
    *&v74 = a1;
    v26 = a2 + 88;
    v25 = *(a2 + 88);
    v27 = *(a2 + 104);
    if (!v27)
    {
LABEL_62:
      v33 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>(&v73, a1);
LABEL_63:
      v77 = v33;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v26, &v74, &v77, &v75);
      return v75[1];
    }

    v28 = (v27 - 1) & ((a1 >> 4) ^ (a1 >> 9));
    v29 = *(v25 + 16 * v28);
    if (v29 != a1)
    {
      v30 = 1;
      while (v29 != -4096)
      {
        v31 = v28 + v30++;
        v28 = v31 & (v27 - 1);
        v29 = *(v25 + 16 * v28);
        if (v29 == a1)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v19 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v19 || (v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id ? (v35 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v35 = 1), v35))
  {
    if (a1)
    {
      if (a4)
      {
        v20 = (*(*(a3 + 8) + 8))(*(a3 + 8));
LABEL_49:
        v75 = v20;
        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v75, 8, 1, 0))
        {
          RawData = mlir::DenseElementsAttr::getRawData(&v75);
          isSplat = mlir::DenseElementsAttr::isSplat(&v75);
          mlir::DenseElementsAttr::getType(&v75);
          NumElements = mlir::DenseElementsAttr::getNumElements(&v75);
          if (isSplat)
          {
            v21 = 0;
          }

          else
          {
            v21 = NumElements - 1;
          }
        }

        else
        {
          RawData = 0;
        }

        return *(RawData + 8 * v21) >> 3;
      }

      v73 = a2;
      *&v74 = a1;
      v26 = a2 + 88;
      v25 = *(a2 + 88);
      v27 = *(a2 + 104);
      if (!v27)
      {
        goto LABEL_62;
      }

      v28 = (v27 - 1) & ((a1 >> 4) ^ (a1 >> 9));
      v32 = *(v25 + 16 * v28);
      if (v32 != a1)
      {
        v68 = 1;
        while (v32 != -4096)
        {
          v69 = v28 + v68++;
          v28 = v69 & (v27 - 1);
          v32 = *(v25 + 16 * v28);
          if (v32 == a1)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_62;
      }

LABEL_61:
      if (v28 == v27)
      {
        goto LABEL_62;
      }

      return *(v25 + 16 * v28 + 8);
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v36 = a1;
  }

  else
  {
    v36 = 0;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (a4)
    {
      findEntryForIntegerType(a1, a3, a4);
      v20 = (*(v45 + 8))(v45);
      goto LABEL_49;
    }

    v73 = a2;
    v54 = *(a2 + 40);
    v53 = a2 + 40;
    v52 = v54;
    v77 = v36;
    v55 = *(v53 + 16);
    if (v55)
    {
      v56 = (v55 - 1) & ((a1 >> 4) ^ (a1 >> 9));
      v57 = (v52 + 24 * v56);
      v58 = *v57;
      if (*v57 == v36)
      {
LABEL_104:
        if (v57 == (v52 + 24 * v55))
        {
          *&v74 = llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>(&v73, v36);
          BYTE8(v74) = v66;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(v53, &v77, &v74, &v75);
          v65 = v75[1];
        }

        else
        {
          v65 = v57[1];
        }

        v67 = 1 << -__clz(v65 - 1);
        if (v65 <= 0)
        {
          return 0;
        }

        else
        {
          return v67;
        }
      }

      v59 = 1;
      while (v58 != -4096)
      {
        v60 = v56 + v59++;
        v56 = v60 & (v55 - 1);
        v57 = (v52 + 24 * v56);
        v58 = *v57;
        if (*v57 == v36)
        {
          goto LABEL_104;
        }
      }
    }

    v57 = (v52 + 24 * v55);
    goto LABEL_104;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    Context = mlir::Type::getContext(&v72);
    if (a4)
    {
      v49 = Context;
      *&v74 = (*(*(a3 + 8) + 8))(*(a3 + 8));
      mlir::IntegerAttr::getValue(&v74, &v75);
      if (v76 > 0x40)
      {
        v50 = *v75;
        MEMORY[0x259C63150](v75);
      }

      else
      {
        LODWORD(v50) = v75;
      }

      Context = v49;
    }

    else
    {
      LODWORD(v50) = 64;
    }

    v61 = mlir::IntegerType::get(Context, v50, 0);
    v73 = a2;
    *&v74 = v61;
    v62 = *(a2 + 112);
    v26 = a2 + 112;
    v25 = v62;
    v63 = *(v26 + 16);
    if (v63)
    {
      v28 = (v63 - 1) & ((v61 >> 4) ^ (v61 >> 9));
      v64 = *(v25 + 16 * v28);
      if (v64 == v61)
      {
LABEL_100:
        if (v28 != v63)
        {
          return *(v25 + 16 * v28 + 8);
        }
      }

      else
      {
        v70 = 1;
        while (v64 != -4096)
        {
          v71 = v28 + v70++;
          v28 = v71 & (v63 - 1);
          v64 = *(v25 + 16 * v28);
          if (v64 == v61)
          {
            goto LABEL_100;
          }
        }
      }
    }

    v33 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypePreferredAlignment(mlir::Type)::$_0>(&v73, v61);
    goto LABEL_63;
  }

  v39 = v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v40 = a1;
  }

  else
  {
    v40 = 0;
  }

  v75 = v40;
  if (v39)
  {
    ElementType = mlir::ComplexType::getElementType(&v75);
    return mlir::detail::getDefaultPreferredAlignment(ElementType, a2, a3, a4);
  }

  else
  {
    v42 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a1);
    if (!v42)
    {
      reportMissingDataLayout(a1);
    }

    v44 = *(v43 + 24);

    return v44(v43, v42, a2, a3, a4);
  }
}

uint64_t mlir::DataLayout::getTypeSizeInBits(void *a1, uint64_t a2)
{
  v14 = a1;
  v4 = a1[8];
  v2 = a1 + 8;
  v3 = v4;
  v17 = a2;
  v5 = *(v2 + 4);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = (v3 + 24 * v6);
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & (v5 - 1);
      v7 = (v3 + 24 * v6);
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = (v3 + 24 * v5);
LABEL_8:
  if (v7 != (v3 + 24 * v5))
  {
    return v7[1];
  }

  v12 = v2;
  *&v15 = llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSizeInBits(mlir::Type)::$_0>(&v14, a2);
  BYTE8(v15) = v13;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(v12, &v17, &v15, v16);
  return *(v16[0] + 8);
}

uint64_t mlir::DataLayout::getTypeSize(void *a1, uint64_t a2)
{
  v14 = a1;
  v4 = a1[5];
  v2 = a1 + 5;
  v3 = v4;
  v17 = a2;
  v5 = *(v2 + 4);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = (v3 + 24 * v6);
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & (v5 - 1);
      v7 = (v3 + 24 * v6);
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = (v3 + 24 * v5);
LABEL_8:
  if (v7 != (v3 + 24 * v5))
  {
    return v7[1];
  }

  v12 = v2;
  *&v15 = llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>(&v14, a2);
  BYTE8(v15) = v13;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(v12, &v17, &v15, v16);
  return *(v16[0] + 8);
}

void reportMissingDataLayout(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  llvm::raw_string_ostream::raw_string_ostream(v5, v6);
  v2 = llvm::raw_ostream::operator<<(v5, "neither the scoping op nor the type class provide data layout information for ");
  mlir::operator<<(v2, a1);
  v4 = 260;
  v3 = v6;
  llvm::report_fatal_error(&v3, 1);
}

uint64_t mlir::detail::getDefaultABIAlignment(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  v5 = *(*a1 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v67 = a2;
    v24 = a2 + 40;
    v23 = *(a2 + 40);
    v71 = a1;
    v25 = *(a2 + 56);
    if (v25)
    {
      v26 = (v25 - 1) & ((a1 >> 4) ^ (a1 >> 9));
      v27 = (v23 + 24 * v26);
      v28 = *v27;
      if (*v27 == a1)
      {
        goto LABEL_63;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v26 + v29++;
        v26 = v30 & (v25 - 1);
        v27 = (v23 + 24 * v26);
        v28 = *v27;
        if (*v27 == a1)
        {
          goto LABEL_63;
        }
      }
    }

    v27 = (v23 + 24 * v25);
LABEL_63:
    if (v27 == (v23 + 24 * v25))
    {
LABEL_67:
      *&v68 = llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>(&v67, a1);
      BYTE8(v68) = v38;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(v24, &v71, &v68, &v69);
      v37 = v69[1];
LABEL_68:
      v39 = 1 << -__clz(v37 - 1);
      if (v37 <= 0)
      {
        return 0;
      }

      else
      {
        return v39;
      }
    }

LABEL_64:
    v37 = v27[1];
    goto LABEL_68;
  }

  v19 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v19 || (v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id ? (v40 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v40 = 1), v40))
  {
    if (a1)
    {
      if (a4)
      {
        v20 = (*(*(a3 + 8) + 8))(*(a3 + 8));
LABEL_49:
        v69 = v20;
        mlir::DenseElementsAttr::isValidIntOrFloat(&v69, 8, 1, 0);
        RawData = mlir::DenseElementsAttr::getRawData(&v69);
        mlir::DenseElementsAttr::isSplat(&v69);
        mlir::DenseElementsAttr::getType(&v69);
        mlir::DenseElementsAttr::getNumElements(&v69);
        return *RawData >> 3;
      }

      v67 = a2;
      v24 = a2 + 40;
      v31 = *(a2 + 40);
      v71 = a1;
      v32 = *(a2 + 56);
      if (v32)
      {
        v33 = (v32 - 1) & ((a1 >> 4) ^ (a1 >> 9));
        v27 = (v31 + 24 * v33);
        v34 = *v27;
        if (*v27 == a1)
        {
          goto LABEL_66;
        }

        v35 = 1;
        while (v34 != -4096)
        {
          v36 = v33 + v35++;
          v33 = v36 & (v32 - 1);
          v27 = (v31 + 24 * v33);
          v34 = *v27;
          if (*v27 == a1)
          {
            goto LABEL_66;
          }
        }
      }

      v27 = (v31 + 24 * v32);
LABEL_66:
      if (v27 == (v31 + 24 * v32))
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    Context = mlir::Type::getContext(&v66);
    if (a4)
    {
      v50 = Context;
      *&v68 = (*(*(a3 + 8) + 8))(*(a3 + 8));
      mlir::IntegerAttr::getValue(&v68, &v69);
      if (v70 > 0x40)
      {
        v51 = *v69;
        MEMORY[0x259C63150](v69);
      }

      else
      {
        LODWORD(v51) = v69;
      }

      Context = v50;
    }

    else
    {
      LODWORD(v51) = 64;
    }

    v54 = mlir::IntegerType::get(Context, v51, 0);
    v67 = a2;
    *&v68 = v54;
    v57 = *(a2 + 88);
    v56 = a2 + 88;
    v55 = v57;
    v58 = *(v56 + 16);
    if (v58)
    {
      v59 = (v58 - 1) & ((v54 >> 4) ^ (v54 >> 9));
      v60 = *(v55 + 16 * v59);
      if (v60 == v54)
      {
LABEL_96:
        if (v59 != v58)
        {
          return *(v55 + 16 * v59 + 8);
        }
      }

      else
      {
        v64 = 1;
        while (v60 != -4096)
        {
          v65 = v59 + v64++;
          v59 = v65 & (v58 - 1);
          v60 = *(v55 + 16 * v59);
          if (v60 == v54)
          {
            goto LABEL_96;
          }
        }
      }
    }

    v71 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>(&v67, v54);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v56, &v68, &v71, &v69);
    return v69[1];
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *&v68 = a1;
    if (a4)
    {
      findEntryForIntegerType(a1, a3, a4);
      v20 = (*(v52 + 8))(v52);
      goto LABEL_49;
    }

    if (mlir::IntegerType::getWidth(&v68) > 0x3F)
    {
      return 4;
    }

    else
    {
      Width = mlir::IntegerType::getWidth(&v68);
      v62 = (Width - (Width != 0)) >> 3;
      if (Width)
      {
        ++v62;
      }

      v63 = 1 << -__clz(v62 - 1);
      if (v62)
      {
        return v63;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v43 = v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v44 = a1;
    }

    else
    {
      v44 = 0;
    }

    v69 = v44;
    if (v43)
    {
      ElementType = mlir::ComplexType::getElementType(&v69);
      return mlir::detail::getDefaultABIAlignment(ElementType, a2, a3, a4);
    }

    else
    {
      v46 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a1);
      if (!v46)
      {
        reportMissingDataLayout(a1);
      }

      v48 = *(v47 + 16);

      return v48(v47, v46, a2, a3, a4);
    }
  }
}

uint64_t mlir::DataLayout::getTypeABIAlignment(uint64_t a1, void *a2)
{
  v10 = a1;
  v3 = a1 + 88;
  v2 = *(a1 + 88);
  v13 = a2;
  v4 = *(a1 + 104);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v2 + 16 * v5);
  if (v6 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (v4 - 1);
      v6 = *(v2 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v5 == v4)
  {
LABEL_4:
    v11 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>(&v10, a2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v3, &v13, &v11, v12);
    return *(v12[0] + 8);
  }

  return *(v2 + 16 * v5 + 8);
}

uint64_t mlir::DataLayout::getTypePreferredAlignment(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v3 = a1 + 112;
  v2 = *(a1 + 112);
  v13 = a2;
  v4 = *(a1 + 128);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v2 + 16 * v5);
  if (v6 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (v4 - 1);
      v6 = *(v2 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v5 == v4)
  {
LABEL_4:
    v11 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypePreferredAlignment(mlir::Type)::$_0>(&v10, a2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v3, &v13, &v11, v12);
    return *(v12[0] + 8);
  }

  return *(v2 + 16 * v5 + 8);
}

unint64_t mlir::detail::getDefaultIndexBitwidth(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if (a4)
    {
      v15 = (*(*(a3 + 8) + 8))();
      mlir::IntegerAttr::getValue(&v15, &v13);
      if (v14 > 0x40)
      {
        v11 = *v13;
        MEMORY[0x259C63150]();
      }

      else
      {
        v11 = v13;
      }
    }

    else
    {
      v11 = 64;
    }

    v8 = v11 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    v8 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a1);
    if (v8)
    {
      v9 = (*(v7 + 32))(v7, v8, a2, a3, a4);
      v8 = v9 & 0xFFFFFFFFFFFFFF00;
      if (v10)
      {
        LOBYTE(v11) = v9;
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      if ((v10 & 1) == 0)
      {
        v8 = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v8 | v11;
}

uint64_t mlir::detail::getDefaultEndianness(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(a2 + 8))(a2, result);
  }

  return result;
}

uint64_t mlir::detail::getDefaultAllocaMemorySpace(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(a2 + 8))(a2, result);
  }

  return result;
}

uint64_t mlir::detail::getDefaultProgramMemorySpace(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(a2 + 8))(a2, result);
  }

  return result;
}

uint64_t mlir::detail::getDefaultGlobalMemorySpace(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(a2 + 8))(a2, result);
  }

  return result;
}

uint64_t *mlir::detail::getDefaultStackAlignment(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    v5 = (*(a2 + 8))(a2, result);
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      v2 = *v3;
      MEMORY[0x259C63150]();
      return v2;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t mlir::detail::getDevicePropertyValue(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(a2 + 8))(a2, result);
  }

  return result;
}

uint64_t mlir::detail::filterEntriesForType@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = result + 16 * a2;
  if (a2)
  {
    v8 = 16 * a2;
    while (1)
    {
      result = (**(v5 + 8))();
      if ((result & 4) == 0 && (result & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(result & 0xFFFFFFFFFFFFFFF8) + 136) == a3)
      {
        break;
      }

      v5 += 16;
      v8 -= 16;
      if (!v8)
      {
        v13 = 0;
        LODWORD(v11) = 0;
        *a4 = a4 + 16;
        *(a4 + 8) = 0x400000000;
        v9 = (a4 + 8);
        v10 = 1;
        v5 = v7;
        v14 = 0;
        goto LABEL_18;
      }
    }
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x400000000;
  v9 = (a4 + 8);
  v10 = v5 == v7;
  if (v5 == v7)
  {
    v13 = 0;
    LODWORD(v11) = 0;
    v10 = 1;
    v14 = 0;
  }

  else
  {
    v11 = 0;
    v12 = v5;
    do
    {
      do
      {
        v12 += 16;
        if (v12 == v7)
        {
          break;
        }

        result = (**(v12 + 8))();
      }

      while ((result & 4) != 0 || (result & 0xFFFFFFFFFFFFFFF8) == 0 || *(*(result & 0xFFFFFFFFFFFFFFF8) + 136) != a3);
      ++v11;
    }

    while (v12 != v7);
    v13 = *(a4 + 8);
    v14 = v13;
    if (v11 + v13 > *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

LABEL_18:
  if (!v10)
  {
    v15 = (*a4 + 16 * v14);
    do
    {
      *v15 = *v5;
      do
      {
        v5 += 16;
        if (v5 == v7)
        {
          break;
        }

        result = (**(v5 + 8))();
      }

      while ((result & 4) != 0 || (result & 0xFFFFFFFFFFFFFFF8) == 0 || *(*(result & 0xFFFFFFFFFFFFFFF8) + 136) != a3);
      ++v15;
    }

    while (v5 != v7);
    v13 = *v9;
  }

  *v9 = v13 + v11;
  return result;
}

uint64_t mlir::detail::filterEntryForIdentifier(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 16 * a2;
  for (i = a1; ; i += 2)
  {
    v8 = *i;
    v9 = i[1];
    if (((*v9)(v9, *i) & 4) != 0 && ((*v9)(v9, v8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      break;
    }

    v6 -= 16;
    if (!v6)
    {
      return 0;
    }
  }

  if (i == &a1[2 * a2])
  {
    return 0;
  }

  else
  {
    return *i;
  }
}

BOOL mlir::detail::verifyDataLayoutOp(mlir::detail *this, mlir::Operation *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    *&v41 = this;
    DataLayoutSpec = mlir::ModuleOp::getDataLayoutSpec(&v41);
    if (!DataLayoutSpec)
    {
      return 1;
    }
  }

  else if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(this))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    DataLayoutSpec = (*InterfaceFor)(InterfaceFor, this);
    if (!DataLayoutSpec)
    {
      return 1;
    }
  }

  else
  {
    DataLayoutSpec = MEMORY[0](0, 0);
    if (!DataLayoutSpec)
    {
      return 1;
    }
  }

  if (((*(v3 + 72))(v3, DataLayoutSpec, *(this + 3)) & 1) == 0)
  {
    return 0;
  }

  if (getCombinedDataLayout(this))
  {
    return 1;
  }

  v28[8] = 257;
  mlir::Operation::emitError(v29, this, &v26);
  if (v29[0])
  {
    LODWORD(v41) = 3;
    *(&v41 + 1) = "data layout does not combine with layouts of enclosing ops";
    v42 = 58;
    if (v32 >= v33)
    {
      if (v31 > &v41 || v31 + 24 * v32 <= &v41)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v31 + 24 * v32;
    v8 = v41;
    *(v7 + 2) = v42;
    *v7 = v8;
    ++v32;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(&v41, v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v38;
      v11 = __p;
      if (v38 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v38 = v9;
      operator delete(v11);
    }

    v12 = v35;
    if (v35)
    {
      v13 = v36;
      v14 = v35;
      if (v36 != v35)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v35;
      }

      v36 = v12;
      operator delete(v14);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  v29[0] = &v30;
  v29[1] = 0x300000000;
  v26 = v28;
  v27 = 0x600000000;
  collectParentLayouts(this, v29, &v26);
  if (v27)
  {
    mlir::Diagnostic::attachNote();
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v17 = result;
  if (v26 != v28)
  {
    free(v26);
    result = v17;
  }

  if (v29[0] != &v30)
  {
    free(v29[0]);
    result = v17;
  }

  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v17;
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
      result = v17;
    }

    v18 = v47;
    if (v47)
    {
      v19 = v48;
      v20 = v47;
      if (v48 != v47)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = v47;
      }

      v48 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v45;
    if (v45)
    {
      v22 = v46;
      v23 = v45;
      if (v46 != v45)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v45;
      }

      v46 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v43 != &v44)
    {
      free(v43);
      return v17;
    }
  }

  return result;
}

mlir::Operation *getCombinedDataLayout(mlir::Operation *a1)
{
  v1 = a1;
  v29[6] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return v1;
  }

  v27 = v29;
  v28 = 0x300000000;
  v24 = v26;
  v25 = 0x300000000;
  collectParentLayouts(a1, &v24, 0);
  if (!v25)
  {
    if (*(*(v1 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v21 = v1;
      DataLayoutSpec = mlir::ModuleOp::getDataLayoutSpec(&v21);
    }

    else
    {
      InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
      if (InterfaceFor)
      {
        InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
      }

      else
      {
        v1 = 0;
      }

      DataLayoutSpec = (*InterfaceFor)(InterfaceFor, v1);
    }

    v1 = DataLayoutSpec;
    goto LABEL_44;
  }

  v2 = v24;
  v3 = 16 * v25;
  while (1)
  {
    v4 = v24 + v3;
    if (*(v24 + v3 - 16))
    {
      break;
    }

    v3 -= 16;
    if (!v3)
    {
      v21 = v23;
      HIDWORD(v22) = 2;
      goto LABEL_30;
    }
  }

  v21 = v23;
  v22 = 0x200000000;
  if (v3)
  {
    v6 = 0;
    v7 = v24 + v3;
    do
    {
      v8 = v6++;
      v7 -= 16;
      if (v7 == v24)
      {
        break;
      }

      v9 = v7;
      while (1)
      {
        v10 = *(v9 - 2);
        v9 -= 16;
        if (v10)
        {
          break;
        }

        v7 = v9;
        if (v9 == v24)
        {
          goto LABEL_19;
        }
      }
    }

    while (v7 != v24);
LABEL_19:
    if (v8 >= 2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v23;
    do
    {
      v13 = v4 - 16;
      *v12 = *(v4 - 1);
      if (v4 - 16 == v2)
      {
        break;
      }

      v4 -= 16;
      while (1)
      {
        v14 = *(v13 - 2);
        v13 -= 16;
        if (v14)
        {
          break;
        }

        v4 = v13;
        if (v13 == v2)
        {
          goto LABEL_29;
        }
      }

      ++v12;
    }

    while (v4 != v2);
LABEL_29:
    LODWORD(v3) = v22 + v6;
  }

LABEL_30:
  LODWORD(v22) = v3;
  if (*(*(v1 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v20 = v1;
    v17 = mlir::ModuleOp::getDataLayoutSpec(&v20);
    if (v17)
    {
      goto LABEL_39;
    }

LABEL_34:
    if (v22)
    {
      v1 = (**(v21 + 2 * v22 - 1))();
      v18 = v21;
      if (v21 == v23)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v1 = 0;
      v18 = v21;
      if (v21 == v23)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_40;
  }

  v15 = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  if (v15)
  {
    v15 = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  else
  {
    v1 = 0;
  }

  v17 = (*v15)(v15, v1);
  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_39:
  v1 = (*v16)(v16, v17, v21, v22);
  v18 = v21;
  if (v21 != v23)
  {
LABEL_40:
    free(v18);
  }

LABEL_44:
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v1;
}

mlir::Block *collectParentLayouts(mlir::Block *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *(result + 2);
    if (result)
    {
      result = mlir::Block::getParentOp(result);
      if (result)
      {
        v5 = result;
        while (1)
        {
          if (*(*(v5 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
          {
            v18 = v5;
            v7 = *(v5 + 2);
            if ((!v7 || !mlir::Block::getParentOp(v7)) && !mlir::ModuleOp::getDataLayoutSpec(&v18))
            {
              goto LABEL_21;
            }

            DataLayoutSpec = mlir::ModuleOp::getDataLayoutSpec(&v18);
            v10 = *(a2 + 8);
            if (v10 >= *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = (*a2 + 16 * v10);
            *v11 = DataLayoutSpec;
            v11[1] = v9;
            ++*(a2 + 8);
            if (!a3)
            {
              goto LABEL_21;
            }

            v12 = *(v18 + 3);
          }

          else
          {
            if (!mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5))
            {
              goto LABEL_21;
            }

            InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
            if (!v5)
            {
              goto LABEL_21;
            }

            v13 = (*InterfaceFor)(InterfaceFor, v5);
            v15 = *(a2 + 8);
            if (v15 >= *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = (*a2 + 16 * v15);
            *v16 = v13;
            v16[1] = v14;
            ++*(a2 + 8);
            if (!a3)
            {
              goto LABEL_21;
            }

            v12 = *(v5 + 3);
          }

          v17 = *(a3 + 8);
          if (v17 >= *(a3 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a3 + 8 * v17) = v12;
          ++*(a3 + 8);
LABEL_21:
          result = *(v5 + 2);
          if (result)
          {
            result = mlir::Block::getParentOp(result);
            v5 = result;
            if (result)
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::DataLayout::DataLayout(mlir::DataLayout *this)
{
  return mlir::DataLayout::DataLayout(this, 0);
}

{
  return mlir::DataLayout::DataLayout(this, 0);
}

uint64_t mlir::DataLayout::DataLayout(uint64_t a1, mlir::Operation *a2)
{
  *a1 = getCombinedDataLayout(a2);
  *(a1 + 8) = v4;
  if (a2)
  {
    v5 = *(*(a2 + 6) + 16);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;
    if (!v6)
    {
      ParentOp = a2;
      do
      {
        ParentOp = *(ParentOp + 2);
        if (!ParentOp)
        {
          break;
        }

        ParentOp = mlir::Block::getParentOp(ParentOp);
        if (!ParentOp)
        {
          break;
        }
      }

      while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
      v12 = ParentOp;
    }

    TargetSystemSpec = mlir::ModuleOp::getTargetSystemSpec(&v12);
  }

  else
  {
    TargetSystemSpec = 0;
    v10 = 0;
  }

  *(a1 + 16) = TargetSystemSpec;
  *(a1 + 24) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return a1;
}

{
  *a1 = getCombinedDataLayout(a2);
  *(a1 + 8) = v4;
  if (a2)
  {
    v5 = *(*(a2 + 6) + 16);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;
    if (!v6)
    {
      ParentOp = a2;
      do
      {
        ParentOp = *(ParentOp + 2);
        if (!ParentOp)
        {
          break;
        }

        ParentOp = mlir::Block::getParentOp(ParentOp);
        if (!ParentOp)
        {
          break;
        }
      }

      while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
      v12 = ParentOp;
    }

    TargetSystemSpec = mlir::ModuleOp::getTargetSystemSpec(&v12);
  }

  else
  {
    TargetSystemSpec = 0;
    v10 = 0;
  }

  *(a1 + 16) = TargetSystemSpec;
  *(a1 + 24) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return a1;
}

mlir::Block *mlir::DataLayout::closest@<X0>(mlir::Block *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v4 = this;
    while (*(*(v4 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v4))
      {
        mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
        if (v4)
        {

          return mlir::DataLayout::DataLayout(a2, v4);
        }
      }

      this = *(v4 + 2);
      if (this)
      {
        this = mlir::Block::getParentOp(this);
        v4 = this;
        if (this)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    return mlir::DataLayout::DataLayout(a2, v4);
  }

  else
  {
LABEL_8:
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 44) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return this;
}

uint64_t mlir::DataLayout::getTypeIndexBitwidth(void *a1, void *a2)
{
  v14 = a1;
  v4 = a1[17];
  v2 = a1 + 17;
  v3 = v4;
  v17 = a2;
  v5 = *(v2 + 4);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = (v3 + 24 * v6);
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & (v5 - 1);
      v7 = (v3 + 24 * v6);
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = (v3 + 24 * v5);
LABEL_8:
  if (v7 != (v3 + 24 * v5))
  {
    return v7[1];
  }

  v12 = v2;
  *&v15 = llvm::function_ref<std::optional<unsigned long long> ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeIndexBitwidth(mlir::Type)::$_0>(&v14, a2);
  BYTE8(v15) = v13;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(v12, &v17, &v15, v16);
  return *(v16[0] + 8);
}

uint64_t mlir::DataLayout::getEndianness(mlir::DataLayout *this)
{
  if (*(this + 168) == 1)
  {
    return *(this + 20);
  }

  if (*this)
  {
    mlir::Attribute::getContext(this);
    (*(*(this + 1) + 16))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    result = (*(InterfaceFor + 56))(v3, v5);
    if (*(this + 168))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  if (!v3)
  {
    result = 0;
    if (*(this + 168))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = (*(v5 + 8))(v5, v3);
  if ((*(this + 168) & 1) == 0)
  {
LABEL_13:
    *(this + 168) = 1;
  }

LABEL_14:
  *(this + 20) = result;
  return result;
}

uint64_t mlir::DataLayout::getAllocaMemorySpace(mlir::DataLayout *this)
{
  if (*(this + 184) == 1)
  {
    return *(this + 22);
  }

  if (*this)
  {
    mlir::Attribute::getContext(this);
    (*(*(this + 1) + 24))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    result = (*(InterfaceFor + 64))(v3, v5);
    if (*(this + 184))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  if (!v3)
  {
    result = 0;
    if (*(this + 184))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = (*(v5 + 8))(v5, v3);
  if ((*(this + 184) & 1) == 0)
  {
LABEL_13:
    *(this + 184) = 1;
  }

LABEL_14:
  *(this + 22) = result;
  return result;
}

uint64_t mlir::DataLayout::getProgramMemorySpace(mlir::DataLayout *this)
{
  if (*(this + 200) == 1)
  {
    return *(this + 24);
  }

  if (*this)
  {
    mlir::Attribute::getContext(this);
    (*(*(this + 1) + 32))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    result = (*(InterfaceFor + 72))(v3, v5);
    if (*(this + 200))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  if (!v3)
  {
    result = 0;
    if (*(this + 200))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = (*(v5 + 8))(v5, v3);
  if ((*(this + 200) & 1) == 0)
  {
LABEL_13:
    *(this + 200) = 1;
  }

LABEL_14:
  *(this + 24) = result;
  return result;
}

uint64_t mlir::DataLayout::getGlobalMemorySpace(mlir::DataLayout *this)
{
  if (*(this + 216) == 1)
  {
    return *(this + 26);
  }

  if (*this)
  {
    mlir::Attribute::getContext(this);
    (*(*(this + 1) + 40))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    result = (*(InterfaceFor + 80))(v3, v5);
    if (*(this + 216))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  if (!v3)
  {
    result = 0;
    if (*(this + 216))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = (*(v5 + 8))(v5, v3);
  if ((*(this + 216) & 1) == 0)
  {
LABEL_13:
    *(this + 216) = 1;
  }

LABEL_14:
  *(this + 26) = result;
  return result;
}

uint64_t *mlir::DataLayout::getStackAlignment(mlir::DataLayout *this)
{
  if (*(this + 232) == 1)
  {
    return *(this + 28);
  }

  if (*this)
  {
    mlir::Attribute::getContext(this);
    (*(*(this + 1) + 48))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
    v6 = *(this + 4);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3)
    {
      v11 = (*(v5 + 8))(v5, v3);
      mlir::IntegerAttr::getValue(&v11, &v9);
      if (v10 > 0x40)
      {
        v8 = *v9;
        MEMORY[0x259C63150]();
        result = v8;
      }

      else
      {
        result = v9;
      }
    }

    else
    {
      result = 0;
    }

    goto LABEL_9;
  }

  v5 = 0;
  v3 = 0;
  v6 = *(this + 4);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6))
  {
    goto LABEL_10;
  }

  InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
  result = (*(InterfaceFor + 88))(v3, v5);
LABEL_9:
  *(this + 28) = result;
  *(this + 232) = 1;
  return result;
}

uint64_t mlir::DataLayout::getDevicePropertyValue(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[2] && ((*(a1[3] + 8))(&v11), v13 == 1))
  {
    v5 = (*(v12 + 8))(v12, v11, a3);
    v7 = v6;
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v8))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
    return (*(InterfaceFor + 96))(v5, v7);
  }

LABEL_8:
  if (v5)
  {
    return (*(v7 + 8))(v7, v5);
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::DataLayoutSpecInterface::bucketEntriesByType(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1[1] + 8))(a1[1], *a1);
  if (v6)
  {
    v7 = result;
    v8 = &result[2 * v6];
    do
    {
      while (1)
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = (*v10)(v10, *v7);
        if ((v11 & 4) == 0 && (v11 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          break;
        }

        v14 = (*v10)(v10, v9) & 0xFFFFFFFFFFFFFFF8;
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>,mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>::operator[](a3, &v14);
        *result = v9;
        result[1] = v10;
        v7 += 2;
        if (v7 == v8)
        {
          return result;
        }
      }

      v14 = *(*(v11 & 0xFFFFFFFFFFFFFFF8) + 136);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::operator[](a2, &v14);
      v12 = *(result + 2);
      if (v12 >= *(result + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = (*result + 16 * v12);
      *v13 = v9;
      v13[1] = v10;
      ++*(result + 2);
      v7 += 2;
    }

    while (v7 != v8);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 88 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 88 * (v12 & v3));
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::LookupBucketFor<mlir::TypeID>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0x400000000;
  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>,mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v10 = 0;
    v11 = 1;
    while (v6 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == -8192;
      }

      if (v12)
      {
        v10 = v5;
      }

      v13 = v4 + v11++;
      v4 = v13 & v3;
      v5 = (*a1 + 24 * (v13 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v10)
    {
      v5 = v10;
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
LABEL_24:
    v15 = a1;
    llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v5 = v16;
    ++*(v15 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v9 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = v9;
  return v5 + 1;
}

uint64_t mlir::detail::verifyDataLayoutSpec(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v160 = *MEMORY[0x277D85DE8];
  v142[0] = a1;
  v142[1] = a2;
  v4 = (*(a2 + 8))(a2, a1);
  if (!v5)
  {
LABEL_5:
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    mlir::DataLayoutSpecInterface::bucketEntriesByType(v142, &v139, &v136);
    if (!v140)
    {
      goto LABEL_164;
    }

    if (v141)
    {
      v8 = 88 * v141;
      v9 = v139;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 = (v9 + 88);
        v8 -= 88;
        if (!v8)
        {
          goto LABEL_164;
        }
      }
    }

    else
    {
      v9 = v139;
    }

    v10 = (v139 + 88 * v141);
    if (v9 == v10)
    {
LABEL_164:
      if (!v137)
      {
        goto LABEL_225;
      }

      if (v138)
      {
        v74 = 24 * v138;
        v75 = v136;
        while ((*v75 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v75 = (v75 + 24);
          v74 -= 24;
          if (!v74)
          {
            goto LABEL_225;
          }
        }
      }

      else
      {
        v75 = v136;
      }

      v76 = (v136 + 24 * v138);
      while (1)
      {
        if (v75 == v76)
        {
          goto LABEL_225;
        }

        *&v143 = (**(v75 + 2))() & 0xFFFFFFFFFFFFFFF8;
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v143);
        if (ReferencedDialect)
        {
          v78 = ReferencedDialect;
          if (!mlir::Dialect::getRegisteredInterface<mlir::DataLayoutDialectInterface>(ReferencedDialect))
          {
            mlir::emitError(a3, &ElementType);
            if (ElementType)
            {
              LODWORD(v157) = 3;
              *(&v157 + 1) = "the '";
              v158[0] = 5;
              if (v148 >= v149)
              {
                if (v147 > &v157 || v147 + 24 * v148 <= &v157)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v92 = v147 + 24 * v148;
              v93 = v157;
              *(v92 + 2) = v158[0];
              *v92 = v93;
              ++v148;
              if (ElementType)
              {
                v94 = *(v78 + 8);
                v95 = *(v78 + 16);
                v159 = 261;
                *&v157 = v94;
                *(&v157 + 1) = v95;
                mlir::Diagnostic::operator<<(&v146, &v157);
                if (ElementType)
                {
                  LODWORD(v157) = 3;
                  *(&v157 + 1) = "' dialect does not support identifier data layout entries";
                  v158[0] = 57;
                  if (v148 >= v149)
                  {
                    if (v147 > &v157 || v147 + 24 * v148 <= &v157)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v96 = v147 + 24 * v148;
                  v97 = v157;
                  *(v96 + 2) = v158[0];
                  *v96 = v97;
                  ++v148;
                }
              }
            }

            mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ElementType);
            if (ElementType)
            {
              mlir::InFlightDiagnostic::report(&ElementType);
            }

            if (v156)
            {
              if (v155 != &v156)
              {
                free(v155);
              }

              v98 = __p;
              if (__p)
              {
                v99 = v154;
                v100 = __p;
                if (v154 != __p)
                {
                  do
                  {
                    v99 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v99 - 1);
                  }

                  while (v99 != v98);
                  v100 = __p;
                }

                v154 = v98;
                operator delete(v100);
              }

              v101 = v151;
              if (v151)
              {
                v102 = v152;
                v103 = v151;
                if (v152 != v151)
                {
                  do
                  {
                    v105 = *--v102;
                    v104 = v105;
                    *v102 = 0;
                    if (v105)
                    {
                      MEMORY[0x259C63150](v104, 0x1000C8077774924);
                    }
                  }

                  while (v102 != v101);
                  v103 = v151;
                }

                v152 = v101;
LABEL_228:
                operator delete(v103);
              }

LABEL_229:
              v106 = v147;
              if (v147 != v150)
              {
LABEL_224:
                free(v106);
              }
            }

LABEL_225:
            llvm::deallocate_buffer(v136, (24 * v138));
          }

          v79 = mlir::Dialect::getRegisteredInterface<mlir::DataLayoutDialectInterface>(v78);
          if (((*(*v79 + 16))(v79, *(v75 + 1), *(v75 + 2), a3) & 1) == 0)
          {
            goto LABEL_225;
          }
        }

        do
        {
          v75 = (v75 + 24);
        }

        while (v75 != v76 && (*v75 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

    while (1)
    {
      v11 = (**(*(v9 + 1) + 8))();
      v12 = v11 & 0xFFFFFFFFFFFFFFF8;
      v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
      v14 = v13[17];
      if (v14 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        if (*(*(*(*(*(v9 + 1) + 8) + 8))() + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          mlir::emitError(a3, &ElementType);
          if (ElementType)
          {
            LODWORD(v157) = 3;
            *(&v157 + 1) = "expected integer attribute in the data layout entry for ";
            v158[0] = 56;
            if (v148 >= v149)
            {
              if (v147 > &v157 || v147 + 24 * v148 <= &v157)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v108 = v147 + 24 * v148;
            v109 = v157;
            *(v108 + 2) = v158[0];
            *v108 = v109;
            ++v148;
            if (ElementType)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v157, v12);
              if (v148 >= v149)
              {
                if (v147 > &v157 || v147 + 24 * v148 <= &v157)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v110 = v147 + 24 * v148;
              v111 = v157;
              *(v110 + 2) = v158[0];
              *v110 = v111;
              ++v148;
            }
          }

          mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ElementType);
          if (ElementType)
          {
            mlir::InFlightDiagnostic::report(&ElementType);
          }

          if (v156 != 1)
          {
            goto LABEL_225;
          }

          if (v155 != &v156)
          {
            free(v155);
          }

          v112 = __p;
          if (__p)
          {
            v113 = v154;
            v114 = __p;
            if (v154 != __p)
            {
              do
              {
                v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
              }

              while (v113 != v112);
              v114 = __p;
            }

            v154 = v112;
            operator delete(v114);
          }

          v115 = v151;
          if (!v151)
          {
            goto LABEL_229;
          }

          v116 = v152;
          v103 = v151;
          if (v152 == v151)
          {
            goto LABEL_297;
          }

          do
          {
            v118 = *--v116;
            v117 = v118;
            *v116 = 0;
            if (v118)
            {
              MEMORY[0x259C63150](v117, 0x1000C8077774924);
            }
          }

          while (v116 != v115);
LABEL_296:
          v103 = v151;
          goto LABEL_297;
        }
      }

      else
      {
        if (v14 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          v32 = *(v9 + 4);
          if (!v32)
          {
            goto LABEL_157;
          }

          v33 = *(v9 + 1);
          v34 = &v33[2 * v32];
          while (2)
          {
            v35 = *v33;
            v36 = (*(v33[1] + 8))();
            if (mlir::DenseIntElementsAttr::classof(v36))
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }

            v135 = v37;
            if (!v37 || (ElementType = mlir::DenseElementsAttr::getElementType(&v135), !mlir::Type::isSignlessInteger(&ElementType, 64)))
            {
              mlir::emitError(a3, &ElementType);
              if (ElementType)
              {
                LODWORD(v157) = 3;
                *(&v157 + 1) = "expected a dense i64 elements attribute in the data layout entry ";
                v158[0] = 65;
                if (v148 >= v149)
                {
                  if (v147 > &v157 || v147 + 24 * v148 <= &v157)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v80 = v147 + 24 * v148;
                v81 = v157;
                *(v80 + 2) = v158[0];
                *v80 = v81;
                ++v148;
                if (ElementType)
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v157, v35);
                  if (v148 >= v149)
                  {
                    if (v147 > &v157 || v147 + 24 * v148 <= &v157)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v82 = v147 + 24 * v148;
                  v83 = v157;
                  *(v82 + 2) = v158[0];
                  *v82 = v83;
                  ++v148;
                  if (ElementType)
                  {
                    mlir::InFlightDiagnostic::report(&ElementType);
                  }
                }
              }

              if (v156 == 1)
              {
                if (v155 != &v156)
                {
                  free(v155);
                }

                v84 = __p;
                if (__p)
                {
                  v85 = v154;
                  v86 = __p;
                  if (v154 != __p)
                  {
                    do
                    {
                      v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
                    }

                    while (v85 != v84);
                    v86 = __p;
                  }

                  v154 = v84;
                  operator delete(v86);
                }

                v87 = v151;
                if (v151)
                {
                  v88 = v152;
                  v89 = v151;
                  if (v152 != v151)
                  {
                    do
                    {
                      v91 = *--v88;
                      v90 = v91;
                      *v88 = 0;
                      if (v91)
                      {
                        MEMORY[0x259C63150](v90, 0x1000C8077774924);
                      }
                    }

                    while (v88 != v87);
                    v89 = v151;
                  }

                  v152 = v87;
                  operator delete(v89);
                }

                v106 = v147;
                if (v147 != v150)
                {
                  goto LABEL_224;
                }
              }

              goto LABEL_225;
            }

            mlir::DenseElementsAttr::isValidIntOrFloat(&v135, 8, 1, 0);
            RawData = mlir::DenseElementsAttr::getRawData(&v135);
            isSplat = mlir::DenseElementsAttr::isSplat(&v135);
            mlir::DenseElementsAttr::getType(&v135);
            NumElements = mlir::DenseElementsAttr::getNumElements(&v135);
            *&v157 = v158;
            *(&v157 + 1) = 0x200000000;
            if (NumElements >= 3)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (NumElements)
            {
              if (isSplat)
              {
                v41 = *RawData;
                v42 = v158;
                v47 = NumElements;
                do
                {
                  *v42++ = v41;
                  --v47;
                }

                while (v47);
              }

              else
              {
                v43 = v158;
                v44 = NumElements;
                v45 = RawData;
                do
                {
                  v46 = *v45++;
                  *v43++ = v46;
                  --v44;
                }

                while (v44);
              }
            }

            DWORD2(v157) = NumElements;
            if ((NumElements - 3) <= 0xFFFFFFFD)
            {
              mlir::emitError(a3, &ElementType);
              if (ElementType)
              {
                LODWORD(v143) = 3;
                *(&v143 + 1) = "expected 1 or 2 elements in the data layout entry ";
                v144 = 50;
                if (v148 >= v149)
                {
                  if (v147 > &v143 || v147 + 24 * v148 <= &v143)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v48 = v147 + 24 * v148;
                v49 = v143;
                *(v48 + 2) = v144;
                *v48 = v49;
                ++v148;
                if (ElementType)
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v143, v35);
                  if (v148 >= v149)
                  {
                    if (v147 > &v143 || v147 + 24 * v148 <= &v143)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v50 = v147 + 24 * v148;
                  v51 = v143;
                  *(v50 + 2) = v144;
                  *v50 = v51;
                  ++v148;
                  if (ElementType)
                  {
                    mlir::InFlightDiagnostic::report(&ElementType);
                  }
                }
              }

              if (v156 == 1)
              {
                if (v155 != &v156)
                {
                  free(v155);
                }

                v52 = __p;
                if (__p)
                {
                  v53 = v154;
                  v54 = __p;
                  if (v154 != __p)
                  {
                    do
                    {
                      v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
                    }

                    while (v53 != v52);
                    v54 = __p;
                  }

                  v154 = v52;
                  operator delete(v54);
                }

                v55 = v151;
                if (v151)
                {
                  v56 = v152;
                  v57 = v151;
                  if (v152 == v151)
                  {
                    goto LABEL_132;
                  }

                  do
                  {
                    v59 = *--v56;
                    v58 = v59;
                    *v56 = 0;
                    if (v59)
                    {
                      MEMORY[0x259C63150](v58, 0x1000C8077774924);
                    }
                  }

                  while (v56 != v55);
LABEL_131:
                  v57 = v151;
                  goto LABEL_132;
                }

                goto LABEL_133;
              }

              goto LABEL_135;
            }

            if (NumElements == 2 && v158[1] < v158[0])
            {
              mlir::emitError(a3, &ElementType);
              if (ElementType)
              {
                LODWORD(v143) = 3;
                *(&v143 + 1) = "preferred alignment is expected to be greater than or equal to the abi alignment in data layout entry ";
                v144 = 102;
                if (v148 >= v149)
                {
                  if (v147 > &v143 || v147 + 24 * v148 <= &v143)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v60 = v147 + 24 * v148;
                v61 = v143;
                *(v60 + 2) = v144;
                *v60 = v61;
                ++v148;
                if (ElementType)
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v143, v35);
                  if (v148 >= v149)
                  {
                    if (v147 > &v143 || v147 + 24 * v148 <= &v143)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v62 = v147 + 24 * v148;
                  v63 = v143;
                  *(v62 + 2) = v144;
                  *v62 = v63;
                  ++v148;
                  if (ElementType)
                  {
                    mlir::InFlightDiagnostic::report(&ElementType);
                  }
                }
              }

              if (v156 == 1)
              {
                if (v155 != &v156)
                {
                  free(v155);
                }

                v64 = __p;
                if (__p)
                {
                  v65 = v154;
                  v66 = __p;
                  if (v154 != __p)
                  {
                    do
                    {
                      v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
                    }

                    while (v65 != v64);
                    v66 = __p;
                  }

                  v154 = v64;
                  operator delete(v66);
                }

                v55 = v151;
                if (v151)
                {
                  v67 = v152;
                  v57 = v151;
                  if (v152 != v151)
                  {
                    do
                    {
                      v69 = *--v67;
                      v68 = v69;
                      *v67 = 0;
                      if (v69)
                      {
                        MEMORY[0x259C63150](v68, 0x1000C8077774924);
                      }
                    }

                    while (v67 != v55);
                    goto LABEL_131;
                  }

LABEL_132:
                  v152 = v55;
                  operator delete(v57);
                }

LABEL_133:
                if (v147 != v150)
                {
                  free(v147);
                }
              }

LABEL_135:
              v70 = 0;
              v71 = v157;
              if (v157 != v158)
              {
LABEL_136:
                free(v71);
              }
            }

            else
            {
              v70 = 1;
              v71 = v157;
              if (v157 != v158)
              {
                goto LABEL_136;
              }
            }

            if ((v70 & 1) == 0)
            {
              goto LABEL_225;
            }

            v33 += 2;
            if (v33 == v34)
            {
              goto LABEL_157;
            }

            continue;
          }
        }

        if (*(*v13 + 24) == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
        {
          mlir::emitError(a3, &ElementType);
          if (ElementType)
          {
            LODWORD(v157) = 3;
            *(&v157 + 1) = "unexpected data layout for a built-in type";
            v158[0] = 42;
            if (v148 >= v149)
            {
              if (v147 > &v157 || v147 + 24 * v148 <= &v157)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v119 = v147 + 24 * v148;
            v120 = v157;
            *(v119 + 2) = v158[0];
            *v119 = v120;
            ++v148;
          }

          mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ElementType);
          if (ElementType)
          {
            mlir::InFlightDiagnostic::report(&ElementType);
          }

          if (v156 != 1)
          {
            goto LABEL_225;
          }

          if (v155 != &v156)
          {
            free(v155);
          }

          v121 = __p;
          if (__p)
          {
            v122 = v154;
            v123 = __p;
            if (v154 != __p)
            {
              do
              {
                v122 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v122 - 1);
              }

              while (v122 != v121);
              v123 = __p;
            }

            v154 = v121;
            operator delete(v123);
          }

          v115 = v151;
          if (!v151)
          {
            goto LABEL_229;
          }

          v124 = v152;
          v103 = v151;
          if (v152 == v151)
          {
            goto LABEL_297;
          }

          do
          {
            v126 = *--v124;
            v125 = v126;
            *v124 = 0;
            if (v126)
            {
              MEMORY[0x259C63150](v125, 0x1000C8077774924);
            }
          }

          while (v124 != v115);
          goto LABEL_296;
        }

        v72 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible((v11 & 0xFFFFFFFFFFFFFFF8));
        if (!v72)
        {
          mlir::emitError(a3, &ElementType);
          if (ElementType)
          {
            LODWORD(v157) = 3;
            *(&v157 + 1) = "data layout specified for a type that does not support it";
            v158[0] = 57;
            if (v148 >= v149)
            {
              if (v147 > &v157 || v147 + 24 * v148 <= &v157)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v127 = v147 + 24 * v148;
            v128 = v157;
            *(v127 + 2) = v158[0];
            *v127 = v128;
            ++v148;
          }

          mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ElementType);
          if (ElementType)
          {
            mlir::InFlightDiagnostic::report(&ElementType);
          }

          if (v156 != 1)
          {
            goto LABEL_225;
          }

          if (v155 != &v156)
          {
            free(v155);
          }

          v129 = __p;
          if (__p)
          {
            v130 = v154;
            v131 = __p;
            if (v154 != __p)
            {
              do
              {
                v130 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v130 - 1);
              }

              while (v130 != v129);
              v131 = __p;
            }

            v154 = v129;
            operator delete(v131);
          }

          v115 = v151;
          if (!v151)
          {
            goto LABEL_229;
          }

          v132 = v152;
          v103 = v151;
          if (v152 != v151)
          {
            do
            {
              v134 = *--v132;
              v133 = v134;
              *v132 = 0;
              if (v134)
              {
                MEMORY[0x259C63150](v133, 0x1000C8077774924);
              }
            }

            while (v132 != v115);
            goto LABEL_296;
          }

LABEL_297:
          v152 = v115;
          goto LABEL_228;
        }

        if (((*(v73 + 48))(v73, v72, *(v9 + 1), *(v9 + 4), a3) & 1) == 0)
        {
          goto LABEL_225;
        }
      }

      do
      {
LABEL_157:
        v9 = (v9 + 88);
      }

      while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v9 == v10)
      {
        goto LABEL_164;
      }
    }
  }

  v6 = v4;
  v7 = v4 + 16 * v5;
  while (((*(*(v6 + 8) + 16))() & 1) != 0)
  {
    v6 += 16;
    if (v6 == v7)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

void mlir::detail::verifyTargetSystemSpec(uint64_t a1, uint64_t (**a2)(void, uint64_t), uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v4 = (*a2)(a2, a1);
  if (v5)
  {
    v6 = v4;
    v7 = (v4 + 24 * v5);
    while (1)
    {
      v8 = v6[1];
      v9 = v6[2];
      if (((*(v9 + 16))(v9, v8, a3) & 1) == 0)
      {
        goto LABEL_30;
      }

      *&v44 = *v6;
      llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v39, &v44, &v47);
      if ((v48[8] & 1) == 0)
      {
        goto LABEL_30;
      }

      v10 = (*v9)(v9, v8);
      if (v11)
      {
        break;
      }

LABEL_3:
      v6 += 3;
      if (v6 == v7)
      {
        goto LABEL_14;
      }
    }

    v12 = v10;
    v13 = (v10 + 16 * v11);
    while (1)
    {
      v14 = *v12;
      v15 = v12[1];
      v16 = (*v15)(v15, *v12);
      if (v16 >= 8 && (v16 & 4) == 0)
      {
        break;
      }

      v47 = (*v15)(v15, v14) & 0xFFFFFFFFFFFFFFF8;
      v18 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>,mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>::operator[](&v41, &v47);
      *v18 = v14;
      v18[1] = v15;
      v12 += 2;
      if (v12 == v13)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_14:
    if (v42)
    {
      if (v43)
      {
        v19 = 24 * v43;
        v20 = v41;
        while ((*v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v20 = (v20 + 24);
          v19 -= 24;
          if (!v19)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v20 = v41;
      }

      v21 = (v41 + 24 * v43);
      if (v20 != v21)
      {
        while (1)
        {
          ReferencedDialect = mlir::StringAttr::getReferencedDialect(v20);
          v23 = ReferencedDialect;
          if (!ReferencedDialect)
          {
            goto LABEL_30;
          }

          if (!mlir::Dialect::getRegisteredInterface<mlir::DataLayoutDialectInterface>(ReferencedDialect))
          {
            break;
          }

          v24 = mlir::Dialect::getRegisteredInterface<mlir::DataLayoutDialectInterface>(v23);
          if ((*(*v24 + 16))(v24, *(v20 + 1), *(v20 + 2), a3))
          {
            do
            {
              v20 = (v20 + 24);
            }

            while (v20 != v21 && (*v20 | 0x1000) == 0xFFFFFFFFFFFFF000);
            if (v20 != v21)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        mlir::emitError(a3, &v47);
        if (v47)
        {
          LODWORD(v44) = 3;
          *(&v44 + 1) = "the '";
          v45 = 5;
          if (v50 >= v51)
          {
            if (v49 > &v44 || v49 + 24 * v50 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v25 = v49 + 24 * v50;
          v26 = v44;
          *(v25 + 2) = v45;
          *v25 = v26;
          ++v50;
          if (v47)
          {
            v27 = *(v23 + 8);
            v28 = *(v23 + 16);
            v46 = 261;
            *&v44 = v27;
            *(&v44 + 1) = v28;
            mlir::Diagnostic::operator<<(v48, &v44);
            if (v47)
            {
              LODWORD(v44) = 3;
              *(&v44 + 1) = "' dialect does not support identifier data layout entries";
              v45 = 57;
              if (v50 >= v51)
              {
                if (v49 > &v44 || v49 + 24 * v50 <= &v44)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v29 = v49 + 24 * v50;
              v30 = v44;
              *(v29 + 2) = v45;
              *v29 = v30;
              ++v50;
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
        if (v47)
        {
          mlir::InFlightDiagnostic::report(&v47);
        }

        if (v58)
        {
          if (v57 != &v58)
          {
            free(v57);
          }

          v31 = __p;
          if (__p)
          {
            v32 = v56;
            v33 = __p;
            if (v56 != __p)
            {
              do
              {
                v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
              }

              while (v32 != v31);
              v33 = __p;
            }

            v56 = v31;
            operator delete(v33);
          }

          v34 = v53;
          if (v53)
          {
            v35 = v54;
            v36 = v53;
            if (v54 != v53)
            {
              do
              {
                v38 = *--v35;
                v37 = v38;
                *v35 = 0;
                if (v38)
                {
                  MEMORY[0x259C63150](v37, 0x1000C8077774924);
                }
              }

              while (v35 != v34);
              v36 = v53;
            }

            v54 = v34;
            operator delete(v36);
          }

          if (v49 != &v52)
          {
            free(v49);
          }
        }
      }
    }
  }

LABEL_30:
  llvm::deallocate_buffer(v39[0], (8 * v40));
}

void *llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

const char *llvm::getTypeName<mlir::DataLayoutTypeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutTypeInterface]";
  v6 = 79;
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

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2868A3EF8;
  *(a1 + 48) = a2;
  llvm::raw_ostream::SetBufferAndMode(a1, 0, 0, 0);
  return a1;
}

void *findEntryForIntegerType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = 0;
  v23 = a1;
  v21 = v22;
  v22[0] = 0;
  if (a3)
  {
    v3 = a2;
    v4 = a2 + 16 * a3;
    do
    {
      v20 = (**(v3 + 8))(*(v3 + 8), *v3) & 0xFFFFFFFFFFFFFFF8;
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v20);
      v6 = v22[0];
      if (!v22[0])
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 8);
          if (IntOrFloatBitWidth >= v8)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_10;
          }
        }

        if (v8 >= IntOrFloatBitWidth)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  Width = mlir::IntegerType::getWidth(&v23);
  if (!v22[0])
  {
    v10 = v22;
LABEL_22:
    v16 = v10;
    do
    {
      v10 = v16[2];
      v17 = *v10 == v16;
      v16 = v10;
    }

    while (v17);
    goto LABEL_24;
  }

  v10 = v22;
  v11 = v22[0];
  do
  {
    v12 = *(v11 + 8);
    v13 = v12 >= Width;
    v14 = v12 < Width;
    if (v13)
    {
      v10 = v11;
    }

    v11 = v11[v14];
  }

  while (v11);
  if (v10 == v22)
  {
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v10 = v15;
        v15 = v15[1];
      }

      while (v15);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_24:
  v18 = v10[5];
  std::__tree<long long>::destroy(&v21, v22[0]);
  return v18;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::DataLayoutDialectInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::DataLayoutDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::DataLayoutDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::DataLayoutDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::DataLayoutDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::DataLayoutDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::DataLayoutDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutDialectInterface]";
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

unint64_t llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>(void **a1, uint64_t a2)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  __dst = v19;
  v18 = 0x400000000;
  if (!*v3)
  {
    goto LABEL_7;
  }

  (*(v3[1] + 56))(&__src);
  v4 = __src;
  if (__src != v16)
  {
    if (__dst != v19)
    {
      free(__dst);
      v4 = __src;
    }

    __dst = v4;
    v18 = v15;
    __src = v16;
    v15 = 0;
    goto LABEL_7;
  }

  v10 = v15;
  v11 = v18;
  if (v18 >= v15)
  {
    if (v15)
    {
      memmove(__dst, __src, 16 * v15);
    }

    goto LABEL_27;
  }

  if (HIDWORD(v18) < v15)
  {
    LODWORD(v18) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memmove(__dst, __src, 16 * v18);
    v13 = v15 - v11;
    if (v15 == v11)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v11 = 0;
  v13 = v15;
  if (v15)
  {
LABEL_26:
    memcpy(__dst + 16 * v11, __src + 16 * v11, 16 * v13);
  }

LABEL_27:
  LODWORD(v18) = v10;
  LODWORD(v15) = 0;
  if (__src != v16)
  {
    free(__src);
  }

LABEL_7:
  v5 = v3[4];
  if (v5 && mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v3[4]))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    v7 = (*(InterfaceFor + 16))(a2, v3, __dst, v18);
    v8 = __dst;
    if (__dst != v19)
    {
LABEL_12:
      free(v8);
    }
  }

  else
  {
    DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(a2, v3, __dst, v18);
    if (DefaultTypeSizeInBits)
    {
      v7 = ((DefaultTypeSizeInBits - (DefaultTypeSizeInBits != 0)) >> 3) + 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = __dst;
    if (__dst != v19)
    {
      goto LABEL_12;
    }
  }

  return v7;
}

uint64_t llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSizeInBits(mlir::Type)::$_0>(void **a1, uint64_t a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  __dst = v18;
  v17 = 0x400000000;
  if (!*v3)
  {
    goto LABEL_7;
  }

  (*(v3[1] + 56))(&__src);
  v4 = __src;
  if (__src != v15)
  {
    if (__dst != v18)
    {
      free(__dst);
      v4 = __src;
    }

    __dst = v4;
    v17 = v14;
    __src = v15;
    v14 = 0;
    goto LABEL_7;
  }

  v10 = v14;
  v11 = v17;
  if (v17 >= v14)
  {
    if (v14)
    {
      memmove(__dst, __src, 16 * v14);
    }

    goto LABEL_24;
  }

  if (HIDWORD(v17) < v14)
  {
    LODWORD(v17) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memmove(__dst, __src, 16 * v17);
    v12 = v14 - v11;
    if (v14 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = 0;
  v12 = v14;
  if (v14)
  {
LABEL_23:
    memcpy(__dst + 16 * v11, __src + 16 * v11, 16 * v12);
  }

LABEL_24:
  LODWORD(v17) = v10;
  LODWORD(v14) = 0;
  if (__src != v15)
  {
    free(__src);
  }

LABEL_7:
  v5 = v3[4];
  if (v5 && mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v3[4]))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    result = (*(InterfaceFor + 24))(a2, v3, __dst, v17);
    v8 = __dst;
    if (__dst == v18)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = mlir::detail::getDefaultTypeSizeInBits(a2, v3, __dst, v17);
  v8 = __dst;
  if (__dst != v18)
  {
LABEL_12:
    v9 = result;
    free(v8);
    return v9;
  }

  return result;
}

uint64_t llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>(void **a1, void *a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  __dst = v18;
  v17 = 0x400000000;
  if (!*v3)
  {
    goto LABEL_7;
  }

  (*(v3[1] + 56))(&__src);
  v4 = __src;
  if (__src != v15)
  {
    if (__dst != v18)
    {
      free(__dst);
      v4 = __src;
    }

    __dst = v4;
    v17 = v14;
    __src = v15;
    v14 = 0;
    goto LABEL_7;
  }

  v10 = v14;
  v11 = v17;
  if (v17 >= v14)
  {
    if (v14)
    {
      memmove(__dst, __src, 16 * v14);
    }

    goto LABEL_24;
  }

  if (HIDWORD(v17) < v14)
  {
    LODWORD(v17) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memmove(__dst, __src, 16 * v17);
    v12 = v14 - v11;
    if (v14 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = 0;
  v12 = v14;
  if (v14)
  {
LABEL_23:
    memcpy(__dst + 16 * v11, __src + 16 * v11, 16 * v12);
  }

LABEL_24:
  LODWORD(v17) = v10;
  LODWORD(v14) = 0;
  if (__src != v15)
  {
    free(__src);
  }

LABEL_7:
  v5 = v3[4];
  if (v5 && mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v3[4]))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    result = (*(InterfaceFor + 32))(a2, v3, __dst, v17);
    v8 = __dst;
    if (__dst == v18)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = mlir::detail::getDefaultABIAlignment(a2, v3, __dst, v17);
  v8 = __dst;
  if (__dst != v18)
  {
LABEL_12:
    v9 = result;
    free(v8);
    return v9;
  }

  return result;
}

uint64_t llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypePreferredAlignment(mlir::Type)::$_0>(void **a1, uint64_t a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  __dst = v18;
  v17 = 0x400000000;
  if (!*v3)
  {
    goto LABEL_7;
  }

  (*(v3[1] + 56))(&__src);
  v4 = __src;
  if (__src != v15)
  {
    if (__dst != v18)
    {
      free(__dst);
      v4 = __src;
    }

    __dst = v4;
    v17 = v14;
    __src = v15;
    v14 = 0;
    goto LABEL_7;
  }

  v10 = v14;
  v11 = v17;
  if (v17 >= v14)
  {
    if (v14)
    {
      memmove(__dst, __src, 16 * v14);
    }

    goto LABEL_24;
  }

  if (HIDWORD(v17) < v14)
  {
    LODWORD(v17) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memmove(__dst, __src, 16 * v17);
    v12 = v14 - v11;
    if (v14 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = 0;
  v12 = v14;
  if (v14)
  {
LABEL_23:
    memcpy(__dst + 16 * v11, __src + 16 * v11, 16 * v12);
  }

LABEL_24:
  LODWORD(v17) = v10;
  LODWORD(v14) = 0;
  if (__src != v15)
  {
    free(__src);
  }

LABEL_7:
  v5 = v3[4];
  if (v5 && mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v3[4]))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    result = (*(InterfaceFor + 40))(a2, v3, __dst, v17);
    v8 = __dst;
    if (__dst == v18)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = mlir::detail::getDefaultPreferredAlignment(a2, v3, __dst, v17);
  v8 = __dst;
  if (__dst != v18)
  {
LABEL_12:
    v9 = result;
    free(v8);
    return v9;
  }

  return result;
}

unint64_t llvm::function_ref<std::optional<unsigned long long> ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeIndexBitwidth(mlir::Type)::$_0>(void **a1, void *a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  __dst = v18;
  v17 = 0x400000000;
  if (!*v3)
  {
    goto LABEL_7;
  }

  (*(v3[1] + 56))(&__src);
  v4 = __src;
  if (__src != v15)
  {
    if (__dst != v18)
    {
      free(__dst);
      v4 = __src;
    }

    __dst = v4;
    v17 = v14;
    __src = v15;
    v14 = 0;
    goto LABEL_7;
  }

  v10 = v14;
  v11 = v17;
  if (v17 >= v14)
  {
    if (v14)
    {
      memmove(__dst, __src, 16 * v14);
    }

    goto LABEL_24;
  }

  if (HIDWORD(v17) < v14)
  {
    LODWORD(v17) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memmove(__dst, __src, 16 * v17);
    v12 = v14 - v11;
    if (v14 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = 0;
  v12 = v14;
  if (v14)
  {
LABEL_23:
    memcpy(__dst + 16 * v11, __src + 16 * v11, 16 * v12);
  }

LABEL_24:
  LODWORD(v17) = v10;
  LODWORD(v14) = 0;
  if (__src != v15)
  {
    free(__src);
  }

LABEL_7:
  v5 = v3[4];
  if (v5 && mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v3[4]))
  {
    InterfaceFor = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    result = (*(InterfaceFor + 48))(a2, v3, __dst, v17);
    v8 = __dst;
    if (__dst == v18)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = mlir::detail::getDefaultIndexBitwidth(a2, v3, __dst, v17);
  v8 = __dst;
  if (__dst != v18)
  {
LABEL_12:
    v9 = result;
    free(v8);
    return v9;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 88 * v6);
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
        v7 = (v4 + 88 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(88 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::moveFromOldBuckets(a1, v4, &v4[11 * v3]);

    llvm::deallocate_buffer(v4, (88 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 88 * v10 - 88;
    if (v11 < 0x58)
    {
      v12 = result;
LABEL_14:
      v16 = &result[11 * v10];
      do
      {
        *v12 = -4096;
        v12 += 11;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x58 + 1;
    v12 = &result[11 * (v13 & 0x7FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      v14[11] = -4096;
      v14 += 22;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>,mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,llvm::SmallVector<mlir::DataLayoutEntryInterface,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 88 * v6 - 88;
    if (v8 < 0x58)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[11 * v6];
      do
      {
        *v9 = -4096;
        v9 += 11;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x58 + 1;
    v9 = &v7[11 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[11] = -4096;
      v11 += 22;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
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
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*a1 + 88 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 88 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = v17 + 3;
        v17[2] = 0x400000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<llvm::StringRef>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 11;
    }

    while (v4 != a3);
  }
}

void mlir::presburger::detail::getDual(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v2) = 0;
  HIDWORD(v2) = *(a1 + 4);
  *a2 = &unk_286893110;
  *(a2 + 24) = 0;
  *(a2 + 8) = v2;
  *(a2 + 32) = a2 + 48;
  *(a2 + 40) = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

void mlir::presburger::detail::getIndex(mlir::presburger::detail *this@<X0>, llvm::APInt *a2@<X8>)
{
  if (*this <= *(this + 1))
  {
    mlir::presburger::IntMatrix::determinant(this, 0, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 2) = 0;
  }
}

void mlir::presburger::detail::computeUnimodularConeGeneratingFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 336);
  v4 = *(a3 + 344);
  v5[0] = &v6;
  v5[1] = 0x1000000000;
  if (*(a3 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v5, (a3 + 352));
  }

  mlir::presburger::FracMatrix::FracMatrix(v7, &v3);
  mlir::presburger::Matrix<mlir::presburger::Fraction>::transpose();
}

void *mlir::presburger::Fraction::operator=(void *result, uint64_t *a2)
{
  if (*(a2 + 2))
  {
    v5 = result;
    v6 = a2;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(result, *(a2 + 2), a2);
    a2 = v6;
    result = v5;
    v3 = *(v6 + 6);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v2 = *a2;
  if (*(result + 2) <= 0x40u || !*result)
  {
    *result = v2;
    *(result + 2) = 0;
    v3 = *(a2 + 6);
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = result;
    mlir::presburger::Fraction::operator=(result, v3, (a2 + 2), result + 4);
    return v7;
  }

  v10 = result;
  v8 = a2;
  MEMORY[0x259C63150](*result, 0x1000C8000313F17);
  a2 = v8;
  result = v10;
  *v10 = v2;
  *(v10 + 2) = 0;
  v3 = *(v8 + 6);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = a2[2];
  if (*(result + 6) > 0x40u && result[2])
  {
    v9 = result;
    MEMORY[0x259C63150](result[2], 0x1000C8000313F17);
    result = v9;
    v9[2] = v4;
    *(v9 + 6) = 0;
  }

  else
  {
    result[2] = v4;
    *(result + 6) = 0;
  }

  return result;
}

uint64_t *mlir::presburger::operator/@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) | *(a2 + 6) || (v4 = a2[2], (*a1 * v4) >> 64 != (*a1 * v4) >> 63))
  {
    v7 = a1;
    v8 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v12);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v8 + 2), &v10);
    llvm::detail::SlowDynamicAPInt::operator*(&v12, &v10, &v18);
    v17 = v19;
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(&v16, &v18);
    }

    v16 = v18;
    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }

    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }

    a2 = v8;
    a1 = v7;
    if (*(v7 + 6) | *(v8 + 2))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *a1 * v4;
    v17 = 0;
    if (*(a1 + 6) | *(a2 + 2))
    {
      goto LABEL_21;
    }
  }

  v5 = a1[2];
  if ((v5 * *a2) >> 64 == (v5 * *a2) >> 63)
  {
    v14 = v5 * *a2;
    v15 = 0;
    goto LABEL_6;
  }

LABEL_21:
  v9 = a2;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((a1 + 2), &v12);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v9, &v10);
  llvm::detail::SlowDynamicAPInt::operator*(&v12, &v10, &v18);
  v15 = v19;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v18);
  }

  v14 = v18;
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x259C63150](v10, 0x1000C8000313F17);
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x259C63150](v12, 0x1000C8000313F17);
  }

LABEL_6:
  mlir::presburger::Fraction::Fraction(&v18, &v16, &v14);
  result = mlir::presburger::reduce(&v18, a3);
  if (v21 > 0x40)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v19 > 0x40)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v15 > 0x40)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v17 > 0x40)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *mlir::presburger::operator-@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) || *a1 == 0x8000000000000000)
  {
    mlir::presburger::operator-(a1);
    result = mlir::presburger::Fraction::Fraction(a2, &v6, (a1 + 16));
    v3 = v7;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v6 = -*a1;
    v7 = 0;
    result = mlir::presburger::Fraction::Fraction(a2, &v6, (a1 + 16));
    v3 = v7;
    if (!v7)
    {
      return result;
    }
  }

  if (v3 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::presburger::detail::computeChamberDecomposition(__int32 a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1.i32[0] = 0;
  v1.i32[1] = a1;
  v1.i64[1] = 0;
  v2 = 0;
  v3 = &v5;
  v4 = 0;
  mlir::presburger::PresburgerSet::getUniverse(&v1, &v6);
}

void mlir::presburger::detail::GeneratingFunction::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v36[6] = *MEMORY[0x277D85DE8];
  __dst = v36;
  v35 = 0xC00000000;
  v6 = 12;
  if (&__dst != (a1 + 8))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      if (v7 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v36, *(a1 + 8), 4 * *(a1 + 16));
      LODWORD(v35) = v7;
      v6 = HIDWORD(v35);
      v5 = v7;
    }
  }

  v8 = *(a2 + 16);
  if (v8 + v5 > v6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v8)
  {
    memcpy(__dst + 4 * v5, *(a2 + 8), 4 * v8);
    v5 = v35;
  }

  LODWORD(v35) = v5 + v8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  if (v10 != v9)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v10 - v9) >> 5) <= 0x78787878787878)
    {
      operator new();
    }

    goto LABEL_35;
  }

  std::vector<mlir::presburger::FracMatrix>::__insert_with_size[abi:nn200100]<std::__wrap_iter<mlir::presburger::FracMatrix const*>,std::__wrap_iter<mlir::presburger::FracMatrix const*>>(&v27, 0, *(a2 + 72), *(a2 + 80), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 80) - *(a2 + 72)) >> 5));
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&v24, *(a1 + 96), *(a1 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3));
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>> const*>,std::__wrap_iter<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>> const*>>(&v24, v25, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  v11 = *a1;
  v31 = v33;
  v32 = 0xC00000000;
  v12 = v35;
  if (v35)
  {
    if (v35 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v33, __dst, 4 * v35);
    LODWORD(v32) = v12;
  }

  memset(v23, 0, sizeof(v23));
  if (v28 != v27)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v28 - v27) >> 5) <= 0x78787878787878)
    {
      operator new();
    }

LABEL_35:
    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&__p, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
  mlir::presburger::detail::GeneratingFunction::GeneratingFunction(a3, v11, &v31, v23, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v21;
    v15 = __p;
    if (v21 != __p)
    {
      do
      {
        v14 -= 3;
        v30 = v14;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v30);
      }

      while (v14 != v13);
      v15 = __p;
    }

    v21 = v13;
    operator delete(v15);
  }

  v30 = v23;
  std::vector<mlir::presburger::FracMatrix>::__destroy_vector::operator()[abi:nn200100](&v30);
  if (v31 != v33)
  {
    free(v31);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v18 = v24;
    if (v25 != v24)
    {
      do
      {
        v17 -= 3;
        v30 = v17;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v30);
      }

      while (v17 != v16);
      v18 = v24;
    }

    v25 = v16;
    operator delete(v18);
  }

  v24 = &v27;
  std::vector<mlir::presburger::FracMatrix>::__destroy_vector::operator()[abi:nn200100](&v24);
  if (__dst != v36)
  {
    free(__dst);
  }
}

void mlir::presburger::detail::computePolytopeGeneratingFunction(mlir::presburger::detail *this, const mlir::presburger::IntegerRelation *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 12);
  v4 = *(v2 + 336);
  v9 = v11;
  v10 = 0xC00000000;
  v6 = v2;
  v5 = v4;
  if (v4)
  {
    if (v4 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v9, 4 * v4);
    LODWORD(v4) = v5;
    v2 = v6;
    LODWORD(v10) = v5;
  }

  if (v4 - v3 < v4)
  {
    memset_pattern16(&v9[4 * (v4 - v3)], &unk_25736D390, 4 * (v3 - 1) + 4);
    v2 = v6;
  }

  v7[0] = &v8;
  v7[1] = 0x1000000000;
  if (*(v2 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v7, (v2 + 352));
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::splitByBitset();
}

uint64_t *mlir::presburger::detail::getNonOrthogonalVector@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v34 = *(a1 + 8);
  v49 = 1;
  v50 = 0;
  v45 = 1;
  v46 = 0;
  mlir::presburger::Fraction::Fraction(&v53, &v49, &v45);
  if (v46 > 0x40 && v45)
  {
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

  if (v50 > 0x40 && v49)
  {
    MEMORY[0x259C63150](v49, 0x1000C8000313F17);
  }

  *a3 = a3 + 16;
  *(a3 + 8) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(a3, &v53, &v57);
  if (v56 > 0x40 && v55)
  {
    MEMORY[0x259C63150](v55, 0x1000C8000313F17);
  }

  if (v54 > 0x40 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  v53 = 1;
  v54 = 0;
  v45 = 0;
  v46 = 0;
  mlir::presburger::Fraction::Fraction(&v49, &v53, &v45);
  if (v46 > 0x40 && v45)
  {
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

  if (v54 > 0x40 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  mlir::presburger::operator-(&v49, &v53);
  if (v52 > 0x40 && v51)
  {
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

  if (v50 > 0x40 && v49)
  {
    MEMORY[0x259C63150](v49, 0x1000C8000313F17);
  }

  v45 = 0;
  v46 = 0;
  v41 = 1;
  v42 = 0;
  result = mlir::presburger::Fraction::Fraction(&v49, &v45, &v41);
  if (v42 > 0x40)
  {
    result = v41;
    if (v41)
    {
      result = MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }

  if (v46 > 0x40)
  {
    result = v45;
    if (v45)
    {
      result = MEMORY[0x259C63150](v45, 0x1000C8000313F17);
    }
  }

  if (v34 >= 2)
  {
    v5 = 1;
    while (1)
    {
      v45 = 1;
      v46 = 0;
      v37 = 0;
      v38 = 0;
      mlir::presburger::Fraction::Fraction(&v41, &v45, &v37);
      if (v38 > 0x40 && v37)
      {
        MEMORY[0x259C63150](v37, 0x1000C8000313F17);
      }

      if (v46 > 0x40 && v45)
      {
        MEMORY[0x259C63150](v45, 0x1000C8000313F17);
      }

      mlir::presburger::operator-(&v41, &v45);
      mlir::presburger::Fraction::operator=(&v53, &v45);
      if (v48 > 0x40 && v47)
      {
        MEMORY[0x259C63150](v47, 0x1000C8000313F17);
      }

      if (v46 > 0x40 && v45)
      {
        MEMORY[0x259C63150](v45, 0x1000C8000313F17);
      }

      if (v44 > 0x40 && v43)
      {
        MEMORY[0x259C63150](v43, 0x1000C8000313F17);
      }

      if (v42 > 0x40 && v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
      }

      if (a2)
      {
        v7 = 48 * a2;
        v6 = a1;
        while (2)
        {
          v8 = *v6;
          v37 = 1;
          v38 = 0;
          v41 = 0;
          v42 = 0;
          mlir::presburger::Fraction::Fraction(&v45, &v41, &v37);
          if (v42 > 0x40 && v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }

          v9 = mlir::presburger::compare(&v8[4 * v5], &v45);
          if (v48 > 0x40 && v47)
          {
            v21 = v9;
            MEMORY[0x259C63150](v47, 0x1000C8000313F17);
            v9 = v21;
          }

          if (v46 > 0x40 && v45)
          {
            v22 = v9;
            MEMORY[0x259C63150](v45, 0x1000C8000313F17);
            v9 = v22;
          }

          if (v38 > 0x40 && v37)
          {
            v23 = v9;
            MEMORY[0x259C63150](v37, 0x1000C8000313F17);
            v9 = v23;
          }

          if (!v9)
          {
            goto LABEL_22;
          }

          mlir::presburger::dotProduct(*v6, v5, *a3, &v37);
          mlir::presburger::operator-(&v37, &v41);
          mlir::presburger::operator/(&v41, &(*v6)[4 * v5], &v45);
          if (v46)
          {
            mlir::presburger::detail::getNonOrthogonalVector(&v50, v46, &v45, &v49);
            v11 = v48;
            if (v48)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v10 = v45;
            if (v50 > 0x40 && v49)
            {
              MEMORY[0x259C63150](v49, 0x1000C8000313F17);
              v49 = v10;
              v50 = 0;
              v11 = v48;
              if (v48)
              {
LABEL_67:
                mlir::presburger::detail::getNonOrthogonalVector(&v52, v11, &v47, &v51);
                v24 = v48;
                if (v48)
                {
LABEL_90:
                  if (v24 >= 0x41 && v47)
                  {
                    MEMORY[0x259C63150](v47, 0x1000C8000313F17);
                  }
                }

                goto LABEL_33;
              }
            }

            else
            {
              v49 = v45;
              v50 = 0;
              v11 = v48;
              if (v48)
              {
                goto LABEL_67;
              }
            }
          }

          v12 = v47;
          if (v52 > 0x40 && v51)
          {
            MEMORY[0x259C63150](v51, 0x1000C8000313F17);
            v51 = v12;
            v52 = 0;
            v24 = v48;
            if (v48)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v51 = v47;
            v52 = 0;
          }

LABEL_33:
          if (v46 > 0x40 && v45)
          {
            MEMORY[0x259C63150](v45, 0x1000C8000313F17);
          }

          if (v44 > 0x40 && v43)
          {
            MEMORY[0x259C63150](v43, 0x1000C8000313F17);
          }

          if (v42 > 0x40 && v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }

          if (v40 > 0x40 && v39)
          {
            MEMORY[0x259C63150](v39, 0x1000C8000313F17);
          }

          if (v38 > 0x40 && v37)
          {
            MEMORY[0x259C63150](v37, 0x1000C8000313F17);
          }

          v13 = mlir::presburger::compare(&v53, &v49);
          if (v13 >= 0)
          {
            v14 = &v53;
          }

          else
          {
            v14 = &v49;
          }

          v15 = v50;
          if (v13 >= 0)
          {
            v15 = v54;
          }

          if (v15)
          {
            if (v54)
            {
              v25 = v13;
              llvm::detail::SlowDynamicAPInt::operator=(&v53, v14);
              v13 = v25;
            }

            else
            {
              v54 = v15;
              if (v15 > 0x40)
              {
                llvm::APInt::initSlowCase(&v53, v14);
              }

              v53 = *v14;
            }
          }

          else
          {
            v16 = *v14;
            if (v54 > 0x40 && v53)
            {
              v31 = v13;
              MEMORY[0x259C63150](v53, 0x1000C8000313F17);
              v13 = v31;
            }

            v53 = v16;
            v54 = 0;
          }

          if (v13 >= 0)
          {
            v17 = &v53;
          }

          else
          {
            v17 = &v49;
          }

          if (v13 >= 0)
          {
            v18 = &v55;
          }

          else
          {
            v18 = &v51;
          }

          v19 = v52;
          if (v13 >= 0)
          {
            v19 = v56;
          }

          if (v19)
          {
            if (v56)
            {
              llvm::detail::SlowDynamicAPInt::operator=(&v55, v18);
            }

            else
            {
              v56 = v19;
              if (v19 > 0x40)
              {
                llvm::APInt::initSlowCase(&v55, v18);
              }

              v55 = v17[2];
            }
          }

          else
          {
            v20 = v17[2];
            if (v56 > 0x40 && v55)
            {
              MEMORY[0x259C63150](v55, 0x1000C8000313F17);
            }

            v55 = v20;
            v56 = 0;
          }

LABEL_22:
          v6 += 6;
          v7 -= 48;
          if (!v7)
          {
            break;
          }

          continue;
        }
      }

      v35 = 1;
      v36 = 0;
      v37 = 1;
      v38 = 0;
      mlir::presburger::Fraction::Fraction(&v41, &v37, &v35);
      if (v38 > 0x40 && v37)
      {
        MEMORY[0x259C63150](v37, 0x1000C8000313F17);
      }

      mlir::presburger::operator+(&v53, &v41, &v45);
      v26 = *(a3 + 8);
      if (v26 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<mlir::presburger::Fraction>();
      }

      v27 = *a3 + 32 * v26;
      *v27 = v45;
      *(v27 + 8) = 0;
      v28 = v46;
      if (v46)
      {
        *(v27 + 8) = v46;
        if (v28 > 0x40)
        {
          llvm::APInt::initSlowCase(v27, &v45);
        }

        *v27 = v45;
      }

      *(v27 + 16) = v47;
      result = (v27 + 16);
      *(v27 + 24) = 0;
      v29 = v48;
      if (v48)
      {
        break;
      }

      ++*(a3 + 8);
      v30 = v48;
      if (v48)
      {
        goto LABEL_140;
      }

LABEL_104:
      if (v46 > 0x40)
      {
        result = v45;
        if (v45)
        {
          result = MEMORY[0x259C63150](v45, 0x1000C8000313F17);
        }
      }

      if (v44 > 0x40)
      {
        result = v43;
        if (v43)
        {
          result = MEMORY[0x259C63150](v43, 0x1000C8000313F17);
        }
      }

      if (v42 > 0x40)
      {
        result = v41;
        if (v41)
        {
          result = MEMORY[0x259C63150](v41, 0x1000C8000313F17);
        }
      }

      if (v36 > 0x40)
      {
        result = v35;
        if (v35)
        {
          result = MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        }
      }

      if (++v5 == v34)
      {
        goto LABEL_143;
      }
    }

    *(v27 + 24) = v48;
    if (v29 > 0x40)
    {
      llvm::APInt::initSlowCase(result, &v47);
    }

    *result = v47;
    ++*(a3 + 8);
    v30 = v48;
    if (!v48)
    {
      goto LABEL_104;
    }

LABEL_140:
    if (v30 >= 0x41)
    {
      result = v47;
      if (v47)
      {
        result = MEMORY[0x259C63150](v47, 0x1000C8000313F17);
      }
    }

    goto LABEL_104;
  }

LABEL_143:
  if (v52 > 0x40)
  {
    result = v51;
    if (v51)
    {
      result = MEMORY[0x259C63150](v51, 0x1000C8000313F17);
    }
  }

  if (v50 > 0x40)
  {
    result = v49;
    if (v49)
    {
      result = MEMORY[0x259C63150](v49, 0x1000C8000313F17);
    }
  }

  if (v56 > 0x40)
  {
    result = v55;
    if (v55)
    {
      result = MEMORY[0x259C63150](v55, 0x1000C8000313F17);
    }
  }

  if (v54 > 0x40)
  {
    result = v53;
    if (v53)
    {
      return MEMORY[0x259C63150](v53, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *mlir::presburger::operator+@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) | *(a2 + 6) || (v4 = a2[2], (*a1 * v4) >> 64 != (*a1 * v4) >> 63))
  {
    v10 = a1;
    v11 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v19);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v11 + 2), &v17);
    llvm::detail::SlowDynamicAPInt::operator*(&v19, &v17, &v29);
    v26 = v30;
    if (v30 > 0x40)
    {
      llvm::APInt::initSlowCase(&v25, &v29);
    }

    v25 = v29;
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }

    a2 = v11;
    a1 = v10;
    if (*(v10 + 6) | *(v11 + 2))
    {
LABEL_27:
      v12 = a1;
      v13 = a2;
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((a1 + 2), &v19);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v13, &v17);
      llvm::detail::SlowDynamicAPInt::operator*(&v19, &v17, &v29);
      v24 = v30;
      if (v30 > 0x40)
      {
        llvm::APInt::initSlowCase(&v23, &v29);
      }

      v23 = v29;
      if (v18 >= 0x41 && v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }

      if (v20 >= 0x41 && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }

      a2 = v13;
      a1 = v12;
      if (v26 | v24)
      {
        goto LABEL_37;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v25 = *a1 * v4;
    v26 = 0;
    if (*(a1 + 6) | *(a2 + 2))
    {
      goto LABEL_27;
    }
  }

  v5 = a1[2];
  if ((v5 * *a2) >> 64 != (v5 * *a2) >> 63)
  {
    goto LABEL_27;
  }

  v23 = v5 * *a2;
  v24 = 0;
  if (v26)
  {
    goto LABEL_37;
  }

LABEL_6:
  if (!__OFADD__(v25, v23))
  {
    v27 = v25 + v23;
    v28 = 0;
    if (*(a1 + 6) | *(a2 + 6))
    {
      goto LABEL_47;
    }

    goto LABEL_8;
  }

LABEL_37:
  v14 = a1;
  v15 = a2;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v25, &v19);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v23, &v17);
  llvm::detail::SlowDynamicAPInt::operator+(&v19, &v17, &v29);
  v28 = v30;
  if (v30 > 0x40)
  {
    llvm::APInt::initSlowCase(&v27, &v29);
  }

  v27 = v29;
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  a2 = v15;
  a1 = v14;
  if (*(v14 + 6) | *(v15 + 6))
  {
    goto LABEL_47;
  }

LABEL_8:
  v6 = a1[2];
  v7 = a2[2];
  if ((v6 * v7) >> 64 == (v6 * v7) >> 63)
  {
    v21 = v6 * v7;
    v22 = 0;
    goto LABEL_10;
  }

LABEL_47:
  v16 = a2;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((a1 + 2), &v19);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v16 + 2), &v17);
  llvm::detail::SlowDynamicAPInt::operator*(&v19, &v17, &v29);
  v22 = v30;
  if (v30 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, &v29);
  }

  v21 = v29;
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

LABEL_10:
  v8 = mlir::presburger::Fraction::Fraction(&v29, &v27, &v21);
  result = mlir::presburger::reduce(v8, a3);
  if (v32 > 0x40)
  {
    result = v31;
    if (v31)
    {
      result = MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }
  }

  if (v30 > 0x40)
  {
    result = v29;
    if (v29)
    {
      result = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }

  if (v22 > 0x40)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if (v28 > 0x40)
  {
    result = v27;
    if (v27)
    {
      result = MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }
  }

  if (v24 > 0x40)
  {
    result = v23;
    if (v23)
    {
      result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }

  if (v26 > 0x40)
  {
    result = v25;
    if (v25)
    {
      return MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::presburger::detail::getCoefficientInRationalFunction(unsigned int a1@<W0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v162 = *MEMORY[0x277D85DE8];
  v123 = a2[2];
  v124 = *a2;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<mlir::presburger::QuasiPolynomial>::reserve(&v129, a1 + 1);
  v118 = a2;
  mlir::presburger::QuasiPolynomial::operator/(a2, a4, &v153);
  v9 = v130;
  v122 = a4;
  if (v130 >= v131)
  {
    v130 = std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<mlir::presburger::QuasiPolynomial>(&v129, &v153);
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v153);
    if (a1)
    {
LABEL_12:
      v119 = a5 - 1;
      v12 = 1;
      do
      {
        v14 = v12;
        if (a3 <= v12)
        {
          v147 = 1;
          v148 = 0;
          v139 = 0;
          v140 = 0;
          mlir::presburger::Fraction::Fraction(&v149, &v139, &v147);
          if (v140 > 0x40 && v139)
          {
            MEMORY[0x259C63150](v139, 0x1000C8000313F17);
          }

          mlir::presburger::QuasiPolynomial::QuasiPolynomial(&v153, v123 + v124, &v149);
          v18 = v130;
          if (v130 >= v131)
          {
LABEL_25:
            v130 = std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<mlir::presburger::QuasiPolynomial const>(&v129, &v153);
            mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v153);
            if (a3 > v14)
            {
              goto LABEL_38;
            }

LABEL_35:
            if (v152 > 0x40 && v151)
            {
              MEMORY[0x259C63150](v151, 0x1000C8000313F17);
            }

            if (v150 > 0x40 && v149)
            {
              MEMORY[0x259C63150](v149, 0x1000C8000313F17);
            }

            if (v148 > 0x40 && v147)
            {
              MEMORY[0x259C63150](v147, 0x1000C8000313F17);
            }

            goto LABEL_38;
          }
        }

        else
        {
          v15 = &v118[28 * v12];
          v16 = *v15;
          v154 = *(v15 + 16);
          v153 = v16;
          v155 = &v157;
          v156 = 0;
          if (&v153 != v15 && *(v15 + 8) != 0)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v157 = v159;
          v158 = 0x100000000;
          if (*(v15 + 12))
          {
            llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(&v157, v15 + 40);
          }

          v160 = 0uLL;
          v161 = 0;
          std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&v160, *(v15 + 11), *(v15 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 12) - *(v15 + 11)) >> 3));
          v18 = v130;
          if (v130 >= v131)
          {
            goto LABEL_25;
          }
        }

        v19 = v153;
        *(v18 + 16) = v154;
        *v18 = v19;
        *(v18 + 3) = v18 + 40;
        *(v18 + 4) = 0;
        if (v18 != &v153 && v156)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v18 + 5) = v18 + 56;
        *(v18 + 6) = 0x100000000;
        if (v158)
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v18 + 5, &v157);
        }

        *(v18 + 11) = 0;
        *(v18 + 12) = 0;
        v20 = v18 + 88;
        *(v20 + 16) = 0;
        std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(v20, v160, *(&v160 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v160 + 1) - v160) >> 3));
        a4 = v122;
        v130 = (v20 + 24);
        mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v153);
        if (a3 <= v14)
        {
          goto LABEL_35;
        }

LABEL_38:
        if (v119 >= v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v119;
        }

        v126 = v14 << 7;
        v127 = v14;
        v125 = v21;
        if (v21)
        {
          v22 = 1;
          do
          {
            v23 = v129;
            v24 = v126 - 16 * v14;
            v25 = v129 + 112 * (v14 - v22);
            v128 = v22;
            mlir::presburger::QuasiPolynomial::QuasiPolynomial(v132, v123 + v124, &a4[4 * v22]);
            mlir::presburger::QuasiPolynomial::operator*(v25, v132, &v139);
            mlir::presburger::QuasiPolynomial::operator-(&v23[v24], &v139, &v153);
            v26 = v129 + v24;
            v27 = v153;
            v26[16] = v154;
            *v26 = v27;
            if (v26 != &v153)
            {
              v28 = v156;
              if (v156)
              {
                v29 = *(v26 + 3);
                if (v29 != v26 + 40)
                {
                  free(v29);
                  v28 = v156;
                }

                *(v26 + 3) = v155;
                *(v26 + 8) = v28;
                *(v26 + 9) = HIDWORD(v156);
                v155 = &v157;
                HIDWORD(v156) = 0;
                v30 = &v156;
              }

              else
              {
                v30 = (v26 + 32);
              }

              *v30 = 0;
            }

            llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v26 + 5, &v157);
            v32 = (v26 + 88);
            v31 = *(v26 + 11);
            if (v31)
            {
              v33 = *(v26 + 12);
              v34 = *(v26 + 11);
              if (v33 != v31)
              {
                v35 = *(v26 + 12);
                do
                {
                  v38 = *(v35 - 3);
                  v35 -= 3;
                  v37 = v38;
                  if (v38)
                  {
                    v39 = *(v33 - 2);
                    v36 = v37;
                    if (v39 != v37)
                    {
                      v40 = *(v33 - 2);
                      do
                      {
                        v42 = *(v40 - 6);
                        v40 -= 48;
                        v41 = v42;
                        v43 = *(v40 + 2);
                        if (v43)
                        {
                          v44 = 32 * v43;
                          v45 = &v41[v44 - 16];
                          v46 = -v44;
                          do
                          {
                            if (*(v45 + 8) > 0x40u && *v45)
                            {
                              MEMORY[0x259C63150](*v45, 0x1000C8000313F17);
                            }

                            if (*(v45 - 8) > 0x40u)
                            {
                              v47 = *(v45 - 16);
                              if (v47)
                              {
                                MEMORY[0x259C63150](v47, 0x1000C8000313F17);
                              }
                            }

                            v45 -= 32;
                            v46 += 32;
                          }

                          while (v46);
                          v41 = *v40;
                        }

                        if (v41 != v39 - 32)
                        {
                          free(v41);
                        }

                        v39 = v40;
                      }

                      while (v40 != v37);
                      v36 = *v35;
                    }

                    *(v33 - 2) = v37;
                    operator delete(v36);
                  }

                  v33 = v35;
                }

                while (v35 != v31);
                v34 = *v32;
                a4 = v122;
              }

              *(v26 + 12) = v31;
              operator delete(v34);
              *v32 = 0;
              *(v26 + 12) = 0;
              *(v26 + 13) = 0;
            }

            *(v26 + 88) = v160;
            *(v26 + 13) = v161;
            v160 = 0uLL;
            v161 = 0;
            v48 = v157;
            if (v158)
            {
              v49 = &v157[4 * v158 - 2];
              v50 = -32 * v158;
              do
              {
                if (*(v49 + 2) > 0x40u && *v49)
                {
                  MEMORY[0x259C63150](*v49, 0x1000C8000313F17);
                }

                if (*(v49 - 2) > 0x40u)
                {
                  v51 = *(v49 - 2);
                  if (v51)
                  {
                    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
                  }
                }

                v49 -= 4;
                v50 += 32;
              }

              while (v50);
              v48 = v157;
            }

            if (v48 != v159)
            {
              free(v48);
            }

            if (v155 != &v157)
            {
              free(v155);
            }

            v52 = __p;
            if (__p)
            {
              v53 = v146;
              v54 = __p;
              if (v146 != __p)
              {
                v55 = v146;
                do
                {
                  v58 = *(v55 - 3);
                  v55 -= 3;
                  v57 = v58;
                  if (v58)
                  {
                    v59 = *(v53 - 2);
                    v56 = v57;
                    if (v59 != v57)
                    {
                      v60 = *(v53 - 2);
                      do
                      {
                        v62 = *(v60 - 6);
                        v60 -= 48;
                        v61 = v62;
                        v63 = *(v60 + 2);
                        if (v63)
                        {
                          v64 = 32 * v63;
                          v65 = &v61[v64 - 16];
                          v66 = -v64;
                          do
                          {
                            if (*(v65 + 8) > 0x40u && *v65)
                            {
                              MEMORY[0x259C63150](*v65, 0x1000C8000313F17);
                            }

                            if (*(v65 - 8) > 0x40u)
                            {
                              v67 = *(v65 - 16);
                              if (v67)
                              {
                                MEMORY[0x259C63150](v67, 0x1000C8000313F17);
                              }
                            }

                            v65 -= 32;
                            v66 += 32;
                          }

                          while (v66);
                          v61 = *v60;
                        }

                        if (v61 != v59 - 32)
                        {
                          free(v61);
                        }

                        v59 = v60;
                      }

                      while (v60 != v57);
                      v56 = *v55;
                    }

                    *(v53 - 2) = v57;
                    operator delete(v56);
                  }

                  v53 = v55;
                }

                while (v55 != v52);
                v54 = __p;
              }

              v146 = v52;
              operator delete(v54);
            }

            v68 = v142;
            if (v143)
            {
              v69 = v142 + 32 * v143 - 16;
              v70 = -32 * v143;
              do
              {
                if (*(v69 + 2) > 0x40u && *v69)
                {
                  MEMORY[0x259C63150](*v69, 0x1000C8000313F17);
                }

                if (*(v69 - 2) > 0x40u)
                {
                  v71 = *(v69 - 2);
                  if (v71)
                  {
                    MEMORY[0x259C63150](v71, 0x1000C8000313F17);
                  }
                }

                v69 -= 32;
                v70 += 32;
              }

              while (v70);
              v68 = v142;
            }

            if (v68 != &v144)
            {
              free(v68);
            }

            if (v141 != &v142)
            {
              free(v141);
            }

            v72 = v137;
            if (v137)
            {
              v73 = v138;
              v74 = v137;
              if (v138 != v137)
              {
                v75 = v138;
                do
                {
                  v78 = *(v75 - 3);
                  v75 -= 3;
                  v77 = v78;
                  if (v78)
                  {
                    v79 = *(v73 - 2);
                    v76 = v77;
                    if (v79 != v77)
                    {
                      v80 = *(v73 - 2);
                      do
                      {
                        v82 = *(v80 - 6);
                        v80 -= 48;
                        v81 = v82;
                        v83 = *(v80 + 2);
                        if (v83)
                        {
                          v84 = 32 * v83;
                          v85 = &v81[v84 - 16];
                          v86 = -v84;
                          do
                          {
                            if (*(v85 + 8) > 0x40u && *v85)
                            {
                              MEMORY[0x259C63150](*v85, 0x1000C8000313F17);
                            }

                            if (*(v85 - 8) > 0x40u)
                            {
                              v87 = *(v85 - 16);
                              if (v87)
                              {
                                MEMORY[0x259C63150](v87, 0x1000C8000313F17);
                              }
                            }

                            v85 -= 32;
                            v86 += 32;
                          }

                          while (v86);
                          v81 = *v80;
                        }

                        if (v81 != v79 - 32)
                        {
                          free(v81);
                        }

                        v79 = v80;
                      }

                      while (v80 != v77);
                      v76 = *v75;
                    }

                    *(v73 - 2) = v77;
                    operator delete(v76);
                  }

                  v73 = v75;
                }

                while (v75 != v72);
                v74 = v137;
              }

              v138 = v72;
              operator delete(v74);
            }

            v88 = v134;
            if (v135)
            {
              v89 = v134 + 32 * v135 - 16;
              v90 = -32 * v135;
              v14 = v127;
              do
              {
                if (*(v89 + 2) > 0x40u && *v89)
                {
                  MEMORY[0x259C63150](*v89, 0x1000C8000313F17);
                }

                if (*(v89 - 2) > 0x40u)
                {
                  v91 = *(v89 - 2);
                  if (v91)
                  {
                    MEMORY[0x259C63150](v91, 0x1000C8000313F17);
                  }
                }

                v89 -= 32;
                v90 += 32;
              }

              while (v90);
              v88 = v134;
              if (v134 == v136)
              {
                goto LABEL_163;
              }
            }

            else
            {
              v14 = v127;
              if (v134 == v136)
              {
                goto LABEL_163;
              }
            }

            free(v88);
LABEL_163:
            if (v133 != &v134)
            {
              free(v133);
            }

            v22 = v128 + 1;
          }

          while (v128 + 1 <= v125);
        }

        v92 = v126 - 16 * v14;
        mlir::presburger::QuasiPolynomial::operator/(v129 + v92, a4, &v153);
        v93 = v129 + v92;
        v94 = v153;
        v93[16] = v154;
        *v93 = v94;
        if (v93 != &v153)
        {
          v95 = v156;
          if (v156)
          {
            v96 = *(v93 + 3);
            if (v96 != v93 + 40)
            {
              free(v96);
              v95 = v156;
            }

            *(v93 + 3) = v155;
            *(v93 + 8) = v95;
            *(v93 + 9) = HIDWORD(v156);
            v155 = &v157;
            HIDWORD(v156) = 0;
            v97 = &v156;
          }

          else
          {
            v97 = (v93 + 32);
          }

          *v97 = 0;
        }

        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v93 + 5, &v157);
        v98 = (v93 + 88);
        v99 = *(v93 + 11);
        if (v99)
        {
          v100 = *(v93 + 12);
          v13 = *(v93 + 11);
          if (v100 != v99)
          {
            v101 = *(v93 + 12);
            do
            {
              v104 = *(v101 - 3);
              v101 -= 3;
              v103 = v104;
              if (v104)
              {
                v105 = *(v100 - 2);
                v102 = v103;
                if (v105 != v103)
                {
                  v106 = *(v100 - 2);
                  do
                  {
                    v108 = *(v106 - 6);
                    v106 -= 48;
                    v107 = v108;
                    v109 = *(v106 + 2);
                    if (v109)
                    {
                      v110 = 32 * v109;
                      v111 = &v107[v110 - 16];
                      v112 = -v110;
                      do
                      {
                        if (*(v111 + 8) > 0x40u && *v111)
                        {
                          MEMORY[0x259C63150](*v111, 0x1000C8000313F17);
                        }

                        if (*(v111 - 8) > 0x40u)
                        {
                          v113 = *(v111 - 16);
                          if (v113)
                          {
                            MEMORY[0x259C63150](v113, 0x1000C8000313F17);
                          }
                        }

                        v111 -= 32;
                        v112 += 32;
                      }

                      while (v112);
                      v107 = *v106;
                    }

                    if (v107 != v105 - 32)
                    {
                      free(v107);
                    }

                    v105 = v106;
                  }

                  while (v106 != v103);
                  v102 = *v101;
                }

                *(v100 - 2) = v103;
                operator delete(v102);
              }

              v100 = v101;
            }

            while (v101 != v99);
            v13 = *v98;
            a4 = v122;
          }

          *(v93 + 12) = v99;
          operator delete(v13);
          *v98 = 0;
          *(v93 + 12) = 0;
          *(v93 + 13) = 0;
        }

        *(v93 + 88) = v160;
        *(v93 + 13) = v161;
        v160 = 0uLL;
        v161 = 0;
        mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v153);
        v12 = v127 + 1;
      }

      while (v127 + 1 <= a1);
    }
  }

  else
  {
    v10 = v153;
    *(v130 + 16) = v154;
    *v9 = v10;
    *(v9 + 3) = v9 + 40;
    *(v9 + 4) = 0;
    v11 = v156;
    if (v156 && v9 != &v153)
    {
      if (v155 == &v157)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v9 + 3) = v155;
      *(v9 + 8) = v11;
      *(v9 + 9) = HIDWORD(v156);
      v155 = &v157;
      v156 = 0;
    }

    *(v9 + 5) = v9 + 56;
    *(v9 + 6) = 0x100000000;
    if (v158)
    {
      llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v9 + 5, &v157);
    }

    *(v9 + 11) = 0;
    *(v9 + 12) = 0;
    *(v9 + 13) = 0;
    *(v9 + 88) = v160;
    *(v9 + 13) = v161;
    v160 = 0uLL;
    v161 = 0;
    v130 = v9 + 7;
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v153);
    if (a1)
    {
      goto LABEL_12;
    }
  }

  mlir::presburger::QuasiPolynomial::simplify((v129 + 112 * a1), a6);
  v114 = v129;
  if (v129)
  {
    v115 = v130;
    v116 = v129;
    if (v130 != v129)
    {
      do
      {
        mlir::presburger::QuasiPolynomial::~QuasiPolynomial((v115 - 7));
      }

      while (v115 != v114);
      v116 = v129;
    }

    v130 = v114;
    operator delete(v116);
  }
}

void *std::vector<mlir::presburger::QuasiPolynomial>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void substituteMuInTerm(uint64_t a1, uint64_t a2, uint64_t ***a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 8);
  v20 = v22;
  v21 = 0x100000000;
  if (v5 >= 2)
  {
    v16 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      mlir::presburger::dotProduct(*a4, *(a4 + 8), *v6, &v12);
      mlir::presburger::operator-(&v12, &v16);
      if (v21 >= HIDWORD(v21))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<mlir::presburger::Fraction>();
      }

      v8 = &v20[4 * v21];
      *v8 = v16;
      v8[2] = 0;
      v9 = v17;
      if (v17)
      {
        v8[2] = v17;
        if (v9 > 0x40)
        {
          llvm::APInt::initSlowCase(v8, &v16);
        }

        *v8 = v16;
      }

      *(v8 + 2) = v18;
      v10 = (v8 + 4);
      v8[6] = 0;
      v11 = v19;
      if (v19)
      {
        v8[6] = v19;
        if (v11 > 0x40)
        {
          llvm::APInt::initSlowCase(v10, &v18);
        }

        *v10 = v18;
        LODWORD(v21) = v21 + 1;
        if (v19 > 0x40 && v18)
        {
          MEMORY[0x259C63150](v18, 0x1000C8000313F17);
        }
      }

      else
      {
        LODWORD(v21) = v21 + 1;
      }

      if (v17 > 0x40 && v16)
      {
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }

      if (v15 > 0x40 && v14)
      {
        MEMORY[0x259C63150](v14, 0x1000C8000313F17);
      }

      if (v13 > 0x40)
      {
        if (v12)
        {
          MEMORY[0x259C63150](v12, 0x1000C8000313F17);
        }
      }

      v6 += 6;
    }

    while (v6 != v7);
  }

  mlir::presburger::Matrix<mlir::presburger::Fraction>::transpose();
}

void normalizeDenominatorExponents(_DWORD *a1, uint64_t a2, uint64_t **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  *&v22 = 0;
  DWORD2(v22) = 0;
  v20 = 1;
  v21 = 0;
  mlir::presburger::Fraction::Fraction(&v32, &v22, &v20);
  if (v21 > 0x40 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (DWORD2(v22) > 0x40 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = 0;
    do
    {
      v30 = 1;
      v31 = 0;
      v20 = 0;
      v21 = 0;
      mlir::presburger::Fraction::Fraction(&v22, &v20, &v30);
      if (v21 > 0x40 && v20)
      {
        MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }

      v9 = mlir::presburger::compare(v6, &v22);
      if (v24 > 0x40 && v23)
      {
        v10 = v9;
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
        v9 = v10;
      }

      if (DWORD2(v22) > 0x40 && v22)
      {
        v11 = v9;
        MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        v9 = v11;
      }

      if (v31 > 0x40 && v30)
      {
        v12 = v9;
        MEMORY[0x259C63150](v30, 0x1000C8000313F17);
        v9 = v12;
      }

      if (v9 < 0)
      {
        mlir::presburger::operator+(&v32, v6, &v22);
        mlir::presburger::Fraction::operator=(&v32, &v22);
        if (v24 > 0x40 && v23)
        {
          MEMORY[0x259C63150](v23, 0x1000C8000313F17);
        }

        if (DWORD2(v22) > 0x40 && v22)
        {
          MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        }

        ++v8;
      }

      v6 += 4;
    }

    while (v6 != v7);
    if (v8)
    {
      *a1 = -*a1;
    }
  }

  mlir::presburger::QuasiPolynomial::QuasiPolynomial(&v20, *(a2 + 8) + *a2, &v32);
  mlir::presburger::QuasiPolynomial::operator-(a2, &v20, &v22);
  *a2 = v22;
  *(a2 + 16) = v23;
  if (&v22 != a2)
  {
    v13 = v25;
    if (v25)
    {
      v14 = &v25;
      v15 = *(a2 + 24);
      if (v15 != (a2 + 40))
      {
        free(v15);
        v13 = v25;
      }

      *(a2 + 24) = v24;
      v16 = v26;
      *(a2 + 32) = v13;
      *(a2 + 36) = v16;
      v24 = v27;
      v26 = 0;
    }

    else
    {
      v14 = (a2 + 32);
    }

    *v14 = 0;
  }

  llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((a2 + 40), v27);
  v17 = *(a2 + 88);
  if (v17)
  {
    v18 = *(a2 + 96);
    v19 = *(a2 + 88);
    if (v18 != v17)
    {
      do
      {
        v18 -= 3;
        v30 = v18;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v30);
      }

      while (v18 != v17);
      v19 = *(a2 + 88);
    }

    *(a2 + 96) = v17;
    operator delete(v19);
  }

  *(a2 + 88) = v28;
  *(a2 + 104) = v29;
  v29 = 0;
  v28 = 0uLL;
  mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v22);
  mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v20);
  if (v35 > 0x40 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v33 > 0x40)
  {
    if (v32)
    {
      MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    }
  }
}

void getBinomialCoefficients(const mlir::presburger::QuasiPolynomial *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 2) + *a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::vector<mlir::presburger::QuasiPolynomial>::reserve(a3, a2 + 1);
  LODWORD(v30) = 1;
  v5 = *(a3 + 8);
  if (v5 >= *(a3 + 16))
  {
    *(a3 + 8) = std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<unsigned int &,int>(a3, &v14, &v30);
    if (!a2)
    {
      return;
    }
  }

  else
  {
    std::allocator<mlir::presburger::QuasiPolynomial>::construct[abi:nn200100]<mlir::presburger::QuasiPolynomial,unsigned int &,int>(a3, *(a3 + 8), &v14, &v30);
    *(a3 + 8) = v5 + 112;
    if (!a2)
    {
      return;
    }
  }

  v6 = 1;
  do
  {
    v7 = *a3;
    v8 = v14;
    v19 = 1;
    v20 = 0;
    v28 = v6 - 1;
    v29 = 0;
    mlir::presburger::Fraction::Fraction(&v21, &v28, &v19);
    if (v29 > 0x40 && v28)
    {
      MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }

    mlir::presburger::QuasiPolynomial::QuasiPolynomial(v25, v8, &v21);
    mlir::presburger::QuasiPolynomial::operator-(a1, v25, v26);
    mlir::presburger::QuasiPolynomial::operator*(v7 + 112 * (v6 - 1), v26, v27);
    v28 = v6;
    v29 = 0;
    v38 = 1;
    v39 = 0;
    mlir::presburger::Fraction::Fraction(&v15, &v28, &v38);
    if (v39 > 0x40 && v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

    if (v29 > 0x40 && v28)
    {
      MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }

    mlir::presburger::QuasiPolynomial::operator/(v27, &v15, &v28);
    mlir::presburger::QuasiPolynomial::simplify(&v28, &v30);
    v9 = *(a3 + 8);
    if (v9 >= *(a3 + 16))
    {
      v12 = std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<mlir::presburger::QuasiPolynomial>(a3, &v30);
    }

    else
    {
      v10 = v30;
      *(v9 + 16) = v31;
      *(v9 + 24) = v9 + 40;
      *v9 = v10;
      *(v9 + 32) = 0;
      v11 = v33;
      if (v33 && v9 != &v30)
      {
        if (v32 == v35)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v9 + 24) = v32;
        *(v9 + 32) = v11;
        *(v9 + 36) = v34;
        v32 = v35;
        v34 = 0;
        v33 = 0;
      }

      *(v9 + 40) = v9 + 56;
      *(v9 + 48) = 0x100000000;
      if (v35[2])
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v9 + 40), v35);
      }

      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 104) = 0;
      *(v9 + 88) = v36;
      *(v9 + 104) = v37;
      v36 = 0uLL;
      v37 = 0;
      v12 = v9 + 112;
    }

    *(a3 + 8) = v12;
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v30);
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v28);
    if (v18 > 0x40 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    if (v16 > 0x40 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(v27);
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(v26);
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial(v25);
    if (v24 > 0x40 && v23)
    {
      MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }

    if (v22 > 0x40 && v21)
    {
      MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }

    if (v20 > 0x40)
    {
      if (v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }
    }

    ++v6;
  }

  while (v6 <= a2);
}

uint64_t getBinomialCoefficients@<X0>(const mlir::presburger::Fraction *a1@<X0>, const mlir::presburger::Fraction *a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  mlir::presburger::floor(a2, &v42);
  if (!v43)
  {
    v6 = v42;
    if (!v42)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = llvm::detail::SlowDynamicAPInt::operator long long(&v42);
  if (v6 > (a3[2] - *a3) >> 5)
  {
    goto LABEL_5;
  }

LABEL_7:
  if (v43 > 0x40 && v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

  LODWORD(v34) = 1;
  v7 = a3[1];
  if (v7 >= a3[2])
  {
    v8 = std::vector<mlir::presburger::Fraction>::__emplace_back_slow_path<int>(a3, &v34);
  }

  else
  {
    v38 = 1;
    v39 = 0;
    v42 = 1;
    v43 = 0;
    mlir::presburger::Fraction::Fraction(v7, &v42, &v38);
    if (v43 > 0x40 && v42)
    {
      MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    }

    if (v39 > 0x40 && v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

    v8 = (v7 + 4);
  }

  v9 = 0;
  a3[1] = v8;
  while (1)
  {
    v34 = 1;
    v35 = 0;
    v38 = v9 + 1;
    v39 = 0;
    mlir::presburger::Fraction::Fraction(&v42, &v38, &v34);
    if (v39 > 0x40 && v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

    result = mlir::presburger::compare(&v42, a2);
    if (v45 > 0x40 && v44)
    {
      v19 = result;
      MEMORY[0x259C63150](v44, 0x1000C8000313F17);
      result = v19;
    }

    if (v43 > 0x40 && v42)
    {
      v20 = result;
      MEMORY[0x259C63150](v42, 0x1000C8000313F17);
      result = v20;
    }

    if (v35 > 0x40 && v34)
    {
      v21 = result;
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
      result = v21;
    }

    if (result > 0)
    {
      return result;
    }

    v11 = *a3;
    v28 = 1;
    v29 = 0;
    v38 = v9;
    v39 = 0;
    mlir::presburger::Fraction::Fraction(&v30, &v38, &v28);
    if (v39 > 0x40 && v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

    mlir::presburger::operator-(a1, &v30, &v34);
    mlir::presburger::operator*((v11 + 32 * v9), &v34, &v38);
    v22 = 1;
    v23 = 0;
    v46 = v9 + 1;
    v47 = 0;
    mlir::presburger::Fraction::Fraction(&v24, &v46, &v22);
    if (v47 > 0x40 && v46)
    {
      MEMORY[0x259C63150](v46, 0x1000C8000313F17);
    }

    mlir::presburger::operator/(&v38, &v24, &v42);
    v12 = a3[1];
    if (v12 >= a3[2])
    {
      a3[1] = std::vector<mlir::presburger::Fraction>::__emplace_back_slow_path<mlir::presburger::Fraction>(a3, &v42);
      v18 = v45;
      if (!v45)
      {
        goto LABEL_27;
      }

LABEL_77:
      if (v18 >= 0x41 && v44)
      {
        MEMORY[0x259C63150](v44, 0x1000C8000313F17);
      }

      goto LABEL_27;
    }

    v13 = v42;
    *v12 = v42;
    v12[2] = 0;
    v14 = v43;
    if (v43)
    {
      v12[2] = v43;
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(v12, &v42);
      }

      *v12 = v13;
    }

    v15 = v44;
    *(v12 + 2) = v44;
    v16 = (v12 + 4);
    v12[6] = 0;
    v17 = v45;
    if (!v45)
    {
      a3[1] = (v12 + 8);
      v18 = v45;
      if (!v45)
      {
        goto LABEL_27;
      }

      goto LABEL_77;
    }

    v12[6] = v45;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(v16, &v44);
    }

    *v16 = v15;
    a3[1] = (v12 + 8);
    v18 = v45;
    if (v45)
    {
      goto LABEL_77;
    }

LABEL_27:
    if (v43 > 0x40 && v42)
    {
      MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    }

    if (v27 > 0x40 && v26)
    {
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }

    if (v25 > 0x40 && v24)
    {
      MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }

    if (v23 > 0x40 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    if (v41 > 0x40 && v40)
    {
      MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }

    if (v39 > 0x40 && v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

    if (v37 > 0x40 && v36)
    {
      MEMORY[0x259C63150](v36, 0x1000C8000313F17);
    }

    if (v35 > 0x40 && v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }

    if (v33 > 0x40 && v32)
    {
      MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    }

    if (v31 > 0x40 && v30)
    {
      MEMORY[0x259C63150](v30, 0x1000C8000313F17);
    }

    if (v29 > 0x40)
    {
      if (v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }
    }

    ++v9;
  }
}