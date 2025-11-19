uint64_t mlir::MemRefType::getShape(mlir::MemRefType *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::MemRefType::getLayout(mlir::MemRefType *this)
{
  v1 = *this;
  result = *(*this + 32);
  v3 = *(v1 + 40);
  return result;
}

uint64_t mlir::OpaqueType::get(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v12[1] = &Context;
  v17[0] = sub_1001214A0;
  v17[1] = v12;
  v16[0] = v11;
  v16[1] = a2;
  v16[2] = a3;
  v6 = (v11 >> 4) ^ (v11 >> 9);
  v7 = llvm::hash_value(a2, a3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, sub_10012124C, &v15, sub_1001212B0, v14);
}

void mlir::OpaqueType::getChecked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  Context = mlir::Attribute::getContext(&v6);
  sub_10011C944(a1, a2, Context, v6);
}

void mlir::OpaqueType::verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  mlir::StringAttr::getValue(&v3);
  mlir::Dialect::isValidNamespace();
}

uint64_t mlir::OpaqueType::getTypeData(mlir::OpaqueType *this)
{
  v1 = *this;
  result = *(*this + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t mlir::RankedTensorType::get(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  Context = mlir::Type::getContext(&v17);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v18[1] = &Context;
  v23[0] = sub_100121734;
  v23[1] = v18;
  v22[0] = a1;
  v22[1] = a2;
  v8 = v17;
  v22[2] = v17;
  v22[3] = a4;
  v9 = sub_10002D970(a1, &a1[a2]);
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v12 = __ROR8__(0xB492B66FBE98F273 * v9 - v10, 43);
  v13 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v10;
  v14 = 0xB492B66FBE98F273 * v9 - v11 - 0xAE502812AA7333 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v13 + v12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ (v13 + v12))));
  v20[0] = v22;
  v20[1] = v23;
  v21 = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, -348639895 * ((v15 >> 47) ^ v15), sub_1001214D4, &v21, sub_100121550, v20);
}

uint64_t mlir::RankedTensorType::getShape(mlir::RankedTensorType *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::TupleType::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v8[1] = &v9;
  v12[0] = sub_100121900;
  v12[1] = v8;
  v13[0] = a2;
  v13[1] = a3;
  v6 = sub_10012044C(a2, 0, a2, a3);
  v10[0] = v13;
  v10[1] = v12;
  v11 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v6, sub_100121768, &v11, sub_100121824, v10);
}

uint64_t mlir::TupleType::get(mlir::TupleType *this, mlir::MLIRContext *a2)
{
  mlir::TypeRange::TypeRange(&v11, 0, 0);
  v7 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v6[1] = &v7;
  v10[0] = sub_100121ACC;
  v10[1] = v6;
  v13[0] = v11;
  v13[1] = v12;
  v4 = sub_10012044C(v11, 0, v11, v12);
  v8[0] = v13;
  v8[1] = v10;
  v9 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v4, sub_100121934, &v9, sub_1001219F0, v8);
}

uint64_t mlir::UnrankedMemRefType::get(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = a1;
  if (a2)
  {
    v3 = *(*a2 + 136);
    v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v5 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a2 : 0;
    v18[0] = v5;
    if (v4)
    {
      mlir::IntegerAttr::getValue(v18, &v19);
      v11 = v20;
      if (v20 >= 0x41)
      {
        if (v11 - llvm::APInt::countLeadingZerosSlowCase(&v19) < 0x41)
        {
          v12 = *v19;
          operator delete[]();
        }

        if (v19)
        {
          operator delete[]();
        }
      }

      else if (!v19)
      {
        v2 = 0;
      }
    }
  }

  Context = mlir::Type::getContext(&v13);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v14[1] = &Context;
  v19 = sub_100121BE8;
  v20 = v14;
  v18[0] = v13;
  v18[1] = v2;
  v7 = (v2 >> 4) ^ (v2 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v13 >> 4) ^ (v13 >> 9));
  v16[0] = v18;
  v16[1] = &v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, sub_100121B00, &v17, sub_100121B30, v16);
}

uint64_t mlir::UnrankedMemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v14 = a3;
  if (a4)
  {
    v7 = *(*a4 + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v9 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a4 : 0;
    v17 = v9;
    if (v8)
    {
      mlir::IntegerAttr::getValue(&v17, &v15);
      v12 = v16;
      if (v16 >= 0x41)
      {
        if (v12 - llvm::APInt::countLeadingZerosSlowCase(&v15) < 0x41)
        {
          v13 = *v15;
          operator delete[]();
        }

        if (v15)
        {
          operator delete[]();
        }
      }

      else if (!v15)
      {
        v4 = 0;
      }
    }
  }

  Context = mlir::Type::getContext(&v14);
  return sub_10011D8A8(a1, a2, Context, v14, v4);
}

uint64_t sub_10011D8A8(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t *a4, uint64_t a5)
{
  if ((mlir::UnrankedMemRefType::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v14 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v13[1] = &v14;
  v18[0] = sub_100121BE8;
  v18[1] = v13;
  v17[0] = a4;
  v17[1] = a5;
  v9 = (a5 >> 4) ^ (a5 >> 9);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, sub_100121B00, &v16, sub_100121B30, v15);
}

uint64_t mlir::UnrankedMemRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (sub_10008A40C(a3))
  {
    if (!a4)
    {
      return 1;
    }

    v7 = *(*a4 + 136);
    if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    if (v8 || *(**a4 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      return 1;
    }

    a1(v36, a2);
    if (v36[0])
    {
      v33 = 3;
      v34 = "unsupported memory space Attribute";
      v35 = 34;
      v21 = &v33;
      v22 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v38 > &v33)
        {
          v32 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v22 = v37;
          v21 = (v37 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v21 = &v33;
          v22 = v37;
        }
      }

      v23 = &v22[24 * v38];
      v24 = *v21;
      *(v23 + 2) = *(v21 + 2);
      *v23 = v24;
      ++v38;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v25 = __p;
      if (__p)
      {
        v26 = v44;
        v27 = __p;
        if (v44 != __p)
        {
          do
          {
            v26 = sub_10005BEF4(v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v44 = v25;
        operator delete(v27);
      }

      v17 = v41;
      if (!v41)
      {
        goto LABEL_50;
      }

      v28 = v42;
      v19 = v41;
      if (v42 == v41)
      {
LABEL_49:
        v42 = v17;
        operator delete(v19);
LABEL_50:
        if (v37 != v40)
        {
          free(v37);
        }

        return v9;
      }

      do
      {
        v29 = *--v28;
        *v28 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v28 != v17);
LABEL_48:
      v19 = v41;
      goto LABEL_49;
    }
  }

  else
  {
    a1(v36, a2);
    if (v36[0])
    {
      v33 = 3;
      v34 = "invalid memref element type";
      v35 = 27;
      v10 = &v33;
      v11 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v38 > &v33)
        {
          v31 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v11 = v37;
          v10 = (v37 + v31);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v44;
        v16 = __p;
        if (v44 != __p)
        {
          do
          {
            v15 = sub_10005BEF4(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v44 = v14;
        operator delete(v16);
      }

      v17 = v41;
      if (!v41)
      {
        goto LABEL_50;
      }

      v18 = v42;
      v19 = v41;
      if (v42 == v41)
      {
        goto LABEL_49;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
      goto LABEL_48;
    }
  }

  return v9;
}

uint64_t mlir::UnrankedTensorType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Type::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v5[1] = &Context;
  v10[0] = sub_100121CDC;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), sub_100121C1C, &v8, sub_100121C34, v7);
}

uint64_t mlir::VectorType::get(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = a3;
  v27 = v29;
  v28 = xmmword_1002B0190;
  if (a5)
  {
    v7 = a5;
  }

  else if (a2)
  {
    if (a2 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v27, v29, a2, 1);
      a4 = v27;
      v9 = v28;
    }

    else
    {
      v9 = 0;
      a4 = v29;
    }

    bzero(a4 + v9, a2);
    v7 = v9 + a2;
    *&v28 = v9 + a2;
  }

  else
  {
    v7 = 0;
    a4 = v29;
  }

  Context = mlir::Type::getContext(&v20);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v21[1] = &Context;
  v26[0] = sub_100122090;
  v26[1] = v21;
  v25[0] = a1;
  v25[1] = a2;
  v11 = v20;
  v25[2] = v20;
  v25[3] = a4;
  v25[4] = v7;
  v12 = sub_10002D970(a1, &a1[a2]);
  v13 = (v11 >> 4) ^ (v11 >> 9);
  v14 = sub_10002D970(a4, a4 + v7);
  v15 = 0xB492B66FBE98F273 * v12 - 0xAE502812AA7333 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * v14 + 24;
  v16 = (__ROR8__(0xB492B66FBE98F273 * v12 - v13, 43) - 0x3C5A37A36834CED9 * v13 + __ROR8__((0x9AE16A3B2F90404FLL * v14) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v15;
  v17 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, -348639895 * ((v17 >> 47) ^ v17), sub_100121D10, &v24, sub_100121DA0, v23);
  if (v27 != v29)
  {
    v19 = result;
    free(v27);
    return v19;
  }

  return result;
}

uint64_t mlir::VectorType::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, const char *a4, uint64_t *a5, _BYTE *a6, const char *a7)
{
  v17 = a5;
  v18 = v20;
  v19 = xmmword_1002B0190;
  if (a7)
  {
    v11 = a7;
  }

  else if (a4)
  {
    if (a4 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v18, v20, a4, 1);
      a6 = v18;
      v13 = v19;
    }

    else
    {
      v13 = 0;
      a6 = v20;
    }

    bzero(&a6[v13], a4);
    v11 = &a4[v13];
    *&v19 = v11;
  }

  else
  {
    v11 = 0;
    a6 = v20;
  }

  Context = mlir::Type::getContext(&v17);
  result = sub_10011E2DC(a1, a2, Context, a3, a4, v17, a6, v11);
  if (v18 != v20)
  {
    v16 = result;
    free(v18);
    return v16;
  }

  return result;
}

uint64_t sub_10011E2DC(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t *a4, const char *a5, uint64_t *a6, uint64_t a7, const char *a8)
{
  if ((mlir::VectorType::verifyInvariantsImpl(a1, a2, a3, a4, a6) & 1) == 0 || (mlir::VectorType::verify(a1, a2, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v25 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v24[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v24[1] = &v25;
  v29[0] = sub_100122090;
  v29[1] = v24;
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v28[4] = a8;
  v17 = sub_10002D970(a4, &a4[a5]);
  v18 = (a6 >> 4) ^ (a6 >> 9);
  v19 = sub_10002D970(a7, &a8[a7]);
  v20 = __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * v17 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v19 + 24;
  v21 = (__ROR8__(0xB492B66FBE98F273 * v17 - v18, 43) - 0x3C5A37A36834CED9 * v18 + __ROR8__((0x9AE16A3B2F90404FLL * v19) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v20;
  v22 = 0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v26[0] = v28;
  v26[1] = v29;
  v27 = v28;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, -348639895 * ((v22 >> 47) ^ v22), sub_100121D10, &v27, sub_100121DA0, v26);
}

uint64_t mlir::VectorType::verifyInvariantsImpl(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = *(*a5 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = a1;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v11 = *(v5 + 8);
    v12 = *(v5 + 16);
    if (v12)
    {
LABEL_10:
      v13 = v11;
      v14 = v12;
      do
      {
        v15 = v14 >> 1;
        v16 = &v13[2 * (v14 >> 1)];
        v18 = *v16;
        v17 = v16 + 2;
        v14 += ~(v14 >> 1);
        if (v18 < v10)
        {
          v13 = v17;
        }

        else
        {
          v14 = v15;
        }
      }

      while (v14);
      if (v13 == &v11[2 * v12] || *v13 != v10 || !v13[1])
      {
        goto LABEL_20;
      }

      return 1;
    }
  }

  else
  {
    v20 = a2;
    sub_1002993D8();
    a2 = v20;
    v9 = a1;
    v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v11 = *(v5 + 8);
    v12 = *(v5 + 16);
    if (v12)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  v9(v36, a2);
  if (v36[0])
  {
    v33 = 3;
    v34 = "failed to verify 'elementType': integer or index or floating-point";
    v35 = 66;
    v21 = &v33;
    v22 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v32 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v22 = v37;
        v21 = (v37 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v21 = &v33;
        v22 = v37;
      }
    }

    v23 = &v22[24 * v38];
    v24 = *v21;
    *(v23 + 2) = *(v21 + 2);
    *v23 = v24;
    ++v38;
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v44;
      v27 = __p;
      if (v44 != __p)
      {
        do
        {
          v26 = sub_10005BEF4(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v44 = v25;
      operator delete(v27);
    }

    v28 = v41;
    if (v41)
    {
      v29 = v42;
      v30 = v41;
      if (v42 != v41)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v41;
      }

      v42 = v28;
      operator delete(v30);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return 0;
}

uint64_t mlir::VectorType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, const char *a4, uint64_t *a5, uint64_t a6, const char *a7)
{
  if (mlir::isValidVectorTypeElementType(a5))
  {
    if (a4)
    {
      v13 = 0;
      while (a3[v13] > 0)
      {
        if (a4 == ++v13)
        {
          goto LABEL_6;
        }
      }

      a1(&v74, a2);
      if (v74)
      {
        LODWORD(v71) = 3;
        v72 = "vector types must have positive constant sizes but got ";
        v73 = 55;
        v54 = &v71;
        v55 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v67 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v55 = v76;
            v54 = (v76 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v54 = &v71;
            v55 = v76;
          }
        }

        v56 = &v55[24 * v77];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v77;
        if (v74)
        {
          v71 = ", ";
          sub_100066E2C(a3, &a3[a4], v75, v75, &v71);
        }
      }

      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }

      if (v85 == 1)
      {
        if (v84 != &v85)
        {
          free(v84);
        }

        v58 = __p;
        if (__p)
        {
          v59 = v83;
          v60 = __p;
          if (v83 != __p)
          {
            do
            {
              v59 = sub_10005BEF4(v59 - 1);
            }

            while (v59 != v58);
            v60 = __p;
          }

          v83 = v58;
          operator delete(v60);
        }

        v26 = v80;
        if (!v80)
        {
          goto LABEL_76;
        }

        v61 = v81;
        v28 = v80;
        if (v81 == v80)
        {
          goto LABEL_75;
        }

        do
        {
          v62 = *--v61;
          *v61 = 0;
          if (v62)
          {
            operator delete[]();
          }
        }

        while (v61 != v26);
        goto LABEL_74;
      }
    }

    else
    {
LABEL_6:
      if (a7 == a4)
      {
        return 1;
      }

      a1(&v74, a2);
      if (v74)
      {
        LODWORD(v71) = 3;
        v72 = "number of dims must match, got ";
        v73 = 31;
        v30 = &v71;
        v31 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v66 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v31 = v76;
            v30 = (v76 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v30 = &v71;
            v31 = v76;
          }
        }

        v32 = &v31[24 * v77];
        v33 = *v30;
        *(v32 + 2) = v30[2];
        *v32 = v33;
        v34 = ++v77;
        if (v74)
        {
          LODWORD(v71) = 5;
          v72 = a7;
          v35 = &v71;
          v36 = v76;
          if (v34 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v34 > &v71)
            {
              v68 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v34 + 1, 24);
              v36 = v76;
              v35 = (v76 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v34 + 1, 24);
              v35 = &v71;
              v36 = v76;
            }
          }

          v37 = &v36[24 * v77];
          v38 = *v35;
          *(v37 + 2) = v35[2];
          *v37 = v38;
          v39 = ++v77;
          if (v74)
          {
            LODWORD(v71) = 3;
            v72 = " and ";
            v73 = 5;
            v40 = &v71;
            v41 = v76;
            if (v39 >= v78)
            {
              if (v76 <= &v71 && v76 + 24 * v39 > &v71)
              {
                v69 = &v71 - v76;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v39 + 1, 24);
                v41 = v76;
                v40 = (v76 + v69);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v39 + 1, 24);
                v40 = &v71;
                v41 = v76;
              }
            }

            v42 = &v41[24 * v77];
            v43 = *v40;
            *(v42 + 2) = v40[2];
            *v42 = v43;
            v44 = ++v77;
            if (v74)
            {
              LODWORD(v71) = 5;
              v72 = a4;
              v45 = &v71;
              v46 = v76;
              if (v44 >= v78)
              {
                if (v76 <= &v71 && v76 + 24 * v44 > &v71)
                {
                  v70 = &v71 - v76;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v44 + 1, 24);
                  v46 = v76;
                  v45 = (v76 + v70);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v44 + 1, 24);
                  v45 = &v71;
                  v46 = v76;
                }
              }

              v47 = &v46[24 * v77];
              v48 = *v45;
              *(v47 + 2) = v45[2];
              *v47 = v48;
              ++v77;
            }
          }
        }
      }

      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }

      if (v85 == 1)
      {
        if (v84 != &v85)
        {
          free(v84);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v83;
          v51 = __p;
          if (v83 != __p)
          {
            do
            {
              v50 = sub_10005BEF4(v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v83 = v49;
          operator delete(v51);
        }

        v26 = v80;
        if (!v80)
        {
          goto LABEL_76;
        }

        v52 = v81;
        v28 = v80;
        if (v81 == v80)
        {
LABEL_75:
          v81 = v26;
          operator delete(v28);
LABEL_76:
          if (v76 != v79)
          {
            free(v76);
          }

          return v14;
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

        while (v52 != v26);
LABEL_74:
        v28 = v80;
        goto LABEL_75;
      }
    }
  }

  else
  {
    a1(&v74, a2);
    if (v74)
    {
      LODWORD(v71) = 3;
      v72 = "vector elements must be int/index/float type but got ";
      v73 = 53;
      v15 = &v71;
      v16 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v64 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v16 = v76;
          v15 = (v76 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v15 = &v71;
          v16 = v76;
        }
      }

      v17 = &v16[24 * v77];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v77;
      if (v74)
      {
        v19 = &v71;
        mlir::DiagnosticArgument::DiagnosticArgument(&v71, a5);
        v20 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v65 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v20 = v76;
            v19 = (v76 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v19 = &v71;
            v20 = v76;
          }
        }

        v21 = &v20[24 * v77];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v77;
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v83;
        v25 = __p;
        if (v83 != __p)
        {
          do
          {
            v24 = sub_10005BEF4(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v83 = v23;
        operator delete(v25);
      }

      v26 = v80;
      if (!v80)
      {
        goto LABEL_76;
      }

      v27 = v81;
      v28 = v80;
      if (v81 == v80)
      {
        goto LABEL_75;
      }

      do
      {
        v29 = *--v27;
        *v27 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v27 != v26);
      goto LABEL_74;
    }
  }

  return v14;
}

uint64_t mlir::VectorType::getShape(mlir::VectorType *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::VectorType::getScalableDims(mlir::VectorType *this)
{
  v1 = *this;
  result = *(*this + 32);
  v3 = *(v1 + 40);
  return result;
}

BOOL mlir::isValidVectorTypeElementType(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  {
    v14 = v1;
    sub_1002993D8();
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v6 = *(v14 + 8);
    v7 = *(v14 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (!v7)
  {
    return 0;
  }

LABEL_9:
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
  if (v8 == &v6[2 * v7])
  {
    return 0;
  }

  return *v8 == v5 && v8[1] != 0;
}

void *mlir::Float16Type::scaleElementBitwidth(mlir::Float16Type *this, int a2)
{
  if (a2 == 4)
  {
    Context = mlir::Type::getContext(this);
    result = mlir::Float64Type::get(Context, v16);
    if (!result)
    {
      return result;
    }

    v17 = *result;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v17 + 8);
      v8 = *(v17 + 16);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v25 = v17;
      v27 = result;
      sub_1002993D8();
      result = v27;
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v25 + 8);
      v8 = *(v25 + 16);
      if (!v8)
      {
        return result;
      }
    }

    v9 = v7;
    v18 = v8;
    do
    {
      v19 = v18 >> 1;
      v20 = &v9[2 * (v18 >> 1)];
      v22 = *v20;
      v21 = v20 + 2;
      v18 += ~(v18 >> 1);
      if (v22 < v6)
      {
        v9 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
    goto LABEL_20;
  }

  if (a2 != 2)
  {
    return 0;
  }

  v2 = mlir::Type::getContext(this);
  result = mlir::Float32Type::get(v2, v3);
  if (result)
  {
    v5 = *result;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v24 = v5;
      v26 = result;
      sub_1002993D8();
      result = v26;
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v24 + 8);
      v8 = *(v24 + 16);
      if (!v8)
      {
        return result;
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
LABEL_20:
    if (v9 != &v7[2 * v8] && *v9 == v6)
    {
      v23 = v9[1];
    }
  }

  return result;
}

void *mlir::BFloat16Type::scaleElementBitwidth(mlir::BFloat16Type *this, int a2)
{
  if (a2 == 4)
  {
    Context = mlir::Type::getContext(this);
    result = mlir::Float64Type::get(Context, v16);
    if (!result)
    {
      return result;
    }

    v17 = *result;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v17 + 8);
      v8 = *(v17 + 16);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v25 = v17;
      v27 = result;
      sub_1002993D8();
      result = v27;
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v25 + 8);
      v8 = *(v25 + 16);
      if (!v8)
      {
        return result;
      }
    }

    v9 = v7;
    v18 = v8;
    do
    {
      v19 = v18 >> 1;
      v20 = &v9[2 * (v18 >> 1)];
      v22 = *v20;
      v21 = v20 + 2;
      v18 += ~(v18 >> 1);
      if (v22 < v6)
      {
        v9 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
    goto LABEL_20;
  }

  if (a2 != 2)
  {
    return 0;
  }

  v2 = mlir::Type::getContext(this);
  result = mlir::Float32Type::get(v2, v3);
  if (result)
  {
    v5 = *result;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v24 = v5;
      v26 = result;
      sub_1002993D8();
      result = v26;
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v24 + 8);
      v8 = *(v24 + 16);
      if (!v8)
      {
        return result;
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
LABEL_20:
    if (v9 != &v7[2 * v8] && *v9 == v6)
    {
      v23 = v9[1];
    }
  }

  return result;
}

void *mlir::Float32Type::scaleElementBitwidth(mlir::Float32Type *this, int a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  Context = mlir::Type::getContext(this);
  result = mlir::Float64Type::get(Context, v3);
  if (result)
  {
    v5 = *result;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v16 = v5;
      v17 = result;
      sub_1002993D8();
      result = v17;
      v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (!v8)
      {
        return result;
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    if (v9 != &v7[2 * v8] && *v9 == v6)
    {
      v15 = v9[1];
    }
  }

  return result;
}

uint64_t mlir::FunctionType::getInputs(mlir::FunctionType *this)
{
  v1 = *this;
  result = *(*this + 16);
  v3 = *(v1 + 8);
  return result;
}

uint64_t mlir::FunctionType::clone(mlir::Type *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Context = mlir::Type::getContext(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v13[1] = &Context;
  v17[0] = sub_100121218;
  v17[1] = v13;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = sub_10012044C(a2, 0, a2, a3);
  v11 = 0xBF58476D1CE4E5B9 * ((969526130 * sub_10012044C(a4, 0, a4, a5)) | (v10 << 32));
  v15[0] = v18;
  v15[1] = v17;
  v16 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v11 >> 31) ^ v11, sub_100120D5C, &v16, sub_100120ECC, v15);
}

uint64_t mlir::TensorType::getElementType(mlir::TensorType *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return *(v1 + 24);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return *(v1 + 8);
  }

  return 0;
}

uint64_t mlir::TensorType::getShape(mlir::TensorType *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::TensorType::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(**a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      v5 = v3[4];
      v6 = *(a2 + 8);
    }

    else
    {
      v4 = v3[1];
      v6 = v3[2];
      v5 = v3[4];
    }

    return mlir::RankedTensorType::get(v4, v6, a3, v5);
  }

  if (*(a2 + 16))
  {
    v4 = *a2;
    v6 = *(a2 + 8);
    v5 = 0;

    return mlir::RankedTensorType::get(v4, v6, a3, v5);
  }

  v10 = a3;
  Context = mlir::Type::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11[1] = &Context;
  v16[0] = sub_100121CDC;
  v16[1] = v11;
  v15 = v10;
  v9 = 0x9DDFEA08EB382D69 * ((8 * ((v10 >> 4) ^ (v10 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v9 >> 47) ^ 0xED558CCD))), sub_100121C1C, &v14, sub_100121C34, v13);
}

BOOL mlir::TensorType::isValidElementType(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  {
    v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (v4)
    {
LABEL_4:
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
      if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
      {
        return 1;
      }
    }
  }

  else
  {
    v15 = v1;
    v16 = a1;
    sub_1002993D8();
    a1 = v16;
    v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v3 = *(v15 + 8);
    v4 = *(v15 + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v11 = *(*a1 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return *(**a1 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id;
  }

  return 1;
}

uint64_t mlir::MemRefType::get(uint64_t *a1, mlir::AffineMap *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v39 = a3;
  if (a4)
  {
    v10 = a4;
    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  Context = mlir::Type::getContext(&v39);
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a2, Context, v12);
  v14 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
  v10 = v14;
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = *v14;
  if (atomic_load_explicit(&qword_1002E0538, memory_order_acquire))
  {
    v16 = qword_1002E0530;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_10029F5E0();
    v16 = qword_1002E0530;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
LABEL_17:
    a5 = 0;
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  a5 = v19[1];
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_18:
  v25 = *(*v6 + 136);
  v26 = v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v27 = v6;
  }

  else
  {
    v27 = 0;
  }

  v50[0] = v27;
  if (v26)
  {
    mlir::IntegerAttr::getValue(v50, &v44);
    v37 = v45;
    if (v45 >= 0x41)
    {
      if (v37 - llvm::APInt::countLeadingZerosSlowCase(&v44) < 0x41)
      {
        v38 = *v44;
        operator delete[]();
      }

      if (v44)
      {
        operator delete[]();
      }
    }

    else if (!v44)
    {
      v6 = 0;
    }
  }

LABEL_22:
  v41 = mlir::Type::getContext(&v39);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v41);
  v40[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v40[1] = &v41;
  v50[0] = sub_10012A60C;
  v50[1] = v40;
  v44 = a1;
  v45 = a2;
  v29 = v39;
  v46 = v39;
  v47 = v10;
  v48 = a5;
  v49 = v6;
  v30 = sub_10002D970(a1, &a1[a2]);
  v31 = (v29 >> 4) ^ (v29 >> 9);
  v32 = 0x9AE16A3B2F90404FLL * ((v6 >> 4) ^ (v6 >> 9));
  v33 = __ROR8__(0xB492B66FBE98F273 * v30 - v31, 43) + __ROR8__(v32 ^ 0xFF51AFD7ED558CCDLL, 30);
  v34 = __ROR8__(v31 ^ 0xC949D7C7509E6557, 20) - v32 + 0xB492B66FBE98F273 * v30 - 0xAE502812AA7333 + 32;
  v35 = 0x9DDFEA08EB382D69 * ((v33 - 0x3C5A37A36834CED9 * ((v10 >> 4) ^ (v10 >> 9))) ^ v34);
  v42[0] = &v44;
  v42[1] = v50;
  v43 = &v44;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v34 ^ (v35 >> 47) ^ v35)) >> 32) >> 15) ^ (-348639895 * (v34 ^ (v35 >> 47) ^ v35))), sub_10012A38C, &v43, sub_10012A418, v42);
}

uint64_t mlir::MemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, void *a3, mlir::AffineMap *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v36 = a5;
  if (a6)
  {
    v14 = a6;
    if (!a8)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  Context = mlir::Type::getContext(&v36);
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a4, Context, v16);
  v18 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
  v14 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = *v18;
  if (atomic_load_explicit(&qword_1002E0538, memory_order_acquire))
  {
    v20 = qword_1002E0530;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (!v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_10029F5E0();
    v20 = qword_1002E0530;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (!v22)
    {
      goto LABEL_17;
    }
  }

  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
LABEL_17:
    a7 = 0;
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  a7 = v23[1];
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29 = *(*v8 + 136);
  v30 = v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v31 = v8;
  }

  else
  {
    v31 = 0;
  }

  v39 = v31;
  if (v30)
  {
    mlir::IntegerAttr::getValue(&v39, &v37);
    v34 = v38;
    if (v38 >= 0x41)
    {
      if (v34 - llvm::APInt::countLeadingZerosSlowCase(&v37) < 0x41)
      {
        v35 = *v37;
        operator delete[]();
      }

      if (v37)
      {
        operator delete[]();
      }
    }

    else if (!v37)
    {
      v8 = 0;
    }
  }

LABEL_22:
  v32 = mlir::Type::getContext(&v36);
  return sub_100120154(a1, a2, v32, a3, a4, v36, v14, a7, v8);
}

uint64_t sub_100120154(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((mlir::MemRefType::verify(a1, a2, a4, a5, a6, a7, a8, a9) & 1) == 0)
  {
    return 0;
  }

  v24 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v23[1] = &v24;
  v28[0] = sub_10012A60C;
  v28[1] = v23;
  v27[0] = a4;
  v27[1] = a5;
  v27[2] = a6;
  v27[3] = a7;
  v27[4] = a8;
  v27[5] = a9;
  v16 = sub_10002D970(a4, &a4[a5]);
  v17 = (a6 >> 4) ^ (a6 >> 9);
  v18 = 0x9AE16A3B2F90404FLL * ((a9 >> 4) ^ (a9 >> 9));
  v19 = __ROR8__(0xB492B66FBE98F273 * v16 - v17, 43) + __ROR8__(v18 ^ 0xFF51AFD7ED558CCDLL, 30);
  v20 = __ROR8__(v17 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v18 - 0x4B6D499041670D8DLL * v16 + 32;
  v21 = 0x9DDFEA08EB382D69 * ((v19 - 0x3C5A37A36834CED9 * ((a7 >> 4) ^ (a7 >> 9))) ^ v20);
  v25[0] = v27;
  v25[1] = v28;
  v26 = v27;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 32) >> 15) ^ (-348639895 * (v20 ^ (v21 >> 47) ^ v21))), sub_10012A38C, &v26, sub_10012A418, v25);
}

void *sub_100120370(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 + 2;
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
    v3 = sub_10003E4AC(a2, 16, 16, 3);
    *v3 = 0;
    v3[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  v3[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], v3);
  }

  return v3;
}

uint64_t sub_100120418(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10012044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    v71 = mlir::TypeRange::dereference_iterator(a1, a2);
    v73 = a4;
    v74 = (v71 >> 4) ^ (v71 >> 9);
    v94 = v74;
    if (a2 + 1 == a4)
    {
      v12 = 8;
      v50 = a4;
    }

    else
    {
      v80 = mlir::TypeRange::dereference_iterator(a1, a2 + 1);
      v73 = a4;
      v4 = (v80 >> 4) ^ (v80 >> 9);
      v95 = v4;
      if (a2 + 2 == a4)
      {
        v12 = 16;
        v50 = a4;
      }

      else
      {
        v81 = mlir::TypeRange::dereference_iterator(a1, a2 + 2);
        v73 = a4;
        v9 = (v81 >> 4) ^ (v81 >> 9);
        v96 = v9;
        if (a2 + 3 == a4)
        {
          v12 = 24;
          v50 = a4;
        }

        else
        {
          v82 = mlir::TypeRange::dereference_iterator(a1, a2 + 3);
          v73 = a4;
          v6 = (v82 >> 4) ^ (v82 >> 9);
          v97 = v6;
          if (a2 + 4 == a4)
          {
            v12 = 32;
            v50 = a4;
          }

          else
          {
            v83 = mlir::TypeRange::dereference_iterator(a1, a2 + 4);
            v73 = a4;
            v7 = (v83 >> 4) ^ (v83 >> 9);
            v98 = v7;
            if (a2 + 5 == a4)
            {
              v12 = 40;
              v50 = a4;
            }

            else
            {
              v84 = mlir::TypeRange::dereference_iterator(a1, a2 + 5);
              v73 = a4;
              v72 = (v84 >> 4) ^ (v84 >> 9);
              v99 = v72;
              if (a2 + 6 == a4)
              {
                v12 = 48;
                v50 = a4;
              }

              else
              {
                v85 = (v84 >> 4) ^ (v84 >> 9);
                v86 = mlir::TypeRange::dereference_iterator(a1, a2 + 6);
                v73 = a4;
                v8 = (v86 >> 4) ^ (v86 >> 9);
                v100 = v8;
                if (a2 + 7 == a4)
                {
                  v12 = 56;
                  v50 = a4;
                }

                else
                {
                  v87 = mlir::TypeRange::dereference_iterator(a1, a2 + 7);
                  v73 = a4;
                  v5 = (v87 >> 4) ^ (v87 >> 9);
                  v101 = v5;
                  v50 = a2 + 8;
                  if (v50 == a4)
                  {
                    v12 = 64;
                    v50 = a4;
                  }

                  else
                  {
                    mlir::TypeRange::dereference_iterator(a1, v50);
                    v73 = a4;
                    v12 = 64;
                  }
                }

                v72 = v85;
              }
            }
          }
        }
      }
    }

    v88 = v74 + 0x298DF016A9F64655;
    v89 = v7 + 0x4BF62CB950C3753ALL;
    if (v50 == v73)
    {
      return sub_10002D6F8(&v94, v12, 0xFF51AFD7ED558CCDLL);
    }

    v13 = (0xB492B66FBE98F273 * __ROR8__(v4 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v14 = v72 - 0x4B6D499041670D8DLL * __ROR8__(v8 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v15 = __ROR8__(v88 + v4 + v9, 44) + v88 + __ROR8__(v13 + v88 + v6 - 0xAE502812AB8D92, 21);
    v16 = v88 + v4 + v9 + v6;
    v17 = v72 + v8 + v89;
    v18 = __ROR8__(v17, 44) + v89 + __ROR8__(v14 + v9 + v89 + v5, 21);
    v19 = v17 + v5;
    v90 = ~&v94;
    v20 = 0x544962662A7EE1A4;
    v21 = 64;
    while (1)
    {
      v91 = v13;
      v92 = v18;
      v22 = mlir::TypeRange::dereference_iterator(a1, v50);
      v23 = a4;
      v94 = (v22 >> 4) ^ (v22 >> 9);
      if (v50 + 1 == a4)
      {
        v24 = 1;
        v25 = 56;
        v26 = 8;
        goto LABEL_29;
      }

      v27 = mlir::TypeRange::dereference_iterator(a1, v50 + 1);
      v23 = a4;
      v95 = (v27 >> 4) ^ (v27 >> 9);
      if (v50 + 2 == a4)
      {
        v24 = 2;
        v25 = 48;
        v26 = 16;
        goto LABEL_29;
      }

      v28 = mlir::TypeRange::dereference_iterator(a1, v50 + 2);
      v23 = a4;
      v96 = (v28 >> 4) ^ (v28 >> 9);
      if (v50 + 3 == a4)
      {
        v24 = 3;
        v25 = 40;
        v26 = 24;
        do
        {
LABEL_29:
          v39 = v26;
          v26 = v25;
          v25 = v39 % v25;
        }

        while (v25);
        v40 = (&v94 + v26);
        do
        {
          v42 = *(v40 - 1);
          v40 = (v40 - 1);
          v41 = v42;
          v43 = &v40[v24];
          v44 = v40;
          do
          {
            v45 = v44;
            v44 = v43;
            *v45 = *v43;
            v46 = (&v102 - v43);
            v47 = __OFSUB__(v24 * 8, v46);
            v49 = v24 * 8 - v46;
            v48 = (v49 < 0) ^ v47;
            v43 = (&v94 + v49);
            if (v48)
            {
              v43 = &v44[v24];
            }
          }

          while (v43 != v40);
          *v44 = v41;
        }

        while (v40 != &v94);
        goto LABEL_36;
      }

      v29 = mlir::TypeRange::dereference_iterator(a1, v50 + 3);
      v23 = a4;
      v97 = (v29 >> 4) ^ (v29 >> 9);
      if (v50 + 4 != a4)
      {
        v30 = mlir::TypeRange::dereference_iterator(a1, v50 + 4);
        v23 = a4;
        v98 = (v30 >> 4) ^ (v30 >> 9);
        if (v50 + 5 == a4)
        {
          v24 = 5;
          v25 = 24;
          v26 = 40;
        }

        else
        {
          v31 = mlir::TypeRange::dereference_iterator(a1, v50 + 5);
          v23 = a4;
          v99 = (v31 >> 4) ^ (v31 >> 9);
          if (v50 + 6 == a4)
          {
            v24 = 6;
            v25 = 16;
            v26 = 48;
          }

          else
          {
            v32 = mlir::TypeRange::dereference_iterator(a1, v50 + 6);
            v23 = a4;
            v100 = (v32 >> 4) ^ (v32 >> 9);
            if (v50 + 7 != a4)
            {
              v70 = mlir::TypeRange::dereference_iterator(a1, v50 + 7);
              v23 = a4;
              v101 = (v70 >> 4) ^ (v70 >> 9);
              v50 += 8;
              if (v50 == a4)
              {
                v50 = a4;
              }

              else
              {
                mlir::TypeRange::dereference_iterator(a1, v50);
                v23 = a4;
              }

              v24 = 8;
              goto LABEL_37;
            }

            v24 = 7;
            v25 = 8;
            v26 = 56;
          }
        }

        goto LABEL_29;
      }

      v24 = 4;
      v33 = 31;
      if (&v98 + v90 < 0x1F)
      {
        v33 = &v98 + v90;
      }

      v34 = &v94;
      if (v33 < 3 || &v94 < (&v98 + v33 + 1) && &v98 < (&v94 + v33 + 1))
      {
        break;
      }

      v56 = v33 + 1;
      if (v33 >= 0xF)
      {
        v57 = v56 & 0x70;
        v58 = v94;
        v59 = v95;
        v94 = v98;
        v95 = v99;
        v98 = v58;
        v99 = v59;
        if (v57 != 16)
        {
          v60 = v96;
          v61 = v97;
          v96 = v100;
          v97 = v101;
          v100 = v60;
          v101 = v61;
          if (v57 != 32)
          {
            v62 = v98;
            v63 = v99;
            v98 = v102;
            v99 = v103;
            v102 = v62;
            v103 = v63;
            if (v57 != 48)
            {
              v64 = v100;
              v65 = v101;
              v100 = v104;
              v101 = v105;
              v104 = v64;
              v105 = v65;
            }
          }
        }

        if (v56 == v57)
        {
          goto LABEL_36;
        }

        if ((v56 & 0xC) == 0)
        {
          v34 = &v94 + v57;
          v35 = v57 + 32;
LABEL_24:
          v36 = (v34 + 1);
          do
          {
            v37 = *(v36 - 1);
            *(v36 - 1) = *(&v94 + v35);
            *(&v94 + v35) = v37;
            if (v36 == &v98)
            {
              break;
            }

            v36 = (v36 + 1);
          }

          while (v35++ != 63);
          goto LABEL_36;
        }
      }

      else
      {
        v57 = 0;
      }

      v35 = (v56 & 0x7C) + 32;
      v34 = &v94 + (v56 & 0x7C);
      v66 = (&v98 + v57);
      v67 = (&v94 + v57);
      v68 = v57 - (v56 & 0x7C);
      do
      {
        v69 = *v67;
        *v67++ = *v66;
        *v66++ = v69;
        v68 += 4;
      }

      while (v68);
      if (v56 != (v56 & 0x7C))
      {
        goto LABEL_24;
      }

LABEL_36:
      v50 = v23;
LABEL_37:
      v51 = v14 + v16 + v20 + v95;
      v14 = v99 + v16 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v15 + v100, 42);
      v52 = v94 - 0x4B6D499041670D8DLL * v15;
      v53 = (0xB492B66FBE98F273 * __ROR8__(v51, 37)) ^ v92;
      v54 = __ROR8__(v91 + v19, 33);
      v15 = __ROR8__(v52 + v95 + v96, 44) + v52 + __ROR8__(v53 + v19 + v52 + v97, 21);
      v20 = 0xB492B66FBE98F273 * v54;
      v16 = v52 + v95 + v96 + v97;
      v55 = 0xB492B66FBE98F273 * v54 + v92 + v98;
      v18 = __ROR8__(v14 + v96 + v55 + v101, 21) + v55 + __ROR8__(v99 + v100 + v55, 44);
      v19 = v99 + v100 + v55 + v101;
      v21 += v24 * 8;
      v13 = v53;
      if (v50 == v23)
      {
        v75 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v19)));
        v76 = v53 - 0x4B6D499041670D8DLL * (v14 ^ (v14 >> 47)) - 0x622015F714C7D297 * (v75 ^ (v75 >> 47));
        v77 = 0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v18)));
        v78 = 0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47)) - 0x4B6D499041670D8DLL * ((v21 ^ (v21 >> 47)) + v54);
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ v76)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ v76)))) ^ ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ v76)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ v76)))) >> 47));
      }
    }

    v35 = 32;
    goto LABEL_24;
  }

  v12 = 0;
  return sub_10002D6F8(&v94, v12, 0xFF51AFD7ED558CCDLL);
}

BOOL sub_100120D5C(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((*a1)[1] != v3)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = 0;
  if (v3)
  {
    v7 = *v2;
    v8 = 8 * v3 - 8;
    v9 = *(a2 + 16);
    while (*v9 == mlir::TypeRange::dereference_iterator(v7, v6))
    {
      ++v6;
      ++v9;
      if (!v8)
      {
        goto LABEL_10;
      }

      v8 -= 8;
    }

    return 0;
  }

  v9 = *(a2 + 16);
LABEL_10:
  result = 0;
  if (v6 == v3 && v9 == (v5 + 8 * v3))
  {
    v11 = a2;
    v12 = *(a2 + 12);
    if (v2[3] != v12)
    {
      return 0;
    }

    v13 = *(v11 + 16);
    v14 = *(v11 + 8);
    v15 = v13 + 8 * v14;
    v16 = 0;
    if (v12)
    {
      v17 = v2[2];
      v18 = 8 * v12 - 8;
      v19 = (v13 + 8 * v14);
      while (*v19 == mlir::TypeRange::dereference_iterator(v17, v16))
      {
        ++v16;
        ++v19;
        if (!v18)
        {
          return v16 == v12 && v19 == (v15 + 8 * v12);
        }

        v18 -= 8;
      }

      return 0;
    }

    v19 = (v13 + 8 * v14);
    return v16 == v12 && v19 == (v15 + 8 * v12);
  }

  return result;
}

unint64_t sub_100120ECC(uint64_t a1, unint64_t *a2)
{
  v3 = sub_100120F1C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_100120F1C(unint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v35 = v37;
  v36 = 0x1000000000;
  if (v6 + v4 < 0x11)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4;
    if (v4 <= 0x10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v6 + v4, 8);
  v7 = v36;
  v8 = v36;
  v9 = v4 + v36;
  if (v9 > HIDWORD(v36))
  {
LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v9, 8);
    v8 = v36;
    v7 = v36;
  }

LABEL_6:
  if (v4)
  {
    v10 = 0;
    v11 = v35 + 8 * v8;
    do
    {
      *&v11[8 * v10] = mlir::TypeRange::dereference_iterator(v3, v10);
      ++v10;
    }

    while (v4 != v10);
    v7 = v36;
  }

  v12 = (v7 + v4);
  LODWORD(v36) = v12;
  if (v6 + v12 > HIDWORD(v36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v6 + v12, 8);
    v12 = v36;
  }

  v13 = v35;
  if (v6)
  {
    v14 = 0;
    v15 = v35 + 8 * v12;
    do
    {
      *&v15[8 * v14] = mlir::TypeRange::dereference_iterator(v5, v14);
      ++v14;
    }

    while (v6 != v14);
    LODWORD(v12) = v36;
    v13 = v35;
  }

  v16 = *a1;
  v17 = (v12 + v6);
  LODWORD(v36) = v12 + v6;
  if (v12 + v6)
  {
    v18 = 8 * v17;
    a1[10] += 8 * v17;
    if (v16 && (v19 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8, v19 + v18 <= a1[1]))
    {
      *a1 = v19 + v18;
      v20 = v18 - 8;
      v21 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v22 = v13;
      if ((v18 - 8) >= 0x18)
      {
LABEL_20:
        v21 = v19;
        v22 = v13;
        if (v19 - v13 >= 0x20)
        {
          v23 = (v20 >> 3) + 1;
          v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
          v21 = (v19 + v24);
          v22 = &v13[v24];
          v25 = (v13 + 16);
          v26 = (v19 + 16);
          v27 = v23 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v25 += 2;
            v26 += 2;
            v27 -= 4;
          }

          while (v27);
          if (v23 == (v23 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_25;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v19 = sub_10003E4AC(a1, 8 * v17, 8 * v17, 3);
      v20 = v18 - 8;
      v21 = v19;
      v22 = v13;
      if ((v18 - 8) >= 0x18)
      {
        goto LABEL_20;
      }
    }

    do
    {
LABEL_24:
      v29 = *v22;
      v22 += 8;
      *v21++ = v29;
    }

    while (v22 != &v13[8 * v17]);
LABEL_25:
    v16 = *a1;
    goto LABEL_27;
  }

  v19 = 0;
LABEL_27:
  a1[10] += 24;
  v30 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 24;
  if (v16)
  {
    v32 = v31 > a1[1];
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v30 = sub_10003E4AC(a1, 24, 24, 3);
    *v30 = 0;
    *(v30 + 8) = v4;
    *(v30 + 12) = v6;
    *(v30 + 16) = v19;
    v33 = v35;
    if (v35 == v37)
    {
      return v30;
    }

    goto LABEL_32;
  }

  *a1 = v31;
  *v30 = 0;
  *(v30 + 8) = v4;
  *(v30 + 12) = v6;
  *(v30 + 16) = v19;
  v33 = v35;
  if (v35 != v37)
  {
LABEL_32:
    free(v33);
  }

  return v30;
}

uint64_t sub_100121218(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_10012124C(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (v3 != v2[2])
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(a2 + 16), v2[1], v3) == 0;
  }

  return 1;
}

void *sub_1001212B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100121300(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_100121300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  v4 = a2[1];
  a1[10] += v3 + 1;
  v5 = *a1;
  v6 = v3 + 1 + *a1;
  if (*a1)
  {
    v7 = v6 > a1[1];
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *a1 = v6;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v8 = v5;
    v9 = v4;
    goto LABEL_22;
  }

  v19 = a1;
  v5 = sub_10003E4AC(a1, v3 + 1, v3 + 1, 0);
  a1 = v19;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v8 = v5;
  v9 = v4;
  if ((v5 - v4) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v10 = v3 & 0xFFFFFFFFFFFFFFE0;
    v11 = (v4 + 16);
    v12 = (v5 + 16);
    v13 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
    if (v3 == v10)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v8 = (v5 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v9 = (v4 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v15 = (v4 + v10);
      v16 = (v5 + v10);
      v17 = v10 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 += 8;
      }

      while (v17);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = (v4 + v10);
    v8 = (v5 + v10);
  }

  do
  {
LABEL_22:
    v20 = *v9++;
    *v8++ = v20;
  }

  while (v9 != (v4 + v3));
LABEL_23:
  *(v5 + v3) = 0;
LABEL_24:
  a1[10] += 32;
  v21 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 + 4;
  if (*a1)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = sub_10003E4AC(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = v5;
  v21[3] = v3;
  return v21;
}

uint64_t sub_1001214A0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_1001214D4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24);
}

unint64_t sub_100121550(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001215A0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_1001215A0(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 1);
  v4 = *a1;
  if (!v2)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = 8 * v2;
  a1[10] += 8 * v2;
  v7 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8 * v2;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    v27 = v3;
    v20 = sub_10003E4AC(a1, 8 * v2, 8 * v2, 3);
    v3 = v27;
    v7 = v20;
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = v7;
      v12 = v5;
      if (v7 - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (v7 + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (v7 + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = v7;
  v12 = v5;
  do
  {
LABEL_15:
    v21 = *v12++;
    *v11++ = v21;
  }

  while (v12 != (v5 + 8 * v2));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 40;
  v22 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 40;
  if (v4)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = v3;
    v26 = sub_10003E4AC(a1, 40, 40, 3);
    v3 = v28;
    v22 = v26;
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  *(v22 + 8) = v7;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  return v22;
}

uint64_t sub_100121734(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_100121768(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*a1)[1] != v2)
  {
    return 0;
  }

  v3 = a2 + 16;
  v4 = 0;
  if (v2)
  {
    v5 = **a1;
    v6 = 8 * v2 - 8;
    v7 = (a2 + 16);
    while (*v7 == mlir::TypeRange::dereference_iterator(v5, v4))
    {
      ++v4;
      ++v7;
      if (!v6)
      {
        return v4 == v2 && v7 == (v3 + 8 * v2);
      }

      v6 -= 8;
    }

    return 0;
  }

  v7 = (a2 + 16);
  return v4 == v2 && v7 == (v3 + 8 * v2);
}

unint64_t sub_100121824(uint64_t a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = 8 * v4 + 16;
  a2[10] += v5;
  v6 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + v5;
  if (*a2)
  {
    v8 = v7 > a2[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v6 = sub_10003E4AC(a2, 8 * v4 + 16, v5, 3);
    *v6 = 0;
    *(v6 + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = v7;
    *v6 = 0;
    *(v6 + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *(v6 + 16 + 8 * i) = mlir::TypeRange::dereference_iterator(v3, i);
  }

LABEL_8:
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*v10)(*(v10 + 8), v6);
  }

  return v6;
}

uint64_t sub_100121900(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_100121934(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*a1)[1] != v2)
  {
    return 0;
  }

  v3 = a2 + 16;
  v4 = 0;
  if (v2)
  {
    v5 = **a1;
    v6 = 8 * v2 - 8;
    v7 = (a2 + 16);
    while (*v7 == mlir::TypeRange::dereference_iterator(v5, v4))
    {
      ++v4;
      ++v7;
      if (!v6)
      {
        return v4 == v2 && v7 == (v3 + 8 * v2);
      }

      v6 -= 8;
    }

    return 0;
  }

  v7 = (a2 + 16);
  return v4 == v2 && v7 == (v3 + 8 * v2);
}

unint64_t sub_1001219F0(uint64_t a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = 8 * v4 + 16;
  a2[10] += v5;
  v6 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + v5;
  if (*a2)
  {
    v8 = v7 > a2[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v6 = sub_10003E4AC(a2, 8 * v4 + 16, v5, 3);
    *v6 = 0;
    *(v6 + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = v7;
    *v6 = 0;
    *(v6 + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *(v6 + 16 + 8 * i) = mlir::TypeRange::dereference_iterator(v3, i);
  }

LABEL_8:
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*v10)(*(v10 + 8), v6);
  }

  return v6;
}

uint64_t sub_100121ACC(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100121B30(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003E4AC(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

uint64_t sub_100121BE8(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *sub_100121C34(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 + 2;
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
    v3 = sub_10003E4AC(a2, 16, 16, 3);
    *v3 = 0;
    v3[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  v3[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], v3);
  }

  return v3;
}

uint64_t sub_100121CDC(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_100121D10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && (v5 = *(a2 + 40), v5 == *(v2 + 32)))
  {
    return memcmp(*(a2 + 32), *(v2 + 24), v5) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_100121DA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100121DF0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_100121DF0(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v5 = a2[3];
  v4 = a2[4];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v9 + v8 <= a1[1]))
    {
      *a1 = v9 + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = v9;
        v12 = v7;
        if (v9 - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (v9 + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
          v16 = (v9 + 16);
          v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 4;
          }

          while (v17);
          if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_15:
            v6 = *a1;
            if (v4)
            {
              goto LABEL_16;
            }

LABEL_11:
            v19 = 0;
            goto LABEL_35;
          }
        }

        do
        {
LABEL_14:
          v21 = *v12++;
          *v11++ = v21;
        }

        while (v12 != (v7 + 8 * v2));
        goto LABEL_15;
      }
    }

    else
    {
      v20 = a1;
      v9 = sub_10003E4AC(a1, 8 * v2, 8 * v2, 3);
      a1 = v20;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = v9;
    v12 = v7;
    goto LABEL_14;
  }

  v9 = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  a1[10] += v4;
  if (v6 && v4 + v6 <= a1[1])
  {
    *a1 = v4 + v6;
    if (v4 >= 8)
    {
      goto LABEL_19;
    }

LABEL_32:
    v22 = v6;
    v23 = v5;
    goto LABEL_33;
  }

  v33 = a1;
  v6 = sub_10003E4AC(a1, v4, v4, 0);
  a1 = v33;
  if (v4 < 8)
  {
    goto LABEL_32;
  }

LABEL_19:
  v22 = v6;
  v23 = v5;
  if ((v6 - v5) >= 0x20)
  {
    if (v4 < 0x20)
    {
      v24 = 0;
      goto LABEL_26;
    }

    v24 = v4 & 0xFFFFFFFFFFFFFFE0;
    v25 = (v5 + 16);
    v26 = (v6 + 16);
    v27 = v4 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v28 = *v25;
      *(v26 - 1) = *(v25 - 1);
      *v26 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 32;
    }

    while (v27);
    if (v4 == v24)
    {
      goto LABEL_34;
    }

    if ((v4 & 0x18) != 0)
    {
LABEL_26:
      v22 = (v6 + (v4 & 0xFFFFFFFFFFFFFFF8));
      v23 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
      v29 = (v5 + v24);
      v30 = (v6 + v24);
      v31 = v24 - (v4 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v32 = *v29++;
        *v30++ = v32;
        v31 += 8;
      }

      while (v31);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v23 = (v5 + v24);
    v22 = (v6 + v24);
  }

  do
  {
LABEL_33:
    v34 = *v23++;
    *v22++ = v34;
  }

  while (v23 != (v5 + v4));
LABEL_34:
  v19 = v6;
  v6 = *a1;
LABEL_35:
  a1[10] += 48;
  v35 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = v35 + 6;
  if (v6)
  {
    v37 = v36 > a1[1];
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v35 = sub_10003E4AC(a1, 48, 48, 3);
  }

  else
  {
    *a1 = v36;
  }

  *v35 = 0;
  v35[1] = v9;
  v35[2] = v2;
  v35[3] = v3;
  v35[4] = v19;
  v35[5] = v4;
  return v35;
}

uint64_t sub_100122090(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001220C4(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100124754;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10012475C;
  v18 = &v10;
  v19 = sub_10012478C;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v22 = "builtin.complex";
  v23 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

uint64_t sub_100122228(uint64_t a1)
{
  sub_1001248DC(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v13 = sub_100124C10;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122370(uint64_t a1)
{
  sub_100124C44(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v13 = sub_100124EB0;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001224B8(uint64_t a1)
{
  sub_100124EE4(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v13 = sub_100125150;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122600(uint64_t a1)
{
  sub_100125184(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v13 = sub_1001253F0;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122748(uint64_t a1)
{
  sub_100125424(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v13 = sub_100125690;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122890(uint64_t a1)
{
  sub_1001256C4(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v13 = sub_100125930;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001229D8(uint64_t a1)
{
  sub_100125964(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v13 = sub_100125BD0;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122B20(uint64_t a1)
{
  sub_100125C04(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
  v13 = sub_100125E70;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122C68(uint64_t a1)
{
  sub_100125EA4(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v13 = sub_100126110;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122DB0(uint64_t a1)
{
  sub_100126144(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v13 = sub_1001263B0;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100122EF8(uint64_t a1)
{
  sub_1001263E4(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id;
  v13 = sub_100126650;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100123040(uint64_t a1)
{
  sub_100126684(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v13 = sub_100126910;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100123188(uint64_t a1)
{
  sub_100126944(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v13 = sub_100126BD0;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001232D0(uint64_t a1)
{
  sub_100126C04(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v13 = sub_100126E70;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100123418(uint64_t a1)
{
  sub_100126EA4(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v13 = sub_100127130;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_100123560(uint64_t a1)
{
  sub_100127164(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  v13 = sub_1001273D0;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001236A8(uint64_t a1)
{
  sub_100127404(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
  v13 = sub_100127670;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001237F0(uint64_t a1)
{
  sub_1001276A4(a1, &v13);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v13 = sub_100127910;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void sub_100123938(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100127944;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10012794C;
  v18 = &v10;
  v19 = sub_100127A74;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v22 = "builtin.function";
  v23 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

uint64_t sub_100123A9C(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = sub_100127C7C;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = nullsub_217;
  v20 = v10;
  v21 = sub_100127C88;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v24 = "builtin.index";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v13 = sub_100127C90;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void sub_100123C44(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100127CC4;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = nullsub_218;
  v18 = &v10;
  v19 = sub_100127CD0;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v22 = "builtin.integer";
  v23 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_100123DA8(uint64_t a1)
{
  sub_100127D14(a1, v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

uint64_t sub_100123EB4(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = sub_100128700;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = nullsub_219;
  v20 = v10;
  v21 = sub_10012870C;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  v24 = "builtin.none";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  v13 = sub_100128714;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void sub_10012405C(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100128748;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_100128750;
  v18 = &v10;
  v19 = sub_100128780;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v22 = "builtin.opaque";
  v23 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_1001241C0(uint64_t a1)
{
  sub_100128908(a1, v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_1001242CC(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100129054;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10012905C;
  v18 = &v10;
  v19 = sub_100129114;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v22 = "builtin.tuple";
  v23 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_100124430(uint64_t a1)
{
  sub_100129278(a1, v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_10012453C(uint64_t a1)
{
  sub_100129664(a1, v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_100124648(uint64_t a1)
{
  sub_100129A74(a1, v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

uint64_t sub_10012475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_10012478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1001247C0(a2, v8, v7);
}

uint64_t sub_1001247C0(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Type::getContext(&v7);
  v8 = v3;
  Context = mlir::Type::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v9[1] = &Context;
  v14[0] = sub_100120418;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), sub_100120358, &v12, sub_100120370, v11);
}

void sub_1001248DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100124A18(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100124ADC;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_199;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100124C08;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  *(a2 + 144) = "builtin.f8E5M2";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100124A18(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E5M2;
  v2[1] = sub_100124AD0;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100124ADC(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100124B3C()
{
  if ((atomic_load_explicit(&qword_1002E0D00, memory_order_acquire) & 1) == 0)
  {
    sub_10029F66C();
  }

  return qword_1002E0CF0;
}

const char *sub_100124B84()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FloatType::Trait<Empty>]";
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

uint64_t sub_100124C10(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100124C44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100124D80(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100124E44;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_200;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100124EA8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  *(a2 + 144) = "builtin.f8E4M3";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100124D80(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E4M3;
  v2[1] = sub_100124E38;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100124E44(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100124EB0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100124EE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125020(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001250E4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_201;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100125148;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  *(a2 + 144) = "builtin.f8E4M3FN";
  *(a2 + 152) = 16;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100125020(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E4M3FN;
  v2[1] = sub_1001250D8;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001250E4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100125150(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100125184(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001252C0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100125384;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_202;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1001253E8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  *(a2 + 144) = "builtin.f8E5M2FNUZ";
  *(a2 + 152) = 18;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1001252C0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E5M2FNUZ;
  v2[1] = sub_100125378;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100125384(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_1001253F0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100125424(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125560(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100125624;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_203;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100125688;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  *(a2 + 144) = "builtin.f8E4M3FNUZ";
  *(a2 + 152) = 18;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100125560(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E4M3FNUZ;
  v2[1] = sub_100125618;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100125624(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100125690(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_1001256C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125800(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001258C4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_204;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100125928;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  *(a2 + 144) = "builtin.f8E4M3B11FNUZ";
  *(a2 + 152) = 21;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100125800(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E4M3B11FNUZ;
  v2[1] = sub_1001258B8;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001258C4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100125930(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100125964(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125AA0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100125B64;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_205;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100125BC8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  *(a2 + 144) = "builtin.f8E3M4";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100125AA0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E3M4;
  v2[1] = sub_100125B58;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100125B64(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100125BD0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100125C04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125D40(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100125E04;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_206;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100125E68;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
  *(a2 + 144) = "builtin.f4E2M1FN";
  *(a2 + 152) = 16;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100125D40(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float4E2M1FN;
  v2[1] = sub_100125DF8;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100125E04(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100125E70(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100125EA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125FE0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001260A4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_207;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100126108;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  *(a2 + 144) = "builtin.f6E2M3FN";
  *(a2 + 152) = 16;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100125FE0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float6E2M3FN;
  v2[1] = sub_100126098;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001260A4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100126110(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100126144(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100126280(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100126344;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_208;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1001263A8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  *(a2 + 144) = "builtin.f6E3M2FN";
  *(a2 + 152) = 16;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100126280(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float6E3M2FN;
  v2[1] = sub_100126338;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100126344(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_1001263B0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_1001263E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100126520(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001265E4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_209;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100126648;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id;
  *(a2 + 144) = "builtin.f8E8M0FNU";
  *(a2 + 152) = 17;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100126520(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::Float8E8M0FNU;
  v2[1] = sub_1001265D8;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001265E4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100126650(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100126684(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001267C0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001268A4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_210;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100126908;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  *(a2 + 144) = "builtin.bf16";
  *(a2 + 152) = 12;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1001267C0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::BFloat;
  v2[1] = sub_100126878;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001268A4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100126910(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100126944(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100126A80(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100126B64;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_211;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100126BC8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  *(a2 + 144) = "builtin.f16";
  *(a2 + 152) = 11;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100126A80(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::IEEEhalf;
  v2[1] = sub_100126B38;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100126B64(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100126BD0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100126C04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100126D40(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100126E04;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_212;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100126E68;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  *(a2 + 144) = "builtin.tf32";
  *(a2 + 152) = 12;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100126D40(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::FloatTF32;
  v2[1] = sub_100126DF8;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100126E04(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100126E70(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100126EA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100126FE0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001270C4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_213;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100127128;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  *(a2 + 144) = "builtin.f32";
  *(a2 + 152) = 11;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100126FE0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::IEEEsingle;
  v2[1] = sub_100127098;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001270C4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100127130(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100127164(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001272A0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100127364;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_214;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1001273C8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  *(a2 + 144) = "builtin.f64";
  *(a2 + 152) = 11;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1001272A0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::IEEEdouble;
  v2[1] = sub_100127358;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100127364(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_1001273D0(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100127404(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100127540(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100127604;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_215;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100127668;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
  *(a2 + 144) = "builtin.f80";
  *(a2 + 152) = 11;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100127540(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::x87DoubleExtended;
  v2[1] = sub_1001275F8;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_100127604(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100127670(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_1001276A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001277E0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001278A4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_216;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100127908;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  *(a2 + 144) = "builtin.f128";
  *(a2 + 152) = 12;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1001277E0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = llvm::APFloatBase::IEEEquad;
  v2[1] = sub_100127898;
  {
    v5 = v2;
    sub_1002993D8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1001278A4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0CE8, memory_order_acquire))
  {
    return qword_1002E0CE0 == a1;
  }

  sub_10029F61C();
  return qword_1002E0CE0 == a1;
}

uint64_t sub_100127910(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t sub_100127964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  v12 = v9 + 8 * v10;
  mlir::TypeRange::TypeRange(&v23, v9, v10);
  result = mlir::TypeRange::TypeRange(&v25, v12, v11);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v14 = v24;
  if (v24)
  {
    v15 = 0;
    v16 = v23;
    do
    {
      v17 = mlir::TypeRange::dereference_iterator(v16, v15);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v22, v17);
      ++v15;
    }

    while (v14 != v15);
  }

  v18 = v26;
  if (v26)
  {
    v19 = 0;
    v20 = v25;
    do
    {
      v21 = mlir::TypeRange::dereference_iterator(v20, v19);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v22, v21);
      ++v19;
    }

    while (v18 != v19);
  }

  return result;
}

uint64_t sub_100127A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_100127AA8(a2, v8, v7);
}

uint64_t sub_100127AA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v21 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = v4 + 8 * v5;
  mlir::TypeRange::TypeRange(&v27, v4, v5);
  mlir::TypeRange::TypeRange(&v29, v7, v6);
  v8 = *a3;
  v9 = a3[1];
  v10 = v9 - v28;
  if (v9 >= v28)
  {
    v11 = v28;
  }

  else
  {
    v11 = a3[1];
  }

  v12 = v8 + 8 * v28;
  v13 = mlir::TypeRange::TypeRange(v31, v8, v11);
  v20 = v31[0];
  if (v10 >= v30)
  {
    v14 = v30;
  }

  else
  {
    v14 = v10;
  }

  mlir::TypeRange::TypeRange(v13, v12, v14);
  v19 = v31[0];
  Context = mlir::Type::getContext(&v21);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v22[1] = &Context;
  v26[0] = sub_100121218;
  v26[1] = v22;
  v31[0] = v20;
  v31[1] = v19;
  v16 = sub_10012044C(v20, 0, v20, *(&v20 + 1));
  v17 = 0xBF58476D1CE4E5B9 * ((969526130 * sub_10012044C(v19, 0, v19, *(&v19 + 1))) | (v16 << 32));
  v24[0] = v31;
  v24[1] = v26;
  v25 = v31;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v17 >> 31) ^ v17, sub_100120D5C, &v25, sub_100120ECC, v24);
}

uint64_t sub_100127C90(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t sub_100127CD0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Type::getContext(&v5);
  return mlir::IntegerType::get(Context, v2 & 0x3FFFFFFF, v2 >> 30);
}

void sub_100127D14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100127E50(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001280F0;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_100128218;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100128270;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  *(a2 + 144) = "builtin.memref";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100127E50(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_100127F24;
  v2[1] = sub_100127FC8;
  v2[2] = sub_100127FD0;
  v2[3] = sub_100127FEC;
  {
    v5 = v2;
    sub_10029F6C0();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_100127F24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v8 = a2[5];
    v9 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v10 = a4;
    v11 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v9 = a2[2];
    v10 = a4;
    v11 = 0;
    v8 = 0;
LABEL_7:
    v13 = mlir::MemRefType::get(v5, v6, v10, v11, v8, v9);
    return sub_100127FF4(&v13);
  }

  v13 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return sub_100127FF4(&v13);
}

uint64_t sub_100127FEC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void *sub_100127FF4(void **a1)
{
  result = *a1;
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
      sub_10029F6C0();
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

BOOL sub_1001280F0(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D10, memory_order_acquire))
  {
    return qword_1002E0D08 == a1;
  }

  sub_10029F710();
  return qword_1002E0D08 == a1;
}

uint64_t sub_100128150()
{
  if ((atomic_load_explicit(&qword_1002E0D28, memory_order_acquire) & 1) == 0)
  {
    sub_10029F764();
  }

  return qword_1002E0D18;
}

const char *sub_100128198()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType::Trait<Empty>]";
  v6 = 92;
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

uint64_t sub_100128218(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t sub_100128270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1001282A4(a2, &v8, &v7);
}

uint64_t sub_1001282A4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = a1;
  v11 = *a2;
  v12 = v3;
  v10 = *a3;
  v17[0] = &v11;
  v17[1] = &v10;
  sub_100128424(v17, &v12, &v13, &v14, &v15, &v23);
  mlir::Type::getContext(&v16);
  v18 = v20;
  v19 = 0x600000000;
  v4 = v24;
  if (!v24)
  {
    v4 = 0;
    v7 = v20;
    goto LABEL_9;
  }

  if (v24 < 7)
  {
    v6 = v20;
    v5 = v24;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v24, 8);
  v5 = v24;
  if (v24)
  {
    v6 = v18;
LABEL_7:
    memcpy(v6, v23, 8 * v5);
  }

  LODWORD(v19) = v4;
  v7 = v18;
LABEL_9:
  v21 = v27;
  v20[6] = v26;
  v22 = v28;
  v8 = mlir::MemRefType::get(v7, v4, v26, v27, *(&v27 + 1), v28);
  if (v18 != v20)
  {
    free(v18);
  }

  if (v23 != &v25)
  {
    free(v23);
  }

  return v8;
}

void sub_100128424(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  sub_100109374(*a2, *(a2 + 8), &__src);
  v13 = a1[1];
  if (!*a3)
  {
    v15 = 0;
    v16 = sub_1001285F8(*a4, *(a4 + 8), *a1);
    if (*a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  v14 = *v13;
  *v13 = vaddq_s64(*v13, xmmword_1002B0E70);
  v15 = *v14.i64[0];
  v16 = sub_1001285F8(*a4, *(a4 + 8), *a1);
  if (!*a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = **a1;
  **a1 = vaddq_s64(v18, xmmword_1002B0E70);
  v19 = *v18.i64[0];
LABEL_6:
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v20 = v27;
  v21 = __src;
  if (v27 && &__src != a6)
  {
    if (__src == v29)
    {
      v23 = v17;
      v24 = v16;
      v25 = v27;
      if (v27 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 16), v27, 8), v25 = v27, v21 = __src, v27))
      {
        memcpy(*a6, v21, 8 * v25);
        v21 = __src;
      }

      *(a6 + 8) = v20;
      v16 = v24;
      v17 = v23;
    }

    else
    {
      *a6 = __src;
      v22 = v28;
      *(a6 + 8) = v20;
      *(a6 + 12) = v22;
      __src = v29;
      v28 = 0;
      v21 = v29;
    }

    v27 = 0;
  }

  *(a6 + 64) = v15;
  *(a6 + 72) = v16;
  *(a6 + 80) = v17;
  *(a6 + 88) = v19;
  if (v21 != v29)
  {
    free(v21);
  }
}

void *sub_1001285F8(void *result, uint64_t a2, int64x2_t *a3)
{
  if (result)
  {
    v3 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_1002B0E70);
    result = *v3.i64[0];
    if (*v3.i64[0])
    {
      v4 = *result;
      if (atomic_load_explicit(&qword_1002E0538, memory_order_acquire))
      {
        v5 = qword_1002E0530;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        v15 = v4;
        v16 = result;
        sub_10029F7B8();
        result = v16;
        v5 = qword_1002E0530;
        v6 = *(v15 + 8);
        v7 = *(v15 + 16);
        if (!v7)
        {
          return result;
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
        v14 = v8[1];
      }
    }
  }

  return result;
}

uint64_t sub_100128714(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t sub_100128750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_100128780(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_1001287B4(a2, v5);
}

uint64_t sub_1001287B4(void *a1, uint64_t **a2)
{
  v11 = a1;
  v2 = a1[2];
  v3 = a1[3];
  if (a1[1])
  {
    v4 = **a2;
  }

  else
  {
    v4 = 0;
  }

  mlir::Type::getContext(&v11);
  v12 = v4;
  Context = mlir::Attribute::getContext(&v12);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v13[1] = &Context;
  v18[0] = sub_1001214A0;
  v18[1] = v13;
  v17[0] = v12;
  v17[1] = v2;
  v17[2] = v3;
  v6 = (v12 >> 4) ^ (v12 >> 9);
  v7 = llvm::hash_value(v2, v3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, sub_10012124C, &v16, sub_1001212B0, v15);
}

void sub_100128908(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100128A44(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100128B90;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_100128CE8;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100128D30;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  *(a2 + 144) = "builtin.tensor";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100128A44(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_100128B18;
  v2[1] = sub_100128B64;
  v2[2] = sub_100128B6C;
  v2[3] = sub_100128B88;
  {
    v5 = v2;
    sub_10029F6C0();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_100128B18(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return sub_100065C78(&v8);
}

uint64_t sub_100128B88(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

BOOL sub_100128B94(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D10, memory_order_acquire))
  {
    v1 = qword_1002E0D08;
    if (atomic_load_explicit(&qword_1002E0D38, memory_order_acquire))
    {
      return v1 == a1 || qword_1002E0D30 == a1;
    }
  }

  else
  {
    v5 = a1;
    sub_10029F710();
    a1 = v5;
    v1 = qword_1002E0D08;
    if (atomic_load_explicit(&qword_1002E0D38, memory_order_acquire))
    {
      return v1 == a1 || qword_1002E0D30 == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  sub_10029F808();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || qword_1002E0D30 == a1;
}

uint64_t sub_100128C20()
{
  if ((atomic_load_explicit(&qword_1002E0D50, memory_order_acquire) & 1) == 0)
  {
    sub_10029F85C();
  }

  return qword_1002E0D40;
}

const char *sub_100128C68()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ValueSemantics<Empty>]";
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

uint64_t sub_100128CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_100128D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_100128D64(a2, &v8, &v7);
}

uint64_t sub_100128D64(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = v3;
  v4 = *a2;
  v11 = *a3;
  v12 = v4;
  v15 = a1;
  v16[0] = &v12;
  v16[1] = &v11;
  sub_100128EBC(v16, &v13, &v14, &v14 + 1, &v20);
  mlir::Type::getContext(&v15);
  v17 = v19;
  v18 = 0x600000000;
  v5 = v21;
  if (!v21)
  {
    v5 = 0;
    v8 = v19;
    goto LABEL_9;
  }

  if (v21 < 7)
  {
    v7 = v19;
    v6 = v21;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v21, 8);
  v6 = v21;
  if (v21)
  {
    v7 = v17;
LABEL_7:
    memcpy(v7, v20, 8 * v6);
  }

  LODWORD(v18) = v5;
  v8 = v17;
LABEL_9:
  v19[6] = v23;
  v19[7] = v24;
  v9 = mlir::RankedTensorType::get(v8, v5, v23, v24);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != &v22)
  {
    free(v20);
  }

  return v9;
}

void sub_100128EBC(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  sub_100109374(*a2, *(a2 + 8), &__src);
  if (!*a3)
  {
    v13 = 0;
    if (*a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v11 = a1[1];
  v12 = *v11;
  *v11 = vaddq_s64(*v11, xmmword_1002B0E70);
  v13 = *v12.i64[0];
  if (!*a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = **a1;
  **a1 = vaddq_s64(v14, xmmword_1002B0E70);
  v15 = *v14.i64[0];
LABEL_6:
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v16 = v21;
  v17 = __src;
  if (v21 && &__src != a5)
  {
    if (__src == v23)
    {
      v19 = v21;
      if (v21 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v21, 8), v19 = v21, v17 = __src, v21))
      {
        memcpy(*a5, v17, 8 * v19);
        v17 = __src;
      }

      *(a5 + 8) = v16;
    }

    else
    {
      *a5 = __src;
      v18 = v22;
      *(a5 + 8) = v16;
      *(a5 + 12) = v18;
      __src = v23;
      v22 = 0;
      v17 = v23;
    }

    v21 = 0;
  }

  *(a5 + 64) = v13;
  *(a5 + 72) = v15;
  if (v17 != v23)
  {
    free(v17);
  }
}

uint64_t sub_10012905C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = mlir::TypeRange::TypeRange(&v15, a2 + 16, *(a2 + 8));
  v11 = v15;
  v12 = v16;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = mlir::TypeRange::dereference_iterator(v11, i);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(&v15, v14);
    }
  }

  return result;
}

uint64_t sub_100129114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_100129148(a2, v8, v7);
}

uint64_t sub_100129148(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a1;
  mlir::TypeRange::TypeRange(&v16, a1 + 16, *(a1 + 8));
  if (a3[1] >= v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = a3[1];
  }

  mlir::TypeRange::TypeRange(&v16, *a3, v4);
  v5 = v16;
  v6 = v17;
  Context = mlir::Type::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v11[1] = &Context;
  v16 = sub_100121900;
  v17 = v11;
  v15[0] = v5;
  v15[1] = v6;
  v8 = sub_10012044C(v5, 0, v5, v6);
  v13[1] = &v16;
  v14 = v15;
  v13[0] = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v8, sub_100121768, &v14, sub_100121824, v13);
}

void sub_100129278(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001293B4(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_10012955C;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1001295BC;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100129604;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  *(a2 + 144) = "builtin.unranked_memref";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1001293B4(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_100129488;
  v2[1] = sub_10012952C;
  v2[2] = sub_100129534;
  v2[3] = sub_100129550;
  {
    v5 = v2;
    sub_10029F6C0();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_100129488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v8 = a2[5];
    v9 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v10 = a4;
    v11 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v9 = a2[2];
    v10 = a4;
    v11 = 0;
    v8 = 0;
LABEL_7:
    v13 = mlir::MemRefType::get(v5, v6, v10, v11, v8, v9);
    return sub_100127FF4(&v13);
  }

  v13 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return sub_100127FF4(&v13);
}

BOOL sub_10012955C(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D10, memory_order_acquire))
  {
    return qword_1002E0D08 == a1;
  }

  sub_10029F710();
  return qword_1002E0D08 == a1;
}

uint64_t sub_1001295BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_100129604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v5 = *(a2 + 16);
  if (!*(a2 + 8))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = *a5;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *a3;
LABEL_6:
  mlir::Type::getContext(&v9);
  return mlir::UnrankedMemRefType::get(v6, v7);
}

void sub_100129664(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001297A0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001298F0;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1001298F4;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100129924;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  *(a2 + 144) = "builtin.unranked_tensor";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1001297A0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_100129874;
  v2[1] = sub_1001298C0;
  v2[2] = sub_1001298C8;
  v2[3] = sub_1001298E4;
  {
    v5 = v2;
    sub_10029F6C0();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_100129874(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return sub_100065C78(&v8);
}

uint64_t sub_1001298F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_100129924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_100129958(a2, v8, v7);
}

uint64_t sub_100129958(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Type::getContext(&v7);
  v8 = v3;
  Context = mlir::Type::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v9[1] = &Context;
  v14[0] = sub_100121CDC;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), sub_100121C1C, &v12, sub_100121C34, v11);
}

void sub_100129A74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100129BB0(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100129DA8;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_100129DAC;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100129DDC;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  *(a2 + 144) = "builtin.vector";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100129BB0(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_100129C84;
  v2[1] = sub_100129D90;
  v2[2] = sub_100129D98;
  v2[3] = sub_100129DA0;
  {
    v5 = v2;
    sub_10029F6C0();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_100129C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v4 = *a3;
    v5 = (a3 + 8);
  }

  else
  {
    v5 = (a2 + 16);
    v4 = *(a2 + 8);
  }

  result = mlir::VectorType::get(v4, *v5, a4, *(a2 + 32), *(a2 + 40));
  if (result)
  {
    v7 = *result;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        return result;
      }
    }

    else
    {
      v18 = v7;
      v19 = result;
      sub_10029F6C0();
      result = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        return result;
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
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
    }
  }

  return result;
}

uint64_t sub_100129DA0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_100129DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_100129DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_100129E10(a2, &v8, &v7);
}

uint64_t sub_100129E10(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v15 = *a2;
  v16 = v3;
  v14 = *a3;
  v19 = a1;
  v20[0] = &v15;
  v20[1] = &v14;
  sub_10012A000(v20, &v16, &v17, &v18, &v28);
  mlir::Type::getContext(&v19);
  v21 = v23;
  v22 = 0x600000000;
  v4 = v29;
  if (v29)
  {
    if (v29 < 7)
    {
      v6 = v23;
      v5 = v29;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v29, 8);
      v5 = v29;
      if (!v29)
      {
LABEL_7:
        LODWORD(v22) = v4;
        goto LABEL_8;
      }

      v6 = v21;
    }

    memcpy(v6, v28, 8 * v5);
    goto LABEL_7;
  }

LABEL_8:
  v7 = v31;
  v8 = v33;
  v24 = v31;
  v25 = v27;
  v26 = xmmword_1002B0190;
  if (!v33)
  {
    v11 = v27;
    goto LABEL_16;
  }

  if (v33 < 0x29)
  {
    v10 = v27;
    v9 = v33;
    goto LABEL_14;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v25, v27, v33, 1);
  v9 = v33;
  if (v33)
  {
    v10 = v25;
LABEL_14:
    memcpy(v10, v32, v9);
  }

  *&v26 = v8;
  v4 = v22;
  v7 = v24;
  v11 = v25;
LABEL_16:
  v12 = mlir::VectorType::get(v21, v4, v7, v11, v8);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v32 != &v34)
  {
    free(v32);
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  return v12;
}

void sub_10012A000(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  sub_100109374(*a2, *(a2 + 8), &__src);
  v11 = a1[1];
  if (*a3)
  {
    v12 = *v11;
    *v11 = vaddq_s64(*v11, xmmword_1002B0E70);
    v13 = *v12.i64[0];
  }

  else
  {
    v13 = 0;
  }

  v14 = *a1;
  sub_10012A214(*a4, *(a4 + 8), &v21);
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v15 = v26;
  if (v26 && &__src != a5)
  {
    if (__src == v28)
    {
      v17 = v26;
      if (v26 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v26, 8), (v17 = v26) != 0))
      {
        memcpy(*a5, __src, 8 * v17);
      }

      *(a5 + 8) = v15;
    }

    else
    {
      *a5 = __src;
      v16 = v27;
      *(a5 + 8) = v15;
      *(a5 + 12) = v16;
      __src = v28;
      v27 = 0;
    }

    v26 = 0;
  }

  *(a5 + 72) = a5 + 96;
  *(a5 + 64) = v13;
  *(a5 + 80) = xmmword_1002B0190;
  v18 = v21;
  if ((a5 + 72) != &v21)
  {
    v19 = v22;
    if (v22)
    {
      if (v21 != v24)
      {
        *(a5 + 72) = v21;
        *(a5 + 80) = v19;
        *(a5 + 88) = v23;
        goto LABEL_23;
      }

      v20 = v22;
      if (v22 < 0x29 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(a5 + 72, (a5 + 96), v22, 1), v18 = v21, (v20 = v22) != 0))
      {
        memcpy(*(a5 + 72), v18, v20);
        v18 = v21;
      }

      *(a5 + 80) = v19;
      v22 = 0;
    }
  }

  if (v18 != v24)
  {
    free(v18);
  }

LABEL_23:
  if (__src != v28)
  {
    free(__src);
  }
}

void sub_10012A214(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = v17;
  v3 = xmmword_1002B0190;
  v16 = xmmword_1002B0190;
  if (a2)
  {
    do
    {
      while (1)
      {
        v4 = v16;
        if (v16 >= *(&v16 + 1))
        {
          break;
        }

        v5 = *a1++;
        *(v15 + v16) = v5;
        *&v16 = v4 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v6 = a1;
      v7 = a2;
      v8 = a3;
      v14 = v3;
      sub_1000E59BC(&v15, a1);
      v3 = v14;
      a3 = v8;
      a1 = v6 + 1;
      a2 = v7 - 1;
    }

    while (v7 != 1);
LABEL_6:
    v9 = v15;
    v10 = v16;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v10 && &v15 != a3)
    {
      if (v9 != v17)
      {
        *a3 = v9;
        *(a3 + 8) = v10;
        *(a3 + 16) = *(&v16 + 1);
        return;
      }

      v11 = v10;
      if (v10 < 0x29 || (v12 = a3, llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, (a3 + 24), v10, 1), a3 = v12, v9 = v15, (v11 = v16) != 0))
      {
        v13 = a3;
        memcpy(*a3, v9, v11);
        a3 = v13;
        v9 = v15;
      }

      *(a3 + 8) = v10;
      *&v16 = 0;
    }

    if (v9 != v17)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_1002B0190;
  }
}

BOOL sub_10012A38C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t sub_10012A418(uint64_t a1, void *a2)
{
  v3 = sub_10012A468(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_10012A468(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 3);
  v5 = a2[5];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v9 + v8 <= a1[1]))
    {
      *a1 = v9 + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = v9;
        v12 = v7;
        if (v9 - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (v9 + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
          v16 = (v9 + 16);
          v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 4;
          }

          while (v17);
          if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_14;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      v19 = a1;
      v25 = v4;
      v20 = sub_10003E4AC(a1, 8 * v2, 8 * v2, 3);
      v4 = v25;
      v9 = v20;
      a1 = v19;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = v9;
    v12 = v7;
    do
    {
LABEL_13:
      v21 = *v12++;
      *v11++ = v21;
    }

    while (v12 != (v7 + 8 * v2));
LABEL_14:
    v6 = *a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  a1[10] += 56;
  if (v6 && (v22 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v22 + 56 <= a1[1]))
  {
    *a1 = v22 + 56;
  }

  else
  {
    v26 = v4;
    v24 = sub_10003E4AC(a1, 56, 56, 3);
    v4 = v26;
    v22 = v24;
  }

  *v22 = 0;
  *(v22 + 8) = v9;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  *(v22 + 32) = v4;
  *(v22 + 48) = v5;
  return v22;
}

uint64_t sub_10012A60C(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ShapedType::cloneWith(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  return v5(v3, v4, &v7, a3);
}

uint64_t mlir::FloatType::getWidth(mlir::FloatType *this)
{
  v1 = (**(this + 1))(*(this + 1), *this);

  return llvm::APFloatBase::semanticsSizeInBits(v1);
}

uint64_t mlir::ShapedType::getNumElements(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v2)
    {
      v3 = v2 + 1;
      v4 = (v2 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v5 = &a1[v4];
      v6 = a1 + 1;
      v7 = 1;
      v8 = v4;
      v9 = 1;
      do
      {
        v7 *= *(v6 - 1);
        v9 *= *v6;
        v6 += 2;
        v8 -= 2;
      }

      while (v8);
      v10 = v9 * v7;
      if (v3 == v4)
      {
        return v10;
      }
    }

    else
    {
      v10 = 1;
      v5 = a1;
    }

    do
    {
      v12 = *v5++;
      v10 *= v12;
    }

    while (v5 != &a1[a2]);
    return v10;
  }

  return 1;
}

uint64_t mlir::DiagnosticArgument::DiagnosticArgument(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  return result;
}

{
  *result = 4;
  *(result + 8) = a2;
  return result;
}

void mlir::DiagnosticArgument::print(mlir::DiagnosticArgument *this, llvm::raw_ostream *a2)
{
  v2 = *this;
  if (*this > 2)
  {
    switch(v2)
    {
      case 3:
        v6 = *(this + 1);
        v5 = *(this + 2);
        v7 = *(a2 + 4);
        if (v5 <= *(a2 + 3) - v7)
        {
          if (v5)
          {
            v10 = a2;
            v11 = v5;
            memcpy(v7, v6, v5);
            *(v10 + 4) += v11;
          }
        }

        else
        {

          llvm::raw_ostream::write(a2, v6, v5);
        }

        break;
      case 4:
        v9 = *(a2 + 4);
        if (v9 >= *(a2 + 3))
        {
          v12 = this;
          a2 = llvm::raw_ostream::write(a2, 39);
          this = v12;
        }

        else
        {
          *(a2 + 4) = v9 + 1;
          *v9 = 39;
        }

        v15 = *(this + 1);
        v13 = a2;
        mlir::Type::print(&v15, a2);
        v14 = *(v13 + 4);
        if (v14 >= *(v13 + 3))
        {
          llvm::raw_ostream::write(v13, 39);
        }

        else
        {
          *(v13 + 4) = v14 + 1;
          *v14 = 39;
        }

        break;
      case 5:
        v4 = *(this + 1);

        llvm::raw_ostream::operator<<(a2, v4);
        break;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v8 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v8);
    }

    else if (v2 == 2)
    {
      v3 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v3);
    }
  }

  else
  {
    v15 = *(this + 1);
    mlir::Attribute::print(&v15, a2);
  }
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, char a2)
{
  v13 = 264;
  LOBYTE(v12) = a2;
  v3 = sub_10012AC7C(&v12);
  v4 = *(a1 + 16);
  v14 = 3;
  v15 = v3;
  v16 = v5;
  v6 = *(a1 + 24);
  v7 = &v14;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v14 && v4 + 24 * v6 > &v14)
    {
      v11 = &v14 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v14;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, void ***a2)
{
  v3 = sub_10012AC7C(a2);
  v4 = *(a1 + 16);
  v12 = 3;
  v13 = v3;
  v14 = v5;
  v6 = *(a1 + 24);
  v7 = &v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v12 && v4 + 24 * v6 > &v12)
    {
      v11 = &v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

{
  v3 = sub_10012AC7C(a2);
  v4 = *(a1 + 16);
  v12 = 3;
  v13 = v3;
  v14 = v5;
  v6 = *(a1 + 24);
  v7 = &v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v12 && v4 + 24 * v6 > &v12)
    {
      v11 = &v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

void **sub_10012AC7C(void ***a1)
{
  v9 = v11;
  v10 = xmmword_1002B02A0;
  if (*(a1 + 33) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 > 4)
    {
      if (v1 - 5 < 2)
      {
        v3 = *a1;
        v6 = a1[1];
        v5 = v11;
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      switch(v1)
      {
        case 1u:
          return 0;
        case 3u:
          v3 = *a1;
          if (!*a1)
          {
            return v3;
          }

          v8 = strlen(*a1);
          v5 = v11;
          if (!v8)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        case 4u:
          v2 = *(*a1 + 23);
          if (v2 >= 0)
          {
            v3 = *a1;
          }

          else
          {
            v3 = **a1;
          }

          if (v2 >= 0)
          {
            v4 = *(*a1 + 23);
          }

          else
          {
            v4 = (*a1)[1];
          }

          v5 = v11;
          if (!v4)
          {
            goto LABEL_19;
          }

LABEL_18:
          operator new[]();
      }
    }
  }

  llvm::Twine::toVector(a1, &v9);
  v5 = v9;
  v3 = v9;
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v5 != v11)
  {
    free(v5);
  }

  return v3;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10 = 0;
  v11 = a2;
  v3 = *(a1 + 24);
  v4 = &v10;
  if (v3 >= *(a1 + 28))
  {
    if (v2 <= &v10 && v2 + 24 * v3 > &v10)
    {
      v8 = &v10 - v2;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v3 + 1, 24);
      a1 = v9;
      v2 = *(v9 + 16);
      v4 = &v8[v2];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v3 + 1, 24);
      a1 = v7;
      v2 = *(v7 + 16);
      v4 = &v10;
    }
  }

  v5 = (v2 + 24 * *(a1 + 24));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 24);
  return result;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v12[0] = *(a2 + 8);
  Value = mlir::StringAttr::getValue(v12);
  v4 = *(a1 + 16);
  LODWORD(v12[0]) = 3;
  v12[1] = Value;
  v12[2] = v5;
  v6 = *(a1 + 24);
  v7 = v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= v12 && v4 + 24 * v6 > v12)
    {
      v11 = v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

{
  v28 = 0;
  v29 = a2;
  v27[0] = 0;
  v27[1] = 0;
  v20 = 0;
  v24 = 0;
  v25 = 1;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v19 = &off_1002D49D0;
  v26 = v27;
  llvm::raw_ostream::SetBufferAndMode(&v19, 0, 0, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(&v14);
  v3 = *(a1 + 8);
  mlir::OpPrintingFlags::useLocalScope(&v14, 1);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v14, 16);
  if (v3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v14, 1);
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  mlir::Value::print(&v29, &v19, v17);
  LOWORD(v18) = 260;
  *&v17[0] = v27;
  v4 = sub_10012AC7C(v17);
  v5 = a1 + 16;
  v6 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = v4;
  *&v15 = v7;
  v8 = *(a1 + 24);
  v9 = &v14;
  if (v8 >= *(a1 + 28))
  {
    if (v6 <= &v14 && v6 + 24 * v8 > &v14)
    {
      v13 = &v14 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v13[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v14;
    }
  }

  v10 = v6 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  llvm::raw_ostream::~raw_ostream(&v19);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return a1;
}

void mlir::Diagnostic::appendOp(mlir::Diagnostic *this, mlir::Operation *a2, const mlir::OpPrintingFlags *a3)
{
  memset(&v19, 0, sizeof(v19));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &off_1002D49D0;
  v18 = &v19;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = *(a3 + 1);
  v7 = *a3;
  v8 = v6;
  v9 = *(a3 + 2);
  LODWORD(a3) = *(this + 2);
  mlir::OpPrintingFlags::useLocalScope(&v7, 1);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v7, 16);
  if (a3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v7, 1);
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  mlir::Operation::print(a2, &v11, v10);
}

void mlir::Diagnostic::attachNote(uint64_t *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = *a1;
  }

  operator new();
}

void mlir::InFlightDiagnostic::report(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::detail::DiagnosticEngineImpl::emit(**this, this + 1);
    *this = 0;
  }

  if (*(this + 200) == 1)
  {
    sub_10005BE10(this + 1);
    *(this + 200) = 0;
  }
}

void mlir::detail::DiagnosticEngineImpl::emit(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(a1);
  v5 = *(a1 + 120);
  v6 = *(a1 + 112) + 40 * v5;
  v7 = (v6 - 32);
  v8 = -40 * v5;
  while (v8)
  {
    v9 = *(v6 - 8);
    if ((v9 & 2) == 0)
    {
      v10 = *v7;
    }

    v6 -= 40;
    v4 = (*(v9 & 0xFFFFFFFFFFFFFFF8))();
    v7 -= 5;
    v8 += 40;
    if (v4)
    {
      goto LABEL_22;
    }
  }

  if (*(a2 + 2) != 2)
  {
    goto LABEL_22;
  }

  v11 = llvm::errs(v4);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_10:
    v13 = *(v11 + 4);
    if (*(v11 + 3) - v13 <= 6uLL)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v18 = *a2;
  mlir::Attribute::print(&v18, v11);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 <= 1uLL)
  {
    llvm::raw_ostream::write(v11, ": ", 2uLL);
    goto LABEL_10;
  }

  *v12 = 8250;
  *(v11 + 4) += 2;
  v13 = *(v11 + 4);
  if (*(v11 + 3) - v13 <= 6uLL)
  {
LABEL_11:
    llvm::raw_ostream::write(v11, "error: ", 7uLL);
    v14 = *(a2 + 6);
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = a2[2];
    v16 = 24 * v14;
    do
    {
      mlir::DiagnosticArgument::print(v15, v11);
      v15 = (v15 + 24);
      v16 -= 24;
    }

    while (v16);
    goto LABEL_17;
  }

LABEL_14:
  *(v13 + 3) = 540701295;
  *v13 = 1869771365;
  *(v11 + 4) += 7;
  v14 = *(a2 + 6);
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_17:
  v17 = *(v11 + 4);
  if (v17 < *(v11 + 3))
  {
    *(v11 + 4) = v17 + 1;
    *v17 = 10;
    if (*(v11 + 4) == *(v11 + 2))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  llvm::raw_ostream::write(v11, 10);
  if (*(v11 + 4) != *(v11 + 2))
  {
LABEL_21:
    llvm::raw_ostream::flush_nonempty(v11);
  }

LABEL_22:
  std::recursive_mutex::unlock(a1);
}

void mlir::DiagnosticEngine::~DiagnosticEngine(std::recursive_mutex **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_10012F150(this, v1);
  }
}

uint64_t mlir::DiagnosticEngine::registerHandler(std::recursive_mutex **a1, __int128 *a2)
{
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v6 = *&(*a1)[3].__m_.__opaque[8];
  *&v5[3].__m_.__opaque[8] = v6 + 1;
  v7 = *(a2 + 3);
  v11 = v6;
  v14 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 2) != 0 && (v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 8))(&v12, a2);
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v12 = *a2;
      v13 = *(a2 + 2);
    }

    *(a2 + 3) = 0;
  }

  sub_10012F244(v5[1].__m_.__opaque, &v11, &v12);
  v8 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
    }

    if ((v8 & 2) == 0)
    {
      llvm::deallocate_buffer(v12, *(&v12 + 1), v13);
    }
  }

  std::recursive_mutex::unlock(v4);
  return v6;
}

void mlir::DiagnosticEngine::eraseHandler(std::recursive_mutex **this, uint64_t a2)
{
  v4 = *this;
  std::recursive_mutex::lock(*this);
  v5 = *this;
  v6 = *(*this)[1].__m_.__opaque;
  if (v6)
  {
    v7 = &v5[1].__m_.__opaque[8];
    v8 = 2;
  }

  else
  {
    v7 = *&v5[1].__m_.__opaque[8];
    v8 = *&v5[1].__m_.__opaque[16];
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
LABEL_4:
      v11 = &v7[16 * v10];
      v12 = &v7[16 * v9];
      goto LABEL_17;
    }
  }

  v13 = v8 - 1;
  v14 = (v8 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v15 = *&v7[16 * v14];
  if (v15 == a2)
  {
LABEL_7:
    v11 = &v7[16 * v14];
    if ((v6 & 1) == 0)
    {
      v12 = *&v5[1].__m_.__opaque[8] + 16 * *&v5[1].__m_.__opaque[16];
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 1;
    while (v15 != -1)
    {
      v17 = v14 + v16++;
      v14 = v17 & v13;
      v15 = *&v7[16 * v14];
      if (v15 == a2)
      {
        goto LABEL_7;
      }
    }

    if ((v6 & 1) == 0)
    {
      v7 = *&v5[1].__m_.__opaque[8];
      v9 = *&v5[1].__m_.__opaque[16];
      v10 = v9;
      goto LABEL_4;
    }

    v11 = &v5[1].__m_.__opaque[40];
  }

  v12 = &v5[1].__m_.__opaque[40];
LABEL_17:
  v18 = v11 == v12;
  v19 = &v5[1].__m_.__opaque[48];
  if (!v18)
  {
    v19 = v11 + 8;
  }

  v20 = *v19;
  if (v20 != *&v5[1].__m_.__opaque[48])
  {
    sub_10012FD14((*this)[1].__m_.__opaque, (*&v5[1].__m_.__opaque[40] + 40 * v20));
  }

  std::recursive_mutex::unlock(v4);
}

void sub_10012BB9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
  v9 = v31;
  *a1 = DiagEngine;
  *(a1 + 8) = v9;
  *(a1 + 16) = a3;
  *(a1 + 24) = a1 + 40;
  v10 = (a1 + 24);
  *(a1 + 136) = 0u;
  *(a1 + 32) = 0x400000000;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0;
  if (*(a4 + 32) >= 2u)
  {
    LODWORD(v20) = 3;
    v21 = sub_10012AC7C(a4);
    v22 = v11;
    v12 = *(a1 + 32);
    v13 = *(a1 + 24);
    v14 = &v20;
    if (v12 >= *(a1 + 36))
    {
      if (v13 <= &v20 && v13 + 24 * v12 > &v20)
      {
        v19 = &v20 - v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v12 + 1, 24);
        v13 = *v10;
        v14 = &v19[*v10];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v12 + 1, 24);
        v13 = *v10;
        v14 = &v20;
      }
    }

    v15 = v13 + 24 * *(a1 + 32);
    v16 = *v14;
    *(v15 + 16) = v14[2];
    *v15 = v16;
    ++*(a1 + 32);
  }

  if (mlir::MLIRContext::shouldPrintStackTraceOnDiagnostic(Context))
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v21) = 0;
    v25 = 0;
    v26 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = &off_1002D49D0;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
    llvm::sys::PrintStackTrace(&v20, 0);
    llvm::raw_ostream::~raw_ostream(&v20);
    v17 = HIBYTE(v30);
    if (v30 < 0)
    {
      v17 = v29;
    }

    if (v17)
    {
      v18 = *(a1 + 8);
      operator new();
    }

    if (v30 < 0)
    {
      operator delete(__p);
    }
  }
}