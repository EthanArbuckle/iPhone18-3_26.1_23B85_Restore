void mlir::Operation::~Operation(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v2 = *(this + 11);
  }

  v3 = this + 64;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = &v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v6 = 32 * v4;
    v7 = (v5 + 8);
    do
    {
      if (*v7)
      {
        v8 = *(v7 - 1);
        **v7 = v8;
        if (v8)
        {
          *(v8 + 8) = *v7;
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v9 = ((&v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v4);
    v10 = 24 * (v2 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v9);
      v9 = (v11 + 24);
      v10 -= 24;
    }

    while (v10);
    v2 = *(this + 11);
  }

  if (HIBYTE(v2))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v3[16 * ((v2 >> 23) & 1)]);
  }
}

void mlir::Operation::destroy(mlir::Operation *this)
{
  v1 = *(this + 9);
  v2 = v1 - 6;
  if (v1 >= 6)
  {
    v1 = 6;
  }

  else
  {
    v2 = 0;
  }

  v3 = 16 * v1 + 24 * v2;
  v4 = this - ((v3 - (v3 != 0) + 8 * (v3 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v4);
}

uint64_t mlir::Operation::replaceUsesOfWith(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3 && (*(result + 46) & 0x80) != 0)
  {
    v3 = *(result + 68);
    if (v3)
    {
      v4 = *(result + 72);
      v5 = 32 * v3;
      do
      {
        if (v4[3] == a2)
        {
          v6 = v4[1];
          if (v6)
          {
            v7 = *v4;
            *v6 = *v4;
            if (v7)
            {
              *(v7 + 8) = v4[1];
            }
          }

          v4[3] = a3;
          v8 = *a3;
          *v4 = *a3;
          v4[1] = a3;
          if (v8)
          {
            *(v8 + 8) = v4;
          }

          *a3 = v4;
        }

        v4 += 4;
        v5 -= 32;
      }

      while (v5);
    }
  }

  return result;
}

void mlir::Operation::emitError(uint64_t *__return_ptr a1@<X8>, void **this@<X0>, const llvm::Twine *a3@<X1>)
{
  emitDiag(this[3], 2, a3, a1);
  v5 = this[3];
  if (*(**(**v5 + 32) + 42) == 1)
  {
    mlir::Diagnostic::attachNote(a1 + 1, v5, 1);
  }
}

void mlir::Operation::emitWarning(void **this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  emitDiag(this[3], 1, a2, a3);
  v5 = this[3];
  if (*(**(**v5 + 32) + 42) == 1)
  {
    mlir::Diagnostic::attachNote((a3 + 8), v5, 1);
  }
}

unint64_t mlir::Operation::getAttrDictionary(mlir::Operation *this)
{
  v6[9] = *MEMORY[0x277D85DE8];
  if (*(this + 47))
  {
    mlir::NamedAttrList::NamedAttrList(v5, *(this + 7));
    (*(**(this + 6) + 96))(*(this + 6), this, v5);
    Dictionary = mlir::NamedAttrList::getDictionary(v5, *(***(this + 3) + 32));
    if (v5[0] != v6)
    {
      free(v5[0]);
    }
  }

  else
  {
    Dictionary = *(this + 7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return Dictionary;
}

void mlir::Operation::setAttrs(uint64_t a1, __int128 *a2, unint64_t a3)
{
  v4 = a2;
  v15[6] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 47))
  {
    *(a1 + 56) = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), a2, a3);
    goto LABEL_14;
  }

  v13 = v15;
  v14 = 0x300000000;
  if (a3 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, a3, 16);
    goto LABEL_6;
  }

  if (a3)
  {
LABEL_6:
    v6 = &v4[2 * a3];
    do
    {
      v7 = *v4;
      v8 = v4[1];
      (*(**(a1 + 48) + 80))(*(a1 + 48), a1, *(*v4 + 16), *(*v4 + 24));
      if (v9)
      {
        (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v7, v8);
      }

      else
      {
        llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v7, v8);
      }

      v4 += 2;
    }

    while (v4 != v6);
    v10 = v13;
    v11 = v14;
    goto LABEL_12;
  }

  v11 = 0;
  v10 = v15;
LABEL_12:
  *(a1 + 56) = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), v10, v11);
  if (v13 != v15)
  {
    free(v13);
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Operation::getPropertiesAsAttribute(mlir::Operation *this)
{
  v2 = *(this + 6);
  if (v2[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return (*(*v2 + 19))(v2, this);
  }
}

BOOL mlir::Operation::isBeforeInBlock(mlir::Operation *this, mlir::Operation *a2)
{
  v4 = *(this + 2);
  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    mlir::Operation::updateOrderIfNecessary(this);
    mlir::Operation::updateOrderIfNecessary(a2);
  }

  else
  {
    *(v4 + 24) = v5 | 4;
    v6 = v4 + 32;
    v7 = *(v4 + 40);
    if (v7 != v6)
    {
      v8 = 5;
      do
      {
        *(v7 + 32) = v8;
        v7 = *(v7 + 8);
        v8 += 5;
      }

      while (v7 != v6);
    }
  }

  return *(this + 8) < *(a2 + 8);
}

uint64_t *mlir::Operation::updateOrderIfNecessary(uint64_t *this)
{
  if (*(this + 8) != -1)
  {
    return this;
  }

  v1 = this[2];
  v2 = v1[5];
  v3 = (v1 + 4);
  if (v2 != v1 + 4 && *(v2 + 8) == v3)
  {
    return this;
  }

  if (*v3 == this)
  {
    v8 = *this;
    if (v2 == this)
    {
      v8 = 0;
    }

    v9 = *(v8 + 32);
    if (v9 != -1)
    {
      v10 = v9 + 5;
      goto LABEL_44;
    }

    v1[3] |= 4uLL;
    if (v2 != v3)
    {
      v15 = 5;
      do
      {
        *(v2 + 32) = v15;
        v2 = *(v2 + 8);
        v15 += 5;
      }

      while (v2 != v3);
    }
  }

  else if (v2 == this)
  {
    v12 = this[1];
    if (v12 == v3)
    {
      v12 = 0;
    }

    v13 = *(v12 + 32);
    if (v13)
    {
      if (v13 != -1)
      {
        v10 = v13 >> 1;
        if (v13 > 5)
        {
          v10 = 5;
        }

        goto LABEL_44;
      }

      v1[3] |= 4uLL;
      if (v2 != v3)
      {
        v14 = 5;
        do
        {
          *(v2 + 32) = v14;
          v2 = *(v2 + 8);
          v14 += 5;
        }

        while (v2 != v3);
      }
    }

    else
    {
      v1[3] |= 4uLL;
      if (v2 != v3)
      {
        v16 = 5;
        do
        {
          *(v2 + 32) = v16;
          v2 = *(v2 + 8);
          v16 += 5;
        }

        while (v2 != v3);
      }
    }
  }

  else
  {
    v4 = *(*this + 32);
    if (v4 != -1)
    {
      v5 = this[1];
      if (v5 == v3)
      {
        v5 = 0;
      }

      v6 = *(v5 + 32);
      if (v6 != -1)
      {
        if (v4 + 1 == v6)
        {
          v1[3] |= 4uLL;
          if (v2 != v3)
          {
            v7 = 5;
            do
            {
              *(v2 + 32) = v7;
              v2 = *(v2 + 8);
              v7 += 5;
            }

            while (v2 != v3);
          }

          return this;
        }

        v10 = v4 + ((v6 - v4) >> 1);
LABEL_44:
        *(this + 8) = v10;
        return this;
      }
    }

    v1[3] |= 4uLL;
    if (v2 != v3)
    {
      v11 = 5;
      do
      {
        *(v2 + 32) = v11;
        v2 = *(v2 + 8);
        v11 += 5;
      }

      while (v2 != v3);
    }
  }

  return this;
}

void mlir::Operation::erase(mlir::Operation *this)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v2 = *this;
    v1 = *(this + 1);
    *v1 = *this;
    *(v2 + 8) = v1;
    *this = 0;
    *(this + 1) = 0;
  }

  mlir::Operation::destroy(this);
}

uint64_t *mlir::Operation::moveBefore(uint64_t *this, mlir::Operation *a2)
{
  if (this != a2)
  {
    v2 = this[1];
    if (v2 != a2)
    {
      return llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(*(a2 + 2) + 32, a2, this[2] + 32, this, v2);
    }
  }

  return this;
}

uint64_t *mlir::Operation::moveAfter(uint64_t *this, mlir::Operation *a2)
{
  v3 = *(a2 + 1);
  v4 = this[1];
  if (v3 != this && v4 != v3)
  {
    return llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(*(a2 + 2) + 32, v3, this[2] + 32, this, v4);
  }

  return this;
}

uint64_t mlir::Operation::dropAllReferences(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if ((v2 & 0x800000) != 0)
  {
    v3 = *(this + 68);
    if (v3)
    {
      v4 = *(this + 72);
      v5 = 32 * v3;
      do
      {
        v6 = v4[1];
        if (v6)
        {
          v7 = *v4;
          *v6 = *v4;
          if (v7)
          {
            *(v7 + 8) = v4[1];
          }
        }

        *v4 = 0;
        v4[1] = 0;
        v4[3] = 0;
        v4 += 4;
        v5 -= 32;
      }

      while (v5);
      v2 = *(this + 44);
    }
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v8 = ((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 40);
    v9 = 24 * (v2 & 0x7FFFFF);
    do
    {
      this = mlir::Region::dropAllReferences(v8);
      v8 += 24;
      v9 -= 24;
    }

    while (v9);
    v2 = *(v1 + 44);
  }

  v10 = *(v1 + 40);
  if (v10)
  {
    v11 = ((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8);
    v12 = 32 * v10;
    do
    {
      v13 = v11[1];
      if (v13)
      {
        v14 = *v11;
        *v13 = *v11;
        if (v14)
        {
          *(v14 + 8) = v11[1];
        }
      }

      *v11 = 0;
      v11[1] = 0;
      v11[3] = 0;
      v11 += 4;
      v12 -= 32;
    }

    while (v12);
  }

  return this;
}

uint64_t **mlir::Operation::dropAllDefinedValueUses(uint64_t **this)
{
  result = mlir::Operation::dropAllUses(this);
  v3 = *(this + 11);
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = ((&this[2 * ((v3 >> 23) & 1) + 8] + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = v4 + 24 * (v3 & 0x7FFFFF);
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        if (i)
        {
          v7 = (i - 8);
        }

        else
        {
          v7 = 0;
        }

        result = mlir::Block::dropAllDefinedValueUses(v7);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t mlir::Operation::setSuccessor(uint64_t this, mlir::Block *a2, unsigned int a3)
{
  v3 = (((this + 16 * ((*(this + 44) >> 23) & 1) + ((*(this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    *v4 = *v3;
    if (v5)
    {
      *(v5 + 8) = v3[1];
    }
  }

  v3[3] = a2;
  v6 = *a2;
  *v3 = *a2;
  v3[1] = a2;
  if (v6)
  {
    *(v6 + 8) = v3;
  }

  *a2 = v3;
  return this;
}

uint64_t mlir::Operation::fold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 48) + 16))(*(a1 + 48), a1, a2, a3, a4))
  {
    return 1;
  }

  v6 = *(a1 + 48);
  if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = (*(v6 + 8) + 32);
  }

  else
  {
    v7 = (v6 + 24);
  }

  v8 = *v7;
  if (!*v7)
  {
    return 0;
  }

  result = mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(*v7);
  if (result)
  {
    v9 = *(*mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(v8) + 16);

    return v9();
  }

  return result;
}

uint64_t mlir::Operation::fold(uint64_t a1, uint64_t a2)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x600000000;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v4 = *(a1 + 68);
  }

  else
  {
    v4 = 0;
  }

  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v17, v4, 0);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      v8 = 24;
      do
      {
        v9 = *(*(a1 + 72) + v8);
        v16 = (v17 + v6);
        if ((~*(v9 + 8) & 7) == 0)
        {
          v9 = 0;
        }

        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = *(v9 + 8) & 7;
        if (v10 == 6)
        {
          v11 = v9 + 24 * *(v9 + 16);
          v12 = v11 + 120;
          if (v11 == -120)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v12 = v9 + 16 * v10 + 16;
        }

        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v12);
LABEL_14:
        v6 += 8;
        v8 += 32;
      }

      while (v7 != v6);
    }
  }

  v13 = mlir::Operation::fold(a1, v17, v18, a2);
  if (v17 != v19)
  {
    free(v17);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void llvm::SmallVectorImpl<mlir::Attribute>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = *(a1 + 8);
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    if (v4)
    {
      v5 = 0;
      v6 = (v4 + 1) & 0x1FFFFFFFELL;
      v7 = vdupq_n_s64(v4 - 1);
      v8 = (*a1 + 8);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *(v8 - 1) = a3;
        }

        if (v9.i8[4])
        {
          *v8 = a3;
        }

        v5 += 2;
        v8 += 2;
      }

      while (v6 != v5);
    }

    v10 = a2 - v3;
    if (a2 > v3)
    {
      v11 = 0;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = (*a1 + 8 * v3 + 8);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *(v13 - 1) = a3;
        }

        if (v14.i8[4])
        {
          *v13 = a3;
        }

        v11 += 2;
        v13 += 2;
      }

      while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::growAndAssign(a1, a2, a3);
  }
}

void mlir::Operation::emitOpError(mlir::Operation *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v7[16] = 257;
  mlir::Operation::emitError(&v8, this, v7);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      mlir::Diagnostic::operator<<(v9, *(this + 6));
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
        if (v8)
        {
          mlir::Diagnostic::operator<<(v9, a2);
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
}

char *mlir::Operation::clone(uint64_t a1, uint64_t a2, char a3)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v43 = v45;
  v44 = 0x800000000;
  v40 = v42;
  v41 = 0x200000000;
  if ((a3 & 2) != 0 && (*(a1 + 46) & 0x80) != 0)
  {
    v6 = *(a1 + 68);
    if (v6 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v6, 8);
      if ((*(a1 + 46) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      LODWORD(v6) = *(a1 + 68);
    }

    if (v6)
    {
      v7 = v6;
      v8 = (*(a1 + 72) + 24);
      do
      {
        v9 = *v8;
        v37[0] = *v8;
        v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a2, v37);
        if (v10 && v10 != *a2 + 16 * *(a2 + 16))
        {
          v9 = *(v10 + 8);
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v43, v9);
        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

LABEL_12:
  v11 = *(a1 + 40);
  if (HIDWORD(v41) < v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v11, 8);
    LODWORD(v11) = *(a1 + 40);
  }

  if (v11)
  {
    v12 = v11;
    v13 = (((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
    do
    {
      v14 = *v13;
      v37[0] = *v13;
      v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::doFind<mlir::Block const*>((a2 + 24), v37);
      if (v15 && v15 != *(a2 + 24) + 16 * *(a2 + 40))
      {
        v14 = *(v15 + 8);
      }

      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v40, v14);
      v13 += 4;
      --v12;
    }

    while (v12);
  }

  v16 = *(a1 + 24);
  v17 = *(a1 + 48);
  v18 = *(a1 + 36);
  v19 = a1 - 16;
  if (v18)
  {
    v20 = a1 - 16;
  }

  else
  {
    v20 = 0;
  }

  v37[0] = v20;
  v37[1] = 0;
  v37[2] = v20;
  v37[3] = v18;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v38, v37);
  v21 = *(a1 + 44);
  if (HIBYTE(*(a1 + 44)))
  {
    v22 = a1 + 64 + 16 * ((v21 >> 23) & 1);
  }

  else
  {
    v22 = 0;
  }

  v23 = v40 | 4;
  if (!v41)
  {
    v23 = 0;
  }

  v24 = mlir::Operation::create(v16, v17, v38, v39, v43 & 0xFFFFFFFFFFFFFFF9, v44, *(a1 + 56), v22, v23, v41, 0, v21 & 0x7FFFFF);
  v37[0] = a1;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::operator[]((a2 + 48), v37) = v24;
  if (a3)
  {
    v25 = *(a1 + 44);
    if ((v25 & 0x7FFFFF) != 0)
    {
      v26 = 0;
      do
      {
        v27 = (&v24[16 * ((*(v24 + 11) >> 23) & 1) + 71 + ((*(v24 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24 + 10) + 24 * v26;
        mlir::Region::cloneInto((((a1 + 64 + 16 * ((v25 >> 23) & 1) + ((v25 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 24 * v26++), v27, v27, a2);
        v25 = *(a1 + 44);
      }

      while (v26 != (v25 & 0x7FFFFF));
    }
  }

  v28 = *(a1 + 36);
  if (v28)
  {
    v29 = 0;
    v30 = v24 + 24;
    v31 = a1 + 24;
    v32 = v24 - 16;
    do
    {
      if (v29 >= 6)
      {
        v33 = v31;
      }

      else
      {
        v33 = v19;
      }

      if (v29 >= 6)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      ++v29;
      v37[0] = v33;
      v30 -= 24;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a2, v37) = v34;
      v31 -= 24;
      v32 -= 16;
      v19 -= 16;
    }

    while (v28 != v29);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

char *mlir::Operation::cloneWithoutRegions(mlir::Operation *this)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v1 = mlir::Operation::clone(this, v3, 2);
  MEMORY[0x25F891030](v8, 8);
  MEMORY[0x25F891030](v5, 8);
  MEMORY[0x25F891030](v3[0], 8);
  return v1;
}

char *mlir::Operation::clone(uint64_t a1, char a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = mlir::Operation::clone(a1, v4, a2);
  MEMORY[0x25F891030](v9, 8);
  MEMORY[0x25F891030](v6, 8);
  MEMORY[0x25F891030](v4[0], 8);
  return v2;
}

uint64_t mlir::OpState::parse(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v6 = *(v4 + 8);
    v5 = v6 + 32;
  }

  else
  {
    v5 = v4 + 24;
    v6 = *(v4 + 8);
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  (*(**v5 + 64))(v15);
  if (v16 == 1)
  {
    v9 = (v15[0])(v15[1], a1, a2);
  }

  else
  {
    v10 = (*(*a1 + 16))(a1);
    v13 = "has no custom assembly form";
    v14 = 259;
    (*(*a1 + 24))(v15, a1, v10, &v13);
    v9 = (v17 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void *mlir::OpState::print(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v9 = *(v8 + 8) + 32;
  }

  else
  {
    v9 = v8 + 24;
  }

  (*(**v9 + 72))(v13);
  if (v14 < 8)
  {
    (*(*a2 + 216))(a2, a1, 1);
  }

  else
  {
    mlir::OpState::printOpName(a1, a2, a3, a4);
    if ((v14 & 2) != 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13[0];
    }

    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2);
  }

  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &>::~UniqueFunctionBase(v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::OpState::printOpName(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v24 = 773;
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = ".";
  llvm::Twine::str(v23, v25);
  v9 = v26;
  v10 = v25[0];
  if (v26 >= 0)
  {
    v11 = v25;
  }

  else
  {
    v11 = v25[0];
  }

  if (v26 >= 0)
  {
    v12 = v26;
  }

  else
  {
    v12 = v25[1];
  }

  if (v8 < v12 || v12 && memcmp(v7, v11, v12))
  {
    if (v9 < 0)
    {
      operator delete(v10);
    }

    goto LABEL_24;
  }

  if (v8)
  {
    v13 = 0;
    v14 = v7;
    v15 = v8;
    do
    {
      v16 = *v14++;
      if (v16 == 46)
      {
        ++v13;
      }

      --v15;
    }

    while (v15);
    v17 = v13 == 1;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = 0;
  if (v9 < 0)
  {
LABEL_18:
    operator delete(v10);
  }

LABEL_19:
  if (v8 >= a4 + 1)
  {
    v18 = a4 + 1;
  }

  else
  {
    v18 = v8;
  }

  v19 = &v18[v7];
  v20 = v8 - v18;
  if (v17)
  {
    v7 = v19;
    v8 = v20;
  }

LABEL_24:
  v21 = (*(*a2 + 16))(a2);
  return llvm::raw_ostream::operator<<(v21, v7, v8);
}

BOOL mlir::OpTrait::impl::foldCommutative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a2;
  v25[1] = a3;
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
  v24 = v6;
  v7 = (v6 + 32 * v3);
  v8 = 32 * v3;
  v9 = v8;
  while (!*(a2 + (v5 >> 2)))
  {
    v5 += 32;
    v9 -= 32;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v26[0] = v25;
  v26[1] = &v24;
  if (!v9)
  {
LABEL_13:
    v11 = v7;
    return v11 != v7;
  }

  v10 = 0;
  v11 = (v6 + v5);
  for (i = v5; !*(a2 + (i >> 2)); i += 32)
  {
    v10 += 32;
    if (v9 == v10)
    {
      return v11 != v7;
    }
  }

  v13 = v8 - 32;
  v14 = v9 - v10;
  v15 = (v6 + v5 + v10);
  do
  {
    v14 -= 32;
    if (!v14)
    {
      v7 = v15;
      return v11 != v7;
    }

    v7 -= 4;
    v16 = *(a2 + (v13 >> 2));
    v13 -= 32;
  }

  while (v16);
  v17 = (v14 >> 5) + 1;
  if (v14 >> 5 < 3)
  {
    v23 = 0;
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

    v19 = MEMORY[0x277D826F0];
    while (1)
    {
      v20 = operator new(32 * v18, v19);
      if (v20)
      {
        break;
      }

      v21 = v18 >> 1;
      v22 = v18 > 1;
      v18 >>= 1;
      if (!v22)
      {
        v23 = 0;
        v18 = v21;
        goto LABEL_29;
      }
    }

    v23 = v20;
  }

LABEL_29:
  v7 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(v15, v7, v26, v17, v23, v18);
  if (v23)
  {
    operator delete(v23);
  }

  return v11 != v7;
}

uint64_t mlir::OpTrait::impl::foldIdempotent(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    v2 = *(*(this + 9) + 24);
    if ((~*(v2 + 8) & 7) != 0)
    {
      v3 = *(*(this + 9) + 24);
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return 0;
    }

    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v5 = v3 + 24 * *(v3 + 16) + 120;
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v5 = v3 + 16 * v4 + 16;
    }

    v9 = v2 | 4;
    if (*(this + 6) == *(v5 + 48))
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(this + 9);
    v7 = *(v6 + 24);
    if (v7 != *(v6 + 56))
    {
      return 0;
    }

    return v7 | 4;
  }
}

BOOL mlir::OpTrait::impl::verifyZeroOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17))
  {
    v5[16] = 257;
    mlir::Operation::emitOpError(this, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<23ul>(v7, "requires zero operands");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  else
  {
    v2 = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyOneOperand(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    v2 = 1;
  }

  else
  {
    v5[16] = 257;
    mlir::Operation::emitOpError(this, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<26ul>(v7, "requires a single operand");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyNOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v15[25] = *MEMORY[0x277D85DE8];
  v13 = a2;
  if ((*(this + 46) & 0x80) != 0)
  {
    v3 = *(this + 17);
  }

  else
  {
    v3 = 0;
  }

  if (v3 == a2)
  {
    v4 = 1;
  }

  else
  {
    v12 = 257;
    mlir::Operation::emitOpError(this, v11, &v14);
    if (v14)
    {
      mlir::Diagnostic::operator<<<10ul>(v15, "expected ");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v14, &v13);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<22ul>((v5 + 1), " operands, but found ");
    }

    if ((*(this + 46) & 0x80) != 0)
    {
      v7 = *(this + 17);
    }

    else
    {
      v7 = 0;
    }

    v10 = v7;
    v4 = (*(mlir::InFlightDiagnostic::operator<<<unsigned int>(v6, &v10) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v15[25] = *MEMORY[0x277D85DE8];
  v13 = a2;
  if ((*(this + 46) & 0x80) != 0)
  {
    v3 = *(this + 17);
  }

  else
  {
    v3 = 0;
  }

  if (v3 >= a2)
  {
    v7 = 1;
  }

  else
  {
    v12 = 257;
    mlir::Operation::emitOpError(this, v11, &v14);
    if (v14)
    {
      mlir::Diagnostic::operator<<<10ul>(v15, "expected ");
    }

    v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v14, &v13);
    v5 = v4;
    if (*v4)
    {
      mlir::Diagnostic::operator<<<30ul>((v4 + 1), " or more operands, but found ");
    }

    if ((*(this + 46) & 0x80) != 0)
    {
      v6 = *(this + 17);
    }

    else
    {
      v6 = 0;
    }

    v10 = v6;
    v7 = (*(mlir::InFlightDiagnostic::operator<<<unsigned int>(v5, &v10) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::OpTrait::impl::verifySameTypeOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = *(this + 17);
    if (v2 >= 2)
    {
      v4 = *(this + 9);
      v5 = *(*(v4 + 24) + 8);
      v6 = (v4 + 56);
      while (--v2)
      {
        v7 = *v6;
        v6 += 4;
        if ((*(v7 + 8) ^ v5) >= 8)
        {
          v10[16] = 257;
          mlir::Operation::emitOpError(this, v10, &v11);
          if (v11)
          {
            mlir::Diagnostic::operator<<<44ul>(v12, "requires all operands to have the same type");
          }

          v3 = (v12[192] & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
          goto LABEL_10;
        }
      }
    }
  }

  v3 = 1;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::OpTrait::impl::verifyZeroRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(this + 11) & 0x7FFFFF) != 0)
  {
    v5[16] = 257;
    mlir::Operation::emitOpError(this, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<22ul>(v7, "requires zero regions");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  else
  {
    v2 = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyOneRegion(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    v2 = 1;
  }

  else
  {
    v5[16] = 257;
    mlir::Operation::emitOpError(this, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<20ul>(v7, "requires one region");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if ((*(this + 11) & 0x7FFFFF) == a2)
  {
    v2 = 1;
  }

  else
  {
    v8 = 257;
    mlir::Operation::emitOpError(this, v7, &v10);
    if (v10)
    {
      mlir::Diagnostic::operator<<<10ul>(v11, "expected ");
    }

    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v10, &v9);
    v4 = v3;
    if (*v3)
    {
      mlir::Diagnostic::operator<<<9ul>((v3 + 1), " regions");
    }

    v2 = (v4[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if ((*(this + 11) & 0x7FFFFFu) >= a2)
  {
    v4 = 1;
  }

  else
  {
    v8 = 257;
    mlir::Operation::emitOpError(this, v7, &v10);
    if (v10)
    {
      mlir::Diagnostic::operator<<<10ul>(v11, "expected ");
    }

    v2 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v10, &v9);
    v3 = v2;
    if (*v2)
    {
      mlir::Diagnostic::operator<<<17ul>((v2 + 1), " or more regions");
    }

    v4 = (v3[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::OpTrait::impl::verifyZeroResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 9))
  {
    v5[16] = 257;
    mlir::Operation::emitOpError(this, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<22ul>(v7, "requires zero results");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  else
  {
    v2 = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyOneResult(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 9) == 1)
  {
    v2 = 1;
  }

  else
  {
    v5[16] = 257;
    mlir::Operation::emitOpError(this, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<20ul>(v7, "requires one result");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (*(this + 9) == a2)
  {
    v2 = 1;
  }

  else
  {
    v8 = 257;
    mlir::Operation::emitOpError(this, v7, &v10);
    if (v10)
    {
      mlir::Diagnostic::operator<<<10ul>(v11, "expected ");
    }

    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v10, &v9);
    v4 = v3;
    if (*v3)
    {
      mlir::Diagnostic::operator<<<9ul>((v3 + 1), " results");
    }

    v2 = (v4[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (*(this + 9) >= a2)
  {
    v4 = 1;
  }

  else
  {
    v8 = 257;
    mlir::Operation::emitOpError(this, v7, &v10);
    if (v10)
    {
      mlir::Diagnostic::operator<<<10ul>(v11, "expected ");
    }

    v2 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v10, &v9);
    v3 = v2;
    if (*v2)
    {
      mlir::Diagnostic::operator<<<17ul>((v2 + 1), " or more results");
    }

    v4 = (v3[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::OpTrait::impl::verifySameOperandsShape(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1))
  {
    if ((*(this + 46) & 0x80) != 0 && (v3 = *(this + 17), v3))
    {
      if ((*(this + 9) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v4 = *(this + 9) & 0xFFFFFFFFFFFFFFF8 | 4;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    if (mlir::verifyCompatibleShapes(v4, v3))
    {
      v5 = 1;
    }

    else
    {
      v8[16] = 257;
      mlir::Operation::emitOpError(this, v8, &v9);
      if (v9)
      {
        mlir::Diagnostic::operator<<<41ul>(v10, "requires the same shape for all operands");
      }

      v5 = (v10[192] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::OpTrait::impl::verifySameOperandsAndResultShape(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) && mlir::OpTrait::impl::verifyAtLeastNResults(this, 1))
  {
    if ((*(this + 46) & 0x80) != 0)
    {
      v3 = *(this + 9);
      v4 = *(this + 17);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v14 = v16;
    v15 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v14, v3, 0, v3, v4);
    v5 = *(this + 9);
    if (v5)
    {
      v6 = this - 16;
    }

    else
    {
      v6 = 0;
    }

    __src = v13;
    v12 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&__src, v6, 0, v6, v5);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v14, __src, __src + 8 * v12);
    if (__src != v13)
    {
      free(__src);
    }

    if (mlir::verifyCompatibleShapes(v14 & 0xFFFFFFFFFFFFFFF9 | 2, v15))
    {
      v7 = 1;
    }

    else
    {
      v10[16] = 257;
      mlir::Operation::emitOpError(this, v10, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<53ul>(&v12, "requires the same shape for all operands and results");
      }

      v7 = (v13[184] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v14 != v16)
    {
      free(v14);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::OpTrait::impl::verifySameOperandsElementType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1))
  {
    v3 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }

    if ((*(this + 46) & 0x80) != 0)
    {
      v9 = *(this + 17);
      if (v9 == 1)
      {
LABEL_19:
        v7 = 1;
        goto LABEL_21;
      }

      v10 = *(this + 9);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v10 + 56;
    v12 = v9 - 1;
    while (1)
    {
      v13 = (*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v13);
      v16 = v14;
      if (v14)
      {
        v14 = (*(v15 + 8))(v15, v14);
      }

      v17 = v16 ? v14 : v13;
      if (v17 != v8)
      {
        break;
      }

      v11 += 32;
      if (!--v12)
      {
        goto LABEL_19;
      }
    }

    v20 = "requires the same element type for all operands";
    v21 = 259;
    mlir::Operation::emitOpError(this, &v20, v22);
    v7 = (v22[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  else
  {
    v7 = 0;
  }

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OpTrait::impl::verifySameOperandsAndResultElementType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) && mlir::OpTrait::impl::verifyAtLeastNResults(this, 1))
  {
    v3 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = *(this + 9);
    if (v11 != 1)
    {
      if (v11)
      {
        v12 = this - 16;
      }

      else
      {
        v12 = 0;
      }

      v13 = this - 32;
      for (i = 1; v11 != i; ++i)
      {
        v15 = this - 16;
        v16 = i;
        if (v11)
        {
          v17 = *(v12 + 1) & 7;
          v15 = this - 16;
          v16 = i;
          if (v17 != 6)
          {
            v18 = (5 - v17);
            v19 = v13;
            v16 = i - v18;
            if (i <= v18)
            {
              goto LABEL_20;
            }

            v15 = this - 16 * v18 - 16;
          }
        }

        v19 = &v15[-24 * v16];
LABEL_20:
        v20 = (*(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
        v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20);
        v23 = v21;
        if (v21)
        {
          v21 = (*(v22 + 8))(v22, v21);
        }

        if (v23)
        {
          v24 = v21;
        }

        else
        {
          v24 = v20;
        }

        if (v24 != v10)
        {
          goto LABEL_38;
        }

        v13 -= 16;
      }
    }

    if ((*(this + 46) & 0x80) != 0 && (v25 = *(this + 17), v25))
    {
      v26 = *(this + 9) + 24;
      while (1)
      {
        v27 = (*(*v26 + 8) & 0xFFFFFFFFFFFFFFF8);
        v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v27);
        v30 = v28;
        if (v28)
        {
          v28 = (*(v29 + 8))(v29, v28);
        }

        v31 = v30 ? v28 : v27;
        if (v31 != v10)
        {
          break;
        }

        v26 += 32;
        if (!--v25)
        {
          goto LABEL_37;
        }
      }

LABEL_38:
      v32 = "requires the same element type for all operands and results";
      v33 = 259;
      mlir::Operation::emitOpError(this, &v32, v34);
      v7 = v34[200] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
    }

    else
    {
LABEL_37:
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::OpTrait::impl::verifySameOperandsAndResultType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) && mlir::OpTrait::impl::verifyAtLeastNResults(this, 1))
  {
    v3 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v3;
    if (v4)
    {
      v6 = (*(v5 + 8))(v5, v4);
    }

    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v7 = v3[4];
    }

    else
    {
      v7 = 0;
    }

    v11 = *(this + 9);
    if (v11 != 1)
    {
      if (v11)
      {
        v12 = this - 16;
      }

      else
      {
        v12 = 0;
      }

      v13 = this - 32;
      for (i = 1; v11 != i; ++i)
      {
        v15 = this - 16;
        v16 = i;
        if (v11)
        {
          v17 = *(v12 + 1) & 7;
          v15 = this - 16;
          v16 = i;
          if (v17 != 6)
          {
            v18 = (5 - v17);
            v19 = v13;
            v16 = i - v18;
            if (i <= v18)
            {
              goto LABEL_20;
            }

            v15 = this - 16 * v18 - 16;
          }
        }

        v19 = &v15[-24 * v16];
LABEL_20:
        v20 = (*(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
        v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20);
        v23 = v20;
        if (v22)
        {
          v23 = (*(v21 + 8))(v21, v22);
        }

        if (v23 != v6 || !mlir::verifyCompatibleShape(v20, v3))
        {
          goto LABEL_44;
        }

        if (v7)
        {
          v24 = *(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? v20 : 0;
          if (v7 != v24[4])
          {
LABEL_47:
            v33 = 257;
            mlir::Operation::emitOpError(this, v32, &v34);
            if (v34)
            {
              mlir::Diagnostic::operator<<<56ul>(v35, "requires the same encoding for all operands and results");
            }

            goto LABEL_49;
          }
        }

        v13 -= 16;
      }
    }

    if ((*(this + 46) & 0x80) != 0 && (v25 = *(this + 17), v25))
    {
      v26 = *(this + 9) + 24;
      while (1)
      {
        v27 = (*(*v26 + 8) & 0xFFFFFFFFFFFFFFF8);
        v29 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v27);
        v30 = v27;
        if (v29)
        {
          v30 = (*(v28 + 8))(v28, v29);
        }

        if (v30 != v6 || !mlir::verifyCompatibleShape(v27, v3))
        {
          break;
        }

        if (v7)
        {
          v31 = *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? v27 : 0;
          if (v7 != v31[4])
          {
            goto LABEL_47;
          }
        }

        v26 += 32;
        v8 = 1;
        if (!--v25)
        {
          goto LABEL_8;
        }
      }

LABEL_44:
      v33 = 257;
      mlir::Operation::emitOpError(this, v32, &v34);
      if (v34)
      {
        mlir::Diagnostic::operator<<<52ul>(v35, "requires the same type for all operands and results");
      }

LABEL_49:
      v8 = v35[192] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

BOOL mlir::OpTrait::impl::verifyIsTerminator(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2 && *(v2 + 32) == this)
  {
    v3 = 1;
  }

  else
  {
    v6 = "must be the last operation in the parent block";
    v7 = 259;
    mlir::Operation::emitOpError(this, &v6, v8);
    v3 = (v8[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::OpTrait::impl::verifyZeroSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 1;
  if (*(this + 10))
  {
    v7 = "requires 0 successors but found ";
    v8 = 259;
    mlir::Operation::emitOpError(this, &v7, v9);
    v6 = *(this + 10);
    v2 = (*(mlir::InFlightDiagnostic::operator<<<unsigned int>(v9, &v6) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::OpTrait::impl::verifyOneSuccessor(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(this + 10) == 1)
  {
    v3 = *MEMORY[0x277D85DE8];

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v8 = "requires 1 successor but found ";
    v9 = 259;
    mlir::Operation::emitOpError(this, &v8, v10);
    v7 = *(this + 10);
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v10, &v7) + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    v6 = *MEMORY[0x277D85DE8];
    return (v5 & 1) == 0;
  }
}

BOOL verifyTerminatorSuccessors(mlir::Operation *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 2);
  if (v1)
  {
    v1 = *(v1 + 24) & 0xFFFFFFFFFFFFFFF8;
  }

  v2 = *(a1 + 10);
  if (v2)
  {
    v3 = ((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24;
    while (v1 == (*(*v3 + 24) & 0xFFFFFFFFFFFFFFF8))
    {
      v3 += 32;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    v7 = "reference to block defined in another region";
    v8 = 259;
    mlir::Operation::emitError(v9, a1, &v7);
    v4 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  else
  {
LABEL_7:
    v4 = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::OpTrait::impl::verifyNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = a2;
  if (*(this + 10) == a2)
  {
    v3 = *MEMORY[0x277D85DE8];

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v10 = "requires ";
    v11 = 259;
    mlir::Operation::emitOpError(this, &v10, v13);
    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v13, &v12);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<23ul>((v5 + 1), " successors but found ");
    }

    v9 = *(this + 10);
    v7 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v6, &v9) + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    v8 = *MEMORY[0x277D85DE8];
    return (v7 & 1) == 0;
  }
}

BOOL mlir::OpTrait::impl::verifyAtLeastNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = a2;
  if (*(this + 10) >= a2)
  {
    v8 = *MEMORY[0x277D85DE8];

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v10 = "requires at least ";
    v11 = 259;
    mlir::Operation::emitOpError(this, &v10, v13);
    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v13, &v12);
    v4 = v3;
    if (*v3)
    {
      mlir::Diagnostic::operator<<<23ul>((v3 + 1), " successors but found ");
    }

    v9 = *(this + 10);
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v4, &v9) + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    v6 = *MEMORY[0x277D85DE8];
    return (v5 & 1) == 0;
  }
}

BOOL mlir::OpTrait::impl::verifyValueSizeAttr(mlir::Operation *a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a6;
  v12 = mlir::Operation::getAttrOfType<mlir::detail::DenseArrayAttrImpl<int>>(a1, a2, a3);
  if (!v12)
  {
    v29[0] = "requires dense i32 array attribute '";
    v30 = 259;
    mlir::Operation::emitOpError(a1, v29, &v35);
    if (v35)
    {
      v34 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(v36, &v32);
      if (v35)
      {
        mlir::Diagnostic::operator<<<2ul>(v36, "'");
      }
    }

LABEL_27:
    v25 = v36[192];
LABEL_28:
    v20 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    goto LABEL_29;
  }

  v13 = v12[4];
  if (v13 >= 4)
  {
    v15 = v12[3];
    v16 = 4 * (v13 >> 2);
    v17 = v16;
    v18 = v15;
    while ((*v18 & 0x80000000) == 0)
    {
      ++v18;
      v17 -= 4;
      if (!v17)
      {
        do
        {
          v19 = *v15++;
          LODWORD(v17) = v19 + v17;
          v16 -= 4;
        }

        while (v16);
        v14 = v17;
        goto LABEL_12;
      }
    }

    v29[0] = "'";
    v30 = 259;
    mlir::Operation::emitOpError(a1, v29, &v35);
    if (v35)
    {
      v34 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(v36, &v32);
      if (v35)
      {
        mlir::Diagnostic::operator<<<42ul>(v36, "' attribute cannot have negative elements");
      }
    }

    goto LABEL_27;
  }

  v14 = 0;
LABEL_12:
  v28 = v14;
  if (v14 != a6)
  {
    v30 = 257;
    mlir::Operation::emitOpError(a1, v29, &v35);
    if (v35)
    {
      v34 = 261;
      v32 = a4;
      v33 = a5;
      mlir::Diagnostic::operator<<(v36, &v32);
      if (v35)
      {
        mlir::Diagnostic::operator<<<9ul>(v36, " count (");
      }
    }

    v21 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v35, &v31);
    v22 = v21;
    if (*v21)
    {
      mlir::Diagnostic::operator<<<39ul>((v21 + 1), ") does not match with the total size (");
    }

    v23 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v22, &v28);
    v24 = v23;
    if (*v23)
    {
      mlir::Diagnostic::operator<<<27ul>((v23 + 1), ") specified in attribute '");
      if (*v24)
      {
        v34 = 261;
        v32 = a2;
        v33 = a3;
        mlir::Diagnostic::operator<<((v24 + 1), &v32);
        if (*v24)
        {
          mlir::Diagnostic::operator<<<2ul>((v24 + 1), "'");
        }
      }
    }

    v25 = *(v24 + 200);
    goto LABEL_28;
  }

  v20 = 1;
LABEL_29:
  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

void *mlir::Operation::getAttrOfType<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, const void *a2, size_t a3)
{
  result = mlir::Operation::getAttr(a1, a2, a3);
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = result[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v4[2] != 32)
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpTrait::impl::verifyNoRegionArguments(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v3 = ((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v4 = -v3;
    v5 = 24 * (v2 & 0x7FFFFF);
    while (1)
    {
      if (v3 != *v3)
      {
        v6 = *(v3 + 8);
        v7 = v6 ? v6 - 8 : 0;
        if (((*(v7 + 56) - *(v7 + 48)) & 0x7FFFFFFF8) != 0)
        {
          break;
        }
      }

      v3 += 24;
      v4 -= 24;
      v5 -= 24;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    if ((v2 & 0x7FFFFE) != 0)
    {
      v18[0] = "region #";
      v19 = 259;
      mlir::Operation::emitOpError(this, v18, v20);
      v9 = *(v3 + 16);
      v10 = *(v9 + 44);
      if ((v10 & 0x7FFFFF) != 0)
      {
        v11 = ((v9 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
      }

      else
      {
        v11 = 0;
      }

      v17 = -1431655765 * (-(v11 + v4) >> 3);
      v13 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v20, &v17);
      v14 = v13;
      if (*v13)
      {
        mlir::Diagnostic::operator<<<26ul>((v13 + 1), " should have no arguments");
      }

      v12 = *(v14 + 200);
    }

    else
    {
      v18[0] = "region should have no arguments";
      v19 = 259;
      mlir::Operation::emitOpError(this, v18, v20);
      v12 = v20[200];
    }

    v8 = v12 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

BOOL mlir::OpTrait::impl::verifyElementwise(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  if (v3)
  {
    v4 = this - 16;
  }

  else
  {
    v4 = 0;
  }

  v63[0] = v4;
  v63[1] = 0;
  *&v64 = v4;
  *(&v64 + 1) = v3;
  llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(v63);
  *&v66 = v4;
  *(&v66 + 1) = v3;
  *&v67 = v4;
  *(&v67 + 1) = v3;
  llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(&v66);
  v5 = *(&v66 + 1);
  v73 = v75;
  v74 = 0x100000000;
  v66 = *v63;
  v67 = v64;
  v68 = v65;
  v6 = v63[1];
  if (v63[1] == v5)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      ++v7;
      *(&v66 + 1) = v6 + 1;
      llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(&v66);
      v6 = *(&v66 + 1);
    }

    while (*(&v66 + 1) != v5);
    if (v7 != 1)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v7, 8);
      v8 = v74;
      v9 = v74;
      goto LABEL_11;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_11:
  v10 = v63[1];
  if (v63[1] == v5)
  {
    goto LABEL_24;
  }

  v11 = &v73[8 * v8];
  do
  {
    v12 = v63[0];
    if (!v10)
    {
      goto LABEL_22;
    }

    v13 = *(v63[0] + 1) & 7;
    if (v63[0])
    {
      v14 = v13 == 6;
    }

    else
    {
      v14 = 1;
    }

    v15 = v10;
    if (v14)
    {
      goto LABEL_20;
    }

    v16 = (5 - v13);
    v15 = v10 - v16;
    if (v10 > v16)
    {
      v12 = v63[0] - 16 * v16;
LABEL_20:
      v12 -= 24 * v15;
      goto LABEL_22;
    }

    v12 = v63[0] - 16 * v10;
LABEL_22:
    *v11++ = *(v12 + 1) & 0xFFFFFFFFFFFFFFF8;
    v63[1] = (v10 + 1);
    llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(v63);
    v10 = v63[1];
  }

  while (v63[1] != v5);
  v9 = v74;
LABEL_24:
  LODWORD(v74) = v9 + v7;
  if ((*(this + 46) & 0x80) != 0)
  {
    v17 = *(this + 9);
    v18 = *(this + 17);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v63[0] = v17;
  v63[1] = 0;
  *&v64 = v17;
  *(&v64 + 1) = v18;
  llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(v63);
  *&v66 = v17;
  *(&v66 + 1) = v18;
  *&v67 = v17;
  *(&v67 + 1) = v18;
  llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(&v66);
  v19 = *(&v66 + 1);
  v70 = v72;
  v71 = 0x200000000;
  v66 = *v63;
  v67 = v64;
  v68 = v65;
  v20 = v63[1];
  if (v63[1] == v19)
  {
    v21 = 0;
    goto LABEL_32;
  }

  v22 = -1;
  do
  {
    *(&v66 + 1) = v20 + 1;
    llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(&v66);
    v20 = *(&v66 + 1);
    ++v22;
  }

  while (*(&v66 + 1) != v19);
  v21 = v22 + 1;
  if (v22 < 2)
  {
LABEL_32:
    v23 = 0;
    v24 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v22 + 1, 8);
    v23 = v71;
    v24 = v71;
  }

  v25 = v63[1];
  if (v63[1] != v19)
  {
    v26 = &v70[8 * v23];
    do
    {
      *v26++ = *(*(v63[0] + 4 * v25 + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
      v63[1] = v25 + 1;
      llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(v63);
      v25 = v63[1];
    }

    while (v63[1] != v19);
    v24 = v71;
  }

  v27 = v24 + v21;
  LODWORD(v71) = v24 + v21;
  if (!v74)
  {
    v41 = 1;
    if (!v27)
    {
      goto LABEL_59;
    }

    v63[0] = "if an operand is non-scalar, then there must be at least one non-scalar result";
    LOWORD(v65) = 259;
    mlir::Operation::emitOpError(this, v63, &v66);
    v41 = (v69 & 1) == 0;
    goto LABEL_58;
  }

  if (!v27)
  {
    v42 = "if a result is non-scalar, then at least one operand must be non-scalar";
LABEL_57:
    v63[0] = v42;
    LOWORD(v65) = 259;
    mlir::Operation::emitOpError(this, v63, &v66);
    v41 = (v69 & 1) == 0;
LABEL_58:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
    goto LABEL_59;
  }

  if (v74 != *(this + 9))
  {
    v42 = "if an operand is non-scalar, then all results must be non-scalar";
    goto LABEL_57;
  }

  v28 = 0;
  v29 = v70;
  v30 = v73;
  v31 = &v70[8 * v27];
  v60 = v62;
  v61 = 0x200000000;
  v32 = &v73[8 * v74];
  *&v66 = v70;
  *(&v66 + 1) = v73;
  *&v67 = v31;
  *(&v67 + 1) = v32;
  v33 = v73;
  for (i = v70; i != v31 || v33 != v32 || v67 != v31 || *(&v67 + 1) != v32; i = v66)
  {
    v36 = &unk_286E78D70;
    v37 = 16;
    do
    {
      v38 = v37;
      v39 = *(v36 - 1);
      v40 = (&v66 + (*v36 >> 1));
      if (*v36)
      {
        v39 = *(*v40 + v39);
      }

      if (v39(v40))
      {
        break;
      }

      v36 += 2;
      v37 = v38 - 16;
    }

    while (v38);
    ++v28;
    v33 = *(&v66 + 1);
  }

  v45 = v61;
  v46 = v28 + v61;
  if (v46 > HIDWORD(v61))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v46, 8);
    v45 = v61;
  }

  *&v66 = v29;
  *(&v66 + 1) = v30;
  *&v67 = v31;
  *(&v67 + 1) = v32;
  for (j = &v60[8 * v45]; v29 != v31 || v30 != v32 || v67 != v31 || *(&v67 + 1) != v32; j += 8)
  {
    v49 = &unk_286E78D90;
    do
    {
      v50 = *(v49 - 1);
      v51 = (&v66 + (*v49 >> 1));
      if (*v49)
      {
        v50 = *(*v51 + v50);
      }

      v49 += 2;
      v52 = v50(v51);
    }

    while (!v52);
    *j = *v52;
    v53 = &unk_286E78D70;
    v54 = 16;
    do
    {
      v55 = v54;
      v56 = *(v53 - 1);
      v57 = (&v66 + (*v53 >> 1));
      if (*v53)
      {
        v56 = *(*v57 + v56);
      }

      if (v56(v57))
      {
        break;
      }

      v53 += 2;
      v54 = v55 - 16;
    }

    while (v55);
    v30 = *(&v66 + 1);
    v29 = v66;
  }

  v63[0] = &v64;
  v63[1] = 0x400000000;
  LODWORD(v61) = v61 + v28;
  if (v61)
  {
    llvm::SmallVectorImpl<mlir::Type>::operator=(v63, &v60);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (LODWORD(v63[1]))
  {
    v58 = 8 * LODWORD(v63[1]);
    v59 = v63[0];
    while (*(**v59 + 136) == *(**v63[0] + 136))
    {
      v59 += 8;
      v58 -= 8;
      if (!v58)
      {
        goto LABEL_91;
      }
    }

LABEL_93:
    v62[8] = 257;
    mlir::Operation::emitOpError(this, &v60, &v66);
    if (v66)
    {
      mlir::Diagnostic::operator<<<71ul>(&v66 + 8, "all non-scalar operands/results must have the same shape and base type");
    }

    v41 = (v69 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
  }

  else
  {
LABEL_91:
    if ((mlir::verifyCompatibleShapes(v63[0] & 0xFFFFFFFFFFFFFFF9 | 2, LODWORD(v63[1])) & 1) == 0)
    {
      goto LABEL_93;
    }

    v41 = 1;
  }

  if (v63[0] != &v64)
  {
    free(v63[0]);
  }

LABEL_59:
  if (v70 != v72)
  {
    free(v70);
  }

  if (v73 != v75)
  {
    free(v73);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v41;
}

BOOL mlir::OpTrait::impl::verifyIsIsolatedFromAbove(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v34 = 0x800000000;
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = v4 + 24 * (v2 & 0x7FFFFF);
    while (1)
    {
      llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v33, v4);
      v6 = v34;
      if (v34)
      {
        break;
      }

LABEL_33:
      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      v7 = v33[--v6];
      LODWORD(v34) = v6;
      if (*v7 != v7)
      {
        for (i = v7[1]; i != v7; i = i[1])
        {
          v9 = i - 1;
          if (!i)
          {
            v9 = 0;
          }

          if (v9[4] != v9 + 4)
          {
            break;
          }
        }

        if (i != v7)
        {
          v10 = i - 1;
          if (!i)
          {
            v10 = 0;
          }

          v11 = v10[5];
          v28[0] = v7;
          v28[1] = i;
          v29 = v11;
          if (v11)
          {
            break;
          }
        }
      }

LABEL_32:
      if (!v6)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v12 = *(v11 + 44);
      if ((v12 & 0x800000) != 0)
      {
        v13 = *(v11 + 68);
        if (v13)
        {
          break;
        }
      }

LABEL_25:
      if ((v12 & 0x7FFFFF) != 0)
      {
        v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
        if (((*(**(v11 + 48) + 32))(*(v11 + 48), v18) & 1) == 0)
        {
          v19 = *(v11 + 44);
          if ((v19 & 0x7FFFFF) != 0)
          {
            v20 = ((v11 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 40);
            v21 = 24 * (v19 & 0x7FFFFF);
            do
            {
              llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v33, v20);
              v20 += 24;
              v21 -= 24;
            }

            while (v21);
          }
        }
      }

      mlir::Region::OpIterator::operator++(v28);
      v11 = v29;
      if (!v29)
      {
        v6 = v34;
        goto LABEL_32;
      }
    }

    v14 = 0;
    v15 = *(v11 + 72);
    while (1)
    {
      v27 = *(v15 + 32 * v14 + 24);
      ParentRegion = mlir::Value::getParentRegion(&v27);
      if (!ParentRegion)
      {
        break;
      }

      while (v4 != ParentRegion)
      {
        v17 = *(*(ParentRegion + 16) + 16);
        if (v17)
        {
          ParentRegion = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (ParentRegion)
          {
            continue;
          }
        }

        v25[0] = "using value defined outside the region";
        v26 = 259;
        mlir::Operation::emitOpError(v11, v25, &v30);
        mlir::Diagnostic::attachNote(v31, *(this + 3), 1);
      }

      if (++v14 == v13)
      {
        v12 = *(v11 + 44);
        goto LABEL_25;
      }
    }

    v25[0] = "operation's operand is unlinked";
    v26 = 259;
    mlir::Operation::emitError(&v30, v11, v25);
    v22 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

  else
  {
LABEL_34:
    v22 = 1;
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

mlir::Operation *mlir::impl::ensureRegionTerminator(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v9 = a2 + 16;
  v16 = *(a2 + 16);
  v10 = *a1;
  if (*a1 == a1)
  {
    mlir::OpBuilder::createBlock();
  }

  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11[4];
  if (v12 == v11 + 4 || (v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(), result = (*(**(v12 + 48) + 32))(*(v12 + 48), v13), (result & 1) == 0))
  {
    *(a2 + 16) = v11;
    *(a2 + 24) = v11 + 4;
    v15 = a4(a5, a2, a3);
    result = mlir::OpBuilder::insert(a2, v15);
  }

  if (v16)
  {
    *v9 = v16;
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
  }

  return result;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(uint64_t a1)
{
  v4 = mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID();
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>((a1 + 48), &v4);
  result = 0;
  if (v2)
  {
    if (v2 != *(a1 + 48) + 16 * *(a1 + 64))
    {
      return *(v2 + 8);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 16 * v7);
    if (*a2 == v8)
    {
      return v3 + 16 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 16 * v7);
      if (*a2 == v8)
      {
        return v3 + 16 * v7;
      }
    }
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v5, a2, &v14);
      *v14 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
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
        v9 = (v4 + 16 * (v15 & v7));
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
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v5, a2, &v14);
      *v14 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t *llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(uint64_t *result)
{
  v1 = result[1];
  v2 = result[3];
  if (v1 != v2)
  {
    v3 = *result;
    v4 = *result - 16 * v1;
    while (1)
    {
      v5 = v3;
      if (v1)
      {
        v6 = v3;
        v7 = v1;
        if (!v3)
        {
          goto LABEL_8;
        }

        v8 = *(v3 + 8) & 7;
        v6 = v3;
        v7 = v1;
        if (v8 == 6)
        {
          goto LABEL_8;
        }

        v9 = (5 - v8);
        v5 = v4;
        v7 = v1 - v9;
        if (v1 > v9)
        {
          break;
        }
      }

LABEL_9:
      v10 = *(*(*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v10 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        result[1] = ++v1;
        v4 -= 16;
        if (v2 != v1)
        {
          continue;
        }
      }

      return result;
    }

    v6 = v3 - 16 * v9;
LABEL_8:
    v5 = v6 - 24 * v7;
    goto LABEL_9;
  }

  return result;
}

void *llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>::findNextValid(void *result)
{
  v1 = result[1];
  v2 = result[3] - v1;
  if (v2)
  {
    v3 = v1 + 1;
    v4 = *result + 32 * v1 + 24;
    do
    {
      v5 = *(*(*(*v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v5 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      result[1] = v3++;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::Attribute,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

BOOL mlir::detail::constant_op_binder<mlir::Attribute>::match(unint64_t **a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v10[0] = v11;
    v10[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v10);
    v5 = v10[0];
    v6 = *v10[0] & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v10[0];
    }

    if (v5 != v11)
    {
      free(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = a1;
  v39 = a2;
  v40 = a1;
  if (a4 == 3)
  {
    v38 = a1 + 4;
    if (*(**a3 + ((a1 - *a3[1] + 32) >> 2)))
    {
      v10 = &v38;
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(&v38, &v39);
      v11 = &v40;
      v12 = &v38;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(&v40, &v38);
      v10 = &v39;
      v11 = &v38;
      v12 = &v39;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(v11, v12);
    return *v10;
  }

  if (a4 == 2)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(&v40, &v39);
    return v39;
  }

  if (a6 >= a4)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = a1[2];
    mlir::detail::IROperandBase::operator=(a5, a1);
    a5[3] = 0;
    mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(a5, v7);
    v25 = a5 + 4;
    v9 = v7 + 4;
    if (v7 + 4 == a2)
    {
      mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v7, v7 + 4);
      v26 = 1;
    }

    else
    {
      v26 = 1;
      v27 = v7 + 4;
      do
      {
        if (*(**a3 + ((v27 - *a3[1]) >> 2)))
        {
          *v25 = 0;
          v25[1] = 0;
          v25[2] = v9[2];
          mlir::detail::IROperandBase::operator=(v25, v9);
          v25[3] = 0;
          mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v25, v9);
          ++v26;
          v25 += 4;
        }

        else
        {
          mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v7, v9);
          v7 += 4;
          v40 = v7;
        }

        v9 += 4;
        v27 += 4;
      }

      while (v9 != a2);
      mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v7, v9);
      v9 = v7 + 4;
      if (v25 <= a5)
      {
LABEL_30:
        if (a5 && v26)
        {
          v34 = (a5 + 1);
          do
          {
            if (*v34)
            {
              v35 = *(v34 - 1);
              **v34 = v35;
              if (v35)
              {
                *(v35 + 8) = *v34;
              }
            }

            v34 += 4;
            --v26;
          }

          while (v26);
        }

        return v9;
      }
    }

    v32 = a5;
    v33 = v9;
    do
    {
      mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v33, v32);
      v32 += 4;
      v33 += 4;
    }

    while (v32 < v25);
    goto LABEL_30;
  }

  v16 = a4 / 2;
  v17 = &a1[4 * (a4 / 2)];
  v18 = *a3[1];
  v19 = **a3;
  v20 = v17 - 4;
  if (*(v19 + ((v17 - v18 - 32) >> 2)))
  {
    v21 = 32 - 32 * v16;
    v22 = v17 - v18 - 64;
    v23 = a4 / 2;
    while (v21)
    {
      --v23;
      v24 = *(v19 + (v22 >> 2));
      v21 += 32;
      v22 -= 32;
      if (!v24)
      {
        v20 = (a1 - v21);
        goto LABEL_24;
      }
    }
  }

  else
  {
    v23 = a4 / 2;
LABEL_24:
    v7 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(a1, v20, a3, v23, a5, a6);
    v18 = *a3[1];
    v19 = **a3;
  }

  v29 = a4 - v16;
  v30 = v17 - v18;
  if (*(v19 + (v30 >> 2)))
  {
    v31 = v17;
LABEL_41:
    v9 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(v31, a2, a3, v29, a5, a6);
  }

  else
  {
    v9 = a2 + 4;
    v36 = v30 + 32;
    v31 = v17;
    while (1)
    {
      v31 += 4;
      if (v31 == a2)
      {
        break;
      }

      --v29;
      v37 = *(v19 + (v36 >> 2));
      v36 += 32;
      if (v37)
      {
        goto LABEL_41;
      }
    }
  }

  if (v7 == v17)
  {
    return v9;
  }

  if (v17 == v9)
  {
    return v7;
  }

  return std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,mlir::OpOperand *>(v7, v17, v9);
}

uint64_t *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(uint64_t **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1];
  v10 = (*a1)[2];
  if (v4)
  {
    v5 = *v2;
    *v4 = *v2;
    if (v5)
    {
      *(v5 + 8) = v2[1];
    }
  }

  v2[1] = 0;
  v8 = 0;
  v9 = 0;
  v11 = 0;
  mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(&v8, v2);
  mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v2, v3);
  result = mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v3, &v8);
  if (v9)
  {
    v7 = v8;
    *v9 = v8;
    if (v7)
    {
      *(v7 + 8) = v9;
    }
  }

  return result;
}

uint64_t *mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(uint64_t *a1, uint64_t *a2)
{
  mlir::detail::IROperandBase::operator=(a1, a2);
  a1[3] = a2[3];
  a2[3] = 0;
  v4 = a1[3];
  if (v4)
  {
    v5 = *v4;
    *a1 = *v4;
    a1[1] = v4;
    if (v5)
    {
      *(v5 + 8) = a1;
    }

    *v4 = a1;
  }

  return a1;
}

uint64_t *mlir::detail::IROperandBase::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    *v2 = *result;
    if (v3)
    {
      *(v3 + 8) = result[1];
    }
  }

  v4 = a2[1];
  if (v4)
  {
    v5 = *a2;
    *v4 = *a2;
    if (v5)
    {
      *(v5 + 8) = a2[1];
    }
  }

  a2[1] = 0;
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t *std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,mlir::OpOperand *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(&v11, &v10);
    v5 = v11 + 4;
    v6 = v10 + 4;
    v10 = v6;
    v11 += 4;
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::OpOperand *&,mlir::OpOperand *&>(&v11, &v10);
        v7 = v11 + 4;
        v8 = v10 + 4;
        v10 = v8;
        v11 += 4;
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

uint64_t mlir::Diagnostic::operator<<<26ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<22ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  v12 = a5 - a3;
  if (a5 != a3)
  {
    v13 = (*a1 + 8 * v10);
    v14 = (a2 + 32 * a3 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *v13++ = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
      --v12;
    }

    while (v12);
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 + v9;
}

uint64_t mlir::Diagnostic::operator<<<39ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<27ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

BOOL llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 8;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::SmallVectorImpl<mlir::Type>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::Type>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::Type>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<71ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3320);
}

uint64_t llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>();
    unk_27FC17D10 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::Elementwise<Empty>]";
  v6 = 95;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3360);
}

uint64_t llvm::getTypeName<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>();
    *algn_27FC17D38 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::Scalarizable<Empty>]";
  v6 = 96;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3400);
}

uint64_t llvm::getTypeName<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>();
    unk_27FC17D60 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::Vectorizable<Empty>]";
  v6 = 96;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3440);
}

uint64_t llvm::getTypeName<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>();
    *algn_27FC17D88 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::Tensorizable<Empty>]";
  v6 = 96;
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

void *mlir::NamedAttrList::NamedAttrList(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *(a2 + 8);
    a2 = *(a2 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  dictionaryAttrSort<false>(v4, a2, a1);
  a1[10] = v2 | 4;
  return a1;
}

unint64_t mlir::NamedAttrList::getDictionary(mlir::NamedAttrList *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 10);
  if ((v4 & 4) == 0)
  {
    dictionaryAttrSort<true>(*this, *(this + 2), this);
    *(this + 10) = 4;
LABEL_4:
    v4 = *(this + 10) & 7 | mlir::DictionaryAttr::getWithSorted(a2, *this, *(this + 2));
    *(this + 10) = v4;
    return v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 <= 7)
  {
    goto LABEL_4;
  }

  return v4 & 0xFFFFFFFFFFFFFFF8;
}

void mlir::NamedAttrList::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  if ((v6 & 4) != 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v10 = *(*a1 + 16 * v7 - 16);
      v8 = mlir::StringAttr::compare(&v10, a2);
      v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if ((v8 & 0x80000000) == 0)
      {
        v9 = 0;
LABEL_7:
        LOBYTE(v6) = v9 | v6;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v6) = v6 & 0xFB;
    }

    v9 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 80) = v6 & 7;
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a1, a2, a3);
}

uint64_t mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(uint64_t a1, void *__s2, size_t __n)
{
  v6 = *a1;
  v7 = v6 + 16 * *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v6, v7, __s2, __n);
  }

  else
  {
    return mlir::impl::findAttrUnsorted<mlir::NamedAttribute const*,llvm::StringRef>(v6, v7, __s2, __n);
  }
}

void *mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = &result[2 * v4];
  if ((*(a1 + 80) & 4) != 0)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(result, &result[2 * v4], a2);
  }

  if (v4)
  {
    v6 = 16 * v4;
    while (*result != a2)
    {
      result += 2;
      v6 -= 16;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList,mlir::StringAttr>(a1, a2);
  v7 = v6;
  if (v8)
  {
    result = v6[1];
    if (result == a3)
    {
      return result;
    }

    *(v7 + 8) = a3;
    v10 = (a1 + 80);
  }

  else
  {
    v10 = (a1 + 80);
    if ((*(a1 + 80) & 4) != 0)
    {
      v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList,llvm::StringRef>(a1, *(a2 + 16), *(a2 + 24));
    }

    v11[0] = a2;
    v11[1] = a3;
    llvm::SmallVectorImpl<mlir::NamedAttribute>::insert_one_impl<mlir::NamedAttribute>(a1, v7, v11);
    result = 0;
  }

  *v10 &= 7uLL;
  return result;
}

void *mlir::NamedAttrList::findAttr<mlir::NamedAttrList,mlir::StringAttr>(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = &result[2 * v4];
  if ((*(a1 + 80) & 4) != 0)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute *>(result, &result[2 * v4], a2);
  }

  if (v4)
  {
    v6 = 16 * v4;
    while (*result != a2)
    {
      result += 2;
      v6 -= 16;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t mlir::NamedAttrList::findAttr<mlir::NamedAttrList,llvm::StringRef>(uint64_t a1, void *__s2, size_t __n)
{
  v6 = *a1;
  v7 = v6 + 16 * *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v6, v7, __s2, __n);
  }

  else
  {
    return mlir::impl::findAttrUnsorted<mlir::NamedAttribute *,llvm::StringRef>(v6, v7, __s2, __n);
  }
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4)
{
  v6 = *(**a4 + 32);
  v10 = 261;
  v9[0] = a2;
  v9[1] = a3;
  v7 = mlir::StringAttr::get(v6, v9, a3);
  return mlir::NamedAttrList::set(a1, v7, a4);
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, uint64_t a2)
{
  v3 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList,mlir::StringAttr>(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3[1];
  v6 = *(a1 + 8);
  v7 = *a1 + 16 * v6;
  if (v7 != v3 + 2)
  {
    memmove(v3, v3 + 2, v7 - (v3 + 2));
    LODWORD(v6) = *(a1 + 8);
  }

  *(a1 + 8) = v6 - 1;
  *(a1 + 80) &= 7uLL;
  return v5;
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, void *a2, size_t a3)
{
  v4 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList,llvm::StringRef>(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4[1];
  v7 = *(a1 + 8);
  v8 = *a1 + 16 * v7;
  if (v8 != v4 + 2)
  {
    memmove(v4, v4 + 2, v8 - (v4 + 2));
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 - 1;
  *(a1 + 80) &= 7uLL;
  return v6;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, unsigned __int8 *a3, const unsigned __int8 *a4)
{
  *a1 = a2;
  mlir::OperationName::OperationName(a1 + 1, a3, a4, *(**a2 + 32));
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  a1[26] = 0x100000000;
  a1[28] = a1 + 30;
  a1[29] = 0x100000000;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return a1;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a1 + 2), a4, 0, a4, a5);
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a1 + 8), a6, 0, a6, a7);
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 0;
  dictionaryAttrSort<false>(a9, a10, (a1 + 14));
  a1[24] = 4;
  a1[25] = a1 + 27;
  a1[26] = 0x100000000;
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a1 + 25), a11, 0, a11, a12);
  a1[28] = a1 + 30;
  a1[29] = 0x100000000;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  if (a14)
  {
    v18 = 8 * a14;
    do
    {
      v19 = llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::Region>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>>((a1 + 28), a13, 1);
      v20 = a1[28];
      v21 = *(a1 + 58);
      v22 = *v19;
      *v19 = 0;
      *(v20 + 8 * v21) = v22;
      *(a1 + 58) = v21 + 1;
      a13 += 8;
      v18 -= 8;
    }

    while (v18);
  }

  return a1;
}

void mlir::OperationState::~OperationState(mlir::OperationState *this)
{
  if (*(this + 32))
  {
    (*(this + 34))(*(this + 35));
  }

  llvm::SmallVector<std::unique_ptr<mlir::Region>,1u>::~SmallVector(this + 224);
  v2 = *(this + 25);
  if (v2 != this + 216)
  {
    free(v2);
  }

  v3 = *(this + 14);
  if (v3 != this + 128)
  {
    free(v3);
  }

  v4 = *(this + 8);
  if (v4 != this + 80)
  {
    free(v4);
  }

  v5 = *(this + 2);
  if (v5 != this + 32)
  {
    free(v5);
  }
}

void llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  v12 = *a1;
  v15 = a2;
  v16 = v6;
  if (a5 != v6)
  {
    v13 = (v12 + 8 * v10);
    do
    {
      *v13++ = mlir::ValueRange::dereference_iterator(&v15, v6);
      v16 = ++v6;
    }

    while (a5 != v6);
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 + v9;
  v14 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  v12 = a5 - a3;
  if (a5 != a3)
  {
    v13 = (*a1 + 8 * v10);
    if ((a2 & 4) != 0)
    {
      v14 = a2 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 8 * a3);
    v16 = (a2 & 0xFFFFFFFFFFFFFFF8) + 32 * a3 + 24;
    do
    {
      if ((a2 & 4) != 0 || (a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      *v13++ = *v17;
      ++v15;
      v16 += 32;
      --v12;
    }

    while (v12);
  }

  *(a1 + 8) = v10 + v9;
}

void *mlir::OperationState::addRegions(void *result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      result = llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::Region>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>>((v4 + 28), a2, 1);
      v6 = v4[28];
      v7 = *(v4 + 58);
      v8 = *result;
      *result = 0;
      *(v6 + 8 * v7) = v8;
      *(v4 + 58) = v7 + 1;
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t mlir::detail::OperandStorage::OperandStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  *(a1 + 8) = a3;
  *a1 = a5 & 0x7FFFFFFF;
  *(a1 + 4) = a5 & 0x7FFFFFFF;
  if ((a5 & 0x7FFFFFFF) != 0)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (*(a1 + 8) + v7);
      v10 = mlir::ValueRange::dereference_iterator(v14, v8);
      v9[2] = a2;
      v9[3] = v10;
      *v9 = 0;
      v9[1] = v10;
      v11 = *v10;
      *v9 = *v10;
      if (v11)
      {
        *(v11 + 8) = v9;
      }

      *v10 = v9;
      ++v8;
      v7 += 32;
    }

    while (v8 < *(a1 + 4));
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*(this + 1) + 8);
    do
    {
      if (*v3)
      {
        v4 = *(v3 - 1);
        **v3 = v4;
        if (v4)
        {
          *(v4 + 8) = *v3;
        }
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(*(this + 1));
  }
}

uint64_t *mlir::detail::OperandStorage::setOperands(mlir::detail::OperandStorage *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = a4;
  result = mlir::detail::OperandStorage::resize(a1, a2, a4);
  if (v4)
  {
    v6 = result;
    for (i = 0; i != v4; ++i)
    {
      result = mlir::ValueRange::dereference_iterator(v12, i);
      v8 = v6[1];
      if (v8)
      {
        v9 = *v6;
        *v8 = *v6;
        if (v9)
        {
          *(v9 + 8) = v6[1];
        }
      }

      v6[3] = result;
      v10 = *result;
      *v6 = *result;
      v6[1] = result;
      if (v10)
      {
        *(v10 + 8) = v6;
      }

      *result = v6;
      v6 += 4;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::detail::OperandStorage::resize(mlir::detail::OperandStorage *this, mlir::Operation *a2, unsigned int a3)
{
  v5 = *(this + 1);
  v6 = *(this + 1);
  if (v6 >= a3)
  {
    if (v6 != a3)
    {
      v24 = a3;
      do
      {
        v25 = (v5 + 32 * v24);
        v26 = v25[1];
        if (v26)
        {
          v27 = *v25;
          *v26 = *v25;
          if (v27)
          {
            *(v27 + 8) = v25[1];
          }
        }

        ++v24;
      }

      while (v6 != v24);
    }

    *(this + 1) = a3;
  }

  else
  {
    v8 = *this & 0x7FFFFFFF;
    if (v8 >= a3)
    {
      do
      {
        v23 = (v5 + 32 * v6);
        *v23 = 0;
        v23[1] = 0;
        v23[2] = a2;
        v23[3] = 0;
        LODWORD(v6) = *(this + 1) + 1;
        *(this + 1) = v6;
      }

      while (v6 != a3);
    }

    else
    {
      v9 = (v8 + 2) | ((v8 + 2) >> 1) | (((v8 + 2) | ((v8 + 2) >> 1)) >> 2);
      v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
      v11 = (v10 >> 16) | v10;
      if (v11 + 1 > a3)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = a3;
      }

      v13 = malloc_type_malloc(32 * v12, 0xE004003D73A93uLL);
      v14 = v13;
      if (v6)
      {
        v15 = 32 * v6;
        v16 = 32 * v6;
        v17 = v13;
        v18 = v5;
        do
        {
          *v17 = 0;
          v17[1] = 0;
          v17[2] = v18[2];
          mlir::detail::IROperandBase::operator=(v17, v18);
          v17[3] = 0;
          mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v17, v18);
          v17 += 4;
          v18 += 4;
          v16 -= 32;
        }

        while (v16);
        v19 = (v5 + 8);
        do
        {
          if (*v19)
          {
            v20 = *(v19 - 1);
            **v19 = v20;
            if (v20)
            {
              *(v20 + 8) = *v19;
            }
          }

          v19 += 4;
          v15 -= 32;
        }

        while (v15);
      }

      for (i = *(this + 1); i != a3; *(this + 1) = i)
      {
        v22 = &v14[4 * i];
        *v22 = 0;
        v22[1] = 0;
        v22[2] = a2;
        v22[3] = 0;
        i = *(this + 1) + 1;
      }

      if ((*this & 0x80000000) != 0)
      {
        free(*(this + 1));
      }

      *(this + 1) = v14;
      *this = v12 | 0x80000000;
      return v14;
    }
  }

  return v5;
}

_DWORD *mlir::detail::OperandStorage::setOperands(_DWORD *this, mlir::Operation *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = this;
  v35[2] = *MEMORY[0x277D85DE8];
  v35[0] = a5;
  v35[1] = a6;
  v10 = a6 - a4;
  if (a6 == a4)
  {
    v6 = a4;
    if (!a4)
    {
      goto LABEL_36;
    }

LABEL_6:
    v11 = 0;
    v12 = *(v9 + 1);
    do
    {
      v13 = (v12 + 32 * (a3 + v11));
      this = mlir::ValueRange::dereference_iterator(v35, v11);
      v14 = v13[1];
      if (v14)
      {
        v15 = *v13;
        *v14 = *v13;
        if (v15)
        {
          *(v15 + 8) = v13[1];
        }
      }

      v13[3] = this;
      v16 = *this;
      *v13 = *this;
      v13[1] = this;
      if (v16)
      {
        *(v16 + 8) = v13;
      }

      *this = v13;
      ++v11;
    }

    while (v6 != v11);
    goto LABEL_36;
  }

  if (a6 < a4)
  {
    this = mlir::detail::OperandStorage::eraseOperands(this, a6 + a3, a4 - a6);
    if (!v6)
    {
      goto LABEL_36;
    }

    goto LABEL_6;
  }

  this = mlir::detail::OperandStorage::resize(this, a2, this[1] + v10);
  v18 = this;
  v19 = v17 - (a4 + a3);
  if (32 * v10 != 32 * v19)
  {
    v20 = &this[8 * v17];
    v21 = v20 - 32 * v10;
    v22 = v20 - 32 * v19;
    this = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<mlir::OpOperand *> &,std::reverse_iterator<mlir::OpOperand *> &>(v20, v21);
    v23 = v20 - 32;
    v24 = v21 - 32;
    if (v21 - 32 != v22)
    {
      v25 = v23;
      v26 = v21 - 32;
      do
      {
        if (v23 == v21)
        {
          v21 = v26;
        }

        this = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<mlir::OpOperand *> &,std::reverse_iterator<mlir::OpOperand *> &>(v25, v24);
        v23 -= 32;
        v26 -= 32;
        v24 -= 32;
        v25 -= 32;
      }

      while (v26 != v22);
    }

    if (v21 != v23)
    {
      v27 = v21;
      v28 = v23;
      do
      {
        while (1)
        {
          this = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<mlir::OpOperand *> &,std::reverse_iterator<mlir::OpOperand *> &>(v23, v21);
          v28 -= 32;
          v21 -= 32;
          if (v21 == v22)
          {
            break;
          }

          if (v28 == v27)
          {
            v27 = v21;
          }

          v23 = v28;
        }

        v23 -= 32;
        v21 = v27;
      }

      while (v28 != v27);
    }
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v30 = &v18[8 * (a3 + i)];
      this = mlir::ValueRange::dereference_iterator(v35, i);
      v31 = v30[1];
      if (v31)
      {
        v32 = *v30;
        *v31 = *v30;
        if (v32)
        {
          *(v32 + 8) = v30[1];
        }
      }

      v30[3] = this;
      v33 = *this;
      *v30 = *this;
      v30[1] = this;
      if (v33)
      {
        *(v33 + 8) = v30;
      }

      *this = v30;
    }
  }

LABEL_36:
  v34 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t *mlir::detail::OperandStorage::eraseOperands(mlir::detail::OperandStorage *this, unsigned int a2, unsigned int a3)
{
  v4 = *(this + 1);
  v5 = *(this + 1);
  v6 = v5 - a3;
  *(this + 1) = v5 - a3;
  v11 = v5 - a3 == a2;
  result = (v4 + 32 * a2);
  v8 = a3;
  v9 = &result[4 * a3];
  v10 = (v4 + 32 * v5);
  v11 = v11 || a3 == 0;
  if (v11 || v9 == v10)
  {
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,mlir::OpOperand *>(result, v9, v10);
    v6 = *(this + 1);
  }

  do
  {
    v13 = (v4 + 32 * v6);
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
      *v14 = *v13;
      if (v15)
      {
        *(v15 + 8) = v13[1];
      }
    }

    ++v6;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t mlir::detail::OperandStorage::eraseOperands(mlir::detail::OperandStorage *this, const llvm::BitVector *a2)
{
  v4 = *(this + 1);
  v5 = *(this + 1);
  result = llvm::BitVector::find_first_in(a2, 0, *(a2 + 16), 1u);
  if (result != -1)
  {
    *(this + 1) = result;
    if (result + 1 < v5)
    {
      v7 = result + 1;
      v8 = ~result + v5;
      v9 = (v4 + 32 * result + 32);
      do
      {
        if (((*(*a2 + 8 * (v7 >> 6)) >> v7) & 1) == 0)
        {
          v10 = *(this + 1);
          *(this + 1) = v10 + 1;
          mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=((v4 + 32 * v10), v9);
        }

        ++v7;
        v9 += 4;
        --v8;
      }

      while (v8);
      result = *(this + 1);
    }

    if (result != v5)
    {
      v11 = 32 * v5 - 32 * result;
      v12 = (v4 + 32 * result + 8);
      do
      {
        if (*v12)
        {
          v13 = *(v12 - 1);
          **v12 = v13;
          if (v13)
          {
            *(v13 + 8) = *v12;
          }
        }

        v12 += 4;
        v11 -= 32;
      }

      while (v11);
    }
  }

  return result;
}

__n128 mlir::MutableOperandRange::slice@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 8) + a2;
  *a5 = *a1;
  *(a5 + 16) = a5 + 32;
  v8 = a5 + 16;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a5 + 8) = v7;
  *(a5 + 12) = a3;
  *(a5 + 24) = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v8, v9, &v9[24 * v10]);
  if (*(a4 + 24) == 1)
  {
    v12 = llvm::SmallVectorTemplateCommon<std::pair<unsigned int,mlir::NamedAttribute>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<unsigned int,mlir::NamedAttribute>,true>>(v8, a4, 1);
    v13 = (*(a5 + 16) + 24 * *(a5 + 24));
    result = *v12;
    v13[1].n128_u64[0] = v12[1].n128_u64[0];
    *v13 = result;
    ++*(a5 + 24);
  }

  return result;
}

void mlir::MutableOperandRange::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    if ((*(*a1 + 46) & 0x80) != 0)
    {
      mlir::detail::OperandStorage::setOperands((*a1 + 64), *a1, *(a1 + 8) + *(a1 + 12), 0, a2, a3);
    }

    v5 = *(a1 + 12) + v3;

    mlir::MutableOperandRange::updateLength(a1, v5);
  }
}

void mlir::MutableOperandRange::updateLength(mlir::MutableOperandRange *this, int a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  *(this + 3) = a2;
  v3 = *(this + 6);
  if (v3)
  {
    v5 = a2 - v2;
    v6 = 24 * v3;
    v7 = *(this + 2) + 16;
    do
    {
      v8 = *v7;
      v9 = *(*v7 + 24);
      v10 = *(*v7 + 32);
      v14 = v16;
      v15 = 0x800000000;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v14, v9, &v9[v10 & 0xFFFFFFFFFFFFFFFCLL]);
      v11 = v14;
      *(v14 + *(v7 - 16)) += v5;
      v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(**v8 + 32), v11, v15);
      *v7 = v12;
      mlir::Operation::setAttr(*this, *(v7 - 8), v12);
      if (v14 != v16)
      {
        free(v14);
      }

      v7 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void mlir::MutableOperandRange::assign(mlir::MutableOperandRange *this, uint64_t a2, uint64_t a3)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    mlir::detail::OperandStorage::setOperands((*this + 64), *this, *(this + 2), *(this + 3), a2, a3);
  }

  if (a3 != *(this + 3))
  {

    mlir::MutableOperandRange::updateLength(this, a3);
  }
}

void mlir::MutableOperandRange::erase(mlir::MutableOperandRange *this, int a2, unsigned int a3)
{
  if (*(this + 3))
  {
    mlir::detail::OperandStorage::eraseOperands((*this + 64), *(this + 2) + a2, a3);
    v5 = *(this + 3) - a3;

    mlir::MutableOperandRange::updateLength(this, v5);
  }
}

void mlir::MutableOperandRange::clear(mlir::MutableOperandRange *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    mlir::detail::OperandStorage::eraseOperands((*this + 64), *(this + 2), v1);

    mlir::MutableOperandRange::updateLength(this, 0);
  }
}

uint64_t mlir::MutableOperandRangeRange::MutableOperandRangeRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10[0] = v11;
  v10[1] = 0x100000000;
  if (*(a2 + 24))
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(v10, (a2 + 16));
  }

  v11[3] = a3;
  v11[4] = a4;
  llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(a1, &v9, 0, *(a4 + 16));
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void mlir::MutableOperandRangeRange::dereference(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    LODWORD(a2) = 0;
    v4 = 4 * v3;
    v5 = *(*(a1 + 64) + 24);
    do
    {
      v6 = *v5++;
      LODWORD(a2) = v6 + a2;
      v4 -= 4;
    }

    while (v4);
  }

  v7 = *(*(*(a1 + 64) + 24) + 4 * v3);
  *&v13[4] = *(a1 + 56);
  v9 = v3;
  v10 = *v13;
  v11 = *&v13[16];
  v12 = 1;
  mlir::MutableOperandRange::slice(a1, a2, v7, &v9, a3);
  v8 = *MEMORY[0x277D85DE8];
}

void *mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(void *this)
{
  v1 = this[1];
  v2 = this[3];
  if (v1 == v2)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v3 = *this;
  v4 = (*this - 16 * v1);
  while (1)
  {
    v5 = v3;
    if (!v1)
    {
      goto LABEL_9;
    }

    v6 = v3;
    v7 = v1;
    if (v3)
    {
      v8 = v3[1] & 7;
      v6 = v3;
      v7 = v1;
      if (v8 != 6)
      {
        v9 = (5 - v8);
        v5 = v4;
        v7 = v1 - v9;
        if (v1 <= v9)
        {
          goto LABEL_9;
        }

        v6 = &v3[-2 * v9];
      }
    }

    v5 = &v6[-3 * v7];
LABEL_9:
    if (*v5)
    {
      break;
    }

    this[1] = ++v1;
    v4 -= 2;
    if (v2 == v1)
    {
      goto LABEL_13;
    }
  }

  if (v2 == v1)
  {
    goto LABEL_13;
  }

  if (v1)
  {
    if (!v3 || (v11 = v3[1] & 7, v11 == 6))
    {
LABEL_20:
      v4 = &v3[-3 * v1];
    }

    else
    {
      v12 = (5 - v11);
      v13 = v1 <= v12;
      v1 -= v12;
      if (!v13)
      {
        v3 -= 2 * v12;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v4 = v3;
  }

  v10 = *v4;
LABEL_14:
  this[4] = v10;
  return this;
}

mlir::ResultRange::UseIterator *mlir::ResultRange::UseIterator::operator++(mlir::ResultRange::UseIterator *this)
{
  v2 = *(this + 4);
  if (!v2 || (v3 = *v2, (*(this + 4) = v3) == 0))
  {
    ++*(this + 1);
    mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(this);
  }

  return this;
}

uint64_t **mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(uint64_t **result, uint64_t **a2)
{
  v4 = result[1];
  v5 = a2[1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v23[9] = v2;
    v23[10] = v3;
    v7 = 0;
    v8 = 0;
    v9 = *result;
    v10 = *a2;
    v11 = v5 - 1;
    v12 = v4 - 1;
    while (1)
    {
      v13 = v9;
      v14 = v10;
      if (!v8)
      {
        goto LABEL_19;
      }

      v15 = v9;
      v16 = v8;
      if (v9)
      {
        v17 = v9[1] & 7;
        v15 = v9;
        v16 = v8;
        if (v17 != 6)
        {
          v18 = (5 - v17);
          v16 = &v8[-v18];
          if (v8 <= v18)
          {
            v13 = &v9[v7];
            goto LABEL_13;
          }

          v15 = &v9[-2 * v18];
        }
      }

      v13 = &v15[-3 * v16];
LABEL_13:
      v19 = v10;
      v20 = v8;
      if (!v10)
      {
        goto LABEL_17;
      }

      v21 = v10[1] & 7;
      v19 = v10;
      v20 = v8;
      if (v21 == 6)
      {
        goto LABEL_17;
      }

      v22 = (5 - v21);
      v20 = &v8[-v22];
      if (v8 > v22)
      {
        v19 = &v10[-2 * v22];
LABEL_17:
        v14 = &v19[-3 * v20];
        goto LABEL_19;
      }

      v14 = &v10[v7];
LABEL_19:
      v23[0] = v14;
      result = mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v13, v23);
      if (v12 != v8)
      {
        v7 -= 2;
        v6 = v11 == v8++;
        if (!v6)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t mlir::ValueRange::offset_base(uint64_t *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
    v5 = *a1 < 0;
  }

  if (!v4)
  {
    return v3 + 8 * a2;
  }

  if (v2 == 2)
  {
    v6 = v3 == 0;
    v5 = *a1 < 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return (v3 + 32 * a2) | 2;
  }

  if (a2)
  {
    v7 = *(v3 + 8) & 7;
    v5 = *a1 < 0;
    if (v3)
    {
      v8 = v7 == 6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = (5 - v7);
      if (a2 <= v9)
      {
        v3 -= 16 * a2;
        return v3 & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      v3 -= 16 * v9;
      a2 -= v9;
    }

    v3 -= 24 * a2;
  }

  return v3 & 0xFFFFFFFFFFFFFFF9 | 4;
}

unint64_t mlir::ValueRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  result = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = result == 0;
  }

  if (!v4)
  {
    return *(result + 8 * a2);
  }

  if (v2 == 2 && result != 0)
  {
    return *(result + 32 * a2 + 24);
  }

  if (a2)
  {
    v6 = *(result + 8) & 7;
    if (result)
    {
      v7 = v6 == 6;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (5 - v6);
      if (a2 <= v8)
      {
        result -= 16 * a2;
        return result;
      }

      result -= 16 * v8;
      a2 -= v8;
    }

    result -= 24 * a2;
  }

  return result;
}

unint64_t mlir::OperationEquivalence::computeHash(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, char a6)
{
  v59[2] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 36);
  v50 = a1 - 16;
  if (v11)
  {
    v12 = a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  if (HIBYTE(*(a1 + 44)))
  {
    v13 = a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(*v9 + 176))(v9, v13);
  memset(&v57[8], 0, 112);
  v58 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((8 * v9 - 0xAE502812AA7333) ^ HIDWORD(v9));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v15 >> 47) ^ v15);
  *v57 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  v54 = 0;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v57, &v54, &v57[8], &v57[64], (v10 >> 4) ^ (v10 >> 9));
  v55 = v54;
  v56[0] = v12;
  v56[1] = 0;
  v56[2] = v12;
  v56[3] = v11;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v59, v56);
  v18 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v59[0], 0, v59[0], v59[1]);
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v57, &v55, v17, &v57[64], v18);
  v56[0] = v55;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v57, v56, v19, &v57[64], v14);
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v57, v56[0], v20, &v57[64]);
  v22 = v21;
  v53 = v21;
  if ((a6 & 1) == 0)
  {
    v56[0] = *(a1 + 24);
    memset(&v57[8], 0, 112);
    v58 = 0xFF51AFD7ED558CCDLL;
    *v57 = v21;
    v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Location>(v57, 0, &v57[8], &v57[64], v56);
    v53 = v22;
  }

  v23 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v24 = (*(**(a1 + 48) + 32))(*(a1 + 48), v23);
  v25 = *(a1 + 44);
  if (v24)
  {
    if ((v25 & 0x800000) == 0 || !*(a1 + 68))
    {
      goto LABEL_23;
    }

    v26 = a2(a3, *(*(a1 + 72) + 24));
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v27 = *(a1 + 68);
      v28 = v27 - 1;
      if (v27 == 1)
      {
LABEL_17:
        memset(&v57[8], 0, 112);
        v58 = 0xFF51AFD7ED558CCDLL;
        *v57 = v53;
        v56[0] = 0;
        v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v57, v56, &v57[8], &v57[64], v26);
        v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v57, v56[0], v32, &v57[64]);
        v53 = v22;
        goto LABEL_23;
      }

      v29 = *(a1 + 72) + 32;
    }

    else
    {
      v28 = -1;
      v29 = 32;
    }

    v30 = (v29 + 24);
    do
    {
      v31 = *v30;
      v30 += 4;
      v26 += a2(a3, v31);
      --v28;
    }

    while (v28);
    goto LABEL_17;
  }

  if ((v25 & 0x800000) != 0)
  {
    v33 = *(a1 + 68);
    if (v33)
    {
      v34 = (*(a1 + 72) + 24);
      do
      {
        v35 = *v34;
        v34 += 4;
        v56[0] = a2(a3, v35);
        memset(v57, 0, sizeof(v57));
        v58 = 0xFF51AFD7ED558CCDLL;
        v36 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v57, 0, v57, &v57[64], &v53, v56);
        v53 = v36;
        --v33;
      }

      while (v33);
      v22 = v36;
    }
  }

LABEL_23:
  v37 = *(a1 + 36);
  if (v37)
  {
    v38 = v50;
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    v39 = 0;
    v40 = v38;
    while (1)
    {
      v41 = v38;
      if (v39)
      {
        v42 = *(a1 - 8) & 7;
        v43 = v50;
        v44 = v39;
        if (v42 == 6)
        {
          goto LABEL_32;
        }

        v45 = (5 - v42);
        v41 = v40;
        v44 = v39 - v45;
        if (v39 > v45)
        {
          break;
        }
      }

LABEL_33:
      v56[0] = a4(a5, v41);
      memset(v57, 0, sizeof(v57));
      v58 = 0xFF51AFD7ED558CCDLL;
      v46 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v57, 0, v57, &v57[64], &v53, v56);
      v53 = v46;
      ++v39;
      v40 -= 16;
      if (v37 == v39)
      {
        v22 = v46;
        goto LABEL_35;
      }
    }

    v43 = v38 - 16 * v45;
LABEL_32:
    v41 = v43 - 24 * v44;
    goto LABEL_33;
  }

LABEL_35:
  v47 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL mlir::OperationEquivalence::isRegionEquivalentTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  v9 = a1;
  v10 = a2;
  v48 = a1;
  v49 = a2;
  while (1)
  {
    v10 = *(v10 + 8);
    v9 = *(v9 + 8);
    v11 = v9 == a1 || v10 == a2;
    if (v11)
    {
      v45 = v9 == a1 && v10 == a2;
      goto LABEL_63;
    }

    if (v9)
    {
      v12 = (v9 - 8);
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = (v10 - 8);
    }

    else
    {
      v13 = 0;
    }

    if (((v12[7] - v12[6]) >> 3) != ((v13[7] - v13[6]) >> 3))
    {
      goto LABEL_62;
    }

    v60 = v12;
    v61 = v13;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>(v57, v55, &v60, &v61);
    if (*(v57[0] + 8) != v13)
    {
      goto LABEL_62;
    }

    v14 = v12[6];
    v15 = v12[7];
    v16 = v13[6];
    v17 = v13[7];
    if (v14 != v15 && v16 != v17)
    {
      v31 = v16 + 8;
      v32 = v14 + 8;
      while (1)
      {
        v33 = *(v32 - 8);
        v34 = *(v31 - 8);
        v35 = *(v33 + 8);
        v36 = *(v34 + 8);
        if ((v36 ^ v35) > 7)
        {
          goto LABEL_62;
        }

        if ((a7 & 1) == 0)
        {
          break;
        }

LABEL_56:
        if (a5)
        {
          a5(a6);
        }

        if (v32 != v15)
        {
          v32 += 8;
          v11 = v31 == v17;
          v31 += 8;
          if (!v11)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      if ((~v35 & 7) != 0)
      {
        v37 = *(v32 - 8);
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        v38 = *(v37 + 8) & 7;
        if (v38 == 6)
        {
          v39 = v37 + 24 * *(v37 + 16) + 120;
          if (!v39)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v39 = v37 + 16 * v38 + 16;
        }

        v40 = (v39 + 24);
      }

      else
      {
LABEL_43:
        v40 = (v33 + 32);
      }

      if ((~v36 & 7) != 0)
      {
        v41 = *(v31 - 8);
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v42 = *(v41 + 8) & 7;
        if (v42 == 6)
        {
          v43 = v41 + 24 * *(v41 + 16) + 120;
          if (!v43)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v43 = v41 + 16 * v42 + 16;
        }

        v44 = (v43 + 24);
      }

      else
      {
LABEL_52:
        v44 = (v34 + 32);
      }

      if (*v40 != *v44)
      {
        goto LABEL_62;
      }

      goto LABEL_56;
    }

LABEL_19:
    v19 = v12 + 4;
    v53 = v13 + 4;
    v20 = v13[5];
    v21 = v12[5];
    v50 = v19;
    if (v21 != v19)
    {
      break;
    }

LABEL_33:
    a1 = v48;
    a2 = v49;
    if (v20 != v53)
    {
      goto LABEL_62;
    }
  }

  while (v20 != v53 && mlir::OperationEquivalence::isEquivalentTo(v21, v20, a3, a4, a5, a6, a7))
  {
    v22 = *(v21 + 40);
    if (v22)
    {
      v23 = (v21 + 16 * ((*(v21 + 44) >> 23) & 1) + ((*(v21 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v20 + 40);
    if (v24 && v22)
    {
      v25 = v24 - 1;
      v26 = v22 - 1;
      if (v25 < v26)
      {
        v26 = v25;
      }

      v27 = v26 + 1;
      v28 = (((v20 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
      v29 = (v23 + 24);
      do
      {
        v30 = *v28;
        v58 = *v29;
        v59 = v30;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>(&v60, v55, &v58, &v59);
        if (v60[1] != v30)
        {
          goto LABEL_62;
        }

        v28 += 4;
        v29 += 4;
      }

      while (--v27);
    }

    v20 = *(v20 + 8);
    v21 = *(v21 + 8);
    if (v21 == v50)
    {
      goto LABEL_33;
    }
  }

LABEL_62:
  v45 = 0;
LABEL_63:
  MEMORY[0x25F891030](v55[0], 8);
  return v45;
}

uint64_t mlir::OperationEquivalence::isEquivalentTo(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t), uint64_t a10)
{
  if (a1 == a2)
  {
    return 1;
  }

  v63 = v10;
  v64 = v11;
  v14 = *(a1 + 48);
  if (v14 != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v15 = *(a1 + 44);
  v16 = *(a2 + 44);
  if (((v16 ^ v15) & 0x7FFFFF) != 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if ((v15 & 0x800000) != 0)
  {
    v22 = *(a1 + 68);
    if ((v16 & 0x800000) != 0)
    {
LABEL_8:
      v23 = *(a2 + 68);
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    if ((v16 & 0x800000) != 0)
    {
      goto LABEL_8;
    }
  }

  v23 = 0;
LABEL_9:
  if (v22 != v23 || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  if (HIBYTE(*(a1 + 44)))
  {
    v24 = a1 + 64 + 16 * ((v15 >> 23) & 1);
  }

  else
  {
    v24 = 0;
  }

  if (HIBYTE(*(a2 + 44)))
  {
    v25 = a2 + 64 + 16 * ((v16 >> 23) & 1);
  }

  else
  {
    v25 = 0;
  }

  result = (*(*v14 + 168))(v14, v24, v25);
  if (!result)
  {
    return result;
  }

  if ((a7 & 1) == 0 && *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (a9 && (v27 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(), (*(**(a1 + 48) + 32))(*(a1 + 48), v27)))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v28 = *(a1 + 68);
      v29 = *(a1 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v28 = 0;
      v29 = 2;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v30 = *(a2 + 68);
      v31 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v30 = 0;
      v31 = 2;
    }

    if ((a9(a10, v29, v28, v31, v30) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v32 = *(a1 + 72);
      v33 = *(a1 + 68);
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      if (v33)
      {
        v34 = *(a2 + 68);
        if (v34)
        {
          v35 = v34 - 1;
          v36 = v33 - 1;
          v37 = *(a2 + 72) + 24;
          v38 = v32 + 24;
          while (1)
          {
            if (*v38 != *v37)
            {
              if ((*(*v37 + 8) ^ *(*v38 + 8)) > 7)
              {
                return 0;
              }

              v58 = v35;
              v39 = a3(a4);
              v35 = v58;
              if ((v39 & 1) == 0)
              {
                return 0;
              }
            }

            v40 = v35-- != 0;
            v41 = v40;
            v40 = v36-- != 0;
            if (v40)
            {
              v37 += 32;
              v38 += 32;
              if (v41)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }
  }

  v42 = *(a1 + 36);
  v43 = a1 - 16;
  if (!v42)
  {
    v43 = 0;
  }

  v44 = *(a2 + 36);
  v45 = a2 - 16;
  if (!v44)
  {
    v45 = 0;
  }

  v59 = v43;
  v60 = 0;
  v61 = v45;
  v62 = 0;
  if (v42 && v44)
  {
    v46 = 1;
    while (1)
    {
      v47 = llvm::detail::zip_common<llvm::detail::zip_shortest<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,std::tuple<mlir::OpResult,mlir::OpResult>,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::deref<0ul,1ul>(&v59);
      if ((*(v48 + 8) ^ *(v47 + 8)) > 7)
      {
        return 0;
      }

      if (a5)
      {
        (a5)(a6, v47, v48);
      }

      v60 = v46;
      v62 = v46;
      if (v42 != v46 && v44 != v46++)
      {
        continue;
      }

      break;
    }
  }

  v50 = *(a1 + 44);
  v51 = v50 & 0x7FFFFF;
  if ((v50 & 0x7FFFFF) != 0)
  {
    v52 = ((a1 + 64 + 16 * ((v50 >> 23) & 1) + ((v50 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v53 = *(a2 + 44);
  if ((v53 & 0x7FFFFF) == 0 || !v51)
  {
    return 1;
  }

  v54 = ((a2 + 64 + 16 * ((v53 >> 23) & 1) + ((v53 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v55 = 24 * (v53 & 0x7FFFFF) - 24;
  v56 = 24 * v51 - 24;
  do
  {
    result = mlir::OperationEquivalence::isRegionEquivalentTo(v52, v54, a3, a4, a5, a6, a7);
    if (!result)
    {
      break;
    }

    if (!v56)
    {
      break;
    }

    v52 += 24;
    v54 += 24;
    v57 = v55;
    v55 -= 24;
    v56 -= 24;
  }

  while (v57);
  return result;
}

uint64_t mlir::OperationEquivalence::isEquivalentTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v11 = v13;
  v12 = v13;
  v10 = v13;
  isEquivalentTo = mlir::OperationEquivalence::isEquivalentTo(a1, a2, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_0>, &v12, llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_1>, &v11, a3, a8, llvm::function_ref<llvm::LogicalResult ()(mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_2>, &v10);
  MEMORY[0x25F891030](v13[0], 8);
  return isEquivalentTo;
}

mlir::OperationFingerPrint *mlir::OperationFingerPrint::OperationFingerPrint(mlir::OperationFingerPrint *this, mlir::Operation *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v8 = xmmword_25D0A0650;
  v9 = 3285377520;
  v10 = 0;
  v6[0] = v7;
  v6[1] = &v11;
  if (a3)
  {
    mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OperationFingerPrint::OperationFingerPrint(mlir::Operation *,BOOL)::$_0>, v6, 1);
  }

  else
  {
    mlir::OperationFingerPrint::OperationFingerPrint(mlir::Operation *,BOOL)::$_0::operator()(v6, a2);
  }

  llvm::SHA1::result(v7, &v12);
  *this = v12;
  *(this + 4) = v13;
  v4 = *MEMORY[0x277D85DE8];
  return this;
}

_DWORD *mlir::OperationFingerPrint::OperationFingerPrint(mlir::Operation *,BOOL)::$_0::operator()(_DWORD **a1, uint64_t a2)
{
  v2 = a2;
  v38 = a2;
  llvm::SHA1::update(*a1, &v38, 8uLL);
  if (*a1[1] != v2)
  {
    v4 = *a1;
    v5 = *(v2 + 16);
    if (v5)
    {
      v5 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v5)
      {
        v5 = *(v5 + 16);
      }
    }

    v37 = v5;
    llvm::SHA1::update(v4, &v37, 8uLL);
    v2 = v38;
  }

  v6 = *a1;
  v37 = *(v2 + 56);
  llvm::SHA1::update(v6, &v37, 8uLL);
  v7 = *a1;
  if (HIBYTE(*(v38 + 44)))
  {
    v8 = v38 + 16 * ((*(v38 + 44) >> 23) & 1) + 64;
  }

  else
  {
    v8 = 0;
  }

  v37 = (*(**(v38 + 48) + 176))(*(v38 + 48), v8);
  llvm::SHA1::update(v7, &v37, 8uLL);
  v9 = v38;
  v10 = *(v38 + 44);
  if ((v10 & 0x7FFFFF) != 0)
  {
    v11 = ((v38 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v38 + 40);
    v12 = v11 + 24 * (v10 & 0x7FFFFF);
    do
    {
      for (i = *(v11 + 8); i != v11; i = *(i + 8))
      {
        if (i)
        {
          v14 = i - 8;
        }

        else
        {
          v14 = 0;
        }

        v15 = *a1;
        v37 = v14;
        llvm::SHA1::update(v15, &v37, 8uLL);
        v16 = *(v14 + 48);
        v17 = *(v14 + 56);
        while (v16 != v17)
        {
          v18 = *v16++;
          v37 = v18;
          llvm::SHA1::update(*a1, &v37, 8uLL);
        }
      }

      v11 += 24;
    }

    while (v11 != v12);
    v9 = v38;
  }

  v19 = *a1;
  v37 = *(v9 + 24);
  result = llvm::SHA1::update(v19, &v37, 8uLL);
  v21 = v38;
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v22 = *(v38 + 68);
    if (v22)
    {
      v23 = (*(v38 + 72) + 24);
      do
      {
        v24 = *v23;
        v23 += 4;
        v37 = v24;
        result = llvm::SHA1::update(*a1, &v37, 8uLL);
        --v22;
      }

      while (v22);
      v21 = v38;
    }
  }

  v25 = *(v21 + 40);
  if (v25)
  {
    v26 = 24;
    do
    {
      v27 = *a1;
      v37 = *(((v38 + 16 * ((*(v38 + 44) >> 23) & 1) + ((*(v38 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v26);
      result = llvm::SHA1::update(v27, &v37, 8uLL);
      v26 += 32;
      --v25;
    }

    while (v25);
    v21 = v38;
  }

  v28 = *(v21 + 36);
  if (v28)
  {
    v29 = v21 - 16;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = 0;
    for (j = v29; ; j -= 16)
    {
      v32 = v29;
      if (v30)
      {
        v33 = *(v21 - 8) & 7;
        v34 = v29;
        v35 = v30;
        if (v33 == 6)
        {
          goto LABEL_40;
        }

        v36 = (5 - v33);
        v32 = j;
        v35 = v30 - v36;
        if (v30 > v36)
        {
          break;
        }
      }

LABEL_41:
      v37 = *(v32 + 8) & 0xFFFFFFFFFFFFFFF8;
      result = llvm::SHA1::update(*a1, &v37, 8uLL);
      if (v28 == ++v30)
      {
        return result;
      }
    }

    v34 = v29 - 16 * v36;
LABEL_40:
    v32 = v34 - 24 * v35;
    goto LABEL_41;
  }

  return result;
}

uint64_t mlir::impl::findAttrUnsorted<mlir::NamedAttribute const*,llvm::StringRef>(uint64_t a1, uint64_t a2, void *__s2, size_t __n)
{
  v4 = a1;
  if (a1 != a2)
  {
    while (*(*v4 + 24) != __n || __n && memcmp(*(*v4 + 16), __s2, __n))
    {
      v4 += 16;
      if (v4 == a2)
      {
        return a2;
      }
    }
  }

  return v4;
}

uint64_t mlir::impl::findAttrSorted<mlir::NamedAttribute *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 - result >= 257)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute *>(result, a2, *(a3 + 16), *(a3 + 24));
  }

  if (result == a2)
  {
    return a2;
  }

  while (*v3 != a3)
  {
    v3 += 2;
    result += 16;
    if (v3 == a2)
    {
      return a2;
    }
  }

  return result;
}

uint64_t mlir::impl::findAttrSorted<mlir::NamedAttribute *>(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = a1;
  v5 = (a2 - a1) >> 4;
  if (v5 >= 1)
  {
    do
    {
      v8 = v4 + 16 * (v5 >> 1);
      v11 = *(*v8 + 16);
      v9 = llvm::StringRef::compare(&v11, a3, a4);
      if (v9 < 0)
      {
        v4 = v8 + 16;
        v5 += ~(v5 >> 1);
      }

      else
      {
        v5 = v5 >> 1;
        if (!v9)
        {
          return v8;
        }
      }
    }

    while (v5 > 0);
  }

  return v4;
}

uint64_t mlir::impl::findAttrUnsorted<mlir::NamedAttribute *,llvm::StringRef>(uint64_t a1, uint64_t a2, void *__s2, size_t __n)
{
  v4 = a1;
  if (a1 != a2)
  {
    while (*(*v4 + 24) != __n || __n && memcmp(*(*v4 + 16), __s2, __n))
    {
      v4 += 16;
      if (v4 == a2)
      {
        return a2;
      }
    }
  }

  return v4;
}

uint64_t llvm::BitVector::find_first_in(llvm::BitVector *this, unsigned int a2, int a3, unsigned int a4)
{
  if (a2 == a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2 >> 6;
  v5 = a3 - 1;
  if (v4 > (a3 - 1) >> 6)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  if ((a2 & 0x3F) != 0)
  {
    v7 = ~(0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
  }

  else
  {
    v7 = -1;
  }

  v8 = 0xFFFFFFFFFFFFFFFFLL >> ~v5;
  v9 = v4 - (v5 >> 6);
  v10 = *this + 8 * v4;
  v11 = -64 * v4;
  while (1)
  {
    v12 = v6 ? -1 : v7;
    v13 = v9 ? -1 : v8;
    v14 = (*(v10 + 8 * v6) ^ (a4 - 1)) & v12 & v13;
    if (v14)
    {
      break;
    }

    v11 -= 64;
    ++v9;
    ++v6;
    if (v9 == 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return __clz(__rbit64(v14)) - v11;
}

uint64_t llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11[0] = v12;
  v11[1] = 0x100000000;
  if (*(a2 + 6))
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(v11, a2 + 2);
  }

  *&v12[24] = *(a2 + 56);
  v13 = a3;
  std::pair<std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,long>::pair[abi:nn200100](a1, &v10);
  *(a1 + 80) = a4;
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::pair<std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,long>::pair[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = a1 + 32;
  v4 = a1 + 16;
  *(a1 + 24) = 0x100000000;
  if (*(a2 + 24))
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(v4, (a2 + 16));
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v6 = *a2;
        v7 = *a2 + 24 * v4;
        v8 = *a1;
        do
        {
          *v8 = *v6;
          *(v8 + 8) = *(v6 + 8);
          v6 += 24;
          v8 += 24;
        }

        while (v6 != v7);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        v9 = *a2;
        v10 = *a2 + 24 * v5;
        v11 = *a1;
        do
        {
          *v11 = *v9;
          *(v11 + 8) = *(v9 + 8);
          v9 += 24;
          v11 += 24;
        }

        while (v9 != v10);
LABEL_14:
        v12 = *(a2 + 2) - v5;
        if (v12)
        {
          memcpy((*a1 + 24 * v5), (*a2 + 24 * v5), 24 * v12);
        }

LABEL_16:
        *(a1 + 8) = v4;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 24);
    }

    v5 = 0;
    goto LABEL_14;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::NamedAttribute>::insert_one_impl<mlir::NamedAttribute>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 16 * v6 == a2)
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a1, *a3, a3[1]);
    return *a1 + 16 * *(a1 + 8) - 16;
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    v8 = (v5 + v7);
    *(v5 + 16 * v6) = *(v5 + 16 * v6 - 16);
    v9 = *(a1 + 8);
    v10 = *a1 + 16 * v9 - 16;
    if (v10 != v8)
    {
      memmove(v8 + 1, v8, v10 - v8);
      LODWORD(v9) = *(a1 + 8);
    }

    *(a1 + 8) = v9 + 1;
    *v8 = *a3;
    return v8;
  }
}

uint64_t llvm::SmallVector<std::unique_ptr<mlir::Region>,1u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::destroy_range(*a1, (*a1 + 8 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

mlir::Region *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::destroy_range(mlir::Region *result, mlir::Region *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      v2 = (v2 - 8);
      result = v4;
      *v2 = 0;
      if (v4)
      {
        mlir::Region::~Region(result);
        result = MEMORY[0x25F891040]();
      }
    }

    while (v2 != v3);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::Region>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 8 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = (*a1 + 8 * v6);
  if (v6)
  {
    v8 = 8 * v6;
    v9 = v4;
    v10 = *a1;
    do
    {
      v11 = *v10;
      *v10 = 0;
      v10 = (v10 + 8);
      *v9++ = v11;
      v8 -= 8;
    }

    while (v8);
  }

  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::destroy_range(v5, v7);
  v12 = v13;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<mlir::Region*>(uint64_t a1, void *a2)
{
  v16 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v16);
  v6 = *(a1 + 8);
  v5[v6] = *a2;
  v7 = *a1;
  v8 = (*a1 + 8 * v6);
  if (v6)
  {
    v9 = 8 * v6;
    v10 = v5;
    v11 = *a1;
    do
    {
      v12 = *v11;
      *v11 = 0;
      v11 = (v11 + 8);
      *v10++ = v12;
      v9 -= 8;
    }

    while (v9);
  }

  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::destroy_range(v7, v8);
  v13 = v16;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v14 = *(a1 + 8) + 1;
  *(a1 + 8) = v14;
  *(a1 + 12) = v13;
  return &v5[v14 - 1];
}

uint64_t *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<mlir::OpOperand *> &,std::reverse_iterator<mlir::OpOperand *> &>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 - 32);
  v3 = (a2 - 32);
  v4 = *(a1 - 24);
  v10 = *(a1 - 16);
  if (v4)
  {
    v5 = *v2;
    *v4 = *v2;
    if (v5)
    {
      *(v5 + 8) = *(a1 - 24);
    }
  }

  *(a1 - 24) = 0;
  v8 = 0;
  v9 = 0;
  v11 = 0;
  mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(&v8, v2);
  mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v2, v3);
  result = mlir::IROperand<mlir::OpOperand,mlir::Value>::operator=(v3, &v8);
  if (v9)
  {
    v7 = v8;
    *v9 = v8;
    if (v7)
    {
      *(v7 + 8) = v9;
    }
  }

  return result;
}

void llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3 - __src) >> 3);
  v8 = *(a1 + 8);
  if (v7 + v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7 + v8, 24);
    LODWORD(v8) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 24 * v8), __src, v6);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + v7;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<unsigned int,mlir::NamedAttribute>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<unsigned int,mlir::NamedAttribute>,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }
  }

  return v3;
}

void llvm::SmallVectorImpl<int>::append<int const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 2);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 4 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 2);
}

uint64_t **mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(uint64_t **result, uint64_t **a2)
{
  while (1)
  {
    v2 = *result;
    if (!*result)
    {
      break;
    }

    v3 = *a2;
    v4 = v2[1];
    if (v4)
    {
      v5 = *v2;
      *v4 = *v2;
      if (v5)
      {
        *(v5 + 8) = v2[1];
      }
    }

    v2[3] = v3;
    v6 = *v3;
    *v2 = *v3;
    v2[1] = v3;
    if (v6)
    {
      *(v6 + 8) = v2;
    }

    *v3 = v2;
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3480);
}

uint64_t llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>();
    unk_27FC17DB0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsCommutative<Empty>]";
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::LookupBucketFor<mlir::Block *>(a2, a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::InsertIntoBucketImpl<mlir::Block *>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::LookupBucketFor<mlir::Block *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::LookupBucketFor<mlir::Block *>(v5, a2, &v14);
      *v14 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v69 = *(a2 - 1);
        v70 = *v8;
        if (v69 < *v8)
        {
          *v8 = v69;
          *(a2 - 1) = v70;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v74 = v8 + 1;
      v75 = v8[1];
      v76 = v8 + 2;
      v77 = v8[2];
      v78 = *v8;
      if (v75 >= *v8)
      {
        if (v77 < v75)
        {
          *v74 = v77;
          *v76 = v75;
          if (v77 < v78)
          {
            *v8 = v77;
            v116 = v8 + 1;
            goto LABEL_191;
          }

LABEL_192:
          v77 = v75;
        }
      }

      else
      {
        if (v77 < v75)
        {
          *v8 = v77;
          goto LABEL_190;
        }

        *v8 = v75;
        v8[1] = v78;
        if (v77 < v78)
        {
          *v74 = v77;
LABEL_190:
          v116 = v8 + 2;
          v75 = v78;
LABEL_191:
          *v116 = v78;
          goto LABEL_192;
        }
      }

      v120 = *(a2 - 1);
      if (v120 < v77)
      {
        *v76 = v120;
        *(a2 - 1) = v77;
        v121 = *v76;
        v122 = *v74;
        if (v121 < v122)
        {
          v8[1] = v121;
          v8[2] = v122;
          v123 = *v8;
          if (v121 < *v8)
          {
            *v8 = v121;
            v8[1] = v123;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v62 = v8 + 1;
      v63 = v8[1];
      v65 = v8 + 2;
      v64 = v8[2];
      v66 = *v8;
      if (v63 >= *v8)
      {
        if (v64 >= v63)
        {
          v68 = *v8;
          v66 = v8[1];
        }

        else
        {
          *v62 = v64;
          *v65 = v63;
          if (v64 < v66)
          {
            *v8 = v64;
            v67 = v8 + 1;
            v68 = v64;
            v64 = v66;
            goto LABEL_182;
          }

          v68 = v66;
LABEL_183:
          v66 = v64;
          v64 = v63;
        }
      }

      else
      {
        if (v64 < v63)
        {
          *v8 = v64;
          v67 = v8 + 2;
          v68 = v64;
          v64 = v63;
          goto LABEL_181;
        }

        *v8 = v63;
        v8[1] = v66;
        if (v64 < v66)
        {
          *v62 = v64;
          v67 = v8 + 2;
          v68 = v63;
LABEL_181:
          v63 = v66;
LABEL_182:
          *v67 = v66;
          goto LABEL_183;
        }

        v68 = v63;
      }

      v124 = v8[3];
      if (v124 >= v64)
      {
        v64 = v8[3];
      }

      else
      {
        v8[2] = v124;
        v8[3] = v64;
        if (v124 < v66)
        {
          *v62 = v124;
          *v65 = v66;
          if (v124 < v68)
          {
            *v8 = v124;
            v8[1] = v68;
          }
        }
      }

      v125 = *(a2 - 1);
      if (v125 >= v64)
      {
        return result;
      }

      v8[3] = v125;
      *(a2 - 1) = v64;
      v126 = v8[2];
      v115 = v8[3];
      if (v115 >= v126)
      {
        return result;
      }

      v8[2] = v115;
      v8[3] = v126;
      v127 = v8[1];
      if (v115 >= v127)
      {
        return result;
      }

      v8[1] = v115;
      v8[2] = v127;
LABEL_208:
      v128 = *v8;
      if (v115 < *v8)
      {
        *v8 = v115;
        v8[1] = v128;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v79 = v8 + 1;
      v81 = v8 == a2 || v79 == a2;
      if (a4)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v8;
          do
          {
            v85 = *v83;
            v84 = v83[1];
            v83 = v79;
            if (v84 < v85)
            {
              v86 = v82;
              while (1)
              {
                *(v8 + v86 + 8) = v85;
                if (!v86)
                {
                  break;
                }

                v85 = *(v8 + v86 - 8);
                v86 -= 8;
                if (v84 >= v85)
                {
                  v87 = (v8 + v86 + 8);
                  goto LABEL_128;
                }
              }

              v87 = v8;
LABEL_128:
              *v87 = v84;
            }

            v79 = v83 + 1;
            v82 += 8;
          }

          while (v83 + 1 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v118 = *v7;
          v117 = v7[1];
          v7 = v79;
          if (v117 < v118)
          {
            do
            {
              *v79 = v118;
              v118 = *(v79 - 2);
              --v79;
            }

            while (v117 < v118);
            *v79 = v117;
          }

          v79 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v88 = (v9 - 2) >> 1;
        v89 = v88;
        do
        {
          v90 = v89;
          if (v88 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v8[v91];
            v93 = *v92;
            if (2 * v90 + 2 < v9 && v93 < v92[1])
            {
              v93 = v92[1];
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v94 = &v8[v90];
            v95 = *v94;
            if (v93 >= *v94)
            {
              v96 = *v92;
              do
              {
                v97 = v92;
                *v94 = v96;
                if (v88 < v91)
                {
                  break;
                }

                v98 = (2 * v91) | 1;
                v92 = &v8[v98];
                v91 = 2 * v91 + 2;
                v96 = *v92;
                if (v91 >= v9)
                {
                  v91 = v98;
                }

                else
                {
                  result = v92[1];
                  if (v96 >= result)
                  {
                    v91 = v98;
                  }

                  else
                  {
                    v96 = v92[1];
                    ++v92;
                  }
                }

                v94 = v97;
              }

              while (v96 >= v95);
              *v97 = v95;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        do
        {
          v99 = 0;
          v100 = *v8;
          v101 = v8;
          do
          {
            v102 = &v101[v99];
            v103 = v102 + 1;
            v104 = (2 * v99) | 1;
            v99 = 2 * v99 + 2;
            if (v99 >= v9)
            {
              v99 = v104;
            }

            else
            {
              v106 = v102[2];
              v105 = v102 + 2;
              if (*(v105 - 1) >= v106)
              {
                v99 = v104;
              }

              else
              {
                v103 = v105;
              }
            }

            *v101 = *v103;
            v101 = v103;
          }

          while (v99 <= ((v9 - 2) >> 1));
          if (v103 == --a2)
          {
            *v103 = v100;
          }

          else
          {
            *v103 = *a2;
            *a2 = v100;
            v107 = (v103 - v8 + 8) >> 3;
            v108 = v107 < 2;
            v109 = v107 - 2;
            if (!v108)
            {
              v110 = v109 >> 1;
              v111 = &v8[v110];
              v112 = *v111;
              v113 = *v103;
              if (*v111 < *v103)
              {
                do
                {
                  v114 = v111;
                  *v103 = v112;
                  if (!v110)
                  {
                    break;
                  }

                  v110 = (v110 - 1) >> 1;
                  v111 = &v8[v110];
                  v112 = *v111;
                  v103 = v114;
                }

                while (*v111 < v113);
                *v114 = v113;
              }
            }
          }

          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v9 >> 1;
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v8[v10];
      v13 = *v8;
      if (v12 >= *v8)
      {
        if (v11 < v12)
        {
          v8[v10] = v11;
          *(a2 - 1) = v12;
          v16 = v8[v10];
          v17 = *v8;
          if (v16 < *v8)
          {
            *v8 = v16;
            v8[v10] = v17;
          }
        }
      }

      else
      {
        if (v11 < v12)
        {
          *v8 = v11;
          goto LABEL_27;
        }

        *v8 = v12;
        v8[v10] = v13;
        v19 = *(a2 - 1);
        if (v19 < v13)
        {
          v8[v10] = v19;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v20 = v10 - 1;
      v21 = v8[v10 - 1];
      v22 = v8[1];
      v23 = *(a2 - 2);
      if (v21 >= v22)
      {
        if (v23 < v21)
        {
          v8[v20] = v23;
          *(a2 - 2) = v21;
          v24 = v8[v20];
          v25 = v8[1];
          if (v24 < v25)
          {
            v8[1] = v24;
            v8[v20] = v25;
          }
        }
      }

      else
      {
        if (v23 < v21)
        {
          v8[1] = v23;
          goto LABEL_39;
        }

        v8[1] = v21;
        v8[v20] = v22;
        v27 = *(a2 - 2);
        if (v27 < v22)
        {
          v8[v20] = v27;
LABEL_39:
          *(a2 - 2) = v22;
        }
      }

      v28 = v10 + 1;
      v29 = v8[v10 + 1];
      v30 = v8[2];
      v31 = *(a2 - 3);
      if (v29 >= v30)
      {
        if (v31 < v29)
        {
          v8[v28] = v31;
          *(a2 - 3) = v29;
          v32 = v8[v28];
          v33 = v8[2];
          if (v32 < v33)
          {
            v8[2] = v32;
            v8[v28] = v33;
          }
        }
      }

      else
      {
        if (v31 < v29)
        {
          v8[2] = v31;
          goto LABEL_48;
        }

        v8[2] = v29;
        v8[v28] = v30;
        v34 = *(a2 - 3);
        if (v34 < v30)
        {
          v8[v28] = v34;
LABEL_48:
          *(a2 - 3) = v30;
        }
      }

      v35 = v8[v10];
      v36 = v8[v20];
      v37 = v8[v28];
      if (v35 >= v36)
      {
        if (v37 < v35)
        {
          v8[v10] = v37;
          v8[v28] = v35;
          v35 = v37;
          if (v37 < v36)
          {
            v8[v20] = v37;
            v8[v10] = v36;
            v35 = v36;
          }
        }
      }

      else if (v37 >= v35)
      {
        v8[v20] = v35;
        v8[v10] = v36;
        v35 = v36;
        if (v37 < v36)
        {
          v8[v10] = v37;
          v8[v28] = v36;
          v35 = v37;
        }
      }

      else
      {
        v8[v20] = v37;
        v8[v28] = v36;
      }

      v38 = *v8;
      *v8 = v35;
      v8[v10] = v38;
      goto LABEL_58;
    }

    v14 = *v8;
    v15 = v8[v10];
    if (*v8 >= v15)
    {
      if (v11 < v14)
      {
        *v8 = v11;
        *(a2 - 1) = v14;
        v18 = v8[v10];
        if (*v8 < v18)
        {
          v8[v10] = *v8;
          *v8 = v18;
        }
      }

      goto LABEL_58;
    }

    if (v11 >= v14)
    {
      v8[v10] = v14;
      *v8 = v15;
      v26 = *(a2 - 1);
      if (v26 >= v15)
      {
        goto LABEL_58;
      }

      *v8 = v26;
    }

    else
    {
      v8[v10] = v11;
    }

    *(a2 - 1) = v15;
LABEL_58:
    --a3;
    v39 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 1) < v39)
    {
      v40 = 0;
      do
      {
        v41 = v8[++v40];
      }

      while (v41 < v39);
      v42 = &v8[v40];
      v43 = a2;
      if (v40 == 1)
      {
        v43 = a2;
        do
        {
          if (v42 >= v43)
          {
            break;
          }

          v45 = *--v43;
        }

        while (v45 >= v39);
      }

      else
      {
        do
        {
          v44 = *--v43;
        }

        while (v44 >= v39);
      }

      if (v42 >= v43)
      {
        v51 = v42 - 1;
      }

      else
      {
        v46 = *v43;
        v47 = &v8[v40];
        v48 = v43;
        do
        {
          *v47 = v46;
          *v48 = v41;
          do
          {
            v49 = v47[1];
            ++v47;
            v41 = v49;
          }

          while (v49 < v39);
          do
          {
            v50 = *--v48;
            v46 = v50;
          }

          while (v50 >= v39);
        }

        while (v47 < v48);
        v51 = v47 - 1;
      }

      if (v51 != v8)
      {
        *v8 = *v51;
      }

      *v51 = v39;
      if (v42 < v43)
      {
        goto LABEL_81;
      }

      v52 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v8, v51);
      v8 = v51 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v51 + 1, a2);
      if (result)
      {
        a2 = v51;
        if (!v52)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v52)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v8 = v51 + 1;
      }
    }

    else
    {
      if (v39 >= *(a2 - 1))
      {
        v54 = v8 + 1;
        do
        {
          v8 = v54;
          if (v54 >= a2)
          {
            break;
          }

          ++v54;
        }

        while (v39 >= *v8);
      }

      else
      {
        do
        {
          v53 = v8[1];
          ++v8;
        }

        while (v39 >= v53);
      }

      v55 = a2;
      if (v8 < a2)
      {
        v55 = a2;
        do
        {
          v56 = *--v55;
        }

        while (v39 < v56);
      }

      if (v8 < v55)
      {
        v57 = *v8;
        v58 = *v55;
        do
        {
          *v8 = v58;
          *v55 = v57;
          do
          {
            v59 = v8[1];
            ++v8;
            v57 = v59;
          }

          while (v39 >= v59);
          do
          {
            v60 = *--v55;
            v58 = v60;
          }

          while (v39 < v60);
        }

        while (v8 < v55);
      }

      v61 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v61;
      }

      a4 = 0;
      *v61 = v39;
    }
  }

  v71 = *v8;
  v72 = v8[1];
  v73 = *(a2 - 1);
  if (v72 >= *v8)
  {
    if (v73 >= v72)
    {
      return result;
    }

    v8[1] = v73;
    *(a2 - 1) = v72;
    v115 = v8[1];
    goto LABEL_208;
  }

  if (v73 >= v72)
  {
    *v8 = v72;
    v8[1] = v71;
    v119 = *(a2 - 1);
    if (v119 >= v71)
    {
      return result;
    }

    v8[1] = v119;
  }

  else
  {
    *v8 = v73;
  }

  *(a2 - 1) = v71;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a2 - 1);
      if (v14 < *a1)
      {
        if (v15 >= v14)
        {
          *a1 = v14;
          a1[1] = v13;
          v28 = *(a2 - 1);
          if (v28 >= v13)
          {
            return 1;
          }

          a1[1] = v28;
        }

        else
        {
          *a1 = v15;
        }

        *(a2 - 1) = v13;
        return 1;
      }

      if (v15 >= v14)
      {
        return 1;
      }

      a1[1] = v15;
      *(a2 - 1) = v14;
      v26 = a1[1];
LABEL_78:
      v44 = *a1;
      if (v26 < *a1)
      {
        *a1 = v26;
        a1[1] = v44;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v10 = *a1;
          v8 = a1[1];
          goto LABEL_69;
        }

        *v4 = v6;
        *v7 = v5;
        if (v6 >= v8)
        {
          v10 = v8;
          goto LABEL_55;
        }

        *a1 = v6;
        v9 = a1 + 1;
        v10 = v6;
        v6 = v8;
      }

      else
      {
        if (v6 >= v5)
        {
          *a1 = v5;
          a1[1] = v8;
          if (v6 >= v8)
          {
            v10 = v5;
            goto LABEL_69;
          }

          *v4 = v6;
          v9 = a1 + 2;
          v10 = v5;
        }

        else
        {
          *a1 = v6;
          v9 = a1 + 2;
          v10 = v6;
          v6 = v5;
        }

        v5 = v8;
      }

      *v9 = v8;
LABEL_55:
      v8 = v6;
      v6 = v5;
LABEL_69:
      v40 = a1[3];
      if (v40 >= v6)
      {
        v6 = a1[3];
      }

      else
      {
        a1[2] = v40;
        a1[3] = v6;
        if (v40 < v8)
        {
          *v4 = v40;
          *v7 = v8;
          if (v40 < v10)
          {
            *a1 = v40;
            a1[1] = v10;
          }
        }
      }

      v41 = *(a2 - 1);
      if (v41 >= v6)
      {
        return 1;
      }

      a1[3] = v41;
      *(a2 - 1) = v6;
      v42 = a1[2];
      v26 = a1[3];
      if (v26 >= v42)
      {
        return 1;
      }

      a1[2] = v26;
      a1[3] = v42;
      v43 = a1[1];
      if (v26 >= v43)
      {
        return 1;
      }

      a1[1] = v26;
      a1[2] = v43;
      goto LABEL_78;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    if (v22 >= *a1)
    {
      if (v24 < v22)
      {
        *v21 = v24;
        *v23 = v22;
        if (v24 >= v25)
        {
LABEL_61:
          v24 = v22;
          goto LABEL_62;
        }

        *a1 = v24;
        v27 = a1 + 1;
LABEL_60:
        *v27 = v25;
        goto LABEL_61;
      }
    }

    else
    {
      if (v24 < v22)
      {
        *a1 = v24;
LABEL_59:
        v27 = a1 + 2;
        v22 = v25;
        goto LABEL_60;
      }

      *a1 = v22;
      a1[1] = v25;
      if (v24 < v25)
      {
        *v21 = v24;
        goto LABEL_59;
      }
    }

LABEL_62:
    v36 = *(a2 - 1);
    if (v36 < v24)
    {
      *v23 = v36;
      *(a2 - 1) = v24;
      v37 = *v23;
      v38 = *v21;
      if (v37 < v38)
      {
        a1[1] = v37;
        a1[2] = v38;
        v39 = *a1;
        if (v37 < *a1)
        {
          *a1 = v37;
          a1[1] = v39;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v11 = *(a2 - 1);
    v12 = *a1;
    if (v11 < *a1)
    {
      *a1 = v11;
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_16:
  v16 = a1 + 2;
  v17 = a1[2];
  v18 = a1 + 1;
  v19 = a1[1];
  v20 = *a1;
  if (v19 < *a1)
  {
    if (v17 >= v19)
    {
      *a1 = v19;
      a1[1] = v20;
      if (v17 >= v20)
      {
        goto LABEL_40;
      }

      *v18 = v17;
    }

    else
    {
      *a1 = v17;
    }

    v18 = a1 + 2;
    goto LABEL_39;
  }

  if (v17 < v19)
  {
    *v18 = v17;
    *v16 = v19;
    if (v17 < v20)
    {
      *a1 = v17;
LABEL_39:
      *v18 = v20;
    }
  }

LABEL_40:
  v29 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    v32 = *v29;
    v33 = *v16;
    if (*v29 < v33)
    {
      v34 = v30;
      while (1)
      {
        *(a1 + v34 + 24) = v33;
        if (v34 == -16)
        {
          break;
        }

        v33 = *(a1 + v34 + 8);
        v34 -= 8;
        if (v32 >= v33)
        {
          v35 = (a1 + v34 + 24);
          goto LABEL_48;
        }
      }

      v35 = a1;
LABEL_48:
      *v35 = v32;
      if (++v31 == 8)
      {
        return v29 + 1 == a2;
      }
    }

    v16 = v29;
    v30 += 8;
    if (++v29 == a2)
    {
      return 1;
    }
  }
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_shortest<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,std::tuple<mlir::OpResult,mlir::OpResult>,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::deref<0ul,1ul>(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  if (v3)
  {
    v4 = *(result + 8) & 7;
    if (result)
    {
      v5 = v4 == 6;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = (5 - v4);
    if (v3 > v6)
    {
      result -= 16 * v6;
      v3 -= v6;
LABEL_8:
      result -= 24 * v3;
      goto LABEL_10;
    }

    result -= 16 * v3;
  }

LABEL_10:
  v7 = a1[2];
  if (a1[3])
  {
    if (v7)
    {
      v5 = (*(v7 + 8) & 7) == 6;
    }
  }

  return result;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_0>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v8 = a2;
  if (a2 == a3)
  {
    return 1;
  }

  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v3, &v8);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 == a3;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_1>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = a2;
  v6 = a3;
  v7 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v3, &v5, &v7);
  if ((result & 1) == 0)
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(v3, &v5, v7);
    *result = v5;
    *(result + 8) = v6;
  }

  return result;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_2>(uint64_t **a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a3 == a5)
  {
    v5 = a4;
    v7 = a2;
    v8 = *a1;
    v36 = a2;
    v37 = 0;
    v34 = a4;
    v35 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    v9 = 0;
    while (1)
    {
      v10 = mlir::ValueRange::dereference_iterator(&v36, v9);
      v11 = mlir::ValueRange::dereference_iterator(&v34, v9);
      v31 = v10;
      if (v10 != v11)
      {
        v12 = v11;
        v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v8, &v31);
        v14 = v13 ? *(v13 + 8) : 0;
        if (v14 != v12)
        {
          break;
        }
      }

      v37 = ++v9;
      v35 = v9;
      if (a3 == v9)
      {
        goto LABEL_13;
      }
    }

    v16 = a3 - v9;
    if (v16)
    {
      v31 = v7;
      v32 = v9;
      if (v9)
      {
        v7 = mlir::ValueRange::offset_base(&v31, v9);
      }

      v31 = v33;
      v32 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, v7, 0, v7, v16);
      v19 = 126 - 2 * __clz(v32);
      if (v32)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v31, v31 + v32, v20, 1);
      v28 = v5;
      v29 = v9;
      if (v9)
      {
        v5 = mlir::ValueRange::offset_base(&v28, v9);
      }

      v28 = v30;
      v29 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v28, v5, 0, v5, v16);
      v21 = 126 - 2 * __clz(v29);
      if (v29)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v28, v28 + v29, v22, 1);
      if (v32 == v29)
      {
        v23 = v28;
        if (v32)
        {
          v24 = 0;
          do
          {
            v25 = *(v31 + v24);
            v26 = *(v28 + v24);
            v15 = v25 == v26;
            v27 = v25 != v26 || 8 * v32 - 8 == v24;
            v24 += 8;
          }

          while (!v27);
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        v23 = v28;
      }

      if (v23 != v30)
      {
        free(v23);
      }

      if (v31 != v33)
      {
        free(v31);
      }
    }

    else
    {
LABEL_13:
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, __int16 a6, mlir::StringAttr *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a6;
  *(a1 + 16) = a7 & 0xFFFFFFFFFFFFFFFBLL;
  *(a1 + 24) = a1 + 40;
  v8 = a1 + 24;
  *(a1 + 32) = 0x200000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  if (a5)
  {
    if (a5 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), a5, 8);
    }

    v12 = a4 + 16 * a5;
    do
    {
      v13 = *a4;
      v14 = *(a4 + 8);
      a4 += 16;
      mlir::OperationName::OperationName(&v16, v13, v14, a7);
      llvm::SmallVectorTemplateBase<mlir::OperationName,true>::push_back(v8, v16);
    }

    while (a4 != v12);
  }

  return a1;
}

uint64_t mlir::RewriterBase::replaceAllOpUsesWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, a3, a4);
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = (a2 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v10 = 4;
  }

  return mlir::RewriterBase::replaceAllUsesWith(a1, v10, v9, a3, a4);
}

uint64_t mlir::RewriterBase::replaceAllUsesWith(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = 0;
  v15 = a4;
  v16 = 0;
  if (a3 && a5)
  {
    v7 = result;
    v8 = 1;
    do
    {
      v9 = mlir::ValueRange::dereference_iterator(&v13, v8 - 1);
      v10 = mlir::ValueRange::dereference_iterator(&v15, v8 - 1);
      result = mlir::RewriterBase::replaceAllUsesWith(v7, v9, v10);
      v14 = v8;
      v16 = v8;
      if (a3 == v8)
      {
        break;
      }
    }

    while (a5 != v8++);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RewriterBase::replaceAllOpUsesWith(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v6 = *(this + 2);
  if (v6 && v6[2] == 1)
  {
    (*(*v6 + 48))(v6, a2, a3);
  }

  v7 = *(a2 + 9);
  if (v7)
  {
    v8 = (a2 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a3 + 9);
  if (v9)
  {
    v10 = (a3 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v10 = 4;
  }

  return mlir::RewriterBase::replaceAllUsesWith(this, v8, v7, v10, v9);
}

uint64_t mlir::RewriterBase::replaceOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::RewriterBase::replaceAllOpUsesWith(a1, a2, a3, a4);
  v6 = *(*a1 + 16);

  return v6(a1, a2);
}

uint64_t mlir::RewriterBase::replaceOp(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v5 = *(a3 + 9);
  if (v5)
  {
    v6 = (a3 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v6 = 4;
  }

  mlir::RewriterBase::replaceAllOpUsesWith(this, a2, v6, v5);
  v7 = *(*this + 16);

  return v7(this, a2);
}

void mlir::RewriterBase::eraseOp(mlir::RewriterBase *this, mlir::Operation *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2 && *(v2 + 8) == 1)
  {
    v6 = *(this + 2);
    operator new();
  }

  if (*(a2 + 2))
  {
    *(a2 + 2) = 0;
    v4 = *a2;
    v3 = *(a2 + 1);
    *v3 = *a2;
    *(v4 + 8) = v3;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  mlir::Operation::destroy(a2);
}

uint64_t std::function<void ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::RewriterBase::eraseBlock(v4, v5);
}