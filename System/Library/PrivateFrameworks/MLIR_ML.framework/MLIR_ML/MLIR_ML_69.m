void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(uint64_t **a1, uint64_t **a2, void *a3, void *a4)
{
  v124 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v124);
  v125 = ElementType;
  v123 = ***a2;
  v9 = mlir::TensorType::getElementType(&v123);
  v123 = v9;
  v124 = v9;
  v10 = *(*v9 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v122 = v9;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v11 = ElementType;
    }

    else
    {
      v11 = 0;
    }

    v121 = v11;
    v124 = mlir::ComplexType::getElementType(&v122);
    v125 = mlir::ComplexType::getElementType(&v121);
  }

  if (mlir::Type::isF32(&v124) && mlir::Type::isF32(&v125))
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v12 = a3[1] - *a3;
      if (v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v109 = 0;
      v110 = 0;
      v111 = 0;
      v13 = a4[1] - *a4;
      if (v13)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v112, &v109);
      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      v14 = v112;
      if (v112)
      {
        v113 = v112;
LABEL_167:
        operator delete(v14);
        return;
      }

      return;
    }

    v118 = 0;
    v119 = 0;
    v120 = 0;
    v29 = a3[1] - *a3;
    if (v29)
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v30 = a4[1] - *a4;
      if (!v30)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v118, &v115);
        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        v14 = v118;
        if (v118)
        {
          v119 = v118;
          goto LABEL_167;
        }

        return;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v124) || !mlir::Type::isF16(&v125))
  {
    if (mlir::Type::isF16(&v124) && mlir::Type::isF16(&v125))
    {
      if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v95 = 0;
        v94 = 0;
        v96 = 0;
        v35 = a3[1] - *a3;
        if (v35)
        {
          if ((v35 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v36 = a4[1] - *a4;
          if (!v36)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v94, &v91);
            if (v91)
            {
              v92 = v91;
              operator delete(v91);
            }

            v14 = v94;
            if (v94)
            {
              v95 = v94;
              goto LABEL_167;
            }

            return;
          }

          if ((v36 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v17 = a3[1] - *a3;
        if (v17)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v18 = a4[1] - *a4;
          if (!v18)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)10>(a1, a2, &v88, &v85);
            if (v85)
            {
              v86 = v85;
              operator delete(v85);
            }

            v14 = v88;
            if (v88)
            {
              v89 = v88;
              goto LABEL_167;
            }

            return;
          }

          if ((v18 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v124) && mlir::Type::isF32(&v125))
    {
      if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v37 = a3[1] - *a3;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v38 = a4[1] - *a4;
          if (!v38)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v82, &v79);
            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            v14 = v82;
            if (v82)
            {
              v83 = v82;
              goto LABEL_167;
            }

            return;
          }

          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v19 = a3[1] - *a3;
        if (v19)
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v20 = a4[1] - *a4;
          if (!v20)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)10>(a1, a2, &v76, &v73);
            if (v73)
            {
              v74 = v73;
              operator delete(v73);
            }

            v14 = v76;
            if (v76)
            {
              v77 = v76;
              goto LABEL_167;
            }

            return;
          }

          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v124) && mlir::Type::isBF16(&v125))
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v21 = a3[1] - *a3;
      if (v21)
      {
        if ((v21 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v22 = a4[1] - *a4;
        if (!v22)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v70, &v67);
          if (v67)
          {
            v68 = v67;
            operator delete(v67);
          }

          v14 = v70;
          if (v70)
          {
            v71 = v70;
            goto LABEL_167;
          }

          return;
        }

        if ((v22 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v124) && mlir::Type::isBF16(&v125))
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)10>(a1, a2, &v64, &v61);
          if (v61)
          {
            v62 = v61;
            operator delete(v61);
          }

          v14 = v64;
          if (v64)
          {
            v65 = v64;
            goto LABEL_167;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v124) && mlir::Type::isF32(&v125))
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)10>(a1, a2, &v58, &v55);
          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          v14 = v58;
          if (v58)
          {
            v59 = v58;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v124, 64))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)10>(a1, a2, &v52, &v49);
          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }

          v14 = v52;
          if (v52)
          {
            v53 = v52;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v124, 32))
      {
        if (mlir::Type::isInteger(&v124, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v42, a3);
          std::vector<long long>::vector[abi:nn200100](v41, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)10>(a1, a2, v42, v41);
          if (v41[0])
          {
            v41[1] = v41[0];
            operator delete(v41[0]);
          }

          v14 = v42[0];
          if (v42[0])
          {
            v42[1] = v42[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v124, 8) && !mlir::Type::isInteger(&v124, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v123);
          }

          std::vector<long long>::vector[abi:nn200100](v40, a3);
          std::vector<long long>::vector[abi:nn200100](v39, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)10>(a1, a2, v40, v39);
          if (v39[0])
          {
            v39[1] = v39[0];
            operator delete(v39[0]);
          }

          v14 = v40[0];
          if (v40[0])
          {
            v40[1] = v40[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      v33 = a3[1] - *a3;
      if (v33)
      {
        if ((v33 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v34 = a4[1] - *a4;
        if (!v34)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)10>(a1, a2, &v46, &v43);
          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          v14 = v46;
          if (v46)
          {
            v47 = v46;
            goto LABEL_167;
          }

          return;
        }

        if ((v34 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v31 = a3[1] - *a3;
    if (v31)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v104 = 0;
      v103 = 0;
      v105 = 0;
      v32 = a4[1] - *a4;
      if (!v32)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v106, &v103);
        if (v103)
        {
          v104 = v103;
          operator delete(v103);
        }

        v14 = v106;
        if (v106)
        {
          v107 = v106;
          goto LABEL_167;
        }

        return;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v101 = 0;
  v100 = 0;
  v102 = 0;
  v15 = a3[1] - *a3;
  if (v15)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v98 = 0;
  __p = 0;
  v99 = 0;
  v16 = a4[1] - *a4;
  if (v16)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v100, &__p);
  if (__p)
  {
    v98 = __p;
    operator delete(__p);
  }

  v14 = v100;
  if (v100)
  {
    v101 = v100;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(uint64_t **a1, uint64_t **a2, void *a3, void *a4, float16x4_t a5)
{
  v126 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v126);
  v127 = ElementType;
  v125 = ***a2;
  v11 = mlir::TensorType::getElementType(&v125);
  v125 = v11;
  v126 = v11;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v124 = v11;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = ElementType;
    }

    else
    {
      v13 = 0;
    }

    v123 = v13;
    v126 = mlir::ComplexType::getElementType(&v124);
    v127 = mlir::ComplexType::getElementType(&v123);
  }

  if (mlir::Type::isF32(&v126) && mlir::Type::isF32(&v127))
  {
    if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v14 = a3[1] - *a3;
      if (v14)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v111 = 0;
      v112 = 0;
      v113 = 0;
      v15 = a4[1] - *a4;
      if (v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v114, &v111);
      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }

      v16 = v114;
      if (v114)
      {
        v115 = v114;
LABEL_167:
        operator delete(v16);
        return;
      }

      return;
    }

    v120 = 0;
    v121 = 0;
    v122 = 0;
    v31 = a3[1] - *a3;
    if (v31)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v32 = a4[1] - *a4;
      if (!v32)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v120, &v117);
        if (v117)
        {
          v118 = v117;
          operator delete(v117);
        }

        v16 = v120;
        if (v120)
        {
          v121 = v120;
          goto LABEL_167;
        }

        return;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v126) || !mlir::Type::isF16(&v127))
  {
    if (mlir::Type::isF16(&v126) && mlir::Type::isF16(&v127))
    {
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v97 = 0;
        v96 = 0;
        v98 = 0;
        v37 = a3[1] - *a3;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v38 = a4[1] - *a4;
          if (!v38)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v96, &v93);
            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            v16 = v96;
            if (v96)
            {
              v97 = v96;
              goto LABEL_167;
            }

            return;
          }

          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v19 = a3[1] - *a3;
        if (v19)
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v20 = a4[1] - *a4;
          if (!v20)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)11>(a1, a2, &v90, &v87);
            if (v87)
            {
              v88 = v87;
              operator delete(v87);
            }

            v16 = v90;
            if (v90)
            {
              v91 = v90;
              goto LABEL_167;
            }

            return;
          }

          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v126) && mlir::Type::isF32(&v127))
    {
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v84, &v81);
            if (v81)
            {
              v82 = v81;
              operator delete(v81);
            }

            v16 = v84;
            if (v84)
            {
              v85 = v84;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)11>(a1, a2, &v78, &v75);
            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            v16 = v78;
            if (v78)
            {
              v79 = v78;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v126) && mlir::Type::isBF16(&v127))
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v72, &v69);
          if (v69)
          {
            v70 = v69;
            operator delete(v69);
          }

          v16 = v72;
          if (v72)
          {
            v73 = v72;
            goto LABEL_167;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v126) && mlir::Type::isBF16(&v127))
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)11>(a1, a2, &v66, &v63);
          if (v63)
          {
            v64 = v63;
            operator delete(v63);
          }

          v16 = v66;
          if (v66)
          {
            v67 = v66;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v126) && mlir::Type::isF32(&v127))
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)11>(a1, a2, &v60, &v57);
          if (v57)
          {
            v58 = v57;
            operator delete(v57);
          }

          v16 = v60;
          if (v60)
          {
            v61 = v60;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v126, 64))
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v54, &v51);
          if (v51)
          {
            v52 = v51;
            operator delete(v51);
          }

          v16 = v54;
          if (v54)
          {
            v55 = v54;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v126, 32))
      {
        if (mlir::Type::isInteger(&v126, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v16 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v126, 8) && !mlir::Type::isInteger(&v126, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v125);
          }

          std::vector<long long>::vector[abi:nn200100](v42, a3);
          std::vector<long long>::vector[abi:nn200100](v41, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v42, v41);
          if (v41[0])
          {
            v41[1] = v41[0];
            operator delete(v41[0]);
          }

          v16 = v42[0];
          if (v42[0])
          {
            v42[1] = v42[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v48, &v45);
          if (v45)
          {
            v46 = v45;
            operator delete(v45);
          }

          v16 = v48;
          if (v48)
          {
            v49 = v48;
            goto LABEL_167;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v106 = 0;
      v105 = 0;
      v107 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v108, &v105, a5);
        if (v105)
        {
          v106 = v105;
          operator delete(v105);
        }

        v16 = v108;
        if (v108)
        {
          v109 = v108;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v103 = 0;
  v102 = 0;
  v104 = 0;
  v17 = a3[1] - *a3;
  if (v17)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v100 = 0;
  __p = 0;
  v101 = 0;
  v18 = a4[1] - *a4;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v102, &__p);
  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  v16 = v102;
  if (v102)
  {
    v103 = v102;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, void *a3, void *a4)
{
  v124 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v124);
  v125 = ElementType;
  v123 = ***a2;
  v9 = mlir::TensorType::getElementType(&v123);
  v123 = v9;
  v124 = v9;
  v10 = *(*v9 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v122 = v9;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v11 = ElementType;
    }

    else
    {
      v11 = 0;
    }

    v121 = v11;
    v124 = mlir::ComplexType::getElementType(&v122);
    v125 = mlir::ComplexType::getElementType(&v121);
  }

  if (mlir::Type::isF32(&v124) && mlir::Type::isF32(&v125))
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v12 = a3[1] - *a3;
      if (v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v109 = 0;
      v110 = 0;
      v111 = 0;
      v13 = a4[1] - *a4;
      if (v13)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v112, &v109);
      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      v14 = v112;
      if (v112)
      {
        v113 = v112;
LABEL_167:
        operator delete(v14);
        return;
      }

      return;
    }

    v118 = 0;
    v119 = 0;
    v120 = 0;
    v29 = a3[1] - *a3;
    if (v29)
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v30 = a4[1] - *a4;
      if (!v30)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v118, &v115);
        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        v14 = v118;
        if (v118)
        {
          v119 = v118;
          goto LABEL_167;
        }

        return;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v124) || !mlir::Type::isF16(&v125))
  {
    if (mlir::Type::isF16(&v124) && mlir::Type::isF16(&v125))
    {
      if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v95 = 0;
        v94 = 0;
        v96 = 0;
        v35 = a3[1] - *a3;
        if (v35)
        {
          if ((v35 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v36 = a4[1] - *a4;
          if (!v36)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v94, &v91);
            if (v91)
            {
              v92 = v91;
              operator delete(v91);
            }

            v14 = v94;
            if (v94)
            {
              v95 = v94;
              goto LABEL_167;
            }

            return;
          }

          if ((v36 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v17 = a3[1] - *a3;
        if (v17)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v18 = a4[1] - *a4;
          if (!v18)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)12>(a1, a2, &v88, &v85);
            if (v85)
            {
              v86 = v85;
              operator delete(v85);
            }

            v14 = v88;
            if (v88)
            {
              v89 = v88;
              goto LABEL_167;
            }

            return;
          }

          if ((v18 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v124) && mlir::Type::isF32(&v125))
    {
      if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v37 = a3[1] - *a3;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v38 = a4[1] - *a4;
          if (!v38)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v82, &v79);
            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            v14 = v82;
            if (v82)
            {
              v83 = v82;
              goto LABEL_167;
            }

            return;
          }

          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v19 = a3[1] - *a3;
        if (v19)
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v20 = a4[1] - *a4;
          if (!v20)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)12>(a1, a2, &v76, &v73);
            if (v73)
            {
              v74 = v73;
              operator delete(v73);
            }

            v14 = v76;
            if (v76)
            {
              v77 = v76;
              goto LABEL_167;
            }

            return;
          }

          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v124) && mlir::Type::isBF16(&v125))
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v21 = a3[1] - *a3;
      if (v21)
      {
        if ((v21 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v22 = a4[1] - *a4;
        if (!v22)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v70, &v67);
          if (v67)
          {
            v68 = v67;
            operator delete(v67);
          }

          v14 = v70;
          if (v70)
          {
            v71 = v70;
            goto LABEL_167;
          }

          return;
        }

        if ((v22 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v124) && mlir::Type::isBF16(&v125))
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)12>(a1, a2, &v64, &v61);
          if (v61)
          {
            v62 = v61;
            operator delete(v61);
          }

          v14 = v64;
          if (v64)
          {
            v65 = v64;
            goto LABEL_167;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v124) && mlir::Type::isF32(&v125))
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)12>(a1, a2, &v58, &v55);
          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          v14 = v58;
          if (v58)
          {
            v59 = v58;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v124, 64))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)12>(a1, a2, &v52, &v49);
          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }

          v14 = v52;
          if (v52)
          {
            v53 = v52;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v124, 32))
      {
        if (mlir::Type::isInteger(&v124, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v42, a3);
          std::vector<long long>::vector[abi:nn200100](v41, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)12>(a1, a2, v42, v41);
          if (v41[0])
          {
            v41[1] = v41[0];
            operator delete(v41[0]);
          }

          v14 = v42[0];
          if (v42[0])
          {
            v42[1] = v42[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v124, 8) && !mlir::Type::isInteger(&v124, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v123);
          }

          std::vector<long long>::vector[abi:nn200100](v40, a3);
          std::vector<long long>::vector[abi:nn200100](v39, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)12>(a1, a2, v40, v39);
          if (v39[0])
          {
            v39[1] = v39[0];
            operator delete(v39[0]);
          }

          v14 = v40[0];
          if (v40[0])
          {
            v40[1] = v40[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      v33 = a3[1] - *a3;
      if (v33)
      {
        if ((v33 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v34 = a4[1] - *a4;
        if (!v34)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)12>(a1, a2, &v46, &v43);
          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          v14 = v46;
          if (v46)
          {
            v47 = v46;
            goto LABEL_167;
          }

          return;
        }

        if ((v34 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v31 = a3[1] - *a3;
    if (v31)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v104 = 0;
      v103 = 0;
      v105 = 0;
      v32 = a4[1] - *a4;
      if (!v32)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v106, &v103);
        if (v103)
        {
          v104 = v103;
          operator delete(v103);
        }

        v14 = v106;
        if (v106)
        {
          v107 = v106;
          goto LABEL_167;
        }

        return;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v101 = 0;
  v100 = 0;
  v102 = 0;
  v15 = a3[1] - *a3;
  if (v15)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v98 = 0;
  __p = 0;
  v99 = 0;
  v16 = a4[1] - *a4;
  if (v16)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v100, &__p);
  if (__p)
  {
    v98 = __p;
    operator delete(__p);
  }

  v14 = v100;
  if (v100)
  {
    v101 = v100;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, void *a3, void *a4, float16x4_t a5)
{
  v126 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v126);
  v127 = ElementType;
  v125 = ***a2;
  v11 = mlir::TensorType::getElementType(&v125);
  v125 = v11;
  v126 = v11;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v124 = v11;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = ElementType;
    }

    else
    {
      v13 = 0;
    }

    v123 = v13;
    v126 = mlir::ComplexType::getElementType(&v124);
    v127 = mlir::ComplexType::getElementType(&v123);
  }

  if (mlir::Type::isF32(&v126) && mlir::Type::isF32(&v127))
  {
    if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v14 = a3[1] - *a3;
      if (v14)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v111 = 0;
      v112 = 0;
      v113 = 0;
      v15 = a4[1] - *a4;
      if (v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v114, &v111);
      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }

      v16 = v114;
      if (v114)
      {
        v115 = v114;
LABEL_167:
        operator delete(v16);
        return;
      }

      return;
    }

    v120 = 0;
    v121 = 0;
    v122 = 0;
    v31 = a3[1] - *a3;
    if (v31)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v32 = a4[1] - *a4;
      if (!v32)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v120, &v117);
        if (v117)
        {
          v118 = v117;
          operator delete(v117);
        }

        v16 = v120;
        if (v120)
        {
          v121 = v120;
          goto LABEL_167;
        }

        return;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v126) || !mlir::Type::isF16(&v127))
  {
    if (mlir::Type::isF16(&v126) && mlir::Type::isF16(&v127))
    {
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v97 = 0;
        v96 = 0;
        v98 = 0;
        v37 = a3[1] - *a3;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v38 = a4[1] - *a4;
          if (!v38)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v96, &v93);
            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            v16 = v96;
            if (v96)
            {
              v97 = v96;
              goto LABEL_167;
            }

            return;
          }

          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v19 = a3[1] - *a3;
        if (v19)
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v20 = a4[1] - *a4;
          if (!v20)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)13>(a1, a2, &v90, &v87);
            if (v87)
            {
              v88 = v87;
              operator delete(v87);
            }

            v16 = v90;
            if (v90)
            {
              v91 = v90;
              goto LABEL_167;
            }

            return;
          }

          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v126) && mlir::Type::isF32(&v127))
    {
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v84, &v81);
            if (v81)
            {
              v82 = v81;
              operator delete(v81);
            }

            v16 = v84;
            if (v84)
            {
              v85 = v84;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)13>(a1, a2, &v78, &v75);
            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            v16 = v78;
            if (v78)
            {
              v79 = v78;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v126) && mlir::Type::isBF16(&v127))
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v72, &v69);
          if (v69)
          {
            v70 = v69;
            operator delete(v69);
          }

          v16 = v72;
          if (v72)
          {
            v73 = v72;
            goto LABEL_167;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v126) && mlir::Type::isBF16(&v127))
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, &v66, &v63);
          if (v63)
          {
            v64 = v63;
            operator delete(v63);
          }

          v16 = v66;
          if (v66)
          {
            v67 = v66;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v126) && mlir::Type::isF32(&v127))
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)13>(a1, a2, &v60, &v57);
          if (v57)
          {
            v58 = v57;
            operator delete(v57);
          }

          v16 = v60;
          if (v60)
          {
            v61 = v60;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v126, 64))
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(a1, a2, &v54, &v51);
          if (v51)
          {
            v52 = v51;
            operator delete(v51);
          }

          v16 = v54;
          if (v54)
          {
            v55 = v54;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v126, 32))
      {
        if (mlir::Type::isInteger(&v126, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v16 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v126, 8) && !mlir::Type::isInteger(&v126, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v125);
          }

          std::vector<long long>::vector[abi:nn200100](v42, a3);
          std::vector<long long>::vector[abi:nn200100](v41, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v42, v41);
          if (v41[0])
          {
            v41[1] = v41[0];
            operator delete(v41[0]);
          }

          v16 = v42[0];
          if (v42[0])
          {
            v42[1] = v42[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v48, &v45);
          if (v45)
          {
            v46 = v45;
            operator delete(v45);
          }

          v16 = v48;
          if (v48)
          {
            v49 = v48;
            goto LABEL_167;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v106 = 0;
      v105 = 0;
      v107 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v108, &v105, a5);
        if (v105)
        {
          v106 = v105;
          operator delete(v105);
        }

        v16 = v108;
        if (v108)
        {
          v109 = v108;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v103 = 0;
  v102 = 0;
  v104 = 0;
  v17 = a3[1] - *a3;
  if (v17)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v100 = 0;
  __p = 0;
  v101 = 0;
  v18 = a4[1] - *a4;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v102, &__p);
  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  v16 = v102;
  if (v102)
  {
    v103 = v102;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(uint64_t **a1, uint64_t **a2, void *a3, void *a4, double a5)
{
  v127 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v127);
  v128 = ElementType;
  v126 = ***a2;
  v11 = mlir::TensorType::getElementType(&v126);
  v126 = v11;
  v127 = v11;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v125 = v11;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = ElementType;
    }

    else
    {
      v13 = 0;
    }

    v124 = v13;
    v127 = mlir::ComplexType::getElementType(&v125);
    v128 = mlir::ComplexType::getElementType(&v124);
  }

  if (mlir::Type::isF32(&v127) && mlir::Type::isF32(&v128))
  {
    if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v14 = a3[1] - *a3;
      if (v14)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v112 = 0;
      v113 = 0;
      v114 = 0;
      v15 = a4[1] - *a4;
      if (v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v115, &v112);
      if (v112)
      {
        v113 = v112;
        operator delete(v112);
      }

      v16 = v115;
      if (v115)
      {
        v116 = v115;
LABEL_167:
        operator delete(v16);
        return;
      }

      return;
    }

    v121 = 0;
    v122 = 0;
    v123 = 0;
    v32 = a3[1] - *a3;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v33 = a4[1] - *a4;
      if (!v33)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v121, &v118);
        if (v118)
        {
          v119 = v118;
          operator delete(v118);
        }

        v16 = v121;
        if (v121)
        {
          v122 = v121;
          goto LABEL_167;
        }

        return;
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v127) || !mlir::Type::isF16(&v128))
  {
    if (mlir::Type::isF16(&v127) && mlir::Type::isF16(&v128))
    {
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v97 = 0;
        v99 = 0;
        v38 = a3[1] - *a3;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v39 = a4[1] - *a4;
          if (!v39)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v97, &v94);
            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            v16 = v97;
            if (v97)
            {
              v98 = v97;
              goto LABEL_167;
            }

            return;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v20 = a3[1] - *a3;
        if (v20)
        {
          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v21 = a4[1] - *a4;
          if (!v21)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)14>(a1, a2, &v91, &v88);
            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            v16 = v91;
            if (v91)
            {
              v92 = v91;
              goto LABEL_167;
            }

            return;
          }

          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v127) && mlir::Type::isF32(&v128))
    {
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v41 = a4[1] - *a4;
          if (!v41)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v85, &v82);
            if (v82)
            {
              v83 = v82;
              operator delete(v82);
            }

            v16 = v85;
            if (v85)
            {
              v86 = v85;
              goto LABEL_167;
            }

            return;
          }

          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v22 = a3[1] - *a3;
        if (v22)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v23 = a4[1] - *a4;
          if (!v23)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)14>(a1, a2, &v79, &v76);
            if (v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            v16 = v79;
            if (v79)
            {
              v80 = v79;
              goto LABEL_167;
            }

            return;
          }

          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v127) && mlir::Type::isBF16(&v128))
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v24 = a3[1] - *a3;
      if (v24)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v25 = a4[1] - *a4;
        if (!v25)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v73, &v70);
          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v16 = v73;
          if (v73)
          {
            v74 = v73;
            goto LABEL_167;
          }

          return;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v127) && mlir::Type::isBF16(&v128))
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v26 = a3[1] - *a3;
      if (v26)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v27 = a4[1] - *a4;
        if (!v27)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)14>(a1, a2, &v67, &v64);
          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

          v16 = v67;
          if (v67)
          {
            v68 = v67;
            goto LABEL_167;
          }

          return;
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v127) && mlir::Type::isF32(&v128))
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v28 = a3[1] - *a3;
      if (v28)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)14>(a1, a2, &v61, &v58);
          if (v58)
          {
            v59 = v58;
            operator delete(v58);
          }

          v16 = v61;
          if (v61)
          {
            v62 = v61;
            goto LABEL_167;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v127, 64))
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v30 = a3[1] - *a3;
      if (v30)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v31 = a4[1] - *a4;
        if (!v31)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(a1, a2, &v55, &v52);
          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }

          v16 = v55;
          if (v55)
          {
            v56 = v55;
            goto LABEL_167;
          }

          return;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v127, 32))
      {
        if (mlir::Type::isInteger(&v127, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v45, a3);
          std::vector<long long>::vector[abi:nn200100](v44, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v45, v44);
          if (v44[0])
          {
            v44[1] = v44[0];
            operator delete(v44[0]);
          }

          v16 = v45[0];
          if (v45[0])
          {
            v45[1] = v45[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v127, 8) && !mlir::Type::isInteger(&v127, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v126);
          }

          std::vector<long long>::vector[abi:nn200100](v43, a3);
          std::vector<long long>::vector[abi:nn200100](v42, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v43, v42);
          if (v42[0])
          {
            v42[1] = v42[0];
            operator delete(v42[0]);
          }

          v16 = v43[0];
          if (v43[0])
          {
            v43[1] = v43[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      v36 = a3[1] - *a3;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v37 = a4[1] - *a4;
        if (!v37)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v49, &v46);
          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          v16 = v49;
          if (v49)
          {
            v50 = v49;
            goto LABEL_167;
          }

          return;
        }

        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v34 = a3[1] - *a3;
    if (v34)
    {
      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v107 = 0;
      v106 = 0;
      v108 = 0;
      v35 = a4[1] - *a4;
      if (!v35)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v109, &v106, a5, v17);
        if (v106)
        {
          v107 = v106;
          operator delete(v106);
        }

        v16 = v109;
        if (v109)
        {
          v110 = v109;
          goto LABEL_167;
        }

        return;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v104 = 0;
  v103 = 0;
  v105 = 0;
  v18 = a3[1] - *a3;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v101 = 0;
  __p = 0;
  v102 = 0;
  v19 = a4[1] - *a4;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v103, &__p);
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  v16 = v103;
  if (v103)
  {
    v104 = v103;
    goto LABEL_167;
  }
}

uint64_t mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(uint64_t result, int a2, double a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  *result = mlir::mps::CPUNDArrayArithmeticUnaryKernel::arithmeticUnaryTileKernel;
  *(result + 8) = 4;
  return result;
}

void *mlir::mps::recurseTransposeImpl(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, size_t a16)
{
  v25 = result;
  v16 = *(a4 + 8 * a11);
  if (*(a4 + 8 * a11))
  {
    v17 = *(a9 + 8 * *(a6 + 8 * a11));
    v18 = a12;
    v19 = a16 * a12;
    do
    {
      if ((v25 - 1) > a11)
      {
        result = mlir::mps::recurseTransposeImpl(v25, a2, a3, a4, a5, a6, a7);
      }

      else
      {
        result = memcpy(*a15, (*(a13 + 40) + v19), a16);
        *a15 = *a15 + a16;
      }

      v18 += v17;
      v19 += v17 * a16;
      --v16;
    }

    while (v16);
  }

  return result;
}

void mlir::mps::transpose(mlir::RankedTensorType *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return;
  }

  v9 = *(this + 3);
  v32 = *(this + 4);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if ((*(this + 58) & 1) == 0 && (*(a2 + 58) & 1) == 0 && *(*mlir::RankedTensorType::getElementType(this) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::RankedTensorType::getElementType(a2) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v47 = 0u;
    memset(v48, 0, 48);
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *__p = 0u;
    v36 = 0u;
    v12 = *(this + 2);
    if (v12 < 1)
    {
      goto LABEL_14;
    }

    if (v12 > 3)
    {
      v14 = vdupq_n_s64(v12);
      v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
      v15 = (a3 + 8 * v12 - 16);
      v16 = v48;
      v17 = v12 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = vmvnq_s8(*v15);
        v19 = vmvnq_s8(v15[-1]);
        v16[-1] = vaddq_s64(v14, vextq_s8(v18, v18, 8uLL));
        *v16 = vaddq_s64(v14, vextq_s8(v19, v19, 8uLL));
        v15 -= 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v12 == v13)
      {
LABEL_14:
        mlir::mps::CPUNDArray::getBNNSDescriptor(this, __p);
        mlir::mps::CPUNDArray::getBNNSDescriptor(a2, v46);
        memset(v34, 0, sizeof(v34));
        LODWORD(v34[0]) = 1;
        v22 = MEMORY[0x259C62060](__p, v34);
        if (v22)
        {
          v23 = v22;
          v24 = BNNSFilterApply(v22, *(this + 5), *(a2 + 40));
          BNNSFilterDestroy(v23);
          if (!v24)
          {
            return;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = v12 - v13;
    v21 = &v48[8 * v13 - 16];
    do
    {
      *v21++ = v12 + ~*(a3 - 8 + 8 * v20--);
    }

    while (v20);
    goto LABEL_14;
  }

LABEL_16:
  __p[0] = 0;
  __p[1] = 0;
  *&v36 = 0;
  std::vector<long long>::__append(__p, v4);
  v25 = __p[0];
  if (v4 >= 1)
  {
    v26 = 1;
    v27 = v4;
    do
    {
      v25[v27 - 1] = v26;
      v26 *= *(v9 - 8 + 8 * v27--);
    }

    while (v27);
  }

  v33 = *(a2 + 40);
  v28 = (__p[1] - v25) >> 3;
  *&v34[0] = mlir::RankedTensorType::getElementType(this);
  if (mlir::Type::isInteger(v34, 1))
  {
    ElementsAttrElementBitWidth = 8;
  }

  else
  {
    ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
  }

  v31 = (ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3;
  if (ElementsAttrElementBitWidth)
  {
    ++v31;
  }

  mlir::mps::recurseTransposeImpl(v4, v9, v32, v11, v10, a3, a4, v29, v25, v28, 0, 0, this, a2, &v33, v31);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t mlir::mps::writeConstantData(void *a1, uint64_t a2, uint64_t a3)
{
  mlir::mps::CPUNDArray::CPUNDArray(v6, a2, a3);
  v4 = mlir::mps::writeConstantData(a1, v6);
  if (v8 == 1 && v7)
  {
    free(v7);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v4;
}

uint64_t mlir::mps::writeConstantData(void *a1, void **a2)
{
  v3 = a1;
  v4 = a2[5];
  if (*(a2 + 58) != 1)
  {
    v6 = a2[6];
    v7 = a2[5];
LABEL_5:
    llvm::raw_ostream::write(a1, v7, v6);
    goto LABEL_15;
  }

  ElementType = mlir::RankedTensorType::getElementType(a2);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    ElementsAttrElementBitWidth = 8;
    goto LABEL_12;
  }

  ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*a2);
  if (ElementsAttrElementBitWidth >= 8)
  {
LABEL_12:
    Shape = mlir::RankedTensorType::getShape(a2);
    if (mlir::ShapedType::getNumElements(Shape, v18))
    {
      v19 = 0;
      v20 = ElementsAttrElementBitWidth >> 3;
      do
      {
        llvm::raw_ostream::write(v3, v4, v20);
        ++v19;
        v21 = mlir::RankedTensorType::getShape(a2);
      }

      while (v19 < mlir::ShapedType::getNumElements(v21, v22));
    }

    goto LABEL_15;
  }

  v8 = *a2[5];
  v9 = mlir::RankedTensorType::getShape(a2);
  if (mlir::ShapedType::getNumElements(v9, v10))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v8 & ~(-1 << ElementsAttrElementBitWidth);
    do
    {
      v11 |= v14 << v13;
      v13 += ElementsAttrElementBitWidth;
      if (v13 >= 8)
      {
        v25 = v11;
        llvm::raw_ostream::write(v3, &v25, 1uLL);
        v11 = v14 >> (ElementsAttrElementBitWidth - (v13 - 8));
        v13 -= 8;
      }

      ++v12;
      v15 = mlir::RankedTensorType::getShape(a2);
    }

    while (v12 < mlir::ShapedType::getNumElements(v15, v16));
    if (v13)
    {
      v26 = v11;
      v7 = &v26;
      a1 = v3;
      v6 = 1;
      goto LABEL_5;
    }
  }

LABEL_15:
  if (v3[4] != v3[2])
  {
    llvm::raw_ostream::flush_nonempty(v3);
  }

  return (*(*v3 + 80))(v3) + v3[4] - v3[2];
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v41 = **a4;
  v42 = **a3;
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    v43 = 1;
    v49 = 1;
    v8 = 1;
    goto LABEL_7;
  }

  v7 = *(v5 + 24) + 8 * v6;
  v8 = *(v7 - 8);
  if (v6 == 1)
  {
    v43 = 1;
    v49 = 1;
LABEL_7:
    v47 = 1;
LABEL_8:
    v44 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v9 = *(v4 + 16), v10 = v9 - 4, v9 < 4) || v10 > v9 - 1 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v11 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *(*(v4 + 64) + 8 * v10);
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v5 + 16);
      v13 = v12 - 4;
      if (v12 >= 4 && v13 <= v12 - 1 && *(*(v5 + 24) + 8 * v13) != 1)
      {
        v14 = *(*(v5 + 64) + 8 * v13);
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      if (v47 >= 1)
      {
        v48 = 0;
        v46 = v42 + v11 * v44;
        v45 = v41 + v14 * v44;
        do
        {
          if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 3, v15 < 3) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
          {
            v17 = 0;
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = *(*(v4 + 64) + 8 * v16);
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          v18 = *(v5 + 16);
          v19 = v18 - 3;
          if (v18 >= 3 && v19 <= v18 - 1 && *(*(v5 + 24) + 8 * v19) != 1)
          {
            v20 = *(*(v5 + 64) + 8 * v19);
            goto LABEL_35;
          }

LABEL_34:
          v20 = 0;
LABEL_35:
          if (v49 >= 1)
          {
            v21 = 0;
            v22 = v46 + v17 * v48;
            v23 = v45 + v20 * v48;
            while (1)
            {
              if ((*(v4 + 58) & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 2, v24 < 2) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
              {
                v26 = 0;
                if (*(v5 + 58))
                {
                  break;
                }
              }

              else
              {
                v26 = *(*(v4 + 64) + 8 * v25);
                if (*(v5 + 58))
                {
                  break;
                }
              }

              v27 = *(v5 + 16);
              v28 = v27 - 2;
              if (v27 < 2 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
              {
                break;
              }

              v29 = *(*(v5 + 64) + 8 * v28);
              if (v8 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v21 == v49)
              {
                goto LABEL_23;
              }
            }

            v29 = 0;
            if (v8 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v30 = 0;
            v31 = v22 + v26 * v21;
            v32 = v23 + v29 * v21;
            while (2)
            {
              if ((*(v4 + 58) & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 1, v33 < 1) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
              {
                v35 = 0;
                if ((*(v5 + 58) & 1) == 0)
                {
LABEL_56:
                  v36 = *(v5 + 16);
                  v37 = v36 - 1;
                  if (v36 >= 1 && v37 <= v36 - 1 && *(*(v5 + 24) + 8 * v37) != 1)
                  {
                    v38 = *(*(v5 + 64) + 8 * v37);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v35 = *(*(v4 + 64) + 8 * v34);
                if ((*(v5 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v38 = 0;
LABEL_62:
              v39 = v32 + v38 * v30 + *(v5 + 40);
              v50 = *(v31 + v35 * v30 + *(v4 + 40));
              *v39 = std::sqrt[abi:nn200100]<float>(&v50);
              *(v39 + 4) = v40;
              if (v8 == ++v30)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v48;
        }

        while (v48 != v47);
      }

      if (++v44 == v43)
      {
        return;
      }
    }
  }

  v49 = *(v7 - 16);
  if (v6 < 3)
  {
    v43 = 1;
    goto LABEL_7;
  }

  v47 = *(v7 - 24);
  if (v6 == 3)
  {
    v43 = 1;
    goto LABEL_8;
  }

  v43 = *(v7 - 32);
  if (v43 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = sqrtf(*(v54 + v61 * v53 + v55));
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, float16x4_t a5)
{
  v5 = **a1;
  v6 = **a2;
  v43 = **a4;
  v44 = **a3;
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v45 = 1;
    v52 = 1;
    v9 = 1;
    goto LABEL_7;
  }

  v8 = *(v6 + 24) + 8 * v7;
  v9 = *(v8 - 8);
  if (v7 == 1)
  {
    v45 = 1;
    v52 = 1;
LABEL_7:
    v49 = 1;
LABEL_8:
    v46 = 0;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v10 = *(v5 + 16), v11 = v10 - 4, v10 < 4) || v11 > v10 - 1 || *(*(v5 + 24) + 8 * v11) == 1)
      {
        v12 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = *(*(v5 + 64) + 8 * v11);
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      v13 = *(v6 + 16);
      v14 = v13 - 4;
      if (v13 >= 4 && v14 <= v13 - 1 && *(*(v6 + 24) + 8 * v14) != 1)
      {
        v15 = *(*(v6 + 64) + 8 * v14);
        goto LABEL_21;
      }

LABEL_20:
      v15 = 0;
LABEL_21:
      if (v49 >= 1)
      {
        v50 = 0;
        v48 = v44 + v12 * v46;
        v47 = v43 + v15 * v46;
        do
        {
          if ((*(v5 + 58) & 1) != 0 || (v16 = *(v5 + 16), v17 = v16 - 3, v16 < 3) || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
          {
            v18 = 0;
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v18 = *(*(v5 + 64) + 8 * v17);
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          v19 = *(v6 + 16);
          v20 = v19 - 3;
          if (v19 >= 3 && v20 <= v19 - 1 && *(*(v6 + 24) + 8 * v20) != 1)
          {
            v21 = *(*(v6 + 64) + 8 * v20);
            goto LABEL_35;
          }

LABEL_34:
          v21 = 0;
LABEL_35:
          if (v52 >= 1)
          {
            v22 = 0;
            v51 = v48 + v18 * v50;
            v23 = v47 + v21 * v50;
            while (1)
            {
              if ((*(v5 + 58) & 1) != 0 || (v24 = *(v5 + 16), v25 = v24 - 2, v24 < 2) || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
              {
                v26 = 0;
                if (*(v6 + 58))
                {
                  break;
                }
              }

              else
              {
                v26 = *(*(v5 + 64) + 8 * v25);
                if (*(v6 + 58))
                {
                  break;
                }
              }

              v27 = *(v6 + 16);
              v28 = v27 - 2;
              if (v27 < 2 || v28 > v27 - 1 || *(*(v6 + 24) + 8 * v28) == 1)
              {
                break;
              }

              v29 = *(*(v6 + 64) + 8 * v28);
              if (v9 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v22 == v52)
              {
                goto LABEL_23;
              }
            }

            v29 = 0;
            if (v9 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v30 = 0;
            v31 = v51 + v26 * v22;
            v32 = v23 + v29 * v22;
            while (2)
            {
              if ((*(v5 + 58) & 1) != 0 || (v33 = *(v5 + 16), v34 = v33 - 1, v33 < 1) || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
              {
                v35 = 0;
                if ((*(v6 + 58) & 1) == 0)
                {
LABEL_56:
                  v36 = *(v6 + 16);
                  v37 = v36 - 1;
                  if (v36 >= 1 && v37 <= v36 - 1 && *(*(v6 + 24) + 8 * v37) != 1)
                  {
                    v38 = *(*(v6 + 64) + 8 * v37);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v35 = *(*(v5 + 64) + 8 * v34);
                if ((*(v6 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v38 = 0;
LABEL_62:
              v39 = v32 + v38 * v30;
              v40 = *(v6 + 40);
              a5.i32[0] = *(v31 + v35 * v30 + *(v5 + 40));
              v53 = vcvtq_f32_f16(a5).u64[0];
              v41.f32[0] = std::sqrt[abi:nn200100]<float>(&v53);
              v41.i32[1] = v42;
              a5 = vcvtq_f32_f16(vcvt_f16_f32(v41)).u64[0];
              *(v39 + v40) = *&a5;
              if (v9 == ++v30)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v50;
        }

        while (v50 != v49);
      }

      if (++v46 == v45)
      {
        return;
      }
    }
  }

  v52 = *(v8 - 16);
  if (v7 < 3)
  {
    v45 = 1;
    goto LABEL_7;
  }

  v49 = *(v8 - 24);
  if (v7 == 3)
  {
    v45 = 1;
    goto LABEL_8;
  }

  v45 = *(v8 - 32);
  if (v45 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v68 = **a4;
  v69 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v69;
        v41 = v38 * v19 + v68;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v65 = *(v4 + 16), v66 = v65 - 1, v65 < 1) || v66 > v65 - 1 || *(*(v4 + 24) + 8 * v66) == 1)
          {
            v67 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v67 = *(*(v4 + 64) + 8 * v66);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _H0 = *(v54 + v67 * v53 + v55);
          __asm { FCVT            S0, H0 }

          *(v57 + v58 * v53++ + v56) = sqrtf(_S0);
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double _D0)
{
  v5 = **a1;
  v6 = **a2;
  v46 = **a4;
  v47 = **a3;
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v48 = 1;
    v54 = 1;
    v9 = 1;
    goto LABEL_7;
  }

  v8 = *(v6 + 24) + 8 * v7;
  v9 = *(v8 - 8);
  if (v7 == 1)
  {
    v48 = 1;
    v54 = 1;
LABEL_7:
    v52 = 1;
LABEL_8:
    v49 = 0;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v10 = *(v5 + 16), v11 = v10 - 4, v10 < 4) || v11 > v10 - 1 || *(*(v5 + 24) + 8 * v11) == 1)
      {
        v12 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = *(*(v5 + 64) + 8 * v11);
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      v13 = *(v6 + 16);
      v14 = v13 - 4;
      if (v13 >= 4 && v14 <= v13 - 1 && *(*(v6 + 24) + 8 * v14) != 1)
      {
        v15 = *(*(v6 + 64) + 8 * v14);
        goto LABEL_21;
      }

LABEL_20:
      v15 = 0;
LABEL_21:
      if (v52 >= 1)
      {
        v53 = 0;
        v51 = v47 + v12 * v49;
        v50 = v46 + v15 * v49;
        do
        {
          if ((*(v5 + 58) & 1) != 0 || (v16 = *(v5 + 16), v17 = v16 - 3, v16 < 3) || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
          {
            v18 = 0;
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v18 = *(*(v5 + 64) + 8 * v17);
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          v19 = *(v6 + 16);
          v20 = v19 - 3;
          if (v19 >= 3 && v20 <= v19 - 1 && *(*(v6 + 24) + 8 * v20) != 1)
          {
            v21 = *(*(v6 + 64) + 8 * v20);
            goto LABEL_35;
          }

LABEL_34:
          v21 = 0;
LABEL_35:
          if (v54 >= 1)
          {
            v22 = 0;
            v23 = v51 + v18 * v53;
            v24 = v50 + v21 * v53;
            while (1)
            {
              if ((*(v5 + 58) & 1) != 0 || (v25 = *(v5 + 16), v26 = v25 - 2, v25 < 2) || v26 > v25 - 1 || *(*(v5 + 24) + 8 * v26) == 1)
              {
                v27 = 0;
                if (*(v6 + 58))
                {
                  break;
                }
              }

              else
              {
                v27 = *(*(v5 + 64) + 8 * v26);
                if (*(v6 + 58))
                {
                  break;
                }
              }

              v28 = *(v6 + 16);
              v29 = v28 - 2;
              if (v28 < 2 || v29 > v28 - 1 || *(*(v6 + 24) + 8 * v29) == 1)
              {
                break;
              }

              v30 = *(*(v6 + 64) + 8 * v29);
              if (v9 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v22 == v54)
              {
                goto LABEL_23;
              }
            }

            v30 = 0;
            if (v9 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v31 = 0;
            v32 = v23 + v27 * v22;
            v33 = v24 + v30 * v22;
            while (2)
            {
              if ((*(v5 + 58) & 1) != 0 || (v34 = *(v5 + 16), v35 = v34 - 1, v34 < 1) || v35 > v34 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
              {
                v36 = 0;
                if ((*(v6 + 58) & 1) == 0)
                {
LABEL_56:
                  v37 = *(v6 + 16);
                  v38 = v37 - 1;
                  if (v37 >= 1 && v38 <= v37 - 1 && *(*(v6 + 24) + 8 * v38) != 1)
                  {
                    v39 = *(*(v6 + 64) + 8 * v38);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v36 = *(*(v5 + 64) + 8 * v35);
                if ((*(v6 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v39 = 0;
LABEL_62:
              v40 = (v33 + v39 * v31 + *(v6 + 40));
              LODWORD(_D0) = *(v32 + v36 * v31 + *(v5 + 40));
              v55 = vcvtq_f32_f16(*&_D0).u64[0];
              *&_D0 = std::sqrt[abi:nn200100]<float>(&v55);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
              }

              *v40 = LOWORD(_D0);
              v40[1] = _S1;
              if (v9 == ++v31)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v53;
        }

        while (v53 != v52);
      }

      if (++v49 == v48)
      {
        return;
      }
    }
  }

  v54 = *(v8 - 16);
  if (v7 < 3)
  {
    v48 = 1;
    goto LABEL_7;
  }

  v52 = *(v8 - 24);
  if (v7 == 3)
  {
    v48 = 1;
    goto LABEL_8;
  }

  v48 = *(v8 - 32);
  if (v48 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v69 = **a4;
  v70 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v70;
        v41 = v38 * v19 + v69;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v66 = *(v4 + 16), v67 = v66 - 1, v66 < 1) || v67 > v66 - 1 || *(*(v4 + 24) + 8 * v67) == 1)
          {
            v68 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v68 = *(*(v4 + 64) + 8 * v67);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _H0 = *(v54 + v68 * v53 + v55);
          __asm { FCVT            S0, H0 }

          _S0 = sqrtf(_S0);
          __asm { FCVT            H0, S0 }

          *(v57 + v58 * v53++ + v56) = LOWORD(_S0);
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v46 = **a4;
  v47 = **a3;
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    v48 = 1;
    v54 = 1;
    v8 = 1;
    goto LABEL_7;
  }

  v7 = *(v5 + 24) + 8 * v6;
  v8 = *(v7 - 8);
  if (v6 == 1)
  {
    v48 = 1;
    v54 = 1;
LABEL_7:
    v52 = 1;
LABEL_8:
    v49 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v9 = *(v4 + 16), v10 = v9 - 4, v9 < 4) || v10 > v9 - 1 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v11 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *(*(v4 + 64) + 8 * v10);
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v5 + 16);
      v13 = v12 - 4;
      if (v12 >= 4 && v13 <= v12 - 1 && *(*(v5 + 24) + 8 * v13) != 1)
      {
        v14 = *(*(v5 + 64) + 8 * v13);
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      if (v52 >= 1)
      {
        v53 = 0;
        v51 = v47 + v11 * v49;
        v50 = v46 + v14 * v49;
        do
        {
          if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 3, v15 < 3) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
          {
            v17 = 0;
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = *(*(v4 + 64) + 8 * v16);
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          v18 = *(v5 + 16);
          v19 = v18 - 3;
          if (v18 >= 3 && v19 <= v18 - 1 && *(*(v5 + 24) + 8 * v19) != 1)
          {
            v20 = *(*(v5 + 64) + 8 * v19);
            goto LABEL_35;
          }

LABEL_34:
          v20 = 0;
LABEL_35:
          if (v54 >= 1)
          {
            v21 = 0;
            v22 = v51 + v17 * v53;
            v23 = v50 + v20 * v53;
            while (1)
            {
              if ((*(v4 + 58) & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 2, v24 < 2) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
              {
                v26 = 0;
                if (*(v5 + 58))
                {
                  break;
                }
              }

              else
              {
                v26 = *(*(v4 + 64) + 8 * v25);
                if (*(v5 + 58))
                {
                  break;
                }
              }

              v27 = *(v5 + 16);
              v28 = v27 - 2;
              if (v27 < 2 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
              {
                break;
              }

              v29 = *(*(v5 + 64) + 8 * v28);
              if (v8 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v21 == v54)
              {
                goto LABEL_23;
              }
            }

            v29 = 0;
            if (v8 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v30 = 0;
            v31 = v22 + v26 * v21;
            v32 = v23 + v29 * v21;
            while (2)
            {
              if ((*(v4 + 58) & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 1, v33 < 1) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
              {
                v35 = 0;
                if ((*(v5 + 58) & 1) == 0)
                {
LABEL_56:
                  v36 = *(v5 + 16);
                  v37 = v36 - 1;
                  if (v36 >= 1 && v37 <= v36 - 1 && *(*(v5 + 24) + 8 * v37) != 1)
                  {
                    v38 = *(*(v5 + 64) + 8 * v37);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v35 = *(*(v4 + 64) + 8 * v34);
                if ((*(v5 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v38 = 0;
LABEL_62:
              v39 = (v32 + v38 * v30 + *(v5 + 40));
              v55 = *(v31 + v35 * v30 + *(v4 + 40));
              _S0 = std::sqrt[abi:nn200100]<float>(&v55);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
              }

              *v39 = LOWORD(_S0);
              v39[1] = _S1;
              if (v8 == ++v30)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v53;
        }

        while (v53 != v52);
      }

      if (++v49 == v48)
      {
        return;
      }
    }
  }

  v54 = *(v7 - 16);
  if (v6 < 3)
  {
    v48 = 1;
    goto LABEL_7;
  }

  v52 = *(v7 - 24);
  if (v6 == 3)
  {
    v48 = 1;
    goto LABEL_8;
  }

  v48 = *(v7 - 32);
  if (v48 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v67 = **a4;
  v68 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v68;
        v41 = v38 * v19 + v67;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v64 = *(v4 + 16), v65 = v64 - 1, v64 < 1) || v65 > v64 - 1 || *(*(v4 + 24) + 8 * v65) == 1)
          {
            v66 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v66 = *(*(v4 + 64) + 8 * v65);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _S0 = sqrtf(*(v54 + v66 * v53 + v55));
          __asm { FCVT            H0, S0 }

          *(v57 + v58 * v53++ + v56) = LOWORD(_S0);
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = sqrtf(COERCE_FLOAT(*(v54 + v61 * v53 + v55) << 16));
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)17>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v61 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = (v20 | v22);
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v56 = *(v4 + 16), v57 = v56 - 1, v56 < 1) || v57 > v56 - 1 || *(*(v4 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_48:
            v59 = 0;
          }

          else
          {
            v58 = *(*(v4 + 64) + 8 * v57);
            if (v32)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_48;
            }

            v59 = *(*(v5 + 64) + 8 * v7);
          }

          v60 = sqrtf(COERCE_FLOAT(*&v52[v58 * v51 + v53] << 16));
          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)17>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v61 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = (v20 | v22);
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v56 = *(v4 + 16), v57 = v56 - 1, v56 < 1) || v57 > v56 - 1 || *(*(v4 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_48:
            v59 = 0;
          }

          else
          {
            v58 = *(*(v4 + 64) + 8 * v57);
            if (v32)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_48;
            }

            v59 = *(*(v5 + 64) + 8 * v7);
          }

          v60 = sqrtf(*&v52[v58 * v51 + v53]);
          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)17>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    v14 = *(v4 + 58);
    result = *(v5 + 58);
    while (1)
    {
      if ((v14 & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
      {
        v17 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v17 = *(*(v4 + 64) + 8 * v16);
        if (result)
        {
          break;
        }
      }

      v18 = *(v5 + 16);
      v19 = v18 - 4;
      if (v18 < 4 || v19 > v18 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
      {
        break;
      }

      v20 = *(*(v5 + 64) + 8 * v19);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v20 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v21 = 0;
    v22 = v6 + v17 * v13;
    v23 = v7 + v20 * v13;
    while (1)
    {
      if ((v14 & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 3, v24 < 3) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if (result)
        {
          break;
        }
      }

      v27 = *(v5 + 16);
      v28 = v27 - 3;
      if (v27 < 3 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
      {
        break;
      }

      v29 = *(*(v5 + 64) + 8 * v28);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v21 == v12)
      {
        goto LABEL_11;
      }
    }

    v29 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v30 = 0;
    v31 = v22 + v26 * v21;
    v32 = v23 + v29 * v21;
    while (1)
    {
      if ((v14 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 2, v33 < 2) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (result)
        {
          break;
        }
      }

      v36 = *(v5 + 16);
      v37 = v36 - 2;
      if (v36 < 2 || v37 > v36 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
      {
        break;
      }

      v38 = *(*(v5 + 64) + 8 * v37);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v30 == v11)
      {
        goto LABEL_25;
      }
    }

    v38 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v39 = 0;
    v40 = v31 + v35 * v30;
    v41 = *(v4 + 40);
    v42 = *(v5 + 40);
    v43 = v32 + v38 * v30;
    while (1)
    {
      if ((v14 & 1) != 0 || (v44 = *(v4 + 16), v45 = v44 - 1, v44 < 1) || v45 > v44 - 1 || *(*(v4 + 24) + 8 * v45) == 1)
      {
        v46 = 0;
        if (result)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v46 = *(*(v4 + 64) + 8 * v45);
        if (result)
        {
          goto LABEL_63;
        }
      }

      v47 = *(v5 + 16);
      v48 = v47 - 1;
      if (v47 < 1 || v48 > v47 - 1 || *(*(v5 + 24) + 8 * v48) == 1)
      {
LABEL_63:
        v49 = 0;
        goto LABEL_64;
      }

      v49 = *(*(v5 + 64) + 8 * v48);
LABEL_64:
      *(v43 + v49 * v39 + v42) = sqrt(*(v40 + v46 * v39 + v41));
      if (v10 == ++v39)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = sqrt(*(v54 + v61 * v53 + v55));
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, int16x4_t a5)
{
  v5 = **a1;
  v6 = **a2;
  v63 = **a4;
  v64 = **a3;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    result = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
LABEL_8:
    v20 = 0;
    v21 = v7 < 1;
    v22 = *(v5 + 58);
    v23 = *(v6 + 58);
    v24 = v19 | v23;
    v25 = v7 - 1;
    v26 = v17 | v23;
    v27 = v12 > v25;
    v28 = v14 | v23;
    v29 = v21 | v23;
    v30 = v11 > v25;
    v31 = v8 > v25;
    v32 = v24 | (result > v25);
    v33 = v26 | v27;
    v34 = v28 | v30;
    v35 = v29 | v31;
    while (1)
    {
      if ((v22 & 1) != 0 || (v36 = *(v5 + 16), v37 = v36 - 4, v36 < 4) || v37 > v36 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
      {
        v38 = 0;
        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v38 = *(*(v5 + 64) + 8 * v37);
        if (v32)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v6 + 24) + 8 * result) != 1)
      {
        v39 = *(*(v6 + 64) + 8 * result);
        if (v18 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v40 = 0;
        v41 = v38 * v20 + v64;
        v42 = v39 * v20 + v63;
        while (2)
        {
          if ((v22 & 1) != 0 || (v43 = *(v5 + 16), v44 = v43 - 3, v43 < 3) || v44 > v43 - 1 || *(*(v5 + 24) + 8 * v44) == 1)
          {
            v45 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v45 = *(*(v5 + 64) + 8 * v44);
          if (v33)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v6 + 24) + 8 * v12) == 1)
          {
LABEL_27:
            v46 = 0;
            if (v13 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v46 = *(*(v6 + 64) + 8 * v12);
          if (v13 < 1)
          {
LABEL_20:
            if (++v40 == v18)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v47 = 0;
        v48 = v41 + v45 * v40;
        v49 = v42 + v46 * v40;
        while (2)
        {
          if ((v22 & 1) != 0 || (v50 = *(v5 + 16), v51 = v50 - 2, v50 < 2) || v51 > v50 - 1 || *(*(v5 + 24) + 8 * v51) == 1)
          {
            v52 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v52 = *(*(v5 + 64) + 8 * v51);
          if (v34)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v6 + 24) + 8 * v11) == 1)
          {
LABEL_38:
            v53 = 0;
            if (v10 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v53 = *(*(v6 + 64) + 8 * v11);
          if (v10 < 1)
          {
LABEL_31:
            if (++v47 == v13)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v54 = 0;
        v55 = v48 + v52 * v47;
        v56 = *(v5 + 40);
        v57 = *(v6 + 40);
        v58 = v49 + v53 * v47;
        while (2)
        {
          if ((v22 & 1) != 0 || (v60 = *(v5 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v5 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v35 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v59 = 0;
          }

          else
          {
            v62 = *(*(v5 + 64) + 8 * v61);
            if (v35)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v6 + 24) + 8 * v8) == 1)
            {
              goto LABEL_42;
            }

            v59 = *(*(v6 + 64) + 8 * v8);
          }

          a5.i16[0] = *(v55 + v62 * v54 + v56);
          *&a5 = sqrt(vmovl_s16(a5).i32[0]);
          *(v58 + v59 * v54++ + v57) = *&a5;
          if (v10 == v54)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v39 = 0;
      if (v18 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v20 == v16)
      {
        return result;
      }
    }
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v18 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v17 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    result = -1;
    v11 = 1;
    goto LABEL_7;
  }

  result = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
  if (v16 >= 1)
  {
    v17 = 0;
    v14 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)17>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      *(v38 + v44 * v36 + *(v5 + 40)) = sqrt(v37[v41 * v36 + *(v4 + 40)]);
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

float std::sqrt[abi:nn200100]<float>(float *a1)
{
  v1 = a1[1];
  v2 = INFINITY;
  if (fabsf(v1) == INFINITY)
  {
    return v2;
  }

  v2 = *a1;
  if (fabsf(*a1) == INFINITY)
  {
    if (v2 > 0.0)
    {
      return v2;
    }

    return 0.0;
  }

  else
  {
    v8 = a1[1];
    v9 = *a1;
    v4 = sqrtf(hypotf(v2, v1));
    v5 = atan2f(v8, v9);
    v6 = NAN;
    if ((LODWORD(v4) & 0x80000000) == 0)
    {
      v7 = v5 * 0.5;
      if (fabsf(v7) == INFINITY)
      {
        if (fabsf(v4) == INFINITY)
        {
          return v4;
        }

        else
        {
          return NAN;
        }
      }

      else
      {
        return v4 * __sincosf_stret(v7).__cosval;
      }
    }

    return v6;
  }
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double a5)
{
  v5 = **a1;
  v6 = **a2;
  v45 = **a4;
  v46 = **a3;
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v47 = 1;
    v53 = 1;
    v9 = 1;
    goto LABEL_7;
  }

  v8 = *(v6 + 24) + 8 * v7;
  v9 = *(v8 - 8);
  if (v7 == 1)
  {
    v47 = 1;
    v53 = 1;
LABEL_7:
    v51 = 1;
LABEL_8:
    v48 = 0;
    *&a5 = a5;
    v10 = vdup_lane_s32(*&a5, 0);
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v11 = *(v5 + 16), v12 = v11 - 4, v11 < 4) || v12 > v11 - 1 || *(*(v5 + 24) + 8 * v12) == 1)
      {
        v13 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = *(*(v5 + 64) + 8 * v12);
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      v14 = *(v6 + 16);
      v15 = v14 - 4;
      if (v14 >= 4 && v15 <= v14 - 1 && *(*(v6 + 24) + 8 * v15) != 1)
      {
        v16 = *(*(v6 + 64) + 8 * v15);
        goto LABEL_21;
      }

LABEL_20:
      v16 = 0;
LABEL_21:
      if (v51 >= 1)
      {
        v52 = 0;
        v50 = v46 + v13 * v48;
        v49 = v45 + v16 * v48;
        do
        {
          if ((*(v5 + 58) & 1) != 0 || (v17 = *(v5 + 16), v18 = v17 - 3, v17 < 3) || v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
          {
            v19 = 0;
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v19 = *(*(v5 + 64) + 8 * v18);
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          v20 = *(v6 + 16);
          v21 = v20 - 3;
          if (v20 >= 3 && v21 <= v20 - 1 && *(*(v6 + 24) + 8 * v21) != 1)
          {
            v22 = *(*(v6 + 64) + 8 * v21);
            goto LABEL_35;
          }

LABEL_34:
          v22 = 0;
LABEL_35:
          if (v53 >= 1)
          {
            v23 = 0;
            v24 = v50 + v19 * v52;
            v25 = v49 + v22 * v52;
            while (1)
            {
              if ((*(v5 + 58) & 1) != 0 || (v26 = *(v5 + 16), v27 = v26 - 2, v26 < 2) || v27 > v26 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
              {
                v28 = 0;
                if (*(v6 + 58))
                {
                  break;
                }
              }

              else
              {
                v28 = *(*(v5 + 64) + 8 * v27);
                if (*(v6 + 58))
                {
                  break;
                }
              }

              v29 = *(v6 + 16);
              v30 = v29 - 2;
              if (v29 < 2 || v30 > v29 - 1 || *(*(v6 + 24) + 8 * v30) == 1)
              {
                break;
              }

              v31 = *(*(v6 + 64) + 8 * v30);
              if (v9 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v23 == v53)
              {
                goto LABEL_23;
              }
            }

            v31 = 0;
            if (v9 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v32 = 0;
            v33 = v24 + v28 * v23;
            v34 = v25 + v31 * v23;
            while (2)
            {
              if ((*(v5 + 58) & 1) != 0 || (v35 = *(v5 + 16), v36 = v35 - 1, v35 < 1) || v36 > v35 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
              {
                v37 = 0;
                if ((*(v6 + 58) & 1) == 0)
                {
LABEL_56:
                  v38 = *(v6 + 16);
                  v39 = v38 - 1;
                  if (v38 >= 1 && v39 <= v38 - 1 && *(*(v6 + 24) + 8 * v39) != 1)
                  {
                    v40 = *(*(v6 + 64) + 8 * v39);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v37 = *(*(v5 + 64) + 8 * v36);
                if ((*(v6 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v40 = 0;
LABEL_62:
              v41 = v34 + v40 * v32 + *(v6 + 40);
              v54 = vadd_f32(*(v33 + v37 * v32 + *(v5 + 40)), v10);
              v42 = std::sqrt[abi:nn200100]<float>(&v54);
              *v41 = __divsc3(1.0, 0.0, v42, v43);
              *(v41 + 4) = v44;
              if (v9 == ++v32)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v52;
        }

        while (v52 != v51);
      }

      if (++v48 == v47)
      {
        return;
      }
    }
  }

  v53 = *(v8 - 16);
  if (v7 < 3)
  {
    v47 = 1;
    goto LABEL_7;
  }

  v51 = *(v8 - 24);
  if (v7 == 3)
  {
    v47 = 1;
    goto LABEL_8;
  }

  v47 = *(v8 - 32);
  if (v47 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double a5)
{
  v5 = **a1;
  v6 = **a2;
  v64 = **a4;
  v65 = **a3;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    result = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
LABEL_8:
    v20 = 0;
    v21 = v7 < 1;
    v22 = *(v5 + 58);
    v23 = *(v6 + 58);
    v24 = v19 | v23;
    v25 = v7 - 1;
    v26 = v17 | v23;
    v27 = v12 > v25;
    v28 = v14 | v23;
    v29 = v21 | v23;
    v30 = v11 > v25;
    v31 = v8 > v25;
    v32 = a5;
    v33 = v24 | (result > v25);
    v34 = v26 | v27;
    v35 = v28 | v30;
    v36 = v29 | v31;
    while (1)
    {
      if ((v22 & 1) != 0 || (v37 = *(v5 + 16), v38 = v37 - 4, v37 < 4) || v38 > v37 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
      {
        v39 = 0;
        if (v33)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v39 = *(*(v5 + 64) + 8 * v38);
        if (v33)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v6 + 24) + 8 * result) != 1)
      {
        v40 = *(*(v6 + 64) + 8 * result);
        if (v18 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v41 = 0;
        v42 = v39 * v20 + v65;
        v43 = v40 * v20 + v64;
        while (2)
        {
          if ((v22 & 1) != 0 || (v44 = *(v5 + 16), v45 = v44 - 3, v44 < 3) || v45 > v44 - 1 || *(*(v5 + 24) + 8 * v45) == 1)
          {
            v46 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v46 = *(*(v5 + 64) + 8 * v45);
          if (v34)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v6 + 24) + 8 * v12) == 1)
          {
LABEL_27:
            v47 = 0;
            if (v13 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v47 = *(*(v6 + 64) + 8 * v12);
          if (v13 < 1)
          {
LABEL_20:
            if (++v41 == v18)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v48 = 0;
        v49 = v42 + v46 * v41;
        v50 = v43 + v47 * v41;
        while (2)
        {
          if ((v22 & 1) != 0 || (v51 = *(v5 + 16), v52 = v51 - 2, v51 < 2) || v52 > v51 - 1 || *(*(v5 + 24) + 8 * v52) == 1)
          {
            v53 = 0;
            if ((v35 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v53 = *(*(v5 + 64) + 8 * v52);
          if (v35)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v6 + 24) + 8 * v11) == 1)
          {
LABEL_38:
            v54 = 0;
            if (v10 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v54 = *(*(v6 + 64) + 8 * v11);
          if (v10 < 1)
          {
LABEL_31:
            if (++v48 == v13)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v55 = 0;
        v56 = v49 + v53 * v48;
        v57 = *(v5 + 40);
        v58 = *(v6 + 40);
        v59 = v50 + v54 * v48;
        while (2)
        {
          if ((v22 & 1) != 0 || (v61 = *(v5 + 16), v62 = v61 - 1, v61 < 1) || v62 > v61 - 1 || *(*(v5 + 24) + 8 * v62) == 1)
          {
            v63 = 0;
            if ((v36 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v60 = 0;
          }

          else
          {
            v63 = *(*(v5 + 64) + 8 * v62);
            if (v36)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v6 + 24) + 8 * v8) == 1)
            {
              goto LABEL_42;
            }

            v60 = *(*(v6 + 64) + 8 * v8);
          }

          *(v59 + v60 * v55 + v58) = 1.0 / sqrtf(*(v56 + v63 * v55 + v57) + v32);
          if (v10 == ++v55)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v40 = 0;
      if (v18 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v20 == v16)
      {
        return result;
      }
    }
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v18 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v17 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    result = -1;
    v11 = 1;
    goto LABEL_7;
  }

  result = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
  if (v16 >= 1)
  {
    v17 = 0;
    v14 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double _D0)
{
  v5 = **a1;
  v6 = **a2;
  v52 = **a4;
  v53 = **a3;
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v54 = 1;
    v61 = 1;
    v9 = 1;
    goto LABEL_7;
  }

  v8 = *(v6 + 24) + 8 * v7;
  v9 = *(v8 - 8);
  if (v7 == 1)
  {
    v54 = 1;
    v61 = 1;
LABEL_7:
    v58 = 1;
LABEL_8:
    v55 = 0;
    *&_D0 = _D0;
    __asm { FCVT            H0, S0 }

    v14 = vdup_lane_s16(*&_D0, 0);
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v15 = *(v5 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v5 + 24) + 8 * v16) == 1)
      {
        v17 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(*(v5 + 64) + 8 * v16);
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      v18 = *(v6 + 16);
      v19 = v18 - 4;
      if (v18 >= 4 && v19 <= v18 - 1 && *(*(v6 + 24) + 8 * v19) != 1)
      {
        v20 = *(*(v6 + 64) + 8 * v19);
        goto LABEL_21;
      }

LABEL_20:
      v20 = 0;
LABEL_21:
      if (v58 >= 1)
      {
        v59 = 0;
        v57 = v53 + v17 * v55;
        v56 = v52 + v20 * v55;
        do
        {
          if ((*(v5 + 58) & 1) != 0 || (v21 = *(v5 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v5 + 24) + 8 * v22) == 1)
          {
            v23 = 0;
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v23 = *(*(v5 + 64) + 8 * v22);
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          v24 = *(v6 + 16);
          v25 = v24 - 3;
          if (v24 >= 3 && v25 <= v24 - 1 && *(*(v6 + 24) + 8 * v25) != 1)
          {
            v26 = *(*(v6 + 64) + 8 * v25);
            goto LABEL_35;
          }

LABEL_34:
          v26 = 0;
LABEL_35:
          if (v61 >= 1)
          {
            v27 = 0;
            v60 = v57 + v23 * v59;
            v28 = v56 + v26 * v59;
            while (1)
            {
              if ((*(v5 + 58) & 1) != 0 || (v29 = *(v5 + 16), v30 = v29 - 2, v29 < 2) || v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
              {
                v31 = 0;
                if (*(v6 + 58))
                {
                  break;
                }
              }

              else
              {
                v31 = *(*(v5 + 64) + 8 * v30);
                if (*(v6 + 58))
                {
                  break;
                }
              }

              v32 = *(v6 + 16);
              v33 = v32 - 2;
              if (v32 < 2 || v33 > v32 - 1 || *(*(v6 + 24) + 8 * v33) == 1)
              {
                break;
              }

              v34 = *(*(v6 + 64) + 8 * v33);
              if (v9 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v27 == v61)
              {
                goto LABEL_23;
              }
            }

            v34 = 0;
            if (v9 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v35 = 0;
            v36 = v60 + v31 * v27;
            v37 = v28 + v34 * v27;
            while (2)
            {
              if ((*(v5 + 58) & 1) != 0 || (v38 = *(v5 + 16), v39 = v38 - 1, v38 < 1) || v39 > v38 - 1 || *(*(v5 + 24) + 8 * v39) == 1)
              {
                v40 = 0;
                if ((*(v6 + 58) & 1) == 0)
                {
LABEL_56:
                  v41 = *(v6 + 16);
                  v42 = v41 - 1;
                  if (v41 >= 1 && v42 <= v41 - 1 && *(*(v6 + 24) + 8 * v42) != 1)
                  {
                    v43 = *(*(v6 + 64) + 8 * v42);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v40 = *(*(v5 + 64) + 8 * v39);
                if ((*(v6 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v43 = 0;
LABEL_62:
              v44 = v37 + v43 * v35;
              v45 = *(v6 + 40);
              LODWORD(_D0) = *(v36 + v40 * v35 + *(v5 + 40));
              v62 = vcvtq_f32_f16(vadd_f16(*&_D0, v14)).u64[0];
              _S0 = std::sqrt[abi:nn200100]<float>(&v62);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
                FCVT            S2, H0
                FCVT            S3, H1
              }

              v50.f32[0] = __divsc3(1.0, 0.0, _S2, _S3);
              v50.i32[1] = v51;
              *&_D0 = vcvtq_f32_f16(vcvt_f16_f32(v50)).u64[0];
              *(v44 + v45) = _D0;
              if (v9 == ++v35)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v59;
        }

        while (v59 != v58);
      }

      if (++v55 == v54)
      {
        return;
      }
    }
  }

  v61 = *(v8 - 16);
  if (v7 < 3)
  {
    v54 = 1;
    goto LABEL_7;
  }

  v58 = *(v8 - 24);
  if (v7 == 3)
  {
    v54 = 1;
    goto LABEL_8;
  }

  v54 = *(v8 - 32);
  if (v54 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double _D0)
{
  v5 = **a1;
  v6 = **a2;
  v71 = **a4;
  v72 = **a3;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    result = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
LABEL_8:
    v20 = 0;
    v21 = v7 < 1;
    v22 = *(v5 + 58);
    v23 = *(v6 + 58);
    v24 = v19 | v23;
    v25 = v7 - 1;
    v26 = v17 | v23;
    v27 = v12 > v25;
    v28 = v14 | v23;
    v29 = v21 | v23;
    v30 = v11 > v25;
    v31 = v8 > v25;
    __asm
    {
      FCVT            H0, D0
      FCVT            S0, H0
    }

    v38 = v24 | (result > v25);
    v39 = v26 | v27;
    v40 = v28 | v30;
    v41 = v29 | v31;
    while (1)
    {
      if ((v22 & 1) != 0 || (v42 = *(v5 + 16), v43 = v42 - 4, v42 < 4) || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
        v44 = 0;
        if (v38)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v44 = *(*(v5 + 64) + 8 * v43);
        if (v38)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v6 + 24) + 8 * result) != 1)
      {
        v45 = *(*(v6 + 64) + 8 * result);
        if (v18 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v46 = 0;
        v47 = v44 * v20 + v72;
        v48 = v45 * v20 + v71;
        while (2)
        {
          if ((v22 & 1) != 0 || (v49 = *(v5 + 16), v50 = v49 - 3, v49 < 3) || v50 > v49 - 1 || *(*(v5 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v39 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v51 = *(*(v5 + 64) + 8 * v50);
          if (v39)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v6 + 24) + 8 * v12) == 1)
          {
LABEL_27:
            v52 = 0;
            if (v13 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v52 = *(*(v6 + 64) + 8 * v12);
          if (v13 < 1)
          {
LABEL_20:
            if (++v46 == v18)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = v48 + v52 * v46;
        while (2)
        {
          if ((v22 & 1) != 0 || (v56 = *(v5 + 16), v57 = v56 - 2, v56 < 2) || v57 > v56 - 1 || *(*(v5 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v40 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v58 = *(*(v5 + 64) + 8 * v57);
          if (v40)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v6 + 24) + 8 * v11) == 1)
          {
LABEL_38:
            v59 = 0;
            if (v10 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v59 = *(*(v6 + 64) + 8 * v11);
          if (v10 < 1)
          {
LABEL_31:
            if (++v53 == v13)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v60 = 0;
        v61 = v54 + v58 * v53;
        v62 = *(v5 + 40);
        v63 = *(v6 + 40);
        v64 = v55 + v59 * v53;
        while (2)
        {
          if ((v22 & 1) != 0 || (v68 = *(v5 + 16), v69 = v68 - 1, v68 < 1) || v69 > v68 - 1 || *(*(v5 + 24) + 8 * v69) == 1)
          {
            v70 = 0;
            if ((v41 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v65 = 0;
          }

          else
          {
            v70 = *(*(v5 + 64) + 8 * v69);
            if (v41)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v6 + 24) + 8 * v8) == 1)
            {
              goto LABEL_42;
            }

            v65 = *(*(v6 + 64) + 8 * v8);
          }

          _H2 = *(v61 + v70 * v60 + v62);
          __asm { FCVT            S2, H2 }

          *(v64 + v65 * v60++ + v63) = 1.0 / sqrtf(_S0 + _S2);
          if (v10 == v60)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v45 = 0;
      if (v18 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v20 == v16)
      {
        return result;
      }
    }
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v18 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v17 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    result = -1;
    v11 = 1;
    goto LABEL_7;
  }

  result = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
  if (v16 >= 1)
  {
    v17 = 0;
    v14 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double _D0)
{
  v5 = **a1;
  v6 = **a2;
  v51 = **a4;
  v52 = **a3;
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v53 = 1;
    v59 = 1;
    v9 = 1;
    goto LABEL_7;
  }

  v8 = *(v6 + 24) + 8 * v7;
  v9 = *(v8 - 8);
  if (v7 == 1)
  {
    v53 = 1;
    v59 = 1;
LABEL_7:
    v57 = 1;
LABEL_8:
    v54 = 0;
    *&_D0 = _D0;
    __asm { FCVT            H0, S0 }

    v14 = vdup_lane_s16(*&_D0, 0);
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v15 = *(v5 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v5 + 24) + 8 * v16) == 1)
      {
        v17 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(*(v5 + 64) + 8 * v16);
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      v18 = *(v6 + 16);
      v19 = v18 - 4;
      if (v18 >= 4 && v19 <= v18 - 1 && *(*(v6 + 24) + 8 * v19) != 1)
      {
        v20 = *(*(v6 + 64) + 8 * v19);
        goto LABEL_21;
      }

LABEL_20:
      v20 = 0;
LABEL_21:
      if (v57 >= 1)
      {
        v58 = 0;
        v56 = v52 + v17 * v54;
        v55 = v51 + v20 * v54;
        do
        {
          if ((*(v5 + 58) & 1) != 0 || (v21 = *(v5 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v5 + 24) + 8 * v22) == 1)
          {
            v23 = 0;
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v23 = *(*(v5 + 64) + 8 * v22);
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          v24 = *(v6 + 16);
          v25 = v24 - 3;
          if (v24 >= 3 && v25 <= v24 - 1 && *(*(v6 + 24) + 8 * v25) != 1)
          {
            v26 = *(*(v6 + 64) + 8 * v25);
            goto LABEL_35;
          }

LABEL_34:
          v26 = 0;
LABEL_35:
          if (v59 >= 1)
          {
            v27 = 0;
            v28 = v56 + v23 * v58;
            v29 = v55 + v26 * v58;
            while (1)
            {
              if ((*(v5 + 58) & 1) != 0 || (v30 = *(v5 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
              {
                v32 = 0;
                if (*(v6 + 58))
                {
                  break;
                }
              }

              else
              {
                v32 = *(*(v5 + 64) + 8 * v31);
                if (*(v6 + 58))
                {
                  break;
                }
              }

              v33 = *(v6 + 16);
              v34 = v33 - 2;
              if (v33 < 2 || v34 > v33 - 1 || *(*(v6 + 24) + 8 * v34) == 1)
              {
                break;
              }

              v35 = *(*(v6 + 64) + 8 * v34);
              if (v9 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v27 == v59)
              {
                goto LABEL_23;
              }
            }

            v35 = 0;
            if (v9 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v36 = 0;
            v37 = v28 + v32 * v27;
            v38 = v29 + v35 * v27;
            while (2)
            {
              if ((*(v5 + 58) & 1) != 0 || (v39 = *(v5 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v5 + 24) + 8 * v40) == 1)
              {
                v41 = 0;
                if ((*(v6 + 58) & 1) == 0)
                {
LABEL_56:
                  v42 = *(v6 + 16);
                  v43 = v42 - 1;
                  if (v42 >= 1 && v43 <= v42 - 1 && *(*(v6 + 24) + 8 * v43) != 1)
                  {
                    v44 = *(*(v6 + 64) + 8 * v43);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v41 = *(*(v5 + 64) + 8 * v40);
                if ((*(v6 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v44 = 0;
LABEL_62:
              v45 = (v38 + v44 * v36 + *(v6 + 40));
              LODWORD(_D0) = *(v37 + v41 * v36 + *(v5 + 40));
              v60 = vcvtq_f32_f16(vadd_f16(*&_D0, v14)).u64[0];
              _S0 = std::sqrt[abi:nn200100]<float>(&v60);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
                FCVT            S2, H0
                FCVT            S3, H1
              }

              *&_D0 = __divsc3(1.0, 0.0, _S2, _S3);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
              }

              *v45 = LOWORD(_D0);
              v45[1] = _S1;
              if (v9 == ++v36)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v58;
        }

        while (v58 != v57);
      }

      if (++v54 == v53)
      {
        return;
      }
    }
  }

  v59 = *(v8 - 16);
  if (v7 < 3)
  {
    v53 = 1;
    goto LABEL_7;
  }

  v57 = *(v8 - 24);
  if (v7 == 3)
  {
    v53 = 1;
    goto LABEL_8;
  }

  v53 = *(v8 - 32);
  if (v53 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double _D0)
{
  v5 = **a1;
  v6 = **a2;
  v72 = **a4;
  v73 = **a3;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    result = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
LABEL_8:
    v20 = 0;
    v21 = v7 < 1;
    v22 = *(v5 + 58);
    v23 = *(v6 + 58);
    v24 = v19 | v23;
    v25 = v7 - 1;
    v26 = v17 | v23;
    v27 = v12 > v25;
    v28 = v14 | v23;
    v29 = v21 | v23;
    v30 = v11 > v25;
    v31 = v8 > v25;
    __asm
    {
      FCVT            H0, D0
      FCVT            S0, H0
    }

    v38 = v24 | (result > v25);
    v39 = v26 | v27;
    v40 = v28 | v30;
    v41 = v29 | v31;
    while (1)
    {
      if ((v22 & 1) != 0 || (v42 = *(v5 + 16), v43 = v42 - 4, v42 < 4) || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
        v44 = 0;
        if (v38)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v44 = *(*(v5 + 64) + 8 * v43);
        if (v38)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v6 + 24) + 8 * result) != 1)
      {
        v45 = *(*(v6 + 64) + 8 * result);
        if (v18 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v46 = 0;
        v47 = v44 * v20 + v73;
        v48 = v45 * v20 + v72;
        while (2)
        {
          if ((v22 & 1) != 0 || (v49 = *(v5 + 16), v50 = v49 - 3, v49 < 3) || v50 > v49 - 1 || *(*(v5 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v39 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v51 = *(*(v5 + 64) + 8 * v50);
          if (v39)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v6 + 24) + 8 * v12) == 1)
          {
LABEL_27:
            v52 = 0;
            if (v13 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v52 = *(*(v6 + 64) + 8 * v12);
          if (v13 < 1)
          {
LABEL_20:
            if (++v46 == v18)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = v48 + v52 * v46;
        while (2)
        {
          if ((v22 & 1) != 0 || (v56 = *(v5 + 16), v57 = v56 - 2, v56 < 2) || v57 > v56 - 1 || *(*(v5 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v40 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v58 = *(*(v5 + 64) + 8 * v57);
          if (v40)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v6 + 24) + 8 * v11) == 1)
          {
LABEL_38:
            v59 = 0;
            if (v10 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v59 = *(*(v6 + 64) + 8 * v11);
          if (v10 < 1)
          {
LABEL_31:
            if (++v53 == v13)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v60 = 0;
        v61 = v54 + v58 * v53;
        v62 = *(v5 + 40);
        v63 = *(v6 + 40);
        v64 = v55 + v59 * v53;
        while (2)
        {
          if ((v22 & 1) != 0 || (v69 = *(v5 + 16), v70 = v69 - 1, v69 < 1) || v70 > v69 - 1 || *(*(v5 + 24) + 8 * v70) == 1)
          {
            v71 = 0;
            if ((v41 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v65 = 0;
          }

          else
          {
            v71 = *(*(v5 + 64) + 8 * v70);
            if (v41)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v6 + 24) + 8 * v8) == 1)
            {
              goto LABEL_42;
            }

            v65 = *(*(v6 + 64) + 8 * v8);
          }

          _H2 = *(v61 + v71 * v60 + v62);
          __asm { FCVT            S2, H2 }

          _S2 = 1.0 / sqrtf(_S0 + _S2);
          __asm { FCVT            H2, S2 }

          *(v64 + v65 * v60++ + v63) = LOWORD(_S2);
          if (v10 == v60)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v45 = 0;
      if (v18 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v20 == v16)
      {
        return result;
      }
    }
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v18 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v17 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    result = -1;
    v11 = 1;
    goto LABEL_7;
  }

  result = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
  if (v16 >= 1)
  {
    v17 = 0;
    v14 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double a5)
{
  v5 = **a1;
  v6 = **a2;
  v50 = **a4;
  v51 = **a3;
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v52 = 1;
    v58 = 1;
    v9 = 1;
    goto LABEL_7;
  }

  v8 = *(v6 + 24) + 8 * v7;
  v9 = *(v8 - 8);
  if (v7 == 1)
  {
    v52 = 1;
    v58 = 1;
LABEL_7:
    v56 = 1;
LABEL_8:
    v53 = 0;
    *&a5 = a5;
    v10 = vdup_lane_s32(*&a5, 0);
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v11 = *(v5 + 16), v12 = v11 - 4, v11 < 4) || v12 > v11 - 1 || *(*(v5 + 24) + 8 * v12) == 1)
      {
        v13 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = *(*(v5 + 64) + 8 * v12);
        if (*(v6 + 58))
        {
          goto LABEL_20;
        }
      }

      v14 = *(v6 + 16);
      v15 = v14 - 4;
      if (v14 >= 4 && v15 <= v14 - 1 && *(*(v6 + 24) + 8 * v15) != 1)
      {
        v16 = *(*(v6 + 64) + 8 * v15);
        goto LABEL_21;
      }

LABEL_20:
      v16 = 0;
LABEL_21:
      if (v56 >= 1)
      {
        v57 = 0;
        v55 = v51 + v13 * v53;
        v54 = v50 + v16 * v53;
        do
        {
          if ((*(v5 + 58) & 1) != 0 || (v17 = *(v5 + 16), v18 = v17 - 3, v17 < 3) || v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
          {
            v19 = 0;
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v19 = *(*(v5 + 64) + 8 * v18);
            if (*(v6 + 58))
            {
              goto LABEL_34;
            }
          }

          v20 = *(v6 + 16);
          v21 = v20 - 3;
          if (v20 >= 3 && v21 <= v20 - 1 && *(*(v6 + 24) + 8 * v21) != 1)
          {
            v22 = *(*(v6 + 64) + 8 * v21);
            goto LABEL_35;
          }

LABEL_34:
          v22 = 0;
LABEL_35:
          if (v58 >= 1)
          {
            v23 = 0;
            v24 = v55 + v19 * v57;
            v25 = v54 + v22 * v57;
            while (1)
            {
              if ((*(v5 + 58) & 1) != 0 || (v26 = *(v5 + 16), v27 = v26 - 2, v26 < 2) || v27 > v26 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
              {
                v28 = 0;
                if (*(v6 + 58))
                {
                  break;
                }
              }

              else
              {
                v28 = *(*(v5 + 64) + 8 * v27);
                if (*(v6 + 58))
                {
                  break;
                }
              }

              v29 = *(v6 + 16);
              v30 = v29 - 2;
              if (v29 < 2 || v30 > v29 - 1 || *(*(v6 + 24) + 8 * v30) == 1)
              {
                break;
              }

              v31 = *(*(v6 + 64) + 8 * v30);
              if (v9 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v23 == v58)
              {
                goto LABEL_23;
              }
            }

            v31 = 0;
            if (v9 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v32 = 0;
            v33 = v24 + v28 * v23;
            v34 = v25 + v31 * v23;
            while (2)
            {
              if ((*(v5 + 58) & 1) != 0 || (v35 = *(v5 + 16), v36 = v35 - 1, v35 < 1) || v36 > v35 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
              {
                v37 = 0;
                if ((*(v6 + 58) & 1) == 0)
                {
LABEL_56:
                  v38 = *(v6 + 16);
                  v39 = v38 - 1;
                  if (v38 >= 1 && v39 <= v38 - 1 && *(*(v6 + 24) + 8 * v39) != 1)
                  {
                    v40 = *(*(v6 + 64) + 8 * v39);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v37 = *(*(v5 + 64) + 8 * v36);
                if ((*(v6 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v40 = 0;
LABEL_62:
              v41 = (v34 + v40 * v32 + *(v6 + 40));
              v59 = vadd_f32(*(v33 + v37 * v32 + *(v5 + 40)), v10);
              v42 = std::sqrt[abi:nn200100]<float>(&v59);
              _S0 = __divsc3(1.0, 0.0, v42, v43);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
              }

              *v41 = LOWORD(_S0);
              v41[1] = _S1;
              if (v9 == ++v32)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v57;
        }

        while (v57 != v56);
      }

      if (++v53 == v52)
      {
        return;
      }
    }
  }

  v58 = *(v8 - 16);
  if (v7 < 3)
  {
    v52 = 1;
    goto LABEL_7;
  }

  v56 = *(v8 - 24);
  if (v7 == 3)
  {
    v52 = 1;
    goto LABEL_8;
  }

  v52 = *(v8 - 32);
  if (v52 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, double a5)
{
  v5 = **a1;
  v6 = **a2;
  v69 = **a4;
  v70 = **a3;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    result = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
LABEL_8:
    v20 = 0;
    v21 = v7 < 1;
    v22 = *(v5 + 58);
    v23 = *(v6 + 58);
    v24 = v19 | v23;
    v25 = v7 - 1;
    v26 = v17 | v23;
    v27 = v12 > v25;
    v28 = v14 | v23;
    v29 = v21 | v23;
    v30 = v11 > v25;
    v31 = v8 > v25;
    v32 = a5;
    v33 = v24 | (result > v25);
    v34 = v26 | v27;
    v35 = v28 | v30;
    v36 = v29 | v31;
    while (1)
    {
      if ((v22 & 1) != 0 || (v37 = *(v5 + 16), v38 = v37 - 4, v37 < 4) || v38 > v37 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
      {
        v39 = 0;
        if (v33)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v39 = *(*(v5 + 64) + 8 * v38);
        if (v33)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v6 + 24) + 8 * result) != 1)
      {
        v40 = *(*(v6 + 64) + 8 * result);
        if (v18 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v41 = 0;
        v42 = v39 * v20 + v70;
        v43 = v40 * v20 + v69;
        while (2)
        {
          if ((v22 & 1) != 0 || (v44 = *(v5 + 16), v45 = v44 - 3, v44 < 3) || v45 > v44 - 1 || *(*(v5 + 24) + 8 * v45) == 1)
          {
            v46 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v46 = *(*(v5 + 64) + 8 * v45);
          if (v34)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v6 + 24) + 8 * v12) == 1)
          {
LABEL_27:
            v47 = 0;
            if (v13 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v47 = *(*(v6 + 64) + 8 * v12);
          if (v13 < 1)
          {
LABEL_20:
            if (++v41 == v18)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v48 = 0;
        v49 = v42 + v46 * v41;
        v50 = v43 + v47 * v41;
        while (2)
        {
          if ((v22 & 1) != 0 || (v51 = *(v5 + 16), v52 = v51 - 2, v51 < 2) || v52 > v51 - 1 || *(*(v5 + 24) + 8 * v52) == 1)
          {
            v53 = 0;
            if ((v35 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v53 = *(*(v5 + 64) + 8 * v52);
          if (v35)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v6 + 24) + 8 * v11) == 1)
          {
LABEL_38:
            v54 = 0;
            if (v10 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v54 = *(*(v6 + 64) + 8 * v11);
          if (v10 < 1)
          {
LABEL_31:
            if (++v48 == v13)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v55 = 0;
        v56 = v49 + v53 * v48;
        v57 = *(v5 + 40);
        v58 = *(v6 + 40);
        v59 = v50 + v54 * v48;
        while (2)
        {
          if ((v22 & 1) != 0 || (v66 = *(v5 + 16), v67 = v66 - 1, v66 < 1) || v67 > v66 - 1 || *(*(v5 + 24) + 8 * v67) == 1)
          {
            v68 = 0;
            if ((v36 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v60 = 0;
          }

          else
          {
            v68 = *(*(v5 + 64) + 8 * v67);
            if (v36)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v6 + 24) + 8 * v8) == 1)
            {
              goto LABEL_42;
            }

            v60 = *(*(v6 + 64) + 8 * v8);
          }

          _S2 = 1.0 / sqrtf(*(v56 + v68 * v55 + v57) + v32);
          __asm { FCVT            H2, S2 }

          *(v59 + v60 * v55++ + v58) = LOWORD(_S2);
          if (v10 == v55)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v40 = 0;
      if (v18 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v20 == v16)
      {
        return result;
      }
    }
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v18 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v17 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    result = -1;
    v11 = 1;
    goto LABEL_7;
  }

  result = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
  if (v16 >= 1)
  {
    v17 = 0;
    v14 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return result;
}