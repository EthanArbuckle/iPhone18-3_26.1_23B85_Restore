void sub_100255FCC(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((2 * v8), 2uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_10028FE20, 2 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        if ((*v14 - 0x7FFF) >= 2u)
        {
          v17 = *v14;
          v18 = (37 * *v14) & v13;
          v16 = &buffer[2 * v18];
          v19 = *v16;
          if (v17 != v19)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFF)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x8000;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[2 * (v23 & v13)];
              v19 = *v16;
              if (v17 == v19)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 2);
      }

      while (v14 != (v4 + 2 * v3));
    }

    llvm::deallocate_buffer(v4, (2 * v3), 2uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v15 = *(a1 + 16);
    if (v15)
    {

      memset_pattern16(buffer, &unk_10028FE20, 2 * v15);
    }
  }
}

uint64_t sub_100256190@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    while (v9 != 0x7FFFFFFF)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0x80000000;
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
      if (*v8 == 0x7FFFFFFF)
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
    sub_1002563B8(result, v4);
    sub_100256310(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == 0x7FFFFFFF)
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

uint64_t sub_100256310(uint64_t *a1, _DWORD *a2, void *a3)
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
      while (v8 != 0x7FFFFFFF)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x80000000;
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

void sub_1002563B8(uint64_t a1, int a2)
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
      memset_pattern16(buffer, &unk_10028FE30, 4 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v4;
      do
      {
        v16 = *v13;
        if ((*v13 - 0x7FFFFFFF) >= 2)
        {
          v17 = *(a1 + 16) - 1;
          v18 = v17 & (37 * v16);
          v15 = &buffer[4 * v18];
          v19 = *v15;
          if (v16 != *v15)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFFFFFF)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x80000000;
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

      memset_pattern16(buffer, &unk_10028FE30, 4 * v14);
    }
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::AsyncValueType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void *sub_100256598(void *result, _OWORD *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v5 = 0;
  v6 = result + 2;
  *result = result + 2;
  result[1] = &_mh_execute_header;
  if (a3 && a5)
  {
    v7 = a3;
    v8 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 >= ((a3 - 1) & 0x7FFFFFFFFFFFFFFuLL))
    {
      v8 = (a3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = v8 + 1;
      v10 = result;
      v11 = a2;
      v12 = a4;
      v13 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v8 + 1, 64);
      a5 = v13;
      a2 = v11;
      a4 = v12;
      result = v10;
      v8 = *(v10 + 2);
      v6 = *v10;
    }

    else
    {
      v9 = 1;
    }

    v14 = &v6[8 * v8];
    v15 = 32 * v7 - 32;
    v16 = 8 * a5 - 8;
    do
    {
      v17 = *a2;
      *(v14 + 12) = *(a2 + 12);
      *v14 = v17;
      v18 = *a4++;
      *(v14 + 56) = 0;
      v14[4] = v18;
      v14[5] = 0;
      *(v14 + 48) = 0;
      if (!v15)
      {
        break;
      }

      a2 += 2;
      v14 += 8;
      v15 -= 32;
      v19 = v16;
      v16 -= 8;
    }

    while (v19);
    v5 = *(result + 2) + v9;
  }

  *(result + 2) = v5;
  return result;
}

BOOL sub_1002566A4(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 536))(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v5 = v19;
  v6 = *(*v19 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v17 = "invalid kind of type specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v4, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_100052FFC(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100256938()
{
  {
    sub_10028B1DC();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100256980()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100256A30()
{
  {
    sub_10028B230();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100256A78()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

void sub_100256AF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
  }

  v24 = *(*(*(a1 + 16) + 8) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = Value;
    v25 = v10;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v11 = &v24;
      v12 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v12 = v30;
          v11 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = &v24;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v31;
    }
  }

  sub_100062C04(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
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
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100256E88()
{
  {
    sub_10028B284();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100256ED0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void sub_100256F50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
  }

  v24 = *(*(*(a1 + 16) + 8) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = Value;
    v25 = v10;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v11 = &v24;
      v12 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v12 = v30;
          v11 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = &v24;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v31;
    }
  }

  sub_100062C04(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
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
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

BOOL sub_1002572B0(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  if (((*(*a1 + 536))(a1, &v17) & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v15 = "invalid kind of type specified";
  v16 = 259;
  (*(*a1 + 24))(v18, a1, v4, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  v7 = result;
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
    result = v7;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v7;
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
          v9 = sub_100052FFC(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v24 = v8;
      operator delete(v10);
      result = v7;
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
      result = v7;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v7;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100257540()
{
  {
    sub_10028B2D8();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100257588()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties]";
  v6 = 141;
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

BOOL sub_100257608(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_100052FFC(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

void sub_100257868(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
  }

  v24 = *(*(*(a1 + 16) + 8) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = Value;
    v25 = v10;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v11 = &v24;
      v12 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v12 = v30;
          v11 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = &v24;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v31;
    }
  }

  sub_100062C04(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
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
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

unint64_t sub_100257BC8(char *a1, uint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v22 = a2;
  v15 = sub_10002CAB8(a1, &v22, a3, a4, *a5);
  v23 = v22;
  v16 = sub_10002CAB8(a1, &v23, v15, a4, *a6);
  v24 = v23;
  v17 = sub_10002CAB8(a1, &v24, v16, a4, *a7);
  v25 = v24;
  v18 = sub_10002CAB8(a1, &v25, v17, a4, *a8);
  v26 = v25;
  v19 = sub_10002CAB8(a1, &v26, v18, a4, *a9);
  v27 = v26;
  v20 = sub_10002CAB8(a1, &v27, v19, a4, *a10);
  return sub_10002C12C(a1, v27, v20, a4);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_100257D18()
{
  {
    sub_10028B32C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100257D60()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *sub_100257DE0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ExternAttr]";
  v6 = 102;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100257E90()
{
  {
    sub_10028B380();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100257ED8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *sub_100257F58()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ApproximateAttr]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100258008()
{
  {
    sub_10028B3D4();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258050()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties]";
  v6 = 141;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_100258108()
{
  {
    sub_10028B428();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258150()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

const char *sub_1002581D0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::IntegerAttr]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100258280()
{
  {
    sub_10028B47C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002582C8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

const char *sub_100258348()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::PaddingModeAttr]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_1002583F8()
{
  {
    sub_10028B4D0();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258440()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties]";
  v6 = 143;
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

void *sub_1002584C0(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v7 = a1[1];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_10002BC08();
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

      sub_10002BC08();
    }

    v13 = (v4 - v7) >> 3;
    v14 = (8 * v9);
    v15 = *a2;
    *a2 = 0;
    v16 = (8 * v9 - 8 * v13);
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 8;
  }

  a1[2] = v6;
  return a1;
}

void sub_1002585D0(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  operator delete();
}

void sub_1002586B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
  }

  v24 = *(*(*(a1 + 16) + 8) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = Value;
    v25 = v10;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v11 = &v24;
      v12 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v12 = v30;
          v11 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = &v24;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v31;
    }
  }

  sub_100062C04(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
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
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

llvm::raw_ostream *sub_100258A18(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
    v7 = a2[1];
    v10 = a2[3];
    if (v7 == v10 || v7 + 1 != v10)
    {
LABEL_20:
      v20 = *(v5 + 4);
      if (v20 >= *(v5 + 3))
      {
        result = llvm::raw_ostream::write(v5, 40);
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(v5 + 4) = v20 + 1;
        *v20 = 40;
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
LABEL_25:
          v26 = *(v5 + 4);
          if (v26 >= *(v5 + 3))
          {

            return llvm::raw_ostream::write(v5, 41);
          }

          else
          {
            *(v5 + 4) = v26 + 1;
            *v26 = 41;
          }

          return result;
        }
      }

      v23 = *a2;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v21);
      result = (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v21 + 1; v22 != i; ++i)
      {
        v28 = (*(*a1 + 16))(a1);
        v29 = v28[4];
        if (v28[3] - v29 > 1uLL)
        {
          *v29 = 8236;
          v28[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, i);
        result = (*(*a1 + 32))(a1, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      goto LABEL_25;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
    v7 = a2[1];
    v8 = a2[3];
    if (v7 == v8 || v7 + 1 != v8)
    {
      goto LABEL_20;
    }
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, v7);
  if (*(*(*(result + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_20;
  }

  v12 = a2[1];
  v13 = a2[3];
  if (v12 != v13)
  {
    v14 = *a2;
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
    result = (*(*a1 + 32))(a1, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
    for (j = v12 + 1; v13 != j; ++j)
    {
      v18 = (*(*a1 + 16))(a1);
      v19 = v18[4];
      if (v18[3] - v19 > 1uLL)
      {
        *v19 = 8236;
        v18[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, j);
      result = (*(*a1 + 32))(a1, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100258DE8()
{
  {
    sub_10028B524();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258E30()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties]";
  v6 = 145;
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

const char *sub_100258EB0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr]";
  v6 = 113;
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

const char *sub_100258F30()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SamplingModeAttr]";
  v6 = 108;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100258FE0()
{
  {
    sub_10028B578();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100259028()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties]";
  v6 = 148;
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

const char *sub_1002590A8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ScatterModeAttr]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100259158()
{
  {
    sub_10028B5CC();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002591A0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties]";
  v6 = 141;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100259250()
{
  {
    sub_10028B620();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100259298()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties]";
  v6 = 142;
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

const char *sub_100259318()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::TargetSpecAttr]";
  v6 = 106;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML14TargetSpecAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void sub_1002593D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
  }

  v24 = *(*(*(a1 + 16) + 8) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = Value;
    v25 = v10;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v11 = &v24;
      v12 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v12 = v30;
          v11 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = &v24;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v31;
    }
  }

  sub_100062C04(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
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
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

__n128 sub_10025973C@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v1);
  result = *v2;
  v3[1].n128_u64[0] = v2[1].n128_u64[0];
  *v3 = result;
  return result;
}

uint64_t sub_100259878(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 28);
  return result;
}

uint64_t *sub_1002598E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(v15 + 36);
  v18 = v15 - 16;
  if (!v17)
  {
    v18 = 0;
  }

  a14 = v18;
  a15 = v17;

  return mlir::ResultRange::getTypes(&a14, &a10);
}

uint64_t sub_10025992C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 2) = 32;
  *a2 = 14880;
  *(result + 32) += 3;
  return result;
}

void sub_10025995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, a12, v12 + 1, 24);
}

void sub_10025997C()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void sub_10025999C()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v1 + 32), v0 + 1, 24);
}

void sub_1002599BC()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v1 + 32), v0 + 1, 24);
}

uint64_t *sub_1002599EC@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 72) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

void *sub_100259A40()
{

  return llvm::raw_ostream::write(v0, v1, 2uLL);
}

void sub_100259A9C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 24, a5, a1 + 1, 24);
}

void sub_100259ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, a12, v12 + 1, 24);
}

void sub_100259ADC(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, a1 + 1, 24);
}

void sub_100259AFC()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void sub_100259B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *(**v8 + 24);

  mlir::emitError(v10, va);
}

void sub_100259B68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 16);
}

llvm::raw_ostream *sub_100259C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return mlir::call_interface_impl::printFunctionSignature(v13, a2, a3, v14, 0, a12, a13, a8, 0, 1u);
}

uint64_t sub_100259C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return mlir::DiagnosticArgument::DiagnosticArgument(va, a5);
}

uint64_t *sub_100259C80@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va, va1);
}

llvm::raw_ostream *sub_100259CA8(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_10023BF78(v1, va1, va);
}

uint64_t *sub_100259D38@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a10 = a1;
  a11 = v36;

  return mlir::ResultRange::getTypes(&a10, &a36);
}

uint64_t *sub_100259D5C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a10 = a1;
  a11 = v36;

  return mlir::OperandRange::getTypes(&a10, &a36);
}

uint64_t sub_100259D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = a2;
  v4 = *(*a1 + 46);
  return result;
}

uint64_t sub_100259D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;

  return mlir::DictionaryAttr::getValue(&a16);
}

BOOL sub_100259E68()
{
  v3 = *v0;
  v4 = *(*v1 + 8) & 0xFFFFFFFFFFFFFFF8;

  return mlir::ODIE::Compiler::areTypesCompatible(v3, v4);
}

void sub_100259EB8(void *a1@<X8>)
{

  operator delete(a1);
}

uint64_t sub_100259ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return sub_100062C04(&a43, &a17);
}

unint64_t sub_100259EE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return mlir::Operation::getAttrDictionary(v21);
}

uint64_t mlir::ODIE::Compiler::CoreML::TransformCastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_100259F98(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_100259F98(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t sub_100259F98(mlir::Operation *a1, uint64_t *a2, void **a3, void **a4, unsigned int a5)
{
  v7 = *a2;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = a3;
    v61 = a1;
    v59 = a4;
    sub_100289EC4();
    a4 = v59;
    a3 = v60;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    v43 = *a2;
    {
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (!v46)
      {
        goto LABEL_68;
      }
    }

    else
    {
      sub_100289EC4();
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (!v46)
      {
        goto LABEL_68;
      }
    }

    v47 = v45;
    v48 = v46;
    do
    {
      v49 = v48 >> 1;
      v50 = &v47[2 * (v48 >> 1)];
      v52 = *v50;
      v51 = v50 + 2;
      v48 += ~(v48 >> 1);
      if (v52 < v44)
      {
        v47 = v51;
      }

      else
      {
        v48 = v49;
      }
    }

    while (v48);
    if (v47 != &v45[2 * v46] && *v47 == v44)
    {
      v54 = v47[1];
      goto LABEL_70;
    }

LABEL_68:
    v54 = 0;
LABEL_70:
    v67[0] = a2;
    v67[1] = v54;
    mlir::ShapedType::getElementType(v67);
    return 1;
  }

LABEL_13:
  v63 = 261;
  v62[0] = a3;
  v62[1] = a4;
  mlir::Operation::emitOpError(v67, a1, v62);
  if (v67[0])
  {
    v64 = 3;
    v65 = " #";
    v66 = 2;
    v17 = &v64;
    v18 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v64 && v68 + 24 * v69 > &v64)
      {
        v55 = &v64 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v18 = v68;
        v17 = (v68 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v17 = &v64;
        v18 = v68;
      }
    }

    v19 = &v18[24 * v69];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    v21 = ++v69;
    if (v67[0])
    {
      v64 = 5;
      v65 = a5;
      v22 = &v64;
      v23 = v68;
      if (v21 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v21 > &v64)
        {
          v56 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
          v23 = v68;
          v22 = (v68 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
          v22 = &v64;
          v23 = v68;
        }
      }

      v24 = &v23[24 * v69];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v69;
      if (v67[0])
      {
        v64 = 3;
        v65 = " must be shaped of any type values, but got ";
        v66 = 44;
        v27 = &v64;
        v28 = v68;
        if (v26 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v26 > &v64)
          {
            v57 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v26 + 1, 24);
            v28 = v68;
            v27 = (v68 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v26 + 1, 24);
            v27 = &v64;
            v28 = v68;
          }
        }

        v29 = &v28[24 * v69];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v69;
        if (v67[0])
        {
          v31 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, a2);
          v32 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v58 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v32 = v68;
              v31 = (v68 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v31 = &v64;
              v32 = v68;
            }
          }

          v33 = &v32[24 * v69];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v69;
        }
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
  if (v67[0])
  {
    mlir::InFlightDiagnostic::report(v67);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v75;
      v38 = __p;
      if (v75 != __p)
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v75 = v36;
      operator delete(v38);
    }

    v39 = v72;
    if (v72)
    {
      v40 = v73;
      v41 = v72;
      if (v73 != v72)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v72;
      }

      v73 = v39;
      operator delete(v41);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v35;
}

uint64_t mlir::ODIE::Compiler::CoreML::TransformCastOp::parse(mlir::ODIE::Compiler::CoreML::TransformCastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  if (!sub_10025ADB8(this, &v13))
  {
    return 0;
  }

  v9 = v13;
  v15 = 257;
  if (((*(*this + 400))(this, "to", 2, &v13) & 1) == 0)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  if (!sub_10025ADB8(this, &v13))
  {
    return 0;
  }

  v7 = v13;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  sub_1001D4484(a2, &v7, 1);
  return sub_10020E908(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::TransformCastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  NextResultAtOffset = *(*(*this + 9) + 24);
  v12 = sub_10025ABC8(&NextResultAtOffset);
  v13 = sub_10025ACB8(v12);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  (*(*a2 + 32))(a2, v14);
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 1uLL)
  {
    *v18 = 28532;
    v17[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, "to", 2uLL);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  if (*(*this + 9))
  {
    v21 = *this - 16;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v22 = sub_10025ABC8(&NextResultAtOffset);
  v23 = sub_10025ACB8(v22);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  (*(*a2 + 32))(a2, v24);
  NextResultAtOffset = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v26, NextResultAtOffset, v29);
  if (NextResultAtOffset != v30)
  {
    free(NextResultAtOffset);
  }
}

void *sub_10025ABC8(uint64_t a1)
{
  result = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_100289EC4();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

void *sub_10025ACB8(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v12 = v1;
      v13 = result;
      sub_100289EC4();
      result = v13;
      v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v3 = *(v12 + 8);
      v4 = *(v12 + 16);
      if (!v4)
      {
        return result;
      }
    }

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
    if (v5 != &v3[2 * v4] && *v5 == v2)
    {
      v11 = v5[1];
    }
  }

  return result;
}

BOOL sub_10025ADB8(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_10005E890(v18);
  *a2 = v5;
  a2[1] = v6;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v8 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v8;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = sub_100052FFC(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
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
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 - 16;
  do
  {
    v8 = v3[2];
    v3 = *v3;
    if (v8 != a2)
    {
      v9 = *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id ? v8 : 0;
      if (v9)
      {
        if (*(v9 + 36))
        {
          v10 = v9 - 16;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8);
        if (*(a2 + 36))
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) ^ v11) <= 7)
        {
          (*(*a3 + 8))(a3, v9, a2);
          v6 = 1;
        }
      }
    }
  }

  while (v3);
  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = v3[2];
    v3 = *v3;
    if (v7 != a2)
    {
      if (v7)
      {
        v8 = *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        (*(*a3 + 8))(a3);
        result = 1;
      }
    }
  }

  while (v3);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v32.n128_u64[0] = v7;
  v32.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v32, v40);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v37[0].n128_u64[0] = v9;
  v37[0].n128_u64[1] = v8;
  mlir::ResultRange::use_end(v37, v35);
  v34 = v42;
  v32 = *v40;
  v33 = v41;
  v10 = v36;
  if (v42 == v36)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      ++v11;
      mlir::ResultRange::UseIterator::operator++(v40);
    }

    while (v42 != v10);
  }

  v40[0] = &v41;
  v40[1] = 0x600000000;
  v12 = *(a2 + 36);
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v32.n128_u64[0] = v13;
  v32.n128_u64[1] = v12;
  mlir::ResultRange::use_begin(&v32, v37);
  v14 = *(a2 + 36);
  if (v14)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v39.n128_u64[0] = v15;
  v39.n128_u64[1] = v14;
  mlir::ResultRange::use_end(&v39, v35);
  v16 = v38;
  v34 = v38;
  v32 = v37[0];
  v33 = v37[1];
  for (i = v36; v38 != i; v16 = v38)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = *(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = LODWORD(v40[1]);
      if (LODWORD(v40[1]) >= HIDWORD(v40[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v40, &v41, LODWORD(v40[1]) + 1, 8);
        v20 = LODWORD(v40[1]);
      }

      *(v40[0] + v20) = v18;
      ++LODWORD(v40[1]);
    }

    mlir::ResultRange::UseIterator::operator++(v37);
  }

  if (LODWORD(v40[1]))
  {
    v21 = v40[0];
    v22 = 8 * LODWORD(v40[1]);
    do
    {
      v24 = *v21++;
      v23 = v24;
      v25 = v24 - 16;
      if (*(v24 + 36))
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v32.n128_u64[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37[0].n128_u64[0] = *(*(a2 + 72) + 24);
      v27 = sub_10025BA78(a3 + 1, *(v23 + 24), &v32, v37);
      (*(*a3 + 8))(a3, v23, v27);
      v22 -= 8;
    }

    while (v22);
    if (v11 == LODWORD(v40[1]))
    {
      (*(*a3 + 16))(a3, a2);
    }

    v28 = 1;
    v29 = v40[0];
    if (v40[0] != &v41)
    {
LABEL_38:
      free(v29);
    }
  }

  else
  {
    v32.n128_u64[0] = "no coremlax.copy_with_constraints users";
    LOWORD(v34) = 259;
    v37[0].n128_u64[0] = &v32;
    v31 = a3[2];
    if (v31 && mlir::RewriterBase::Listener::classof(v31))
    {
      (*(*v31 + 88))(v31, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v37);
    }

    v28 = 0;
    v29 = v40[0];
    if (v40[0] != &v41)
    {
      goto LABEL_38;
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a2 + 72) + 24);
  if (!*v3)
  {
    return 0;
  }

  if (**v3)
  {
    return 0;
  }

  v12 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v12);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
    {
      return 0;
    }

    if (*(a2 + 36))
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = result;
    v9 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(*(v8 + 72) + 24);
    v12 = v9;
    v10 = sub_10025BB68(a3 + 1, *(v8 + 24), &v12, &v11);
    (*(*a3 + 8))(a3, v8, v10);
    (*(*a3 + 8))(a3, a2, v10);
    return 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(&v19);
  if (ElementType == mlir::RankedTensorType::getElementType(&v18))
  {
    mlir::ODIE::Compiler::CoreMLAX::getStrides(v19, &v26);
    mlir::ODIE::Compiler::CoreMLAX::getStrides(v18, &__s2);
    if (v27)
    {
      v7 = 8 * v27;
      v8 = v26;
      while (*v8 != 0x8000000000000000)
      {
        v8 += 8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v24)
      {
LABEL_13:
        if (v27 == v24 && !memcmp(v26, __s2, 8 * v27))
        {
          v20[0] = *(*(a2 + 72) + 24);
          v17 = sub_10025BC68(a3 + 1, *(a2 + 24), &v18, v20);
          (*(*a3 + 8))(a3, a2, v17);
          v13 = 1;
          v15 = __s2;
          if (__s2 == v25)
          {
LABEL_26:
            if (v26 != v28)
            {
              free(v26);
            }

            return v13;
          }

LABEL_25:
          free(v15);
          goto LABEL_26;
        }

        v11 = "source strides don't match dest strides";
LABEL_21:
        v20[0] = v11;
        v21 = 259;
        v22 = v20;
        v14 = a3[2];
        if (v14 && mlir::RewriterBase::Listener::classof(v14))
        {
          (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v22);
        }

        v13 = 0;
        v15 = __s2;
        if (__s2 == v25)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v9 = 8 * v24;
      v10 = __s2;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = "source or result have dynamic shape";
    goto LABEL_21;
  }

  v26 = "source dtype and result dtype are different";
  v28[8] = 259;
  __s2 = &v26;
  v12 = a3[2];
  if (v12 && mlir::RewriterBase::Listener::classof(v12))
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__s2);
  }

  return 0;
}

uint64_t sub_10025BA78(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_10028B674(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::CastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id)
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

uint64_t sub_10025BB68(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_10028B6B8(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
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

uint64_t sub_10025BC68(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_10028B6FC(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id)
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

void mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Alignments = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
  v8 = v7;
  Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
  v11 = v10;
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v8)
  {
    if (v8 < 7)
    {
      v12 = 0;
      v13 = v8;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v8, 8);
      v12 = *(a3 + 2);
      v13 = v8 - v12;
      if (v8 == v12)
      {
        goto LABEL_7;
      }
    }

    bzero((*a3 + 8 * v12), 8 * v13);
LABEL_7:
    *(a3 + 2) = v8;
  }

  if (v11)
  {
    v14 = 8 * v11;
    v15 = 1;
    v16 = Interleave;
    while (*v16 != 0x8000000000000000)
    {
      v15 *= *v16++;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v15 = 0x8000000000000000;
    if (v8)
    {
LABEL_17:
      v17 = *a3 - 8;
      v18 = Alignments - 8;
      v19 = Interleave - 16;
      v20 = a2 - 16;
      v21 = 1;
      v22 = 8;
      v23 = 0x8000000000000000;
      v24 = v15 == 0x8000000000000000;
      if (v15 == 0x8000000000000000)
      {
        goto LABEL_19;
      }

LABEL_18:
      v23 = (*(v18 + 8 * v8) + v21 * v15 - 1) / *(v18 + 8 * v8) * *(v18 + 8 * v8);
LABEL_19:
      while (1)
      {
        *(v17 + 8 * v8) = v23;
        if (8 * v8 == v22)
        {
          break;
        }

        v25 = *(v20 + 8 * v8);
        v26 = *(v19 + 8 * v8);
        v17 -= 8;
        v18 -= 8;
        v22 += 8;
        v19 -= 8;
        v20 -= 8;
        v21 = v23;
        v15 = v25 / v26;
        v23 = 0x8000000000000000;
        v24 |= v15 == 0x8000000000000000;
        if ((v24 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v15 = 1;
LABEL_14:
    if (v8)
    {
      goto LABEL_17;
    }
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::verifyEncoding(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
  if (v12 == a3 + 1)
  {
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
    if (v13 == a3)
    {
      Alignments = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
      if (v15)
      {
        v16 = 8 * v15;
        while (*Alignments != 0x8000000000000000)
        {
          ++Alignments;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        a5(v149, a6);
        if (v149[0])
        {
          v146 = 3;
          v147 = "expected alignments to be statically defined";
          v148 = 44;
          v77 = &v146;
          v78 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v146 && v150 + 24 * v151 > &v146)
            {
              v135 = &v146 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v78 = v150;
              v77 = (v150 + v135);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v77 = &v146;
              v78 = v150;
            }
          }

          v79 = &v78[24 * v151];
          v80 = *v77;
          *(v79 + 2) = *(v77 + 2);
          *v79 = v80;
          ++v151;
        }

        v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
        if (v149[0])
        {
          mlir::InFlightDiagnostic::report(v149);
        }

        if (v159 == 1)
        {
          if (v158 != &v159)
          {
            free(v158);
          }

          v81 = __p;
          if (__p)
          {
            v82 = v157;
            v83 = __p;
            if (v157 != __p)
            {
              do
              {
                v82 = sub_100052FFC(v82 - 1);
              }

              while (v82 != v81);
              v83 = __p;
            }

            v157 = v81;
            operator delete(v83);
          }

          v52 = v154;
          if (!v154)
          {
            goto LABEL_168;
          }

          v84 = v155;
          v54 = v154;
          if (v155 == v154)
          {
LABEL_167:
            v155 = v52;
            operator delete(v54);
LABEL_168:
            if (v150 != v153)
            {
              free(v150);
            }

            return v48;
          }

          do
          {
            v85 = *--v84;
            *v84 = 0;
            if (v85)
            {
              operator delete[]();
            }
          }

          while (v84 != v52);
LABEL_166:
          v54 = v154;
          goto LABEL_167;
        }
      }

      else
      {
LABEL_7:
        Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
        if (a3)
        {
          v19 = 0;
          v20 = 8 * v18;
          v21 = 8 * a3;
          v22 = a2;
          while (v20)
          {
            v23 = *v22;
            v24 = *Interleave;
            if (*Interleave != 1 && (*v22 == 0x8000000000000000) == (*Interleave != 0x8000000000000000))
            {
              a5(v149, a6);
              if (v149[0])
              {
                v146 = 3;
                v147 = "dimension shape and dimension interleave factor must both be static or both be dynamic";
                v148 = 86;
                v87 = &v146;
                v88 = v150;
                if (v151 >= v152)
                {
                  if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                  {
                    v136 = &v146 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v88 = v150;
                    v87 = (v150 + v136);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v87 = &v146;
                    v88 = v150;
                  }
                }

                v89 = &v88[24 * v151];
                v90 = *v87;
                *(v89 + 2) = *(v87 + 2);
                *v89 = v90;
                ++v151;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
              if (v149[0])
              {
                mlir::InFlightDiagnostic::report(v149);
              }

              if (v159 != 1)
              {
                return v48;
              }

              if (v158 != &v159)
              {
                free(v158);
              }

              v91 = __p;
              if (__p)
              {
                v92 = v157;
                v93 = __p;
                if (v157 != __p)
                {
                  do
                  {
                    v92 = sub_100052FFC(v92 - 1);
                  }

                  while (v92 != v91);
                  v93 = __p;
                }

                v157 = v91;
                operator delete(v93);
              }

              v52 = v154;
              if (!v154)
              {
                goto LABEL_168;
              }

              v94 = v155;
              v54 = v154;
              if (v155 == v154)
              {
                goto LABEL_167;
              }

              do
              {
                v95 = *--v94;
                *v94 = 0;
                if (v95)
                {
                  operator delete[]();
                }
              }

              while (v94 != v52);
              goto LABEL_166;
            }

            if (v24 != 1 && ((v19 ^ 1) & 1) == 0)
            {
              a5(v149, a6);
              if (v149[0])
              {
                v146 = 3;
                v147 = "interleave is only supported for a single dimension";
                v148 = 51;
                v96 = &v146;
                v97 = v150;
                if (v151 >= v152)
                {
                  if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                  {
                    v137 = &v146 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v97 = v150;
                    v96 = (v150 + v137);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v96 = &v146;
                    v97 = v150;
                  }
                }

                v98 = &v97[24 * v151];
                v99 = *v96;
                *(v98 + 2) = *(v96 + 2);
                *v98 = v99;
                ++v151;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
              if (v149[0])
              {
                mlir::InFlightDiagnostic::report(v149);
              }

              if (v159 != 1)
              {
                return v48;
              }

              if (v158 != &v159)
              {
                free(v158);
              }

              v100 = __p;
              if (__p)
              {
                v101 = v157;
                v102 = __p;
                if (v157 != __p)
                {
                  do
                  {
                    v101 = sub_100052FFC(v101 - 1);
                  }

                  while (v101 != v100);
                  v102 = __p;
                }

                v157 = v100;
                operator delete(v102);
              }

              v52 = v154;
              if (!v154)
              {
                goto LABEL_168;
              }

              v103 = v155;
              v54 = v154;
              if (v155 == v154)
              {
                goto LABEL_167;
              }

              do
              {
                v104 = *--v103;
                *v103 = 0;
                if (v104)
                {
                  operator delete[]();
                }
              }

              while (v103 != v52);
              goto LABEL_166;
            }

            if (v23 != 0x8000000000000000)
            {
              if (v23 < v24)
              {
                v105 = Interleave;
                a5(v149, a6);
                if (v149[0])
                {
                  v146 = 3;
                  v147 = "dimension interleave factor ";
                  v148 = 28;
                  v106 = &v146;
                  v107 = v150;
                  if (v151 >= v152)
                  {
                    if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                    {
                      v138 = &v146 - v150;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v107 = v150;
                      v106 = (v150 + v138);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v106 = &v146;
                      v107 = v150;
                    }
                  }

                  v108 = &v107[24 * v151];
                  v109 = *v106;
                  *(v108 + 2) = *(v106 + 2);
                  *v108 = v109;
                  v110 = ++v151;
                  if (v149[0])
                  {
                    v111 = *v105;
                    v146 = 2;
                    v147 = v111;
                    v112 = &v146;
                    v113 = v150;
                    if (v110 >= v152)
                    {
                      if (v150 <= &v146 && v150 + 24 * v110 > &v146)
                      {
                        v140 = &v146 - v150;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v110 + 1, 24);
                        v113 = v150;
                        v112 = (v150 + v140);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v110 + 1, 24);
                        v112 = &v146;
                        v113 = v150;
                      }
                    }

                    v114 = &v113[24 * v151];
                    v115 = *v112;
                    *(v114 + 2) = *(v112 + 2);
                    *v114 = v115;
                    v116 = ++v151;
                    if (v149[0])
                    {
                      v146 = 3;
                      v147 = " must not be greater than dimension shape ";
                      v148 = 42;
                      v117 = &v146;
                      v118 = v150;
                      if (v116 >= v152)
                      {
                        if (v150 <= &v146 && v150 + 24 * v116 > &v146)
                        {
                          v142 = &v146 - v150;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v116 + 1, 24);
                          v118 = v150;
                          v117 = (v150 + v142);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v116 + 1, 24);
                          v117 = &v146;
                          v118 = v150;
                        }
                      }

                      v119 = &v118[24 * v151];
                      v120 = *v117;
                      *(v119 + 2) = *(v117 + 2);
                      *v119 = v120;
                      v121 = ++v151;
                      if (v149[0])
                      {
                        v122 = *v22;
                        v146 = 2;
                        v147 = v122;
                        v123 = &v146;
                        v124 = v150;
                        if (v121 >= v152)
                        {
                          if (v150 <= &v146 && v150 + 24 * v121 > &v146)
                          {
                            v144 = &v146 - v150;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v121 + 1, 24);
                            v124 = v150;
                            v123 = (v150 + v144);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v121 + 1, 24);
                            v123 = &v146;
                            v124 = v150;
                          }
                        }

                        v125 = &v124[24 * v151];
                        v126 = *v123;
                        *(v125 + 2) = *(v123 + 2);
                        *v125 = v126;
                        ++v151;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
                if (v149[0])
                {
                  mlir::InFlightDiagnostic::report(v149);
                }

                if (v159 != 1)
                {
                  return v48;
                }

                if (v158 != &v159)
                {
                  free(v158);
                }

                v127 = __p;
                if (__p)
                {
                  v128 = v157;
                  v129 = __p;
                  if (v157 != __p)
                  {
                    do
                    {
                      v128 = sub_100052FFC(v128 - 1);
                    }

                    while (v128 != v127);
                    v129 = __p;
                  }

                  v157 = v127;
                  operator delete(v129);
                }

                v52 = v154;
                if (!v154)
                {
                  goto LABEL_168;
                }

                v130 = v155;
                v54 = v154;
                if (v155 == v154)
                {
                  goto LABEL_167;
                }

                do
                {
                  v131 = *--v130;
                  *v130 = 0;
                  if (v131)
                  {
                    operator delete[]();
                  }
                }

                while (v130 != v52);
                goto LABEL_166;
              }

              if (v23 % v24)
              {
                v25 = Interleave;
                a5(v149, a6);
                if (v149[0])
                {
                  v146 = 3;
                  v147 = "dimension shape ";
                  v148 = 16;
                  v26 = &v146;
                  v27 = v150;
                  if (v151 >= v152)
                  {
                    if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                    {
                      v139 = &v146 - v150;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v27 = v150;
                      v26 = (v150 + v139);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v26 = &v146;
                      v27 = v150;
                    }
                  }

                  v28 = v25;
                  v29 = &v27[24 * v151];
                  v30 = *v26;
                  *(v29 + 2) = *(v26 + 2);
                  *v29 = v30;
                  v31 = ++v151;
                  if (v149[0])
                  {
                    v32 = *v22;
                    v146 = 2;
                    v147 = v32;
                    v33 = &v146;
                    v34 = v150;
                    if (v31 >= v152)
                    {
                      if (v150 <= &v146 && v150 + 24 * v31 > &v146)
                      {
                        v141 = &v146 - v150;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v31 + 1, 24);
                        v34 = v150;
                        v33 = (v150 + v141);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v31 + 1, 24);
                        v33 = &v146;
                        v34 = v150;
                      }

                      v28 = v25;
                    }

                    v35 = &v34[24 * v151];
                    v36 = *v33;
                    *(v35 + 2) = *(v33 + 2);
                    *v35 = v36;
                    v37 = ++v151;
                    if (v149[0])
                    {
                      v146 = 3;
                      v147 = " must be a multiple of dimension interleave factor ";
                      v148 = 51;
                      v38 = &v146;
                      v39 = v150;
                      if (v37 >= v152)
                      {
                        if (v150 <= &v146 && v150 + 24 * v37 > &v146)
                        {
                          v143 = &v146 - v150;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v37 + 1, 24);
                          v39 = v150;
                          v38 = (v150 + v143);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v37 + 1, 24);
                          v38 = &v146;
                          v39 = v150;
                        }

                        v28 = v25;
                      }

                      v40 = &v39[24 * v151];
                      v41 = *v38;
                      *(v40 + 2) = *(v38 + 2);
                      *v40 = v41;
                      v42 = ++v151;
                      if (v149[0])
                      {
                        v43 = *v28;
                        v146 = 2;
                        v147 = v43;
                        v44 = &v146;
                        v45 = v150;
                        if (v42 >= v152)
                        {
                          if (v150 <= &v146 && v150 + 24 * v42 > &v146)
                          {
                            v145 = &v146 - v150;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v42 + 1, 24);
                            v45 = v150;
                            v44 = (v150 + v145);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v42 + 1, 24);
                            v44 = &v146;
                            v45 = v150;
                          }
                        }

                        v46 = &v45[24 * v151];
                        v47 = *v44;
                        *(v46 + 2) = *(v44 + 2);
                        *v46 = v47;
                        ++v151;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
                if (v149[0])
                {
                  mlir::InFlightDiagnostic::report(v149);
                }

                if (v159 != 1)
                {
                  return v48;
                }

                if (v158 != &v159)
                {
                  free(v158);
                }

                v49 = __p;
                if (__p)
                {
                  v50 = v157;
                  v51 = __p;
                  if (v157 != __p)
                  {
                    do
                    {
                      v50 = sub_100052FFC(v50 - 1);
                    }

                    while (v50 != v49);
                    v51 = __p;
                  }

                  v157 = v49;
                  operator delete(v51);
                }

                v52 = v154;
                if (!v154)
                {
                  goto LABEL_168;
                }

                v53 = v155;
                v54 = v154;
                if (v155 == v154)
                {
                  goto LABEL_167;
                }

                do
                {
                  v86 = *--v53;
                  *v53 = 0;
                  if (v86)
                  {
                    operator delete[]();
                  }
                }

                while (v53 != v52);
                goto LABEL_166;
              }
            }

            v19 |= v24 != 1;
            ++v22;
            ++Interleave;
            v20 -= 8;
            v21 -= 8;
            if (!v21)
            {
              break;
            }
          }
        }

        v149[0] = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getBaseEncoding(a1);
        if (v149[0])
        {
          return mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(v149, v73, v74, v75, v76, a2, a3, a4, a5, a6);
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      a5(v149, a6);
      if (v149[0])
      {
        v146 = 3;
        v147 = "expected interleave to have (rank) elements";
        v148 = 43;
        v64 = &v146;
        v65 = v150;
        if (v151 >= v152)
        {
          if (v150 <= &v146 && v150 + 24 * v151 > &v146)
          {
            v134 = &v146 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v65 = v150;
            v64 = (v150 + v134);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v64 = &v146;
            v65 = v150;
          }
        }

        v66 = &v65[24 * v151];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        ++v151;
      }

      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
      if (v149[0])
      {
        mlir::InFlightDiagnostic::report(v149);
      }

      if (v159 == 1)
      {
        if (v158 != &v159)
        {
          free(v158);
        }

        v68 = __p;
        if (__p)
        {
          v69 = v157;
          v70 = __p;
          if (v157 != __p)
          {
            do
            {
              v69 = sub_100052FFC(v69 - 1);
            }

            while (v69 != v68);
            v70 = __p;
          }

          v157 = v68;
          operator delete(v70);
        }

        v52 = v154;
        if (!v154)
        {
          goto LABEL_168;
        }

        v71 = v155;
        v54 = v154;
        if (v155 == v154)
        {
          goto LABEL_167;
        }

        do
        {
          v72 = *--v71;
          *v71 = 0;
          if (v72)
          {
            operator delete[]();
          }
        }

        while (v71 != v52);
        goto LABEL_166;
      }
    }
  }

  else
  {
    a5(v149, a6);
    if (v149[0])
    {
      v146 = 3;
      v147 = "expected alignments to have (rank + 1) elements";
      v148 = 47;
      v55 = &v146;
      v56 = v150;
      if (v151 >= v152)
      {
        if (v150 <= &v146 && v150 + 24 * v151 > &v146)
        {
          v133 = &v146 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v56 = v150;
          v55 = (v150 + v133);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v55 = &v146;
          v56 = v150;
        }
      }

      v57 = &v56[24 * v151];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      ++v151;
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
    if (v149[0])
    {
      mlir::InFlightDiagnostic::report(v149);
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v157;
        v61 = __p;
        if (v157 != __p)
        {
          do
          {
            v60 = sub_100052FFC(v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v157 = v59;
        operator delete(v61);
      }

      v52 = v154;
      if (!v154)
      {
        goto LABEL_168;
      }

      v62 = v155;
      v54 = v154;
      if (v155 == v154)
      {
        goto LABEL_167;
      }

      do
      {
        v63 = *--v62;
        *v62 = 0;
        if (v63)
        {
          operator delete[]();
        }
      }

      while (v62 != v52);
      goto LABEL_166;
    }
  }

  return v48;
}

void *mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::materializeConstant(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  result = sub_100062D0C(a3);
  v23[0] = result;
  v23[1] = v10;
  if (result)
  {
    if (mlir::TypedAttr::getType(v23) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        {
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_10028243C();
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
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
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v21 = v15[1];
          goto LABEL_19;
        }
      }

LABEL_18:
      v21 = 0;
LABEL_19:
      v22[0] = a3;
      v22[1] = v21;
      return sub_100150A2C(a2, a5, &v24, v22);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  v11 = a7;
  v10 = a6;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v14[1] = a1;
  return sub_1002679F0(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_8ArrayRefIxEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_, v14, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, &v13, &v12, &v10, &v11);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v41) = 0;
  v44 = 0;
  LOBYTE(v37) = 0;
  v40 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v2 = sub_10025DBF0(a1);
  v3 = *a1;
  if ((v2 & 0x100000000) == 0)
  {
    v4 = (*(v3 + 40))(a1);
    v24 = 259;
    (*(*a1 + 24))(v28, a1, v4, v23);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v34;
        v7 = __p;
        if (v34 != __p)
        {
          do
          {
            v6 = sub_100052FFC(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v34 = v5;
        operator delete(v7);
      }

      v8 = v31;
      if (v31)
      {
        v9 = v32;
        v10 = v31;
        if (v32 != v31)
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
          v10 = v31;
        }

        v32 = v8;
        operator delete(v10);
      }

      if (v29 != &v30)
      {
        free(v29);
      }
    }

    goto LABEL_48;
  }

  v12 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "alignments", 10, v23) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v13 = (*(*a1 + 40))(a1);
  if (v44 == 1 && v41 != v43)
  {
    free(v41);
  }

  v41 = v43;
  v42 = 0x600000000;
  v44 = 1;
  if (((*(*a1 + 600))(a1, &v41, 1, 0) & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((v44 & 1) == 0)
  {
    v23[0] = "custom parser failed to parse parameter 'alignments'";
    v24 = 259;
    (*(*a1 + 24))(v27, a1, v13, v23);
    v20 = v27;
    goto LABEL_56;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "interleave", 10, v23) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v14 = (*(*a1 + 40))(a1);
  if (v40 == 1 && v37 != v39)
  {
    free(v37);
  }

  v37 = v39;
  v38 = 0x600000000;
  v40 = 1;
  if (((*(*a1 + 600))(a1, &v37, 1, 0) & 1) == 0)
  {
LABEL_48:
    v18 = 0;
    if (v40 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if ((v40 & 1) == 0)
  {
    v23[0] = "custom parser failed to parse parameter 'interleave'";
    v24 = 259;
    (*(*a1 + 24))(v26, a1, v14, v23);
    v20 = v26;
    goto LABEL_56;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_60;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "baseEncoding", 12, v23) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = sub_10025DFD8(a1);
  if ((v16 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v24 = 259;
    (*(*a1 + 24))(v25, a1, v22, v23);
    v20 = v25;
LABEL_56:
    sub_100059A74(v20);
    v18 = 0;
    if (v40 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v17 = v15;
LABEL_60:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  Context = mlir::AsmParser::getContext(a1);
  v18 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(Context, v41, v42, v37, v38, v12, v17);
  if (v40 != 1)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v37 != v39)
  {
    free(v37);
  }

LABEL_51:
  if (v44 == 1 && v41 != v43)
  {
    free(v41);
  }

  return v18;
}

unint64_t sub_10025DBF0(uint64_t a1)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &v26) & 1) == 0)
  {
    v29[0] = "expected keyword for An enum corresponding to the backing type to be used for allocations.";
    v30 = 259;
    (*(*a1 + 24))(&v31, a1, v2, v29);
    if (v31)
    {
      mlir::InFlightDiagnostic::report(&v31);
    }

    if (v40 != 1)
    {
      goto LABEL_56;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v38;
      v13 = __p;
      if (v38 != __p)
      {
        do
        {
          v12 = sub_100052FFC(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v38 = v11;
      operator delete(v13);
    }

    v14 = v35;
    if (!v35)
    {
      goto LABEL_54;
    }

    v15 = v36;
    v16 = v35;
    if (v36 == v35)
    {
      goto LABEL_53;
    }

    do
    {
      v17 = *--v15;
      *v15 = 0;
      if (v17)
      {
        operator delete[]();
      }
    }

    while (v15 != v14);
    goto LABEL_52;
  }

  v3 = SHIBYTE(v28);
  v4 = v26;
  if (v28 >= 0)
  {
    v4 = &v26;
  }

  if (v28 < 0)
  {
    v3 = v27;
  }

  if (v3 == 4)
  {
    if (*v4 == 1885431112)
    {
      v9 = &_mh_execute_header;
      v10 = 3;
      goto LABEL_57;
    }

LABEL_35:
    v24 = "invalid An enum corresponding to the backing type to be used for allocations. specification: ";
    v25 = 259;
    (*(*a1 + 24))(&v31, a1, v2, &v24);
    if (v31)
    {
      v30 = 260;
      v29[0] = &v26;
      mlir::Diagnostic::operator<<(&v32, v29);
      if (v31)
      {
        mlir::InFlightDiagnostic::report(&v31);
      }
    }

    if (v40 != 1)
    {
      goto LABEL_56;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v38;
      v20 = __p;
      if (v38 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v38 = v18;
      operator delete(v20);
    }

    v14 = v35;
    if (!v35)
    {
LABEL_54:
      if (v33 != &v34)
      {
        free(v33);
      }

LABEL_56:
      v10 = 0;
      v9 = 0;
      goto LABEL_57;
    }

    v21 = v36;
    v16 = v35;
    if (v36 == v35)
    {
LABEL_53:
      v36 = v14;
      operator delete(v16);
      goto LABEL_54;
    }

    do
    {
      v22 = *--v21;
      *v21 = 0;
      if (v22)
      {
        operator delete[]();
      }
    }

    while (v21 != v14);
LABEL_52:
    v16 = v35;
    goto LABEL_53;
  }

  if (v3 != 9)
  {
    goto LABEL_35;
  }

  if (*v4 != 0x6361667275534F49 || v4[8] != 101)
  {
    v6 = *v4;
    v7 = v4[8];
    if (v6 == 0x65666675424C544DLL && v7 == 114)
    {
      v9 = &_mh_execute_header;
      v10 = 2;
      goto LABEL_57;
    }

    goto LABEL_35;
  }

  v9 = &_mh_execute_header;
  v10 = 1;
LABEL_57:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  return v9 | v10;
}

uint64_t sub_10025DFD8(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "coreml", 6);
  v6 = 0;
  v3 = sub_100267F08(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::print(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 40);
  v7 = (*(*a2 + 16))(a2);
  v8 = v6 - 1;
  if ((v6 - 1) <= 2)
  {
    v9 = qword_10028FE40[v8];
    v10 = off_1002BE9E0[v8];
    if (v9 <= *(v7 + 24) - *(v7 + 32))
    {
      v11 = v7;
      memcpy(*(v7 + 32), v10, v9);
      *(v11 + 32) += v9;
    }

    else
    {
      llvm::raw_ostream::write(v7, v10, v9);
    }
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ",", 1uLL);
  }

  else
  {
    *v13 = 44;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if ((v16[3] - v17) > 9)
  {
    *(v17 + 8) = 29556;
    *v17 = *"alignments";
    v16[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v16, "alignments", 0xAuLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++v18[4];
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "[", 1uLL);
  }

  else
  {
    *v23 = 91;
    ++v22[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 8), *(*this + 16));
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, "]", 1uLL);
  }

  else
  {
    *v25 = 93;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 9)
  {
    *(v31 + 8) = 25974;
    *v31 = *"interleave";
    v30[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v30, "interleave", 0xAuLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = v32[4];
  if (v32[3] == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++v32[4];
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "[", 1uLL);
  }

  else
  {
    *v37 = 91;
    ++v36[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 24), *(*this + 32));
  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] == v39)
  {
    llvm::raw_ostream::write(v38, "]", 1uLL);
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  else
  {
    *v39 = 93;
    ++v38[4];
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = v40[4];
  if (v40[3] == v41)
  {
    llvm::raw_ostream::write(v40, ",", 1uLL);
  }

  else
  {
    *v41 = 44;
    ++v40[4];
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = v44[4];
  if ((v44[3] - v45) > 0xB)
  {
    *(v45 + 8) = 1735289188;
    *v45 = *"baseEncoding";
    v44[4] += 12;
  }

  else
  {
    llvm::raw_ostream::write(v44, "baseEncoding", 0xCuLL);
  }

  v46 = (*(*a2 + 16))(a2);
  v47 = v46[4];
  if (v46[3] == v47)
  {
    llvm::raw_ostream::write(v46, ":", 1uLL);
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  else
  {
    *v47 = 58;
    ++v46[4];
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  v54 = *(*this + 48);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v50 = (*(*a2 + 16))(a2);
    v51 = (*(*v50 + 80))(v50) + v50[4] - v50[2];
    mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v54, a2);
    if (v51 == (*(*v50 + 80))(v50) + v50[4] - v50[2])
    {
      (*(*a2 + 40))(a2, v54);
    }
  }

LABEL_70:
  result = (*(*a2 + 16))(a2);
  v53 = result[4];
  if (result[3] == v53)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v53 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this)
{
  v1 = *this;
  result = *(*this + 24);
  v3 = *(v1 + 32);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id;
  v18[1] = a1;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail27ImageConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_20ImageConstraintsAttrEJNS_9StringRefENS4_22ImageContainerTypeEnumENS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v24[1] = v18;
  v20[0] = a2;
  v20[1] = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v13 = llvm::hash_value(a2, a3);
  *v25 = v13;
  *&v25[8] = a4;
  *&v25[12] = sub_10002C76C(a5, &a5[a6]);
  v14 = __ROR8__(0xB492B66FBE98F273 * v13 - *&v25[8], 43) + __ROR8__((0x9AE16A3B2F90404FLL * *&v25[12]) ^ 0xFF51AFD7ED558CCDLL, 30);
  v15 = 0xB492B66FBE98F273 * v13 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v25[12] + __ROR8__(*&v25[8] ^ 0xC949D7C7509E6557, 20) + 20;
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * ((v14 - 0x3C5A37A36834CED9 * *&v25[4]) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v14 - 0x3C5A37A36834CED9 * *&v25[4]) ^ v15)));
  v19 = v20;
  *v25 = v20;
  *&v25[8] = v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v21) = 0;
  v24 = 0;
  LOBYTE(v40) = 0;
  v43 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "fourCC", 6, &__p) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  __p = 0;
  v26 = 0uLL;
  if ((sub_100163AAC(a1, &__p) & 1) == 0)
  {
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    v6 = (*(*a1 + 40))(a1);
    v27 = 259;
    (*(*a1 + 24))(v30, a1, v6, &__p);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v7 = v35;
      if (v35)
      {
        v8 = v36;
        v9 = v35;
        if (v36 != v35)
        {
          do
          {
            v8 = sub_100052FFC(v8 - 1);
          }

          while (v8 != v7);
          v9 = v35;
        }

        v36 = v7;
        operator delete(v9);
      }

      v10 = v33;
      if (v33)
      {
        v11 = v34;
        v12 = v33;
        if (v34 != v33)
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
          v12 = v33;
        }

        v34 = v10;
        operator delete(v12);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    goto LABEL_49;
  }

  *(v39 + 7) = *(&v26 + 7);
  v39[0] = v26;
  v21 = __p;
  *v22 = v26;
  *&v22[7] = *(v39 + 7);
  v23 = HIBYTE(v26);
  v24 = 1;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
LABEL_49:
    v19 = 0;
    goto LABEL_50;
  }

  v2 = sub_10025F260(a1);
  v3 = *a1;
  if ((v2 & 0x100000000) == 0)
  {
    v4 = (*(v3 + 40))(a1);
    v27 = 259;
    (*(*a1 + 24))(v29, a1, v4, &__p);
    v5 = v29;
LABEL_8:
    sub_100059A74(v5);
    goto LABEL_49;
  }

  v14 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "rowAlignmentsPerPlane", 21, &__p) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v15 = (*(*a1 + 40))(a1);
  if (v43 == 1 && v40 != v42)
  {
    free(v40);
  }

  v40 = v42;
  v41 = 0x600000000;
  v43 = 1;
  if (((*(*a1 + 600))(a1, &v40, 1, 0) & 1) == 0)
  {
    goto LABEL_49;
  }

  if ((v43 & 1) == 0)
  {
    __p = "custom parser failed to parse parameter 'rowAlignmentsPerPlane'";
    v27 = 259;
    (*(*a1 + 24))(v28, a1, v15, &__p);
    v5 = v28;
    goto LABEL_8;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  Context = mlir::AsmParser::getContext(a1);
  if (v23 >= 0)
  {
    v17 = &v21;
  }

  else
  {
    v17 = v21;
  }

  if (v23 >= 0)
  {
    v18 = v23;
  }

  else
  {
    v18 = *v22;
  }

  v19 = mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::get(Context, v17, v18, v14, v40, v41);
LABEL_50:
  if (v43 == 1 && v40 != v42)
  {
    free(v40);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v21);
  }

  return v19;
}

unint64_t sub_10025F260(uint64_t a1)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 432))(a1, &v28))
  {
    v3 = SHIBYTE(v30);
    v4 = v28;
    if (v30 >= 0)
    {
      v4 = &v28;
    }

    if (v30 < 0)
    {
      v3 = v29;
    }

    if (v3 == 10)
    {
      v17 = *v4;
      v18 = *(v4 + 4);
      if (v17 == 0x75747865544C544DLL && v18 == 25970)
      {
        v8 = &_mh_execute_header;
        v9 = 2;
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          return v8 | v9;
        }

        goto LABEL_57;
      }
    }

    else if (v3 == 13)
    {
      v5 = *v4;
      v6 = *(v4 + 5);
      if (v5 == 0x426C657869505643 && v6 == 0x7265666675426C65)
      {
        v8 = &_mh_execute_header;
        v9 = 1;
        if (SHIBYTE(v30) < 0)
        {
          goto LABEL_57;
        }

        return v8 | v9;
      }
    }

    v26 = "invalid An enum corresponding to the backing type to be used for allocations of image types. specification: ";
    v27 = 259;
    (*(*a1 + 24))(&v33, a1, v2, &v26);
    if (v33)
    {
      v32 = 260;
      v31[0] = &v28;
      mlir::Diagnostic::operator<<(&v34, v31);
      if (v33)
      {
        mlir::InFlightDiagnostic::report(&v33);
      }
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v40;
        v22 = __p;
        if (v40 != __p)
        {
          do
          {
            v21 = sub_100052FFC(v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v40 = v20;
        operator delete(v22);
      }

      v13 = v37;
      if (!v37)
      {
        goto LABEL_54;
      }

      v23 = v38;
      v15 = v37;
      if (v38 == v37)
      {
LABEL_53:
        v38 = v13;
        operator delete(v15);
LABEL_54:
        if (v35 != &v36)
        {
          free(v35);
        }

        goto LABEL_56;
      }

      do
      {
        v24 = *--v23;
        *v23 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v23 != v13);
LABEL_52:
      v15 = v37;
      goto LABEL_53;
    }
  }

  else
  {
    v31[0] = "expected keyword for An enum corresponding to the backing type to be used for allocations of image types.";
    v32 = 259;
    (*(*a1 + 24))(&v33, a1, v2, v31);
    if (v33)
    {
      mlir::InFlightDiagnostic::report(&v33);
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v40;
        v12 = __p;
        if (v40 != __p)
        {
          do
          {
            v11 = sub_100052FFC(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v40 = v10;
        operator delete(v12);
      }

      v13 = v37;
      if (!v37)
      {
        goto LABEL_54;
      }

      v14 = v38;
      v15 = v37;
      if (v38 == v37)
      {
        goto LABEL_53;
      }

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
      goto LABEL_52;
    }
  }

LABEL_56:
  v9 = 0;
  v8 = 0;
  if (SHIBYTE(v30) < 0)
  {
LABEL_57:
    operator delete(v28);
  }

  return v8 | v9;
}

void *mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::print(mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 17219;
    *v7 = 1920298854;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "fourCC", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *(*this + 24);
  v19 = (*(*a2 + 16))(a2);
  if (v18 == 1)
  {
    v20 = "CVPixelBuffer";
    v21 = 13;
    v22 = v19[4];
    if (v19[3] - v22 < 0xDuLL)
    {
LABEL_25:
      llvm::raw_ostream::write(v19, v20, v21);
      goto LABEL_28;
    }
  }

  else
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v20 = "MTLTexture";
    v21 = 10;
    v22 = v19[4];
    if (v19[3] - v22 < 0xAuLL)
    {
      goto LABEL_25;
    }
  }

  v23 = v19;
  memcpy(v22, v20, v21);
  v23[4] += v21;
LABEL_28:
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] - v29 > 0x14uLL)
  {
    qmemcpy(v29, "rowAlignmentsPerPlane", 21);
    v28[4] += 21;
  }

  else
  {
    llvm::raw_ostream::write(v28, "rowAlignmentsPerPlane", 0x15uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, ":", 1uLL);
  }

  else
  {
    *v31 = 58;
    ++v30[4];
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "[", 1uLL);
  }

  else
  {
    *v35 = 91;
    ++v34[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 32), *(*this + 40));
  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "]", 1uLL);
  }

  else
  {
    *v37 = 93;
    ++v36[4];
  }

  result = (*(*a2 + 16))(a2);
  v39 = result[4];
  if (result[3] == v39)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v39 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v44 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v48) = 0;
  v46 = 0;
  v47 = 0;
  v45 = v5;
  LOBYTE(v48) = 0;
  if (((*(*a2 + 640))(a2, &v46) & 1) == 0)
  {
    v6 = 0;
    LOWORD(v48) = 256;
    if ((v48 & 0x10000) != 0)
    {
      v40 = "hw_constraints";
    }

    else
    {
      BYTE2(v48) = 1;
    }

    goto LABEL_24;
  }

  v40 = "hw_constraints";
  v41 = 14;
  if ((v48 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v47;
  if (v47)
  {
    if (v47 == 14 && *v46 == 0x74736E6F635F7768 && *(v46 + 6) == 0x73746E6961727473)
    {
      v11 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::parse(a2);
      goto LABEL_61;
    }

    v40 = "image_constraints";
    v41 = 17;
LABEL_13:
    if (v7 != 17)
    {
      goto LABEL_63;
    }

    v9 = *v46 == 0x6F635F6567616D69 && *(v46 + 8) == 0x746E69617274736ELL;
    if (!v9 || *(v46 + 16) != 115)
    {
      goto LABEL_63;
    }

    v11 = mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::parse(a2);
LABEL_61:
    v6 = v11;
    LOBYTE(v48) = v11 != 0;
    *(&v48 + 1) = 257;
    goto LABEL_24;
  }

  (*(*v44 + 648))(v44, &v40, 1);
  v40 = "image_constraints";
  v41 = 17;
  if ((v48 & 0x10000) != 0)
  {
LABEL_3:
    v6 = 0;
LABEL_24:
    v7 = 0;
    v12 = 0;
    goto LABEL_25;
  }

  v7 = v47;
  if (v47)
  {
    goto LABEL_13;
  }

  (*(*v44 + 648))(v44, &v40, 1);
  if ((v48 & 0x10000) != 0)
  {
    v7 = 0;
    v12 = 0;
    v6 = 0;
    goto LABEL_25;
  }

  v7 = v47;
LABEL_63:
  v6 = 0;
  v12 = v46;
  LOWORD(v48) = 0;
  BYTE2(v48) = 1;
LABEL_25:
  if ((sub_100163F10(&v44) & 0x100) == 0)
  {
    v39 = 257;
    (*(*a2 + 24))(&v44, a2, v4, v38);
    if (v44)
    {
      LODWORD(v40) = 3;
      v42 = 19;
      v13 = &v40;
      v14 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v40 && v47 + 24 * v48 > &v40)
        {
          v35 = &v40 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v14 = v47;
          v13 = (v47 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = &v40;
          v14 = v47;
        }
      }

      v15 = &v14[24 * v48];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v48;
      if (v44)
      {
        v43 = 261;
        v40 = v12;
        v41 = v7;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (v44)
        {
          LODWORD(v40) = 3;
          v42 = 14;
          v17 = &v40;
          v18 = v47;
          if (v48 >= v49)
          {
            if (v47 <= &v40 && v47 + 24 * v48 > &v40)
            {
              v36 = &v40 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v18 = v47;
              v17 = (v47 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v17 = &v40;
              v18 = v47;
            }
          }

          v19 = &v18[24 * v48];
          v20 = *v17;
          *(v19 + 2) = v17[2];
          *v19 = v20;
          ++v48;
          if (v44)
          {
            v21 = *(a1 + 8);
            v22 = *(a1 + 16);
            v43 = 261;
            v40 = v21;
            v41 = v22;
            mlir::Diagnostic::operator<<(&v45, &v40);
            if (v44)
            {
              LODWORD(v40) = 3;
              v42 = 1;
              v23 = &v40;
              v24 = v47;
              if (v48 >= v49)
              {
                if (v47 <= &v40 && v47 + 24 * v48 > &v40)
                {
                  v37 = &v40 - v47;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v24 = v47;
                  v23 = (v47 + v37);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v23 = &v40;
                  v24 = v47;
                }
              }

              v25 = &v24[24 * v48];
              v26 = *v23;
              *(v25 + 2) = v23[2];
              *v25 = v26;
              ++v48;
              if (v44)
              {
                mlir::InFlightDiagnostic::report(&v44);
              }
            }
          }
        }
      }
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v54;
        v29 = __p;
        if (v54 != __p)
        {
          do
          {
            v28 = sub_100052FFC(v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v54 = v27;
        operator delete(v29);
      }

      v30 = v51;
      if (v51)
      {
        v31 = v52;
        v32 = v51;
        if (v52 != v51)
        {
          do
          {
            v33 = *--v31;
            *v31 = 0;
            if (v33)
            {
              operator delete[]();
            }
          }

          while (v31 != v30);
          v32 = v51;
        }

        v52 = v30;
        operator delete(v32);
      }

      if (v47 != v50)
      {
        free(v47);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v9 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if (v5[3] - v6 > 0xDuLL)
    {
      qmemcpy(v6, "hw_constraints", 14);
      v5[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v5, "hw_constraints", 0xEuLL);
    }

    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::print(&v9, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
  {
    v9 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if ((v7[3] - v8) > 0x10)
    {
      *(v8 + 16) = 115;
      *v8 = *"image_constraints";
      v7[4] += 17;
    }

    else
    {
      llvm::raw_ostream::write(v7, "image_constraints", 0x11uLL);
    }

    mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::print(&v9, a3);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::CoreMLAXDialect(mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "coremlax", 8, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id);
  *v2 = off_1002BE1F0;
  mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::initialize(v2);
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::~CoreMLAXDialect(llvm **this)
{
  mlir::Dialect::~Dialect(this);

  operator delete();
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseType(mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect *this, mlir::DialectAsmParser *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v43 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v47) = 0;
  v45 = 0;
  v46 = 0;
  v44 = v5;
  LOBYTE(v47) = 0;
  if ((*(*a2 + 640))(a2, &v45))
  {
    v39 = "hw_constraints";
    v40 = 14;
    if ((v47 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v7 = v46;
    if (!v46)
    {
      (*(*v43 + 648))(v43, &v39, 1);
      if ((v47 & 0x10000) != 0)
      {
LABEL_3:
        SingletonImpl = 0;
        v7 = 0;
        v8 = 0;
        if ((sub_100163F10(&v43) & 0x100) != 0)
        {
          return SingletonImpl;
        }

        goto LABEL_22;
      }

      v7 = v46;
LABEL_21:
      SingletonImpl = 0;
      v8 = v45;
      LOWORD(v47) = 0;
      BYTE2(v47) = 1;
      if ((sub_100163F10(&v43) & 0x100) != 0)
      {
        return SingletonImpl;
      }

      goto LABEL_22;
    }

    if (v46 != 14)
    {
      goto LABEL_21;
    }

    if (*v45 != 0x74736E6F635F7768 || *(v45 + 6) != 0x73746E6961727473)
    {
      goto LABEL_21;
    }

    Context = mlir::AsmParser::getContext(a2);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id);
    LOBYTE(v47) = SingletonImpl != 0;
    *(&v47 + 1) = 257;
    v7 = 0;
    v8 = 0;
    if ((sub_100163F10(&v43) & 0x100) != 0)
    {
      return SingletonImpl;
    }
  }

  else
  {
    SingletonImpl = 0;
    if ((v47 & 0x10000) != 0)
    {
      LOWORD(v47) = 256;
      v39 = "hw_constraints";
      v7 = 0;
      v8 = 0;
      if ((sub_100163F10(&v43) & 0x100) != 0)
      {
        return SingletonImpl;
      }
    }

    else
    {
      LOWORD(v47) = 256;
      BYTE2(v47) = 1;
      v7 = 0;
      v8 = 0;
      if ((sub_100163F10(&v43) & 0x100) != 0)
      {
        return SingletonImpl;
      }
    }
  }

LABEL_22:
  v38 = 257;
  (*(*a2 + 24))(&v43, a2, v4, v37);
  if (v43)
  {
    LODWORD(v39) = 3;
    v41 = 15;
    v12 = &v39;
    v13 = v46;
    if (v47 >= v48)
    {
      if (v46 <= &v39 && v46 + 24 * v47 > &v39)
      {
        v34 = &v39 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v13 = v46;
        v12 = (v46 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v12 = &v39;
        v13 = v46;
      }
    }

    v14 = &v13[24 * v47];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    ++v47;
    if (v43)
    {
      v42 = 261;
      v39 = v8;
      v40 = v7;
      mlir::Diagnostic::operator<<(&v44, &v39);
      if (v43)
      {
        LODWORD(v39) = 3;
        v41 = 14;
        v16 = &v39;
        v17 = v46;
        if (v47 >= v48)
        {
          if (v46 <= &v39 && v46 + 24 * v47 > &v39)
          {
            v35 = &v39 - v46;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
            v17 = v46;
            v16 = (v46 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
            v16 = &v39;
            v17 = v46;
          }
        }

        v18 = &v17[24 * v47];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v47;
        if (v43)
        {
          v20 = *(this + 1);
          v21 = *(this + 2);
          v42 = 261;
          v39 = v20;
          v40 = v21;
          mlir::Diagnostic::operator<<(&v44, &v39);
          if (v43)
          {
            LODWORD(v39) = 3;
            v41 = 1;
            v22 = &v39;
            v23 = v46;
            if (v47 >= v48)
            {
              if (v46 <= &v39 && v46 + 24 * v47 > &v39)
              {
                v36 = &v39 - v46;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
                v23 = v46;
                v22 = (v46 + v36);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
                v22 = &v39;
                v23 = v46;
              }
            }

            v24 = &v23[24 * v47];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            ++v47;
            if (v43)
            {
              mlir::InFlightDiagnostic::report(&v43);
            }
          }
        }
      }
    }
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v53;
      v28 = __p;
      if (v53 != __p)
      {
        do
        {
          v27 = sub_100052FFC(v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v53 = v26;
      operator delete(v28);
    }

    v29 = v50;
    if (v50)
    {
      v30 = v51;
      v31 = v50;
      if (v51 != v50)
      {
        do
        {
          v32 = *--v30;
          *v30 = 0;
          if (v32)
          {
            operator delete[]();
          }
        }

        while (v30 != v29);
        v31 = v50;
      }

      v51 = v29;
      operator delete(v31);
    }

    if (v46 != v49)
    {
      free(v46);
    }
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = v3[4];
    if (v3[3] - v4 > 0xDuLL)
    {
      qmemcpy(v4, "hw_constraints", 14);
      v3[4] += 14;
    }

    else
    {

      llvm::raw_ostream::write(v3, "hw_constraints", 0xEuLL);
    }
  }
}

uint64_t sub_1002617F8()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_1002618C4(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_1002619A8(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100261A50(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100261B20(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100261BF0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002824C4();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

void sub_100261DE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 3uLL);
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    *(a2 + 64) = 1;
    return;
  }

  v6 = v5;
  v7 = *(*a1 + 68);
  __src = v24;
  v23 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v7, 8);
    v8 = (__src + 8 * (v7 & 0xFFFFFFFC));
    v9 = v7 & 3;
    v10 = vdupq_n_s64(v6);
    v11 = (__src + 16);
    v12 = v7 & 0xFFFFFFFC;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if ((v7 & 0xFFFFFFFC) != v7)
    {
      do
      {
        *v8++ = v6;
        --v9;
      }

      while (v9);
    }

    goto LABEL_25;
  }

  if (v7)
  {
    v13 = vdupq_n_s64(v7 - 1);
    v14 = v7 + 1;
    v15 = vmovn_s64(vcgeq_u64(v13, xmmword_10028FC40));
    if (v15.i8[0])
    {
      v24[0] = v5;
      v16 = v14 & 0xE;
      if ((v15.i8[4] & 1) == 0)
      {
LABEL_11:
        if (v16 == 2)
        {
          goto LABEL_25;
        }

LABEL_15:
        v17 = vmovn_s64(vcgtq_u64(v13, xmmword_10028FCF0));
        if (v17.i8[0])
        {
          v24[2] = v5;
          if ((v17.i8[4] & 1) == 0)
          {
LABEL_17:
            if (v16 == 4)
            {
              goto LABEL_25;
            }

LABEL_21:
            v18 = vmovn_s64(vcgtq_u64(v13, xmmword_10028FD00));
            if (v18.i8[0])
            {
              v24[4] = v5;
            }

            if (v18.i8[4])
            {
              v24[5] = v5;
            }

            goto LABEL_25;
          }
        }

        else if ((v17.i8[4] & 1) == 0)
        {
          goto LABEL_17;
        }

        v24[3] = v5;
        if (v16 == 4)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = v14 & 0xE;
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v24[1] = v5;
    if (v16 == 2)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

LABEL_25:
  LODWORD(v23) = v7;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19 = __src;
  if (v7 && &__src != a2)
  {
    if (__src == v24)
    {
      v21 = v7;
      if (v7 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7, 8), v21 = v23, v19 = __src, v23))
      {
        memcpy(*a2, v19, 8 * v21);
        v19 = __src;
      }

      *(a2 + 8) = v7;
    }

    else
    {
      *a2 = __src;
      v20 = HIDWORD(v23);
      *(a2 + 8) = v7;
      *(a2 + 12) = v20;
      __src = v24;
      HIDWORD(v23) = 0;
      v19 = v24;
    }

    LODWORD(v23) = 0;
  }

  *(a2 + 64) = 1;
  if (v19 != v24)
  {
    free(v19);
  }
}

void sub_10026208C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
  v6 = v5;
  v7 = *(*a1 + 36);
  __src = v24;
  v23 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v7, 8);
    v8 = (__src + 8 * (v7 & 0xFFFFFFFC));
    v9 = v7 & 3;
    v10 = vdupq_n_s64(v6);
    v11 = (__src + 16);
    v12 = v7 & 0xFFFFFFFC;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if ((v7 & 0xFFFFFFFC) != v7)
    {
      do
      {
        *v8++ = v6;
        --v9;
      }

      while (v9);
    }

    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  v13 = vdupq_n_s64(v7 - 1);
  v14 = v7 + 1;
  v15 = vmovn_s64(vcgeq_u64(v13, xmmword_10028FC40));
  if (v15.i8[0])
  {
    v24[0] = v5;
    v16 = v14 & 0xE;
    if ((v15.i8[4] & 1) == 0)
    {
LABEL_10:
      if (v16 == 2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v16 = v14 & 0xE;
    if ((v15.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v24[1] = v5;
  if (v16 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v17 = vmovn_s64(vcgtq_u64(v13, xmmword_10028FCF0));
  if ((v17.i8[0] & 1) == 0)
  {
    if ((v17.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v24[3] = v5;
    if (v16 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v24[2] = v5;
  if (v17.i8[4])
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v16 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v18 = vmovn_s64(vcgtq_u64(v13, xmmword_10028FD00));
  if (v18.i8[0])
  {
    v24[4] = v5;
  }

  if (v18.i8[4])
  {
    v24[5] = v5;
  }

LABEL_24:
  LODWORD(v23) = v7;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19 = __src;
  if (v7 && &__src != a2)
  {
    if (__src == v24)
    {
      v21 = v7;
      if (v7 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7, 8), v21 = v23, v19 = __src, v23))
      {
        memcpy(*a2, v19, 8 * v21);
        v19 = __src;
      }

      *(a2 + 8) = v7;
    }

    else
    {
      *a2 = __src;
      v20 = HIDWORD(v23);
      *(a2 + 8) = v7;
      *(a2 + 12) = v20;
      __src = v24;
      HIDWORD(v23) = 0;
      v19 = v24;
    }

    LODWORD(v23) = 0;
  }

  *(a2 + 64) = 1;
  if (v19 != v24)
  {
    free(v19);
  }
}

BOOL sub_10026230C(void *a1)
{
  {
    v65 = a1;
    sub_100282678();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    sub_1002826D0();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    sub_1002833F8();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    sub_100282780();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    sub_1002827D8();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    sub_100282830();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    sub_100282888();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    sub_1002828E0();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    sub_100282938();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    sub_100282A98();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(&v7);
}

uint64_t sub_100262680()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100262740(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100262824(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_1002628CC(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_10026299C(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100262A6C(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002824C4();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL sub_100262C70(void *a1)
{
  {
    v65 = a1;
    sub_100282678();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    sub_1002826D0();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    sub_100282728();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    sub_100282780();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    sub_100283148();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    sub_100282830();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    sub_100282888();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    sub_1002828E0();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    sub_100282938();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    sub_100282A98();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verify(&v6);
}

uint64_t sub_100262FF8()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_1002630B8(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_10026319C(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100263244(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100263314(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_1002633E4(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002824C4();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verify(&v6) & 1;
}

uint64_t sub_1002636D0()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100263790(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100263874(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_10026391C(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_1002639EC(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100263ABC(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002824C4();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL sub_100263CC0(void *a1)
{
  {
    v65 = a1;
    sub_100282678();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    sub_1002826D0();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    sub_100282728();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    sub_100282780();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    sub_100282E40();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    sub_100282830();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    sub_100282888();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    sub_1002828E0();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    sub_100282938();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    sub_100282A98();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verify(&v6);
}

uint64_t sub_100264048()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100264114(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_1002641F8(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_1002642A0(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100264370(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100264440(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002824C4();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verify(&v7);
}

uint64_t sub_100264728()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_1002647F4(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_1002648D8(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100264980(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100264A50(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100264B20(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002824C4();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(&v7);
}

uint64_t sub_100264E08()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100264EC8(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100264FAC(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100265054(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100265124(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_1002651F4(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getSpeculatability;
  {
    v8 = v2;
    sub_1002824C4();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getEffects;
  {
    sub_10028251C();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::isCompatibleReturnTypes;
  {
    sub_100282574();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getInputIntents;
  v6[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getOutputIntents;
  {
    sub_1002825CC();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL sub_1002654C8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::TypeRange::TypeRange(&v22, v24, v25);
    mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "coremlax.dequantize";
    v23 = 19;
    v18 = sub_1001725E4(a2, a3, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}