uint64_t anonymous namespace::markLives(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v15 = *MEMORY[0x277D85DE8];
  v8 = (a3 + 63) >> 6;
  v9 = (result + 16);
  *result = result + 16;
  *(result + 12) = 6;
  if ((a3 + 63) >= 0x1C0)
  {
    *(result + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if ((a3 + 63) >= 0x40)
  {
    result = memset(v9, 255, 8 * v8);
  }

  *(v7 + 8) = v8;
  *(v7 + 64) = a3;
  if ((a3 & 0x3F) != 0)
  {
    *(v9 + v8 - 1) &= ~(-1 << a3);
  }

  v12 = 0;
  v13 = a2;
  v14 = 0;
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      result = mlir::ValueRange::dereference_iterator(&v13, v11);
      if (!result || (result = mlir::dataflow::RunLivenessAnalysis::getLiveness(a4, result)) != 0 && (*(result + 168) & 1) == 0)
      {
        *(*v7 + 8 * (v10 >> 6)) &= ~(1 << v10);
      }

      v10 = v12 + 1;
      v11 = v14 + 1;
      ++v12;
      v14 = v11;
    }

    while (v11 != a3);
  }

  return result;
}

void anonymous namespace::dropUsesAndEraseResults(uint64_t a1, void *a2)
{
  v43[38] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 36);
  v36 = a1 - 16;
  if (v2)
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = a2;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v6);
      v8 = *(NextResultAtOffset + 8);
      if (NextResultAtOffset && (*(NextResultAtOffset + 8) & 7) == 6)
      {
        if (((*(*v4 + 8 * ((*(NextResultAtOffset + 16) + 6) >> 6)) >> (*(NextResultAtOffset + 16) + 6)) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (((*(*v4 + 8 * ((v8 & 7) >> 6)) >> (v8 & 7)) & 1) == 0)
      {
LABEL_12:
        v9 = v5;
        v10 = v5 >> 3;
        if (((v5 >> 3) + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v5 >> 3 != -1)
        {
          if (!(((v5 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        *(8 * v10) = v8 & 0xFFFFFFFFFFFFFFF8;
        v5 = 8 * v10 + 8;
        memcpy(0, 0, v9);
        v4 = a2;
      }

      if (v2 == ++v6)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = 0;
LABEL_18:
  v39[0] = mlir::Attribute::getContext((a1 + 24));
  v39[1] = 0;
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a1);
  v11 = *(a1 + 16);
  v12 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a1) + 8);
  v39[2] = v11;
  v39[3] = v12;
  v13 = *(a1 + 24);
  v43[0] = *(*(a1 + 48) + 8);
  Value = mlir::StringAttr::getValue(v43);
  v16 = v15;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v17 = *(a1 + 72);
    v18 = *(a1 + 68);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  mlir::ValueRange::ValueRange(v42, v17, v18);
  mlir::TypeRange::TypeRange(v41, 0, v5 >> 3);
  v43[0] = mlir::Operation::getAttrDictionary(a1);
  v19 = mlir::DictionaryAttr::getValue(v43);
  v21 = v20;
  mlir::BlockRange::BlockRange(v40, 0, 0);
  mlir::OperationState::OperationState(v43, v13, Value, v16, v42[0], v42[1], v41[0], v41[1], v19, v21, v40[0], v40[1], 0, 0);
  if ((*(a1 + 44) & 0x7FFFFF) != 0)
  {
    mlir::OperationState::addRegion(v43);
  }

  v22 = mlir::OpBuilder::create(v39, v43);
  if ((*(a1 + 44) & 0x7FFFFF) != 0)
  {
    operator new();
  }

  v23 = *(a1 + 36);
  if (v23)
  {
    v24 = v36;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = 0;
    for (i = 0; i != v23; ++i)
    {
      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, i);
      if ((*(*a2 + 8 * (i >> 6)) >> i))
      {
        while (1)
        {
          v29 = *v27;
          if (!*v27)
          {
            break;
          }

          v30 = v29[1];
          if (v30)
          {
            v31 = *v29;
            *v30 = *v29;
            if (v31)
            {
              *(v31 + 8) = v30;
            }
          }

          *v29 = 0;
          v29[1] = 0;
          v29[3] = 0;
        }
      }

      else
      {
        v28 = (v22 - 16 * (v25 + 1));
        if (v25 >= 6)
        {
          v28 = (v22 - 96 - 24 * (v25 - 5));
        }

        while (1)
        {
          v32 = *v27;
          if (!*v27)
          {
            break;
          }

          v33 = v32[1];
          if (v33)
          {
            v34 = *v32;
            *v33 = *v32;
            if (v34)
            {
              *(v34 + 8) = v33;
            }
          }

          v32[3] = v28;
          v32[1] = v28;
          v35 = *v28;
          *v32 = *v28;
          if (v35)
          {
            *(v35 + 8) = v32;
          }

          *v28 = v32;
        }

        ++v25;
      }
    }
  }

  mlir::Operation::erase(a1);
  mlir::OperationState::~OperationState(v43);
}

uint64_t mlir::FunctionOpInterface::getTypeWithoutArgs(mlir::FunctionOpInterface *this, const llvm::BitVector *a2)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v15[0] = v16;
  v15[1] = 0x600000000;
  ArgumentTypes = mlir::FunctionOpInterface::getArgumentTypes(this);
  mlir::TypeRange::TypeRange(&v13, ArgumentTypes, v5);
  v6 = mlir::filterTypesOut(v13, v14, a2, v15);
  v8 = v7;
  ResultTypes = mlir::FunctionOpInterface::getResultTypes(this);
  mlir::TypeRange::TypeRange(&v13, ResultTypes, v10);
  result = mlir::FunctionOpInterface::cloneTypeWith(this, v6, v8, v13, v14);
  if (v15[0] != v16)
  {
    v12 = result;
    free(v15[0]);
    return v12;
  }

  return result;
}

uint64_t mlir::FunctionOpInterface::getTypeWithoutResults(mlir::FunctionOpInterface *this, const llvm::BitVector *a2)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v15[0] = v16;
  v15[1] = 0x600000000;
  ResultTypes = mlir::FunctionOpInterface::getResultTypes(this);
  mlir::TypeRange::TypeRange(&v13, ResultTypes, v5);
  v6 = mlir::filterTypesOut(v13, v14, a2, v15);
  v8 = v7;
  ArgumentTypes = mlir::FunctionOpInterface::getArgumentTypes(this);
  mlir::TypeRange::TypeRange(&v13, ArgumentTypes, v10);
  result = mlir::FunctionOpInterface::cloneTypeWith(this, v13, v14, v6, v8);
  if (v15[0] != v16)
  {
    v12 = result;
    free(v15[0]);
    return v12;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 80 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
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
      v5 = *a1 + 80 * (v13 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::LookupBucketFor<mlir::Region *>(v15, v14, &v16);
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
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 72) = 0;
  *v5 = v9;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x600000000;
  return v5 + 8;
}

uint64_t llvm::SmallVectorImpl<unsigned long>::operator=(uint64_t result, const void **a2)
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
      goto LABEL_16;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = result;
        memmove(*result, *a2, 8 * v7);
        result = v9;
      }

      *(result + 8) = v7;
      goto LABEL_16;
    }

    if (*(result + 12) < v7)
    {
      *(result + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v10 = result;
      v11 = a2;
      memmove(*result, *a2, 8 * v8);
      a2 = v11;
      v12 = *v6 - v8;
      if (!v12)
      {
LABEL_15:
        result = v10;
        *(v10 + 8) = v7;
LABEL_16:
        *v6 = 0;
        return result;
      }
    }

    else
    {
      v10 = result;
      v8 = 0;
      v12 = *v6;
      if (!*v6)
      {
        goto LABEL_15;
      }
    }

    memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v12);
    goto LABEL_15;
  }

  return result;
}

void anonymous namespace::cleanRegionBranchOp(mlir::RegionBranchOpInterface,mlir::dataflow::RunLivenessAnalysis &)::$_3::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v11[0] = a4;
    v11[1] = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(a4);
    mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(v11, *a3);
    EntrySuccessorOperands = mlir::MutableOperandRange::operator mlir::OperandRange(v12);
    LODWORD(v8) = v7;
    if (v13 != v14)
    {
      free(v13);
    }
  }

  else
  {
    EntrySuccessorOperands = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(*a2, *a3);
    LODWORD(v8) = v9;
  }

  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v8 = v8;
  if (v8)
  {
    v10 = 0;
    do
    {
      if (v10 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a1 + 8 * v10) = EntrySuccessorOperands;
      v10 = *(a1 + 8) + 1;
      *(a1 + 8) = v10;
      EntrySuccessorOperands += 32;
      --v8;
    }

    while (v8);
  }
}

void anonymous namespace::cleanRegionBranchOp(mlir::RegionBranchOpInterface,mlir::dataflow::RunLivenessAnalysis &)::$_6::operator()(void ***a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v89[6] = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    v13 = **a1;
    if ((*(*v13 + 46) & 0x80) != 0)
    {
      v14 = *(*v13 + 68);
      __dst = v84;
      HIDWORD(v83) = 6;
      if (v14 >= 7)
      {
        LODWORD(v83) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v14)
      {
        v72 = v13;
        bzero(v84, 8 * v14);
        v13 = v72;
      }
    }

    else
    {
      LODWORD(v14) = 0;
      __dst = v84;
      HIDWORD(v83) = 6;
    }

    LODWORD(v83) = v14;
    v87 = v89;
    v88 = 0x200000000;
    mlir::RegionBranchOpInterface::getSuccessorRegions(v13, 0, &v87);
    if (__dst != v84)
    {
      free(__dst);
    }

    Terminator = 0;
    v16 = v87;
    v17 = v88;
    if (v88)
    {
      goto LABEL_16;
    }

LABEL_103:
    if (v16 != v89)
    {
      goto LABEL_104;
    }

    return;
  }

  v9 = *(a5 + 8);
  if (v9)
  {
    v10 = (v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  Terminator = mlir::Block::getTerminator(v10);
  v11 = **v7;
  if ((*(*v11 + 46) & 0x80) != 0)
  {
    v12 = *(*v11 + 68);
    __dst = v84;
    HIDWORD(v83) = 6;
    if (v12 >= 7)
    {
      LODWORD(v83) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v12)
    {
      v15 = v11;
      bzero(v84, 8 * v12);
      v11 = v15;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    __dst = v84;
    HIDWORD(v83) = 6;
  }

  LODWORD(v83) = v12;
  v87 = v89;
  v88 = 0x200000000;
  mlir::RegionBranchOpInterface::getSuccessorRegions(v11, a5, &v87);
  if (__dst != v84)
  {
    free(__dst);
  }

  v16 = v87;
  v17 = v88;
  if (!v88)
  {
    goto LABEL_103;
  }

LABEL_16:
  v73 = &v16[3 * v17];
  v74 = v7;
  do
  {
    v18 = *v16;
    v76 = v16;
    v20 = v16[1];
    v19 = v16[2];
    __dst = v84;
    v83 = 0x600000000;
    v21 = v80;
    v22 = __src;
    if (v80)
    {
      if (__src == v81)
      {
        if (v80 >= 7uLL)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(__dst, __src, 8 * v80);
        v22 = __src;
        LODWORD(v83) = v21;
      }

      else
      {
        __dst = __src;
        v83 = v80;
        __src = v81;
        HIDWORD(v80) = 0;
        v22 = v81;
      }

      LODWORD(v80) = 0;
    }

    v85 = v20;
    v86 = v19;
    if (v22 != v81)
    {
      free(v22);
      v21 = v83;
      v20 = v85;
      v19 = v86;
    }

    v23 = __dst;
    __src = __dst;
    v80 = v20;
    v81[0] = 0;
    if (v21 && v19)
    {
      v24 = (__dst + 8 * v21);
      v25 = 0;
      if (v18)
      {
        v78 = (v18 >> 4) ^ (v18 >> 9);
        while (1)
        {
          v26 = mlir::ValueRange::dereference_iterator(&v80, v25);
          OperandNumber = mlir::OpOperand::getOperandNumber(*v23);
          v28 = *a4;
          v29 = *(a4 + 16);
          if (!v29)
          {
            goto LABEL_56;
          }

          v30 = v29 - 1;
          v31 = (v29 - 1) & v78;
          v32 = &v28[10 * v31];
          v33 = *v32;
          if (v18 != *v32)
          {
            break;
          }

LABEL_47:
          v38 = *(*a2 + 8 * (OperandNumber >> 6));
          v39 = v38 & (1 << OperandNumber) | (1 << *(v26 + 24)) & *(v32[1] + 8 * (*(v26 + 24) >> 6));
          v40 = v38 & ~(1 << OperandNumber);
          v41 = v38 | (1 << OperandNumber);
          if (v39)
          {
            v42 = v41;
          }

          else
          {
            v42 = v40;
          }

          *(*a2 + 8 * (OperandNumber >> 6)) = v42;
          v23 = (__src + 8);
          v25 = v81[0] + 1;
          __src = v23;
          ++v81[0];
          if (v23 == v24 || v25 == v19)
          {
            goto LABEL_94;
          }
        }

        v34 = 0;
        v35 = 1;
        while (v33 != -4096)
        {
          if (v34)
          {
            v36 = 0;
          }

          else
          {
            v36 = v33 == -8192;
          }

          if (v36)
          {
            v34 = v32;
          }

          v37 = v31 + v35++;
          v31 = v37 & v30;
          v32 = &v28[10 * (v37 & v30)];
          v33 = *v32;
          if (v18 == *v32)
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          v32 = v34;
        }

        v43 = *(a4 + 8);
        if (4 * v43 + 4 < (3 * v29))
        {
          if (v29 + ~v43 - *(a4 + 12) > v29 >> 3)
          {
            *(a4 + 8) = v43 + 1;
            if (*v32 == -4096)
            {
LABEL_46:
              *(v32 + 5) = 0u;
              *(v32 + 7) = 0u;
              v32[9] = 0;
              *(v32 + 3) = 0u;
              *v32 = v18;
              v32[1] = (v32 + 3);
              v32[2] = 0x600000000;
              goto LABEL_47;
            }

LABEL_45:
            --*(a4 + 12);
            goto LABEL_46;
          }

          v44 = *(a4 + 16);
        }

        else
        {
LABEL_56:
          v44 = 2 * v29;
        }

        v45 = (v44 - 1) | ((v44 - 1) >> 1);
        v46 = v45 | (v45 >> 2) | ((v45 | (v45 >> 2)) >> 4);
        v47 = ((v46 | (v46 >> 8)) >> 16) | v46 | (v46 >> 8);
        if ((v47 + 1) > 0x40)
        {
          v48 = v47 + 1;
        }

        else
        {
          v48 = 64;
        }

        *(a4 + 16) = v48;
        buffer = llvm::allocate_buffer(80 * v48, 8uLL);
        *a4 = buffer;
        if (v28)
        {
          v50 = 10 * v29;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(a4, v28, &v28[v50]);
          llvm::deallocate_buffer(v28, (v50 * 8));
        }

        *(a4 + 8) = 0;
        v51 = *(a4 + 16);
        if (v51)
        {
          v52 = 80 * v51 - 80;
          v53 = buffer;
          if (v52 < 0x50)
          {
            goto LABEL_110;
          }

          v54 = v52 / 0x50 + 1;
          v53 = &buffer[10 * (v54 & 0x7FFFFFFFFFFFFFELL)];
          v55 = buffer;
          v56 = v54 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *v55 = -4096;
            v55[10] = -4096;
            v55 += 20;
            v56 -= 2;
          }

          while (v56);
          if (v54 != (v54 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_110:
            do
            {
              *v53 = -4096;
              v53 += 10;
            }

            while (v53 != &buffer[10 * v51]);
          }

          v57 = v51 - 1;
          v58 = (v51 - 1) & v78;
          v32 = &buffer[10 * v58];
          v59 = *v32;
          if (v18 != *v32)
          {
            v60 = 0;
            v61 = 1;
            while (v59 != -4096)
            {
              if (v60)
              {
                v62 = 0;
              }

              else
              {
                v62 = v59 == -8192;
              }

              if (v62)
              {
                v60 = v32;
              }

              v63 = v58 + v61++;
              v58 = v63 & v57;
              v32 = &buffer[10 * (v63 & v57)];
              v59 = *v32;
              if (v18 == *v32)
              {
                goto LABEL_80;
              }
            }

            if (v60)
            {
              v32 = v60;
            }
          }
        }

        else
        {
          v32 = 0;
        }

LABEL_80:
        ++*(a4 + 8);
        if (*v32 == -4096)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      do
      {
        v64 = mlir::ValueRange::dereference_iterator(&v80, v25);
        v65 = mlir::OpOperand::getOperandNumber(*v23);
        if (v64 && (*(v64 + 8) & 7) == 6)
        {
          v66 = *(v64 + 16) + 6;
        }

        else
        {
          v66 = *(v64 + 8) & 7;
        }

        v67 = *(*a2 + 8 * (v65 >> 6));
        v68 = v67 & (1 << v65) | (1 << v66) & *(*a3 + 8 * (v66 >> 6));
        v69 = v67 & ~(1 << v65);
        v70 = v67 | (1 << v65);
        if (v68)
        {
          v71 = v70;
        }

        else
        {
          v71 = v69;
        }

        *(*a2 + 8 * (v65 >> 6)) = v71;
        v23 = (__src + 8);
        v25 = v81[0] + 1;
        __src = v23;
        ++v81[0];
      }

      while (v23 != v24 && v25 != v19);
    }

LABEL_94:
    if (__dst != v84)
    {
      free(__dst);
    }

    v16 = v76 + 3;
    v7 = v74;
  }

  while (v76 + 3 != v73);
  v16 = v87;
  if (v87 == v89)
  {
    return;
  }

LABEL_104:
  free(v16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::LookupBucketFor<mlir::Region *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 80 * v6);
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
        v7 = (v4 + 80 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(80 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 10 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 80 * v11 - 80;
    if (v12 < 0x50)
    {
      v13 = result;
LABEL_14:
      v17 = &result[10 * v11];
      do
      {
        *v13 = -4096;
        v13 += 10;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x50 + 1;
    v13 = &result[10 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[10] = -4096;
      v15 += 20;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 80 * v6 - 80;
    if (v8 < 0x50)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[10 * v6];
      do
      {
        *v9 = -4096;
        v9 += 10;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x50 + 1;
    v9 = &v7[10 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[10] = -4096;
      v11 += 20;
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
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((v14 >> 4) ^ (v14 >> 9));
          v18 = *a1 + 80 * v17;
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
              v18 = *a1 + 80 * v17;
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
        *(v18 + 16) = 0x600000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v18 + 8, v4 + 1);
        }

        *(v18 + 72) = *(v4 + 18);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != v4 + 3)
        {
          free(v24);
        }
      }

      v4 += 10;
    }

    while (v4 != a3);
  }
}

void anonymous namespace::SCCP::~SCCP(_anonymous_namespace_::SCCP *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::SCCP::runOnOperation(_anonymous_namespace_::SCCP *this)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v1 = 1;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = &v7;
  v6 = 0x600000000;
  mlir::StorageUniquer::StorageUniquer(v8);
}

const char *llvm::getTypeName<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>]";
  v6 = 104;
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

uint64_t mlir::tryToDestructureMemorySlots(const void *a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  if (((16 * a2) >> 4) >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a2)
  {
    LODWORD(v18) = 0;
    v14 = v16;
    v15 = 0x300000000;
    goto LABEL_22;
  }

  v3 = a2;
  memcpy(v17, a1, 16 * a2);
  LODWORD(v18) = v18 + v3;
  v14 = v16;
  v15 = 0x300000000;
  if (a2 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v18)
  {
LABEL_22:
    v6 = v14;
    if (v14 == v16)
    {
      goto LABEL_17;
    }

LABEL_16:
    free(v6);
    goto LABEL_17;
  }

  v4 = v17;
  v8 = v17 + 16 * v18;
  v5 = 0;
  do
  {
    v9 = v5;
    v10 = *v4;
    mlir::DestructurableAllocationOpInterface::getDestructurableSlots(&v11, &v10);
    if (v12)
    {
      llvm::deallocate_buffer(0, 0);
    }

    if (v11 != &v13)
    {
      free(v11);
    }

    if (v15 >= HIDWORD(v15))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v14 + v15) = v10;
    LODWORD(v15) = v15 + 1;
    v5 = v9;
    ++v4;
  }

  while (v4 != v8);
  v6 = v14;
  if (v14 != v16)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v17 != v19)
  {
    free(v17);
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::DestructurableAccessorOpInterface,mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::DestructurableAccessorOpInterface,mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::DestructurableAccessorOpInterface,mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::DestructurableAccessorOpInterface,mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[61];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::DestructurableAccessorOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableAccessorOpInterface]";
  v6 = 89;
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

uint64_t mlir::OpInterface<mlir::SafeMemorySlotAccessOpInterface,mlir::detail::SafeMemorySlotAccessOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::SafeMemorySlotAccessOpInterface,mlir::detail::SafeMemorySlotAccessOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SafeMemorySlotAccessOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::SafeMemorySlotAccessOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::SafeMemorySlotAccessOpInterface,mlir::detail::SafeMemorySlotAccessOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::SafeMemorySlotAccessOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::SafeMemorySlotAccessOpInterface,mlir::detail::SafeMemorySlotAccessOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[63];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SafeMemorySlotAccessOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SafeMemorySlotAccessOpInterface]";
  v6 = 87;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>>,mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
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
        v16 = v15 & ((LODWORD(v14) >> 4) ^ (LODWORD(v14) >> 9));
        v17 = (*a1 + 72 * v16);
        v18 = *v17;
        if (*&v14 != *v17)
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
            v17 = (*a1 + 72 * (v23 & v15));
            v18 = *v17;
            if (*&v14 == *v17)
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
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v17 + 1), v17 + 5, 4, v4 + 1);
        ++*(a1 + 8);
        v19 = *(v4 + 2);
        if (v19 != *(v4 + 1))
        {
          free(v19);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

void anonymous namespace::SROA::~SROA(_anonymous_namespace_::SROA *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::SROA::runOnOperation(_anonymous_namespace_::SROA *this)
{
  v1 = this;
  v31[6] = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  v2 = *(this + 6);
  v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
  v29 = v2;
  v5 = v2[9];
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  if ((v5 & 4) == 0 && v6)
  {
    do
    {
      v7 = *(v6 + 72);
      v6 = v7 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v7 & 4) == 0 && v6);
  }

  v8 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>((v2 + 3), v6);
  mlir::DataLayoutAnalysis::getAtOrAbove(v8, v4);
  v9 = v4[11];
  if ((v9 & 0x7FFFFF) == 0)
  {
    goto LABEL_25;
  }

  v26 = v1;
  v10 = 0;
  v11 = (((&v4[4 * ((v9 >> 23) & 1) + 16] + ((v9 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v4[10]);
  v12 = &v11[3 * (v9 & 0x7FFFFF)];
  do
  {
    if (*v11 != v11)
    {
      v13 = v11[1];
      if (v13)
      {
        v14 = (v13 - 8);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 5);
      Parent = mlir::Block::getParent(v14);
      v27[1] = mlir::Region::getContext(Parent);
      v27[2] = 0;
      v27[3] = v14;
      v27[4] = v15;
      v29 = v31;
      v30 = 0x300000000;
      v27[0] = &v29;
      v17 = v11[1];
      if (v17 == v11)
      {
        v18 = 0;
        v19 = v31;
      }

      else
      {
        do
        {
          v20 = v17 - 1;
          if (!v17)
          {
            v20 = 0;
          }

          v21 = v20[5];
          v22 = v20 + 4;
          if (v21 != v20 + 4)
          {
            do
            {
              v23 = v21[1];
              ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v21);
              v28 = v27;
              mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN12_GLOBAL__N_14SROA14runOnOperationEvEUlNS1_35DestructurableAllocationOpInterfaceEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v28, 1);
              v21 = v23;
            }

            while (v23 != v22);
          }

          v17 = v17[1];
        }

        while (v17 != v11);
        v19 = v29;
        v18 = v30;
      }

      v25 = mlir::tryToDestructureMemorySlots(v19, v18);
      if (v29 != v31)
      {
        free(v29);
      }

      v10 |= v25;
    }

    v11 += 3;
  }

  while (v11 != v12);
  v1 = v26;
  if ((v10 & 1) == 0)
  {
LABEL_25:
    mlir::detail::PreservedAnalyses::preserveAll(v1 + 7);
  }
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN12_GLOBAL__N_14SROA14runOnOperationEvEUlNS1_35DestructurableAllocationOpInterfaceEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      result = mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v5 = **a1;
      *&v7 = a2;
      *(&v7 + 1) = result;
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 12))
      {
        return llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v5, &v7);
      }

      else
      {
        *(*v5 + 16 * v6) = v7;
        ++*(v5 + 8);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[65];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::DestructurableAllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableAllocationOpInterface]";
  v6 = 91;
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

void anonymous namespace::StripDebugInfo::~StripDebugInfo(_anonymous_namespace_::StripDebugInfo *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::StripDebugInfo::runOnOperation(_anonymous_namespace_::StripDebugInfo *this)
{
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v4 = mlir::UnknownLoc::get(Context, v3);
  v5 = *(this + 5);
  v7 = &v8;
  v8 = v4;
}

void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::StripDebugInfo::runOnOperation(void)::$_0>(void **result, uint64_t a2)
{
  *(a2 + 24) = **result;
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v5 = v4 + 24 * v3;
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        if (i)
        {
          v7 = i - 8;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v7 + 48);
        for (j = *(v7 + 56); v8 != j; *(v10 + 32) = **result)
        {
          v10 = *v8++;
        }
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return result;
}

void anonymous namespace::SymbolDCE::~SymbolDCE(_anonymous_namespace_::SymbolDCE *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::SymbolDCE::runOnOperation(_anonymous_namespace_::SymbolDCE *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  {
  }

  if ((*(**(v2 + 48) + 32))(*(v2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
    if (!InterfaceFor)
    {
      goto LABEL_8;
    }

    if (*(v2 + 47) && (InterfaceFor = mlir::Operation::getInherentAttr(v2, "sym_name", 8), (v4 & 1) != 0))
    {
      if (!InterfaceFor)
      {
LABEL_8:
        v5 = 0;
        *&v29 = 0;
        *(&v29 + 1) = InterfaceFor;
        v6 = *(v2 + 16);
        if (!v6)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

    else if (!mlir::DictionaryAttr::contains(v2 + 56, "sym_name", 8uLL))
    {
      v5 = 0;
      v29 = 0uLL;
      v6 = *(v2 + 16);
      if (!v6)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    v5 = v2;
    *&v29 = v2;
    *(&v29 + 1) = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_37;
    }

LABEL_32:
    if (mlir::Block::getParentOp(v6))
    {
      v17 = v5 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      isPrivate = mlir::SymbolOpInterface::isPrivate(&v29);
      goto LABEL_38;
    }

LABEL_37:
    isPrivate = 1;
LABEL_38:
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    {
      v25[0] = v31;
      v25[1] = this;
      v19 = v27;
      v20 = v26[0];
      if (v27)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(this + 5) |= 4uLL;
      v19 = v27;
      v20 = v26[0];
      if (v27)
      {
LABEL_40:
        v21 = (v20 + 8);
        v22 = 16 * v19;
        do
        {
          if ((*(v21 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v23 = *v21;
            *v21 = 0;
            if (v23)
            {
              llvm::deallocate_buffer(*(v23 + 8), (16 * *(v23 + 24)));
            }
          }

          v21 += 2;
          v22 -= 16;
        }

        while (v22);
        v20 = v26[0];
        v24 = (16 * v27);
LABEL_48:
        llvm::deallocate_buffer(v20, v24);
      }
    }

    v24 = 0;
    goto LABEL_48;
  }

  v28 = 257;
  mlir::Operation::emitOpError(v31, v2, v26);
  if (v31[0])
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = " was scheduled to run under SymbolDCE, but does not define a symbol table";
    v30 = 73;
    if (v34 >= v35)
    {
      if (v33 > &v29 || v33 + 24 * v34 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v29;
    *(v7 + 2) = v30;
    *v7 = v8;
    ++v34;
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v40;
      v11 = __p;
      if (v40 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v40 = v9;
      operator delete(v11);
    }

    v12 = v37;
    if (v37)
    {
      v13 = v38;
      v14 = v37;
      if (v38 != v37)
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
        v14 = v37;
      }

      v38 = v12;
      operator delete(v14);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  *(this + 5) |= 4uLL;
}

BOOL anonymous namespace::SymbolDCE::computeLiveness(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v105[16] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 40);
  v7 = *(a1 + 44);
  v103 = v105;
  v104 = 0x1000000000;
  v9 = ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v8;
  v10 = *(v9 + 8);
  if (v10 == v9)
  {
    goto LABEL_62;
  }

  while (2)
  {
    v11 = v10 - 8;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v11 + 32;
    for (i = *(v11 + 40); i != v12; i = *(i + 8))
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(i);
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
      if (!InterfaceFor)
      {
        goto LABEL_14;
      }

      if (ValuePtr[47] && (InterfaceFor = mlir::Operation::getInherentAttr(ValuePtr, "sym_name", 8), (v19 & 1) != 0))
      {
        if (!InterfaceFor)
        {
LABEL_14:
          v90 = 0;
          v91 = InterfaceFor;
          goto LABEL_15;
        }
      }

      else if (!mlir::DictionaryAttr::contains((ValuePtr + 56), "sym_name", 8uLL))
      {
        v90 = 0;
        v91 = 0;
LABEL_15:
        v20 = v104;
        if (v104 >= HIDWORD(v104))
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      }

      v21 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
      v90 = ValuePtr;
      v91 = v21;
      if (!ValuePtr)
      {
        goto LABEL_15;
      }

      if ((a3 & 1) == 0 && !mlir::SymbolOpInterface::isPrivate(&v90) || (mlir::SymbolOpInterface::canDiscardOnUseEmpty(&v90) & 1) == 0)
      {
        v22 = *(a4 + 16);
        if (!v22)
        {
          goto LABEL_44;
        }

        v14 = (v22 - 1) & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
        v15 = (*a4 + 8 * v14);
        v16 = *v15;
        if (ValuePtr == *v15)
        {
          continue;
        }

        v23 = 0;
        v24 = 1;
        while (v16 != -4096)
        {
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v16 == -8192;
          }

          if (v25)
          {
            v23 = v15;
          }

          v26 = v14 + v24++;
          v14 = v26 & (v22 - 1);
          v15 = (*a4 + 8 * v14);
          v16 = *v15;
          if (ValuePtr == *v15)
          {
            goto LABEL_8;
          }
        }

        v27 = v23 ? v23 : v15;
        v28 = *(a4 + 8);
        if (4 * v28 + 4 >= 3 * v22)
        {
LABEL_44:
          v22 *= 2;
LABEL_45:
          llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(a4, v22);
          v29 = *(a4 + 16);
          if (v29)
          {
            v30 = v29 - 1;
            v31 = (v29 - 1) & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
            v27 = (*a4 + 8 * v31);
            v32 = *v27;
            if (ValuePtr != *v27)
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
                v31 = v36 & v30;
                v27 = (*a4 + 8 * (v36 & v30));
                v32 = *v27;
                if (ValuePtr == *v27)
                {
                  goto LABEL_57;
                }
              }

              if (v33)
              {
                v27 = v33;
              }
            }
          }

          else
          {
            v27 = 0;
          }

LABEL_57:
          ++*(a4 + 8);
          if (*v27 == -4096)
          {
            goto LABEL_29;
          }

LABEL_28:
          --*(a4 + 12);
          goto LABEL_29;
        }

        if (v22 + ~v28 - *(a4 + 12) <= v22 >> 3)
        {
          goto LABEL_45;
        }

        *(a4 + 8) = v28 + 1;
        if (*v27 != -4096)
        {
          goto LABEL_28;
        }

LABEL_29:
        *v27 = ValuePtr;
        v20 = v104;
        if (v104 >= HIDWORD(v104))
        {
LABEL_30:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_16:
        v103[v20] = ValuePtr;
        LODWORD(v104) = v104 + 1;
        continue;
      }

LABEL_8:
      ;
    }

    v10 = *(v10 + 8);
    if (v10 != v9)
    {
      continue;
    }

    break;
  }

LABEL_62:
  p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
  while (2)
  {
    if (!v104)
    {
      v82 = 1;
LABEL_166:
      v80 = v103;
      if (v103 == v105)
      {
        return v82;
      }

LABEL_167:
      free(v80);
      return v82;
    }

    v38 = v103[v104 - 1];
    LODWORD(v104) = v104 - 1;
    {
    }

    if (!(*(**(v38 + 48) + 32))(*(v38 + 48), p_opt_class_meths[205]))
    {
      goto LABEL_81;
    }

    InherentAttr = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v38);
    if (!InherentAttr)
    {
      goto LABEL_72;
    }

    if (!*(v38 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v38, "sym_name", 8), (v40 & 1) == 0))
    {
      if (!mlir::DictionaryAttr::contains(v38 + 56, "sym_name", 8uLL))
      {
        v41 = 0;
        v90 = 0;
        v91 = 0;
        isPrivate = 1;
        if (a3)
        {
          goto LABEL_80;
        }

        goto LABEL_78;
      }

      goto LABEL_75;
    }

    if (InherentAttr)
    {
LABEL_75:
      v43 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v38);
      v41 = v38;
      v90 = v38;
      v91 = v43;
      isPrivate = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_80;
    }

LABEL_72:
    v41 = 0;
    v90 = 0;
    v91 = InherentAttr;
    isPrivate = 1;
    if (a3)
    {
      goto LABEL_80;
    }

LABEL_78:
    if (v41)
    {
      isPrivate = mlir::SymbolOpInterface::isPrivate(&v90);
    }

LABEL_80:
    {
LABEL_81:
      mlir::SymbolTable::getSymbolUses(v38, &v85);
      v44 = v87;
      if (v87)
      {
        v90 = &v92;
        HIDWORD(v91) = 4;
        v45 = v85;
        v46 = v86;
        if (v85 == v86)
        {
          goto LABEL_153;
        }

        while (2)
        {
          LODWORD(v91) = 0;
          v47 = *(v38 + 16);
          if (v47)
          {
            ParentOp = mlir::Block::getParentOp(v47);
            if (mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v45[1], &v90))
            {
LABEL_89:
              if (v91)
              {
                v49 = v90;
                v50 = v90 + 8 * v91;
                while (1)
                {
                  v54 = *v49;
                  v55 = *(a4 + 16);
                  if (!v55)
                  {
                    goto LABEL_113;
                  }

                  v51 = ((v54 >> 4) ^ (v54 >> 9)) & (v55 - 1);
                  v52 = (*a4 + 8 * v51);
                  v53 = *v52;
                  if (v54 != *v52)
                  {
                    break;
                  }

LABEL_92:
                  if (++v49 == v50)
                  {
                    goto LABEL_84;
                  }
                }

                v56 = 0;
                v57 = 1;
                while (v53 != -4096)
                {
                  if (v56)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v53 == -8192;
                  }

                  if (v58)
                  {
                    v56 = v52;
                  }

                  v59 = v51 + v57++;
                  v51 = v59 & (v55 - 1);
                  v52 = (*a4 + 8 * v51);
                  v53 = *v52;
                  if (v54 == *v52)
                  {
                    goto LABEL_92;
                  }
                }

                if (v56)
                {
                  v60 = v56;
                }

                else
                {
                  v60 = v52;
                }

                v61 = *(a4 + 8);
                if (4 * v61 + 4 < 3 * v55)
                {
                  if (v55 + ~v61 - *(a4 + 12) > v55 >> 3)
                  {
                    *(a4 + 8) = v61 + 1;
                    if (*v60 == -4096)
                    {
LABEL_98:
                      *v60 = v54;
                      if (v104 >= HIDWORD(v104))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v103[v104] = v54;
                      LODWORD(v104) = v104 + 1;
                      goto LABEL_92;
                    }

LABEL_97:
                    --*(a4 + 12);
                    goto LABEL_98;
                  }
                }

                else
                {
LABEL_113:
                  v55 *= 2;
                }

                llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(a4, v55);
                v62 = *(a4 + 16);
                if (v62)
                {
                  v63 = v62 - 1;
                  v64 = (v62 - 1) & ((v54 >> 4) ^ (v54 >> 9));
                  v60 = (*a4 + 8 * v64);
                  v65 = *v60;
                  if (v54 != *v60)
                  {
                    v66 = 0;
                    v67 = 1;
                    while (v65 != -4096)
                    {
                      if (v66)
                      {
                        v68 = 0;
                      }

                      else
                      {
                        v68 = v65 == -8192;
                      }

                      if (v68)
                      {
                        v66 = v60;
                      }

                      v69 = v64 + v67++;
                      v64 = v69 & v63;
                      v60 = (*a4 + 8 * (v69 & v63));
                      v65 = *v60;
                      if (v54 == *v60)
                      {
                        goto LABEL_127;
                      }
                    }

                    if (v66)
                    {
                      v60 = v66;
                    }
                  }
                }

                else
                {
                  v60 = 0;
                }

LABEL_127:
                ++*(a4 + 8);
                if (*v60 == -4096)
                {
                  goto LABEL_98;
                }

                goto LABEL_97;
              }
            }
          }

          else if (mlir::SymbolTableCollection::lookupSymbolIn(a2, 0, v45[1], &v90))
          {
            goto LABEL_89;
          }

LABEL_84:
          v45 += 2;
          if (v45 != v46)
          {
            continue;
          }

          break;
        }

        if (v90 != &v92)
        {
          free(v90);
        }

LABEL_153:
        p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
      }

      else
      {
        v84 = 257;
        mlir::Operation::emitError(&v90, v38, v83);
        if (v90)
        {
          LODWORD(v88) = 3;
          *(&v88 + 1) = "operation contains potentially unknown symbol table, meaning that we can't reliable compute symbol uses";
          v89 = 103;
          if (v94 >= v95)
          {
            if (v93 > &v88 || v93 + 24 * v94 <= &v88)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v70 = v93 + 24 * v94;
          v71 = v88;
          *(v70 + 2) = v89;
          *v70 = v71;
          ++v94;
        }

        v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
        if (v90)
        {
          mlir::InFlightDiagnostic::report(&v90);
        }

        if (v102 == 1)
        {
          if (v101 != &v102)
          {
            free(v101);
          }

          v72 = __p;
          if (__p)
          {
            v73 = v100;
            v74 = __p;
            if (v100 != __p)
            {
              do
              {
                v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
              }

              while (v73 != v72);
              v74 = __p;
            }

            v100 = v72;
            operator delete(v74);
          }

          v75 = v97;
          if (v97)
          {
            v76 = v98;
            v77 = v97;
            if (v98 != v97)
            {
              do
              {
                v79 = *--v76;
                v78 = v79;
                *v76 = 0;
                if (v79)
                {
                  MEMORY[0x259C63150](v78, 0x1000C8077774924);
                }
              }

              while (v76 != v75);
              v77 = v97;
            }

            v98 = v75;
            operator delete(v77);
          }

          if (v93 != &v96)
          {
            free(v93);
          }
        }
      }

      if (v87 == 1 && v85)
      {
        v86 = v85;
        operator delete(v85);
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_166;
      }

      continue;
    }

    break;
  }

  v82 = 0;
  v80 = v103;
  if (v103 != v105)
  {
    goto LABEL_167;
  }

  return v82;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::SymbolDCE::runOnOperation(void)::$_0>(uint64_t **a1, uint64_t a2)
{
  {
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v4 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v5 = *(v4 + 8);
  if (v5 == v4)
  {
    return;
  }

  while (2)
  {
    v6 = v5 - 8;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = *(v6 + 40);
    v8 = v6 + 32;
LABEL_11:
    while (v7 != v8)
    {
      v9 = v7;
      v7 = *(v7 + 8);
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
      if (mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr))
      {
        if (*(ValuePtr + 47) && (InherentAttr = mlir::Operation::getInherentAttr(ValuePtr, "sym_name", 8), (v12 & 1) != 0))
        {
          if (InherentAttr)
          {
            goto LABEL_18;
          }
        }

        else if (mlir::DictionaryAttr::contains(ValuePtr + 56, "sym_name", 8uLL))
        {
LABEL_18:
          v13 = *(*a1 + 4);
          if (!v13)
          {
            goto LABEL_10;
          }

          v14 = **a1;
          v15 = v13 - 1;
          v16 = v15 & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
          v17 = *(v14 + 8 * v16);
          if (v17 != ValuePtr)
          {
            v18 = 1;
            while (v17 != -4096)
            {
              v19 = v16 + v18++;
              v16 = v19 & v15;
              v17 = *(v14 + 8 * v16);
              if (v17 == ValuePtr)
              {
                goto LABEL_11;
              }
            }

LABEL_10:
            mlir::Operation::erase(ValuePtr);
          }
        }
      }
    }

    v5 = *(v5 + 8);
    if (v5 != v4)
    {
      continue;
    }

    break;
  }
}

void anonymous namespace::SymbolPrivatize::~SymbolPrivatize(llvm **this)
{
  *this = &unk_28685DE80;
  llvm::deallocate_buffer(this[77], (8 * *(this + 158)));
}

{
  *this = &unk_28685DE80;
  llvm::deallocate_buffer(this[77], (8 * *(this + 158)));
}

void sub_25648CDBC()
{
  *v0 = &unk_28685DF20;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(v0 + 43);

  mlir::Pass::~Pass(v0);
}

void sub_25648CE44()
{
  *v0 = &unk_28685DF20;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(v0 + 43);
  mlir::Pass::~Pass(v0);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::SymbolPrivatize::runOnOperation(uint64_t this)
{
  v1 = *(this + 40) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v3 = this;
    v4 = ((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v5 = v4 + 24 * (v2 & 0x7FFFFF);
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v7 = i - 8;
        if (!i)
        {
          v7 = 0;
        }

        v8 = v7 + 32;
        for (j = *(v7 + 40); j != v8; j = *(j + 8))
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
          this = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
          if (!this)
          {
            goto LABEL_17;
          }

          if (*(ValuePtr + 47) && (this = mlir::Operation::getInherentAttr(ValuePtr, "sym_name", 8), (v11 & 1) != 0))
          {
            if (!this)
            {
LABEL_17:
              v18 = 0;
              v19 = this;
              continue;
            }
          }

          else if (!mlir::DictionaryAttr::contains(ValuePtr + 56, "sym_name", 8uLL))
          {
            this = 0;
            v18 = 0;
            v19 = 0;
            continue;
          }

          this = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
          v18 = ValuePtr;
          v19 = this;
          if (ValuePtr)
          {
            this = mlir::SymbolOpInterface::getNameAttr(&v18);
            v12 = *(v3 + 632);
            if (!v12)
            {
              goto LABEL_10;
            }

            v13 = *(v3 + 616);
            v14 = ((this >> 4) ^ (this >> 9)) & (v12 - 1);
            v15 = *(v13 + 8 * v14);
            if (v15 != this)
            {
              v16 = 1;
              while (v15 != -4096)
              {
                v17 = v14 + v16++;
                v14 = v17 & (v12 - 1);
                v15 = *(v13 + 8 * v14);
                if (v15 == this)
                {
                  goto LABEL_24;
                }
              }

LABEL_10:
              this = mlir::SymbolOpInterface::setVisibility(&v18, 1);
              continue;
            }

LABEL_24:
            if (v14 == v12)
            {
              goto LABEL_10;
            }
          }
        }
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return this;
}

uint64_t anonymous namespace::SymbolPrivatize::initialize(_anonymous_namespace_::SymbolPrivatize *this, mlir::MLIRContext *a2, const llvm::Twine *a3)
{
  v3 = *(this + 59);
  for (i = *(this + 60); v3 != i; v3 += 24)
  {
    v9 = 260;
    v8[0] = v3;
    v10 = mlir::StringAttr::get(a2, v8, a3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 616, &v10, v11);
  }

  return 1;
}

void sub_25648D2FC()
{
  v4 = *(v2 + 632);
  *(v1 + 632) = v4;
  if (v4)
  {
    buffer = llvm::allocate_buffer(8 * v4, 8uLL);
    *(v1 + 616) = buffer;
    *(v1 + 624) = *(v2 + 624);
    memcpy(buffer, *(v2 + 616), 8 * *(v1 + 632));
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  *v0 = v1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v8 = (*result + 8 * v7);
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
      v8 = (v5 + 8 * (v15 & v6));
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
    llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
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
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(uint64_t a1, int a2)
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
        goto LABEL_10;
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
LABEL_10:
        v17 = &result->i8[8 * v11];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = *(a1 + 16) - 1;
          v29 = v28 & ((v27 >> 4) ^ (v27 >> 9));
          v26 = (*a1 + 8 * v29);
          v30 = *v26;
          if (v27 != *v26)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v26;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v26 = (*a1 + 8 * (v34 & v28));
              v30 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v26 = v31;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 < 3)
    {
      goto LABEL_19;
    }

    v21 = v20 + 1;
    v10 = &result->i8[8 * (v21 & 0x3FFFFFFFFFFFFFFCLL)];
    v22 = result + 1;
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22[-1] = v23;
      *v22 = v23;
      v22 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v25 = &result->i8[8 * v19];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v25);
    }
  }

  return result;
}

void anonymous namespace::TopologicalSortPass::~TopologicalSortPass(_anonymous_namespace_::TopologicalSortPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::TopologicalSortPass::runOnOperation(_anonymous_namespace_::TopologicalSortPass *this)
{
  v1 = *(this + 5);
  v4 = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>((v1 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_119TopologicalSortPass14runOnOperationEvEUlNS1_19RegionKindInterfaceEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_119TopologicalSortPass14runOnOperationEvEUlNS1_19RegionKindInterfaceEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      result = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v11[0] = a2;
      v11[1] = result;
      v4 = *(a2 + 44);
      if ((v4 & 0x7FFFFF) != 0)
      {
        v5 = 0;
        v6 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
        v7 = v6 + 24 * (v4 & 0x7FFFFF);
        do
        {
          result = mlir::RegionKindInterface::hasSSADominance(v11, v5);
          if ((result & 1) == 0)
          {
            for (i = *(v6 + 8); i != v6; i = *(i + 8))
            {
              if (i)
              {
                v10 = (i - 8);
              }

              else
              {
                v10 = 0;
              }

              result = mlir::sortTopologically(v10, 0, v8);
            }
          }

          v5 = (v5 + 1);
          v6 += 24;
        }

        while (v6 != v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::Region::viewGraph(mlir::Region *this, llvm::formatv_object_base **a2)
{
  v47[6] = *MEMORY[0x277D85DE8];
  v32 = 0;
  llvm::Twine::str(a2, __p);
  v36 = 260;
  v35[0] = __p;
  llvm::createGraphFilename(v35, &v32, v30);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = llvm::raw_fd_ostream::raw_fd_ostream(__p, v32, 1, 0, 0);
  if (v32 != -1)
  {
    LOBYTE(v45) = 1;
    v37 = 1;
    if (!v38 || ((*(*v38 + 48))(v38, &v45), LOBYTE(v45) = 0, v39 = 0, !v40))
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v40 + 48))(v40, &v45);
    if (v42)
    {
      if (v43 > 4 * v42 && v43 >= 0x41)
      {
        llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::shrink_and_clear(&v41);
        goto LABEL_33;
      }

      if (v43)
      {
        v11 = v41;
        for (i = 40 * v43; i; i -= 40)
        {
          if (*v11 != -8192)
          {
            if (*v11 == -4096)
            {
              goto LABEL_27;
            }

            if (*(v11 + 39) < 0)
            {
              operator delete(*(v11 + 16));
            }
          }

          *v11 = -4096;
LABEL_27:
          v11 += 40;
        }
      }

      v42 = 0;
    }

LABEL_33:
    v45 = v47;
    v46 = 0x600000000;
    v34.__r_.__value_.__r.__words[0] = v35;
    v34.__r_.__value_.__l.__size_ = &v45;
    v13 = *(this + 1);
    if (v13 != this)
    {
      do
      {
        v14 = (v13 - 8);
        if (!v13)
        {
          v14 = 0;
        }

        v15 = v14[5];
        v16 = v14 + 4;
        if (v15 != v14 + 4)
        {
          do
          {
            v17 = v15[1];
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v15);
            v15 = v17;
          }

          while (v17 != v16);
        }

        v13 = *(v13 + 1);
      }

      while (v13 != this);
      v19 = v45;
      if (v46)
      {
        v20 = 0;
        v21 = 8 * v46;
        do
        {
          LODWORD(v4) = v46;
          std::to_string(&v34, v20 / v4);
          v22 = std::string::append(&v34, " 1.0 1.0");
          v23 = v22->__r_.__value_.__r.__words[0];
          v44[0] = v22->__r_.__value_.__l.__size_;
          *(v44 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
          v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v33 = *(v19[v20] + 6);
          v25 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](&v41, &v33);
          v26 = v25;
          if (*(v25 + 31) < 0)
          {
            operator delete(*(v25 + 8));
          }

          v27 = v44[0];
          *(v26 + 8) = v23;
          *(v26 + 16) = v27;
          *(v26 + 23) = *(v44 + 7);
          *(v26 + 31) = v24;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          ++v20;
          v21 -= 8;
        }

        while (v21);
        v19 = v45;
      }

      if (v19 != v47)
      {
        free(v19);
      }
    }

    v45 = v35;
    v46 = this;
  }

  v5 = llvm::errs(v3);
  v6 = v5[4];
  if ((v5[3] - v6) > 0x13)
  {
    *(v6 + 16) = 656434540;
    *v6 = *"error opening file '";
    v5[4] += 20;
  }

  else
  {
    v5 = llvm::raw_ostream::write(v5, "error opening file '", 0x14uLL);
  }

  if ((v31 & 0x80u) == 0)
  {
    v7 = v30;
  }

  else
  {
    v7 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v8 = v31;
  }

  else
  {
    v8 = v30[1];
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = v9[4];
  if (v9[3] - v10 > 0xDuLL)
  {
    qmemcpy(v10, "' for writing\n", 14);
    v9[4] += 14;
    llvm::raw_fd_ostream::~raw_fd_ostream(__p);
    if ((v31 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, "' for writing\n", 0xEuLL);
    llvm::raw_fd_ostream::~raw_fd_ostream(__p);
    if ((v31 & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v30[0]);
}

void mlir::Region::viewGraph(mlir::Region *this)
{
  v1 = "region";
  v2 = 259;
  mlir::Region::viewGraph(this, &v1);
}

_anonymous_namespace_::PrintOpPass *anonymous namespace::PrintOpPass::PrintOpPass(_anonymous_namespace_::PrintOpPass *this, llvm::raw_ostream *a2)
{
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 120) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  *(this + 29) = this + 248;
  *(this + 30) = 0x400000000;
  *(this + 37) = 0x1000000000;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  *this = &unk_28685E0D0;
  *&v7 = "Limit attribute/type length to number of chars";
  *(&v7 + 1) = 46;
  v5 = 20;
  v6 = &v5;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(this + 344, this + 152, "max-label-len", 13, &v7, &v6);
  *(this + 43) = &unk_28685B820;
  *(this + 67) = &unk_28685B8A0;
  *&v7 = "Print attributes of operations";
  *(&v7 + 1) = 30;
  LOBYTE(v5) = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 552, this + 152, "print-attrs", 11, &v7, &v6);
  *(this + 69) = &unk_28685B320;
  *(this + 93) = &unk_28685B3A0;
  *&v7 = "Print control flow edges";
  *(&v7 + 1) = 24;
  LOBYTE(v5) = 0;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 760, this + 152, "print-control-flow-edges", 24, &v7, &v6);
  *(this + 95) = &unk_28685B320;
  *(this + 119) = &unk_28685B3A0;
  *&v7 = "Print data flow edges";
  *(&v7 + 1) = 21;
  LOBYTE(v5) = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 968, this + 152, "print-data-flow-edges", 21, &v7, &v6);
  *(this + 121) = &unk_28685B320;
  *(this + 145) = &unk_28685B3A0;
  *&v7 = "Print result types of operations";
  *(&v7 + 1) = 32;
  LOBYTE(v5) = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 1176, this + 152, "print-result-types", 18, &v7, &v6);
  *(this + 147) = &unk_28685B320;
  *(this + 171) = &unk_28685B3A0;
  *this = &unk_28685E030;
  *(this + 348) = 0;
  *(this + 1424) = 0;
  *(this + 357) = 1;
  *(this + 175) = 0;
  *(this + 88) = 0u;
  *(this + 173) = &unk_28685E140;
  *(this + 179) = 0;
  *(this + 90) = 0u;
  *(this + 1456) = 1;
  *(this + 183) = a2;
  llvm::raw_ostream::SetBufferAndMode(this + 1384, 0, 0, 0);
  *(this + 392) = 0;
  *(this + 97) = 0u;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 1500) = 0u;
  *(this + 190) = 0;
  *(this + 1528) = 0u;
  *(this + 386) = 0;
  return this;
}

void anonymous namespace::PrintOpPass::~PrintOpPass(_anonymous_namespace_::PrintOpPass *this)
{
  *this = &unk_28685E030;
  v2 = *(this + 392);
  v3 = *(this + 194);
  if (v2)
  {
    v4 = 40 * v2;
    while (1)
    {
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(v3 + 39) < 0)
      {
        operator delete(*(v3 + 16));
      }

      v3 += 40;
      v4 -= 40;
      if (!v4)
      {
        llvm::deallocate_buffer(*(this + 194), (40 * *(this + 392)));
      }
    }
  }

  llvm::deallocate_buffer(*(this + 194), 0);
}

{
}

const void **anonymous namespace::PrintOpPass::runOnOperation(_anonymous_namespace_::PrintOpPass *this)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v3 = (this + 1552);
  if (*(this + 195))
  {
    v4 = *(this + 392);
    if (v4 > 4 * *(this + 390) && v4 >= 0x41)
    {
      llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::shrink_and_clear(this + 1552);
      goto LABEL_14;
    }

    if (v4)
    {
      v5 = *v3;
      for (i = 40 * v4; i; i -= 40)
      {
        if (*v5 != -8192)
        {
          if (*v5 == -4096)
          {
            goto LABEL_8;
          }

          if (*(v5 + 39) < 0)
          {
            operator delete(*(v5 + 16));
          }
        }

        *v5 = -4096;
LABEL_8:
        v5 += 40;
      }
    }

    *(this + 195) = 0;
  }

LABEL_14:
  v21 = v23;
  v22 = 0x600000000;
  v19.__r_.__value_.__r.__words[0] = this;
  v19.__r_.__value_.__l.__size_ = &v21;
  v8 = v21;
  if (v22)
  {
    v9 = 0;
    v10 = 8 * v22;
    do
    {
      LODWORD(v7) = v22;
      std::to_string(&v19, v9 / v7);
      v11 = std::string::append(&v19, " 1.0 1.0");
      v12 = v11->__r_.__value_.__r.__words[0];
      v20[0] = v11->__r_.__value_.__l.__size_;
      *(v20 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v18 = *(v8[v9] + 48);
      v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](v3, &v18);
      v15 = v14;
      if (*(v14 + 31) < 0)
      {
        operator delete(*(v14 + 8));
      }

      v16 = v20[0];
      *(v15 + 8) = v12;
      *(v15 + 16) = v16;
      *(v15 + 23) = *(v20 + 7);
      *(v15 + 31) = v13;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
    v8 = v21;
  }

  if (v8 != v23)
  {
    free(v8);
  }

  v21 = this;
  return mlir::detail::PreservedAnalyses::preserveAll(this + 7);
}

void mlir::raw_indented_ostream::~raw_indented_ostream(mlir::raw_indented_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

void *mlir::raw_indented_ostream::write_impl(void *this, char *__s, size_t __n)
{
  v15 = this;
  if (__n)
  {
    v3 = __n;
    v5 = this;
    while (1)
    {
      this = memchr(__s, 10, v3);
      if (!this)
      {
        break;
      }

      v6 = this - __s;
      if (this - __s == -1)
      {
        break;
      }

      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = this - __s;
      }

      if (v3 >= v6 + 1)
      {
        v8 = v6 + 1;
      }

      else
      {
        v8 = v3;
      }

      v11 = __s;
      v12 = v7;
      v13 = &__s[v8];
      v14 = v3 - v8;
      first_not_of = llvm::StringRef::find_first_not_of(&v11, " \t\n\v\f\r", 6, 0);
      if (v12 > first_not_of || v5[8])
      {
        mlir::raw_indented_ostream::write_impl(char const*,unsigned long)::{lambda(llvm::StringRef)#1}::operator()(&v15, v11, v12);
      }

      this = v5[10];
      v10 = this[4];
      if (v10 < this[3])
      {
        this[4] = v10 + 1;
        *v10 = 10;
        *(v5 + 72) = 1;
        __s = v13;
        v3 = v14;
        if (!v14)
        {
          return this;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(this, 10);
        *(v5 + 72) = 1;
        __s = v13;
        v3 = v14;
        if (!v14)
        {
          return this;
        }
      }
    }

    if (v3 > *(v5 + 13))
    {
      this = mlir::raw_indented_ostream::write_impl(char const*,unsigned long)::{lambda(llvm::StringRef)#1}::operator()(&v15, __s, v3);
      *(v5 + 72) = 0;
    }
  }

  return this;
}

void *mlir::raw_indented_ostream::write_impl(char const*,unsigned long)::{lambda(llvm::StringRef)#1}::operator()(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 72);
  result = *(*a1 + 80);
  if (v6 == 1)
  {
    result = llvm::raw_ostream::indent(result, *(v5 + 48));
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    v10 = result[4];
    if (v9 <= result[3] - v10)
    {
      if (v9)
      {
        v17 = result;
        v18 = *(v5 + 64);
        memcpy(result[4], v8, v9);
        result = v17;
        v10 = (v17[4] + v18);
        v17[4] = v10;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(result, v8, v9);
      v10 = result[4];
    }

    v11 = *(v5 + 52);
    if (a3 >= v11)
    {
      v12 = *(v5 + 52);
    }

    else
    {
      v12 = a3;
    }

    v13 = a3 - v12;
    if (a3 - v12 > result[3] - v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *(v5 + 52);
    if (a3 >= v11)
    {
      v12 = *(v5 + 52);
    }

    else
    {
      v12 = a3;
    }

    v13 = a3 - v12;
    v10 = result[4];
    if (a3 - v12 > result[3] - v10)
    {
LABEL_17:

      return llvm::raw_ostream::write(result, (a2 + v12), v13);
    }
  }

  if (a3 > v11)
  {
    v14 = (a2 + v12);
    v15 = result;
    v16 = v13;
    result = memcpy(v10, v14, v13);
    v15[4] += v16;
  }

  return result;
}

void *anonymous namespace::PrintOpPass::emitGraph(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = *(a1 + 1416);
  if ((*(a1 + 1408) - v6) > 0xB)
  {
    *(v6 + 8) = 175841351;
    *v6 = *"digraph G {\n";
    *(a1 + 1416) += 12;
  }

  else
  {
    llvm::raw_ostream::write((a1 + 1384), "digraph G {\n", 0xCuLL);
  }

  *(a1 + 1432) += 2;
  v16[0] = "compound";
  v16[2] = " = ";
  v17 = 771;
  v18[0] = v16;
  v18[2] = "true";
  v19 = 770;
  llvm::Twine::str(v18, __p);
  if ((v15 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = llvm::raw_ostream::write((a1 + 1384), v7, v8);
  v10 = v9[4];
  if (v9[3] - v10 > 1uLL)
  {
    *v10 = 2619;
    v9[4] += 2;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, ";\n", 2uLL);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(__p[0]);
LABEL_15:
  result = a2(a3);
  v12 = *(a1 + 1432);
  if (v12 <= 2)
  {
    v12 = 2;
  }

  *(a1 + 1432) = v12 - 2;
  v13 = *(a1 + 1416);
  if (*(a1 + 1408) - v13 <= 1uLL)
  {
    return llvm::raw_ostream::write((a1 + 1384), "}\n", 2uLL);
  }

  *v13 = 2685;
  *(a1 + 1416) += 2;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 40 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
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
      v5 = *a1 + 40 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v14, v13, &v15);
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
  *(v5 + 8) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  return v5 + 8;
}

void llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 5 * v2;
  if (v2)
  {
    v5 = *a1;
    v6 = 40 * v2;
    do
    {
      if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(v5 + 39) < 0)
      {
        operator delete(*(v5 + 2));
      }

      v5 = (v5 + 40);
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1 << (33 - __clz(v3 - 1));
  if (v7 <= 64)
  {
    v7 = 64;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v4));
  }

  *(a1 + 8) = 0;
  if (v8)
  {
    v9 = *a1;
    v10 = 40 * v8 - 40;
    if (v10 < 0x28)
    {
      v11 = *a1;
LABEL_20:
      v15 = (v9 + 40 * v8);
      do
      {
        *v11 = -4096;
        v11 = (v11 + 40);
      }

      while (v11 != v15);
      return;
    }

    v12 = v10 / 0x28 + 1;
    v11 = (v9 + 40 * (v12 & 0xFFFFFFFFFFFFFFELL));
    v13 = *a1;
    v14 = v12 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v13 = -4096;
      *(v13 + 5) = -4096;
      v13 = (v13 + 80);
      v14 -= 2;
    }

    while (v14);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

_DWORD *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<void anonymous namespace::PrintOpPass::initColorMapping<mlir::Operation>(mlir::Operation &)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v8 = *(a2 + 48);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](v4 + 1552, &v8);
  if (*result)
  {
    ++*result;
  }

  else
  {
    v6 = a1[1];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v6 + 8 * v7) = a2;
    ++*(v6 + 8);
    ++*result;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 40 * v6);
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
        v7 = (v4 + 40 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = -4096;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[5 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[5] = -4096;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
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
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = *a1 + 40 * v16;
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
            v17 = *a1 + 40 * (v23 & v15);
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
        *(v17 + 8) = *(v4 + 2);
        v19 = *(v4 + 1);
        *(v17 + 32) = v4[4];
        *(v17 + 16) = v19;
        v4[3] = 0;
        v4[4] = 0;
        v4[2] = 0;
        ++*(a1 + 8);
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::runOnOperation(void)::{lambda(void)#1}>(_anonymous_namespace_::PrintOpPass **a1)
{
  v3 = *a1;
  if (*(v3 + 1096) == 1)
  {
    v4 = *(v3 + 190);
    for (i = *(v3 + 191); v4 != i; v4 += 48)
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v4 + 8);
      v10 = *(v4 + 16);
      if (*(v4 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
      }

      else
      {
        __p = *(v4 + 24);
      }

      v1 = v1 & 0xFFFFFFFF00000000 | v8;
      v2 = v2 & 0xFFFFFFFF00000000 | v10;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v11 = *(v3 + 184);
  v12 = *(v3 + 185);
  if (v11 != v12)
  {
    do
    {
      while (1)
      {
        v13 = *(v11 + 23);
        v14 = v13 >= 0 ? v11 : *v11;
        v15 = v13 >= 0 ? *(v11 + 23) : *(v11 + 8);
        v16 = llvm::raw_ostream::write(v3 + 173, v14, v15);
        v17 = v16[4];
        if (v16[3] - v17 <= 1uLL)
        {
          break;
        }

        *v17 = 2619;
        v16[4] += 2;
        v11 += 24;
        if (v11 == v12)
        {
          goto LABEL_21;
        }
      }

      llvm::raw_ostream::write(v16, ";\n", 2uLL);
      v11 += 24;
    }

    while (v11 != v12);
LABEL_21:
    v12 = *(v3 + 185);
    v11 = *(v3 + 184);
  }

  while (v12 != v11)
  {
    v18 = *(v12 - 1);
    v12 -= 3;
    if (v18 < 0)
    {
      operator delete(*v12);
    }
  }

  *(v3 + 185) = v11;
}

uint64_t anonymous namespace::PrintOpPass::processOperation(_anonymous_namespace_::PrintOpPass *this, mlir::Operation *a2)
{
  v2 = a2;
  v56 = *MEMORY[0x277D85DE8];
  v47[0] = a2;
  memset(&v47[1], 0, 12);
  if ((*(a2 + 11) & 0x7FFFFF) == 0)
  {
    v46[0] = a2;
    *&v55 = v46;
    *(&v55 + 1) = this;
    v42[1] = 0;
    v43 = 0;
    v42[0] = 0;
    LODWORD(v49.__r_.__value_.__r.__words[1]) = 0;
    v52 = 0;
    v53 = 1;
    v50 = 0;
    v51 = 0;
    v49.__r_.__value_.__r.__words[2] = 0;
    v49.__r_.__value_.__r.__words[0] = &unk_2868A3EF8;
    v54 = v42;
    llvm::raw_ostream::SetBufferAndMode(&v49, 0, 0, 0);
    llvm::raw_ostream::~raw_ostream(&v49);
    v49.__r_.__value_.__r.__words[0] = *(v2 + 6);
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](this + 1552, &v49);
    v10 = *(v7 + 8);
    v8 = v7 + 8;
    v9 = v10;
    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    v47[1] = result;
    LODWORD(v47[2]) = v14;
    if (SHIBYTE(v43) < 0)
    {
      v40 = result;
      operator delete(v42[0]);
      result = v40;
      if (*(this + 1096) != 1)
      {
        goto LABEL_38;
      }
    }

    else if (*(this + 1096) != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  v46[0] = v47;
  v46[1] = this;
  *&v55 = &v48;
  *(&v55 + 1) = this;
  __p[1] = 0;
  v45 = 0;
  __p[0] = 0;
  LODWORD(v49.__r_.__value_.__r.__words[1]) = 0;
  v52 = 0;
  v53 = 1;
  v50 = 0;
  v51 = 0;
  v49.__r_.__value_.__r.__words[2] = 0;
  v48 = a2;
  v49.__r_.__value_.__r.__words[0] = &unk_2868A3EF8;
  v54 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v49, 0, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v49);
  v47[1] = result;
  LODWORD(v47[2]) = v5;
  if (SHIBYTE(v45) < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    result = v6;
  }

  v2 = v47[0];
  if (*(this + 1096) == 1)
  {
LABEL_14:
    if ((*(v2 + 46) & 0x80) == 0)
    {
      goto LABEL_38;
    }

    v15 = *(v2 + 17);
    if (!v15)
    {
      goto LABEL_38;
    }

    v41 = result;
    v16 = 0;
    v17 = 24;
    while (1)
    {
      v18 = *(*(v47[0] + 72) + v17);
      if (v15 == 1)
      {
        v19 = 0;
        *(&v49.__r_.__value_.__s + 23) = 0;
        v49.__r_.__value_.__s.__data_[0] = 0;
      }

      else
      {
        std::to_string(&v49, v16);
        v19 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      *&v55 = v49.__r_.__value_.__l.__size_;
      v20 = v49.__r_.__value_.__r.__words[0];
      *(&v55 + 7) = *(&v49.__r_.__value_.__r.__words[1] + 7);
      memset(&v49, 0, sizeof(v49));
      v21 = *(this + 191);
      v22 = *(this + 192);
      if (v21 >= v22)
      {
        break;
      }

      v23 = v47[1];
      *v21 = v18;
      *(v21 + 8) = v23;
      *(v21 + 16) = v47[2];
      v24 = v55;
      *(v21 + 24) = v20;
      *(v21 + 32) = v24;
      *(v21 + 39) = *(&v55 + 7);
      *(v21 + 47) = v19;
      *(this + 191) = v21 + 48;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_36;
      }

LABEL_17:
      ++v16;
      v17 += 32;
      if (v15 == v16)
      {
        v2 = v47[0];
        result = v41;
        goto LABEL_38;
      }
    }

    v25 = *(this + 190);
    v26 = v21 - v25;
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v25) >> 4);
    v28 = v27 + 1;
    if (v27 + 1 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 4);
    if (2 * v29 > v28)
    {
      v28 = 2 * v29;
    }

    if (v29 >= 0x2AAAAAAAAAAAAAALL)
    {
      v30 = 0x555555555555555;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      if (v30 <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v31 = 48 * v27;
    v32 = v47[1];
    *v31 = v18;
    *(v31 + 8) = v32;
    *(v31 + 16) = v47[2];
    v33 = v55;
    *(v31 + 24) = v20;
    *(v31 + 32) = v33;
    *(v31 + 39) = *(&v55 + 7);
    *(v31 + 47) = v19;
    v34 = 48 * v27 + 48;
    v35 = (48 * v27 - v26);
    memcpy(v35, v25, v26);
    *(this + 190) = v35;
    *(this + 191) = v34;
    *(this + 192) = 0;
    if (v25)
    {
      operator delete(v25);
    }

    *(this + 191) = v34;
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    operator delete(v49.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_38:
  v36 = *(v2 + 9);
  if (v36)
  {
    v37 = v2 - 16;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      v49.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, i);
      *v39 = v47[1];
      *(v39 + 8) = v47[2];
    }

    return v47[1];
  }

  return result;
}

uint64_t anonymous namespace::PrintOpPass::emitClusterStmt(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1544) + 1;
  *(a1 + 1544) = v8;
  v9 = (a1 + 1384);
  v10 = *(a1 + 1416);
  if ((*(a1 + 1408) - v10) > 0x10)
  {
    *(v10 + 16) = 95;
    *v10 = *"subgraph cluster_";
    *(a1 + 1416) += 17;
    v12 = llvm::raw_ostream::operator<<((a1 + 1384), v8);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = llvm::raw_ostream::write((a1 + 1384), "subgraph cluster_", 0x11uLL);
    v12 = llvm::raw_ostream::operator<<(v11, v8);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 2)
    {
LABEL_3:
      *(v13 + 2) = 10;
      *v13 = 31520;
      *(v12 + 4) += 3;
      goto LABEL_6;
    }
  }

  llvm::raw_ostream::write(v12, " {\n", 3uLL);
LABEL_6:
  *(a1 + 1432) += 2;
  v35 = 1;
  LOWORD(__p) = 32;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  *v26 = *a4;
  v27 = *(a4 + 16);
  v28[0] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v28[1] = 0;
  v29 = 0;
  LODWORD(v37.__r_.__value_.__r.__words[1]) = 0;
  v40 = 0;
  v41 = 1;
  v38 = 0;
  v39 = 0;
  v37.__r_.__value_.__r.__words[2] = 0;
  v37.__r_.__value_.__r.__words[0] = &unk_2868A3EF8;
  v42 = v28;
  llvm::raw_ostream::SetBufferAndMode(&v37, 0, 0, 0);
  if (v27 >= 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v26[0];
  }

  if (v27 >= 0)
  {
    v16 = SHIBYTE(v27);
  }

  else
  {
    v16 = v26[1];
  }

  llvm::raw_ostream::write_escaped(&v37, v15, v16, 0);
  llvm::raw_ostream::~raw_ostream(&v37);
  std::operator+<char>();
  v17 = std::string::append(&v37, "");
  v18 = v17->__r_.__value_.__r.__words[2];
  *v30 = *&v17->__r_.__value_.__l.__data_;
  v31 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v43[0] = "label";
  v43[2] = " = ";
  v44 = 771;
  v37.__r_.__value_.__r.__words[0] = v43;
  v37.__r_.__value_.__r.__words[2] = v30;
  LOWORD(v39) = 1026;
  llvm::Twine::str(&v37, v32);
  if ((v33 & 0x80u) == 0)
  {
    v19 = v32;
  }

  else
  {
    v19 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v20 = v33;
  }

  else
  {
    v20 = v32[1];
  }

  v21 = llvm::raw_ostream::write(v9, v19, v20);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 2619;
    v21[4] += 2;
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    llvm::raw_ostream::write(v21, ";\n", 2uLL);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  operator delete(v32[0]);
LABEL_27:
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    operator delete(v28[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_38:
  operator delete(v26[0]);
LABEL_30:
  a2(a3);
  v23 = *(a1 + 1432);
  if (v23 <= 2)
  {
    v23 = 2;
  }

  *(a1 + 1432) = v23 - 2;
  v24 = *(a1 + 1416);
  if (*(a1 + 1408) - v24 > 1uLL)
  {
    *v24 = 2685;
    *(a1 + 1416) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v9, "}\n", 2uLL);
  }

  LODWORD(v36[0]) = v14;
  *(v36 + 4) = v8 | 0x100000000;
  return v36[0];
}

uint64_t anonymous namespace::PrintOpPass::emitNodeStmt(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1544) + 1;
  *(a1 + 1544) = v10;
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  *v33 = *a2;
  v34 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  __p[1] = 0;
  v30 = 0;
  __p[0] = 0;
  LODWORD(__dst.__r_.__value_.__r.__words[1]) = 0;
  v41 = 0;
  v42 = 1;
  v39 = 0;
  v40 = 0;
  __dst.__r_.__value_.__r.__words[2] = 0;
  __dst.__r_.__value_.__r.__words[0] = &unk_2868A3EF8;
  v43 = __p;
  llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
  if (v34 >= 0)
  {
    v11 = v33;
  }

  else
  {
    v11 = v33[0];
  }

  if (v34 >= 0)
  {
    v12 = SHIBYTE(v34);
  }

  else
  {
    v12 = v33[1];
  }

  llvm::raw_ostream::write_escaped(&__dst, v11, v12, 0);
  llvm::raw_ostream::~raw_ostream(&__dst);
  std::operator+<char>();
  v13 = std::string::append(&__dst, "");
  v14 = v13->__r_.__value_.__r.__words[0];
  *&v45 = v13->__r_.__value_.__l.__size_;
  *(&v45 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *(&__dst.__r_.__value_.__s + 23) = 5;
  strcpy(&__dst, "label");
  v27[0] = &__dst;
  v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, &__dst.__r_.__value_.__l.__data_);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  v18 = v45;
  v17[7] = v14;
  v17[8] = v18;
  *(v17 + 71) = *(&v45 + 7);
  *(v17 + 79) = v15;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_21:
      operator delete(v33[0]);
      if (a3)
      {
        goto LABEL_15;
      }

LABEL_22:
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  __dst.__r_.__value_.__s.__data_[a4] = 0;
LABEL_26:
  HIBYTE(v30) = 5;
  strcpy(__p, "shape");
  *&v45 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, __p);
  v20 = v19;
  if (*(v19 + 79) < 0)
  {
    operator delete(v19[7]);
    *(v20 + 7) = __dst;
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_28:
      if (!a6)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(v19 + 7) = __dst;
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  operator delete(__p[0]);
  if (!a6)
  {
    goto LABEL_39;
  }

LABEL_32:
  *(&__dst.__r_.__value_.__s + 23) = 5;
  strcpy(&__dst, "style");
  __p[0] = &__dst;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, &__dst.__r_.__value_.__l.__data_);
  MEMORY[0x259C62C80](v21 + 7, "filled");
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v32 = 1283;
  __p[0] = "";
  v30 = a5;
  v31 = a6;
  __dst.__r_.__value_.__r.__words[0] = __p;
  __dst.__r_.__value_.__r.__words[2] = "";
  LOWORD(v40) = 770;
  llvm::Twine::str(&__dst, &v45);
  v28 = 9;
  strcpy(v27, "fillcolor");
  v44 = v27;
  v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, v27);
  v23 = v22;
  if (*(v22 + 79) < 0)
  {
    operator delete(v22[7]);
  }

  *(v23 + 7) = v45;
  v23[9] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }
  }

LABEL_39:
  __dst.__r_.__value_.__r.__words[0] = &unk_28685E208;
  __dst.__r_.__value_.__l.__size_ = "v%i ";
  LODWORD(__dst.__r_.__value_.__r.__words[2]) = v10;
  llvm::raw_ostream::operator<<((a1 + 1384), &__dst);
  v24 = *(a1 + 1416);
  if (*(a1 + 1408) - v24 > 1uLL)
  {
    *v24 = 2619;
    *(a1 + 1416) += 2;
  }

  else
  {
    llvm::raw_ostream::write((a1 + 1384), ";\n", 2uLL);
  }

  LODWORD(v37[0]) = v10;
  *(v37 + 4) = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v35, v36[0]);
  return v37[0];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>,mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 24 * v6;
    v8 = *v7;
    if (*v7 == *a2)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 24 * (v14 & v5);
      v8 = *v7;
      if (*v7 == *a2)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 12) = 0;
  return v7 + 8;
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::processOperation(mlir::Operation *)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v3 = a1[1];
    v4 = ((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v5 = v4 + 24 * (v2 & 0x7FFFFF);
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v7 = i - 8;
        if (!i)
        {
          v7 = 0;
        }

        v10[0] = v7;
        v10[1] = v3;
        v9 = 0;
        LOBYTE(__p) = 0;
        if (v9 < 0)
        {
          operator delete(__p);
        }
      }

      v4 += 24;
    }

    while (v4 != v5);
  }
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::processBlock(mlir::Block &)::{lambda(void)#1}>(void *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (v5 != v6)
  {
    v1 = "ellipse";
    v2 = "";
    do
    {
      std::to_string(&v26, *(*v5 + 24));
      v8 = std::string::insert(&v26, 0, "arg");
      __p = *v8;
      v8->__r_.__value_.__r.__words[0] = 0;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v11 = v10;
      *v12 = v9;
      *(v12 + 8) = v11;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v5;
    }

    while (v5 != v6);
    v3 = *a1;
  }

  v13 = v3 + 32;
  v14 = *(v3 + 40);
  if (v14 != v3 + 32)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v3 + 40));
    v18 = *(v14 + 8);
    if (v18 != v13)
    {
      v19 = v16;
      v20 = v17;
      do
      {
        v21 = v19;
        v22 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
        v24 = v23;
        if (*(v4 + 888) == 1)
        {
          *(&v26.__r_.__value_.__s + 23) = 0;
          v26.__r_.__value_.__s.__data_[0] = 0;
          v2 = v2 & 0xFFFFFFFF00000000 | v20;
          v1 = v1 & 0xFFFFFFFF00000000 | v23;
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }
        }

        v18 = *(v18 + 8);
        v20 = v24;
      }

      while (v18 != v13);
    }
  }
}

void anonymous namespace::PrintOpPass::emitEdgeStmt(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *__src, size_t __len)
{
  v54 = *MEMORY[0x277D85DE8];
  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
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
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  HIBYTE(v51) = 5;
  strcpy(&__p, "style");
  *&v52 = &__p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v40, &__p);
  v16 = v15;
  if (*(v15 + 79) < 0)
  {
    operator delete(v15[7]);
    *(v16 + 7) = __dst;
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
LABEL_12:
      if (a3)
      {
        goto LABEL_13;
      }

LABEL_21:
      if (a5)
      {
        goto LABEL_38;
      }

      *v38 = *a6;
      v39 = *(a6 + 16);
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *a6 = 0;
      v50 = 0;
      v51 = 0;
      LODWORD(__dst.__r_.__value_.__r.__words[1]) = 0;
      v46 = 0;
      v47 = 1;
      v44 = 0;
      v45 = 0;
      __dst.__r_.__value_.__r.__words[2] = 0;
      __dst.__r_.__value_.__r.__words[0] = &unk_2868A3EF8;
      p_p = &__p;
      __p = 0;
      llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
      if (v39 >= 0)
      {
        v23 = v38;
      }

      else
      {
        v23 = v38[0];
      }

      if (v39 >= 0)
      {
        v24 = SHIBYTE(v39);
      }

      else
      {
        v24 = v38[1];
      }

      llvm::raw_ostream::write_escaped(&__dst, v23, v24, 0);
      llvm::raw_ostream::~raw_ostream(&__dst);
      std::operator+<char>();
      v25 = std::string::append(&__dst, "");
      v26 = v25->__r_.__value_.__r.__words[0];
      *&v52 = v25->__r_.__value_.__l.__size_;
      *(&v52 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
      v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      *(&__dst.__r_.__value_.__s + 23) = 5;
      strcpy(&__dst, "label");
      p_dst = &__dst;
      v28 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v40, &__dst.__r_.__value_.__l.__data_);
      v29 = v28;
      if (*(v28 + 79) < 0)
      {
        operator delete(v28[7]);
      }

      v30 = v52;
      v29[7] = v26;
      v29[8] = v30;
      *(v29 + 71) = *(&v52 + 7);
      *(v29 + 79) = v27;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v51) & 0x80000000) == 0)
        {
LABEL_34:
          if ((SHIBYTE(v39) & 0x80000000) == 0)
          {
            goto LABEL_49;
          }

LABEL_47:
          v37 = v38[0];
LABEL_48:
          operator delete(v37);
          goto LABEL_49;
        }
      }

      else if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(__p);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }
  }

  else
  {
    *(v15 + 7) = __dst;
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  operator delete(__p);
  if ((a3 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  std::to_string(&__dst, SHIDWORD(a2));
  v17 = std::string::insert(&__dst, 0, "cluster_");
  v18 = v17->__r_.__value_.__r.__words[0];
  *&v52 = v17->__r_.__value_.__l.__size_;
  *(&v52 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  HIBYTE(v51) = 5;
  strcpy(&__p, "ltail");
  p_dst = &__p;
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v40, &__p);
  v21 = v20;
  if (*(v20 + 79) < 0)
  {
    operator delete(v20[7]);
  }

  v22 = v52;
  v21[7] = v18;
  v21[8] = v22;
  *(v21 + 71) = *(&v52 + 7);
  *(v21 + 79) = v19;
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((a5 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_38;
  }

  operator delete(__p);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  if (a5)
  {
LABEL_38:
    std::to_string(&__dst, SHIDWORD(a4));
    v31 = std::string::insert(&__dst, 0, "cluster_");
    v32 = v31->__r_.__value_.__r.__words[0];
    *&v52 = v31->__r_.__value_.__l.__size_;
    *(&v52 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
    v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    HIBYTE(v51) = 5;
    strcpy(&__p, "lhead");
    p_dst = &__p;
    v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v40, &__p);
    v35 = v34;
    if (*(v34 + 79) < 0)
    {
      operator delete(v34[7]);
    }

    v36 = v52;
    v35[7] = v32;
    v35[8] = v36;
    *(v35 + 71) = *(&v52 + 7);
    *(v35 + 79) = v33;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    v37 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_48;
  }

LABEL_49:
  v52 = 0uLL;
  v53 = 0;
  LODWORD(__dst.__r_.__value_.__r.__words[1]) = 0;
  v46 = 0;
  v47 = 1;
  v44 = 0;
  v45 = 0;
  __dst.__r_.__value_.__r.__words[2] = 0;
  __dst.__r_.__value_.__r.__words[0] = &unk_2868A3EF8;
  p_p = &v52;
  llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
  __p = &unk_28685E1D0;
  v50 = "v%i -> v%i ";
  v51 = __PAIR64__(a4, a2);
  llvm::raw_ostream::operator<<(&__dst, &__p);
  llvm::raw_ostream::~raw_ostream(&__dst);
  std::vector<std::string>::push_back[abi:nn200100](a1 + 1472, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v40, v41[0]);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
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

void anonymous namespace::PrintOpPass::emitAttrList(llvm::raw_ostream *this, void *a2)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "[", 1uLL);
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    if (v7 == v5)
    {
      goto LABEL_40;
    }

LABEL_5:
    v22[0] = v6 + 4;
    v23 = " = ";
    v24 = 772;
    v25[0] = v22;
    v26 = v6 + 7;
    v27 = 1026;
    llvm::Twine::str(v25, &__p);
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v9 = v21;
    }

    else
    {
      v9 = v20;
    }

    llvm::raw_ostream::write(this, p_p, v9);
    if (v21 < 0)
    {
      operator delete(__p);
      v10 = v6[1];
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = v6[1];
      if (!v10)
      {
        do
        {
LABEL_17:
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
        goto LABEL_19;
      }
    }

    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10);
LABEL_19:
    if (v11 == v5)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v13 = *(this + 4);
      if (*(this + 3) - v13 > 1uLL)
      {
        *v13 = 8236;
        *(this + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(this, ", ", 2uLL);
      }

      v22[0] = v11 + 4;
      v23 = " = ";
      v24 = 772;
      v25[0] = v22;
      v26 = v11 + 7;
      v27 = 1026;
      llvm::Twine::str(v25, &__p);
      if ((v21 & 0x80u) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if ((v21 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v20;
      }

      llvm::raw_ostream::write(this, v14, v15);
      if (v21 < 0)
      {
        operator delete(__p);
        v16 = v11[1];
        if (v16)
        {
          do
          {
LABEL_35:
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
          goto LABEL_21;
        }
      }

      else
      {
        v16 = v11[1];
        if (v16)
        {
          goto LABEL_35;
        }
      }

      do
      {
        v17 = v11[2];
        v12 = *v17 == v11;
        v11 = v17;
      }

      while (!v12);
LABEL_21:
      v11 = v17;
      if (v17 == v5)
      {
        goto LABEL_40;
      }
    }
  }

  *v4 = 91;
  ++*(this + 4);
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    goto LABEL_5;
  }

LABEL_40:
  v18 = *(this + 4);
  if (*(this + 3) == v18)
  {
    llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v18 = 93;
    ++*(this + 4);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::PrintOpPass::getLabel(mlir::Operation *)::{lambda(llvm::raw_ostream &)#1}>(mlir::Operation ***a1, llvm::raw_ostream *a2)
{
  v4 = a1[1];
  __b = *(**a1 + 6);
  mlir::OperationName::print(&__b, a2);
  if (*(v4 + 1304) != 1)
  {
    goto LABEL_40;
  }

  v5 = *(a2 + 4);
  if (*(a2 + 3) - v5 > 3uLL)
  {
    *v5 = 673200672;
    *(a2 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(a2, " : (", 4uLL);
  }

  memset(&v85, 0, sizeof(v85));
  LODWORD(v78) = 0;
  v82 = 0;
  v83 = 1;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  __b = &unk_2868A3EF8;
  v84 = &v85;
  llvm::raw_ostream::SetBufferAndMode(&__b, 0, 0, 0);
  v6 = **a1;
  v7 = *(v6 + 9);
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = 0;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  __p.__r_.__value_.__l.__size_ = v7;
  mlir::ResultRange::getTypes(&__p, &__dst);
  size = __dst.__r_.__value_.__l.__size_;
  v10 = v74;
  if (__dst.__r_.__value_.__l.__size_ != v74)
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::Type::print(&__p, &__b);
    for (i = size + 1; v10 != i; ++i)
    {
      if ((v80 - v81) > 1)
      {
        *v81++ = 8236;
      }

      else
      {
        llvm::raw_ostream::write(&__b, ", ", 2uLL);
      }

      __p.__r_.__value_.__r.__words[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, i) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&__p, &__b);
    }
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
    v13 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = *(v4 + 118);
      if (v72.__r_.__value_.__l.__size_ > v17)
      {
        v15 = v72.__r_.__value_.__r.__words[0];
        if (v72.__r_.__value_.__l.__size_ >= v17)
        {
          v16 = *(v4 + 118);
        }

        else
        {
          v16 = v72.__r_.__value_.__l.__size_;
        }

        if (v16 < 0x17)
        {
          goto LABEL_16;
        }

LABEL_24:
        operator new();
      }

LABEL_28:
      __p = v72;
      memset(&v72, 0, sizeof(v72));
      goto LABEL_29;
    }
  }

  else
  {
    v72 = v85;
    v13 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  v14 = *(v4 + 118);
  if (v14 >= v13)
  {
    goto LABEL_28;
  }

  v15 = &v72;
  if (v13 >= v14)
  {
    v16 = *(v4 + 118);
  }

  else
  {
    v16 = v13;
  }

  if (v16 >= 0x17)
  {
    goto LABEL_24;
  }

LABEL_16:
  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  __dst.__r_.__value_.__s.__data_[v16] = 0;
  v18 = std::string::append(&__dst, "...");
  v19 = v18->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_29:
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
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  v22 = llvm::raw_ostream::write(a2, p_p, v21);
  v23 = v22[4];
  if (v22[3] != v23)
  {
    *v23 = 41;
    ++v22[4];
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  llvm::raw_ostream::write(v22, ")", 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_37:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_38:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
    llvm::raw_ostream::~raw_ostream(&__b);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_46;
    }

LABEL_40:
    if (*(v4 + 680) != 1)
    {
      return;
    }

    goto LABEL_41;
  }

  llvm::raw_ostream::~raw_ostream(&__b);
  if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_46:
  operator delete(v85.__r_.__value_.__l.__data_);
  if (*(v4 + 680) != 1)
  {
    return;
  }

LABEL_41:
  v24 = *(a2 + 4);
  if (*(a2 + 3) == v24)
  {
    llvm::raw_ostream::write(a2, "\n", 1uLL);
  }

  else
  {
    *v24 = 10;
    ++*(a2 + 4);
  }

  __b = mlir::Operation::getAttrDictionary(**a1);
  Value = mlir::DictionaryAttr::getValue(&__b);
  if (v26)
  {
    v27 = Value;
    v28 = (Value + 16 * v26);
    while (1)
    {
      v29 = *(a2 + 4);
      if (v29 >= *(a2 + 3))
      {
        v30 = llvm::raw_ostream::write(a2, 10);
      }

      else
      {
        *(a2 + 4) = v29 + 1;
        *v29 = 10;
        v30 = a2;
      }

      __b = mlir::NamedAttribute::getName(v27);
      v32 = mlir::StringAttr::getValue(&__b);
      v33 = v31;
      v34 = v30[4];
      if (v31 <= v30[3] - v34)
      {
        if (v31)
        {
          memcpy(v34, v32, v31);
          v34 = (v30[4] + v33);
          v30[4] = v34;
        }
      }

      else
      {
        v30 = llvm::raw_ostream::write(v30, v32, v31);
        v34 = v30[4];
      }

      if (v30[3] - v34 > 1uLL)
      {
        *v34 = 8250;
        v30[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v30, ": ", 2uLL);
      }

      v35 = *(v27 + 1);
      v88[0] = v35;
      mlir::OpPrintingFlags::OpPrintingFlags(&__b);
      LargeElementsAttrLimit = mlir::OpPrintingFlags::getLargeElementsAttrLimit(&__b);
      if (v37)
      {
        v38 = LargeElementsAttrLimit;
      }

      else
      {
        v38 = 16;
      }

      if (mlir::DenseElementsAttr::classof(v35))
      {
        v39 = v35;
      }

      else
      {
        v39 = 0;
      }

      __b = v39;
      if (v39)
      {
        if (mlir::DenseElementsAttr::isSplat(&__b))
        {
          mlir::Attribute::print(v88, a2);
          goto LABEL_52;
        }

        v35 = v88[0];
      }

      v40 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v35);
      v87[0] = v40;
      v87[1] = v41;
      if (v40 && mlir::ElementsAttr::getNumElements(v40, v41) > v38)
      {
        v85.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::getShapedType(v87);
        v85.__r_.__value_.__l.__size_ = v42;
        mlir::ShapedType::getShape(&v85);
        if (v43 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_156;
        }

        v44 = v43;
        if (v43 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v79) = v43;
        if (v43)
        {
          memset(&__b, 91, v43);
        }

        *(&__b + v44) = 0;
        v59 = v79 >= 0 ? &__b : __b;
        v60 = v79 >= 0 ? HIBYTE(v79) : v78;
        v61 = llvm::raw_ostream::write(a2, v59, v60);
        v62 = v61[4];
        if ((v61[3] - v62) > 2)
        {
          *(v62 + 2) = 46;
          *v62 = 11822;
          v63 = v61;
          v61[4] += 3;
        }

        else
        {
          v63 = llvm::raw_ostream::write(v61, "...", 3uLL);
        }

        __p.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::getShapedType(v87);
        __p.__r_.__value_.__l.__size_ = v64;
        mlir::ShapedType::getShape(&__p);
        if (v65 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_156:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v66 = v65;
        if (v65 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v65;
        if (v65)
        {
          memset(&__dst, 93, v65);
        }

        __dst.__r_.__value_.__s.__data_[v66] = 0;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v68 = __dst.__r_.__value_.__l.__size_;
        }

        v69 = llvm::raw_ostream::write(v63, p_dst, v68);
        v70 = v69;
        v71 = *(v69 + 4);
        if ((*(v69 + 3) - v71) > 2)
        {
          *(v71 + 2) = 32;
          *v71 = 14880;
          *(v69 + 4) += 3;
        }

        else
        {
          v70 = llvm::raw_ostream::write(v69, " : ", 3uLL);
        }

        __src.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::getType(v87);
        mlir::Type::print(&__src, v70);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if (SHIBYTE(v79) < 0)
          {
LABEL_147:
            v58 = __b;
            goto LABEL_148;
          }
        }

        else if (SHIBYTE(v79) < 0)
        {
          goto LABEL_147;
        }

        goto LABEL_52;
      }

      v45 = v88[0];
      v46 = *(*v88[0] + 136);
      if (v46 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v45 = 0;
      }

      v86 = v45;
      if (v46 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        mlir::ArrayAttr::getValue(&v86);
        if (v47 > v38)
        {
          v48 = *(a2 + 4);
          if ((*(a2 + 3) - v48) > 4)
          {
            *(v48 + 4) = 93;
            *v48 = 774778459;
            *(a2 + 4) += 5;
          }

          else
          {
            llvm::raw_ostream::write(a2, "[...]", 5uLL);
          }

          goto LABEL_52;
        }
      }

      memset(&v85, 0, sizeof(v85));
      LODWORD(v78) = 0;
      v82 = 0;
      v83 = 1;
      v80 = 0;
      v81 = 0;
      v79 = 0;
      __b = &unk_2868A3EF8;
      v84 = &v85;
      llvm::raw_ostream::SetBufferAndMode(&__b, 0, 0, 0);
      mlir::Attribute::print(v88, &__b);
      if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      std::string::__init_copy_ctor_external(&__src, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
      v49 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_86;
      }

      v53 = *(v4 + 118);
      if (__src.__r_.__value_.__l.__size_ > v53)
      {
        p_src = __src.__r_.__value_.__r.__words[0];
        if (__src.__r_.__value_.__l.__size_ >= v53)
        {
          v52 = *(v4 + 118);
        }

        else
        {
          v52 = __src.__r_.__value_.__l.__size_;
        }

        if (v52 >= 0x17)
        {
LABEL_99:
          operator new();
        }

        goto LABEL_91;
      }

LABEL_103:
      __p = __src;
      memset(&__src, 0, sizeof(__src));
LABEL_104:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &__p;
      }

      else
      {
        v56 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = __p.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(a2, v56, v57);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_112:
          llvm::raw_ostream::~raw_ostream(&__b);
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_116;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

      operator delete(__src.__r_.__value_.__l.__data_);
      llvm::raw_ostream::~raw_ostream(&__b);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_116:
        v58 = v85.__r_.__value_.__r.__words[0];
LABEL_148:
        operator delete(v58);
      }

LABEL_52:
      v27 = (v27 + 16);
      if (v27 == v28)
      {
        return;
      }
    }

    __src = v85;
    v49 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
LABEL_86:
    v50 = *(v4 + 118);
    if (v50 < v49)
    {
      p_src = &__src;
      if (v49 >= v50)
      {
        v52 = *(v4 + 118);
      }

      else
      {
        v52 = v49;
      }

      if (v52 >= 0x17)
      {
        goto LABEL_99;
      }

LABEL_91:
      *(&__dst.__r_.__value_.__s + 23) = v52;
      if (v52)
      {
        memmove(&__dst, p_src, v52);
      }

      __dst.__r_.__value_.__s.__data_[v52] = 0;
      v54 = std::string::append(&__dst, "...");
      v55 = v54->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_104;
    }

    goto LABEL_103;
  }
}

void *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>,mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 24 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 24 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>,mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[3] = -4096;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v27 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v28 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v28 >> 47) ^ v28);
              LODWORD(v28) = -348639895 * ((v29 >> 47) ^ v29);
              v30 = *(a1 + 16) - 1;
              v31 = v30 & v28;
              v25 = *a1 + 24 * v31;
              v32 = *v25;
              if (*v25 != v27)
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
                    v33 = v25;
                  }

                  v36 = v31 + v34++;
                  v31 = v36 & v30;
                  v25 = *a1 + 24 * (v36 & v30);
                  v32 = *v25;
                  if (*v25 == v27)
                  {
                    goto LABEL_26;
                  }
                }

                if (v33)
                {
                  v25 = v33;
                }
              }

LABEL_26:
              *v25 = v27;
              v26 = *(v20 + 1);
              *(v25 + 16) = *(v20 + 4);
              *(v25 + 8) = v26;
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -4096;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[3] = -4096;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

_DWORD *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<void anonymous namespace::PrintOpPass::initColorMapping<mlir::Region>(mlir::Region &)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v8 = *(a2 + 48);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](v4 + 1552, &v8);
  if (*result)
  {
    ++*result;
  }

  else
  {
    v6 = a1[1];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v6 + 8 * v7) = a2;
    ++*(v6 + 8);
    ++*result;
  }

  return result;
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::emitRegionCFG(mlir::Region &)::{lambda(void)#1}>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 8);
  if (v2 != v1)
  {
    v3 = *a1;
    do
    {
      v4 = v2 - 8;
      if (!v2)
      {
        v4 = 0;
      }

      v7[0] = v4;
      v7[1] = v3;
      v6 = 0;
      LOBYTE(__p) = 0;
      if (v6 < 0)
      {
        operator delete(__p);
      }

      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }
}

const char *llvm::getTypeName<mlir::silc::BufferizationInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::BufferizationInterface]";
  v6 = 84;
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

const char *llvm::getTypeName<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::VerifyAttributesWithFamilyInterface::Trait<Empty>]";
  v6 = 111;
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

const char *llvm::getTypeName<mlir::anec::VerifyAttributesWithFamilyInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::VerifyAttributesWithFamilyInterface]";
  v6 = 97;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::SupportConstantOperands<Empty>]";
  v6 = 101;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::ConstantFoldable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::ConstantFoldable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::ConstantFoldable<Empty>]";
  v6 = 94;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (*a1 + 16 * (v12 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v13 = *(a1 + 8);
  if (4 * v13 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v13 = *(v16 + 8);
    v7 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v13 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v13 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 12);
  }

  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

void *llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::moveFromOldBuckets(a1, v4, &v10[v4]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = -4096;
        *v9 = -4096;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = -4096;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  if (a2 != a3)
  {
    v12 = 0;
    v13 = v3 - 1;
    do
    {
      v16 = *a2;
      if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        v19 = (-348639895 * ((v18 >> 47) ^ v18)) & v13;
        v14 = (*result + 16 * v19);
        v20 = *v14;
        if (v16 != *v14)
        {
          v21 = 0;
          v22 = 1;
          while (v20 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v20 == -8192;
            }

            if (v23)
            {
              v21 = v14;
            }

            v24 = v19 + v22++;
            v19 = v24 & v13;
            v14 = (*result + 16 * (v24 & v13));
            v20 = *v14;
            if (v16 == *v14)
            {
              goto LABEL_14;
            }
          }

          if (v21)
          {
            v14 = v21;
          }
        }

LABEL_14:
        v15 = a2[1];
        *v14 = v16;
        v14[1] = v15;
        *(result + 8) = ++v12;
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

unint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unint64_t result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = result;
  v6 = *(result + 16);
  if (!v6)
  {
    v20 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v7 = *result;
  result = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = 0;
  v9 = v6 - 1;
  v10 = *v3;
  v11 = v3[1];
  for (i = 1; ; ++i)
  {
    v13 = result & v9;
    v14 = (v7 + 16 * (result & v9));
    v15 = *v14;
    if (*v14 == -2)
    {
      if (v10 == -2)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    if (v15 == -1)
    {
      break;
    }

    if (v11 == v14[1])
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v16 = v8;
      v24 = a3;
      v25 = v3;
      v17 = v10;
      v18 = i;
      result = memcmp(v10, *v14, v11);
      i = v18;
      v10 = v17;
      a3 = v24;
      v3 = v25;
      v8 = v16;
      if (!result)
      {
        goto LABEL_23;
      }
    }

LABEL_10:
    if (v8)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 + 2 == 0;
    }

    if (v19)
    {
      v8 = (v7 + 16 * v13);
    }

    result = i + v13;
  }

  if (v10 == -1)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (v8)
  {
    v14 = v8;
  }

  v20 = *(v4 + 16);
LABEL_17:
  v26 = v14;
  v21 = *(v4 + 8);
  if (4 * v21 + 4 >= 3 * v20)
  {
    v20 *= 2;
    goto LABEL_26;
  }

  if (v20 + ~v21 - *(v4 + 12) <= v20 >> 3)
  {
LABEL_26:
    llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(v4, v20);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v4, v3, &v26);
    v21 = *(v4 + 8);
    v14 = v26;
  }

  *(v4 + 8) = v21 + 1;
  if (*v14 != -1)
  {
    --*(v4 + 12);
  }

  *v14 = *v3;
  v22 = 1;
LABEL_24:
  v23 = *v4 + 16 * *(v4 + 16);
  *a3 = v14;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    result = 0;
    goto LABEL_18;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = 0;
  v9 = v4 - 1;
  v10 = *a2;
  v11 = *(a2 + 8);
  for (i = 1; ; ++i)
  {
    v13 = HashValue & v9;
    v14 = (v5 + 16 * (HashValue & v9));
    v15 = *v14;
    if (*v14 == -2)
    {
      if (v10 == -2)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (v15 == -1)
    {
      break;
    }

    if (v11 == v14[1] && (!v11 || !memcmp(v10, *v14, v11)))
    {
LABEL_16:
      result = 1;
      goto LABEL_18;
    }

LABEL_10:
    if (v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 2 == 0;
    }

    if (v16)
    {
      v8 = (v5 + 16 * v13);
    }

    HashValue = i + v13;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = (v5 + 16 * v13);
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v14 = v18;
    result = 0;
  }

LABEL_18:
  *a3 = v14;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(unint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v4, v10 + v4);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v13 = result;
    if (v12 < 3)
    {
      goto LABEL_13;
    }

    v14 = v12 + 1;
    v13 = &result[v14 & 0x1FFFFFFFFFFFFFFCLL];
    v15 = result + 2;
    v16 = v14 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v15 - 2) = xmmword_25736B6D0;
      *(v15 - 1) = xmmword_25736B6D0;
      *v15 = xmmword_25736B6D0;
      v15[1] = xmmword_25736B6D0;
      v15 += 4;
      v16 -= 4;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_13:
      v17 = &result[v11];
      do
      {
        *v13++ = xmmword_25736B6D0;
      }

      while (v13 != v17);
    }
  }

  return result;
}

unint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v8 = *result;
    if (v7 < 3)
    {
      goto LABEL_6;
    }

    v9 = v7 + 1;
    v8 = &v6[v9 & 0x1FFFFFFFFFFFFFFCLL];
    v10 = v6 + 2;
    v11 = v9 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v10 - 2) = xmmword_25736B6D0;
      *(v10 - 1) = xmmword_25736B6D0;
      *v10 = xmmword_25736B6D0;
      v10[1] = xmmword_25736B6D0;
      v10 += 4;
      v11 -= 4;
    }

    while (v11);
    if (v9 != (v9 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v12 = &v6[v5];
      do
      {
        *v8++ = xmmword_25736B6D0;
      }

      while (v8 != v12);
    }
  }

  if (a2 == a3)
  {
    return result;
  }

  v27 = result;
  v28 = a3;
  while (2)
  {
    result = *v3;
    if (*v3 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_29;
    }

    v23 = *v4;
    v24 = *(v4 + 16);
    result = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(result, *(v3 + 8));
    v19 = 0;
    v25 = v24 - 1;
    v18 = *v3;
    v26 = *(v3 + 8);
    for (i = 1; ; ++i)
    {
      v13 = result & v25;
      v14 = (v23 + 16 * (result & v25));
      v15 = *v14;
      if (*v14 == -2)
      {
        if (v18 == -2)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      if (v15 == -1)
      {
        break;
      }

      if (v26 == v14[1])
      {
        if (!v26)
        {
          goto LABEL_28;
        }

        v16 = v19;
        v17 = v18;
        result = memcmp(v18, *v14, v26);
        v18 = v17;
        v4 = v27;
        v19 = v16;
        if (!result)
        {
          goto LABEL_28;
        }
      }

LABEL_17:
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 2 == 0;
      }

      if (v20)
      {
        v19 = (v23 + 16 * v13);
      }

      result = i + v13;
    }

    if (v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = (v23 + 16 * v13);
    }

    if (v18 != -1)
    {
      v14 = v22;
    }

LABEL_28:
    *v14 = *v3;
    ++*(v4 + 8);
    a3 = v28;
LABEL_29:
    v3 += 16;
    if (v3 != a3)
    {
      continue;
    }

    return result;
  }
}

uint64_t mlir::Operation::removeAttr(uint64_t a1, uint64_t a2)
{
  v12[9] = *MEMORY[0x277D85DE8];
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

    if (v11[0] != v12)
    {
      free(v11[0]);
    }
  }

  return v7;
}

uint64_t mlir::logMatchFailure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = 260;
  v16[0] = a1;
  mlir::emitWarning(a2, v16, v18);
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

    v6 = __p;
    if (__p)
    {
      v7 = v24;
      v8 = __p;
      if (v24 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v24 = v6;
      operator delete(v8);
    }

    v9 = v21;
    if (v21)
    {
      v10 = v22;
      v11 = v21;
      if (v22 != v21)
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
        v11 = v21;
      }

      v22 = v9;
      operator delete(v11);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  if (a3)
  {
    v16[0] = a1;
    v14 = *(a3 + 16);
    if (v14)
    {
      if (mlir::RewriterBase::Listener::classof(v14))
      {
        (*(*v14 + 88))(v14, a2, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::logMatchFailure(std::string const&,mlir::Location,mlir::PatternRewriter *)::$_0>, v16);
      }
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::logMatchFailure(std::string const&,mlir::Location,mlir::PatternRewriter *)::$_0>(void ***a1, uint64_t a2)
{
  v2 = *a1;
  v5 = 260;
  v4 = v2;
  return mlir::Diagnostic::operator<<(a2, &v4);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::MemRefType &,mlir::ElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ConstantOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

unint64_t *llvm::SmallVectorImpl<long long>::insert(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *a1;
  v7 = a2 - *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = v8 + a3;
  if (*a1 + 8 * v8 == a2)
  {
    if (v10 > v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a3)
    {
      v24 = (v6 + 8 * v8);
      v25 = v24;
      v26 = a3;
      if (a3 < 4)
      {
        goto LABEL_50;
      }

      v25 = v24 + (a3 & 0xFFFFFFFFFFFFFFFCLL);
      v26 = a3 & 3;
      v27 = vdupq_n_s64(a4);
      v28 = v24 + 1;
      v29 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v28[-1] = v27;
        *v28 = v27;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != a3)
      {
LABEL_50:
        do
        {
          *v25++ = a4;
          --v26;
        }

        while (v26);
      }
    }

    *(a1 + 2) = v8 + a3;
    return (v6 + v7);
  }

  if (v10 > v9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v6 + v7);
  v12 = 8 * v8;
  v13 = (v6 + 8 * v8);
  v14 = 8 * v8 - v7;
  v15 = v14 >> 3;
  if (a3 > v14 >> 3)
  {
    v16 = v8 + a3;
    *(a1 + 2) = v16;
    if (v12 != v7)
    {
      memcpy((v6 + 8 * v16 - 8 * v15), (v6 + v7), v14);
      v17 = (v6 + v7);
      v18 = v14 >> 3;
      if (v15 < 4)
      {
        goto LABEL_51;
      }

      v17 = &v11[v15 & 0xFFFFFFFFFFFFFFFCLL];
      v18 = (v14 >> 3) & 3;
      v19 = vdupq_n_s64(a4);
      v20 = (v7 + v6 + 16);
      v21 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_51:
        do
        {
          *v17++ = a4;
          --v18;
        }

        while (v18);
      }
    }

    v22 = a3 - v15;
    if (a3 != v15)
    {
      if (v22 < 4)
      {
        v23 = a3 - v15;
        do
        {
LABEL_29:
          *v13++ = a4;
          --v23;
        }

        while (v23);
        return v11;
      }

      v13 += v22 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = v22 & 3;
      v34 = vdupq_n_s64(a4);
      v35 = (v12 + v6 + 16);
      v36 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35[-1] = v34;
        *v35 = v34;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_29;
      }
    }

    return v11;
  }

  v30 = 8 * a3;
  if (v8 + ((8 * a3) >> 3) > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v31 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
  if (a3)
  {
    v32 = (*a1 + 8 * v8);
    if ((v30 - 8) < 0x38)
    {
      v33 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
      do
      {
LABEL_35:
        v44 = *v33++;
        *v32++ = v44;
      }

      while (v33 != v13);
      goto LABEL_36;
    }

    v37 = 8 * v8 + *a1;
    v33 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
    if ((v37 - v31) < 0x20)
    {
      goto LABEL_35;
    }

    v38 = ((v30 - 8) >> 3) + 1;
    v39 = v38 & 0x3FFFFFFFFFFFFFFCLL;
    v32 = (v32 + v39 * 8);
    v33 = &v31[v39];
    v40 = (v12 - v30 + v6 + 16);
    v41 = (v37 + 16);
    v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v43 = *v40;
      *(v41 - 1) = *(v40 - 1);
      *v41 = v43;
      v40 += 2;
      v41 += 2;
      v42 -= 4;
    }

    while (v42);
    if (v38 != (v38 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  *(a1 + 2) = v8 + a3;
  if (v31 != v11)
  {
    memmove(&v11[v30 / 8], (v6 + v7), &v13[v30 / 0xFFFFFFFFFFFFFFF8] - v11);
  }

  if (a3)
  {
    if (a3 >= 4)
    {
      v45 = &v11[a3 & 0xFFFFFFFFFFFFFFFCLL];
      v46 = a3 & 3;
      v47 = vdupq_n_s64(a4);
      v48 = (v7 + v6 + 16);
      v49 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v48[-1] = v47;
        *v48 = v47;
        v48 += 2;
        v49 -= 4;
      }

      while (v49);
      if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == a3)
      {
        return v11;
      }
    }

    else
    {
      v45 = (v6 + v7);
      v46 = a3;
    }

    do
    {
      *v45++ = a4;
      --v46;
    }

    while (v46);
  }

  return v11;
}

uint64_t mlir::ShapedType::clone(mlir::ShapedType *a1, uint64_t a2, uint64_t a3)
{
  *&v6 = a2;
  *(&v6 + 1) = a3;
  v7 = 1;
  ElementType = mlir::ShapedType::getElementType(a1);
  return mlir::ShapedType::cloneWith(a1, &v6, ElementType);
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::resize(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 8);
  v4 = a2 - v3;
  if (a2 != v3)
  {
    if (a2 >= v3)
    {
      if (*(result + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v4)
      {
        v5 = *result + 8 * v3;
        v6 = v5;
        v7 = a2 - v3;
        if (v4 < 4)
        {
          goto LABEL_15;
        }

        v6 = (v5 + 8 * (v4 & 0xFFFFFFFFFFFFFFFCLL));
        v7 = v4 & 3;
        v8 = vdupq_n_s64(a3);
        v9 = (v5 + 16);
        v10 = v4 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v9[-1] = v8;
          *v9 = v8;
          v9 += 2;
          v10 -= 4;
        }

        while (v10);
        if (v4 != (v4 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_15:
          do
          {
            *v6++ = a3;
            --v7;
          }

          while (v7);
        }
      }
    }

    *(result + 8) = a2;
  }

  return result;
}

llvm::APFloatBase *llvm::APFloat::Storage::operator=(llvm::APFloatBase *a1, llvm::APFloatBase *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = *a2;
  if (v5 != v4 && v5 != v6)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v8 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    goto LABEL_12;
  }

  if (v4 == v6)
  {
    llvm::detail::DoubleAPFloat::operator=(a1, a2);
    return a1;
  }

  if (a1 != a2)
  {
    v8 = v5;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
LABEL_12:
    if (v8 == *a2)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, a2);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
    }
  }

  return a1;
}

void *llvm::SmallVectorImpl<long long>::insert<long long const*,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v6 = *a1;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = a4 - __src;
  v12 = (a4 - __src) >> 3;
  v13 = v12 + v9;
  if (*a1 + 8 * v9 == a2)
  {
    if (v13 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (__src != a4)
    {
      memcpy((v7 + 8 * v9), __src, v11);
      LODWORD(v9) = *(a1 + 2);
      v7 = *a1;
    }

    *(a1 + 2) = v9 + (v11 >> 3);
    return (v7 + v8);
  }

  __len = v11;
  v45 = __src;
  if (v13 > v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __srca = (v7 + v8);
  v15 = 8 * v9;
  v16 = (v7 + 8 * v9);
  v17 = 8 * v9 - v8;
  v18 = v17 >> 3;
  if (v17 >> 3 < v12)
  {
    v19 = v9 + (__len >> 3);
    *(a1 + 2) = v19;
    if (v15 == v8)
    {
      v20 = v45;
      v21 = v7 + v8;
      v22 = a4;
LABEL_34:
      if (v20 != v22)
      {
        memcpy(v16, v20, v22 - v20);
      }

      return v21;
    }

    v21 = v7 + v8;
    memcpy((v7 + 8 * v19 - 8 * v18), __srca, v17);
    if (v18 > 7)
    {
      if ((v7 + a2 - &v45[v6]) >= 0x20)
      {
        v39 = 8 * (v18 & 0xFFFFFFFFFFFFFFFCLL);
        v27 = &__srca[v39];
        v28 = (v17 >> 3) & 3;
        v20 = &v45[v39];
        v40 = (v45 + 16);
        v41 = (v8 + v7 + 16);
        v42 = v18 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 2;
          v42 -= 4;
        }

        while (v42);
        v22 = a4;
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v27 = (v7 + v8);
      v28 = v17 >> 3;
      v20 = v45;
    }

    else
    {
      v27 = (v7 + v8);
      v28 = v17 >> 3;
      v20 = v45;
    }

    v22 = a4;
    do
    {
LABEL_33:
      v38 = *v20;
      v20 += 8;
      *v27 = v38;
      v27 += 8;
      --v28;
    }

    while (v28);
    goto LABEL_34;
  }

  v23 = 8 * v12;
  if (v12 + v9 > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v24 = &v16[-v23];
  v21 = v7 + v8;
  if (a4 != v45)
  {
    v25 = (*a1 + 8 * v9);
    if (v23 - 8 < 0x38)
    {
      v26 = &v16[-v23];
      do
      {
LABEL_23:
        v36 = *v26;
        v26 += 8;
        *v25++ = v36;
      }

      while (v26 != v16);
      goto LABEL_24;
    }

    v29 = 8 * v9 + *a1;
    v26 = &v16[-v23];
    if ((v29 - v24) < 0x20)
    {
      goto LABEL_23;
    }

    v30 = ((v23 - 8) >> 3) + 1;
    v31 = 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
    v25 = (v25 + v31);
    v26 = &v24[v31];
    v32 = (v15 - v23 + v7 + 16);
    v33 = (v29 + 16);
    v34 = v30 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v35 = *v32;
      *(v33 - 1) = *(v32 - 1);
      *v33 = v35;
      v32 += 2;
      v33 += 2;
      v34 -= 4;
    }

    while (v34);
    if (v30 != (v30 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a1 + 2) = v9 + (v23 >> 3);
  if (v24 != __srca)
  {
    memmove(&__srca[v23], __srca, &v16[-v23] - __srca);
  }

  if (a4 == v45)
  {
    return v21;
  }

  return memmove(__srca, v45, __len);
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseIntElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Reshape::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *std::__tree<long long>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

    else
    {
      v19 = a1 + 1;
    }

LABEL_25:
    *a3 = v19;
    return v5;
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
      }

      else
      {
        v23 = a1 + 1;
      }

LABEL_41:
      *a3 = v23;
      return v5;
    }
  }
}

uint64_t mlir::getValues<unsigned long>(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v14, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v16);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v12, a1, NumElements); v15 != v13; ++v15)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v14, &v10);
    v6 = v11;
    v7 = v10;
    if (v11 < 0x41)
    {
      v7 = &v10;
    }

    v8 = *v7;
    v9 = *(a2 + 8);
    if (v9 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, v8);
      if (v11 >= 0x41)
      {
LABEL_9:
        result = v10;
        if (v10)
        {
          result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
        }
      }
    }

    else
    {
      *(*a2 + 8 * v9) = v8;
      *(a2 + 8) = v9 + 1;
      if (v6 >= 0x41)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::TensorToBufferOp::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::getSplatIntValue<int>(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  if (mlir::ElementsAttr::isSplat(&v8) && (v7[0] = mlir::ElementsAttr::getShapedType(&v8), v7[1] = v2, *(*mlir::ShapedType::getElementType(v7) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    LODWORD(v7[0]) = 0;
    mlir::copyElementsAttrData<int>(v8, v9, v7, 0);
    v5 = v7[0] & 0xFFFFFF00;
    v3 = LOBYTE(v7[0]);
    v4 = 0x100000000;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  return v4 | v5 | v3;
}

uint64_t llvm::SmallVector<long long,6u>::SmallVector(uint64_t result, unint64_t a2, uint64_t *a3)
{
  *result = result + 16;
  *(result + 12) = 6;
  v3 = *a3;
  if (a2 >= 7)
  {
    *(result + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v4 = vdupq_n_s64(a2 - 1);
    v5 = vmovn_s64(vcgeq_u64(v4, xmmword_2573686A0));
    if (v5.i8[0])
    {
      *(result + 16) = v3;
    }

    v6 = (a2 + 1) & 0xE;
    if (v5.i8[4])
    {
      *(result + 24) = v3;
    }

    if (v6 != 2)
    {
      v7 = vmovn_s64(vcgtq_u64(v4, xmmword_2573686B0));
      if (v7.i8[0])
      {
        *(result + 32) = v3;
        if ((v7.i8[4] & 1) == 0)
        {
LABEL_11:
          if (v6 == 4)
          {
            goto LABEL_19;
          }

LABEL_15:
          v8 = vmovn_s64(vcgtq_u64(v4, xmmword_2573686C0));
          if (v8.i8[0])
          {
            *(result + 48) = v3;
          }

          if (v8.i8[4])
          {
            *(result + 56) = v3;
          }

          goto LABEL_19;
        }
      }

      else if ((v7.i8[4] & 1) == 0)
      {
        goto LABEL_11;
      }

      *(result + 40) = v3;
      if (v6 == 4)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

LABEL_19:
  *(result + 8) = a2;
  return result;
}

llvm::detail::IEEEFloat *mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::DenseElementsAttr::tryGetFloatValues(a1, v7);
  v6[0] = v7[0];
  v6[1] = v7[1];
  v6[2] = v8;
  v6[3] = v9;
  v6[4] = v10;
  v6[5] = v11;
  v3 = mlir::DenseElementsAttr::IntElementIterator::operator*(v7, v6);
  v4 = v8;
  if (llvm::APFloatBase::PPCDoubleDouble(v3) == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v4);
  }

  result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v4, v6);
  if (DWORD2(v6[0]) >= 0x41)
  {
    result = *&v6[0];
    if (*&v6[0])
    {
      return MEMORY[0x259C63150](*&v6[0], 0x1000C8000313F17);
    }
  }

  return result;
}

void *mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = mlir::DenseElementsAttr::getElementType(a1);
  result = mlir::Type::isIntOrIndex(v14);
  if (result)
  {
    Type = mlir::DenseElementsAttr::getType(a1);
    v7 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, *a1, 0);
    v8 = *a1;
    NumElements = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v15, v8, NumElements);
    v10 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v10;
    v11 = v15[1];
    *(a2 + 32) = v15[0];
    *(a2 + 48) = v11;
    *(a2 + 64) = Type;
    *(a2 + 72) = v7;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v12;
  return result;
}

uint64_t llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x500000000;
  v4 = a3 - a2;
  if (((a3 - a2) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a2 != a3)
  {
    memcpy(*a1, a2, v4);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + (v4 >> 3);
  return a1;
}

const char *llvm::getTypeName<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::TypeChanger<Empty>]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::ExecutionCostOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExecutionCostOpInterface]";
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

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type &,mlir::ElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type &,mlir::ElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ConstantOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

__n128 mlir::InFlightDiagnostic::operator<<<long long &>(uint64_t a1, unint64_t *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v7.n128_u32[0] = 2;
    v7.n128_u64[1] = v3;
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v7 && v2 + 24 * v4 > &v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v2 + 24 * *(a1 + 32));
    result = v7;
    v5[1].n128_u64[0] = v8;
    *v5 = result;
    ++*(a1 + 32);
  }

  return result;
}

unint64_t mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(mlir::mps_spi::StridedArrayViewOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = v3 + 88;
  if (a2)
  {
    v5 = a2;
    if (a2 > 7)
    {
      v6 = a2 & 0xFFFFFFF8;
      v9 = (v3 + 104);
      v10 = 0uLL;
      v11 = v6;
      v12 = 0uLL;
      do
      {
        v10 = vaddq_s32(v9[-1], v10);
        v12 = vaddq_s32(*v9, v12);
        v9 += 2;
        v11 -= 8;
      }

      while (v11);
      v7 = vaddvq_s32(vaddq_s32(v12, v10));
      if (v6 == a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v13 = (16 * v2 + 4 * v6 + *this + 88);
    v14 = a2 - v6;
    do
    {
      v15 = *v13++;
      v7 += v15;
      --v14;
    }

    while (v14);
LABEL_10:
    v8 = v7;
    return v8 | (*(v4 + 4 * v5) << 32);
  }

  v5 = 0;
  v8 = 0;
  return v8 | (*(v4 + 4 * v5) << 32);
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1)
{
  v2[32] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if ((*(*a1 + 48))(a1, v2))
  {
    mlir::detail::DenseArrayAttrImpl<int>::classof();
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1)
{
  v2[32] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if ((*(*a1 + 48))(a1, v2))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  return 0;
}

uint64_t mlir::DialectBytecodeWriter::writeSparseArray<int>(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = a2;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if (a2[v8])
      {
        v7 = v8;
        ++v6;
      }

      ++v8;
    }

    while (a3 != v8);
    if (v7 > 0x100)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 > a3 >> 1)
  {
LABEL_15:
    result = (*(*a1 + 48))(a1, 2 * a3);
    if (a3)
    {
      v14 = 4 * a3;
      do
      {
        v15 = *v4++;
        result = (*(*a1 + 48))(a1, v15);
        v14 -= 4;
      }

      while (v14);
    }

    return result;
  }

  result = (*(*a1 + 48))(a1, (2 * v6) | 1);
  if (v6)
  {
    v10 = v7 + 1;
    v11 = 32 - __clz(v7);
    result = (*(*a1 + 48))(a1, v11);
    v12 = 0;
    do
    {
      v13 = v4[v12];
      if (v13)
      {
        result = (*(*a1 + 48))(a1, (v13 << v11) | v12);
      }

      ++v12;
    }

    while (v10 != v12);
  }

  return result;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = a3[1];
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v31 = 257;
    (*(*a1 + 24))(v34, a1, a4, v30);
    if (v34[0])
    {
      LODWORD(v32) = 5;
      *(&v32 + 1) = v6;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v35 + 24 * v36;
      v14 = v32;
      *(v13 + 2) = v33;
      *v13 = v14;
      v15 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = " operands present, but expected ";
        v33 = 32;
        if (v15 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v15 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v35 + 24 * v36;
        v17 = v32;
        *(v16 + 2) = v33;
        *v16 = v17;
        v18 = ++v36;
        if (v34[0])
        {
          LODWORD(v32) = 5;
          *(&v32 + 1) = v7;
          if (v18 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v18 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v35 + 24 * v36;
          v20 = v32;
          *(v19 + 2) = v33;
          *v19 = v20;
          ++v36;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v42;
        v23 = __p;
        if (v42 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v42 = v21;
        operator delete(v23);
      }

      v24 = v39;
      if (v39)
      {
        v25 = v40;
        v26 = v39;
        if (v40 != v39)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              MEMORY[0x259C63150](v27, 0x1000C8077774924);
            }
          }

          while (v25 != v24);
          v26 = v39;
        }

        v40 = v24;
        operator delete(v26);
      }

      if (v35 != &v38)
      {
        free(v35);
      }
    }
  }

  return v12;
}