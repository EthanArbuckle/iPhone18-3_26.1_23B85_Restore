void *mlir::pdl_to_pdl_interp::MatcherNode::MatcherNode(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *result = &unk_286867430;
  result[1] = a3;
  v5 = *a5;
  *a5 = 0;
  result[2] = a4;
  result[3] = v5;
  result[4] = 0;
  result[5] = a2;
  return result;
}

{
  *result = &unk_286867430;
  result[1] = a3;
  v5 = *a5;
  *a5 = 0;
  result[2] = a4;
  result[3] = v5;
  result[4] = 0;
  result[5] = a2;
  return result;
}

void *mlir::pdl_to_pdl_interp::BoolNode::BoolNode(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  {
    v14 = a4;
    v11 = a5;
    v13 = result;
    v9 = a2;
    v10 = a6;
    v12 = a3;
    foldSwitchToBool();
    a2 = v9;
    a6 = v10;
    a5 = v11;
    a3 = v12;
    result = v13;
    a4 = v14;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id;
  v7 = *a6;
  *a6 = 0;
  result[1] = a2;
  result[2] = a3;
  result[3] = v7;
  result[4] = 0;
  result[5] = v6;
  *result = &unk_286867450;
  v8 = *a5;
  *a5 = 0;
  result[6] = a4;
  result[7] = v8;
  return result;
}

{
  {
    v14 = a4;
    v11 = a5;
    v13 = result;
    v9 = a2;
    v10 = a6;
    v12 = a3;
    foldSwitchToBool();
    a2 = v9;
    a6 = v10;
    a5 = v11;
    a3 = v12;
    result = v13;
    a4 = v14;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id;
  v7 = *a6;
  *a6 = 0;
  result[1] = a2;
  result[2] = a3;
  result[3] = v7;
  result[4] = 0;
  result[5] = v6;
  *result = &unk_286867450;
  v8 = *a5;
  *a5 = 0;
  result[6] = a4;
  result[7] = v8;
  return result;
}

void *mlir::pdl_to_pdl_interp::SuccessNode::SuccessNode(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v9 = a3;
    v7 = result;
    v8 = a2;
    v6 = a4;
    a4 = v6;
    result = v7;
    a2 = v8;
    a3 = v9;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id;
  v5 = *a4;
  *a4 = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  result[4] = 0;
  result[5] = v4;
  result[6] = a2;
  *result = &unk_286867470;
  result[7] = a3;
  return result;
}

{
  {
    v9 = a3;
    v7 = result;
    v8 = a2;
    v6 = a4;
    a4 = v6;
    result = v7;
    a2 = v8;
    a3 = v9;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id;
  v5 = *a4;
  *a4 = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  result[4] = 0;
  result[5] = v4;
  result[6] = a2;
  *result = &unk_286867470;
  result[7] = a3;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::SwitchNode::SwitchNode(uint64_t result, uint64_t a2, uint64_t a3)
{
  {
    v6 = result;
    v4 = a3;
    v5 = a2;
    foldSwitchToBool();
    a3 = v4;
    a2 = v5;
    result = v6;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v3;
  *(result + 48) = 0;
  *result = &unk_286867490;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = result + 88;
  *(result + 80) = 0;
  return result;
}

{
  {
    v6 = result;
    v4 = a3;
    v5 = a2;
    foldSwitchToBool();
    a3 = v4;
    a2 = v5;
    result = v6;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v3;
  *(result + 48) = 0;
  *result = &unk_286867490;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = result + 88;
  *(result + 80) = 0;
  return result;
}

void mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(mlir::pdl_to_pdl_interp::MatcherNode *this)
{
  *this = &unk_286867430;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_286867430;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::BoolNode::~BoolNode(mlir::pdl_to_pdl_interp::BoolNode *this)
{
  *this = &unk_286867450;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_286867430;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_286867450;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_286867430;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::SuccessNode::~SuccessNode(mlir::pdl_to_pdl_interp::SuccessNode *this)
{
  *this = &unk_286867430;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_286867430;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::SwitchNode::~SwitchNode(mlir::pdl_to_pdl_interp::SwitchNode *this)
{
  *this = &unk_286867490;
  v2 = *(this + 9);
  v3 = *(this + 20);
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
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
}

{
  *this = &unk_286867490;
  v2 = *(this + 9);
  v3 = *(this + 20);
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
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
}

void *sub_256640514()
{
  *v0 = &unk_286867430;
  v1 = v0[4];
  v0[4] = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = v0[3];
  v0[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return v0;
}

void sub_256640654()
{
  *v0 = &unk_286867430;
  v1 = v0[4];
  v0[4] = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = v0[3];
  v0[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C63180);
}

void getTreePredicates(uint64_t *a1, uint64_t *a2, mlir::detail::StorageUniquerImpl ***a3, uint64_t *a4, mlir::pdl_to_pdl_interp::OperationPosition *a5)
{
  v76 = a5;
  v77 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>(a4, &v77, &v76, &v74);
  if ((v75 & 1) == 0)
  {
    v11 = *(*(mlir::Value::getDefiningOp(&v77) + 48) + 16);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
    {
      return;
    }

    v16 = (v74 + 8);
    v17 = v76;
    OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*(v74 + 8));
    v19 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v17);
    v20 = OperationDepth >= v19;
    v21 = &v76;
    if (OperationDepth >= v19)
    {
      v22 = v16;
    }

    else
    {
      v22 = &v76;
    }

    if (!v20)
    {
      v21 = v16;
    }

    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a3, *v21);
    v25 = a1[1];
    v26 = a1[2];
    if (v25 >= v26)
    {
      v33 = *a1;
      v34 = 0xAAAAAAAAAAAAAAABLL * (&v25[-*a1] >> 3);
      v35 = v34 + 1;
      if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_97;
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v33) >> 3);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (v37 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_98;
      }

      v54 = (8 * (&v25[-*a1] >> 3));
      *v54 = *v22;
      v54[1] = EqualTo;
      v54[2] = v24;
      v27 = 24 * v34 + 24;
      v55 = 24 * v34 - (v25 - v33);
      memcpy(v54 - (v25 - v33), v33, v25 - v33);
      *a1 = v55;
      a1[1] = v27;
      a1[2] = 0;
      if (v33)
      {
        v56 = v33;
LABEL_68:
        operator delete(v56);
      }
    }

    else
    {
      *v25 = *v22;
      *(v25 + 1) = EqualTo;
      *(v25 + 2) = v24;
      v27 = (v25 + 24);
    }

LABEL_95:
    a1[1] = v27;
    return;
  }

  v8 = v76;
  v9 = *(v76 + 4);
  if (v76)
  {
    v10 = v9 == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v79[0] = v77;
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a3);
    v30 = a1[1];
    v31 = a1[2];
    if (v30 < v31)
    {
      *v30 = v8;
      *(v30 + 1) = IsNotNull;
      v32 = (v30 + 24);
      *(v30 + 2) = v29;
      goto LABEL_72;
    }

    v49 = *a1;
    v50 = 0xAAAAAAAAAAAAAAABLL * (&v30[-*a1] >> 3);
    v51 = v50 + 1;
    if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_97;
    }

    v52 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v49) >> 3);
    if (2 * v52 > v51)
    {
      v51 = 2 * v52;
    }

    if (v52 >= 0x555555555555555)
    {
      v53 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v53 = v51;
    }

    if (!v53)
    {
      v58 = (8 * (&v30[-*a1] >> 3));
      *v58 = v8;
      v58[1] = IsNotNull;
      v58[2] = v29;
      v32 = 24 * v50 + 24;
      v59 = 24 * v50 - (v30 - v49);
      memcpy(v58 - (v30 - v49), v49, v30 - v49);
      *a1 = v59;
      a1[1] = v32;
      a1[2] = 0;
      if (v49)
      {
        operator delete(v49);
      }

LABEL_72:
      a1[1] = v32;
      DefiningOp = mlir::Value::getDefiningOp(v79);
      if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
      {
        v61 = DefiningOp;
      }

      else
      {
        v61 = 0;
      }

      v80 = v61;
      if (!v61)
      {
        return;
      }

      ODSOperandIndexAndLength = mlir::pdl::AttributeOp::getODSOperandIndexAndLength(&v80, 0);
      v63 = *(v80 + 44);
      if ((v63 & 0x800000) != 0)
      {
        v64 = *(v80 + 72);
        v65 = ODSOperandIndexAndLength;
        if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v64 = 0;
        v65 = ODSOperandIndexAndLength;
        if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
        {
          goto LABEL_81;
        }
      }

      v66 = *(v64 + 32 * v65 + 24);
      if (v66)
      {
        v78[0] = v8;
        v67 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*a3, 0, 0, v78);
        getTreePredicates(a1, v66, a3, a4, v67);
        return;
      }

LABEL_81:
      v68 = *(v80 + 16 * ((v63 >> 23) & 1) + 64);
      if (!v68)
      {
        return;
      }

      AttributeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint(a3, v68);
      v42 = a1[1];
      v69 = a1[2];
      if (v42 >= v69)
      {
        v44 = *a1;
        v45 = 0xAAAAAAAAAAAAAAABLL * (&v42[-*a1] >> 3);
        v70 = v45 + 1;
        if (v45 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          v71 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v44) >> 3);
          if (2 * v71 > v70)
          {
            v70 = 2 * v71;
          }

          if (v71 >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v70;
          }

          if (v48)
          {
            if (v48 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_98;
            }

            goto LABEL_92;
          }

          goto LABEL_93;
        }

LABEL_97:
        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_83:
      *v42 = v8;
      *(v42 + 1) = AttributeConstraint;
      v27 = (v42 + 24);
      *(v42 + 2) = v41;
      goto LABEL_95;
    }

    if (v53 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_98:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v76 && !v9)
  {
    getTreePredicates(a1, v77, a3, a4, v76, 0);
    return;
  }

  if (v9 != 7)
  {
    v83 = v76;
    v84 = v77;
    v82 = *(*(v77[1] & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
    v57 = mlir::Value::getDefiningOp(&v84);
    v79[3] = a4;
    v80 = v57;
    v81 = 0;
    v79[0] = &v83;
    v79[1] = a1;
    v79[2] = a3;
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v80, v79);
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v80, v79);
    v78[0] = a1;
    v78[1] = &v83;
    v78[2] = a3;
    v78[3] = &v82;
    v78[4] = a4;
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(&v80, v78);
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(&v80, v78);
    return;
  }

  v78[0] = v77;
  v38 = mlir::Value::getDefiningOp(v78);
  if (v38 && *(*(v38 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id || (v38 = mlir::Value::getDefiningOp(v78)) != 0 && *(*(v38 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
  {
    v39 = *(v38 + 16 * ((*(v38 + 44) >> 23) & 1) + 64);
    if (v39)
    {
      AttributeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(a3, v39);
      v42 = a1[1];
      v43 = a1[2];
      if (v42 >= v43)
      {
        v44 = *a1;
        v45 = 0xAAAAAAAAAAAAAAABLL * (&v42[-*a1] >> 3);
        v46 = v45 + 1;
        if (v45 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v44) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (v48 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_98;
            }

LABEL_92:
            operator new();
          }

LABEL_93:
          v72 = 24 * v45;
          *v72 = v8;
          *(v72 + 8) = AttributeConstraint;
          *(v72 + 16) = v41;
          v27 = 24 * v45 + 24;
          v73 = (v72 - (v42 - v44));
          memcpy(v73, v44, v42 - v44);
          *a1 = v73;
          a1[1] = v27;
          a1[2] = 24 * v48;
          if (!v44)
          {
            goto LABEL_95;
          }

          v56 = v44;
          goto LABEL_68;
        }

        goto LABEL_97;
      }

      goto LABEL_83;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = *a1 + 32 * v5;
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v7 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7 == -8192;
      }

      if (v13)
      {
        v11 = v6;
      }

      v14 = v5 + v12++;
      v5 = v14 & (v2 - 1);
      v6 = *a1 + 32 * v5;
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 8;
      }
    }

    if (v11)
    {
      v6 = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = v6;
  v9 = *(a1 + 8);
  if (4 * v9 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v9 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v6 = v17;
    ++*(v16 + 8);
    if (*v6 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v9 + 1;
  if (*v6 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v10 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = v10;
  *(v6 + 24) = 0;
  return v6 + 8;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v12 = 0;
    v13 = 1;
    while (v8 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8 == -8192;
      }

      if (v14)
      {
        v12 = v7;
      }

      v15 = v6 + v13++;
      v6 = v15 & v5;
      v7 = (*a1 + 24 * (v15 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v12)
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
LABEL_24:
    v17 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::LookupBucketFor<mlir::Value>(v17, v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = v18;
    ++*(v17 + 8);
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
  v11 = *a2;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v11;
  return v7 + 1;
}

void *std::deque<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>,mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (result + 32 * v6);
    v8 = *v7;
    if (*v7 == a3)
    {
LABEL_3:
      *a4 = v7;
    }

    else
    {
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
        v6 = v12 & (a2 - 1);
        v7 = (result + 32 * v6);
        v8 = *v7;
        if (*v7 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v9)
      {
        v7 = v9;
      }

      *a4 = v7;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>,mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
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
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
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
        v15 = &result[4 * v11];
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
        v25 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          LODWORD(v26) = -348639895 * ((v27 >> 47) ^ v27);
          v28 = *(a1 + 16) - 1;
          v29 = v28 & v26;
          v22 = *a1 + 32 * v29;
          v30 = *v22;
          if (*v22 != v25)
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
                v31 = v22;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v22 = *a1 + 32 * v29;
              v30 = *v22;
              if (*v22 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v22 = v31;
            }
          }

LABEL_24:
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *v22 = v25;
          *(v22 + 24) = 0;
          *(v22 + 8) = *(v16 + 1);
          *(v16 + 1) = 0;
          *(v22 + 16) = *(v16 + 4);
          *(v16 + 4) = 0;
          v23 = *(v22 + 20);
          *(v22 + 20) = *(v16 + 5);
          *(v16 + 5) = v23;
          v24 = *(v22 + 24);
          *(v22 + 24) = *(v16 + 6);
          *(v16 + 6) = v24;
          ++*(a1 + 8);
          llvm::deallocate_buffer(0, (24 * v24));
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
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
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  if (v1)
  {
    v3 = 32 * v1;
    while ((*v2 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v2 = (v2 + 32);
      v3 -= 32;
      if (!v3)
      {
        llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)));
      }
    }

    llvm::deallocate_buffer(*(v2 + 1), (24 * *(v2 + 6)));
  }

  llvm::deallocate_buffer(*a1, 0);
}

void sub_256641D04()
{
  v2 = *(v1 + 16);
  *(v0 + 16) = v2;
  if (!v2)
  {
    JUMPOUT(0x256641D10);
  }

  JUMPOUT(0x256641CBCLL);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>>(uint64_t *result, uint64_t *a2)
{
  result[1] = a2[1];
  v2 = *(result + 4);
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = *a2;
    do
    {
      v6 = v4 + 32 * v3;
      v7 = (v5 + 32 * v3);
      v8 = *v7;
      *v6 = *v7;
      if ((v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        llvm::deallocate_buffer(0, 0);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == -8192;
      }

      if (v18)
      {
        v16 = v11;
      }

      v19 = v10 + v17++;
      v10 = v19 & v9;
      v11 = (v6 + 16 * (v19 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v16)
    {
      v11 = v16;
    }

LABEL_5:
    v23 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        v15 = *a3;
        *v11 = *a2;
        v11[1] = v15;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v20 = result;
    v21 = a4;
    v22 = a3;
    llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v20, a2, &v23);
    a3 = v22;
    result = v20;
    a4 = v21;
    v11 = v23;
    ++*(v20 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(mlir::detail::StorageUniquerImpl ***this, mlir::pdl_to_pdl_interp::Position *a2)
{
  v7 = a2;
  v3 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(*this, 0, 0, &v7);
  v4 = *this;
  {
    v6 = v4;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo();
    v4 = v6;
  }

  mlir::StorageUniquer::getSingletonImpl(v4, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return v3;
}

void *llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::grow(uint64_t a1, int a2)
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
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
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
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          v28 = (-348639895 * ((v27 >> 47) ^ v27)) & v16;
          v23 = &result[2 * v28];
          v29 = *v23;
          if (v25 != *v23)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -8192;
              }

              if (v32)
              {
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v16;
              v23 = &result[2 * (v33 & v16)];
              v29 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v30)
            {
              v23 = v30;
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
      *(v20 - 2) = -4096;
      *v20 = -4096;
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
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 20;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(uint64_t **this)
{
  v2 = *this;
  {
    v6 = v2;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull();
    v2 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v2, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id);
  v4 = *this;
  {
    v7 = v4;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull();
    v4 = v7;
  }

  mlir::StorageUniquer::getSingletonImpl(v4, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(*a1, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 7;
  v6 = *v2;
  *(Slow + 24) = *v2;
  *Slow = &unk_286867508;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::TypePosition::~TypePosition(mlir::pdl_to_pdl_interp::TypePosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 22;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t getTreePredicates(void *a1, uint64_t a2, uint64_t **a3, uint64_t a4, mlir::pdl_to_pdl_interp::OperationPosition *a5, uint64_t a6)
{
  v162 = *MEMORY[0x277D85DE8];
  v153 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v153);
  v147 = a3;
  if (*(a5 + 8))
  {
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a3);
    v14 = a1[1];
    v13 = a1[2];
    if (v14 >= v13)
    {
      v16 = *a1;
      v17 = 0xAAAAAAAAAAAAAAABLL * (&v14[-*a1] >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_149;
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v21 = (8 * (&v14[-*a1] >> 3));
      *v21 = a5;
      v21[1] = IsNotNull;
      v21[2] = v12;
      v15 = 24 * v17 + 24;
      v22 = v21 - (v14 - v16);
      memcpy(v22, v16, v14 - v16);
      *a1 = v22;
      a1[1] = v15;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = a5;
      *(v14 + 1) = IsNotNull;
      v15 = (v14 + 24);
      *(v14 + 2) = v12;
    }

    a1[1] = v15;
  }

  mlir::pdl::OperationOp::getOpName(&DefiningOp, &v158);
  if (v159 == 1)
  {
    OperationName = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName(a3, v158.n128_i64[0], v158.n128_i64[1]);
    v26 = a1[1];
    v25 = a1[2];
    if (v26 >= v25)
    {
      v28 = *a1;
      v29 = 0xAAAAAAAAAAAAAAABLL * (&v26[-*a1] >> 3);
      v30 = v29 + 1;
      if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_149;
      }

      v31 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v28) >> 3);
      if (2 * v31 > v30)
      {
        v30 = 2 * v31;
      }

      if (v31 >= 0x555555555555555)
      {
        v32 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        if (v32 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v33 = (8 * (&v26[-*a1] >> 3));
      *v33 = a5;
      v33[1] = OperationName;
      v33[2] = v24;
      v27 = 24 * v29 + 24;
      v34 = v33 - (v26 - v28);
      memcpy(v34, v28, v26 - v28);
      *a1 = v34;
      a1[1] = v27;
      a1[2] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v26 = a5;
      *(v26 + 1) = OperationName;
      v27 = (v26 + 24);
      *(v26 + 2) = v24;
    }

    a1[1] = v27;
  }

  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 0);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v36 = *(DefiningOp + 72);
  }

  else
  {
    v36 = 0;
  }

  v37 = ODSOperandIndexAndLength;
  v38 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v145 = v36 + 32 * ODSOperandIndexAndLength;
  v149 = v38 - ODSOperandIndexAndLength;
  mlir::ValueRange::ValueRange(v156.n128_u64, v145, v149);
  v157 = v156;
  mlir::ValueRange::getTypes(&v157, &v158);
  v39 = v158.n128_i64[1];
  v40 = v160;
  v154 = v158;
  v143 = v38;
  v144 = v37;
  if (v158.n128_u64[1] == v160)
  {
    if (v38 != v37)
    {
      goto LABEL_57;
    }

    v41 = 0;
  }

  else
  {
    v41 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v154, v39) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        ++v41;
      }

      v39 = v154.n128_u64[1] + 1;
      v154.n128_u64[1] = v39;
    }

    while (v39 != v40);
    if (v149 != v41)
    {
      if (!v41)
      {
        goto LABEL_57;
      }

      OperandCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast(a3, v41);
      v45 = a1[1];
      v44 = a1[2];
      if (v45 < v44)
      {
        goto LABEL_42;
      }

LABEL_45:
      v47 = *a1;
      v48 = 0xAAAAAAAAAAAAAAABLL * (&v45[-*a1] >> 3);
      v49 = v48 + 1;
      if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_149;
      }

      v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v47) >> 3);
      if (2 * v50 > v49)
      {
        v49 = 2 * v50;
      }

      if (v50 >= 0x555555555555555)
      {
        v51 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (v51 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v52 = a1;
      v53 = (8 * (&v45[-*a1] >> 3));
      *v53 = a5;
      v53[1] = OperandCountAtLeast;
      v53[2] = v43;
      v46 = 24 * v48 + 24;
      v54 = v53 - (v45 - v47);
      memcpy(v54, v47, v45 - v47);
      *v52 = v54;
      v52[1] = v46;
      v52[2] = 0;
      a1 = v52;
      if (v47)
      {
        operator delete(v47);
      }

      goto LABEL_56;
    }
  }

  OperandCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount(a3, v41);
  v45 = a1[1];
  v44 = a1[2];
  if (v45 >= v44)
  {
    goto LABEL_45;
  }

LABEL_42:
  *v45 = a5;
  *(v45 + 1) = OperandCountAtLeast;
  v46 = (v45 + 24);
  *(v45 + 2) = v43;
LABEL_56:
  a1[1] = v46;
LABEL_57:
  v55 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 2u);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v56 = *(DefiningOp + 72);
  }

  else
  {
    v56 = 0;
  }

  v57 = (HIDWORD(v55) + v55) - v55;
  v141 = v56 + 32 * v55;
  mlir::ValueRange::ValueRange(v156.n128_u64, v141, v57);
  v157 = v156;
  mlir::ValueRange::getTypes(&v157, &v158);
  v58 = v158.n128_i64[1];
  v59 = v160;
  v154 = v158;
  v148 = a5;
  *v146 = v57;
  if (v158.n128_u64[1] != v160)
  {
    v61 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v154, v58) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        ++v61;
      }

      v58 = v154.n128_u64[1] + 1;
      v154.n128_u64[1] = v58;
    }

    while (v58 != v59);
    v60 = v57;
    if (v57 == v61)
    {
      goto LABEL_67;
    }

    if (!v61)
    {
      goto LABEL_96;
    }

    ResultCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast(a3, v61);
    v70 = a1[1];
    v69 = a1[2];
    if (v70 < v69)
    {
      *v70 = a5;
      *(v70 + 1) = ResultCountAtLeast;
      v66 = (v70 + 24);
      *(v70 + 2) = v68;
      goto LABEL_95;
    }

    v79 = *a1;
    v80 = 0xAAAAAAAAAAAAAAABLL * (&v70[-*a1] >> 3);
    v81 = v80 + 1;
    if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_149;
    }

    v82 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v79) >> 3);
    if (2 * v82 > v81)
    {
      v81 = 2 * v82;
    }

    if (v82 >= 0x555555555555555)
    {
      v83 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v83 = v81;
    }

    if (!v83)
    {
      v84 = (8 * (&v70[-*a1] >> 3));
      *v84 = a5;
      v84[1] = ResultCountAtLeast;
      v84[2] = v68;
      v66 = 24 * v80 + 24;
      v85 = v84 - (v70 - v79);
      memcpy(v85, v79, v70 - v79);
      *a1 = v85;
      a1[1] = v66;
      a1[2] = 0;
      if (!v79)
      {
        goto LABEL_95;
      }

      v78 = v79;
      goto LABEL_94;
    }

    if (v83 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_150:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v57)
  {
    goto LABEL_96;
  }

  v60 = 0;
LABEL_67:
  ResultCount = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount(a3, v60);
  v64 = a1[1];
  v65 = a1[2];
  if (v64 >= v65)
  {
    v71 = *a1;
    v72 = 0xAAAAAAAAAAAAAAABLL * (&v64[-*a1] >> 3);
    v73 = v72 + 1;
    if (v72 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v74 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v71) >> 3);
      if (2 * v74 > v73)
      {
        v73 = 2 * v74;
      }

      if (v74 >= 0x555555555555555)
      {
        v75 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v75 = v73;
      }

      if (v75)
      {
        if (v75 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v76 = (8 * (&v64[-*a1] >> 3));
      *v76 = v148;
      v76[1] = ResultCount;
      v76[2] = v63;
      v66 = 24 * v72 + 24;
      v77 = v76 - (v64 - v71);
      memcpy(v77, v71, v64 - v71);
      *a1 = v77;
      a1[1] = v66;
      a1[2] = 0;
      if (!v71)
      {
        goto LABEL_95;
      }

      v78 = v71;
LABEL_94:
      operator delete(v78);
      goto LABEL_95;
    }

LABEL_149:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *v64 = a5;
  *(v64 + 1) = ResultCount;
  v66 = (v64 + 24);
  *(v64 + 2) = v63;
LABEL_95:
  a1[1] = v66;
LABEL_96:
  v142 = a6;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&DefiningOp);
  v87 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 1u);
  v88 = a1;
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v89 = *(DefiningOp + 72);
  }

  else
  {
    v89 = 0;
  }

  v154.n128_u64[0] = AttributeValueNames;
  v154.n128_u64[1] = v89 + 32 * v87;
  v155 = (HIDWORD(v87) + v87) - v87;
  Value = mlir::ArrayAttr::getValue(&v154);
  v91 = v154.n128_u64[1];
  result = mlir::ArrayAttr::getValue(&v154);
  v94 = result + 8 * v93;
  if (v94 != Value && v155)
  {
    v95 = (v91 + 24);
    v96 = v155 - 1;
    v97 = Value + 8;
    do
    {
      v98 = *v95;
      v95 += 4;
      v151 = *(v97 - 8);
      v99 = mlir::StringAttr::getValue(&v151);
      v157.n128_u64[0] = v148;
      v101 = *v147;
      v100 = v147[1];
      v161 = 261;
      v158.n128_u64[0] = v99;
      v158.n128_u64[1] = v102;
      v156.n128_u64[0] = mlir::StringAttr::get(v100, v158.n128_u64, v103);
      v104 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(v101, 0, 0, &v157, &v156);
      result = getTreePredicates(v88, v98, v147, a4, v104);
      v106 = v96-- != 0;
      if (v97 == v94)
      {
        break;
      }

      v97 += 8;
    }

    while (v106);
  }

  if (v149 == 1 && (v107 = *(v145 + 24), *(*(*(v107 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
  {
    v115 = v148;
    if (*(v148 + 8))
    {
      result = mlir::pdl_to_pdl_interp::OperationPosition::isOperandDefiningOp(v148);
      v108 = v147;
      if (!result)
      {
        goto LABEL_122;
      }

      v107 = *(v145 + 24);
      v115 = v148;
    }

    else
    {
      v108 = v147;
    }

    v158.n128_u64[0] = 0;
    v154.n128_u64[0] = v115;
    v157.n128_u8[0] = 1;
    v116 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v108, 0, 0, &v154, &v158, &v157);
    result = getTreePredicates(v88, v107, v108, a4, v116);
  }

  else
  {
    v108 = v147;
    if (v143 != v144)
    {
      v109 = 0;
      v110 = 0;
      v111 = v145 + 24;
      do
      {
        v113 = *v111;
        v114 = *(*(*(*v111 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v109 |= v114 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
        if ((v142 & 0x100000000) == 0 || v142 != v110)
        {
          if (v109)
          {
            v158.n128_u64[0] = v110 | 0x100000000;
            v154.n128_u64[0] = v148;
            v157.n128_u8[0] = v114 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
            v112 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v147, 0, 0, &v154, &v158, &v157);
          }

          else
          {
            v158.n128_u64[0] = v148;
            v154.n128_u32[0] = v110;
            v112 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v147, 0, 0, &v158, &v154);
          }

          result = getTreePredicates(v88, v113, v147, a4, v112);
        }

        ++v110;
        v111 += 32;
      }

      while (v149 != v110);
    }
  }

LABEL_122:
  v117 = v148;
  if (*v146)
  {
    v118 = v88;
    if (*v146 != 1 || (v119 = *(v141 + 24), *(*(*(v119 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
    {
      v120 = 0;
      v121 = 0;
      v122 = v141 + 24;
      v123 = *v146;
      while (1)
      {
        v126 = *v122;
        v127 = *(*(*(*v122 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v150 = v120 | (v127 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
        if (v120 & 1 | (v127 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
        {
          v158.n128_u64[0] = v121 | 0x100000000;
          v154.n128_u64[0] = v117;
          v157.n128_u8[0] = v127 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
          v128 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v108, 0, 0, &v154, &v158, &v157);
          v129 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v108);
          v132 = v118[1];
          v131 = v118[2];
          if (v132 < v131)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v158.n128_u64[0] = v117;
          v154.n128_u32[0] = v121;
          v128 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v108, 0, 0, &v158, &v154);
          v129 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v108);
          v132 = v118[1];
          v131 = v118[2];
          if (v132 < v131)
          {
LABEL_126:
            *v132 = v128;
            v132[1] = v129;
            v124 = (v132 + 3);
            v132[2] = v130;
            goto LABEL_127;
          }
        }

        v133 = *v118;
        v134 = 0xAAAAAAAAAAAAAAABLL * ((v132 - *v118) >> 3);
        v135 = v134 + 1;
        if (v134 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_149;
        }

        v136 = 0xAAAAAAAAAAAAAAABLL * ((v131 - v133) >> 3);
        if (2 * v136 > v135)
        {
          v135 = 2 * v136;
        }

        if (v136 >= 0x555555555555555)
        {
          v137 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v137 = v135;
        }

        if (v137)
        {
          if (v137 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_150;
        }

        v138 = (8 * ((v132 - *v118) >> 3));
        *v138 = v128;
        v138[1] = v129;
        v138[2] = v130;
        v124 = 24 * v134 + 24;
        v139 = 24 * v134 - (v132 - v133);
        memcpy(v138 - (v132 - v133), v133, v132 - v133);
        *v118 = v139;
        v118[1] = v124;
        v118[2] = 0;
        if (v133)
        {
          operator delete(v133);
        }

        v108 = v147;
        v117 = v148;
        v123 = *v146;
LABEL_127:
        v118[1] = v124;
        v158.n128_u64[0] = v128;
        v125 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v108, 0, 0, &v158);
        result = getTreePredicates(v118, v126, v108, a4, v125);
        ++v121;
        v122 += 32;
        v120 = v150;
        if (v123 == v121)
        {
          return result;
        }
      }
    }

    v158.n128_u64[0] = 0;
    v154.n128_u64[0] = v148;
    v157.n128_u8[0] = 1;
    v158.n128_u64[0] = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v108, 0, 0, &v154, &v158, &v157);
    v140 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v108, 0, 0, &v158);
    return getTreePredicates(v88, v119, v108, a4, v140);
  }

  return result;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  {
    v10 = v6;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName();
    v6 = v10;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v6, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id);
  v8 = *a1;
  mlir::OperationName::OperationName(&v11, a2, a3, *(a1 + 8));
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v8, 0, 0, &v11);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 24;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id, 37 * v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

_DWORD *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 4;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 27;
  Slow[2] = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v16[0] = a2;
  v16[1] = a3;
  v5 = *a5;
  v15[0] = *a4;
  v15[1] = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((LODWORD(v15[0]) >> 4) ^ (LODWORD(v15[0]) >> 9)) << 32));
  v14 = v15;
  v13[0] = v15;
  v13[1] = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 40;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  {
    v12 = a3;
    v13 = a6;
    v11 = a5;
    v14 = a2;
    v15 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>();
    a2 = v14;
    a4 = v15;
    a3 = v12;
    a6 = v13;
    a5 = v11;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id;
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a4;
  v18 = v8;
  v19[0] = *a6;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(v21, 0, v21, v22, &v17, &v18, v19);
  v16 = &v17;
  *&v21[0] = &v17;
  *(&v21[0] + 1) = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t a6, char *a7)
{
  v18 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::OperationPosition *>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  if (*(a6 + 4) == 1)
  {
    LOBYTE(v20) = 1;
    *(&v20 + 1) = *a6;
    v12 = *(&v20 + 1) ^ 0xFF51AFD7ED558CCDLL;
    v13 = 0x9DDFEA08EB382D69 * (((8 * v20) | 5) ^ v12);
    v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  }

  else
  {
    v14 = 0xB2B24F688DC4164DLL;
  }

  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v11, a4, v14);
  v20 = v19;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v20, v15, a4, *a7);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v20, v16, a4);
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::OperationPosition *>(char *a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 8 - v8;
    v32 = &a1[8 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 8 - v8;
  v32 = &a1[8 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(char *a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 1 - v8;
    v32 = &a1[1 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 1 - v8;
  v32 = &a1[1 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v4 = *(a2 + 36);
  v5 = *(v2 + 12);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return *(a2 + 40) == *(v2 + 16);
    }

    return 0;
  }

  if (*(a2 + 32) != *(v2 + 2))
  {
    return 0;
  }

  return *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 48;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 48;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
  v14 = &v15;
  v13[0] = &v15;
  v13[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 40;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  {
    v12 = a3;
    v13 = a6;
    v11 = a5;
    v14 = a2;
    v15 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>();
    a2 = v14;
    a4 = v15;
    a3 = v12;
    a6 = v13;
    a5 = v11;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id;
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a4;
  v18 = v8;
  v19[0] = *a6;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(v21, 0, v21, v22, &v17, &v18, v19);
  v16 = &v17;
  *&v21[0] = &v17;
  *(&v21[0] + 1) = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v4 = *(a2 + 36);
  v5 = *(v2 + 12);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return *(a2 + 40) == *(v2 + 16);
    }

    return 0;
  }

  if (*(a2 + 32) != *(v2 + 2))
  {
    return 0;
  }

  return *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 48;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 48;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    a1 = v10;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 6;
  *Slow = &unk_2868675A8;
  *(Slow + 8) = 0;
  v6 = *v2;
  *(Slow + 40) = *(v2 + 2);
  *(Slow + 24) = v6;
  v7 = *v2;
  *Slow = &unk_286867558;
  *(Slow + 8) = v7;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ResultGroupPosition::~ResultGroupPosition(mlir::pdl_to_pdl_interp::ResultGroupPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::Position,std::tuple<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>,(mlir::pdl_to_pdl_interp::Predicates::Kind)6>::~PredicateBase(mlir::pdl_to_pdl_interp::Position *a1)
{
  mlir::pdl_to_pdl_interp::Position::~Position(a1);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
  v14 = &v15;
  v13[0] = &v15;
  v13[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 5;
  *Slow = &unk_286867618;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_2868675C8;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ResultPosition::~ResultPosition(mlir::pdl_to_pdl_interp::ResultPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::OperationPosition *,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)5>::~PredicateBase(mlir::pdl_to_pdl_interp::Position *a1)
{
  mlir::pdl_to_pdl_interp::Position::~Position(a1);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(*a1, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 26;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(_BYTE *result, uint64_t **a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id)
  {
    v3 = result;
    v27 = *result;
    v4 = *a2;
    v5 = a2[1];
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v9 = v5[1];
    v10 = v5[2];
    if (v9 >= v10)
    {
      v12 = *v5;
      v13 = 0xAAAAAAAAAAAAAAABLL * (&v9[-*v5] >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v17 = (8 * (&v9[-*v5] >> 3));
      *v17 = *v4;
      v17[1] = IsNotNull;
      v17[2] = v8;
      v11 = 24 * v13 + 24;
      v18 = v17 - (v9 - v12);
      memcpy(v18, v12, v9 - v12);
      *v5 = v18;
      v5[1] = v11;
      v5[2] = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v9 = *v4;
      *(v9 + 1) = IsNotNull;
      *(v9 + 2) = v8;
      v11 = (v9 + 24);
    }

    v5[1] = v11;
    ODSOperandIndexAndLength = mlir::pdl::OperandOp::getODSOperandIndexAndLength(&v27, 0);
    if ((*(v27 + 46) & 0x80) != 0)
    {
      v20 = *(v27 + 72);
    }

    else
    {
      v20 = 0;
    }

    result = v3;
    v21 = a2;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength)
    {
      v22 = *(v20 + 32 * ODSOperandIndexAndLength + 24);
      if (v22)
      {
        v23 = a2[2];
        v24 = a2[3];
        v25 = v21[1];
        v28 = **v21;
        v26 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v23, 0, 0, &v28);
        getTreePredicates(v25, v22, v23, v24, v26);
        result = v3;
      }
    }

    result[8] = 1;
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(_BYTE *result, void *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id)
  {
    v3 = result;
    v19 = *result;
    v4 = *a2;
    if (*(**a2 + 36))
    {
      v5 = a2[1];
      v6 = a2;
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
      v9 = *(v5 + 8);
      v10 = *(v5 + 16);
      if (v9 >= v10)
      {
        v12 = *v5;
        v13 = 0xAAAAAAAAAAAAAAABLL * (&v9[-*v5] >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v17 = (8 * (&v9[-*v5] >> 3));
        *v17 = *v4;
        v17[1] = IsNotNull;
        v17[2] = v8;
        v11 = 24 * v13 + 24;
        v18 = v17 - (v9 - v12);
        memcpy(v18, v12, v9 - v12);
        *v5 = v18;
        *(v5 + 8) = v11;
        *(v5 + 16) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v9 = *v4;
        *(v9 + 1) = IsNotNull;
        *(v9 + 2) = v8;
        v11 = (v9 + 24);
      }

      a2 = v6;
      *(v5 + 8) = v11;
    }

    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v19, v3 + 8, a2);
    return v3;
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(_BYTE *result, uint64_t *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
  {
    v49 = result;
    v50 = *result;
    Index = mlir::pdl::ResultOp::getIndex(&v50);
    v6 = *a2;
    v5 = a2[1];
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v10 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = 0xAAAAAAAAAAAAAAABLL * (&v10[-*v6] >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_48;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_49;
      }

      v17 = (8 * (&v10[-*v6] >> 3));
      *v17 = *v5;
      v17[1] = IsNotNull;
      v17[2] = v8;
      v11 = 24 * v13 + 24;
      v18 = v17 - (v10 - v12);
      memcpy(v18, v12, v10 - v12);
      *v6 = v18;
      *(v6 + 8) = v11;
      *(v6 + 16) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v10 = *v5;
      *(v10 + 1) = IsNotNull;
      *(v10 + 2) = v8;
      v11 = (v10 + 24);
    }

    *(v6 + 8) = v11;
    v19 = *a2[2];
    v52 = *a2[1];
    v51 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v52) + 1;
    v20 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(v19, 0, 0, &v52, &v51);
    v21 = *a2;
    v22 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v25 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v25 >= v24)
    {
      v27 = *v21;
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v21) >> 3);
      v29 = v28 + 1;
      if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_48;
      }

      v30 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 3);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x555555555555555)
      {
        v31 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_49;
      }

      v32 = (8 * ((v25 - *v21) >> 3));
      *v32 = v20;
      v32[1] = v22;
      v32[2] = v23;
      v26 = 24 * v28 + 24;
      v33 = 24 * v28 - (v25 - v27);
      memcpy(v32 - (v25 - v27), v27, v25 - v27);
      *v21 = v33;
      *(v21 + 8) = v26;
      *(v21 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v25 = v20;
      v25[1] = v22;
      v26 = (v25 + 3);
      v25[2] = v23;
    }

    *(v21 + 8) = v26;
    v34 = a2[2];
    v52 = v20;
    v51 = Index;
    v35 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v34, 0, 0, &v52, &v51);
    v36 = *a2;
    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a2[2], *a2[1]);
    v40 = *(v36 + 8);
    v39 = *(v36 + 16);
    if (v40 < v39)
    {
      *v40 = v35;
      v40[1] = EqualTo;
      v41 = (v40 + 3);
      v40[2] = v38;
LABEL_46:
      *(v36 + 8) = v41;
      getTreePredicates(*a2, *(*(v50 + 72) + 24), a2[2], a2[4], v20);
      result = v49;
      v49[8] = 1;
      return result;
    }

    v42 = *v36;
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v36) >> 3);
    v44 = v43 + 1;
    if (v43 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v42) >> 3);
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x555555555555555)
      {
        v46 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v46 = v44;
      }

      if (!v46)
      {
        v47 = (8 * ((v40 - *v36) >> 3));
        *v47 = v35;
        v47[1] = EqualTo;
        v47[2] = v38;
        v41 = 24 * v43 + 24;
        v48 = (24 * v43 - (v40 - v42));
        memcpy(v48, v42, v40 - v42);
        *v36 = v48;
        *(v36 + 8) = v41;
        *(v36 + 16) = 0;
        if (v42)
        {
          operator delete(v42);
        }

        goto LABEL_46;
      }

      if (v46 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_49:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_48:
    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(_BYTE *result, uint64_t *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
  {
    v50 = result;
    v51 = *result;
    Index = mlir::pdl::ResultsOp::getIndex(&v51);
    if ((Index & 0x100000000) != 0)
    {
      v6 = *a2;
      v5 = a2[1];
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
      v10 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (v10 >= v9)
      {
        v12 = *v6;
        v13 = 0xAAAAAAAAAAAAAAABLL * (&v10[-*v6] >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_50;
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_51;
        }

        v17 = (8 * (&v10[-*v6] >> 3));
        *v17 = *v5;
        v17[1] = IsNotNull;
        v17[2] = v8;
        v11 = 24 * v13 + 24;
        v18 = v17 - (v10 - v12);
        memcpy(v18, v12, v10 - v12);
        *v6 = v18;
        *(v6 + 8) = v11;
        *(v6 + 16) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = *v5;
        *(v10 + 1) = IsNotNull;
        *(v10 + 2) = v8;
        v11 = (v10 + 24);
      }

      *(v6 + 8) = v11;
    }

    v19 = *a2[2];
    v54 = *a2[1];
    LODWORD(v53) = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v54) + 1;
    v20 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(v19, 0, 0, &v54, &v53);
    v21 = *a2;
    v22 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v25 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v25 >= v24)
    {
      v27 = *v21;
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v21) >> 3);
      v29 = v28 + 1;
      if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_50;
      }

      v30 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 3);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x555555555555555)
      {
        v31 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_51;
      }

      v32 = (8 * ((v25 - *v21) >> 3));
      *v32 = v20;
      v32[1] = v22;
      v32[2] = v23;
      v26 = 24 * v28 + 24;
      v33 = 24 * v28 - (v25 - v27);
      memcpy(v32 - (v25 - v27), v27, v25 - v27);
      *v21 = v33;
      *(v21 + 8) = v26;
      *(v21 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v25 = v20;
      v25[1] = v22;
      v26 = (v25 + 3);
      v25[2] = v23;
    }

    *(v21 + 8) = v26;
    v34 = a2[2];
    v35 = *a2[3];
    v53 = v20;
    v54 = Index & 0xFFFFFFFFFFLL;
    v52 = v35;
    v36 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v34, 0, 0, &v53, &v54, &v52);
    v37 = *a2;
    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a2[2], *a2[1]);
    v41 = *(v37 + 8);
    v40 = *(v37 + 16);
    if (v41 < v40)
    {
      *v41 = v36;
      v41[1] = EqualTo;
      v42 = (v41 + 3);
      v41[2] = v39;
LABEL_48:
      *(v37 + 8) = v42;
      getTreePredicates(*a2, *(*(v51 + 72) + 24), a2[2], a2[4], v20);
      result = v50;
      v50[8] = 1;
      return result;
    }

    v43 = *v37;
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v37) >> 3);
    v45 = v44 + 1;
    if (v44 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v43) >> 3);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x555555555555555)
      {
        v47 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v47 = v45;
      }

      if (!v47)
      {
        v48 = (8 * ((v41 - *v37) >> 3));
        *v48 = v36;
        v48[1] = EqualTo;
        v48[2] = v39;
        v42 = 24 * v44 + 24;
        v49 = (24 * v44 - (v41 - v43));
        memcpy(v49, v43, v41 - v43);
        *v37 = v49;
        *(v37 + 8) = v42;
        *(v37 + 16) = 0;
        if (v43)
        {
          operator delete(v43);
        }

        goto LABEL_48;
      }

      if (v47 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_51:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_50:
    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = __ROR8__(__PAIR64__(v5, HIDWORD(v15)) + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v15 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v15 ^ 0xFF51AFD7ED558CCDLL)));
  v14 = &v15;
  v18[0] = &v15;
  v18[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id, (-348639895 * ((v7 >> 47) ^ v7)) ^ HIDWORD(v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 0;
  *Slow = &unk_286867278;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_286867228;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 32 * v8);
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
        v9 = (v4 + 32 * v8);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
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

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *v3 - 0xAE502812AA7333) ^ HIDWORD(*v3));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        LODWORD(v17) = -348639895 * ((v18 >> 47) ^ v18);
        v19 = *(result + 16) - 1;
        v20 = v19 & v17;
        v13 = *result + 32 * v20;
        v21 = *v13;
        if (v16 != *v13)
        {
          v22 = 0;
          v23 = 1;
          while (v21 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v21 == -8192;
            }

            if (v24)
            {
              v22 = v13;
            }

            v25 = v20 + v23++;
            v20 = v25 & v19;
            v13 = *result + 32 * v20;
            v21 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v13 = v22;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (24 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 24 * v8);
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
        v9 = (v4 + 24 * (v15 & v7));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::grow(uint64_t a1, int a2)
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
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = &result[3 * v11];
      do
      {
        *v13 = -4096;
        v13 += 3;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[3] = -4096;
      v15 += 6;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
LABEL_7:
      v10 = &v4[3 * v3];
      do
      {
        *v6 = -4096;
        v6 += 3;
      }

      while (v6 != v10);
      goto LABEL_9;
    }

    v7 = v5 / 0x18 + 1;
    v6 = &v4[3 * (v7 & 0x1FFFFFFFFFFFFFFELL)];
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = -4096;
      v8[3] = -4096;
      v8 += 6;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  while (a2 != a3)
  {
    v12 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v13 >> 47) ^ v13);
      LODWORD(v13) = -348639895 * ((v14 >> 47) ^ v14);
      v15 = *(result + 16) - 1;
      v16 = v15 & v13;
      v11 = *result + 24 * v16;
      v17 = *v11;
      if (v12 != *v11)
      {
        v18 = 0;
        v19 = 1;
        while (v17 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v17 == -8192;
          }

          if (v20)
          {
            v18 = v11;
          }

          v21 = v16 + v19++;
          v16 = v21 & v15;
          v11 = *result + 24 * (v21 & v15);
          v17 = *v11;
          if (v12 == *v11)
          {
            goto LABEL_13;
          }
        }

        if (v18)
        {
          v11 = v18;
        }
      }

LABEL_13:
      *v11 = v12;
      *(v11 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UsersPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position *&,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UsersPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 10;
  *Slow = &unk_286867688;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_286867638;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::UsersPosition::~UsersPosition(mlir::pdl_to_pdl_interp::UsersPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,BOOL>,(mlir::pdl_to_pdl_interp::Predicates::Kind)10>::~PredicateBase(mlir::pdl_to_pdl_interp::Position *a1)
{
  mlir::pdl_to_pdl_interp::Position::~Position(a1);

  JUMPOUT(0x259C63180);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ForEachPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ForEachPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 11;
  *Slow = &unk_2868676F8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_2868676A8;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ForEachPosition::~ForEachPosition(mlir::pdl_to_pdl_interp::ForEachPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)11>::~PredicateBase(mlir::pdl_to_pdl_interp::Position *a1)
{
  mlir::pdl_to_pdl_interp::Position::~Position(a1);

  JUMPOUT(0x259C63180);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](uint64_t a1, void *a2)
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
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
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
    llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
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
  v7[1] = 0;
  return v7 + 1;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 8;
  *(Slow + 24) = *v2;
  *Slow = &unk_286867718;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::AttributeLiteralPosition::~AttributeLiteralPosition(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *a1;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v10 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(v9, 0, 0, &v14);
  v11 = *a1;
  {
    v13 = v11;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo();
    v11 = v13;
  }

  mlir::StorageUniquer::getSingletonImpl(v11, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return v10;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  {
    v10 = a4;
    v11 = a2;
    v9 = a3;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>();
    a4 = v10;
    a2 = v11;
    a3 = v9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id;
  v17[0] = a2;
  v17[1] = a3;
  v6 = a4[1];
  v13 = *a4;
  v14 = v6;
  v15 = a4[2];
  *v16 = *(a4 + 6);
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>(v18, 0, v18, v19, &v13, &v14, &v15, v16);
  v12 = &v13;
  *&v18[0] = &v13;
  *(&v18[0] + 1) = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v5, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v22 = a2;
  v14 = llvm::hash_value(*a5, *(a5 + 8));
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, v14);
  v23 = v22;
  v16 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(*a6, *a6 + 8 * *(a6 + 8));
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v15, a4, v16);
  v24 = v23;
  v18 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(*a7, (*a7 + 8 * *(a7 + 8)));
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, v17, a4, v18);
  v25 = v24;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v25, v19, a4, *a8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v25, v20, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && (!v3 || !memcmp(*(a2 + 8), *v2, v3)))
  {
    v5 = *(a2 + 32);
    if (v5 == *(v2 + 24) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5))
    {
      v6 = *(a2 + 48);
      if (v6 == *(v2 + 40))
      {
        if (!v6)
        {
          return *(a2 + 56) == *(v2 + 48);
        }

        v7 = *(a2 + 40);
        v8 = *(v2 + 32);
        v9 = 8 * v6;
        while (*v7 == *v8)
        {
          ++v7;
          ++v8;
          v9 -= 8;
          if (!v9)
          {
            return *(a2 + 56) == *(v2 + 48);
          }
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v10 = *(*a1 + 6);
  v9[1] = v4;
  v9[2] = v5;
  v9[0] = v3;
  v6 = mlir::pdl_to_pdl_interp::ConstraintQuestion::construct(a2, v9);
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 1), v6);
  }

  return v6;
}

unint64_t mlir::pdl_to_pdl_interp::ConstraintQuestion::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    v4 = 0;
    v10 = a2[3];
    v11 = *a1;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v3 = *a2;
  a1[10] += v2 + 1;
  v4 = *a1;
  v5 = v2 + 1 + *a1;
  if (*a1)
  {
    v6 = v5 > a1[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a1 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_23:
    v7 = v4;
    v8 = v3;
    goto LABEL_24;
  }

  v23 = a1;
  v24 = a2;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v2 + 1, v2 + 1, 0);
  a2 = v24;
  v4 = Slow;
  a1 = v23;
  if (v2 < 8)
  {
    goto LABEL_23;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if ((v4 - v3) < 0x20)
  {
    goto LABEL_24;
  }

  if (v2 < 0x20)
  {
    v9 = 0;
LABEL_17:
    v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
    v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
    v19 = (v3 + v9);
    v20 = (v4 + v9);
    v21 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v22 = *v19++;
      *v20++ = v22;
      v21 += 8;
    }

    while (v21);
    if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v26 = *v8++;
      *v7++ = v26;
    }

    while (v8 != (v3 + v2));
    goto LABEL_25;
  }

  v9 = v2 & 0xFFFFFFFFFFFFFFE0;
  v15 = (v3 + 16);
  v16 = (v4 + 16);
  v17 = v2 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v18 = *v15;
    *(v16 - 1) = *(v15 - 1);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 32;
  }

  while (v17);
  if (v2 != v9)
  {
    if ((v2 & 0x18) == 0)
    {
      v8 = (v3 + v9);
      v7 = (v4 + v9);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_25:
  *(v4 + v2) = 0;
  v10 = a2[3];
  v11 = *a1;
  if (v10)
  {
LABEL_26:
    v27 = a2[2];
    v28 = 8 * v10;
    a1[10] += 8 * v10;
    v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v12 + 8 * v10;
    if (v11)
    {
      v30 = v29 > a1[1];
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v40 = a1;
      v41 = a2;
      v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v10, 8 * v10, 3);
      a2 = v41;
      v12 = v42;
      a1 = v40;
      v31 = v28 - 8;
      if ((v28 - 8) >= 0x18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a1 = v29;
      v31 = v28 - 8;
      if ((v28 - 8) >= 0x18)
      {
LABEL_31:
        v32 = v12;
        v33 = v27;
        if (v12 - v27 >= 0x20)
        {
          v34 = (v31 >> 3) + 1;
          v35 = 8 * (v34 & 0x3FFFFFFFFFFFFFFCLL);
          v32 = (v12 + v35);
          v33 = (v27 + v35);
          v36 = (v27 + 16);
          v37 = (v12 + 16);
          v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v39 = *v36;
            *(v37 - 1) = *(v36 - 1);
            *v37 = v39;
            v36 += 2;
            v37 += 2;
            v38 -= 4;
          }

          while (v38);
          if (v34 == (v34 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v11 = *a1;
            v13 = a2[5];
            if (v13)
            {
              goto LABEL_40;
            }

LABEL_12:
            v14 = 0;
            goto LABEL_52;
          }
        }

        do
        {
LABEL_38:
          v43 = *v33++;
          *v32++ = v43;
        }

        while (v33 != (v27 + 8 * v10));
        goto LABEL_39;
      }
    }

    v32 = v12;
    v33 = v27;
    goto LABEL_38;
  }

LABEL_11:
  v12 = 0;
  v13 = a2[5];
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_40:
  v44 = a2[4];
  v45 = 8 * v13;
  a1[10] += 8 * v13;
  if (v11 && (v14 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8, v14 + v45 <= a1[1]))
  {
    *a1 = v14 + v45;
    v46 = v45 - 8;
    if ((v45 - 8) >= 0x18)
    {
LABEL_43:
      v47 = v14;
      v48 = v44;
      if (v14 - v44 >= 0x20)
      {
        v49 = (v46 >> 3) + 1;
        v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL);
        v47 = (v14 + v50);
        v48 = (v44 + v50);
        v51 = (v44 + 16);
        v52 = (v14 + 16);
        v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v54 = *v51;
          *(v52 - 1) = *(v51 - 1);
          *v52 = v54;
          v51 += 2;
          v52 += 2;
          v53 -= 4;
        }

        while (v53);
        if (v49 == (v49 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_51;
        }
      }

      goto LABEL_50;
    }
  }

  else
  {
    v55 = a1;
    v56 = a2;
    v57 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v13, 8 * v13, 3);
    a2 = v56;
    v14 = v57;
    a1 = v55;
    v46 = v45 - 8;
    if ((v45 - 8) >= 0x18)
    {
      goto LABEL_43;
    }
  }

  v47 = v14;
  v48 = v44;
  do
  {
LABEL_50:
    v58 = *v48++;
    *v47++ = v58;
  }

  while (v48 != (v44 + 8 * v13));
LABEL_51:
  v11 = *a1;
LABEL_52:
  v59 = *(a2 + 48);
  a1[10] += 64;
  v60 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = v60 + 64;
  if (v11)
  {
    v62 = v61 > a1[1];
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v60 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 64, 64, 3);
  }

  else
  {
    *a1 = v61;
  }

  *v60 = 21;
  *(v60 + 8) = v4;
  *(v60 + 16) = v2;
  *(v60 + 24) = v12;
  *(v60 + 32) = v10;
  *(v60 + 40) = v14;
  *(v60 + 48) = v13;
  *(v60 + 56) = v59;
  return v60;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintPosition,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintPosition *)>,mlir::TypeID,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 4;
  *Slow = &unk_2868677B8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  *Slow = &unk_286867768;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ConstraintPosition::~ConstraintPosition(mlir::pdl_to_pdl_interp::ConstraintPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ConstraintPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)4>::~PredicateBase(mlir::pdl_to_pdl_interp::Position *a1)
{
  mlir::pdl_to_pdl_interp::Position::~Position(a1);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 9;
  *(Slow + 24) = *v2;
  *Slow = &unk_2868677D8;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::TypeLiteralPosition::~TypeLiteralPosition(mlir::pdl_to_pdl_interp::TypeLiteralPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

uint64_t getOrCreateChild(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
    v6 = *(a2 + 16 * v5);
    if (v6 == a4)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v5 + v7++;
      v5 = v8 & (a3 - 1);
      v6 = *(a2 + 16 * v5);
      if (v6 == a4)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = a3;
LABEL_8:
  v9 = *(a2 + 16 * v5 + 8);
  v17 = v9;
  v18[0] = 0;
  v19 = v9;
  v20 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(a1 + 48, &v19, &v20, &v21);
  if (v22 != 1)
  {
    return *(a1 + 72) + 16 * *(v21 + 8) + 8;
  }

  v10 = *(a1 + 80);
  *(v21 + 8) = v10;
  v18[1] = v18;
  v19 = &v17;
  if (v10 >= *(a1 + 84))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>&&>>();
  }

  v11 = *(a1 + 72);
  v12 = (v11 + 16 * v10);
  *v12 = v9;
  v18[0] = 0;
  v12[1] = 0;
  v13 = v10 + 1;
  *(a1 + 80) = v13;
  v14 = v11 + 16 * v13 - 16;
  v15 = v18[0];
  v18[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v14 + 8;
}

void mlir::pdl_to_pdl_interp::ExitNode::~ExitNode(mlir::pdl_to_pdl_interp::ExitNode *this)
{
  *this = &unk_286867430;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_286867430;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>,anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>::LookupBucketFor<anonymous namespace::OrderedPredicate>(uint64_t result, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v4 = a3[1];
    v5 = __ROR8__(v4 + 16, 16);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ *a3 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ *a3 ^ 0xFF51AFD7ED558CCDLL)));
    v7 = a2 - 1;
    v8 = (a2 - 1) & ((-348639895 * ((v6 >> 47) ^ v6)) ^ v4);
    v9 = (result + 56 * v8);
    v10 = *v9;
    v11 = v9[1];
    if (*a3 != *v9 || v4 != v11)
    {
      v13 = 0;
      v14 = 1;
      while (v10 != -4096 || v11 != -4096)
      {
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11 == -8192;
        }

        if (v15 && v10 == -8192)
        {
          v13 = v9;
        }

        v17 = v8 + v14++;
        v8 = v17 & v7;
        v9 = (result + 56 * (v17 & v7));
        v10 = *v9;
        v11 = v9[1];
        if (*a3 == *v9 && v4 == v11)
        {
          goto LABEL_7;
        }
      }

      if (v13)
      {
        v9 = v13;
      }
    }

LABEL_7:
    *a4 = v9;
    llvm::deallocate_buffer(0, 0);
  }

  *a4 = 0;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,false>(uint64_t result, uint64_t **a2, uint64_t a3, char a4)
{
  v426 = result;
LABEL_2:
  v5 = a2;
  v414 = a2 - 1;
  j = v426;
  while (1)
  {
    v7 = v5 - j;
    v8 = v7 - 2;
    v426 = j;
    if (v7 > 2)
    {
      v9 = j;
      switch(v7)
      {
        case 3:

        case 4:

        case 5:
      }
    }

    else
    {
      if (v7 < 2)
      {
        return result;
      }

      v5 = a2;
      v9 = j;
      if (v7 == 2)
      {
        v199 = *(a2 - 1);
        v200 = *j;
        v201 = **j;
        OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v201);
        v203 = *(v201 + 16);
        v204 = *v200[1];
        v206 = *(v199 + 16);
        v205 = *(v199 + 20);
        v207 = *(v200 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v199);
        v208 = *(v200 + 4);
        if (v208 < v206 || v206 >= v208 && ((v356 = *(v200 + 5), v356 < v205) || v205 >= v356 && (result < OperationDepth || OperationDepth >= result && ((v357 = *(*v199 + 16), v357 < v203) || v203 >= v357 && ((v358 = **(v199 + 8), v358 < v204) || v204 >= v358 && *(v199 + 24) < v207)))))
        {
          v209 = *v426;
          *v426 = *(a2 - 1);
          *(a2 - 1) = v209;
        }

        return result;
      }
    }

    if (v7 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 != v5)
      {
        v246 = v8 >> 1;
        v247 = v8 >> 1;
        v423 = v7;
        do
        {
          v249 = v247;
          if (v246 >= v247)
          {
            v416 = (2 * v247) | 1;
            v248 = &v426[v416];
            if (2 * v247 + 2 < v7)
            {
              v250 = *v248;
              v251 = v248[1];
              v252 = *v251;
              v253 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v251);
              v408 = *(v252 + 16);
              v255 = *(v250 + 4);
              v254 = *(v250 + 5);
              v396 = *(v251 + 6);
              v402 = *v251[1];
              v256 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v250);
              v257 = *(v251 + 4);
              if (v257 < v255 || v255 >= v257 && ((v299 = *(v251 + 5), v299 < v254) || v254 >= v299 && (v256 < v253 || v253 >= v256 && ((v300 = *(*v250 + 16), v300 < v408) || v408 >= v300 && ((v301 = *v250[1], v301 < v402) || (v402 >= v301 ? (v302 = *(v250 + 6) >= v396) : (v302 = 1), !v302))))))
              {
                ++v248;
                v416 = 2 * v249 + 2;
              }
            }

            v258 = *v248;
            v259 = v426[v249];
            v260 = *v259;
            v261 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v259);
            v262 = *(v260 + 16);
            v409 = *v259[1];
            v263 = *(v258 + 4);
            v264 = *(v258 + 5);
            v265 = *(v259 + 6);
            result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v258);
            v266 = *(v259 + 4);
            v7 = v423;
            if (v266 >= v263)
            {
              if (v263 < v266 || (v295 = *(v259 + 5), v295 >= v264) && (v264 < v295 || result >= v261 && (v261 < result || (v296 = *(*v258 + 16), v296 >= v262) && (v262 < v296 || (v297 = *v258[1], v297 >= v409) && (v409 >= v297 ? (v298 = *(v258 + 6) >= v265) : (v298 = 1), v298)))))
              {
                v410 = v426[v249];
                v426[v249] = *v248;
                v267 = v416;
                while (v246 >= v267)
                {
                  v417 = v248;
                  v268 = 2 * v267;
                  v267 = (2 * v267) | 1;
                  v248 = &v426[v267];
                  v269 = v268 + 2;
                  if (v268 + 2 < v7)
                  {
                    v270 = *v248;
                    v271 = v248[1];
                    v272 = *v271;
                    v273 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v271);
                    v397 = *(v272 + 16);
                    v403 = v273;
                    v392 = *v271[1];
                    v275 = *(v270 + 4);
                    v274 = *(v270 + 5);
                    v391 = *(v271 + 6);
                    v276 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v270);
                    v277 = *(v271 + 4);
                    if (v277 < v275 || v275 >= v277 && ((v291 = *(v271 + 5), v291 < v274) || v274 >= v291 && (v276 < v403 || v403 >= v276 && ((v292 = *(*v270 + 16), v292 < v397) || v397 >= v292 && ((v293 = *v270[1], v293 < v392) || (v392 >= v293 ? (v294 = *(v270 + 6) >= v391) : (v294 = 1), !v294))))))
                    {
                      ++v248;
                      v267 = v269;
                    }
                  }

                  v278 = v249;
                  v279 = v246;
                  v280 = *v248;
                  v281 = *v410;
                  v282 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v410);
                  v283 = *(v281 + 16);
                  v284 = *(v280 + 4);
                  v285 = *(v280 + 5);
                  v398 = *(v410 + 6);
                  v404 = *v410[1];
                  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v280);
                  v286 = *(v410 + 4);
                  if (v286 < v284)
                  {
                    v248 = v417;
                    v7 = v423;
                    v246 = v279;
                    v249 = v278;
                    break;
                  }

                  v47 = v284 >= v286;
                  v7 = v423;
                  v246 = v279;
                  v249 = v278;
                  if (v47)
                  {
                    v287 = *(v410 + 5);
                    if (v287 < v285 || v285 >= v287 && (result < v282 || v282 >= result && ((v288 = *(*v280 + 16), v288 < v283) || v283 >= v288 && ((v289 = *v280[1], v289 < v404) || (v404 >= v289 ? (v290 = *(v280 + 6) >= v398) : (v290 = 1), !v290)))))
                    {
                      v248 = v417;
                      break;
                    }
                  }

                  *v417 = *v248;
                }

                *v248 = v410;
              }
            }
          }

          v247 = v249 - 1;
        }

        while (v249);
        do
        {
          v304 = 0;
          v393 = *v426;
          v305 = (v7 - 2) >> 1;
          v306 = v426;
          do
          {
            v307 = v306;
            v308 = &v306[v304];
            v306 = v308 + 1;
            v309 = 2 * v304;
            v304 = (2 * v304) | 1;
            v310 = v309 + 2;
            if (v309 + 2 < v7)
            {
              v313 = v308[2];
              v312 = v308 + 2;
              v311 = v313;
              v314 = *(v312 - 1);
              v315 = *v313;
              v316 = v7;
              v317 = v306;
              v418 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v313);
              v411 = *(v315 + 16);
              v318 = *(v314 + 16);
              v424 = *(v314 + 20);
              v399 = *(v313 + 6);
              v405 = *v313[1];
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v314);
              v7 = v316;
              v319 = *(v313 + 4);
              if (v319 < v318 || (v306 = v317, v318 >= v319) && ((v320 = *(v311 + 5), v320 < v424) || v424 >= v320 && (result < v418 || v418 >= result && ((v321 = *(*v314 + 16), v321 < v411) || v411 >= v321 && ((v322 = **(v314 + 8), v322 < v405) || (v405 >= v322 ? (v323 = *(v314 + 24) >= v399) : (v323 = 1), !v323))))))
              {
                v306 = v312;
                v304 = v310;
              }
            }

            *v307 = *v306;
          }

          while (v304 <= v305);
          v324 = a2 - 1;
          v211 = v306 == --a2;
          if (v211)
          {
            *v306 = v393;
          }

          else
          {
            *v306 = *v324;
            *v324 = v393;
            v325 = (v306 - v426 + 8) >> 3;
            v326 = v325 - 2;
            if (v325 >= 2)
            {
              v327 = v326 >> 1;
              v328 = &v426[v326 >> 1];
              v329 = *v328;
              v330 = *v306;
              v331 = **v306;
              v425 = v7;
              v332 = v306;
              v333 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v331);
              v334 = *(v331 + 16);
              v419 = *v330[1];
              v336 = *(v329 + 4);
              v335 = *(v329 + 5);
              v412 = *(v330 + 6);
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v329);
              v7 = v425;
              v337 = *(v330 + 4);
              if (v337 < v336 || v336 >= v337 && ((v352 = *(v330 + 5), v352 < v335) || v335 >= v352 && (result < v333 || v333 >= result && ((v353 = *(*v329 + 16), v353 < v334) || v334 >= v353 && ((v354 = *v329[1], v354 < v419) || (v419 >= v354 ? (v355 = *(v329 + 6) >= v412) : (v355 = 1), !v355))))))
              {
                v338 = *v332;
                *v332 = *v328;
                if (v326 >= 2)
                {
                  while (1)
                  {
                    v340 = v327 - 1;
                    v327 = (v327 - 1) >> 1;
                    v339 = &v426[v327];
                    v341 = *v339;
                    v342 = *v338;
                    v343 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v338);
                    v344 = *(v342 + 16);
                    v420 = *v338[1];
                    v345 = *(v341 + 4);
                    v346 = *(v341 + 5);
                    v413 = *(v338 + 6);
                    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v341);
                    v347 = *(v338 + 4);
                    if (v347 >= v345)
                    {
                      if (v345 < v347)
                      {
                        break;
                      }

                      v348 = *(v338 + 5);
                      if (v348 >= v346)
                      {
                        if (v346 < v348)
                        {
                          break;
                        }

                        if (result >= v343)
                        {
                          if (v343 < result)
                          {
                            break;
                          }

                          v349 = *(*v341 + 16);
                          if (v349 >= v344)
                          {
                            if (v344 < v349)
                            {
                              break;
                            }

                            v350 = *v341[1];
                            if (v350 >= v420 && (v420 < v350 || *(v341 + 6) >= v413))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    *v328 = *v339;
                    v328 = &v426[v327];
                    if (v340 <= 1)
                    {
                      goto LABEL_380;
                    }
                  }
                }

                v339 = v328;
LABEL_380:
                *v339 = v338;
                v7 = v425;
              }
            }
          }
        }

        while (v7-- > 2);
      }

      return result;
    }

    v10 = v7 >> 1;
    v11 = &v9[v7 >> 1];
    if (v7 < 0x81)
    {
      v406 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      v32 = 0;
      v33 = *v9;
      while (1)
      {
        v34 = v9[v32 + 1];
        v35 = *v33;
        v36 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
        v37 = *(v35 + 16);
        v38 = *v33[1];
        v40 = *(v34 + 4);
        v39 = *(v34 + 5);
        v41 = *(v33 + 6);
        v42 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v34);
        v43 = *(v33 + 4);
        if (v43 >= v40)
        {
          if (v40 < v43)
          {
            break;
          }

          v44 = *(v33 + 5);
          if (v44 >= v39)
          {
            if (v39 < v44)
            {
              break;
            }

            if (v42 >= v36)
            {
              if (v36 < v42)
              {
                break;
              }

              v45 = *(*v34 + 16);
              if (v45 >= v37)
              {
                if (v37 < v45)
                {
                  break;
                }

                v46 = *v34[1];
                if (v46 >= v38)
                {
                  v47 = v38 < v46 || *(v34 + 6) >= v41;
                  if (v47)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        ++v32;
      }

      v400 = &v9[v32];
      v421 = &v9[v32 + 1];
      v48 = a2 - 1;
      if (v32 * 8)
      {
        while (1)
        {
          v51 = v48;
          v68 = *v48;
          v69 = *v33;
          v70 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v71 = *(v69 + 16);
          v72 = *v33[1];
          v73 = *(v68 + 4);
          v74 = *(v68 + 5);
          v75 = *(v33 + 6);
          v76 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v68);
          v77 = *(v33 + 4);
          if (v77 < v73)
          {
            break;
          }

          v9 = v426;
          if (v73 >= v77)
          {
            v78 = *(v33 + 5);
            if (v78 < v74 || v74 >= v78 && (v76 < v70 || v70 >= v76 && ((v79 = *(*v68 + 16), v79 < v71) || v71 >= v79 && ((v80 = *v68[1], v80 < v72) || (v72 >= v80 ? (v81 = *(v68 + 6) >= v75) : (v81 = 1), !v81)))))
            {
LABEL_81:
              v5 = a2;
              v49 = v51;
              v67 = v400;
              if (v421 >= v51)
              {
                goto LABEL_119;
              }

              goto LABEL_84;
            }
          }

          v48 = v51 - 1;
        }
      }

      else
      {
        v5 = a2;
        v49 = a2;
        if (v421 >= a2)
        {
          v67 = v400;
LABEL_119:
          if (v67 == v9)
          {
            goto LABEL_121;
          }

LABEL_120:
          *v9 = *v67;
          goto LABEL_121;
        }

        for (i = a2 - 1; ; i = v49 - 1)
        {
          v51 = i;
          v52 = *i;
          v53 = *v33;
          v54 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v55 = *(v53 + 16);
          v56 = *v33[1];
          v57 = *(v52 + 4);
          v58 = *(v52 + 5);
          v59 = *(v33 + 6);
          v60 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v52);
          v61 = *(v33 + 4);
          if (v61 < v57)
          {
            break;
          }

          v9 = v426;
          if (v57 < v61)
          {
            goto LABEL_54;
          }

          v62 = *(v33 + 5);
          if (v62 < v58)
          {
            goto LABEL_81;
          }

          if (v58 < v62)
          {
            goto LABEL_54;
          }

          if (v60 < v54)
          {
            goto LABEL_81;
          }

          if (v54 < v60)
          {
            goto LABEL_54;
          }

          v63 = *(*v52 + 16);
          if (v63 < v55)
          {
            goto LABEL_81;
          }

          if (v55 >= v63)
          {
            v64 = *v52[1];
            if (v64 < v56)
            {
              goto LABEL_81;
            }

            v66 = v56 < v64 || *(v52 + 6) >= v59;
            v49 = v51;
            if (v421 >= v51 || !v66)
            {
LABEL_65:
              v5 = a2;
              v67 = v400;
              if (v421 >= v49)
              {
                goto LABEL_119;
              }

              goto LABEL_84;
            }
          }

          else
          {
LABEL_54:
            v49 = v51;
            if (v421 >= v51)
            {
              goto LABEL_65;
            }
          }
        }
      }

      v5 = a2;
      v9 = v426;
      v49 = v51;
      v67 = v400;
      if (v421 >= v51)
      {
        goto LABEL_119;
      }

LABEL_84:
      v82 = v421;
      v401 = v49;
      v83 = v49;
      do
      {
        v84 = *v82;
        *v82++ = *v83;
        *v83 = v84;
        while (1)
        {
          v85 = *v82;
          v86 = *v33;
          v87 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v88 = *(v86 + 16);
          v89 = *v33[1];
          v90 = *(v85 + 4);
          v91 = *(v85 + 5);
          v92 = *(v33 + 6);
          v93 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v85);
          v94 = *(v33 + 4);
          if (v94 >= v90)
          {
            if (v90 < v94)
            {
              break;
            }

            v95 = *(v33 + 5);
            if (v95 >= v91)
            {
              if (v91 < v95)
              {
                break;
              }

              if (v93 >= v87)
              {
                if (v87 < v93)
                {
                  break;
                }

                v96 = *(*v85 + 16);
                if (v96 >= v88)
                {
                  if (v88 < v96)
                  {
                    break;
                  }

                  v97 = *v85[1];
                  if (v97 >= v89 && (v89 < v97 || *(v85 + 6) >= v92))
                  {
                    break;
                  }
                }
              }
            }
          }

          ++v82;
        }

        while (1)
        {
          v100 = *--v83;
          v99 = v100;
          v101 = *v33;
          v102 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v103 = *(v101 + 16);
          v104 = *v33[1];
          v105 = *(v100 + 16);
          v106 = *(v100 + 20);
          v107 = *(v33 + 6);
          v108 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v100);
          v109 = *(v33 + 4);
          if (v109 < v105)
          {
            break;
          }

          if (v105 >= v109)
          {
            v110 = *(v33 + 5);
            if (v110 < v106)
            {
              break;
            }

            if (v106 >= v110)
            {
              if (v108 < v102)
              {
                break;
              }

              if (v102 >= v108)
              {
                v111 = *(*v99 + 16);
                if (v111 < v103)
                {
                  break;
                }

                if (v103 >= v111)
                {
                  v112 = **(v99 + 8);
                  if (v112 < v104)
                  {
                    break;
                  }

                  if (v104 >= v112 && *(v99 + 24) < v107)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      while (v82 < v83);
      v67 = v82 - 1;
      v5 = a2;
      v9 = v426;
      v49 = v401;
      if (v67 != v426)
      {
        goto LABEL_120;
      }

LABEL_121:
      *v67 = v33;
      a3 = v406;
      if (v421 < v49)
      {
        goto LABEL_124;
      }

      j = v67 + 1;
      if (result)
      {
        a2 = v67;
        if (v114)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v114)
      {
LABEL_124:
        a4 = 0;
        j = v67 + 1;
      }
    }

    else
    {
      v12 = v9 + 1;
      v13 = v10;
      v14 = &v9[v13];
      v15 = &v9[v13 - 1];
      v16 = v15;
      v9 = v426;
      v17 = *v426;
      *v426 = *v14;
      *v14 = v17;
      v406 = a3 - 1;
      if (a4)
      {
        goto LABEL_27;
      }

LABEL_16:
      v18 = *(v9 - 1);
      v19 = *v9;
      v20 = **v9;
      v21 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v20);
      v22 = *(v20 + 16);
      v23 = *v19[1];
      v25 = *(v18 + 16);
      v24 = *(v18 + 20);
      v26 = *(v19 + 6);
      v27 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v18);
      v28 = *(v19 + 4);
      if (v28 < v25)
      {
        goto LABEL_27;
      }

      if (v25 >= v28)
      {
        v29 = *(v19 + 5);
        if (v29 < v24)
        {
          goto LABEL_27;
        }

        if (v24 >= v29)
        {
          if (v27 < v21)
          {
            goto LABEL_27;
          }

          if (v21 >= v27)
          {
            v30 = *(*v18 + 16);
            if (v30 < v22)
            {
              goto LABEL_27;
            }

            if (v22 >= v30)
            {
              v31 = **(v18 + 8);
              if (v31 < v23 || v23 >= v31 && *(v18 + 24) < v26)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }

      v115 = *v9;
      v116 = *v414;
      v117 = **v414;
      v118 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v117);
      v119 = *(v117 + 16);
      v120 = *v116[1];
      v122 = *(v115 + 4);
      v121 = *(v115 + 5);
      v123 = *(v116 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
      v124 = *(v116 + 4);
      if (v124 < v122 || v122 >= v124 && ((v196 = *(v116 + 5), v196 < v121) || v121 >= v196 && (result < v118 || v118 >= result && ((v197 = *(*v115 + 16), v197 < v119) || v119 >= v197 && ((v198 = *v115[1], v198 < v120) || v120 >= v198 && *(v115 + 6) < v123)))))
      {
        for (j = v426 + 1; ; ++j)
        {
          v125 = *j;
          v126 = **j;
          v127 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v126);
          v128 = *(v126 + 16);
          v129 = *v125[1];
          v131 = *(v115 + 4);
          v130 = *(v115 + 5);
          v132 = *(v125 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v133 = *(v125 + 4);
          if (v133 < v131)
          {
            break;
          }

          if (v131 >= v133)
          {
            v134 = *(v125 + 5);
            if (v134 < v130)
            {
              break;
            }

            if (v130 >= v134)
            {
              if (result < v127)
              {
                break;
              }

              if (v127 >= result)
              {
                v135 = *(*v115 + 16);
                if (v135 < v128)
                {
                  break;
                }

                if (v128 >= v135)
                {
                  v136 = *v115[1];
                  if (v136 < v129)
                  {
                    break;
                  }

                  if (v129 >= v136 && *(v115 + 6) < v132)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_141:
        v138 = a2;
      }

      else
      {
        for (j = v426 + 1; ; ++j)
        {
          v138 = a2;
          if (j >= a2)
          {
            break;
          }

          v183 = *j;
          v184 = **j;
          v185 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v184);
          v186 = *(v184 + 16);
          v187 = *v183[1];
          v189 = *(v115 + 4);
          v188 = *(v115 + 5);
          v190 = *(v183 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v191 = *(v183 + 4);
          if (v191 < v189)
          {
            goto LABEL_141;
          }

          if (v189 >= v191)
          {
            v192 = *(v183 + 5);
            if (v192 < v188)
            {
              goto LABEL_141;
            }

            if (v188 >= v192)
            {
              if (result < v185)
              {
                goto LABEL_141;
              }

              if (v185 >= result)
              {
                v193 = *(*v115 + 16);
                if (v193 < v186)
                {
                  goto LABEL_141;
                }

                if (v186 >= v193)
                {
                  v194 = *v115[1];
                  if (v194 < v187)
                  {
                    goto LABEL_141;
                  }

                  if (v187 >= v194 && *(v115 + 6) < v190)
                  {
                    goto LABEL_141;
                  }
                }
              }
            }
          }
        }
      }

      k = v138;
      if (j < v138)
      {
        for (k = a2 - 1; ; --k)
        {
          v140 = *k;
          v141 = **k;
          v142 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v141);
          v143 = *(v141 + 16);
          v144 = *v140[1];
          v146 = *(v115 + 4);
          v145 = *(v115 + 5);
          v147 = *(v140 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v148 = *(v140 + 4);
          if (v148 >= v146)
          {
            if (v146 < v148)
            {
              break;
            }

            v149 = *(v140 + 5);
            if (v149 >= v145)
            {
              if (v145 < v149)
              {
                break;
              }

              if (result >= v142)
              {
                if (v142 < result)
                {
                  break;
                }

                v150 = *(*v115 + 16);
                if (v150 >= v143)
                {
                  if (v143 < v150)
                  {
                    break;
                  }

                  v151 = *v115[1];
                  if (v151 >= v144 && (v144 < v151 || *(v115 + 6) >= v147))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      while (j < k)
      {
        v153 = *j;
        *j++ = *k;
        *k = v153;
        while (1)
        {
          v154 = *j;
          v155 = **j;
          v156 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v155);
          v157 = *(v155 + 16);
          v158 = *v154[1];
          v160 = *(v115 + 4);
          v159 = *(v115 + 5);
          v161 = *(v154 + 6);
          v162 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v163 = *(v154 + 4);
          if (v163 < v160)
          {
            break;
          }

          if (v160 >= v163)
          {
            v164 = *(v154 + 5);
            if (v164 < v159)
            {
              break;
            }

            if (v159 >= v164)
            {
              if (v162 < v156)
              {
                break;
              }

              if (v156 >= v162)
              {
                v165 = *(*v115 + 16);
                if (v165 < v157)
                {
                  break;
                }

                if (v157 >= v165)
                {
                  v166 = *v115[1];
                  if (v166 < v158)
                  {
                    break;
                  }

                  if (v158 >= v166 && *(v115 + 6) < v161)
                  {
                    break;
                  }
                }
              }
            }
          }

          ++j;
        }

        while (1)
        {
          do
          {
            v169 = *--k;
            v168 = v169;
            v170 = *v169;
            v171 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v169);
            v172 = *(v170 + 16);
            v173 = **(v169 + 8);
            v175 = *(v115 + 4);
            v174 = *(v115 + 5);
            v176 = *(v169 + 24);
            result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
            v177 = *(v169 + 16);
          }

          while (v177 < v175);
          if (v175 < v177)
          {
            break;
          }

          v178 = *(v168 + 20);
          if (v178 >= v174)
          {
            if (v174 < v178)
            {
              break;
            }

            if (result >= v171)
            {
              if (v171 < result)
              {
                break;
              }

              v179 = *(*v115 + 16);
              if (v179 >= v172)
              {
                if (v172 < v179)
                {
                  break;
                }

                v180 = *v115[1];
                if (v180 >= v173 && (v173 < v180 || *(v115 + 6) >= v176))
                {
                  break;
                }
              }
            }
          }
        }
      }

      v182 = j - 1;
      if (j - 1 != v426)
      {
        *v426 = *v182;
      }

      a4 = 0;
      *v182 = v115;
      v5 = a2;
      a3 = v406;
    }
  }

  v210 = v9 + 1;
  v211 = v9 == v5 || v210 == v5;
  v212 = v211;
  if ((a4 & 1) == 0)
  {
    if ((v212 & 1) == 0)
    {
      do
      {
        v360 = v426;
        v359 = v210;
        v362 = *v426;
        v361 = v426[1];
        v363 = **v426;
        v364 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v363);
        v365 = *(v363 + 16);
        v366 = *v362[1];
        v368 = *(v361 + 4);
        v367 = *(v361 + 5);
        v369 = *(v362 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v361);
        v370 = *(v362 + 4);
        v426 = v359;
        if (v370 < v368 || v368 >= v370 && ((v387 = *(v362 + 5), v387 < v367) || v367 >= v387 && (result < v364 || v364 >= result && ((v388 = *(*v361 + 16), v388 < v365) || v365 >= v388 && ((v389 = *v361[1], v389 < v366) || (v366 >= v389 ? (v390 = *(v361 + 6) >= v369) : (v390 = 1), !v390))))))
        {
          v371 = *v359;
          while (1)
          {
            do
            {
              v372 = v360;
              v360[1] = *v360;
              v374 = *--v360;
              v373 = v374;
              v375 = *v374;
              v376 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v374);
              v377 = *(v375 + 16);
              v378 = **(v374 + 8);
              v380 = *(v371 + 4);
              v379 = *(v371 + 5);
              v381 = *(v374 + 24);
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v371);
              v382 = *(v374 + 16);
            }

            while (v382 < v380);
            if (v380 < v382)
            {
              break;
            }

            v383 = *(v373 + 20);
            if (v383 >= v379)
            {
              if (v379 < v383)
              {
                break;
              }

              if (result >= v376)
              {
                if (v376 < result)
                {
                  break;
                }

                v384 = *(*v371 + 16);
                if (v384 >= v377)
                {
                  if (v377 < v384)
                  {
                    break;
                  }

                  v385 = *v371[1];
                  if (v385 >= v378 && (v378 < v385 || *(v371 + 6) >= v381))
                  {
                    break;
                  }
                }
              }
            }
          }

          *v372 = v371;
          v359 = v426;
        }

        v210 = v359 + 1;
      }

      while (v359 + 1 != a2);
    }

    return result;
  }

  if (v212)
  {
    return result;
  }

  v213 = 0;
  v214 = j;
  while (2)
  {
    v415 = v210;
    v217 = *v214;
    v216 = v214[1];
    v218 = **v214;
    v219 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v218);
    v220 = *(v218 + 16);
    v221 = *v217[1];
    v222 = *(v216 + 4);
    v223 = *(v216 + 5);
    v224 = *(v217 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v216);
    v225 = *(v217 + 4);
    if (v225 >= v222)
    {
      if (v222 < v225)
      {
        goto LABEL_246;
      }

      v242 = *(v217 + 5);
      if (v242 >= v223)
      {
        if (v223 < v242)
        {
          goto LABEL_246;
        }

        if (result >= v219)
        {
          if (v219 < result)
          {
            goto LABEL_246;
          }

          v243 = *(*v216 + 16);
          if (v243 >= v220)
          {
            if (v220 < v243)
            {
              goto LABEL_246;
            }

            v244 = *v216[1];
            if (v244 >= v221 && (v221 < v244 || *(v216 + 6) >= v224))
            {
              goto LABEL_246;
            }
          }
        }
      }
    }

    v226 = v214[1];
    v214[1] = *v214;
    v227 = v426;
    v215 = v426;
    if (v214 == v426)
    {
      goto LABEL_245;
    }

    v407 = v213;
    v228 = v213;
    while (2)
    {
      v229 = (v227 + v228);
      v230 = *(v227 + v228 - 8);
      v231 = *v230;
      v232 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v230);
      v233 = *(v231 + 16);
      v234 = **(v230 + 8);
      v235 = *(v226 + 4);
      v236 = *(v226 + 5);
      v422 = *(v230 + 24);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v226);
      v237 = *(v230 + 16);
      if (v237 < v235)
      {
        goto LABEL_250;
      }

      if (v235 < v237)
      {
        goto LABEL_265;
      }

      v238 = *(v230 + 20);
      if (v238 < v236)
      {
        goto LABEL_250;
      }

      if (v236 < v238)
      {
        goto LABEL_265;
      }

      if (result < v232)
      {
        goto LABEL_250;
      }

      if (v232 < result)
      {
        goto LABEL_265;
      }

      v239 = *(*v226 + 16);
      if (v239 < v233)
      {
LABEL_250:
        --v214;
        *v229 = *(v229 - 1);
        v228 -= 8;
        v227 = v426;
        if (!v228)
        {
          v215 = v426;
          goto LABEL_244;
        }

        continue;
      }

      break;
    }

    if (v233 >= v239)
    {
      v240 = *v226[1];
      if (v240 >= v234 && (v234 < v240 || *(v226 + 6) >= v422))
      {
LABEL_265:
        v215 = v214;
        goto LABEL_244;
      }

      goto LABEL_250;
    }

    v215 = (v426 + v228);
LABEL_244:
    v213 = v407;
LABEL_245:
    *v215 = v226;
LABEL_246:
    v214 = v415;
    v210 = v415 + 1;
    v213 += 8;
    if (v415 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *a2;
  v6 = *a1;
  v7 = **a1;
  OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v7);
  v9 = *(v7 + 16);
  v10 = *v6[1];
  v11 = *(v5 + 4);
  v12 = *(v5 + 5);
  v13 = *(v6 + 6);
  v14 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v5);
  v15 = *(v6 + 4);
  if (v15 >= v11 && (v11 < v15 || (v60 = *(v6 + 5), v60 >= v12) && (v12 < v60 || v14 >= OperationDepth && (OperationDepth < v14 || (v61 = *(*v5 + 16), v61 >= v9) && (v9 < v61 || (v62 = *v5[1], v62 >= v10) && (v10 >= v62 ? (v63 = *(v5 + 6) >= v13) : (v63 = 1), v63))))))
  {
    v26 = *a3;
    v27 = *v3;
    v28 = **v3;
    v29 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v28);
    v30 = *(v28 + 16);
    v31 = *v27[1];
    v32 = *(v26 + 4);
    v33 = *(v26 + 5);
    v34 = *(v27 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v26);
    v35 = *(v27 + 4);
    if (v35 < v32 || v32 >= v35 && ((v67 = *(v27 + 5), v67 < v33) || v33 >= v67 && (result < v29 || v29 >= result && ((v68 = *(*v26 + 16), v68 < v30) || v30 >= v68 && ((v69 = *v26[1], v69 < v31) || v31 >= v69 && *(v26 + 6) < v34)))))
    {
      v36 = *v3;
      *v3 = *a3;
      *a3 = v36;
      v37 = *v3;
      v38 = *v4;
      v39 = **v4;
      v40 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v39);
      v41 = *(v39 + 16);
      v42 = *v38[1];
      v44 = *(v37 + 4);
      v43 = *(v37 + 5);
      v45 = *(v38 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v37);
      v46 = *(v38 + 4);
      if (v46 < v44)
      {
        goto LABEL_58;
      }

      if (v44 < v46)
      {
        return result;
      }

      v47 = *(v38 + 5);
      if (v47 < v43)
      {
        goto LABEL_58;
      }

      if (v43 < v47)
      {
        return result;
      }

      if (result < v40)
      {
        goto LABEL_58;
      }

      if (v40 < result)
      {
        return result;
      }

      v48 = *(*v37 + 16);
      if (v48 < v41)
      {
        goto LABEL_58;
      }

      if (v41 < v48)
      {
        return result;
      }

      v49 = *v37[1];
      if (v49 < v42)
      {
        goto LABEL_58;
      }

      if (v42 < v49)
      {
        return result;
      }

      v50 = *(v37 + 6);
      goto LABEL_68;
    }
  }

  else
  {
    v16 = *a3;
    v17 = *v3;
    v18 = **v3;
    v19 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v18);
    v20 = *(v18 + 16);
    v21 = *v17[1];
    v22 = *(v16 + 4);
    v23 = *(v16 + 5);
    v74 = *(v17 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v16);
    v25 = *(v17 + 4);
    if (v25 < v22)
    {
      v3 = a3;
LABEL_58:
      v71 = *v4;
      *v4 = *v3;
      *v3 = v71;
      return result;
    }

    if (v22 >= v25)
    {
      v64 = *(v17 + 5);
      if (v64 < v23 || v23 >= v64 && (result < v19 || v19 >= result && ((v65 = *(*v16 + 16), v65 < v20) || v20 >= v65 && ((v66 = *v16[1], v66 < v21) || v21 >= v66 && *(v16 + 6) < v74))))
      {
LABEL_57:
        v3 = a3;
        goto LABEL_58;
      }
    }

    v51 = *v4;
    *v4 = *v3;
    *v3 = v51;
    v52 = *a3;
    v53 = *v51;
    v54 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v51);
    v55 = *(v53 + 16);
    v56 = *v51[1];
    v57 = *(v52 + 4);
    v58 = *(v52 + 5);
    v45 = *(v51 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v52);
    v59 = *(v51 + 4);
    if (v59 < v57)
    {
      v4 = v3;
      v3 = a3;
      goto LABEL_58;
    }

    if (v57 < v59)
    {
      return result;
    }

    v70 = *(v51 + 5);
    if (v70 < v58)
    {
LABEL_56:
      v4 = v3;
      goto LABEL_57;
    }

    if (v58 >= v70)
    {
      if (result < v54)
      {
        goto LABEL_56;
      }

      if (v54 >= result)
      {
        v72 = *(*v52 + 16);
        if (v72 < v55)
        {
          goto LABEL_56;
        }

        if (v55 >= v72)
        {
          v73 = *v52[1];
          if (v73 < v56)
          {
            goto LABEL_56;
          }

          if (v56 >= v73)
          {
            v50 = *(v52 + 6);
            v4 = v3;
            v3 = a3;
LABEL_68:
            if (v50 >= v45)
            {
              return result;
            }

            goto LABEL_58;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v7 = *a4;
  v8 = *a3;
  v9 = **a3;
  OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v9);
  v11 = *(v9 + 16);
  v50 = *v8[1];
  v13 = *(v7 + 4);
  v12 = *(v7 + 5);
  v14 = *(v8 + 6);
  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v7);
  v16 = *(v8 + 4);
  if (v16 < v13 || v13 >= v16 && ((v40 = *(v8 + 5), v40 < v12) || v12 >= v40 && (result < OperationDepth || OperationDepth >= result && ((v41 = *(*v7 + 16), v41 < v11) || v11 >= v41 && ((v42 = *v7[1], v42 < v50) || (v50 >= v42 ? (v43 = *(v7 + 6) >= v14) : (v43 = 1), !v43))))))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v18 = *a3;
    v19 = *a2;
    v20 = **a2;
    v21 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v20);
    v22 = *(v20 + 16);
    v23 = *v19[1];
    v25 = *(v18 + 4);
    v24 = *(v18 + 5);
    v26 = *(v19 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v18);
    v27 = *(v19 + 4);
    if (v27 < v25 || v25 >= v27 && ((v44 = *(v19 + 5), v44 < v24) || v24 >= v44 && (result < v21 || v21 >= result && ((v45 = *(*v18 + 16), v45 < v22) || v22 >= v45 && ((v46 = *v18[1], v46 < v23) || v23 >= v46 && *(v18 + 6) < v26)))))
    {
      v28 = *a2;
      *a2 = *a3;
      *a3 = v28;
      v29 = *a2;
      v30 = *a1;
      v31 = **a1;
      v32 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v31);
      v33 = *(v31 + 16);
      v34 = *v30[1];
      v36 = *(v29 + 4);
      v35 = *(v29 + 5);
      v37 = *(v30 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v29);
      v38 = *(v30 + 4);
      if (v38 < v36 || v36 >= v38 && ((v47 = *(v30 + 5), v47 < v35) || v35 >= v47 && (result < v32 || v32 >= result && ((v48 = *(*v29 + 16), v48 < v33) || v33 >= v48 && ((v49 = *v29[1], v49 < v34) || v34 >= v49 && *(v29 + 6) < v37)))))
      {
        v39 = *a1;
        *a1 = *a2;
        *a2 = v39;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = *a4;
  v10 = **a4;
  OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v10);
  v12 = *(v10 + 16);
  v65 = *v9[1];
  v14 = *(v8 + 4);
  v13 = *(v8 + 5);
  v15 = *(v9 + 6);
  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v8);
  v17 = *(v9 + 4);
  if (v17 < v14 || v14 >= v17 && ((v52 = *(v9 + 5), v52 < v13) || v13 >= v52 && (result < OperationDepth || OperationDepth >= result && ((v53 = *(*v8 + 16), v53 < v12) || v12 >= v53 && ((v54 = *v8[1], v54 < v65) || (v65 >= v54 ? (v55 = *(v8 + 6) >= v15) : (v55 = 1), !v55))))))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    v19 = *a4;
    v20 = *a3;
    v21 = **a3;
    v22 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v21);
    v23 = *(v21 + 16);
    v24 = *v20[1];
    v26 = *(v19 + 4);
    v25 = *(v19 + 5);
    v27 = *(v20 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v19);
    v28 = *(v20 + 4);
    if (v28 < v26 || v26 >= v28 && ((v56 = *(v20 + 5), v56 < v25) || v25 >= v56 && (result < v22 || v22 >= result && ((v57 = *(*v19 + 16), v57 < v23) || v23 >= v57 && ((v58 = *v19[1], v58 < v24) || v24 >= v58 && *(v19 + 6) < v27)))))
    {
      v29 = *a3;
      *a3 = *a4;
      *a4 = v29;
      v30 = *a3;
      v31 = *a2;
      v32 = **a2;
      v33 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v32);
      v34 = *(v32 + 16);
      v35 = *v31[1];
      v37 = *(v30 + 4);
      v36 = *(v30 + 5);
      v38 = *(v31 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v30);
      v39 = *(v31 + 4);
      if (v39 < v37 || v37 >= v39 && ((v59 = *(v31 + 5), v59 < v36) || v36 >= v59 && (result < v33 || v33 >= result && ((v60 = *(*v30 + 16), v60 < v34) || v34 >= v60 && ((v61 = *v30[1], v61 < v35) || v35 >= v61 && *(v30 + 6) < v38)))))
      {
        v40 = *a2;
        *a2 = *a3;
        *a3 = v40;
        v41 = *a2;
        v42 = *a1;
        v43 = **a1;
        v44 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v43);
        v45 = *(v43 + 16);
        v46 = *v42[1];
        v48 = *(v41 + 4);
        v47 = *(v41 + 5);
        v49 = *(v42 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v41);
        v50 = *(v42 + 4);
        if (v50 < v48 || v48 >= v50 && ((v62 = *(v42 + 5), v62 < v47) || v47 >= v62 && (result < v44 || v44 >= result && ((v63 = *(*v41 + 16), v63 < v45) || v45 >= v63 && ((v64 = *v41[1], v64 < v46) || v46 >= v64 && *(v41 + 6) < v49)))))
        {
          v51 = *a1;
          *a1 = *a2;
          *a2 = v51;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **>(uint64_t **a1, uint64_t **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 1;
    }

    goto LABEL_11;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_11:
    v16 = a1 + 2;
    v17 = a1 + 3;
    v18 = a2;
    if (a1 + 3 != a2)
    {
      v59 = 0;
      v57 = 0;
      while (1)
      {
        v58 = v17;
        v20 = *v17;
        v21 = *v16;
        v22 = **v16;
        OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v22);
        v24 = *(v22 + 16);
        v25 = *v21[1];
        v27 = *(v20 + 4);
        v26 = *(v20 + 5);
        v28 = *(v21 + 6);
        v29 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v20);
        v30 = *(v21 + 4);
        if (v30 >= v27 && (v27 < v30 || (v48 = *(v21 + 5), v48 >= v26) && (v26 < v48 || v29 >= OperationDepth && (OperationDepth < v29 || (v49 = *(*v20 + 16), v49 >= v24) && (v24 < v49 || (v50 = *v20[1], v50 >= v25) && (v25 >= v50 ? (v51 = *(v20 + 6) >= v28) : (v51 = 1), v51))))))
        {
          v19 = v58;
        }

        else
        {
          v31 = v59;
          v32 = *v58;
          *v58 = *v16;
          do
          {
            v33 = *(a1 + v31 + 8);
            v34 = *v33;
            v35 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
            v36 = *(v34 + 16);
            v37 = **(v33 + 8);
            v38 = *(v32 + 4);
            v39 = *(v32 + 5);
            v40 = *(v33 + 24);
            v41 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v32);
            v42 = *(v33 + 16);
            if (v42 >= v38)
            {
              if (v38 < v42 || (v43 = *(v33 + 20), v43 >= v39) && (v39 < v43 || v41 >= v35 && (v35 < v41 || (v44 = *(*v32 + 16), v44 >= v36) && (v36 < v44 || (v45 = *v32[1], v45 >= v37) && (v37 >= v45 ? (v46 = *(v32 + 6) >= v40) : (v46 = 1), v46)))))
              {
                v47 = (a1 + v31 + 16);
                goto LABEL_47;
              }
            }

            *(a1 + v31 + 16) = *(a1 + v31 + 8);
            v31 -= 8;
          }

          while (v31 != -16);
          v47 = a1;
LABEL_47:
          *v47 = v32;
          ++v57;
          v18 = a2;
          v19 = v58;
          if (v57 == 8)
          {
            return v58 + 1 == a2;
          }
        }

        v16 = v19;
        v59 += 8;
        v17 = v19 + 1;
        if (v19 + 1 == v18)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  v6 = **a1;
  v7 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v6);
  v8 = *(v6 + 16);
  v9 = *v5[1];
  v11 = *(v4 + 16);
  v10 = *(v4 + 20);
  v12 = *(v5 + 6);
  v13 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v4);
  v14 = *(v5 + 4);
  if (v14 < v11)
  {
    goto LABEL_5;
  }

  if (v11 < v14)
  {
    return 1;
  }

  v53 = *(v5 + 5);
  if (v53 < v10)
  {
    goto LABEL_5;
  }

  if (v10 < v53)
  {
    return 1;
  }

  if (v13 < v7)
  {
    goto LABEL_5;
  }

  if (v7 < v13)
  {
    return 1;
  }

  v54 = *(*v4 + 16);
  if (v54 < v8)
  {
    goto LABEL_5;
  }

  if (v8 < v54)
  {
    return 1;
  }

  v55 = **(v4 + 8);
  if (v55 < v9 || (result = 1, v9 >= v55) && *(v4 + 24) < v12)
  {
LABEL_5:
    v15 = *a1;
    *a1 = *(a2 - 1);
    *(a2 - 1) = v15;
    return 1;
  }

  return result;
}

int8x16_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,void stableTopologicalSort<std::__wrap_iter<anonymous namespace::OrderedPredicate **>,BOOL (*)(anonymous namespace::OrderedPredicate *,anonymous namespace::OrderedPredicate *)>(std::__wrap_iter<anonymous namespace::OrderedPredicate **>,std::__wrap_iter<anonymous namespace::OrderedPredicate **>,BOOL (*)(anonymous namespace::OrderedPredicate *,anonymous namespace::OrderedPredicate *))::{lambda(std::__wrap_iter<anonymous namespace::OrderedPredicate **> const&)#2} &,std::__wrap_iter<anonymous namespace::OrderedPredicate **>,long,std::pair<anonymous namespace::OrderedPredicate **,long>>(int8x16_t *a1, const void **a2, llvm::SmallPtrSetImplBase **a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 != 3)
  {
    if (a4 == 2)
    {
      v10 = a1->i64[0];
      a1->i64[0] = *a2;
      *a2 = v10;
      return a2;
    }

    v18 = a5;
    if (a6 < a4)
    {
      v19 = a4 / 2;
      __src = (a1 + 8 * (a4 / 2));
      v97 = a4 / 2;
      v21 = (__src - 8);
      v20 = __src[-1].i64[1];
      v22 = *a3;
      v23 = **a3;
      v24 = *(*a3 + 1);
      if (v24 == v23)
      {
        goto LABEL_20;
      }

LABEL_11:
      v25 = llvm::SmallPtrSetImplBase::doFind(v22, v20);
      v24 = *v22;
      v26 = *(v22 + 1);
      if (v25)
      {
LABEL_25:
        if (v26 == v24)
        {
          v31 = 20;
        }

        else
        {
          v31 = 16;
        }

        if (v25 == &v26[*(v22 + v31)])
        {
LABEL_29:
          while (v21 != v8)
          {
            --v19;
            v32 = v21[-1].i64[1];
            v21 = (v21 - 8);
            v20 = v32;
            v22 = *a3;
            v23 = **a3;
            v24 = *(*a3 + 1);
            if (v24 != v23)
            {
              goto LABEL_11;
            }

LABEL_20:
            v29 = *(v22 + 5);
            if (!v29)
            {
LABEL_24:
              v25 = &v24[v29];
              v26 = v24;
              goto LABEL_25;
            }

            v30 = 8 * v29;
            while (*v23 != v20)
            {
              ++v23;
              v30 -= 8;
              if (!v30)
              {
                goto LABEL_24;
              }
            }

            if (v23 != &v24[*(v22 + 5)])
            {
              goto LABEL_33;
            }
          }

LABEL_34:
          v11 = (a2 + 1);
          v33 = a4 - v97;
          v34 = __src;
          v35 = *a3;
          v36 = __src->i64[0];
          v37 = **a3;
          v38 = *(*a3 + 1);
          if (v38 == v37)
          {
            goto LABEL_44;
          }

LABEL_35:
          v39 = llvm::SmallPtrSetImplBase::doFind(v35, v36);
          v38 = *v35;
          v40 = *(v35 + 1);
          if (v39)
          {
LABEL_49:
            if (v40 == v38)
            {
              v45 = 20;
            }

            else
            {
              v45 = 16;
            }

            if (v39 != &v40[*(v35 + v45)])
            {
LABEL_53:
              do
              {
                if (++v34 == a2)
                {
                  goto LABEL_58;
                }

                --v33;
                v35 = *a3;
                v36 = *v34;
                v37 = **a3;
                v38 = *(*a3 + 1);
                if (v38 != v37)
                {
                  goto LABEL_35;
                }

LABEL_44:
                v43 = *(v35 + 5);
                if (!v43)
                {
LABEL_48:
                  v39 = &v38[v43];
                  v40 = v38;
                  goto LABEL_49;
                }

                v44 = 8 * v43;
                while (*v37 != v36)
                {
                  ++v37;
                  v44 -= 8;
                  if (!v44)
                  {
                    goto LABEL_48;
                  }
                }
              }

              while (v37 != &v38[*(v35 + 5)]);
            }
          }

          else
          {
            if (v40 == v38)
            {
              v41 = 20;
            }

            else
            {
              v41 = 16;
            }

            if (v40 == v38)
            {
              v42 = 20;
            }

            else
            {
              v42 = 16;
            }

            if (&v40[*(v35 + v41)] != &v40[*(v35 + v42)])
            {
              goto LABEL_53;
            }
          }

LABEL_58:
          if (v8 != __src)
          {
            if (__src == v11)
            {
              return v8;
            }

            else if (&v8->u64[1] == __src)
            {
              v46 = v8->i64[0];
              v47 = v11 - __src;
              memmove(v8, __src, v47);
              v11 = (v8 + v47);
              v11->i64[0] = v46;
            }

            else if (&__src->u64[1] == v11)
            {
              v76 = (v11 - 8);
              v77 = v11[-1].i64[1];
              v11 = &v8->u64[1];
              if (v76 != v8)
              {
                memmove(&v8->u64[1], v8, v76 - v8);
              }

              v8->i64[0] = v77;
            }

            else
            {
              v80 = (__src - v8) >> 3;
              v81 = (v11 - __src) >> 3;
              if (v80 == v81)
              {
                v82 = &v8->i64[1];
                v83 = &__src->u64[1];
                do
                {
                  v84 = *(v82 - 1);
                  *(v82 - 1) = v83[-1].i64[1];
                  v83[-1].i64[1] = v84;
                  if (v82 == __src)
                  {
                    break;
                  }

                  ++v82;
                  v62 = v83 == v11;
                  v83 = (v83 + 8);
                }

                while (!v62);
                return __src;
              }

              else
              {
                v85 = (__src - v8) >> 3;
                do
                {
                  v86 = v85;
                  v85 = v81;
                  v81 = v86 % v81;
                }

                while (v81);
                v87 = (v8 + 8 * v85);
                do
                {
                  v89 = v87[-1].i64[1];
                  v87 = (v87 - 8);
                  v88 = v89;
                  v90 = (v87->i64 + __src - v8);
                  v91 = v87;
                  do
                  {
                    v92 = v90;
                    *v91 = *v90;
                    v93 = (v11 - v90) >> 3;
                    v94 = __OFSUB__(v80, v93);
                    v96 = v80 - v93;
                    v95 = (v96 < 0) ^ v94;
                    v90 = &v8->i64[v96];
                    if (v95)
                    {
                      v90 = &v92[v80];
                    }

                    v91 = v92;
                  }

                  while (v90 != v87);
                  *v92 = v88;
                }

                while (v87 != v8);
                return (v8 + v11 - __src);
              }
            }
          }

          return v11;
        }
      }

      else
      {
        if (v26 == v24)
        {
          v27 = 20;
        }

        else
        {
          v27 = 16;
        }

        if (v26 == v24)
        {
          v28 = 20;
        }

        else
        {
          v28 = 16;
        }

        if (&v26[*(v22 + v27)] == &v26[*(v22 + v28)])
        {
          goto LABEL_29;
        }
      }

LABEL_33:
      goto LABEL_34;
    }

    v11 = &a1->u64[1];
    *a5 = a1->i64[0];
    v48 = a5 + 1;
    if (&a1->u64[1] == a2)
    {
      a1->i64[0] = a1->i64[1];
    }

    else
    {
      do
      {
        while (1)
        {
          v49 = *a3;
          v50 = v11->i64[0];
          v51 = **a3;
          v52 = *(*a3 + 1);
          if (v52 == v51)
          {
            v55 = *(v49 + 5);
            if (v55)
            {
              v56 = 8 * v55;
              while (*v51 != v50)
              {
                ++v51;
                v56 -= 8;
                if (!v56)
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
LABEL_75:
              v51 = &v52[v55];
            }

            v53 = *(*a3 + 1);
          }

          else
          {
            v51 = llvm::SmallPtrSetImplBase::doFind(*a3, v50);
            v52 = *v49;
            v53 = *(v49 + 1);
            if (!v51)
            {
              if (v53 == v52)
              {
                v54 = 20;
              }

              else
              {
                v54 = 16;
              }

              v51 = &v53[*(v49 + v54)];
            }
          }

          v57 = v53 == v52 ? 20 : 16;
          v58 = &v53[*(v49 + v57)];
          v59 = v11->i64[0];
          if (v51 != v58)
          {
            break;
          }

          *v48++ = v59;
          v11 = (v11 + 8);
          if (v11 == a2)
          {
            goto LABEL_82;
          }
        }

        v8->i64[0] = v59;
        v8 = (v8 + 8);
        v11 = (v11 + 8);
      }

      while (v11 != a2);
LABEL_82:
      v8->i64[0] = v11->i64[0];
      v11 = &v8->u64[1];
      if (v48 <= v18)
      {
        return v11;
      }
    }

    v66 = (v18 + 8);
    if (v48 > v18 + 8)
    {
      v66 = v48;
    }

    v67 = v66 + ~v18;
    if (v67 < 0x18)
    {
      v68 = v11;
    }

    else
    {
      v68 = v11;
      if (v11 - v18 >= 0x20)
      {
        v69 = (v67 >> 3) + 1;
        v70 = v69 & 0x3FFFFFFFFFFFFFFCLL;
        v71 = (v18 + v70 * 8);
        v68 = &v11->i64[v70];
        v72 = v11 + 1;
        v73 = (v18 + 16);
        v74 = v69 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v75 = *v73;
          v72[-1] = v73[-1];
          *v72 = v75;
          v72 += 2;
          v73 += 2;
          v74 -= 4;
        }

        while (v74);
        v18 = v71;
        if (v69 == (v69 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return v11;
        }
      }
    }

    do
    {
      v78 = *v18;
      v18 += 8;
      *v68++ = v78;
    }

    while (v18 < v48);
    return v11;
  }

  v11 = &a1->u64[1];
  v12 = a1->i64[1];
  v13 = *a3;
  v14 = **a3;
  v15 = *(*a3 + 1);
  if (v15 == v14)
  {
    v60 = *(v13 + 5);
    if (v60)
    {
      v61 = 8 * v60;
      while (*v14 != v12)
      {
        ++v14;
        v61 -= 8;
        if (!v61)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
LABEL_88:
      v14 = &v15[v60];
    }

    v16 = *(*a3 + 1);
  }

  else
  {
    v14 = llvm::SmallPtrSetImplBase::doFind(*a3, v12);
    v15 = *v13;
    v16 = *(v13 + 1);
    if (!v14)
    {
      v17 = 16;
      if (v16 == v15)
      {
        v17 = 20;
      }

      v14 = &v16[*(v13 + v17)];
    }
  }

  v62 = v16 == v15;
  v63 = 16;
  if (v62)
  {
    v63 = 20;
  }

  if (v14 == &v16[*(v13 + v63)])
  {
    v65 = v8->i64[1];
    v8->i64[1] = *a2;
    *a2 = v65;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
  }

  else
  {
    v64 = *v8;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
    v8->i64[1] = *a2;
    *a2 = v64.i64[0];
    return a2;
  }

  return v11;
}

void OUTLINED_FUNCTION_16_2()
{

  operator new();
}

void OUTLINED_FUNCTION_17_0()
{
  v2 = *(v0 + 8);
  v3 = 24 * *(v0 + 24);

  llvm::deallocate_buffer(v2, v3);
}

void *OUTLINED_FUNCTION_32_2()
{
  *(v2 - 256) = v0 - 16;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](v1, (v2 - 256));
}

void OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t *a59, unsigned int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(v67 - 256, a59, a60, &a67);
}

void OUTLINED_FUNCTION_54_0()
{

  operator new();
}

uint64_t mlir::pdl_to_pdl_interp::OptimalBranching::OptimalBranching(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *a2 = 0;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v3 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = a3;
  *(result + 48) = 0;
  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *a2 = 0;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v3 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = a3;
  *(result + 48) = 0;
  return result;
}

void mlir::pdl_to_pdl_interp::OptimalBranching::solve(mlir::pdl_to_pdl_interp::OptimalBranching *this)
{
  v307[6] = *MEMORY[0x277D85DE8];
  if (!*(this + 5))
  {
LABEL_15:
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](this + 32, this + 3) = 0;
    v297 = 0;
    v298 = 0;
    v299 = 0;
    v11 = *(this + 2);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = (4 * v11 / 3u + 1) | ((4 * v11 / 3u + 1) >> 1);
    v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v297, (((v13 | (v13 >> 8)) >> 16) | v13 | (v13 >> 8)) + 1);
    if (!*(this + 2))
    {
      goto LABEL_25;
    }

    v14 = *(this + 4);
    if (v14)
    {
      v15 = 32 * v14;
      v16 = *this;
      while ((*v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v16 += 4;
        v15 -= 32;
        if (!v15)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v16 = *this;
    }

    v17 = *this + 32 * v14;
    if (v16 == v17)
    {
LABEL_25:
      llvm::deallocate_buffer(v297, (16 * v299));
    }

    v18 = 0;
    v19 = *(this + 4);
    v20 = *(this + 12);
LABEL_27:
    v21 = *v16;
    if (v20)
    {
      v22 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
      v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v22 >> 47) ^ v22);
      v24 = (-348639895 * ((v23 >> 47) ^ v23)) & (v20 - 1);
      v25 = *(v19 + 16 * v24);
      if (v25 == v21)
      {
        goto LABEL_29;
      }

      v26 = 1;
      while (v25 != -4096)
      {
        v27 = v24 + v26++;
        v24 = v27 & (v20 - 1);
        v25 = *(v19 + 16 * v24);
        if (v25 == v21)
        {
          goto LABEL_29;
        }
      }
    }

    if (v298)
    {
      v28 = v299;
      if (v299 <= 4 * v298 || v299 < 0x41)
      {
        goto LABEL_51;
      }

      v29 = 1 << (33 - __clz(v298 - 1));
      if (v29 <= 64)
      {
        v30 = 64;
      }

      else
      {
        v30 = v29;
      }

      if (v30 != v299)
      {
        goto LABEL_50;
      }

      v298 = 0;
      v31 = v297;
      v32 = (v299 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v35 = v297;
LABEL_62:
        v46 = (v31 + 16 * v28);
        do
        {
          *v35 = -4096;
          v35 = (v35 + 16);
        }

        while (v35 != v46);
        goto LABEL_64;
      }

      v33 = v32 + 1;
      v34 = (v32 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v35 = (v297 + 16 * v34);
      v36 = (v297 + 16);
      v37 = v34;
      do
      {
        *(v36 - 2) = -4096;
        *v36 = -4096;
        v36 += 4;
        v37 -= 2;
      }

      while (v37);
      if (v33 != v34)
      {
        goto LABEL_62;
      }

      while (1)
      {
LABEL_64:
        v47 = *this;
        v48 = *(this + 4);
        v49 = HIDWORD(v21);
        v50 = 8 * v21;
        if (v48)
        {
          v51 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)));
          v52 = (-348639895 * ((v51 >> 47) ^ v51)) & (v48 - 1);
          v53 = *(v47 + 32 * v52);
          if (v21 == v53)
          {
            goto LABEL_71;
          }

          v54 = 1;
          while (v53 != -4096)
          {
            v55 = v52 + v54++;
            v52 = v55 & (v48 - 1);
            v53 = *(v47 + 32 * v52);
            if (v21 == v53)
            {
              goto LABEL_71;
            }
          }
        }

        v52 = *(this + 4);
LABEL_71:
        v19 = *(this + 4);
        v56 = *(this + 12);
        if (!v56)
        {
          goto LABEL_131;
        }

        v57 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)));
        v58 = (v56 - 1) & (-348639895 * ((v57 >> 47) ^ v57));
        v59 = (v19 + 16 * v58);
        v60 = *v59;
        if (v21 != *v59)
        {
          v61 = 0;
          v62 = 1;
          while (v60 != -4096)
          {
            if (v61)
            {
              v63 = 0;
            }

            else
            {
              v63 = v60 == -8192;
            }

            if (v63)
            {
              v61 = v59;
            }

            v64 = v58 + v62++;
            v58 = v64 & (v56 - 1);
            v59 = (v19 + 16 * v58);
            v60 = *v59;
            if (v21 == *v59)
            {
              goto LABEL_87;
            }
          }

          if (v61)
          {
            v59 = v61;
          }

          v94 = *(this + 10);
          if (4 * v94 + 4 >= 3 * v56)
          {
LABEL_131:
            v288 = 8 * v21;
            v56 *= 2;
            goto LABEL_137;
          }

          if (v56 + ~v94 - *(this + 11) <= v56 >> 3)
          {
            v288 = 8 * v21;
LABEL_137:
            llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(this + 32, v56);
            v19 = *(this + 4);
            v96 = *(this + 12);
            if (v96)
            {
              v50 = v288;
              v97 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v288 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v288 - 0xAE502812AA7333) ^ v49)));
              v98 = v96 - 1;
              v99 = v98 & (-348639895 * ((v97 >> 47) ^ v97));
              v59 = (v19 + 16 * v99);
              v100 = *v59;
              if (v21 != *v59)
              {
                v109 = 0;
                v110 = 1;
                while (v100 != -4096)
                {
                  if (v109)
                  {
                    v111 = 0;
                  }

                  else
                  {
                    v111 = v100 == -8192;
                  }

                  if (v111)
                  {
                    v109 = v59;
                  }

                  v112 = v99 + v110++;
                  v99 = v112 & v98;
                  v59 = (v19 + 16 * v99);
                  v100 = *v59;
                  if (v21 == *v59)
                  {
                    goto LABEL_153;
                  }
                }

                if (v109)
                {
                  v59 = v109;
                }
              }
            }

            else
            {
              v59 = 0;
              v50 = v288;
            }

LABEL_153:
            ++*(this + 10);
            if (*v59 != -4096)
            {
LABEL_85:
              --*(this + 11);
            }
          }

          else
          {
            *(this + 10) = v94 + 1;
            if (*v59 != -4096)
            {
              goto LABEL_85;
            }
          }

          *v59 = v21;
          v59[1] = 0;
        }

LABEL_87:
        v65 = v47 + 32 * v52;
        if (!*(v65 + 16))
        {
          goto LABEL_105;
        }

        v66 = *(v65 + 8);
        v67 = *(v65 + 24);
        if (v67)
        {
          v68 = 24 * v67;
          v69 = *(v65 + 8);
          while ((*v69 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v69 += 3;
            v68 -= 24;
            if (!v68)
            {
              goto LABEL_105;
            }
          }
        }

        else
        {
          v69 = *(v65 + 8);
        }

        v70 = (v66 + 24 * v67);
        if (v69 == v70)
        {
LABEL_105:
          v72 = 0;
        }

        else
        {
          v71 = 0;
          v72 = 0;
          v73 = v59[1];
          do
          {
            v74 = *(v69 + 2);
            if (!v73 || v74 < v72 || v72 >= v74 && *(v69 + 3) < v71)
            {
              v73 = *v69;
              v59[1] = *v69;
              v71 = *(v69 + 3);
              v72 = v74;
            }

            do
            {
              v69 += 3;
            }

            while (v69 != v70 && (*v69 | 0x1000) == 0xFFFFFFFFFFFFF000);
          }

          while (v69 != v70);
        }

        v75 = v297;
        v76 = v299;
        if (!v299)
        {
          goto LABEL_135;
        }

        v77 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)));
        v78 = v299 - 1;
        v79 = (v299 - 1) & (-348639895 * ((v77 >> 47) ^ v77));
        v80 = v297 + 16 * v79;
        v81 = *v80;
        if (v21 != *v80)
        {
          v82 = 0;
          v83 = 1;
          while (v81 != -4096)
          {
            if (v82)
            {
              v84 = 0;
            }

            else
            {
              v84 = v81 == -8192;
            }

            if (v84)
            {
              v82 = v80;
            }

            v85 = v79 + v83++;
            v79 = v85 & v78;
            v80 = v297 + 16 * (v85 & v78);
            v81 = *v80;
            if (v21 == *v80)
            {
              goto LABEL_122;
            }
          }

          if (v82)
          {
            v80 = v82;
          }

          if (4 * v298 + 4 >= 3 * v299)
          {
LABEL_135:
            v95 = v50;
            v76 = 2 * v299;
            goto LABEL_141;
          }

          if (v299 + ~v298 - HIDWORD(v298) <= v299 >> 3)
          {
            v95 = v50;
LABEL_141:
            llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v297, v76);
            v75 = v297;
            if (v299)
            {
              v101 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v95 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v95 - 0xAE502812AA7333) ^ v49)));
              v102 = v299 - 1;
              v103 = (v299 - 1) & (-348639895 * ((v101 >> 47) ^ v101));
              v80 = v297 + 16 * v103;
              v104 = *v80;
              if (v21 != *v80)
              {
                v105 = 0;
                v106 = 1;
                while (v104 != -4096)
                {
                  if (v105)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = v104 == -8192;
                  }

                  if (v107)
                  {
                    v105 = v80;
                  }

                  v108 = v103 + v106++;
                  v103 = v108 & v102;
                  v80 = v297 + 16 * (v108 & v102);
                  v104 = *v80;
                  if (v21 == *v80)
                  {
                    goto LABEL_156;
                  }
                }

                if (v105)
                {
                  v80 = v105;
                }
              }
            }

            else
            {
              v80 = 0;
            }

LABEL_156:
            LODWORD(v298) = v298 + 1;
            if (*v80 != -4096)
            {
LABEL_120:
              --HIDWORD(v298);
            }
          }

          else
          {
            LODWORD(v298) = v298 + 1;
            if (*v80 != -4096)
            {
              goto LABEL_120;
            }
          }

          *v80 = v21;
          *(v80 + 2) = 0;
          v19 = *(this + 4);
        }

LABEL_122:
        *(v80 + 2) = v72;
        v21 = v59[1];
        v18 += v72;
        v20 = *(this + 12);
        if (v20)
        {
          v86 = 0x9DDFEA08EB382D69 * ((8 * v59[1] - 0xAE502812AA7333) ^ HIDWORD(v59[1]));
          v87 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v86 >> 47) ^ v86);
          v88 = -348639895 * ((v87 >> 47) ^ v87);
          v89 = v20 - 1;
          v90 = v88 & (v20 - 1);
          v91 = *(v19 + 16 * v90);
          if (v91 == v21)
          {
LABEL_173:
            if (!v299)
            {
              goto LABEL_29;
            }

            v113 = v299 - 1;
            v114 = (v299 - 1) & v88;
            v115 = *(v75 + 2 * v114);
            if (v115 != v21)
            {
              v116 = 1;
              while (v115 != -4096)
              {
                v117 = v114 + v116++;
                v114 = v117 & v113;
                v115 = *(v75 + 2 * (v117 & v113));
                if (v115 == v21)
                {
                  goto LABEL_178;
                }
              }

              do
              {
LABEL_29:
                v16 += 4;
              }

              while (v16 != v17 && (*v16 | 0x1000) == 0xFFFFFFFFFFFFF000);
              if (v16 == v17)
              {
                goto LABEL_25;
              }

              goto LABEL_27;
            }

LABEL_178:
            v118 = 0;
            v119 = v307;
            v305 = v307;
            v306 = 0x600000000;
            v120 = v21;
            while (1)
            {
LABEL_180:
              if (v118 >= HIDWORD(v306))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v305[v118] = v120;
              v118 = v306 + 1;
              LODWORD(v306) = v306 + 1;
              v121 = *(this + 12);
              if (!v121)
              {
                goto LABEL_179;
              }

              v122 = *(this + 4);
              v123 = 0x9DDFEA08EB382D69 * ((8 * v120 - 0xAE502812AA7333) ^ HIDWORD(v120));
              v124 = 0x9DDFEA08EB382D69 * (HIDWORD(v120) ^ (v123 >> 47) ^ v123);
              LODWORD(v123) = -348639895 * ((v124 >> 47) ^ v124);
              v125 = v121 - 1;
              v126 = (v121 - 1) & v123;
              v127 = *(v122 + 16 * v126);
              if (v120 != v127)
              {
                break;
              }

LABEL_183:
              v120 = *(v122 + 16 * v126 + 8);
              if (v120 == v21)
              {
LABEL_190:
                v295[0] = 0;
                v295[1] = 0;
                v296 = 0;
                v292 = 0;
                v293 = 0;
                v294 = 0;
                v304 = *v305;
                v300 = &v305[v118];
                v301 = v305;
                llvm::detail::DenseSetImpl<mlir::Value,llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,llvm::DenseMapInfo<mlir::Value,void>>::DenseSetImpl<mlir::Value const*>(&v302, &v301, &v300);
                if (!*(this + 2))
                {
                  goto LABEL_397;
                }

                v130 = *(this + 4);
                if (v130)
                {
                  v131 = 32 * v130;
                  v132 = *this;
                  while ((*v132 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v132 += 4;
                    v131 -= 32;
                    if (!v131)
                    {
                      goto LABEL_397;
                    }
                  }
                }

                else
                {
                  v132 = *this;
                }

                v133 = *this + 32 * v130;
                if (v132 == v133)
                {
                  goto LABEL_397;
                }

                v134 = 0;
                v135 = 0;
                v136 = 0;
                v137 = 0;
                while (2)
                {
                  v138 = *v132;
                  v301 = *v132;
                  v139 = v302;
                  v140 = v303;
                  v141 = v303;
                  if (v303)
                  {
                    v142 = 0x9DDFEA08EB382D69 * ((8 * v138 - 0xAE502812AA7333) ^ HIDWORD(v138));
                    v143 = 0x9DDFEA08EB382D69 * (HIDWORD(v138) ^ (v142 >> 47) ^ v142);
                    v144 = -348639895 * ((v143 >> 47) ^ v143);
                    v141 = v144 & (v303 - 1);
                    v145 = *(v302 + v141);
                    if (v145 == v138)
                    {
LABEL_201:
                      if (v141 == v303)
                      {
                        goto LABEL_202;
                      }

                      if (v299)
                      {
                        v152 = (v299 - 1) & v144;
                        v153 = *(v297 + 2 * v152);
                        if (v153 == v138)
                        {
LABEL_210:
                          v154 = *(v297 + 4 * v152 + 2);
                          v289 = v136;
                          v155 = v132[1];
                          v156 = *(v132 + 6);
                          if (!*(v132 + 4))
                          {
                            goto LABEL_380;
                          }
                        }

                        else
                        {
                          v266 = 1;
                          while (v153 != -4096)
                          {
                            v267 = v152 + v266++;
                            v152 = v267 & (v299 - 1);
                            v153 = *(v297 + 2 * v152);
                            if (v153 == v138)
                            {
                              goto LABEL_210;
                            }
                          }

                          v154 = 0;
                          v289 = v136;
                          v155 = v132[1];
                          v156 = *(v132 + 6);
                          if (!*(v132 + 4))
                          {
LABEL_380:
                            llvm::deallocate_buffer(v155, (24 * v156));
                          }
                        }
                      }

                      else
                      {
                        v154 = 0;
                        v289 = v136;
                        v155 = v132[1];
                        v156 = *(v132 + 6);
                        if (!*(v132 + 4))
                        {
                          goto LABEL_380;
                        }
                      }

                      v158 = v155;
                      if (v156)
                      {
                        v159 = 24 * v156;
                        v158 = v155;
                        while ((*v158 | 0x1000) == 0xFFFFFFFFFFFFF000)
                        {
                          v158 = (v158 + 24);
                          v159 -= 24;
                          if (!v159)
                          {
                            goto LABEL_380;
                          }
                        }
                      }

                      v160 = (v155 + 24 * v156);
                      if (v158 == v160)
                      {
                        goto LABEL_380;
                      }

                      while (2)
                      {
                        v161 = *v158;
                        v162 = HIDWORD(*v158);
                        v163 = 8 * *v158;
                        if (v303)
                        {
                          v164 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)));
                          v165 = (-348639895 * ((v164 >> 47) ^ v164)) & (v303 - 1);
                          v166 = *(v302 + v165);
                          if (v166 == v161)
                          {
LABEL_222:
                            if (v165 != v303)
                            {
                              goto LABEL_268;
                            }
                          }

                          else
                          {
                            v202 = 1;
                            while (v166 != -4096)
                            {
                              v203 = v165 + v202++;
                              v165 = v203 & (v303 - 1);
                              v166 = *(v302 + v165);
                              if (v166 == v161)
                              {
                                goto LABEL_222;
                              }
                            }
                          }
                        }

                        if (v137)
                        {
                          v167 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)));
                          v168 = (-348639895 * ((v167 >> 47) ^ v167)) & (v137 - 1);
                          v169 = (v134 + 24 * v168);
                          v170 = *v169;
                          if (*v169 != v161)
                          {
                            v171 = 1;
                            while (v170 != -4096)
                            {
                              v172 = v168 + v171++;
                              v168 = v172 & (v137 - 1);
                              v169 = (v134 + 24 * v168);
                              v170 = *v169;
                              if (*v169 == v161)
                              {
                                goto LABEL_230;
                              }
                            }

                            goto LABEL_229;
                          }
                        }

                        else
                        {
LABEL_229:
                          v169 = (v134 + 24 * v137);
                        }

LABEL_230:
                        v173 = *(v158 + 3);
                        v174 = *(v158 + 2) - v154;
                        if (v169 == (v134 + 24 * v137) || (v175 = v169[2], v174 < v175) || v175 >= v174 && v169[3] > v173)
                        {
                          v281 = (v134 + 24 * v137);
                          v282 = 8 * *v158;
                          v176 = v294;
                          if (!v294)
                          {
                            goto LABEL_279;
                          }

                          v177 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)));
                          v178 = v294 - 1;
                          v179 = (v294 - 1) & (-348639895 * ((v177 >> 47) ^ v177));
                          v180 = v292 + 16 * v179;
                          v181 = *v180;
                          if (*v180 != v161)
                          {
                            v182 = 0;
                            v183 = 1;
                            while (v181 != -4096)
                            {
                              if (v182)
                              {
                                v184 = 0;
                              }

                              else
                              {
                                v184 = v181 == -8192;
                              }

                              if (v184)
                              {
                                v182 = v180;
                              }

                              v185 = v179 + v183++;
                              v179 = v185 & v178;
                              v180 = v292 + 16 * (v185 & v178);
                              v181 = *v180;
                              if (*v180 == v161)
                              {
                                goto LABEL_251;
                              }
                            }

                            if (v182)
                            {
                              v180 = v182;
                            }

                            if (4 * v293 + 4 >= 3 * v294)
                            {
LABEL_279:
                              v277 = HIDWORD(*v158);
                              v279 = *v158;
                              v269 = *(v158 + 2) - v154;
                              v271 = *(v158 + 3);
                              v273 = v160;
                              v275 = v154;
                              v284 = v134;
                              v204 = v119;
                              v176 = 2 * v294;
                              goto LABEL_296;
                            }

                            if (v294 + ~v293 - HIDWORD(v293) <= v294 >> 3)
                            {
                              v277 = HIDWORD(*v158);
                              v279 = *v158;
                              v269 = *(v158 + 2) - v154;
                              v271 = *(v158 + 3);
                              v273 = v160;
                              v275 = v154;
                              v284 = v134;
                              v204 = v119;
LABEL_296:
                              llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(&v292, v176);
                              if (v294)
                              {
                                v218 = 0x9DDFEA08EB382D69 * (v277 ^ ((0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v277)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v277)));
                                v219 = -348639895 * ((v218 >> 47) ^ v218);
                                v220 = v294 - 1;
                                v221 = (v294 - 1) & v219;
                                v180 = v292 + 16 * v221;
                                v222 = *v180;
                                if (*v180 != v279)
                                {
                                  v223 = 0;
                                  v224 = 1;
                                  while (v222 != -4096)
                                  {
                                    if (v223)
                                    {
                                      v225 = 0;
                                    }

                                    else
                                    {
                                      v225 = v222 == -8192;
                                    }

                                    if (v225)
                                    {
                                      v223 = v180;
                                    }

                                    v226 = v221 + v224++;
                                    v221 = v226 & v220;
                                    v180 = v292 + 16 * (v226 & v220);
                                    v222 = *v180;
                                    if (*v180 == v279)
                                    {
                                      goto LABEL_314;
                                    }
                                  }

                                  if (v223)
                                  {
                                    v180 = v223;
                                  }
                                }
                              }

                              else
                              {
                                v180 = 0;
                              }

LABEL_314:
                              v119 = v204;
                              v134 = v284;
                              v154 = v275;
                              v160 = v273;
                              v162 = v277;
                              v161 = v279;
                              v174 = v269;
                              v173 = v271;
                              LODWORD(v293) = v293 + 1;
                              if (*v180 != -4096)
                              {
LABEL_249:
                                --HIDWORD(v293);
                              }
                            }

                            else
                            {
                              LODWORD(v293) = v293 + 1;
                              if (*v180 != -4096)
                              {
                                goto LABEL_249;
                              }
                            }

                            *v180 = v161;
                            *(v180 + 1) = 0;
                          }

LABEL_251:
                          *(v180 + 1) = v301;
                          if (!v137)
                          {
                            goto LABEL_283;
                          }

                          v186 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v162)));
                          v187 = v137 - 1;
                          v188 = (-348639895 * ((v186 >> 47) ^ v186)) & (v137 - 1);
                          v189 = v134 + 24 * v188;
                          v190 = *v189;
                          if (*v189 == v161)
                          {
LABEL_267:
                            *(v189 + 2) = v174;
                            *(v189 + 3) = v173;
                            goto LABEL_268;
                          }

                          v191 = v173;
                          v192 = v161;
                          v193 = v160;
                          v194 = v154;
                          v195 = 0;
                          v196 = 1;
                          while (v190 != -4096)
                          {
                            if (v195)
                            {
                              v197 = 0;
                            }

                            else
                            {
                              v197 = v190 == -8192;
                            }

                            if (v197)
                            {
                              v195 = v189;
                            }

                            v198 = v188 + v196++;
                            v188 = v198 & v187;
                            v189 = v134 + 24 * (v198 & v187);
                            v190 = *v189;
                            if (*v189 == v192)
                            {
                              v154 = v194;
                              v160 = v193;
                              v173 = v191;
                              goto LABEL_267;
                            }
                          }

                          if (v195)
                          {
                            v189 = v195;
                          }

                          v154 = v194;
                          v160 = v193;
                          v161 = v192;
                          v173 = v191;
                          if (4 * v135 + 4 < (3 * v137))
                          {
                            v286 = v135;
                            v199 = v137;
                            if (~v135 - v289 + v137 <= v137 >> 3)
                            {
                              goto LABEL_284;
                            }

                            v200 = v137;
                          }

                          else
                          {
LABEL_283:
                            v199 = 2 * v137;
LABEL_284:
                            v278 = v162;
                            v280 = v161;
                            v270 = v174;
                            v272 = v173;
                            v274 = v160;
                            v276 = v154;
                            v205 = (v199 - 1) | ((v199 - 1) >> 1);
                            v206 = v205 | (v205 >> 2) | ((v205 | (v205 >> 2)) >> 4);
                            v207 = ((v206 | (v206 >> 8)) >> 16) | v206 | (v206 >> 8);
                            if ((v207 + 1) > 0x40)
                            {
                              v200 = (v207 + 1);
                            }

                            else
                            {
                              v200 = 64;
                            }

                            v290 = 24 * v200;
                            buffer = llvm::allocate_buffer(v290, 8uLL);
                            v209 = (v290 - 24) / 0x18 + 1;
                            v210 = v209 & 0x1FFFFFFFFFFFFFFELL;
                            v211 = 24 * (v209 & 0x1FFFFFFFFFFFFFFELL);
                            v212 = &buffer[v211 / 8];
                            if (v134)
                            {
                              v213 = buffer;
                              v214 = v209 & 0x1FFFFFFFFFFFFFFELL;
                              do
                              {
                                *v213 = -4096;
                                v213[3] = -4096;
                                v213 += 6;
                                v214 -= 2;
                              }

                              while (v214);
                              if (v209 != v210)
                              {
                                v215 = v290 - v211;
                                do
                                {
                                  *v212 = -4096;
                                  v212 += 3;
                                  v215 -= 24;
                                }

                                while (v215);
                              }

                              if (v137)
                              {
                                v287 = 0;
                                v216 = v200 - 1;
                                v217 = v134;
                                do
                                {
                                  v235 = *v217;
                                  if ((*v217 | 0x1000) != 0xFFFFFFFFFFFFF000)
                                  {
                                    v236 = 0x9DDFEA08EB382D69 * ((8 * *v217 - 0xAE502812AA7333) ^ HIDWORD(*v217));
                                    v237 = 0x9DDFEA08EB382D69 * (HIDWORD(v235) ^ (v236 >> 47) ^ v236);
                                    v238 = (-348639895 * ((v237 >> 47) ^ v237)) & v216;
                                    v234 = &buffer[3 * v238];
                                    v239 = *v234;
                                    if (v235 != *v234)
                                    {
                                      v240 = 0;
                                      v241 = 1;
                                      while (v239 != -4096)
                                      {
                                        if (v240)
                                        {
                                          v242 = 0;
                                        }

                                        else
                                        {
                                          v242 = v239 == -8192;
                                        }

                                        if (v242)
                                        {
                                          v240 = v234;
                                        }

                                        v243 = v238 + v241++;
                                        v238 = v243 & v216;
                                        v234 = &buffer[3 * (v243 & v216)];
                                        v239 = *v234;
                                        if (v235 == *v234)
                                        {
                                          goto LABEL_321;
                                        }
                                      }

                                      if (v240)
                                      {
                                        v234 = v240;
                                      }
                                    }

LABEL_321:
                                    *v234 = v235;
                                    *(v234 + 8) = *(v217 + 8);
                                    ++v287;
                                  }

                                  v217 = (v217 + 24);
                                }

                                while (v217 != v281);
                              }

                              llvm::deallocate_buffer(v134, (24 * v137));
                            }

                            v227 = buffer;
                            v228 = v209 & 0x1FFFFFFFFFFFFFFELL;
                            do
                            {
                              *v227 = -4096;
                              v227[3] = -4096;
                              v227 += 6;
                              v228 -= 2;
                            }

                            while (v228);
                            if (v209 != v210)
                            {
                              v229 = v290 - v211;
                              do
                              {
                                *v212 = -4096;
                                v212 += 3;
                                v229 -= 24;
                              }

                              while (v229);
                            }

                            v286 = 0;
                            v230 = 0x9DDFEA08EB382D69 * (v278 ^ ((0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v278)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v278)));
                            v231 = v200 - 1;
                            v232 = (v200 - 1) & (-348639895 * ((v230 >> 47) ^ v230));
                            v189 = &buffer[3 * v232];
                            v233 = *v189;
                            if (*v189 == v280)
                            {
LABEL_318:
                              v289 = 0;
                              v161 = v280;
                              v201 = v280;
                              v134 = buffer;
                              v154 = v276;
                              v160 = v274;
                              v174 = v270;
                              v173 = v272;
                              goto LABEL_266;
                            }

                            v244 = 0;
                            v245 = 1;
                            while (v233 != -4096)
                            {
                              if (v244)
                              {
                                v246 = 0;
                              }

                              else
                              {
                                v246 = v233 == -8192;
                              }

                              if (v246)
                              {
                                v244 = v189;
                              }

                              v247 = v232 + v245++;
                              v232 = v247 & v231;
                              v189 = &buffer[3 * (v247 & v231)];
                              v233 = *v189;
                              if (*v189 == v280)
                              {
                                goto LABEL_318;
                              }
                            }

                            v289 = 0;
                            if (v244)
                            {
                              v189 = v244;
                            }

                            v134 = buffer;
                            v154 = v276;
                            v160 = v274;
                            v161 = v280;
                            v174 = v270;
                            v173 = v272;
                          }

                          v201 = *v189;
LABEL_266:
                          *(v189 + 1) = 0;
                          *(v189 + 2) = 0;
                          v289 -= v201 != -4096;
                          *v189 = v161;
                          v137 = v200;
                          v135 = v286 + 1;
                          goto LABEL_267;
                        }

                        do
                        {
LABEL_268:
                          v158 = (v158 + 24);
                          if (v158 == v160)
                          {
                            goto LABEL_379;
                          }
                        }

                        while ((*v158 | 0x1000) == 0xFFFFFFFFFFFFF000);
                        if (v158 == v160)
                        {
LABEL_379:
                          v155 = v132[1];
                          v156 = *(v132 + 6);
                          goto LABEL_380;
                        }

                        continue;
                      }
                    }

                    v264 = 1;
                    while (v145 != -4096)
                    {
                      v265 = v141 + v264++;
                      v141 = v265 & (v303 - 1);
                      v145 = *(v302 + v141);
                      if (v145 == v138)
                      {
                        goto LABEL_201;
                      }
                    }

                    v141 = v303;
                    v146 = (v132 + 1);
                    v147 = v132[1];
                    v148 = *(v132 + 4);
                    if (!v148)
                    {
                      goto LABEL_381;
                    }
                  }

                  else
                  {
LABEL_202:
                    v146 = (v132 + 1);
                    v147 = v132[1];
                    v148 = *(v132 + 4);
                    if (!v148)
                    {
                      goto LABEL_381;
                    }
                  }

                  v149 = *(v146 + 16);
                  if (v149)
                  {
                    v150 = 24 * v149;
                    v151 = v147;
                    while ((*v151 | 0x1000) == 0xFFFFFFFFFFFFF000)
                    {
                      v151 += 3;
                      v150 -= 24;
                      if (!v150)
                      {
                        goto LABEL_381;
                      }
                    }

                    v283 = v134;
                    v285 = v135;
                    v157 = v119;
                  }

                  else
                  {
                    v283 = v134;
                    v285 = v135;
                    v157 = v119;
                    v151 = v147;
                  }

                  v248 = &v147[3 * v149];
                  if (v151 == v248)
                  {
                    v119 = v157;
                    v135 = v285;
                    v134 = v283;
                    goto LABEL_381;
                  }

                  v291 = v136;
                  v249 = 0;
                  v250 = 0;
                  v251 = 0;
                  v252 = v303 - 1;
LABEL_354:
                  if (v140)
                  {
                    v254 = HIDWORD(*v151);
                    v255 = 0x9DDFEA08EB382D69 * ((8 * *v151 - 0xAE502812AA7333) ^ v254);
                    v256 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v254 ^ (v255 >> 47) ^ v255)) >> 32) >> 15) ^ (-348639895 * (v254 ^ (v255 >> 47) ^ v255)))) & v252;
                    v257 = *(v139 + v256);
                    if (v257 == *v151)
                    {
LABEL_356:
                      if (v256 == v141)
                      {
                        goto LABEL_357;
                      }

                      v258 = *(v151 + 2);
                      if (v251 && v258 >= v249)
                      {
                        if (v249 < v258 || (v259 = *(v151 + 3), v259 >= v250))
                        {
LABEL_367:
                          for (i = v151 + 3; i != v248; i += 3)
                          {
                            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
                            {
                              break;
                            }
                          }

                          *v151 = -8192;
                          --v148;
                          v253 = *(v132 + 5) + 1;
                          *(v132 + 4) = v148;
                          *(v132 + 5) = v253;
                          v151 = i;
LABEL_353:
                          if (v151 == v248)
                          {
                            if (v251)
                            {
                              v263 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](v146, &v304);
                              *v263 = v249;
                              v263[1] = v250;
                              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v295, &v301) = v251;
                            }

                            v119 = v157;
                            v135 = v285;
                            v134 = v283;
                            v136 = v291;
                            do
                            {
LABEL_381:
                              v132 += 4;
                              if (v132 == v133)
                              {
                                goto LABEL_397;
                              }
                            }

                            while ((*v132 | 0x1000) == 0xFFFFFFFFFFFFF000);
                            if (v132 == v133)
                            {
LABEL_397:
                              v268 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](this, &v304);
                              llvm::deallocate_buffer(*v268, (24 * *(v268 + 16)));
                            }

                            continue;
                          }

                          goto LABEL_354;
                        }
                      }

                      else
                      {
                        v259 = *(v151 + 3);
                      }

                      v251 = *v151;
                      v250 = v259;
                      v249 = *(v151 + 2);
                      goto LABEL_367;
                    }

                    v261 = 1;
                    while (v257 != -4096)
                    {
                      v262 = v256 + v261++;
                      v256 = v262 & v252;
                      v257 = *(v139 + v256);
                      if (v257 == *v151)
                      {
                        goto LABEL_356;
                      }
                    }
                  }

                  break;
                }

                do
                {
LABEL_357:
                  v151 += 3;
                }

                while (v151 != v248 && (*v151 | 0x1000) == 0xFFFFFFFFFFFFF000);
                goto LABEL_353;
              }
            }

            v128 = 1;
            while (v127 != -4096)
            {
              v129 = v126 + v128++;
              v126 = v129 & v125;
              v127 = *(v122 + 16 * v126);
              if (v120 == v127)
              {
                goto LABEL_183;
              }
            }

LABEL_179:
            v120 = 0;
            if (!v21)
            {
              goto LABEL_190;
            }

            goto LABEL_180;
          }

          v92 = 1;
          while (v91 != -4096)
          {
            v93 = v90 + v92++;
            v90 = v93 & v89;
            v91 = *(v19 + 16 * (v93 & v89));
            if (v91 == v21)
            {
              goto LABEL_173;
            }
          }
        }
      }
    }

    if (!HIDWORD(v298))
    {
      goto LABEL_64;
    }

    v28 = v299;
    if (v299 > 0x40)
    {
LABEL_50:
      llvm::deallocate_buffer(v297, (16 * v28));
    }

LABEL_51:
    if (v28)
    {
      v38 = v297;
      v39 = (v28 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v39)
      {
        v40 = v39 + 1;
        v41 = (v39 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v42 = (v297 + 16 * v41);
        v43 = (v297 + 16);
        v44 = v41;
        do
        {
          *(v43 - 2) = -4096;
          *v43 = -4096;
          v43 += 4;
          v44 -= 2;
        }

        while (v44);
        if (v40 == v41)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v42 = v297;
      }

      v45 = (v38 + 16 * v28);
      do
      {
        *v42 = -4096;
        v42 = (v42 + 16);
      }

      while (v42 != v45);
    }

LABEL_60:
    v298 = 0;
    goto LABEL_64;
  }

  v2 = *(this + 12);
  if (v2 > 4 * *(this + 10) && v2 >= 0x41)
  {
    llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(this + 32);
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = *(this + 4);
    v4 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v4)
    {
      v5 = v4 + 1;
      v6 = (v4 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v7 = (v3 + 16 * v6);
      v8 = (v3 + 16);
      v9 = v6;
      do
      {
        *(v8 - 2) = -4096;
        *v8 = -4096;
        v8 += 4;
        v9 -= 2;
      }

      while (v9);
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = *(this + 4);
    }

    v10 = (v3 + 16 * v2);
    do
    {
      *v7 = -4096;
      v7 += 2;
    }

    while (v7 != v10);
  }

LABEL_14:
  *(this + 5) = 0;
  goto LABEL_15;
}