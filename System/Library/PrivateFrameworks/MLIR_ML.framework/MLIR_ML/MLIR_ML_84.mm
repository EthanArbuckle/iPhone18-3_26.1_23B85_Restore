void *mlir::mps::PoolIndicesModeAttr::print(mlir::mps::PoolIndicesModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 3)
    {
LABEL_3:
      if (v6 <= 1)
      {
        if (!v6)
        {
          v7 = 0;
          v8 = "Global_Flatten1D";
          v9 = 16;
          goto LABEL_23;
        }

        if (v6 == 1)
        {
          v7 = 0;
          v8 = "Global_Flatten2D";
          v9 = 16;
          goto LABEL_23;
        }

LABEL_22:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_23;
      }

      v7 = 0;
      if (v6 == 2)
      {
        v8 = "Global_Flatten3D";
      }

      else
      {
        v8 = "Global_Flatten4D";
      }

      v9 = 16;
      goto LABEL_23;
    }
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v7 = 0;
      v8 = "Local_Flatten3D";
      v9 = 15;
      goto LABEL_23;
    }

    if (v6 == 7)
    {
      v7 = 0;
      v8 = "Local_Flatten4D";
      v9 = 15;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = 0;
  if (v6 == 4)
  {
    v8 = "Local_Flatten1D";
  }

  else
  {
    v8 = "Local_Flatten2D";
  }

  v9 = 15;
LABEL_23:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::RNNActivationAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::RNNActivationAttr::parse(mlir::AsmParser *a1)
{
  v95 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v70 = 0;
    v71 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v70))
    {
LABEL_55:
      v59 = (*(*a1 + 40))(a1);
      LOWORD(v86) = 259;
      (*(*a1 + 24))(v75, a1, v59, v84);
      if (v75[0])
      {
        mlir::InFlightDiagnostic::report(v75);
      }

      if (v83 == 1)
      {
        if (v82 != &v83)
        {
          free(v82);
        }

        v60 = v80;
        if (v80)
        {
          v61 = v81;
          v62 = v80;
          if (v81 != v80)
          {
            do
            {
              v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
            }

            while (v61 != v60);
            v62 = v80;
          }

          v81 = v60;
          operator delete(v62);
        }

        v63 = v78;
        if (v78)
        {
          v64 = v79;
          v65 = v78;
          if (v79 != v78)
          {
            do
            {
              v67 = *--v64;
              v66 = v67;
              *v64 = 0;
              if (v67)
              {
                MEMORY[0x259C63150](v66, 0x1000C8077774924);
              }
            }

            while (v64 != v63);
            v65 = v78;
          }

          v79 = v63;
          operator delete(v65);
        }

        if (v76 != &v77)
        {
          free(v76);
        }
      }

      return 0;
    }

    v3 = mlir::mps::symbolizeRNNActivation(v70, v71);
    if ((v3 & 0x100000000) == 0)
    {
      v69 = 257;
      (*(*a1 + 24))(v84, a1, v2, v68);
      if (v84[0])
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = "expected ";
        v73 = 9;
        if (v86 >= v87)
        {
          if (v85 > &v72 || v85 + 24 * v86 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v4 = v85 + 24 * v86;
        v5 = v72;
        *(v4 + 2) = v73;
        *v4 = v5;
        v6 = ++v86;
        if (v84[0])
        {
          LODWORD(v72) = 3;
          *(&v72 + 1) = "::mlir::mps::RNNActivation";
          v73 = 26;
          if (v6 >= v87)
          {
            if (v85 > &v72 || v85 + 24 * v6 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v85 + 24 * v86;
          v8 = v72;
          *(v7 + 2) = v73;
          *v7 = v8;
          v9 = ++v86;
          if (v84[0])
          {
            LODWORD(v72) = 3;
            *(&v72 + 1) = " to be one of: ";
            v73 = 15;
            if (v9 >= v87)
            {
              if (v85 > &v72 || v85 + 24 * v9 <= &v72)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v10 = v85 + 24 * v86;
            v11 = v72;
            *(v10 + 2) = v73;
            *v10 = v11;
            v12 = ++v86;
            if (v84[0])
            {
              LODWORD(v72) = 3;
              *(&v72 + 1) = "none";
              v73 = 4;
              if (v12 >= v87)
              {
                if (v85 > &v72 || v85 + 24 * v12 <= &v72)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v13 = v85 + 24 * v86;
              v14 = v72;
              *(v13 + 2) = v73;
              *v13 = v14;
              v15 = ++v86;
              if (v84[0])
              {
                LODWORD(v72) = 3;
                *(&v72 + 1) = ", ";
                v73 = 2;
                if (v15 >= v87)
                {
                  if (v85 > &v72 || v85 + 24 * v15 <= &v72)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v16 = v85 + 24 * v86;
                v17 = v72;
                *(v16 + 2) = v73;
                *v16 = v17;
                v18 = ++v86;
                if (v84[0])
                {
                  LODWORD(v72) = 3;
                  *(&v72 + 1) = "relu";
                  v73 = 4;
                  if (v18 >= v87)
                  {
                    if (v85 > &v72 || v85 + 24 * v18 <= &v72)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v19 = v85 + 24 * v86;
                  v20 = v72;
                  *(v19 + 2) = v73;
                  *v19 = v20;
                  v21 = ++v86;
                  if (v84[0])
                  {
                    LODWORD(v72) = 3;
                    *(&v72 + 1) = ", ";
                    v73 = 2;
                    if (v21 >= v87)
                    {
                      if (v85 > &v72 || v85 + 24 * v21 <= &v72)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v22 = v85 + 24 * v86;
                    v23 = v72;
                    *(v22 + 2) = v73;
                    *v22 = v23;
                    v24 = ++v86;
                    if (v84[0])
                    {
                      LODWORD(v72) = 3;
                      *(&v72 + 1) = "tanh";
                      v73 = 4;
                      if (v24 >= v87)
                      {
                        if (v85 > &v72 || v85 + 24 * v24 <= &v72)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v25 = v85 + 24 * v86;
                      v26 = v72;
                      *(v25 + 2) = v73;
                      *v25 = v26;
                      v27 = ++v86;
                      if (v84[0])
                      {
                        LODWORD(v72) = 3;
                        *(&v72 + 1) = ", ";
                        v73 = 2;
                        if (v27 >= v87)
                        {
                          if (v85 > &v72 || v85 + 24 * v27 <= &v72)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v28 = v85 + 24 * v86;
                        v29 = v72;
                        *(v28 + 2) = v73;
                        *v28 = v29;
                        v30 = ++v86;
                        if (v84[0])
                        {
                          LODWORD(v72) = 3;
                          *(&v72 + 1) = "sigmoid";
                          v73 = 7;
                          if (v30 >= v87)
                          {
                            if (v85 > &v72 || v85 + 24 * v30 <= &v72)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v31 = v85 + 24 * v86;
                          v32 = v72;
                          *(v31 + 2) = v73;
                          *v31 = v32;
                          v33 = ++v86;
                          if (v84[0])
                          {
                            LODWORD(v72) = 3;
                            *(&v72 + 1) = ", ";
                            v73 = 2;
                            if (v33 >= v87)
                            {
                              if (v85 > &v72 || v85 + 24 * v33 <= &v72)
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            v34 = v85 + 24 * v86;
                            v35 = v72;
                            *(v34 + 2) = v73;
                            *v34 = v35;
                            v36 = ++v86;
                            if (v84[0])
                            {
                              LODWORD(v72) = 3;
                              *(&v72 + 1) = "hard_sigmoid";
                              v73 = 12;
                              if (v36 >= v87)
                              {
                                if (v85 > &v72 || v85 + 24 * v36 <= &v72)
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              v37 = v85 + 24 * v86;
                              v38 = v72;
                              *(v37 + 2) = v73;
                              *v37 = v38;
                              v39 = ++v86;
                              if (v84[0])
                              {
                                LODWORD(v72) = 3;
                                *(&v72 + 1) = ", ";
                                v73 = 2;
                                if (v39 >= v87)
                                {
                                  if (v85 > &v72 || v85 + 24 * v39 <= &v72)
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                v40 = v85 + 24 * v86;
                                v41 = v72;
                                *(v40 + 2) = v73;
                                *v40 = v41;
                                v42 = ++v86;
                                if (v84[0])
                                {
                                  LODWORD(v72) = 3;
                                  *(&v72 + 1) = "scaled_tanh";
                                  v73 = 11;
                                  if (v42 >= v87)
                                  {
                                    if (v85 > &v72 || v85 + 24 * v42 <= &v72)
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  v43 = v85 + 24 * v86;
                                  v44 = v72;
                                  *(v43 + 2) = v73;
                                  *v43 = v44;
                                  ++v86;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v84);
      if (v84[0])
      {
        mlir::InFlightDiagnostic::report(v84);
      }

      if (v94 == 1)
      {
        if (v93 != &v94)
        {
          free(v93);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v92;
          v47 = __p;
          if (v92 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v92 = v45;
          operator delete(v47);
        }

        v48 = v89;
        if (v89)
        {
          v49 = v90;
          v50 = v89;
          if (v90 != v89)
          {
            do
            {
              v52 = *--v49;
              v51 = v52;
              *v49 = 0;
              if (v52)
              {
                MEMORY[0x259C63150](v51, 0x1000C8077774924);
              }
            }

            while (v49 != v48);
            v50 = v89;
          }

          v90 = v48;
          operator delete(v50);
        }

        if (v85 != &v88)
        {
          free(v85);
        }
      }

      goto LABEL_55;
    }

    v53 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v72 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
      *(&v72 + 1) = Context;
      v84[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v84[1] = &v72;
      v74 = v53;
      v56 = 0x9DDFEA08EB382D69 * (((8 * v53) | 4) ^ v53 ^ 0xFF51AFD7ED558CCDLL);
      v57 = 0x9DDFEA08EB382D69 * (v53 ^ 0xFF51AFD7ED558CCDLL ^ (v56 >> 47) ^ v56);
      v70 = &v74;
      v68[0] = &v74;
      v68[1] = v84;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v57 >> 47) ^ v57), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v70, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v68);
    }
  }

  return 0;
}

void *mlir::mps::RNNActivationAttr::print(mlir::mps::RNNActivationAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 2)
    {
LABEL_3:
      if (!v6)
      {
        v7 = 0;
        v8 = "none";
        v9 = 4;
        goto LABEL_17;
      }

      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v7 = 0;
          v8 = "tanh";
          v9 = 4;
          goto LABEL_17;
        }

LABEL_14:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_17;
      }

      v7 = 0;
      v8 = "relu";
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6 == 3)
  {
    v7 = 0;
    v8 = "sigmoid";
    v9 = 7;
    goto LABEL_17;
  }

  if (v6 != 4)
  {
    if (v6 == 5)
    {
      v7 = 0;
      v8 = "scaled_tanh";
      v9 = 11;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = "hard_sigmoid";
  v9 = 12;
LABEL_17:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::LSTMGateLayoutAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::LSTMGateLayoutAttr::parse(mlir::AsmParser *a1)
{
  v82 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v57 = 0;
    v58 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v57))
    {
LABEL_51:
      v41 = (*(*a1 + 40))(a1);
      LOWORD(v73) = 259;
      (*(*a1 + 24))(v62, a1, v41, v71);
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }

      if (v70 == 1)
      {
        if (v69 != &v70)
        {
          free(v69);
        }

        v42 = v67;
        if (v67)
        {
          v43 = v68;
          v44 = v67;
          if (v68 != v67)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = v67;
          }

          v68 = v42;
          operator delete(v44);
        }

        v45 = v65;
        if (v65)
        {
          v46 = v66;
          v47 = v65;
          if (v66 != v65)
          {
            do
            {
              v49 = *--v46;
              v48 = v49;
              *v46 = 0;
              if (v49)
              {
                MEMORY[0x259C63150](v48, 0x1000C8077774924);
              }
            }

            while (v46 != v45);
            v47 = v65;
          }

          v66 = v45;
          operator delete(v47);
        }

        if (v63 != &v64)
        {
          free(v63);
        }
      }

      return 0;
    }

    if (v58 != 4)
    {
LABEL_8:
      v56 = 257;
      (*(*a1 + 24))(v71, a1, v2, v55);
      if (v71[0])
      {
        LODWORD(v59) = 3;
        *(&v59 + 1) = "expected ";
        v60 = 9;
        if (v73 >= v74)
        {
          if (v72 > &v59 || v72 + 24 * v73 <= &v59)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v3 = v72 + 24 * v73;
        v4 = v59;
        *(v3 + 2) = v60;
        *v3 = v4;
        v5 = ++v73;
        if (v71[0])
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = "::mlir::mps::LSTMGateLayout";
          v60 = 27;
          if (v5 >= v74)
          {
            if (v72 > &v59 || v72 + 24 * v5 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v72 + 24 * v73;
          v7 = v59;
          *(v6 + 2) = v60;
          *v6 = v7;
          v8 = ++v73;
          if (v71[0])
          {
            LODWORD(v59) = 3;
            *(&v59 + 1) = " to be one of: ";
            v60 = 15;
            if (v8 >= v74)
            {
              if (v72 > &v59 || v72 + 24 * v8 <= &v59)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v9 = v72 + 24 * v73;
            v10 = v59;
            *(v9 + 2) = v60;
            *v9 = v10;
            v11 = ++v73;
            if (v71[0])
            {
              LODWORD(v59) = 3;
              *(&v59 + 1) = "IFZO";
              v60 = 4;
              if (v11 >= v74)
              {
                if (v72 > &v59 || v72 + 24 * v11 <= &v59)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v12 = v72 + 24 * v73;
              v13 = v59;
              *(v12 + 2) = v60;
              *v12 = v13;
              v14 = ++v73;
              if (v71[0])
              {
                LODWORD(v59) = 3;
                *(&v59 + 1) = ", ";
                v60 = 2;
                if (v14 >= v74)
                {
                  if (v72 > &v59 || v72 + 24 * v14 <= &v59)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v15 = v72 + 24 * v73;
                v16 = v59;
                *(v15 + 2) = v60;
                *v15 = v16;
                v17 = ++v73;
                if (v71[0])
                {
                  LODWORD(v59) = 3;
                  *(&v59 + 1) = "IZFO";
                  v60 = 4;
                  if (v17 >= v74)
                  {
                    if (v72 > &v59 || v72 + 24 * v17 <= &v59)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v18 = v72 + 24 * v73;
                  v19 = v59;
                  *(v18 + 2) = v60;
                  *v18 = v19;
                  v20 = ++v73;
                  if (v71[0])
                  {
                    LODWORD(v59) = 3;
                    *(&v59 + 1) = ", ";
                    v60 = 2;
                    if (v20 >= v74)
                    {
                      if (v72 > &v59 || v72 + 24 * v20 <= &v59)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v21 = v72 + 24 * v73;
                    v22 = v59;
                    *(v21 + 2) = v60;
                    *v21 = v22;
                    v23 = ++v73;
                    if (v71[0])
                    {
                      LODWORD(v59) = 3;
                      *(&v59 + 1) = "IFOZ";
                      v60 = 4;
                      if (v23 >= v74)
                      {
                        if (v72 > &v59 || v72 + 24 * v23 <= &v59)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v24 = v72 + 24 * v73;
                      v25 = v59;
                      *(v24 + 2) = v60;
                      *v24 = v25;
                      v26 = ++v73;
                      if (v71[0])
                      {
                        LODWORD(v59) = 3;
                        *(&v59 + 1) = ", ";
                        v60 = 2;
                        if (v26 >= v74)
                        {
                          if (v72 > &v59 || v72 + 24 * v26 <= &v59)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v27 = v72 + 24 * v73;
                        v28 = v59;
                        *(v27 + 2) = v60;
                        *v27 = v28;
                        v29 = ++v73;
                        if (v71[0])
                        {
                          LODWORD(v59) = 3;
                          *(&v59 + 1) = "IOFZ";
                          v60 = 4;
                          if (v29 >= v74)
                          {
                            if (v72 > &v59 || v72 + 24 * v29 <= &v59)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v30 = v72 + 24 * v73;
                          v31 = v59;
                          *(v30 + 2) = v60;
                          *v30 = v31;
                          ++v73;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
      if (v71[0])
      {
        mlir::InFlightDiagnostic::report(v71);
      }

      if (v81 == 1)
      {
        if (v80 != &v81)
        {
          free(v80);
        }

        v32 = __p;
        if (__p)
        {
          v33 = v79;
          v34 = __p;
          if (v79 != __p)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = __p;
          }

          v79 = v32;
          operator delete(v34);
        }

        v35 = v76;
        if (v76)
        {
          v36 = v77;
          v37 = v76;
          if (v77 != v76)
          {
            do
            {
              v39 = *--v36;
              v38 = v39;
              *v36 = 0;
              if (v39)
              {
                MEMORY[0x259C63150](v38, 0x1000C8077774924);
              }
            }

            while (v36 != v35);
            v37 = v76;
          }

          v77 = v35;
          operator delete(v37);
        }

        if (v72 != &v75)
        {
          free(v72);
        }
      }

      goto LABEL_51;
    }

    switch(*v57)
    {
      case 0x4F5A4649u:
        v40 = 0;
        break;
      case 0x4F465A49u:
        v40 = 1;
        break;
      case 0x5A4F4649u:
        v40 = 2;
        break;
      case 0x5A464F49u:
        v40 = 3;
        break;
      default:
        goto LABEL_8;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v59 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
      *(&v59 + 1) = Context;
      v71[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v71[1] = &v59;
      v61 = v40;
      v52 = v40 ^ 0xFF51AFD7ED558CCDLL;
      v53 = 0x9DDFEA08EB382D69 * (((8 * v40) | 4) ^ v52);
      v57 = &v61;
      v55[0] = &v61;
      v55[1] = v71;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v52 ^ (v53 >> 47) ^ v53)) >> 32) >> 15) ^ (-348639895 * (v52 ^ (v53 >> 47) ^ v53))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v57, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v55);
    }
  }

  return 0;
}

void *mlir::mps::LSTMGateLayoutAttr::print(mlir::mps::LSTMGateLayoutAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v6 == 2)
    {
      v7 = 0;
      v8 = "IFOZ";
      goto LABEL_13;
    }

    if (v6 == 3)
    {
      v7 = 0;
      v8 = "IOFZ";
      goto LABEL_13;
    }

LABEL_10:
    v9 = 0;
    v8 = "";
    v7 = 1;
    goto LABEL_14;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (v6 > 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!v6)
  {
    v7 = 0;
    v8 = "IFZO";
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = "IZFO";
LABEL_13:
  v9 = 4;
LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::GRUGateLayoutAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::GRUGateLayoutAttr::parse(mlir::AsmParser *a1)
{
  v79 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v54 = 0;
    v55 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v54))
    {
LABEL_55:
      v38 = (*(*a1 + 40))(a1);
      LOWORD(v70) = 259;
      (*(*a1 + 24))(v59, a1, v38, v68);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v39 = v64;
        if (v64)
        {
          v40 = v65;
          v41 = v64;
          if (v65 != v64)
          {
            do
            {
              v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
            }

            while (v40 != v39);
            v41 = v64;
          }

          v65 = v39;
          operator delete(v41);
        }

        v42 = v62;
        if (v62)
        {
          v43 = v63;
          v44 = v62;
          if (v63 != v62)
          {
            do
            {
              v46 = *--v43;
              v45 = v46;
              *v43 = 0;
              if (v46)
              {
                MEMORY[0x259C63150](v45, 0x1000C8077774924);
              }
            }

            while (v43 != v42);
            v44 = v62;
          }

          v63 = v42;
          operator delete(v44);
        }

        if (v60 != &v61)
        {
          free(v60);
        }
      }

      return 0;
    }

    if (v55 != 3)
    {
LABEL_16:
      v53 = 257;
      (*(*a1 + 24))(v68, a1, v2, v52);
      if (v68[0])
      {
        LODWORD(v56) = 3;
        *(&v56 + 1) = "expected ";
        v57 = 9;
        if (v70 >= v71)
        {
          if (v69 > &v56 || v69 + 24 * v70 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v6 = v69 + 24 * v70;
        v7 = v56;
        *(v6 + 2) = v57;
        *v6 = v7;
        v8 = ++v70;
        if (v68[0])
        {
          LODWORD(v56) = 3;
          *(&v56 + 1) = "::mlir::mps::GRUGateLayout";
          v57 = 26;
          if (v8 >= v71)
          {
            if (v69 > &v56 || v69 + 24 * v8 <= &v56)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v9 = v69 + 24 * v70;
          v10 = v56;
          *(v9 + 2) = v57;
          *v9 = v10;
          v11 = ++v70;
          if (v68[0])
          {
            LODWORD(v56) = 3;
            *(&v56 + 1) = " to be one of: ";
            v57 = 15;
            if (v11 >= v71)
            {
              if (v69 > &v56 || v69 + 24 * v11 <= &v56)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v12 = v69 + 24 * v70;
            v13 = v56;
            *(v12 + 2) = v57;
            *v12 = v13;
            v14 = ++v70;
            if (v68[0])
            {
              LODWORD(v56) = 3;
              *(&v56 + 1) = "ZRO";
              v57 = 3;
              if (v14 >= v71)
              {
                if (v69 > &v56 || v69 + 24 * v14 <= &v56)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v15 = v69 + 24 * v70;
              v16 = v56;
              *(v15 + 2) = v57;
              *v15 = v16;
              v17 = ++v70;
              if (v68[0])
              {
                LODWORD(v56) = 3;
                *(&v56 + 1) = ", ";
                v57 = 2;
                if (v17 >= v71)
                {
                  if (v69 > &v56 || v69 + 24 * v17 <= &v56)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v18 = v69 + 24 * v70;
                v19 = v56;
                *(v18 + 2) = v57;
                *v18 = v19;
                v20 = ++v70;
                if (v68[0])
                {
                  LODWORD(v56) = 3;
                  *(&v56 + 1) = "RZO";
                  v57 = 3;
                  if (v20 >= v71)
                  {
                    if (v69 > &v56 || v69 + 24 * v20 <= &v56)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v21 = v69 + 24 * v70;
                  v22 = v56;
                  *(v21 + 2) = v57;
                  *v21 = v22;
                  v23 = ++v70;
                  if (v68[0])
                  {
                    LODWORD(v56) = 3;
                    *(&v56 + 1) = ", ";
                    v57 = 2;
                    if (v23 >= v71)
                    {
                      if (v69 > &v56 || v69 + 24 * v23 <= &v56)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v24 = v69 + 24 * v70;
                    v25 = v56;
                    *(v24 + 2) = v57;
                    *v24 = v25;
                    v26 = ++v70;
                    if (v68[0])
                    {
                      LODWORD(v56) = 3;
                      *(&v56 + 1) = "ROZ";
                      v57 = 3;
                      if (v26 >= v71)
                      {
                        if (v69 > &v56 || v69 + 24 * v26 <= &v56)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v27 = v69 + 24 * v70;
                      v28 = v56;
                      *(v27 + 2) = v57;
                      *v27 = v28;
                      ++v70;
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
      if (v68[0])
      {
        mlir::InFlightDiagnostic::report(v68);
      }

      if (v78 == 1)
      {
        if (v77 != &v78)
        {
          free(v77);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v76;
          v31 = __p;
          if (v76 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v76 = v29;
          operator delete(v31);
        }

        v32 = v73;
        if (v73)
        {
          v33 = v74;
          v34 = v73;
          if (v74 != v73)
          {
            do
            {
              v36 = *--v33;
              v35 = v36;
              *v33 = 0;
              if (v36)
              {
                MEMORY[0x259C63150](v35, 0x1000C8077774924);
              }
            }

            while (v33 != v32);
            v34 = v73;
          }

          v74 = v32;
          operator delete(v34);
        }

        if (v69 != &v72)
        {
          free(v69);
        }
      }

      goto LABEL_55;
    }

    if (*v54 == 21082 && *(v54 + 2) == 79)
    {
      v37 = 0;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_80;
      }
    }

    else if (*v54 == 23122 && *(v54 + 2) == 79)
    {
      v37 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (*v54 != 20306 || *(v54 + 2) != 90)
      {
        goto LABEL_16;
      }

      v37 = 2;
      if ((*(*a1 + 168))(a1))
      {
LABEL_80:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        *&v56 = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
        *(&v56 + 1) = Context;
        v68[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
        v68[1] = &v56;
        v58 = v37;
        v50 = v37 ^ 0xFF51AFD7ED558CCDLL;
        v51 = 0x9DDFEA08EB382D69 * (((8 * v37) | 4) ^ v50);
        v54 = &v58;
        v52[0] = &v58;
        v52[1] = v68;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v50 ^ (v51 >> 47) ^ v51)) >> 32) >> 15) ^ (-348639895 * (v50 ^ (v51 >> 47) ^ v51))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v54, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v52);
      }
    }
  }

  return 0;
}

void *mlir::mps::GRUGateLayoutAttr::print(mlir::mps::GRUGateLayoutAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "ZRO";
LABEL_13:
    v8 = 3;
    goto LABEL_14;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "ROZ";
    goto LABEL_13;
  }

  v7 = v6 != 1;
  if (v6 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 1)
  {
    v9 = "RZO";
  }

  else
  {
    v9 = "";
  }

LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::StencilPaddingModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::StencilPaddingModeAttr::parse(mlir::AsmParser *a1)
{
  v101 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v76 = 0;
    v77 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v76))
    {
LABEL_59:
      v65 = (*(*a1 + 40))(a1);
      LOWORD(v92) = 259;
      (*(*a1 + 24))(v81, a1, v65, v90);
      if (v81[0])
      {
        mlir::InFlightDiagnostic::report(v81);
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
        }

        v66 = v86;
        if (v86)
        {
          v67 = v87;
          v68 = v86;
          if (v87 != v86)
          {
            do
            {
              v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
            }

            while (v67 != v66);
            v68 = v86;
          }

          v87 = v66;
          operator delete(v68);
        }

        v69 = v84;
        if (v84)
        {
          v70 = v85;
          v71 = v84;
          if (v85 != v84)
          {
            do
            {
              v73 = *--v70;
              v72 = v73;
              *v70 = 0;
              if (v73)
              {
                MEMORY[0x259C63150](v72, 0x1000C8077774924);
              }
            }

            while (v70 != v69);
            v71 = v84;
          }

          v85 = v69;
          operator delete(v71);
        }

        if (v82 != &v83)
        {
          free(v82);
        }
      }

      return 0;
    }

    v3 = mlir::mps::symbolizeStencilPaddingMode(v76, v77);
    if ((v3 & 0x100000000) == 0)
    {
      v75 = 257;
      (*(*a1 + 24))(v90, a1, v2, v74);
      if (v90[0])
      {
        LODWORD(v78) = 3;
        *(&v78 + 1) = "expected ";
        v79 = 9;
        if (v92 >= v93)
        {
          if (v91 > &v78 || v91 + 24 * v92 <= &v78)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v4 = v91 + 24 * v92;
        v5 = v78;
        *(v4 + 2) = v79;
        *v4 = v5;
        v6 = ++v92;
        if (v90[0])
        {
          LODWORD(v78) = 3;
          *(&v78 + 1) = "::mlir::mps::StencilPaddingMode";
          v79 = 31;
          if (v6 >= v93)
          {
            if (v91 > &v78 || v91 + 24 * v6 <= &v78)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v91 + 24 * v92;
          v8 = v78;
          *(v7 + 2) = v79;
          *v7 = v8;
          v9 = ++v92;
          if (v90[0])
          {
            LODWORD(v78) = 3;
            *(&v78 + 1) = " to be one of: ";
            v79 = 15;
            if (v9 >= v93)
            {
              if (v91 > &v78 || v91 + 24 * v9 <= &v78)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v10 = v91 + 24 * v92;
            v11 = v78;
            *(v10 + 2) = v79;
            *v10 = v11;
            v12 = ++v92;
            if (v90[0])
            {
              LODWORD(v78) = 3;
              *(&v78 + 1) = "zero";
              v79 = 4;
              if (v12 >= v93)
              {
                if (v91 > &v78 || v91 + 24 * v12 <= &v78)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v13 = v91 + 24 * v92;
              v14 = v78;
              *(v13 + 2) = v79;
              *v13 = v14;
              v15 = ++v92;
              if (v90[0])
              {
                LODWORD(v78) = 3;
                *(&v78 + 1) = ", ";
                v79 = 2;
                if (v15 >= v93)
                {
                  if (v91 > &v78 || v91 + 24 * v15 <= &v78)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v16 = v91 + 24 * v92;
                v17 = v78;
                *(v16 + 2) = v79;
                *v16 = v17;
                v18 = ++v92;
                if (v90[0])
                {
                  LODWORD(v78) = 3;
                  *(&v78 + 1) = "constant";
                  v79 = 8;
                  if (v18 >= v93)
                  {
                    if (v91 > &v78 || v91 + 24 * v18 <= &v78)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v19 = v91 + 24 * v92;
                  v20 = v78;
                  *(v19 + 2) = v79;
                  *v19 = v20;
                  v21 = ++v92;
                  if (v90[0])
                  {
                    LODWORD(v78) = 3;
                    *(&v78 + 1) = ", ";
                    v79 = 2;
                    if (v21 >= v93)
                    {
                      if (v91 > &v78 || v91 + 24 * v21 <= &v78)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v22 = v91 + 24 * v92;
                    v23 = v78;
                    *(v22 + 2) = v79;
                    *v22 = v23;
                    v24 = ++v92;
                    if (v90[0])
                    {
                      LODWORD(v78) = 3;
                      *(&v78 + 1) = "clampToEdge";
                      v79 = 11;
                      if (v24 >= v93)
                      {
                        if (v91 > &v78 || v91 + 24 * v24 <= &v78)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v25 = v91 + 24 * v92;
                      v26 = v78;
                      *(v25 + 2) = v79;
                      *v25 = v26;
                      v27 = ++v92;
                      if (v90[0])
                      {
                        LODWORD(v78) = 3;
                        *(&v78 + 1) = ", ";
                        v79 = 2;
                        if (v27 >= v93)
                        {
                          if (v91 > &v78 || v91 + 24 * v27 <= &v78)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v28 = v91 + 24 * v92;
                        v29 = v78;
                        *(v28 + 2) = v79;
                        *v28 = v29;
                        v30 = ++v92;
                        if (v90[0])
                        {
                          LODWORD(v78) = 3;
                          *(&v78 + 1) = "mirror";
                          v79 = 6;
                          if (v30 >= v93)
                          {
                            if (v91 > &v78 || v91 + 24 * v30 <= &v78)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v31 = v91 + 24 * v92;
                          v32 = v78;
                          *(v31 + 2) = v79;
                          *v31 = v32;
                          v33 = ++v92;
                          if (v90[0])
                          {
                            LODWORD(v78) = 3;
                            *(&v78 + 1) = ", ";
                            v79 = 2;
                            if (v33 >= v93)
                            {
                              if (v91 > &v78 || v91 + 24 * v33 <= &v78)
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            v34 = v91 + 24 * v92;
                            v35 = v78;
                            *(v34 + 2) = v79;
                            *v34 = v35;
                            v36 = ++v92;
                            if (v90[0])
                            {
                              LODWORD(v78) = 3;
                              *(&v78 + 1) = "mirrorWithEdge";
                              v79 = 14;
                              if (v36 >= v93)
                              {
                                if (v91 > &v78 || v91 + 24 * v36 <= &v78)
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              v37 = v91 + 24 * v92;
                              v38 = v78;
                              *(v37 + 2) = v79;
                              *v37 = v38;
                              v39 = ++v92;
                              if (v90[0])
                              {
                                LODWORD(v78) = 3;
                                *(&v78 + 1) = ", ";
                                v79 = 2;
                                if (v39 >= v93)
                                {
                                  if (v91 > &v78 || v91 + 24 * v39 <= &v78)
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                v40 = v91 + 24 * v92;
                                v41 = v78;
                                *(v40 + 2) = v79;
                                *v40 = v41;
                                v42 = ++v92;
                                if (v90[0])
                                {
                                  LODWORD(v78) = 3;
                                  *(&v78 + 1) = "periodic";
                                  v79 = 8;
                                  if (v42 >= v93)
                                  {
                                    if (v91 > &v78 || v91 + 24 * v42 <= &v78)
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  v43 = v91 + 24 * v92;
                                  v44 = v78;
                                  *(v43 + 2) = v79;
                                  *v43 = v44;
                                  v45 = ++v92;
                                  if (v90[0])
                                  {
                                    LODWORD(v78) = 3;
                                    *(&v78 + 1) = ", ";
                                    v79 = 2;
                                    if (v45 >= v93)
                                    {
                                      if (v91 > &v78 || v91 + 24 * v45 <= &v78)
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                                      }

                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    v46 = v91 + 24 * v92;
                                    v47 = v78;
                                    *(v46 + 2) = v79;
                                    *v46 = v47;
                                    v48 = ++v92;
                                    if (v90[0])
                                    {
                                      LODWORD(v78) = 3;
                                      *(&v78 + 1) = "antiPeriodic";
                                      v79 = 12;
                                      if (v48 >= v93)
                                      {
                                        if (v91 > &v78 || v91 + 24 * v48 <= &v78)
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                                        }

                                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                                      }

                                      v49 = v91 + 24 * v92;
                                      v50 = v78;
                                      *(v49 + 2) = v79;
                                      *v49 = v50;
                                      ++v92;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
      if (v90[0])
      {
        mlir::InFlightDiagnostic::report(v90);
      }

      if (v100 == 1)
      {
        if (v99 != &v100)
        {
          free(v99);
        }

        v51 = __p;
        if (__p)
        {
          v52 = v98;
          v53 = __p;
          if (v98 != __p)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = __p;
          }

          v98 = v51;
          operator delete(v53);
        }

        v54 = v95;
        if (v95)
        {
          v55 = v96;
          v56 = v95;
          if (v96 != v95)
          {
            do
            {
              v58 = *--v55;
              v57 = v58;
              *v55 = 0;
              if (v58)
              {
                MEMORY[0x259C63150](v57, 0x1000C8077774924);
              }
            }

            while (v55 != v54);
            v56 = v95;
          }

          v96 = v54;
          operator delete(v56);
        }

        if (v91 != &v94)
        {
          free(v91);
        }
      }

      goto LABEL_59;
    }

    v59 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v78 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
      *(&v78 + 1) = Context;
      v90[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v90[1] = &v78;
      v80 = v59;
      v62 = 0x9DDFEA08EB382D69 * (((8 * v59) | 4) ^ v59 ^ 0xFF51AFD7ED558CCDLL);
      v63 = 0x9DDFEA08EB382D69 * (v59 ^ 0xFF51AFD7ED558CCDLL ^ (v62 >> 47) ^ v62);
      v76 = &v80;
      v74[0] = &v80;
      v74[1] = v90;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v63 >> 47) ^ v63), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v76, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v74);
    }
  }

  return 0;
}

void *mlir::mps::StencilPaddingModeAttr::print(mlir::mps::StencilPaddingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 > 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    switch(v6)
    {
      case 0:
        v7 = 0;
        v8 = "constant";
        v6 = 8;
        goto LABEL_19;
      case 1:
        v7 = 0;
        v8 = "mirror";
        v6 = 6;
        goto LABEL_19;
      case 2:
        v7 = 0;
        v8 = "mirrorWithEdge";
        v6 = 14;
        goto LABEL_19;
    }

LABEL_15:
    v6 = 0;
    v8 = "";
    v7 = 1;
    goto LABEL_19;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (v6 <= 2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v7 = 0;
      v8 = "periodic";
      v6 = 8;
      goto LABEL_19;
    }

    if (v6 == 6)
    {
      v7 = 0;
      v8 = "antiPeriodic";
      v6 = 12;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v7 = 0;
  if (v6 == 3)
  {
    v8 = "clampToEdge";
    v6 = 11;
  }

  else
  {
    v8 = "zero";
  }

LABEL_19:
  v9 = (*(*a2 + 16))(a2);
  if (v6 <= *(v9 + 24) - *(v9 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v10 = v9;
      memcpy(*(v9 + 32), v8, v6);
      *(v10 + 32) += v6;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, v8, v6);
  }

  result = (*(*a2 + 16))(a2);
  v12 = result[4];
  if (result[3] == v12)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v12 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::CropResizeAlignmentModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::CropResizeAlignmentModeAttr::parse(mlir::AsmParser *a1)
{
  v79 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v54 = 0;
  v55 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v54))
  {
LABEL_61:
    v38 = (*(*a1 + 40))(a1);
    LOWORD(v70) = 259;
    (*(*a1 + 24))(v59, a1, v38, v68);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v39 = v64;
      if (v64)
      {
        v40 = v65;
        v41 = v64;
        if (v65 != v64)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = v64;
        }

        v65 = v39;
        operator delete(v41);
      }

      v42 = v62;
      if (v62)
      {
        v43 = v63;
        v44 = v62;
        if (v63 != v62)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v43 != v42);
          v44 = v62;
        }

        v63 = v42;
        operator delete(v44);
      }

      if (v60 != &v61)
      {
        free(v60);
      }
    }

    return 0;
  }

  if (v55 == 12)
  {
    if (*v54 != 0x726F436E67696C61 || v54[2] != 1936876910)
    {
      goto LABEL_24;
    }

    v4 = 1;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (v55 == 13)
  {
    if (*v54 != 0x6F4374657366666FLL || *(v54 + 5) != 0x7372656E726F4374)
    {
      goto LABEL_24;
    }

    v4 = 2;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

LABEL_84:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v56 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
    *(&v56 + 1) = Context;
    v68[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v68[1] = &v56;
    v58 = v4;
    v50 = v4 ^ 0xFF51AFD7ED558CCDLL;
    v51 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v50);
    v54 = &v58;
    v52[0] = &v58;
    v52[1] = v68;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v50 ^ (v51 >> 47) ^ v51)) >> 32) >> 15) ^ (-348639895 * (v50 ^ (v51 >> 47) ^ v51))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v54, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v52);
  }

  if (v55 != 16 || (*v54 == 0x41746C7561666564 ? (v3 = *(v54 + 1) == 0x746E656D6E67696CLL) : (v3 = 0), !v3))
  {
LABEL_24:
    v53 = 257;
    (*(*a1 + 24))(v68, a1, v2, v52);
    if (v68[0])
    {
      LODWORD(v56) = 3;
      *(&v56 + 1) = "expected ";
      v57 = 9;
      if (v70 >= v71)
      {
        if (v69 > &v56 || v69 + 24 * v70 <= &v56)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v69 + 24 * v70;
      v8 = v56;
      *(v7 + 2) = v57;
      *v7 = v8;
      v9 = ++v70;
      if (v68[0])
      {
        LODWORD(v56) = 3;
        *(&v56 + 1) = "::mlir::mps::CropResizeAlignmentMode";
        v57 = 36;
        if (v9 >= v71)
        {
          if (v69 > &v56 || v69 + 24 * v9 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v69 + 24 * v70;
        v11 = v56;
        *(v10 + 2) = v57;
        *v10 = v11;
        v12 = ++v70;
        if (v68[0])
        {
          LODWORD(v56) = 3;
          *(&v56 + 1) = " to be one of: ";
          v57 = 15;
          if (v12 >= v71)
          {
            if (v69 > &v56 || v69 + 24 * v12 <= &v56)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v69 + 24 * v70;
          v14 = v56;
          *(v13 + 2) = v57;
          *v13 = v14;
          v15 = ++v70;
          if (v68[0])
          {
            LODWORD(v56) = 3;
            *(&v56 + 1) = "defaultAlignment";
            v57 = 16;
            if (v15 >= v71)
            {
              if (v69 > &v56 || v69 + 24 * v15 <= &v56)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v69 + 24 * v70;
            v17 = v56;
            *(v16 + 2) = v57;
            *v16 = v17;
            v18 = ++v70;
            if (v68[0])
            {
              LODWORD(v56) = 3;
              *(&v56 + 1) = ", ";
              v57 = 2;
              if (v18 >= v71)
              {
                if (v69 > &v56 || v69 + 24 * v18 <= &v56)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v19 = v69 + 24 * v70;
              v20 = v56;
              *(v19 + 2) = v57;
              *v19 = v20;
              v21 = ++v70;
              if (v68[0])
              {
                LODWORD(v56) = 3;
                *(&v56 + 1) = "alignCorners";
                v57 = 12;
                if (v21 >= v71)
                {
                  if (v69 > &v56 || v69 + 24 * v21 <= &v56)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v22 = v69 + 24 * v70;
                v23 = v56;
                *(v22 + 2) = v57;
                *v22 = v23;
                v24 = ++v70;
                if (v68[0])
                {
                  LODWORD(v56) = 3;
                  *(&v56 + 1) = ", ";
                  v57 = 2;
                  if (v24 >= v71)
                  {
                    if (v69 > &v56 || v69 + 24 * v24 <= &v56)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v25 = v69 + 24 * v70;
                  v26 = v56;
                  *(v25 + 2) = v57;
                  *v25 = v26;
                  v27 = ++v70;
                  if (v68[0])
                  {
                    LODWORD(v56) = 3;
                    *(&v56 + 1) = "offsetCorners";
                    v57 = 13;
                    if (v27 >= v71)
                    {
                      if (v69 > &v56 || v69 + 24 * v27 <= &v56)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v28 = v69 + 24 * v70;
                    v29 = v56;
                    *(v28 + 2) = v57;
                    *v28 = v29;
                    ++v70;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
    if (v68[0])
    {
      mlir::InFlightDiagnostic::report(v68);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v76;
        v32 = __p;
        if (v76 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v76 = v30;
        operator delete(v32);
      }

      v33 = v73;
      if (v73)
      {
        v34 = v74;
        v35 = v73;
        if (v74 != v73)
        {
          do
          {
            v37 = *--v34;
            v36 = v37;
            *v34 = 0;
            if (v37)
            {
              MEMORY[0x259C63150](v36, 0x1000C8077774924);
            }
          }

          while (v34 != v33);
          v35 = v73;
        }

        v74 = v33;
        operator delete(v35);
      }

      if (v69 != &v72)
      {
        free(v69);
      }
    }

    goto LABEL_61;
  }

  v4 = 0;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_84;
  }

  return 0;
}

void *mlir::mps::CropResizeAlignmentModeAttr::print(mlir::mps::CropResizeAlignmentModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "defaultAlignment";
    v8 = 16;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "offsetCorners";
    v8 = 13;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 12;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "alignCorners";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::CropResizeCoordinateModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::CropResizeCoordinateModeAttr::parse(mlir::AsmParser *a1)
{
  v90 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v65 = 0;
  v66 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v65))
  {
LABEL_81:
    v49 = (*(*a1 + 40))(a1);
    LOWORD(v81) = 259;
    (*(*a1 + 24))(v70, a1, v49, v79);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v50 = v75;
      if (v75)
      {
        v51 = v76;
        v52 = v75;
        if (v76 != v75)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = v75;
        }

        v76 = v50;
        operator delete(v52);
      }

      v53 = v73;
      if (v73)
      {
        v54 = v74;
        v55 = v73;
        if (v74 != v73)
        {
          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              MEMORY[0x259C63150](v56, 0x1000C8077774924);
            }
          }

          while (v54 != v53);
          v55 = v73;
        }

        v74 = v53;
        operator delete(v55);
      }

      if (v71 != &v72)
      {
        free(v71);
      }
    }

    return 0;
  }

  if (v66 == 17)
  {
    if (*v65 == 0x577372656E726F63 && *(v65 + 1) == 0x7372694668746469 && *(v65 + 16) == 116)
    {
      v7 = 1;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v65 != 0x57737265746E6563 || *(v65 + 1) != 0x7372694668746469 || *(v65 + 16) != 116)
      {
        goto LABEL_36;
      }

      v7 = 3;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_104:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v67 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
    *(&v67 + 1) = Context;
    v79[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v79[1] = &v67;
    v69 = v7;
    v61 = v7 ^ 0xFF51AFD7ED558CCDLL;
    v62 = 0x9DDFEA08EB382D69 * (((8 * v7) | 4) ^ v61);
    v65 = &v69;
    v63[0] = &v69;
    v63[1] = v79;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 32) >> 15) ^ (-348639895 * (v61 ^ (v62 >> 47) ^ v62))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v63);
  }

  if (v66 != 18)
  {
LABEL_36:
    v64 = 257;
    (*(*a1 + 24))(v79, a1, v2, v63);
    if (v79[0])
    {
      LODWORD(v67) = 3;
      *(&v67 + 1) = "expected ";
      v68 = 9;
      if (v81 >= v82)
      {
        if (v80 > &v67 || v80 + 24 * v81 <= &v67)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v80 + 24 * v81;
      v13 = v67;
      *(v12 + 2) = v68;
      *v12 = v13;
      v14 = ++v81;
      if (v79[0])
      {
        LODWORD(v67) = 3;
        *(&v67 + 1) = "::mlir::mps::CropResizeCoordinateMode";
        v68 = 37;
        if (v14 >= v82)
        {
          if (v80 > &v67 || v80 + 24 * v14 <= &v67)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v80 + 24 * v81;
        v16 = v67;
        *(v15 + 2) = v68;
        *v15 = v16;
        v17 = ++v81;
        if (v79[0])
        {
          LODWORD(v67) = 3;
          *(&v67 + 1) = " to be one of: ";
          v68 = 15;
          if (v17 >= v82)
          {
            if (v80 > &v67 || v80 + 24 * v17 <= &v67)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v80 + 24 * v81;
          v19 = v67;
          *(v18 + 2) = v68;
          *v18 = v19;
          v20 = ++v81;
          if (v79[0])
          {
            LODWORD(v67) = 3;
            *(&v67 + 1) = "cornersHeightFirst";
            v68 = 18;
            if (v20 >= v82)
            {
              if (v80 > &v67 || v80 + 24 * v20 <= &v67)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v21 = v80 + 24 * v81;
            v22 = v67;
            *(v21 + 2) = v68;
            *v21 = v22;
            v23 = ++v81;
            if (v79[0])
            {
              LODWORD(v67) = 3;
              *(&v67 + 1) = ", ";
              v68 = 2;
              if (v23 >= v82)
              {
                if (v80 > &v67 || v80 + 24 * v23 <= &v67)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v24 = v80 + 24 * v81;
              v25 = v67;
              *(v24 + 2) = v68;
              *v24 = v25;
              v26 = ++v81;
              if (v79[0])
              {
                LODWORD(v67) = 3;
                *(&v67 + 1) = "cornersWidthFirst";
                v68 = 17;
                if (v26 >= v82)
                {
                  if (v80 > &v67 || v80 + 24 * v26 <= &v67)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v27 = v80 + 24 * v81;
                v28 = v67;
                *(v27 + 2) = v68;
                *v27 = v28;
                v29 = ++v81;
                if (v79[0])
                {
                  LODWORD(v67) = 3;
                  *(&v67 + 1) = ", ";
                  v68 = 2;
                  if (v29 >= v82)
                  {
                    if (v80 > &v67 || v80 + 24 * v29 <= &v67)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v30 = v80 + 24 * v81;
                  v31 = v67;
                  *(v30 + 2) = v68;
                  *v30 = v31;
                  v32 = ++v81;
                  if (v79[0])
                  {
                    LODWORD(v67) = 3;
                    *(&v67 + 1) = "centersHeightFirst";
                    v68 = 18;
                    if (v32 >= v82)
                    {
                      if (v80 > &v67 || v80 + 24 * v32 <= &v67)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v33 = v80 + 24 * v81;
                    v34 = v67;
                    *(v33 + 2) = v68;
                    *v33 = v34;
                    v35 = ++v81;
                    if (v79[0])
                    {
                      LODWORD(v67) = 3;
                      *(&v67 + 1) = ", ";
                      v68 = 2;
                      if (v35 >= v82)
                      {
                        if (v80 > &v67 || v80 + 24 * v35 <= &v67)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v36 = v80 + 24 * v81;
                      v37 = v67;
                      *(v36 + 2) = v68;
                      *v36 = v37;
                      v38 = ++v81;
                      if (v79[0])
                      {
                        LODWORD(v67) = 3;
                        *(&v67 + 1) = "centersWidthFirst";
                        v68 = 17;
                        if (v38 >= v82)
                        {
                          if (v80 > &v67 || v80 + 24 * v38 <= &v67)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v39 = v80 + 24 * v81;
                        v40 = v67;
                        *(v39 + 2) = v68;
                        *v39 = v40;
                        ++v81;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
    if (v79[0])
    {
      mlir::InFlightDiagnostic::report(v79);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v87;
        v43 = __p;
        if (v87 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v87 = v41;
        operator delete(v43);
      }

      v44 = v84;
      if (v84)
      {
        v45 = v85;
        v46 = v84;
        if (v85 != v84)
        {
          do
          {
            v48 = *--v45;
            v47 = v48;
            *v45 = 0;
            if (v48)
            {
              MEMORY[0x259C63150](v47, 0x1000C8077774924);
            }
          }

          while (v45 != v44);
          v46 = v84;
        }

        v85 = v44;
        operator delete(v46);
      }

      if (v80 != &v83)
      {
        free(v80);
      }
    }

    goto LABEL_81;
  }

  if (*v65 == 0x487372656E726F63 && *(v65 + 1) == 0x7269467468676965 && *(v65 + 8) == 29811)
  {
    v7 = 0;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_104;
  }

  if (*v65 != 0x48737265746E6563 || *(v65 + 1) != 0x7269467468676965 || *(v65 + 8) != 29811)
  {
    goto LABEL_36;
  }

  v7 = 2;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_104;
  }

  return 0;
}

void *mlir::mps::CropResizeCoordinateModeAttr::print(mlir::mps::CropResizeCoordinateModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
LABEL_3:
      if (v6)
      {
        if (v6 == 1)
        {
          v7 = 0;
          v8 = "cornersWidthFirst";
          v9 = 17;
          goto LABEL_14;
        }

LABEL_10:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_14;
      }

      v7 = 0;
      v8 = "cornersHeightFirst";
      goto LABEL_13;
    }
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v7 = 0;
      v8 = "centersWidthFirst";
      v9 = 17;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = "centersHeightFirst";
LABEL_13:
  v9 = 18;
LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::PruningMetricAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::PruningMetricAttr::parse(mlir::AsmParser *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v38 = 0;
    v39 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v38))
    {
LABEL_42:
      v27 = (*(*a1 + 40))(a1);
      LOWORD(v54) = 259;
      (*(*a1 + 24))(v43, a1, v27, v52);
      if (v43[0])
      {
        mlir::InFlightDiagnostic::report(v43);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v28 = v48;
        if (v48)
        {
          v29 = v49;
          v30 = v48;
          if (v49 != v48)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = v48;
          }

          v49 = v28;
          operator delete(v30);
        }

        v31 = v46;
        if (v46)
        {
          v32 = v47;
          v33 = v46;
          if (v47 != v46)
          {
            do
            {
              v35 = *--v32;
              v34 = v35;
              *v32 = 0;
              if (v35)
              {
                MEMORY[0x259C63150](v34, 0x1000C8077774924);
              }
            }

            while (v32 != v31);
            v33 = v46;
          }

          v47 = v31;
          operator delete(v33);
        }

        if (v44 != &v45)
        {
          free(v44);
        }
      }

      return 0;
    }

    if (v39 != 17 || (*v38 == 0x647574696E67616DLL ? (v3 = *(v38 + 1) == 0x6E696E7572705F65) : (v3 = 0), v3 ? (v4 = *(v38 + 16) == 103) : (v4 = 0), !v4))
    {
      v37 = 257;
      (*(*a1 + 24))(v52, a1, v2, v36);
      if (v52[0])
      {
        LODWORD(v40) = 3;
        *(&v40 + 1) = "expected ";
        v41 = 9;
        if (v54 >= v55)
        {
          if (v53 > &v40 || v53 + 24 * v54 <= &v40)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v5 = v53 + 24 * v54;
        v6 = v40;
        *(v5 + 2) = v41;
        *v5 = v6;
        v7 = ++v54;
        if (v52[0])
        {
          LODWORD(v40) = 3;
          *(&v40 + 1) = "::mlir::mps::PruningMetric";
          v41 = 26;
          if (v7 >= v55)
          {
            if (v53 > &v40 || v53 + 24 * v7 <= &v40)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v8 = v53 + 24 * v54;
          v9 = v40;
          *(v8 + 2) = v41;
          *v8 = v9;
          v10 = ++v54;
          if (v52[0])
          {
            LODWORD(v40) = 3;
            *(&v40 + 1) = " to be one of: ";
            v41 = 15;
            if (v10 >= v55)
            {
              if (v53 > &v40 || v53 + 24 * v10 <= &v40)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = v53 + 24 * v54;
            v12 = v40;
            *(v11 + 2) = v41;
            *v11 = v12;
            v13 = ++v54;
            if (v52[0])
            {
              LODWORD(v40) = 3;
              *(&v40 + 1) = "magnitude_pruning";
              v41 = 17;
              if (v13 >= v55)
              {
                if (v53 > &v40 || v53 + 24 * v13 <= &v40)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v14 = v53 + 24 * v54;
              v15 = v40;
              *(v14 + 2) = v41;
              *v14 = v15;
              ++v54;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v60;
          v18 = __p;
          if (v60 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v60 = v16;
          operator delete(v18);
        }

        v19 = v57;
        if (v57)
        {
          v20 = v58;
          v21 = v57;
          if (v58 != v57)
          {
            do
            {
              v23 = *--v20;
              v22 = v23;
              *v20 = 0;
              if (v23)
              {
                MEMORY[0x259C63150](v22, 0x1000C8077774924);
              }
            }

            while (v20 != v19);
            v21 = v57;
          }

          v58 = v19;
          operator delete(v21);
        }

        if (v53 != &v56)
        {
          free(v53);
        }
      }

      goto LABEL_42;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v40 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
      *(&v40 + 1) = Context;
      v52[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v52[1] = &v40;
      v42 = 0;
      v38 = &v42;
      v36[0] = &v42;
      v36[1] = v52;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v38, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v36);
    }
  }

  return 0;
}

void *mlir::mps::PruningMetricAttr::print(mlir::mps::PruningMetricAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 8);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 17;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v7 <= v8[3] - v9)
  {
    if (!v6)
    {
      *(v9 + 16) = 103;
      *v9 = *"magnitude_pruning";
      v8[4] += 17;
    }
  }

  else
  {
    if (v6)
    {
      v10 = "";
    }

    else
    {
      v10 = "magnitude_pruning";
    }

    llvm::raw_ostream::write(v8, v10, v7);
  }

  result = (*(*a2 + 16))(a2);
  v12 = result[4];
  if (result[3] == v12)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v12 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::PruningStructureAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::PruningStructureAttr::parse(mlir::AsmParser *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v48 = 0;
    v49 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v48))
    {
LABEL_52:
      v32 = (*(*a1 + 40))(a1);
      LOWORD(v64) = 259;
      (*(*a1 + 24))(v53, a1, v32, v62);
      if (v53[0])
      {
        mlir::InFlightDiagnostic::report(v53);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v33 = v58;
        if (v58)
        {
          v34 = v59;
          v35 = v58;
          if (v59 != v58)
          {
            do
            {
              v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
            }

            while (v34 != v33);
            v35 = v58;
          }

          v59 = v33;
          operator delete(v35);
        }

        v36 = v56;
        if (v56)
        {
          v37 = v57;
          v38 = v56;
          if (v57 != v56)
          {
            do
            {
              v40 = *--v37;
              v39 = v40;
              *v37 = 0;
              if (v40)
              {
                MEMORY[0x259C63150](v39, 0x1000C8077774924);
              }
            }

            while (v37 != v36);
            v38 = v56;
          }

          v57 = v36;
          operator delete(v38);
        }

        if (v54 != &v55)
        {
          free(v54);
        }
      }

      return 0;
    }

    if (v49 == 20)
    {
      if (*v48 != 0x64315F6B636F6C62 || *(v48 + 1) != 0x7572705F345F325FLL || v48[4] != 1735289198)
      {
        goto LABEL_19;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v49 != 14 || (*v48 == 0x705F6D6F646E6172 ? (v3 = *(v48 + 6) == 0x676E696E7572705FLL) : (v3 = 0), !v3))
      {
LABEL_19:
        v47 = 257;
        (*(*a1 + 24))(v62, a1, v2, v46);
        if (v62[0])
        {
          LODWORD(v50) = 3;
          *(&v50 + 1) = "expected ";
          v51 = 9;
          if (v64 >= v65)
          {
            if (v63 > &v50 || v63 + 24 * v64 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v63 + 24 * v64;
          v8 = v50;
          *(v7 + 2) = v51;
          *v7 = v8;
          v9 = ++v64;
          if (v62[0])
          {
            LODWORD(v50) = 3;
            *(&v50 + 1) = "::mlir::mps::PruningStructure";
            v51 = 29;
            if (v9 >= v65)
            {
              if (v63 > &v50 || v63 + 24 * v9 <= &v50)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v10 = v63 + 24 * v64;
            v11 = v50;
            *(v10 + 2) = v51;
            *v10 = v11;
            v12 = ++v64;
            if (v62[0])
            {
              LODWORD(v50) = 3;
              *(&v50 + 1) = " to be one of: ";
              v51 = 15;
              if (v12 >= v65)
              {
                if (v63 > &v50 || v63 + 24 * v12 <= &v50)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v13 = v63 + 24 * v64;
              v14 = v50;
              *(v13 + 2) = v51;
              *v13 = v14;
              v15 = ++v64;
              if (v62[0])
              {
                LODWORD(v50) = 3;
                *(&v50 + 1) = "random_pruning";
                v51 = 14;
                if (v15 >= v65)
                {
                  if (v63 > &v50 || v63 + 24 * v15 <= &v50)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v16 = v63 + 24 * v64;
                v17 = v50;
                *(v16 + 2) = v51;
                *v16 = v17;
                v18 = ++v64;
                if (v62[0])
                {
                  LODWORD(v50) = 3;
                  *(&v50 + 1) = ", ";
                  v51 = 2;
                  if (v18 >= v65)
                  {
                    if (v63 > &v50 || v63 + 24 * v18 <= &v50)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v19 = v63 + 24 * v64;
                  v20 = v50;
                  *(v19 + 2) = v51;
                  *v19 = v20;
                  v21 = ++v64;
                  if (v62[0])
                  {
                    LODWORD(v50) = 3;
                    *(&v50 + 1) = "block_1d_2_4_pruning";
                    v51 = 20;
                    if (v21 >= v65)
                    {
                      if (v63 > &v50 || v63 + 24 * v21 <= &v50)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v22 = v63 + 24 * v64;
                    v23 = v50;
                    *(v22 + 2) = v51;
                    *v22 = v23;
                    ++v64;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
        if (v62[0])
        {
          mlir::InFlightDiagnostic::report(v62);
        }

        if (v72 == 1)
        {
          if (v71 != &v72)
          {
            free(v71);
          }

          v24 = __p;
          if (__p)
          {
            v25 = v70;
            v26 = __p;
            if (v70 != __p)
            {
              do
              {
                v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
              }

              while (v25 != v24);
              v26 = __p;
            }

            v70 = v24;
            operator delete(v26);
          }

          v27 = v67;
          if (v67)
          {
            v28 = v68;
            v29 = v67;
            if (v68 != v67)
            {
              do
              {
                v31 = *--v28;
                v30 = v31;
                *v28 = 0;
                if (v31)
                {
                  MEMORY[0x259C63150](v30, 0x1000C8077774924);
                }
              }

              while (v28 != v27);
              v29 = v67;
            }

            v68 = v27;
            operator delete(v29);
          }

          if (v63 != &v66)
          {
            free(v63);
          }
        }

        goto LABEL_52;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
LABEL_75:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        *&v50 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
        *(&v50 + 1) = Context;
        v62[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
        v62[1] = &v50;
        v52 = v4;
        v44 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v45 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v44);
        v48 = &v52;
        v46[0] = &v52;
        v46[1] = v62;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v44 ^ (v45 >> 47) ^ v45)) >> 32) >> 15) ^ (-348639895 * (v44 ^ (v45 >> 47) ^ v45))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v46);
      }
    }
  }

  return 0;
}

void *mlir::mps::PruningStructureAttr::print(mlir::mps::PruningStructureAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 8);
  v7 = "";
  v8 = 20;
  if (v6 == 1)
  {
    v7 = "block_1d_2_4_pruning";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 14;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "random_pruning";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::SimilarityTypeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::SimilarityTypeAttr::parse(mlir::AsmParser *a1)
{
  v71 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v46 = 0;
    v47 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v46))
    {
LABEL_46:
      v30 = (*(*a1 + 40))(a1);
      LOWORD(v62) = 259;
      (*(*a1 + 24))(v51, a1, v30, v60);
      if (v51[0])
      {
        mlir::InFlightDiagnostic::report(v51);
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v31 = v56;
        if (v56)
        {
          v32 = v57;
          v33 = v56;
          if (v57 != v56)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = v56;
          }

          v57 = v31;
          operator delete(v33);
        }

        v34 = v54;
        if (v54)
        {
          v35 = v55;
          v36 = v54;
          if (v55 != v54)
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
            v36 = v54;
          }

          v55 = v34;
          operator delete(v36);
        }

        if (v52 != &v53)
        {
          free(v52);
        }
      }

      return 0;
    }

    if (v47 == 8)
    {
      if (*v46 != 0x666669645F736261)
      {
LABEL_13:
        v45 = 257;
        (*(*a1 + 24))(v60, a1, v2, v44);
        if (v60[0])
        {
          LODWORD(v48) = 3;
          *(&v48 + 1) = "expected ";
          v49 = 9;
          if (v62 >= v63)
          {
            if (v61 > &v48 || v61 + 24 * v62 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v5 = v61 + 24 * v62;
          v6 = v48;
          *(v5 + 2) = v49;
          *v5 = v6;
          v7 = ++v62;
          if (v60[0])
          {
            LODWORD(v48) = 3;
            *(&v48 + 1) = "::mlir::mps::SimilarityType";
            v49 = 27;
            if (v7 >= v63)
            {
              if (v61 > &v48 || v61 + 24 * v7 <= &v48)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v8 = v61 + 24 * v62;
            v9 = v48;
            *(v8 + 2) = v49;
            *v8 = v9;
            v10 = ++v62;
            if (v60[0])
            {
              LODWORD(v48) = 3;
              *(&v48 + 1) = " to be one of: ";
              v49 = 15;
              if (v10 >= v63)
              {
                if (v61 > &v48 || v61 + 24 * v10 <= &v48)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v11 = v61 + 24 * v62;
              v12 = v48;
              *(v11 + 2) = v49;
              *v11 = v12;
              v13 = ++v62;
              if (v60[0])
              {
                LODWORD(v48) = 3;
                *(&v48 + 1) = "dot_product";
                v49 = 11;
                if (v13 >= v63)
                {
                  if (v61 > &v48 || v61 + 24 * v13 <= &v48)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v14 = v61 + 24 * v62;
                v15 = v48;
                *(v14 + 2) = v49;
                *v14 = v15;
                v16 = ++v62;
                if (v60[0])
                {
                  LODWORD(v48) = 3;
                  *(&v48 + 1) = ", ";
                  v49 = 2;
                  if (v16 >= v63)
                  {
                    if (v61 > &v48 || v61 + 24 * v16 <= &v48)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v17 = v61 + 24 * v62;
                  v18 = v48;
                  *(v17 + 2) = v49;
                  *v17 = v18;
                  v19 = ++v62;
                  if (v60[0])
                  {
                    LODWORD(v48) = 3;
                    *(&v48 + 1) = "abs_diff";
                    v49 = 8;
                    if (v19 >= v63)
                    {
                      if (v61 > &v48 || v61 + 24 * v19 <= &v48)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v20 = v61 + 24 * v62;
                    v21 = v48;
                    *(v20 + 2) = v49;
                    *v20 = v21;
                    ++v62;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
        if (v60[0])
        {
          mlir::InFlightDiagnostic::report(v60);
        }

        if (v70 == 1)
        {
          if (v69 != &v70)
          {
            free(v69);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v68;
            v24 = __p;
            if (v68 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v68 = v22;
            operator delete(v24);
          }

          v25 = v65;
          if (v65)
          {
            v26 = v66;
            v27 = v65;
            if (v66 != v65)
            {
              do
              {
                v29 = *--v26;
                v28 = v29;
                *v26 = 0;
                if (v29)
                {
                  MEMORY[0x259C63150](v28, 0x1000C8077774924);
                }
              }

              while (v26 != v25);
              v27 = v65;
            }

            v66 = v25;
            operator delete(v27);
          }

          if (v61 != &v64)
          {
            free(v61);
          }
        }

        goto LABEL_46;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
LABEL_69:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        *&v48 = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
        *(&v48 + 1) = Context;
        v60[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
        v60[1] = &v48;
        v50 = v4;
        v42 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v43 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v42);
        v46 = &v50;
        v44[0] = &v50;
        v44[1] = v60;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v42 ^ (v43 >> 47) ^ v43)) >> 32) >> 15) ^ (-348639895 * (v42 ^ (v43 >> 47) ^ v43))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v44);
      }
    }

    else
    {
      if (v47 != 11)
      {
        goto LABEL_13;
      }

      if (*v46 != 0x646F72705F746F64 || *(v46 + 3) != 0x746375646F72705FLL)
      {
        goto LABEL_13;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_69;
      }
    }
  }

  return 0;
}

void *mlir::mps::SimilarityTypeAttr::print(mlir::mps::SimilarityTypeAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 8);
  v7 = "";
  v8 = 8;
  if (v6 == 1)
  {
    v7 = "abs_diff";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 11;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "dot_product";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::FFTScalingModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::FFTScalingModeAttr::parse(mlir::AsmParser *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v52 = 0;
  v53 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v52))
  {
LABEL_50:
    v36 = (*(*a1 + 40))(a1);
    LOWORD(v68) = 259;
    (*(*a1 + 24))(v57, a1, v36, v66);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v37 = v62;
      if (v62)
      {
        v38 = v63;
        v39 = v62;
        if (v63 != v62)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = v62;
        }

        v63 = v37;
        operator delete(v39);
      }

      v40 = v60;
      if (v60)
      {
        v41 = v61;
        v42 = v60;
        if (v61 != v60)
        {
          do
          {
            v44 = *--v41;
            v43 = v44;
            *v41 = 0;
            if (v44)
            {
              MEMORY[0x259C63150](v43, 0x1000C8077774924);
            }
          }

          while (v41 != v40);
          v42 = v60;
        }

        v61 = v40;
        operator delete(v42);
      }

      if (v58 != &v59)
      {
        free(v58);
      }
    }

    return 0;
  }

  if (v53 != 7)
  {
    if (v53 == 4)
    {
      if (*v52 == 1701736302)
      {
        v3 = 0;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }

      if (*v52 == 1702521203)
      {
        v3 = 1;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }
    }

    goto LABEL_13;
  }

  if (*v52 != 1953066613 || *(v52 + 3) != 2037539188)
  {
LABEL_13:
    v51 = 257;
    (*(*a1 + 24))(v66, a1, v2, v50);
    if (v66[0])
    {
      LODWORD(v54) = 3;
      *(&v54 + 1) = "expected ";
      v55 = 9;
      if (v68 >= v69)
      {
        if (v67 > &v54 || v67 + 24 * v68 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v67 + 24 * v68;
      v6 = v54;
      *(v5 + 2) = v55;
      *v5 = v6;
      v7 = ++v68;
      if (v66[0])
      {
        LODWORD(v54) = 3;
        *(&v54 + 1) = "::mlir::mps::FFTScalingMode";
        v55 = 27;
        if (v7 >= v69)
        {
          if (v67 > &v54 || v67 + 24 * v7 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v67 + 24 * v68;
        v9 = v54;
        *(v8 + 2) = v55;
        *v8 = v9;
        v10 = ++v68;
        if (v66[0])
        {
          LODWORD(v54) = 3;
          *(&v54 + 1) = " to be one of: ";
          v55 = 15;
          if (v10 >= v69)
          {
            if (v67 > &v54 || v67 + 24 * v10 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v67 + 24 * v68;
          v12 = v54;
          *(v11 + 2) = v55;
          *v11 = v12;
          v13 = ++v68;
          if (v66[0])
          {
            LODWORD(v54) = 3;
            *(&v54 + 1) = "none";
            v55 = 4;
            if (v13 >= v69)
            {
              if (v67 > &v54 || v67 + 24 * v13 <= &v54)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v14 = v67 + 24 * v68;
            v15 = v54;
            *(v14 + 2) = v55;
            *v14 = v15;
            v16 = ++v68;
            if (v66[0])
            {
              LODWORD(v54) = 3;
              *(&v54 + 1) = ", ";
              v55 = 2;
              if (v16 >= v69)
              {
                if (v67 > &v54 || v67 + 24 * v16 <= &v54)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v17 = v67 + 24 * v68;
              v18 = v54;
              *(v17 + 2) = v55;
              *v17 = v18;
              v19 = ++v68;
              if (v66[0])
              {
                LODWORD(v54) = 3;
                *(&v54 + 1) = "size";
                v55 = 4;
                if (v19 >= v69)
                {
                  if (v67 > &v54 || v67 + 24 * v19 <= &v54)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v20 = v67 + 24 * v68;
                v21 = v54;
                *(v20 + 2) = v55;
                *v20 = v21;
                v22 = ++v68;
                if (v66[0])
                {
                  LODWORD(v54) = 3;
                  *(&v54 + 1) = ", ";
                  v55 = 2;
                  if (v22 >= v69)
                  {
                    if (v67 > &v54 || v67 + 24 * v22 <= &v54)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v23 = v67 + 24 * v68;
                  v24 = v54;
                  *(v23 + 2) = v55;
                  *v23 = v24;
                  v25 = ++v68;
                  if (v66[0])
                  {
                    LODWORD(v54) = 3;
                    *(&v54 + 1) = "unitary";
                    v55 = 7;
                    if (v25 >= v69)
                    {
                      if (v67 > &v54 || v67 + 24 * v25 <= &v54)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v26 = v67 + 24 * v68;
                    v27 = v54;
                    *(v26 + 2) = v55;
                    *v26 = v27;
                    ++v68;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v74;
        v30 = __p;
        if (v74 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v74 = v28;
        operator delete(v30);
      }

      v31 = v71;
      if (v71)
      {
        v32 = v72;
        v33 = v71;
        if (v72 != v71)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              MEMORY[0x259C63150](v34, 0x1000C8077774924);
            }
          }

          while (v32 != v31);
          v33 = v71;
        }

        v72 = v31;
        operator delete(v33);
      }

      if (v67 != &v70)
      {
        free(v67);
      }
    }

    goto LABEL_50;
  }

  v3 = 2;
  if ((*(*a1 + 168))(a1))
  {
LABEL_75:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v54 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
    *(&v54 + 1) = Context;
    v66[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v66[1] = &v54;
    v56 = v3;
    v48 = v3 ^ 0xFF51AFD7ED558CCDLL;
    v49 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v48);
    v52 = &v56;
    v50[0] = &v56;
    v50[1] = v66;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v48 ^ (v49 >> 47) ^ v49)) >> 32) >> 15) ^ (-348639895 * (v48 ^ (v49 >> 47) ^ v49))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v52, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v50);
  }

  return 0;
}

void *mlir::mps::FFTScalingModeAttr::print(mlir::mps::FFTScalingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "none";
    v8 = 4;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "unitary";
    v8 = 7;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "size";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::MPSBufferTensorAttr::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, __int128 *a5, uint64_t a6)
{
  v7 = *a5;
  v8 = *(a5 + 2);
  return mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(a1, a2, a3, a4, &v7, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v20[1] = a3;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJRNS1_16RankedTensorTypeERNS2_28MPSDialectResourceBlobHandleERyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v27[1] = v20;
  v23 = a4;
  v24 = *a5;
  v25 = a5[2];
  v26 = a6;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ DWORD1(v24));
  v12 = 0x9DDFEA08EB382D69 * (DWORD1(v24) ^ (v11 >> 47) ^ v11);
  v13 = v12 ^ (v12 >> 47);
  v14 = 0x9DDFEA08EB382D69 * v13;
  v15 = 0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9));
  v16 = __ROR8__((0x9AE16A3B2F90404FLL * a6) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v13 + __ROR8__(v15 - 0x9DDFEA08EB382D69 * v13, 43);
  v17 = v15 - 0x9AE16A3B2F90404FLL * a6 - 0xAE502812AA7333 + __ROR8__(v14 ^ 0xC949D7C7509E6557, 20) + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v17)));
  v21[0] = &v23;
  v21[1] = v27;
  v22 = &v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t mlir::mps::MPSBufferTensorAttr::getChecked(int a1, int a2, mlir::MLIRContext *this, uint64_t a4, __int128 *a5)
{
  v21 = *a5;
  v22 = *(a5 + 2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v17[1] = this;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v24[1] = v17;
  v20 = a4;
  v23 = 0;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v21 - 0xAE502812AA7333) ^ DWORD1(v21));
  v9 = 0x9DDFEA08EB382D69 * (DWORD1(v21) ^ (v8 >> 47) ^ v8);
  v10 = v9 ^ (v9 >> 47);
  v11 = 0x9DDFEA08EB382D69 * v10;
  v12 = 0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9));
  v13 = __ROR8__(v12 - 0x9DDFEA08EB382D69 * v10, 43) + 0x6C105E72878303FFLL * v10 - 0x4AA9CCC802B940A1;
  v14 = __ROR8__(v11 ^ 0xC949D7C7509E6557, 20);
  v15 = 0x9DDFEA08EB382D69 * ((v12 - 0xAE502812AA7333 + v14 + 24) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v12 - 0xAE502812AA7333 + v14 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ (v12 - 0xAE502812AA7333 + v14 + 24))));
  v18[0] = &v20;
  v18[1] = v24;
  v19 = &v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::mps::MPSBufferTensorAttr::parse(mlir::AsmParser *a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  v4 = (*(*a1 + 40))(a1);
  if (!a2)
  {
    *v37 = "expected a trailing type";
    v39 = 259;
    (*(*a1 + 24))(v53, a1, v4, v37);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return 0;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v13 = v58;
    if (v58)
    {
      v14 = v59;
      v15 = v58;
      if (v59 != v58)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = v58;
      }

      v59 = v13;
      operator delete(v15);
    }

    v16 = v56;
    if (v56)
    {
      v17 = v57;
      v18 = v56;
      if (v57 != v56)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v56;
      }

      v57 = v16;
      operator delete(v18);
    }

    v24 = v54;
    if (v54 == &v55)
    {
      return 0;
    }

    goto LABEL_49;
  }

  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    *v37 = "invalid kind of type specified";
    v39 = 259;
    (*(*a1 + 24))(v62, a1, v4, v37);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if ((v70 & 1) == 0)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v68;
      v7 = __p;
      if (v68 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v68 = v5;
      operator delete(v7);
    }

    v8 = v65;
    if (v65)
    {
      v9 = v66;
      v10 = v65;
      if (v66 != v65)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v65;
      }

      v66 = v8;
      operator delete(v10);
    }

    v24 = v63;
    if (v63 == &v64)
    {
      return 0;
    }

    goto LABEL_49;
  }

  if ((*(*a1 + 152))(a1))
  {
    mlir::AsmParser::parseResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>(a1, v37);
    v21 = v37[0];
    *v52 = *&v37[1];
    *&v52[15] = *&v37[16];
    v22 = *a1;
    if (v38)
    {
      if ((*(v22 + 128))(a1))
      {
        v39 = 257;
        if (((*(*a1 + 400))(a1, "handle_offset", 13, v37) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
        {
          return 0;
        }

        *v37 = 0;
        if ((mlir::AsmParser::parseInteger<unsigned long long>(a1, v37) & 1) == 0)
        {
          v36 = (*(*a1 + 40))(a1);
          v39 = 259;
          (*(*a1 + 24))(v42, a1, v36, v37);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
          return 0;
        }

        v23 = *v37;
      }

      else
      {
        v23 = 0;
      }

      if ((*(*a1 + 168))(a1))
      {
        Context = mlir::AsmParser::getContext(a1);
        *&v37[1] = *v52;
        *&v37[16] = *&v52[15];
        v40[0] = a1;
        v40[1] = &v41;
        v41 = v4;
        v37[0] = v21;
        return mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_3mps19MPSBufferTensorAttrEJPNS1_11MLIRContextENS1_16RankedTensorTypeENS8_28MPSDialectResourceBlobHandleEyEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v40, Context, a2, v37, v23);
      }

      return 0;
    }

    v26 = (*(v22 + 40))(a1);
    v39 = 259;
    (*(*a1 + 24))(v43, a1, v26, v37);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 != 1)
    {
      return 0;
    }

    if (v50 != &v51)
    {
      free(v50);
    }

    v27 = v48;
    if (v48)
    {
      v28 = v49;
      v29 = v48;
      if (v49 != v48)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = v48;
      }

      v49 = v27;
      operator delete(v29);
    }

    v30 = v46;
    if (v46)
    {
      v31 = v47;
      v32 = v46;
      if (v47 != v46)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        v32 = v46;
      }

      v47 = v30;
      operator delete(v32);
    }

    v24 = v44;
    if (v44 == &v45)
    {
      return 0;
    }

LABEL_49:
    free(v24);
  }

  return 0;
}

double mlir::AsmParser::parseResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>@<D0>(mlir::AsmParser *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  Context = mlir::AsmParser::getContext(a1);
  Dialect = mlir::MLIRContext::getOrLoadDialect(Context, "mps", 3, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>, &Context);
  if (Dialect)
  {
    (*(*a1 + 616))(&v28, a1, Dialect);
    if ((v30 & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return *&v6;
    }

    v7 = *(&v28 + 1);
    {
      if (v7 != mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
      {
LABEL_5:
        v34 = 257;
        (*(*a1 + 24))(&Context, a1, v4, &v32);
        if (Context)
        {
          LODWORD(v35) = 3;
          *(&v35 + 1) = "provided resource handle differs from the expected resource type";
          v36 = 64;
          if (v40 >= v41)
          {
            if (v39 > &v35 || v39 + 24 * v40 <= &v35)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v8 = v39 + 24 * v40;
          v6 = v35;
          *(v8 + 2) = v36;
          *v8 = v6;
          ++v40;
          v9 = Context;
          *a2 = 0;
          *(a2 + 24) = 0;
          if (v9)
          {
            mlir::InFlightDiagnostic::report(&Context);
          }

          if (v48 != 1)
          {
            return *&v6;
          }
        }

        else
        {
          *a2 = 0;
          *(a2 + 24) = 0;
          if (v48 != 1)
          {
            return *&v6;
          }
        }

        if (v47 != &v48)
        {
          free(v47);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v46;
          v23 = __p;
          if (v46 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v46 = v21;
          operator delete(v23);
        }

        v16 = v43;
        if (!v43)
        {
LABEL_50:
          if (v39 != &v42)
          {
            free(v39);
          }

          return *&v6;
        }

        v24 = v44;
        v18 = v43;
        if (v44 == v43)
        {
LABEL_49:
          v44 = v16;
          operator delete(v18);
          goto LABEL_50;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v16);
LABEL_48:
        v18 = v43;
        goto LABEL_49;
      }
    }

    else
    {
      mlir::mps::getBufferTensorAttrWithKey();
      if (v7 != mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
      {
        goto LABEL_5;
      }
    }

    *&v6 = v28;
    *a2 = v28;
    *(a2 + 16) = v29;
    *(a2 + 24) = 1;
    return *&v6;
  }

  v31 = 257;
  (*(*a1 + 24))(&Context, a1, v4, &v28);
  if (!Context)
  {
    goto LABEL_19;
  }

  LODWORD(v32) = 3;
  *(&v32 + 1) = "dialect '";
  v33 = 9;
  if (v40 >= v41)
  {
    if (v39 > &v32 || v39 + 24 * v40 <= &v32)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = v39 + 24 * v40;
  v6 = v32;
  *(v10 + 2) = v33;
  *v10 = v6;
  ++v40;
  if (Context && (v34 = 262, *&v32 = "mps", *(&v32 + 1) = 3, mlir::Diagnostic::operator<<(&v38, &v32), Context))
  {
    LODWORD(v32) = 3;
    *(&v32 + 1) = "' is unknown";
    v33 = 12;
    if (v40 >= v41)
    {
      if (v39 > &v32 || v39 + 24 * v40 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v39 + 24 * v40;
    v6 = v32;
    *(v11 + 2) = v33;
    *v11 = v6;
    ++v40;
    v12 = Context;
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v12)
    {
      mlir::InFlightDiagnostic::report(&Context);
    }
  }

  else
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v46;
      v15 = __p;
      if (v46 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v46 = v13;
      operator delete(v15);
    }

    v16 = v43;
    if (!v43)
    {
      goto LABEL_50;
    }

    v17 = v44;
    v18 = v43;
    if (v44 == v43)
    {
      goto LABEL_49;
    }

    do
    {
      v20 = *--v17;
      v19 = v20;
      *v17 = 0;
      if (v20)
      {
        MEMORY[0x259C63150](v19, 0x1000C8077774924);
      }
    }

    while (v17 != v16);
    goto LABEL_48;
  }

  return *&v6;
}

void *mlir::mps::MPSBufferTensorAttr::print(mlir::mps::MPSBufferTensorAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 16);
  v24 = *(*this + 32);
  v23 = v6;
  (*(*a2 + 96))(a2, &v23);
  if (!*(*this + 40))
  {
    goto LABEL_25;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = v7[4];
  if (v7[3] == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++v7[4];
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 0xCuLL)
  {
    qmemcpy(v12, "handle_offset", 13);
    v11[4] += 13;
  }

  else
  {
    llvm::raw_ostream::write(v11, "handle_offset", 0xDuLL);
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, "=", 1uLL);
    if (!*(*this + 40))
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v16 = 61;
    ++v15[4];
    if (!*(*this + 40))
    {
      goto LABEL_25;
    }
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *(*this + 40);
  v20 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v20, v19);
LABEL_25:
  result = (*(*a2 + 16))(a2);
  v22 = result[4];
  if (result[3] == v22)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v22 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::mps::CallInlineModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::CallInlineModeAttr::parse(mlir::AsmParser *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v53 = 0;
  v54 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v53))
  {
LABEL_58:
    v37 = (*(*a1 + 40))(a1);
    LOWORD(v69) = 259;
    (*(*a1 + 24))(v58, a1, v37, v67);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v38 = v63;
      if (v63)
      {
        v39 = v64;
        v40 = v63;
        if (v64 != v63)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = v63;
        }

        v64 = v38;
        operator delete(v40);
      }

      v41 = v61;
      if (v61)
      {
        v42 = v62;
        v43 = v61;
        if (v62 != v61)
        {
          do
          {
            v45 = *--v42;
            v44 = v45;
            *v42 = 0;
            if (v45)
            {
              MEMORY[0x259C63150](v44, 0x1000C8077774924);
            }
          }

          while (v42 != v41);
          v43 = v61;
        }

        v62 = v41;
        operator delete(v43);
      }

      if (v59 != &v60)
      {
        free(v59);
      }
    }

    return 0;
  }

  if (v54 != 2)
  {
    if (v54 == 9)
    {
      if (*v53 != 0x6974616D6F747561 || *(v53 + 8) != 99)
      {
        goto LABEL_21;
      }

      v4 = 2;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v54 != 3)
      {
        goto LABEL_21;
      }

      if (*v53 != 26223 || *(v53 + 2) != 102)
      {
        goto LABEL_21;
      }

      v4 = 0;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_81:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v55 = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
    *(&v55 + 1) = Context;
    v67[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v67[1] = &v55;
    v57 = v4;
    v49 = v4 ^ 0xFF51AFD7ED558CCDLL;
    v50 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v49);
    v53 = &v57;
    v51[0] = &v57;
    v51[1] = v67;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) >> 32) >> 15) ^ (-348639895 * (v49 ^ (v50 >> 47) ^ v50))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v53, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v51);
  }

  if (*v53 != 28271)
  {
LABEL_21:
    v52 = 257;
    (*(*a1 + 24))(v67, a1, v2, v51);
    if (v67[0])
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected ";
      v56 = 9;
      if (v69 >= v70)
      {
        if (v68 > &v55 || v68 + 24 * v69 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v68 + 24 * v69;
      v7 = v55;
      *(v6 + 2) = v56;
      *v6 = v7;
      v8 = ++v69;
      if (v67[0])
      {
        LODWORD(v55) = 3;
        *(&v55 + 1) = "::mlir::mps::CallInlineMode";
        v56 = 27;
        if (v8 >= v70)
        {
          if (v68 > &v55 || v68 + 24 * v8 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v68 + 24 * v69;
        v10 = v55;
        *(v9 + 2) = v56;
        *v9 = v10;
        v11 = ++v69;
        if (v67[0])
        {
          LODWORD(v55) = 3;
          *(&v55 + 1) = " to be one of: ";
          v56 = 15;
          if (v11 >= v70)
          {
            if (v68 > &v55 || v68 + 24 * v11 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v68 + 24 * v69;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          v14 = ++v69;
          if (v67[0])
          {
            LODWORD(v55) = 3;
            *(&v55 + 1) = "off";
            v56 = 3;
            if (v14 >= v70)
            {
              if (v68 > &v55 || v68 + 24 * v14 <= &v55)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v15 = v68 + 24 * v69;
            v16 = v55;
            *(v15 + 2) = v56;
            *v15 = v16;
            v17 = ++v69;
            if (v67[0])
            {
              LODWORD(v55) = 3;
              *(&v55 + 1) = ", ";
              v56 = 2;
              if (v17 >= v70)
              {
                if (v68 > &v55 || v68 + 24 * v17 <= &v55)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v18 = v68 + 24 * v69;
              v19 = v55;
              *(v18 + 2) = v56;
              *v18 = v19;
              v20 = ++v69;
              if (v67[0])
              {
                LODWORD(v55) = 3;
                *(&v55 + 1) = "on";
                v56 = 2;
                if (v20 >= v70)
                {
                  if (v68 > &v55 || v68 + 24 * v20 <= &v55)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v21 = v68 + 24 * v69;
                v22 = v55;
                *(v21 + 2) = v56;
                *v21 = v22;
                v23 = ++v69;
                if (v67[0])
                {
                  LODWORD(v55) = 3;
                  *(&v55 + 1) = ", ";
                  v56 = 2;
                  if (v23 >= v70)
                  {
                    if (v68 > &v55 || v68 + 24 * v23 <= &v55)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v24 = v68 + 24 * v69;
                  v25 = v55;
                  *(v24 + 2) = v56;
                  *v24 = v25;
                  v26 = ++v69;
                  if (v67[0])
                  {
                    LODWORD(v55) = 3;
                    *(&v55 + 1) = "automatic";
                    v56 = 9;
                    if (v26 >= v70)
                    {
                      if (v68 > &v55 || v68 + 24 * v26 <= &v55)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v27 = v68 + 24 * v69;
                    v28 = v55;
                    *(v27 + 2) = v56;
                    *v27 = v28;
                    ++v69;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
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

      v29 = __p;
      if (__p)
      {
        v30 = v75;
        v31 = __p;
        if (v75 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v75 = v29;
        operator delete(v31);
      }

      v32 = v72;
      if (v72)
      {
        v33 = v73;
        v34 = v72;
        if (v73 != v72)
        {
          do
          {
            v36 = *--v33;
            v35 = v36;
            *v33 = 0;
            if (v36)
            {
              MEMORY[0x259C63150](v35, 0x1000C8077774924);
            }
          }

          while (v33 != v32);
          v34 = v72;
        }

        v73 = v32;
        operator delete(v34);
      }

      if (v68 != &v71)
      {
        free(v68);
      }
    }

    goto LABEL_58;
  }

  v4 = 1;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_81;
  }

  return 0;
}

void *mlir::mps::CallInlineModeAttr::print(mlir::mps::CallInlineModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "off";
    v8 = 3;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "automatic";
    v8 = 9;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "on";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::MPSDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = (*(*a2 + 40))(a2);
  v72 = a2;
  v7 = (*(*a2 + 40))(a2);
  BYTE2(v76) = 0;
  v74 = 0;
  v75 = 0;
  v73 = v7;
  LOBYTE(v76) = 0;
  if (((*(*a2 + 640))(a2, &v74) & 1) == 0)
  {
    v8 = 0;
    if ((v76 & 0x10000) != 0)
    {
      LOWORD(v76) = 256;
      *&v69 = "tensor_data_layout";
      v9 = 0;
      v10 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v72) & 0x100) != 0)
      {
        return v8;
      }
    }

    else
    {
      LOWORD(v76) = 256;
      BYTE2(v76) = 1;
      v9 = 0;
      v10 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v72) & 0x100) != 0)
      {
        return v8;
      }
    }

    goto LABEL_288;
  }

  *&v69 = "tensor_data_layout";
  *(&v69 + 1) = 18;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
  if (v75)
  {
    if (v75 == 18)
    {
      v11 = *v74 == 0x645F726F736E6574 && *(v74 + 8) == 0x6F79616C5F617461;
      if (v11 && *(v74 + 16) == 29813)
      {
        v22 = mlir::mps::TensorDataLayoutAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "reduction_mode";
    *(&v69 + 1) = 14;
    goto LABEL_18;
  }

  (*(*v72 + 648))(v72, &v69, 1);
  *&v69 = "reduction_mode";
  *(&v69 + 1) = 14;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
  if (v75)
  {
LABEL_18:
    if (v9 == 14 && *v74 == 0x6F69746375646572 && *(v74 + 6) == 0x65646F6D5F6E6F69)
    {
      v22 = mlir::mps::ReductionModeAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "device_hint";
    *(&v69 + 1) = 11;
    if (v9)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

  (*(*v72 + 648))(v72, &v69, 1);
  *&v69 = "device_hint";
  *(&v69 + 1) = 11;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
  if (v75)
  {
LABEL_24:
    if (v9 == 11 && *v74 == 0x685F656369766564 && *(v74 + 3) == 0x746E69685F656369)
    {
      v22 = mlir::mps::DeviceHintAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "scatter_mode";
    *(&v69 + 1) = 12;
    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_63:
  (*(*v72 + 648))(v72, &v69, 1);
  *&v69 = "scatter_mode";
  *(&v69 + 1) = 12;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
  if (v75)
  {
LABEL_30:
    if (v9 == 12 && *v74 == 0x5F72657474616373 && *(v74 + 8) == 1701080941)
    {
      v22 = mlir::mps::ScatterModeAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "padding_mode";
    *(&v69 + 1) = 12;
    if (v9)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_65:
  (*(*v72 + 648))(v72, &v69, 1);
  *&v69 = "padding_mode";
  *(&v69 + 1) = 12;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
  if (v75)
  {
LABEL_36:
    if (v9 == 12 && *v74 == 0x5F676E6964646170 && *(v74 + 8) == 1701080941)
    {
      v22 = mlir::mps::PaddingModeAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "sampling_mode";
    *(&v69 + 1) = 13;
    if (v9)
    {
      goto LABEL_42;
    }

LABEL_69:
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "nearest_rounding_mode";
    *(&v69 + 1) = 21;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
    if (v75)
    {
      goto LABEL_48;
    }

    goto LABEL_71;
  }

LABEL_67:
  (*(*v72 + 648))(v72, &v69, 1);
  *&v69 = "sampling_mode";
  *(&v69 + 1) = 13;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
  if (!v75)
  {
    goto LABEL_69;
  }

LABEL_42:
  if (v9 == 13 && *v74 == 0x676E696C706D6173 && *(v74 + 5) == 0x65646F6D5F676E69)
  {
    v22 = mlir::mps::SamplingModeAttr::parse(a2);
    goto LABEL_287;
  }

  *&v69 = "nearest_rounding_mode";
  *(&v69 + 1) = 21;
  if (v9)
  {
LABEL_48:
    if (v9 == 21)
    {
      v18 = *v74 == 0x5F7473657261656ELL && *(v74 + 8) == 0x676E69646E756F72;
      if (v18 && *(v74 + 13) == 0x65646F6D5F676E69)
      {
        v22 = mlir::mps::NearestRoundingModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "sparse_tensor_storage";
    *(&v69 + 1) = 21;
    goto LABEL_73;
  }

LABEL_71:
  (*(*v72 + 648))(v72, &v69, 1);
  *&v69 = "sparse_tensor_storage";
  *(&v69 + 1) = 21;
  if ((v76 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v75;
LABEL_73:
  if (v9)
  {
    if (v9 == 21)
    {
      v20 = *v74 == 0x745F657372617073 && *(v74 + 8) == 0x74735F726F736E65;
      if (v20 && *(v74 + 13) == 0x656761726F74735FLL)
      {
        v22 = mlir::mps::SparseTensorStorageAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "texture_tensor_pixel_format";
    *(&v69 + 1) = 27;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "texture_tensor_pixel_format";
    *(&v69 + 1) = 27;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 27)
    {
      v23 = *v74 == 0x5F65727574786574 && *(v74 + 8) == 0x705F726F736E6574;
      v24 = v23 && *(v74 + 16) == 0x726F665F6C657869;
      if (v24 && *(v74 + 19) == 0x74616D726F665F6CLL)
      {
        v22 = mlir::mps::MetalPixelFormatAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "random_normal_sampling_method";
    *(&v69 + 1) = 29;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "random_normal_sampling_method";
    *(&v69 + 1) = 29;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 29)
    {
      v26 = *v74 == 0x6E5F6D6F646E6172 && *(v74 + 8) == 0x61735F6C616D726FLL;
      v27 = v26 && *(v74 + 16) == 0x6D5F676E696C706DLL;
      if (v27 && *(v74 + 21) == 0x646F6874656D5F67)
      {
        v22 = mlir::mps::NormalSamplingMethodAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "padding_style";
    *(&v69 + 1) = 13;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "padding_style";
    *(&v69 + 1) = 13;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 13 && *v74 == 0x5F676E6964646170 && *(v74 + 5) == 0x656C7974735F676ELL)
    {
      v22 = mlir::mps::PaddingStyleAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "pooling_indices_mode";
    *(&v69 + 1) = 20;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "pooling_indices_mode";
    *(&v69 + 1) = 20;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 20)
    {
      v30 = *v74 == 0x5F676E696C6F6F70 && *(v74 + 8) == 0x5F73656369646E69;
      if (v30 && *(v74 + 16) == 1701080941)
      {
        v22 = mlir::mps::PoolIndicesModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "rnn_activation";
    *(&v69 + 1) = 14;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "rnn_activation";
    *(&v69 + 1) = 14;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 14 && *v74 == 0x697463615F6E6E72 && *(v74 + 6) == 0x6E6F697461766974)
    {
      v22 = mlir::mps::RNNActivationAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "lstm_gate_layout";
    *(&v69 + 1) = 16;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "lstm_gate_layout";
    *(&v69 + 1) = 16;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 16 && *v74 == 0x7461675F6D74736CLL && *(v74 + 8) == 0x74756F79616C5F65)
    {
      v22 = mlir::mps::LSTMGateLayoutAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "gru_gate_layout";
    *(&v69 + 1) = 15;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "gru_gate_layout";
    *(&v69 + 1) = 15;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 15 && *v74 == 0x657461675F757267 && *(v74 + 7) == 0x74756F79616C5F65)
    {
      v22 = mlir::mps::GRUGateLayoutAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "stencil_padding_mode";
    *(&v69 + 1) = 20;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "stencil_padding_mode";
    *(&v69 + 1) = 20;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 20)
    {
      v35 = *v74 == 0x5F6C69636E657473 && *(v74 + 8) == 0x5F676E6964646170;
      if (v35 && *(v74 + 16) == 1701080941)
      {
        v22 = mlir::mps::StencilPaddingModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "crop_resize_alignment_mode";
    *(&v69 + 1) = 26;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "crop_resize_alignment_mode";
    *(&v69 + 1) = 26;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 26)
    {
      v37 = *v74 == 0x7365725F706F7263 && *(v74 + 8) == 0x67696C615F657A69;
      v38 = v37 && *(v74 + 16) == 0x6F6D5F746E656D6ELL;
      if (v38 && *(v74 + 24) == 25956)
      {
        v22 = mlir::mps::CropResizeAlignmentModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "crop_resize_coordinate_mode";
    *(&v69 + 1) = 27;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "crop_resize_coordinate_mode";
    *(&v69 + 1) = 27;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 27)
    {
      v40 = *v74 == 0x7365725F706F7263 && *(v74 + 8) == 0x726F6F635F657A69;
      v41 = v40 && *(v74 + 16) == 0x6D5F6574616E6964;
      if (v41 && *(v74 + 19) == 0x65646F6D5F657461)
      {
        v22 = mlir::mps::CropResizeCoordinateModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "pruning_metric";
    *(&v69 + 1) = 14;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "pruning_metric";
    *(&v69 + 1) = 14;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 14 && *v74 == 0x5F676E696E757270 && *(v74 + 6) == 0x63697274656D5F67)
    {
      v22 = mlir::mps::PruningMetricAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "pruning_structure";
    *(&v69 + 1) = 17;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "pruning_structure";
    *(&v69 + 1) = 17;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 17)
    {
      v44 = *v74 == 0x5F676E696E757270 && *(v74 + 8) == 0x7275746375727473;
      if (v44 && *(v74 + 16) == 101)
      {
        v22 = mlir::mps::PruningStructureAttr::parse(a2);
        goto LABEL_287;
      }
    }

    *&v69 = "similarity_type";
    *(&v69 + 1) = 15;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "similarity_type";
    *(&v69 + 1) = 15;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 15 && *v74 == 0x6972616C696D6973 && *(v74 + 7) == 0x657079745F797469)
    {
      v22 = mlir::mps::SimilarityTypeAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "fft_scaling_mode";
    *(&v69 + 1) = 16;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "fft_scaling_mode";
    *(&v69 + 1) = 16;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (v9)
  {
    if (v9 == 16 && *v74 == 0x6C6163735F746666 && *(v74 + 8) == 0x65646F6D5F676E69)
    {
      v22 = mlir::mps::FFTScalingModeAttr::parse(a2);
      goto LABEL_287;
    }

    *&v69 = "buffer_tensor";
    *(&v69 + 1) = 13;
  }

  else
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "buffer_tensor";
    *(&v69 + 1) = 13;
    if ((v76 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v75;
  }

  if (!v9)
  {
    (*(*v72 + 648))(v72, &v69, 1);
    *&v69 = "call_inline_mode";
    *(&v69 + 1) = 16;
    if ((v76 & 0x10000) == 0)
    {
      v9 = v75;
      goto LABEL_273;
    }

LABEL_3:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v72) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_288;
  }

  if (v9 == 13 && *v74 == 0x745F726566667562 && *(v74 + 5) == 0x726F736E65745F72)
  {
    v22 = mlir::mps::MPSBufferTensorAttr::parse(a2, a3);
    goto LABEL_287;
  }

  *&v69 = "call_inline_mode";
  *(&v69 + 1) = 16;
LABEL_273:
  if (v9)
  {
    if (v9 != 16)
    {
      goto LABEL_328;
    }

    if (*v74 != 0x6C6E695F6C6C6163 || *(v74 + 8) != 0x65646F6D5F656E69)
    {
      goto LABEL_328;
    }

    v22 = mlir::mps::CallInlineModeAttr::parse(a2);
LABEL_287:
    v8 = v22;
    LOBYTE(v76) = v22 != 0;
    *(&v76 + 1) = 257;
    v9 = 0;
    v10 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v72) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_288;
  }

  (*(*v72 + 648))(v72, &v69, 1);
  if ((v76 & 0x10000) != 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v72) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_288;
  }

  v9 = v75;
LABEL_328:
  v8 = 0;
  v10 = v74;
  LOWORD(v76) = 0;
  BYTE2(v76) = 1;
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v72) & 0x100) != 0)
  {
    return v8;
  }

LABEL_288:
  v68 = 257;
  (*(*a2 + 24))(&v72, a2, v6, v67);
  if (v72)
  {
    LODWORD(v69) = 3;
    v70 = 19;
    if (v76 >= v77)
    {
      if (v75 > &v69 || v75 + 24 * v76 <= &v69)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v50 = v75 + 24 * v76;
    v51 = v69;
    *(v50 + 2) = v70;
    *v50 = v51;
    ++v76;
    if (v72)
    {
      v71 = 261;
      *&v69 = v10;
      *(&v69 + 1) = v9;
      mlir::Diagnostic::operator<<(&v73, &v69);
      if (v72)
      {
        LODWORD(v69) = 3;
        v70 = 14;
        if (v76 >= v77)
        {
          if (v75 > &v69 || v75 + 24 * v76 <= &v69)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v52 = v75 + 24 * v76;
        v53 = v69;
        *(v52 + 2) = v70;
        *v52 = v53;
        ++v76;
        if (v72)
        {
          v54 = *(a1 + 8);
          v55 = *(a1 + 16);
          v71 = 261;
          *&v69 = v54;
          *(&v69 + 1) = v55;
          mlir::Diagnostic::operator<<(&v73, &v69);
          if (v72)
          {
            LODWORD(v69) = 3;
            v70 = 1;
            if (v76 >= v77)
            {
              if (v75 > &v69 || v75 + 24 * v76 <= &v69)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v56 = v75 + 24 * v76;
            v57 = v69;
            *(v56 + 2) = v70;
            *v56 = v57;
            ++v76;
            if (v72)
            {
              mlir::InFlightDiagnostic::report(&v72);
            }
          }
        }
      }
    }
  }

  if (v84 == 1)
  {
    if (v83 != &v84)
    {
      free(v83);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v82;
      v60 = __p;
      if (v82 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v82 = v58;
      operator delete(v60);
    }

    v61 = v79;
    if (v79)
    {
      v62 = v80;
      v63 = v79;
      if (v80 != v79)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x259C63150](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        v63 = v79;
      }

      v80 = v61;
      operator delete(v63);
    }

    if (v75 != &v78)
    {
      free(v75);
    }
  }

  return 0;
}

void mlir::mps::MPSDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v53 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if ((v7[3] - v8) > 0x11)
    {
      *(v8 + 16) = 29813;
      *v8 = *"tensor_data_layout";
      v7[4] += 18;
    }

    else
    {
      llvm::raw_ostream::write(v7, "tensor_data_layout", 0x12uLL);
    }

    mlir::mps::TensorDataLayoutAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    v53 = a2;
    v9 = (*(*a3 + 16))(a3);
    v10 = v9[4];
    if (v9[3] - v10 > 0xDuLL)
    {
      qmemcpy(v10, "reduction_mode", 14);
      v9[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v9, "reduction_mode", 0xEuLL);
    }

    mlir::mps::ReductionModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id)
  {
    v53 = a2;
    v11 = (*(*a3 + 16))(a3);
    v12 = v11[4];
    if ((v11[3] - v12) > 0xA)
    {
      *(v12 + 7) = 1953393000;
      *v12 = *"device_hint";
      v11[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v11, "device_hint", 0xBuLL);
    }

    mlir::mps::DeviceHintAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    v53 = a2;
    v13 = (*(*a3 + 16))(a3);
    v14 = v13[4];
    if ((v13[3] - v14) > 0xB)
    {
      *(v14 + 8) = 1701080941;
      *v14 = *"scatter_mode";
      v13[4] += 12;
    }

    else
    {
      llvm::raw_ostream::write(v13, "scatter_mode", 0xCuLL);
    }

    mlir::mps::ScatterModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
  {
    v53 = a2;
    v15 = (*(*a3 + 16))(a3);
    v16 = v15[4];
    if ((v15[3] - v16) > 0xB)
    {
      *(v16 + 8) = 1701080941;
      *v16 = *"padding_mode";
      v15[4] += 12;
    }

    else
    {
      llvm::raw_ostream::write(v15, "padding_mode", 0xCuLL);
    }

    mlir::mps::PaddingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    v53 = a2;
    v17 = (*(*a3 + 16))(a3);
    v18 = v17[4];
    if (v17[3] - v18 > 0xCuLL)
    {
      qmemcpy(v18, "sampling_mode", 13);
      v17[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v17, "sampling_mode", 0xDuLL);
    }

    mlir::mps::SamplingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
  {
    v53 = a2;
    v19 = (*(*a3 + 16))(a3);
    v20 = v19[4];
    if (v19[3] - v20 > 0x14uLL)
    {
      qmemcpy(v20, "nearest_rounding_mode", 21);
      v19[4] += 21;
    }

    else
    {
      llvm::raw_ostream::write(v19, "nearest_rounding_mode", 0x15uLL);
    }

    mlir::mps::NearestRoundingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    v53 = a2;
    v21 = (*(*a3 + 16))(a3);
    v22 = v21[4];
    if (v21[3] - v22 > 0x14uLL)
    {
      qmemcpy(v22, "sparse_tensor_storage", 21);
      v21[4] += 21;
    }

    else
    {
      llvm::raw_ostream::write(v21, "sparse_tensor_storage", 0x15uLL);
    }

    mlir::mps::SparseTensorStorageAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
  {
    v53 = a2;
    v23 = (*(*a3 + 16))(a3);
    v24 = v23[4];
    if (v23[3] - v24 > 0x1AuLL)
    {
      qmemcpy(v24, "texture_tensor_pixel_format", 27);
      v23[4] += 27;
    }

    else
    {
      llvm::raw_ostream::write(v23, "texture_tensor_pixel_format", 0x1BuLL);
    }

    mlir::mps::MetalPixelFormatAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
  {
    v53 = a2;
    v25 = (*(*a3 + 16))(a3);
    v26 = v25[4];
    if (v25[3] - v26 > 0x1CuLL)
    {
      qmemcpy(v26, "random_normal_sampling_method", 29);
      v25[4] += 29;
    }

    else
    {
      llvm::raw_ostream::write(v25, "random_normal_sampling_method", 0x1DuLL);
    }

    mlir::mps::NormalSamplingMethodAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    v53 = a2;
    v27 = (*(*a3 + 16))(a3);
    v28 = v27[4];
    if (v27[3] - v28 > 0xCuLL)
    {
      qmemcpy(v28, "padding_style", 13);
      v27[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v27, "padding_style", 0xDuLL);
    }

    mlir::mps::PaddingStyleAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
  {
    v53 = a2;
    v29 = (*(*a3 + 16))(a3);
    v30 = v29[4];
    if ((v29[3] - v30) > 0x13)
    {
      *(v30 + 16) = 1701080941;
      *v30 = *"pooling_indices_mode";
      v29[4] += 20;
    }

    else
    {
      llvm::raw_ostream::write(v29, "pooling_indices_mode", 0x14uLL);
    }

    mlir::mps::PoolIndicesModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v53 = a2;
    v31 = (*(*a3 + 16))(a3);
    v32 = v31[4];
    if (v31[3] - v32 > 0xDuLL)
    {
      qmemcpy(v32, "rnn_activation", 14);
      v31[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v31, "rnn_activation", 0xEuLL);
    }

    mlir::mps::RNNActivationAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
  {
    v53 = a2;
    v33 = (*(*a3 + 16))(a3);
    v34 = v33[4];
    if (v33[3] - v34 > 0xFuLL)
    {
      *v34 = *"lstm_gate_layout";
      v33[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v33, "lstm_gate_layout", 0x10uLL);
    }

    mlir::mps::LSTMGateLayoutAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
  {
    v53 = a2;
    v35 = (*(*a3 + 16))(a3);
    v36 = v35[4];
    if (v35[3] - v36 > 0xEuLL)
    {
      qmemcpy(v36, "gru_gate_layout", 15);
      v35[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v35, "gru_gate_layout", 0xFuLL);
    }

    mlir::mps::GRUGateLayoutAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    v53 = a2;
    v37 = (*(*a3 + 16))(a3);
    v38 = v37[4];
    if ((v37[3] - v38) > 0x13)
    {
      *(v38 + 16) = 1701080941;
      *v38 = *"stencil_padding_mode";
      v37[4] += 20;
    }

    else
    {
      llvm::raw_ostream::write(v37, "stencil_padding_mode", 0x14uLL);
    }

    mlir::mps::StencilPaddingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
  {
    v53 = a2;
    v39 = (*(*a3 + 16))(a3);
    v40 = v39[4];
    if (v39[3] - v40 > 0x19uLL)
    {
      qmemcpy(v40, "crop_resize_alignment_mode", 26);
      v39[4] += 26;
    }

    else
    {
      llvm::raw_ostream::write(v39, "crop_resize_alignment_mode", 0x1AuLL);
    }

    mlir::mps::CropResizeAlignmentModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
  {
    v53 = a2;
    v41 = (*(*a3 + 16))(a3);
    v42 = v41[4];
    if (v41[3] - v42 > 0x1AuLL)
    {
      qmemcpy(v42, "crop_resize_coordinate_mode", 27);
      v41[4] += 27;
    }

    else
    {
      llvm::raw_ostream::write(v41, "crop_resize_coordinate_mode", 0x1BuLL);
    }

    mlir::mps::CropResizeCoordinateModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
  {
    v53 = a2;
    v43 = (*(*a3 + 16))(a3);
    v44 = v43[4];
    if (v43[3] - v44 > 0xDuLL)
    {
      qmemcpy(v44, "pruning_metric", 14);
      v43[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v43, "pruning_metric", 0xEuLL);
    }

    mlir::mps::PruningMetricAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
  {
    v53 = a2;
    v45 = (*(*a3 + 16))(a3);
    v46 = v45[4];
    if ((v45[3] - v46) > 0x10)
    {
      *(v46 + 16) = 101;
      *v46 = *"pruning_structure";
      v45[4] += 17;
    }

    else
    {
      llvm::raw_ostream::write(v45, "pruning_structure", 0x11uLL);
    }

    mlir::mps::PruningStructureAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
  {
    v53 = a2;
    v47 = (*(*a3 + 16))(a3);
    v48 = v47[4];
    if (v47[3] - v48 > 0xEuLL)
    {
      qmemcpy(v48, "similarity_type", 15);
      v47[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v47, "similarity_type", 0xFuLL);
    }

    mlir::mps::SimilarityTypeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    v53 = a2;
    v49 = (*(*a3 + 16))(a3);
    v50 = v49[4];
    if (v49[3] - v50 > 0xFuLL)
    {
      *v50 = *"fft_scaling_mode";
      v49[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v49, "fft_scaling_mode", 0x10uLL);
    }

    mlir::mps::FFTScalingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v53 = a2;
    v51 = (*(*a3 + 16))(a3);
    v52 = v51[4];
    if (v51[3] - v52 > 0xCuLL)
    {
      qmemcpy(v52, "buffer_tensor", 13);
      v51[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v51, "buffer_tensor", 0xDuLL);
    }

    mlir::mps::MPSBufferTensorAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
  {
    v53 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if (v5[3] - v6 > 0xFuLL)
    {
      *v6 = *"call_inline_mode";
      v5[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v5, "call_inline_mode", 0x10uLL);
    }

    mlir::mps::CallInlineModeAttr::print(&v53, a3);
  }
}

uint64_t mlir::mps::ACosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ACosOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ACosOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::ACosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::ACosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ACosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ACosOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 17);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  {
    v61 = a1;
    v21 = v9;
    mlir::TensorType::operator mlir::ShapedType();
    a1 = v61;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = v21[1];
    v14 = *(v21 + 4);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = v9[1];
  v14 = *(v9 + 4);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
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
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v70[0] = a2;
  v70[1] = v23;
  *&v68 = mlir::ShapedType::getElementType(v70);
  if (mlir::Type::isSignlessInteger(&v68, 1) || mlir::Type::isSignedInteger(&v68, 8) || mlir::Type::isSignedInteger(&v68, 16) || mlir::Type::isSignedInteger(&v68, 32) || mlir::Type::isSignedInteger(&v68, 64) || mlir::Type::isUnsignedInteger(&v68, 8) || mlir::Type::isUnsignedInteger(&v68, 16) || mlir::Type::isUnsignedInteger(&v68, 32) || mlir::Type::isUnsignedInteger(&v68, 64) || mlir::Type::isF16(&v68) || mlir::Type::isF32(&v68) || mlir::Type::isBF16(&v68) || *(*v68 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 17);
  a1 = v22;
LABEL_34:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_55;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::mps::ConstantOp::verify();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = v35[1];
    v27 = *(v35 + 4);
    if (v27)
    {
      goto LABEL_41;
    }

LABEL_51:
    v36 = a1;
    v37 = 0;
    goto LABEL_53;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = v9[1];
  v27 = *(v9 + 4);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_41:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_51;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_53:
  v62 = a2;
  v63 = v37;
  ElementType = mlir::ShapedType::getElementType(&v62);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v58 = ElementType;
    v67 = ElementType;
    *&v68 = mlir::ComplexType::getElementType(&v67);
    if (!mlir::Type::isF16(&v68))
    {
      v65 = v58;
      v66 = mlir::ComplexType::getElementType(&v65);
      isF32 = mlir::Type::isF32(&v66);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_55:
  v64 = 261;
  v62 = a3;
  v63 = a4;
  mlir::Operation::emitOpError(v70, a1, &v62);
  if (v70[0])
  {
    LODWORD(v68) = 3;
    *(&v68 + 1) = " #";
    v69 = 2;
    if (v72 >= v73)
    {
      if (v71 > &v68 || v71 + 24 * v72 <= &v68)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v71 + 24 * v72;
    v40 = v68;
    *(v39 + 2) = v69;
    *v39 = v40;
    v41 = ++v72;
    if (v70[0])
    {
      LODWORD(v68) = 5;
      *(&v68 + 1) = a5;
      if (v41 >= v73)
      {
        if (v71 > &v68 || v71 + 24 * v41 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v71 + 24 * v72;
      v43 = v68;
      *(v42 + 2) = v69;
      *v42 = v43;
      v44 = ++v72;
      if (v70[0])
      {
        LODWORD(v68) = 3;
        *(&v68 + 1) = " must be tensor of mps native type values or tensor of complex values, but got ";
        v69 = 79;
        if (v44 >= v73)
        {
          if (v71 > &v68 || v71 + 24 * v44 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v71 + 24 * v72;
        v46 = v68;
        *(v45 + 2) = v69;
        *v45 = v46;
        ++v72;
        if (v70[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v68, a2);
          if (v72 >= v73)
          {
            if (v71 > &v68 || v71 + 24 * v72 <= &v68)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v71 + 24 * v72;
          v48 = v68;
          *(v47 + 2) = v69;
          *v47 = v48;
          ++v72;
        }
      }
    }
  }

  v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
  if (v70[0])
  {
    mlir::InFlightDiagnostic::report(v70);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v78;
      v52 = __p;
      if (v78 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v78 = v50;
      operator delete(v52);
    }

    v53 = v75;
    if (v75)
    {
      v54 = v76;
      v55 = v75;
      if (v76 != v75)
      {
        do
        {
          v57 = *--v54;
          v56 = v57;
          *v54 = 0;
          if (v57)
          {
            MEMORY[0x259C63150](v56, 0x1000C8077774924);
          }
        }

        while (v54 != v53);
        v55 = v75;
      }

      v76 = v53;
      operator delete(v55);
    }

    if (v71 != &v74)
    {
      free(v71);
    }
  }

  return v49;
}

uint64_t mlir::mps::ACosOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ACoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ACoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ACoshOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::ACoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::ACoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ACoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ACoshOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ACoshOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ASinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ASinOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ASinOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::ASinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::ASinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ASinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ASinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ASinOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ASinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ASinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ASinhOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::ASinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::ASinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ASinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ASinhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ASinhOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ATan2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ATan2Op::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), __src, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ATan2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::mps::ATan2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ATan2Op::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v20;
  v19 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ATan2Op::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::ATanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ATanOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ATanOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::ATanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::ATanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ATanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ATanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ATanOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ATanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ATanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ATanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::ATanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::ATanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::ATanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}