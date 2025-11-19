void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_84;
  }

  v32 = a2;
  v79 = a9;
  v33 = 0;
  v65 = *(__p + 1);
  v67 = *(__p + 2);
  v69 = *(__p + 3);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v34 = *(v90 + 4);
  v68 = *(v90 + 3);
  v77 = *(v88 + 1);
  v78 = *v88;
  v75 = *(v88 + 3);
  v76 = *(v88 + 2);
  v73 = *v86;
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  do
  {
    if (v65)
    {
      for (i = 0; i != v65; ++i)
      {
        if (v67)
        {
          for (j = 0; j != v67; ++j)
          {
            if (v69)
            {
              for (k = 0; k != v69; ++k)
              {
                if (v82)
                {
                  for (m = 0; m != v82; ++m)
                  {
                    if (v32)
                    {
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = v40;
                    if (v40 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    v48 = v31 * v45;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v46 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v47 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      LOBYTE(v60) = -1;
                    }

                    else if (v59 == -INFINITY)
                    {
                      LOBYTE(v60) = 0;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 255)
                      {
                        v61 = 255;
                      }

                      v60 = v61 & ~(v61 >> 31);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_84:
    v85 = v25;
    operator delete(v25);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_25990E2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_86;
  }

  v78 = a9;
  v32 = 0;
  v64 = *(__p + 1);
  v66 = *(__p + 2);
  v68 = *(__p + 3);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v33 = *(v89 + 4);
  v67 = *(v89 + 3);
  v76 = *(v87 + 1);
  v77 = *v87;
  v74 = *(v87 + 3);
  v75 = *(v87 + 2);
  v72 = *v85;
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v34 = *(v85 + 4);
  do
  {
    if (v64)
    {
      for (i = 0; i != v64; ++i)
      {
        if (v66)
        {
          for (j = 0; j != v66; ++j)
          {
            if (v68)
            {
              for (k = 0; k != v68; ++k)
              {
                if (v81)
                {
                  for (m = 0; m != v81; ++m)
                  {
                    if (a2)
                    {
                      v41 = v40;
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = v39;
                    if (v39 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    v47 = v31 * v44;
                    v48 = 0.0;
                    v49 = 0.0;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v47, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v45 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v46 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v46 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      v59 = 127;
                    }

                    else if (v58 == -INFINITY)
                    {
                      v59 = 0x80;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 127)
                      {
                        v60 = 127;
                      }

                      if (v60 <= -128)
                      {
                        v59 = 0x80;
                      }

                      else
                      {
                        v59 = v60;
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

    ++v32;
  }

  while (v32 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_86:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_25990EA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_82;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v34 = *(v90 + 2);
  v66 = v34;
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v35 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v36 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (v31)
                    {
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = v41;
                    if (v41 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = v30 * v44;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v46 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v47 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    v59 = std::function<float ()(float)>::operator()(a8, v56);
                    v61 = MIL::Fp16::FromFloat(v59, v60);
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v65;
      }

      while (v37 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v24 = __p;
  if (__p)
  {
LABEL_82:
    v85 = v24;
    operator delete(v24);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_25990F184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v32 = a2;
  v78 = a9;
  v33 = 0;
  v64 = *(__p + 1);
  v66 = *(__p + 2);
  v68 = *(__p + 3);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v34 = *(v89 + 4);
  v67 = *(v89 + 3);
  v76 = *(v87 + 1);
  v77 = *v87;
  v74 = *(v87 + 3);
  v75 = *(v87 + 2);
  v72 = *v85;
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  do
  {
    if (v64)
    {
      for (i = 0; i != v64; ++i)
      {
        if (v66)
        {
          for (j = 0; j != v66; ++j)
          {
            if (v68)
            {
              for (k = 0; k != v68; ++k)
              {
                if (v81)
                {
                  for (m = 0; m != v81; ++m)
                  {
                    if (v32)
                    {
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v42 = 1.0;
                    }

                    v43 = v40;
                    if (v40 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 < -65536.0)
                    {
                      v43 = -65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = -65536.0;
                    }

                    if (v42 > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v42 >= -65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    v47 = v31 * v43;
                    v48 = 0.0;
                    v49 = 0.0;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v47, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v45 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v46 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v46 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      LOBYTE(v59) = -1;
                    }

                    else if (v58 == -INFINITY)
                    {
                      LOBYTE(v59) = 0;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 255)
                      {
                        v60 = 255;
                      }

                      v59 = v60 & ~(v60 >> 31);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_89:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_25990F930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v83 - __p;
  if (v83 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_91;
  }

  v77 = a9;
  v32 = 0;
  v63 = *(__p + 1);
  v65 = *(__p + 2);
  v67 = *(__p + 3);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v33 = *(v88 + 4);
  v66 = *(v88 + 3);
  v75 = *(v86 + 1);
  v76 = *v86;
  v73 = *(v86 + 3);
  v74 = *(v86 + 2);
  v71 = *v84;
  v72 = *(v86 + 4);
  v70 = *(v84 + 1);
  v68 = *(v84 + 3);
  v69 = *(v84 + 2);
  v34 = *(v84 + 4);
  do
  {
    if (v63)
    {
      for (i = 0; i != v63; ++i)
      {
        if (v65)
        {
          for (j = 0; j != v65; ++j)
          {
            if (v67)
            {
              for (k = 0; k != v67; ++k)
              {
                if (v80)
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (a2)
                    {
                    }

                    else
                    {
                      v40 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v41 = 1.0;
                    }

                    v42 = v39;
                    if (v39 > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v42 < -65536.0)
                    {
                      v42 = -65536.0;
                    }

                    if (v40 <= 65536.0)
                    {
                      v43 = v40;
                    }

                    else
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = -65536.0;
                    }

                    if (v41 > 65536.0)
                    {
                      v41 = 65536.0;
                    }

                    if (v41 >= -65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = -65536.0;
                    }

                    v46 = v31 * v42;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v44 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = 0.0;
                    if ((v45 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v45 * v47), __e);
                      v56 = ldexp(v55, 11);
                      v54 = ldexp(round(v56), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v54);
                    if (v57 == INFINITY)
                    {
                      v58 = 127;
                    }

                    else if (v57 == -INFINITY)
                    {
                      v58 = 0x80;
                    }

                    else
                    {
                      v59 = llroundf(v57);
                      if (v59 >= 127)
                      {
                        v59 = 127;
                      }

                      if (v59 <= -128)
                      {
                        v58 = 0x80;
                      }

                      else
                      {
                        v58 = v59;
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

    ++v32;
  }

  while (v32 != v61);
  v25 = __p;
  if (__p)
  {
LABEL_91:
    v83 = v25;
    operator delete(v25);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_2599100DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::PeElementWiseBinaryParamValues::~PeElementWiseBinaryParamValues(void **this)
{
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 80) == 1)
  {
    v2 = this[7];
    if (v2)
    {
      this[8] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void MIL::ANEMachineIR::Interpreter::PeAddCpu::Run(ANEMachineIR::Validators *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v282 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 6)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 6)
  {
    goto LABEL_10;
  }

  if (*v6 != 1633641840 || *(v6 + 4) != 25700)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    v10 = std::string::basic_string[abi:ne200100]<0>(v280, "pe_add");
    v11 = std::string::insert(v10, 0, "Expected ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v236.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v236.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v236, " op. Got ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v238.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v238.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = (*(*a1 + 56))(a1);
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = std::string::append(&v238, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v19->__r_.__value_.__l + 2);
    *v9 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v238.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v236.__r_.__value_.__l.__data_);
    }

    if (v281 < 0)
    {
      v21 = v280[0];
LABEL_22:
      operator delete(v21);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v238, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v238);
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v238, "y");
  v24 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v238);
  if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_28;
    }

LABEL_33:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    goto LABEL_23;
  }

  operator delete(v238.__r_.__value_.__l.__data_);
  if (!InterpretedTensorValue)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (!v24)
  {
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for y");
    goto LABEL_23;
  }

  v238.__r_.__value_.__s.__data_[0] = 0;
  v238.__r_.__value_.__s.__data_[4] = 0;
  v238.__r_.__value_.__s.__data_[8] = 0;
  v238.__r_.__value_.__s.__data_[12] = 0;
  v238.__r_.__value_.__s.__data_[16] = 0;
  v238.__r_.__value_.__s.__data_[18] = 0;
  LOBYTE(v239) = 0;
  v241 = 0;
  LOBYTE(v242) = 0;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  LOBYTE(v249) = 0;
  v251 = 0;
  ANEMachineIR::Validators::ParsePeElementWiseBinaryParamValues(a1, &v238, &v236);
  if ((MIL::ValidationResult::IsGood(&v236) & 1) == 0)
  {
    *a3 = 3;
    MIL::MILResult::GetMessageWithLocation(&v236);
    MEMORY[0x259CA8F00](&v236);
    goto LABEL_198;
  }

  MEMORY[0x259CA8F00](&v236);
  if (v241 == 1)
  {
    *a3 = 5;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented 'reduction': rdar://86732114");
    goto LABEL_198;
  }

  *&v236.__r_.__value_.__r.__words[1] = 0uLL;
  v237 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v236, v280);
  if (!LODWORD(v236.__r_.__value_.__l.__data_))
  {
    v25 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
    v26 = (*(*v25 + 88))(v25);
    v27 = (*(*v24 + 32))(v24);
    v28 = (*(*v27 + 88))(v27);
    OutputType = MIL::IROperation::GetOutputType(a1);
    v30 = MIL::IRValueType::AsTensorType(OutputType);
    v31 = (*(*v30 + 88))(v30);
    v32 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
    ANEMachineIR::Utils::GetStaticTensorShape(v32, v33, v235);
    v34 = (*(*v24 + 32))(v24);
    ANEMachineIR::Utils::GetStaticTensorShape(v34, v35, v234);
    v36 = MIL::IROperation::GetOutputType(a1);
    v37 = MIL::IRValueType::AsTensorType(v36);
    ANEMachineIR::Utils::GetStaticTensorShape(v37, v38, v233);
    switch(v26)
    {
      case 4:
        switch(v28)
        {
          case 14:
            switch(v31)
            {
              case 14:
                v201 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                Data = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v203 = *&v238.__r_.__value_.__l.__data_;
                v204 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v275, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v275);
                (*(*a1 + 200))(&v229, a1);
                v205 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v206 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v206);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v205, &v252);
                v207 = v252;
                v252 = 0;
                if (v207)
                {
                  (*(*v207 + 1))(v207);
                }

                goto LABEL_188;
              case 9:
                v159 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v160 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v161 = *&v238.__r_.__value_.__l.__data_;
                v162 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v274, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v274);
                (*(*a1 + 200))(&v229, a1);
                v163 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v164 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v164);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v163, &v252);
                v165 = v252;
                v252 = 0;
                if (v165)
                {
                  (*(*v165 + 1))(v165);
                }

                goto LABEL_188;
              case 4:
                v89 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v90 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v91 = *&v238.__r_.__value_.__l.__data_;
                v92 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v276, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v276);
                (*(*a1 + 200))(&v229, a1);
                v93 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v94 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v94);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v93, &v252);
                v95 = v252;
                v252 = 0;
                if (v95)
                {
                  (*(*v95 + 1))(v95);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 9:
            switch(v31)
            {
              case 14:
                v152 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v153 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v154 = *&v238.__r_.__value_.__l.__data_;
                v155 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v272, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v272);
                (*(*a1 + 200))(&v229, a1);
                v156 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v157 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v157);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v156, &v252);
                v158 = v252;
                v252 = 0;
                if (v158)
                {
                  (*(*v158 + 1))(v158);
                }

                goto LABEL_188;
              case 9:
                v124 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v125 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v126 = *&v238.__r_.__value_.__l.__data_;
                v127 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v271, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v271);
                (*(*a1 + 200))(&v229, a1);
                v128 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v129 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v129);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v128, &v252);
                v130 = v252;
                v252 = 0;
                if (v130)
                {
                  (*(*v130 + 1))(v130);
                }

                goto LABEL_188;
              case 4:
                v75 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v76 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v77 = *&v238.__r_.__value_.__l.__data_;
                v78 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v273, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v273);
                (*(*a1 + 200))(&v229, a1);
                v79 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v80 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v80);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v79, &v252);
                v81 = v252;
                v252 = 0;
                if (v81)
                {
                  (*(*v81 + 1))(v81);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 4:
            switch(v31)
            {
              case 14:
                v208 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v209 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v210 = *&v238.__r_.__value_.__l.__data_;
                v211 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v278, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v278);
                (*(*a1 + 200))(&v229, a1);
                v212 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v213 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v213);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v212, &v252);
                v214 = v252;
                v252 = 0;
                if (v214)
                {
                  (*(*v214 + 1))(v214);
                }

                goto LABEL_188;
              case 9:
                v173 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v174 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v175 = *&v238.__r_.__value_.__l.__data_;
                v176 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v277, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v277);
                (*(*a1 + 200))(&v229, a1);
                v177 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v178 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v178);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v177, &v252);
                v179 = v252;
                v252 = 0;
                if (v179)
                {
                  (*(*v179 + 1))(v179);
                }

                goto LABEL_188;
              case 4:
                v53 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v54 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v55 = *&v238.__r_.__value_.__l.__data_;
                v56 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v279, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v279);
                (*(*a1 + 200))(&v229, a1);
                v57 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v58 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v58);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v57, &v252);
                v59 = v252;
                v252 = 0;
                if (v59)
                {
                  (*(*v59 + 1))(v59);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
        }

        break;
      case 9:
        switch(v28)
        {
          case 14:
            switch(v31)
            {
              case 14:
                v145 = MIL::IRTensorValue::GetDataView<signed char>();
                v146 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v147 = *&v238.__r_.__value_.__l.__data_;
                v148 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v257, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v257);
                (*(*a1 + 200))(&v229, a1);
                v149 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v150 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v150);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v149, &v252);
                v151 = v252;
                v252 = 0;
                if (v151)
                {
                  (*(*v151 + 1))(v151);
                }

                goto LABEL_188;
              case 9:
                v117 = MIL::IRTensorValue::GetDataView<signed char>();
                v118 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v119 = *&v238.__r_.__value_.__l.__data_;
                v120 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v256, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v256);
                (*(*a1 + 200))(&v229, a1);
                v121 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v122 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v122);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v121, &v252);
                v123 = v252;
                v252 = 0;
                if (v123)
                {
                  (*(*v123 + 1))(v123);
                }

                goto LABEL_188;
              case 4:
                v68 = MIL::IRTensorValue::GetDataView<signed char>();
                v69 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v70 = *&v238.__r_.__value_.__l.__data_;
                v71 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v258, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v258);
                (*(*a1 + 200))(&v229, a1);
                v72 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v73 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v73);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v72, &v252);
                v74 = v252;
                v252 = 0;
                if (v74)
                {
                  (*(*v74 + 1))(v74);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 9:
            switch(v31)
            {
              case 14:
                v110 = MIL::IRTensorValue::GetDataView<signed char>();
                v111 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v112 = *&v238.__r_.__value_.__l.__data_;
                v113 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v254, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v254);
                (*(*a1 + 200))(&v229, a1);
                v114 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v115 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v115);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v114, &v252);
                v116 = v252;
                v252 = 0;
                if (v116)
                {
                  (*(*v116 + 1))(v116);
                }

                goto LABEL_188;
              case 9:
                v103 = MIL::IRTensorValue::GetDataView<signed char>();
                v104 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v105 = *&v238.__r_.__value_.__l.__data_;
                v106 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v253, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v253);
                (*(*a1 + 200))(&v229, a1);
                v107 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v108 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v108);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v107, &v252);
                v109 = v252;
                v252 = 0;
                if (v109)
                {
                  (*(*v109 + 1))(v109);
                }

                goto LABEL_188;
              case 4:
                v61 = MIL::IRTensorValue::GetDataView<signed char>();
                v62 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v63 = *&v238.__r_.__value_.__l.__data_;
                v64 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v255, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v255);
                (*(*a1 + 200))(&v229, a1);
                v65 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v66 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v66);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v65, &v252);
                v67 = v252;
                v252 = 0;
                if (v67)
                {
                  (*(*v67 + 1))(v67);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 4:
            switch(v31)
            {
              case 14:
                v166 = MIL::IRTensorValue::GetDataView<signed char>();
                v167 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v168 = *&v238.__r_.__value_.__l.__data_;
                v169 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v260, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v260);
                (*(*a1 + 200))(&v229, a1);
                v170 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v171 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v171);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v170, &v252);
                v172 = v252;
                v252 = 0;
                if (v172)
                {
                  (*(*v172 + 1))(v172);
                }

                goto LABEL_188;
              case 9:
                v131 = MIL::IRTensorValue::GetDataView<signed char>();
                v132 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v133 = *&v238.__r_.__value_.__l.__data_;
                v134 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v259, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v259);
                (*(*a1 + 200))(&v229, a1);
                v135 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v136 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v136);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v135, &v252);
                v137 = v252;
                v252 = 0;
                if (v137)
                {
                  (*(*v137 + 1))(v137);
                }

                goto LABEL_188;
              case 4:
                v46 = MIL::IRTensorValue::GetDataView<signed char>();
                v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v48 = *&v238.__r_.__value_.__l.__data_;
                v49 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v261, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v261);
                (*(*a1 + 200))(&v229, a1);
                v50 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v51 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v51);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v50, &v252);
                v52 = v252;
                v252 = 0;
                if (v52)
                {
                  (*(*v52 + 1))(v52);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
        }

        break;
      case 14:
        switch(v28)
        {
          case 14:
            switch(v31)
            {
              case 14:
                v215 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v216 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v217 = *&v238.__r_.__value_.__l.__data_;
                v218 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v266, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v266);
                (*(*a1 + 200))(&v229, a1);
                v219 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v220 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v220);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v219, &v252);
                v221 = v252;
                v252 = 0;
                if (v221)
                {
                  (*(*v221 + 1))(v221);
                }

                goto LABEL_188;
              case 9:
                v187 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v188 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v189 = *&v238.__r_.__value_.__l.__data_;
                v190 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v265, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v265);
                (*(*a1 + 200))(&v229, a1);
                v191 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v192 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v192);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v191, &v252);
                v193 = v252;
                v252 = 0;
                if (v193)
                {
                  (*(*v193 + 1))(v193);
                }

                goto LABEL_188;
              case 4:
                v96 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v97 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v98 = *&v238.__r_.__value_.__l.__data_;
                v99 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v267, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v267);
                (*(*a1 + 200))(&v229, a1);
                v100 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v101 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v101);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v100, &v252);
                v102 = v252;
                v252 = 0;
                if (v102)
                {
                  (*(*v102 + 1))(v102);
                }

                goto LABEL_188;
            }

            break;
          case 9:
            switch(v31)
            {
              case 14:
                v180 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v181 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v182 = *&v238.__r_.__value_.__l.__data_;
                v183 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v263, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v263);
                (*(*a1 + 200))(&v229, a1);
                v184 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v185 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v185);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v184, &v252);
                v186 = v252;
                v252 = 0;
                if (v186)
                {
                  (*(*v186 + 1))(v186);
                }

                goto LABEL_188;
              case 9:
                v138 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v139 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v140 = *&v238.__r_.__value_.__l.__data_;
                v141 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v262, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v262);
                (*(*a1 + 200))(&v229, a1);
                v142 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v143 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v143);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v142, &v252);
                v144 = v252;
                v252 = 0;
                if (v144)
                {
                  (*(*v144 + 1))(v144);
                }

                goto LABEL_188;
              case 4:
                v82 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v83 = MIL::IRTensorValue::GetDataView<signed char>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v84 = *&v238.__r_.__value_.__l.__data_;
                v85 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v264, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v264);
                (*(*a1 + 200))(&v229, a1);
                v86 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v87 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v87);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v86, &v252);
                v88 = v252;
                v252 = 0;
                if (v88)
                {
                  (*(*v88 + 1))(v88);
                }

                goto LABEL_188;
            }

            break;
          case 4:
            switch(v31)
            {
              case 14:
                v222 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v223 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v224 = *&v238.__r_.__value_.__l.__data_;
                v225 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v269, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v269);
                (*(*a1 + 200))(&v229, a1);
                v226 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v227 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v227);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v226, &v252);
                v228 = v252;
                v252 = 0;
                if (v228)
                {
                  (*(*v228 + 1))(v228);
                }

                goto LABEL_188;
              case 9:
                v194 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v195 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v196 = *&v238.__r_.__value_.__l.__data_;
                v197 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v268, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v268);
                (*(*a1 + 200))(&v229, a1);
                v198 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v199 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v199);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v198, &v252);
                v200 = v252;
                v252 = 0;
                if (v200)
                {
                  (*(*v200 + 1))(v200);
                }

                goto LABEL_188;
              case 4:
                v39 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v229 = 0;
                v230 = 0;
                v231 = 0;
                v41 = *&v238.__r_.__value_.__l.__data_;
                v42 = *&v238.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v270, v280);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v270);
                (*(*a1 + 200))(&v229, a1);
                v43 = v229;
                if (v230 == v229)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v44 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v44);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v43, &v252);
                v45 = v252;
                v252 = 0;
                if (v45)
                {
                  (*(*v45 + 1))(v45);
                }

LABEL_188:
                v252 = &v229;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v252);
                *a3 = 0;
                std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                goto LABEL_190;
            }

            break;
          default:
            goto LABEL_72;
        }

LABEL_115:
        v60 = "Unimplemented output dtype";
        goto LABEL_116;
      default:
        v60 = "Unimplemented x dtype";
LABEL_116:
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), v60);
LABEL_190:
        if (v233[0])
        {
          v233[1] = v233[0];
          operator delete(v233[0]);
        }

        if (v234[0])
        {
          v234[1] = v234[0];
          operator delete(v234[0]);
        }

        if (v235[0])
        {
          v235[1] = v235[0];
          operator delete(v235[0]);
        }

        goto LABEL_196;
    }

LABEL_72:
    v60 = "Unimplemented y dtype";
    goto LABEL_116;
  }

  *a3 = v236.__r_.__value_.__l.__data_;
  *(a3 + 8) = *&v236.__r_.__value_.__r.__words[1];
  *(a3 + 24) = v237;
  *&v236.__r_.__value_.__r.__words[1] = 0uLL;
  v237 = 0;
LABEL_196:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v280);
  if (SHIBYTE(v237) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__size_);
  }

LABEL_198:
  if (v251 == 1 && v250 < 0)
  {
    operator delete(v249);
  }

  if (v244 == 1 && v242)
  {
    v243 = v242;
    operator delete(v242);
  }

  if (v241 == 1 && v240 < 0)
  {
    v21 = v239;
    goto LABEL_22;
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_259912928(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    *v36 = 4;
    v41 = (*(*v40 + 16))(v40);
    std::string::basic_string[abi:ne200100]<0>((v36 + 8), v41);
    __cxa_end_catch();
    JUMPOUT(0x2599127B0);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v37 - 136);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  ANEMachineIR::Validators::PeElementWiseBinaryParamValues::~PeElementWiseBinaryParamValues(&a36);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798E3510, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798E3518, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t MIL::ANEMachineIR::Interpreter::anonymous namespace::promote_shape_to_5d@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (v5 >= 6)
  {
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a2, v3, v4, v5);
  v8 = (a1[1] - *a1) >> 3;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v10 = *a2;
        __src = xmmword_259A393B8;
        v16 = unk_259A393C8;
        result = std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v10, __src.i8, &v17, 4);
      }
    }

    else
    {
      v13 = *a2;
      __src = xmmword_259A393D8;
      v16 = unk_259A393E8;
      v17 = 1;
      result = std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v13, __src.i8, &v18, 5);
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v11 = *a2;
        __src = xmmword_259A393A0;
        *&v16 = 1;
        result = std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v11, __src.i8, &v16 + 8, 3);
        break;
      case 3:
        v12 = *a2;
        __src = vdupq_n_s64(1uLL);
        result = std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v12, __src.i8, &v16, 2);
        break;
      case 4:
        v9 = *a2;
        __src.i64[0] = 1;
        result = std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v9, __src.i8, &__src.i8[8], 1);
        break;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2599145A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  v11 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::ANEMachineIR::Interpreter::anonymous namespace::get_index(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

uint64_t std::function<float ()(float)>::operator()(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *std::vector<MIL::Fp16>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2599146C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599147D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_259914C6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void *std::vector<signed char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_259914D30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>()
{
  __assert_rtn("ComputeValue", "PeElementWiseCpu.cpp", 113, "src_shape.size() == add_shape.size()");
}

{
  __assert_rtn("ComputeValue", "PeElementWiseCpu.cpp", 116, "src_shape.size() == mul_shape.size()");
}

{
  __assert_rtn("ComputeValue", "PeElementWiseCpu.cpp", 109, "y_scale == 1.0 || y_scale == -1.0");
}

void ANEMachineIR::Validators::ValidateConvParameters(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (*(a6 + 16) == 1 && (*(a6 + 96) <= 1uLL ? (v14 = *(a6 + 104) >= 2uLL) : (v14 = 1), v14))
  {
    v15 = *(a1 + 8);
    v144 = *a1;
    v145 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v142, "PyANE does not reuse bias or post-scale in group data, so channel vector configurations are not supported at the moment.");
    MEMORY[0x259CA8EE0](a7, &v144, 319, v142);
    if (v143 < 0)
    {
      operator delete(v142[0]);
    }

    v16 = v145;
    if (v145)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((a3[1] - *a3) >> 3) - 3 == *a6)
    {
      v17 = a2[1];
      if (v17 == *a2)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *(a6 + 8);
      if (v18)
      {
        if (!(*(v17 - 8) % v18))
        {
          MIL::ValidationResult::ValidationResult(v133);
          goto LABEL_34;
        }

        v19 = *(a1 + 8);
        v115 = *a1;
        *&v116 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "num_groups must divide input_channel.");
        MEMORY[0x259CA8EE0](v133, &v115, 315, &__p);
      }

      else
      {
        v21 = *(a1 + 8);
        v115 = *a1;
        *&v116 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "num_groups must be greater than 0.");
        MEMORY[0x259CA8EE0](v133, &v115, 315, &__p);
      }

      if (SHIBYTE(v121) < 0)
      {
        operator delete(__p);
      }

      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

LABEL_34:
      if (MIL::ValidationResult::IsGood(v133))
      {
        v22 = *a3;
        v23 = a3[1] - *a3;
        if (v23 < 9 || (v24 = a2[1] - *a2) == 0)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v25 = v22 + v23;
        *a2;
        v26 = a2[1];
        v27 = *(a6 + 8);
        if (*(v22 + v23 - 16) != *(v26 - 8) / v27)
        {
          v30 = *(a1 + 8);
          v131 = *a1;
          v132 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v129, "Kernel must have input channels equivalent to x's input channels over num_groups");
          MEMORY[0x259CA8EE0](a7, &v131, 315, v129);
          if (v130 < 0)
          {
            operator delete(v129[0]);
          }

          v31 = v132;
          if (!v132)
          {
            goto LABEL_221;
          }

          goto LABEL_57;
        }

        v28 = *v22;
        if (*(a6 + 16))
        {
          v27 = 1;
        }

        if (v28 == v27)
        {
          if (*(a6 + 18) == 1)
          {
            v29 = *(a1 + 8);
            v110 = *a1;
            *&v111 = v29;
            if (v29)
            {
              atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&v115, "Padding validation for conv transpose not implemented.");
            MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
            goto LABEL_140;
          }

          for (i = *(a6 + 48); i != *(a6 + 56); ++i)
          {
            if (*i != 1)
            {
              v46 = *(a1 + 8);
              v110 = *a1;
              *&v111 = v46;
              if (v46)
              {
                atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(&v115, "Padding validation for dilated convs not yet implemented.");
              MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
              goto LABEL_140;
            }
          }

          v34 = *a6;
          if (*a6 == 3)
          {
            if (v23 <= 0x20)
            {
              goto LABEL_226;
            }

            v36 = *(a6 + 72);
            v35 = *(a6 + 80);
            v37 = v35 - v36;
            if (v35 == v36 || v37 < 5)
            {
              goto LABEL_225;
            }

            v39 = *(v25 - 5);
            v38 = *(v25 - 4);
            v40 = *(v25 - 3);
            v41 = *v36;
            v42 = v36[1];
          }

          else
          {
            if (v34 < 2)
            {
              if (v23 <= 0x10)
              {
                goto LABEL_226;
              }

              v36 = *(a6 + 72);
              v37 = *(a6 + 80) - v36;
              if (v37 < 5)
              {
                goto LABEL_225;
              }

              v43 = 0;
              v44 = 0;
              v45 = 0;
              v41 = 0;
              v42 = 0;
              v40 = *(v25 - 3);
              v39 = 1;
              v38 = 1;
LABEL_78:
              if (v41 >= v39 || v42 >= v39)
              {
                v50 = *(a1 + 8);
                v110 = *a1;
                *&v111 = v50;
                if (v50)
                {
                  atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v115, "Conv padding must be supported by kernel in depth dimension.");
                MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
                goto LABEL_140;
              }

              if (v44 >= v38 || v43 >= v38)
              {
                v51 = *(a1 + 8);
                v110 = *a1;
                *&v111 = v51;
                if (v51)
                {
                  atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v115, "Conv padding must be supported by kernel in height dimension.");
                MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
                goto LABEL_140;
              }

              v47 = v36 + v37;
              v48 = *(v47 - 2);
              if (v40 <= v48 || v40 <= *(v47 - 1))
              {
                v52 = *(a1 + 8);
                v110 = *a1;
                *&v111 = v52;
                if (v52)
                {
                  atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v115, "Conv padding must be supported by kernel in width dimension.");
                MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
                goto LABEL_140;
              }

              if (v34 == 3)
              {
                if (v24 < 0x19)
                {
                  goto LABEL_226;
                }

                v49 = *(v26 - 32);
              }

              else
              {
                v49 = 1;
              }

              if (v45)
              {
                if (v24 < 0x11)
                {
                  goto LABEL_226;
                }

                v53 = *(v26 - 24);
              }

              else
              {
                if (v24 < 9)
                {
                  goto LABEL_226;
                }

                v53 = 1;
              }

              v54 = *(v26 - 16);
              v55 = *a5;
              v56 = a5[1] - *a5;
              if (v34 == 3)
              {
                if (v56 < 0x19)
                {
                  goto LABEL_226;
                }

                v57 = *(v55 + v56 - 32) - 1;
              }

              else
              {
                v57 = 0;
              }

              if (v45)
              {
                if (v56 >= 0x11)
                {
                  v58 = *(v55 + v56 - 24) - 1;
LABEL_111:
                  v59 = *(v55 + v56 - 16);
                  if (v34 == 3)
                  {
                    v60 = *(a6 + 24);
                    if (*(a6 + 32) == v60)
                    {
                      goto LABEL_225;
                    }

                    LODWORD(v60) = *v60;
                    if (v60 >= 0)
                    {
                      v60 = v60;
                    }

                    else
                    {
                      v60 = -v60;
                    }
                  }

                  else
                  {
                    v60 = 1;
                  }

                  if (v45)
                  {
                    v61 = *(a6 + 24);
                    v62 = *(a6 + 32);
                    if ((v62 - v61) < 5)
                    {
                      goto LABEL_225;
                    }

                    LODWORD(v63) = *(v62 - 8);
                    if (v63 >= 0)
                    {
                      v63 = v63;
                    }

                    else
                    {
                      v63 = -v63;
                    }
                  }

                  else
                  {
                    v61 = *(a6 + 24);
                    v62 = *(a6 + 32);
                    v63 = 1;
                  }

                  if (v62 != v61)
                  {
                    LODWORD(v62) = *(v62 - 4);
                    if (v62 >= 0)
                    {
                      v62 = v62;
                    }

                    else
                    {
                      v62 = -v62;
                    }

                    if ((v59 - 1) * v62 >= v54 + v48)
                    {
                      v64 = *(a1 + 8);
                      v110 = *a1;
                      *&v111 = v64;
                      if (v64)
                      {
                        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v115, "Conv padding support constraints violated for Px.");
                      MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
                    }

                    else if (v63 * v58 >= v53 + v44)
                    {
                      v65 = *(a1 + 8);
                      v110 = *a1;
                      *&v111 = v65;
                      if (v65)
                      {
                        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v115, "Conv padding support constraints violated for Py.");
                      MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
                    }

                    else
                    {
                      if (v60 * v57 < v49 + v41)
                      {
                        MIL::ValidationResult::ValidationResult(&__p);
LABEL_144:
                        if (MIL::ValidationResult::IsGood(&__p))
                        {
                          for (j = *(a6 + 48); ; ++j)
                          {
                            if (j == *(a6 + 56))
                            {
                              MIL::ValidationResult::ValidationResult(&v115);
                              goto LABEL_162;
                            }

                            if (*j <= 0)
                            {
                              break;
                            }

                            if (*j != 1)
                            {
                              v69 = *(a1 + 8);
                              v92.__r_.__value_.__r.__words[0] = *a1;
                              v92.__r_.__value_.__l.__size_ = v69;
                              if (v69)
                              {
                                atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
                              }

                              std::string::basic_string[abi:ne200100]<0>(&v110, "MIL<aneflow> frontend has not yet implemented dilated conv.");
                              MEMORY[0x259CA8EE0](&v115, &v92, 315, &v110);
                              goto LABEL_158;
                            }
                          }

                          v68 = *(a1 + 8);
                          v92.__r_.__value_.__r.__words[0] = *a1;
                          v92.__r_.__value_.__l.__size_ = v68;
                          if (v68)
                          {
                            atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
                          }

                          std::string::basic_string[abi:ne200100]<0>(&v110, "Dilation must be greater than zero.");
                          MEMORY[0x259CA8EE0](&v115, &v92, 315, &v110);
LABEL_158:
                          if (SHIBYTE(v111) < 0)
                          {
                            operator delete(v110);
                          }

                          if (v92.__r_.__value_.__l.__size_)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v92.__r_.__value_.__l.__size_);
                          }

LABEL_162:
                          if (MIL::ValidationResult::IsGood(&v115))
                          {
                            if (MIL::ValidationResult::IsGood(&v110))
                            {
                              ANEMachineIR::Validators::InferOutputShape(a2, a3, a6, &v108);
                              v70 = a5[1] - *a5;
                              if (v109 - v108 == v70)
                              {
                                if (!memcmp(v108, *a5, v109 - v108))
                                {
                                  if (MIL::ValidationResult::IsGood(&v92))
                                  {
                                    MIL::ValidationResult::ValidationResult(a7);
                                  }

                                  else
                                  {
                                    *(a7 + 8) = *&v92.__r_.__value_.__r.__words[1];
                                    *&v92.__r_.__value_.__r.__words[1] = 0uLL;
                                    *(a7 + 24) = v93;
                                    *(a7 + 40) = v94;
                                    v93 = 0uLL;
                                    v94 = 0;
                                    *a7 = MEMORY[0x277D24E58] + 16;
                                    *(a7 + 48) = v95;
                                  }

                                  MEMORY[0x259CA8F00](&v92);
                                }

                                else
                                {
                                  ANEMachineIR::Utils::ShapeString(a5);
                                  ANEMachineIR::Utils::ShapeString(&v108);
                                  v71 = *(a1 + 8);
                                  v98 = *a1;
                                  v99 = v71;
                                  if (v71)
                                  {
                                    atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  std::operator+<char>();
                                  v72 = std::string::append(&v100, " does not match inferred shape ");
                                  v73 = *&v72->__r_.__value_.__l.__data_;
                                  v101.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
                                  *&v101.__r_.__value_.__l.__data_ = v73;
                                  v72->__r_.__value_.__l.__size_ = 0;
                                  v72->__r_.__value_.__r.__words[2] = 0;
                                  v72->__r_.__value_.__r.__words[0] = 0;
                                  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v74 = &v103;
                                  }

                                  else
                                  {
                                    v74 = v103.__r_.__value_.__r.__words[0];
                                  }

                                  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
                                  }

                                  else
                                  {
                                    size = v103.__r_.__value_.__l.__size_;
                                  }

                                  v76 = std::string::append(&v101, v74, size);
                                  v77 = *&v76->__r_.__value_.__l.__data_;
                                  v102.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
                                  *&v102.__r_.__value_.__l.__data_ = v77;
                                  v76->__r_.__value_.__l.__size_ = 0;
                                  v76->__r_.__value_.__r.__words[2] = 0;
                                  v76->__r_.__value_.__r.__words[0] = 0;
                                  v78 = std::string::append(&v102, ".");
                                  v79 = *&v78->__r_.__value_.__l.__data_;
                                  v97 = v78->__r_.__value_.__r.__words[2];
                                  *v96 = v79;
                                  v78->__r_.__value_.__l.__size_ = 0;
                                  v78->__r_.__value_.__r.__words[2] = 0;
                                  v78->__r_.__value_.__r.__words[0] = 0;
                                  MEMORY[0x259CA8EE0](a7, &v98, 313, v96);
                                  if (SHIBYTE(v97) < 0)
                                  {
                                    operator delete(v96[0]);
                                  }

                                  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v102.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v101.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v100.__r_.__value_.__l.__data_);
                                  }

                                  if (v99)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
                                  }

                                  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v103.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v92.__r_.__value_.__l.__data_);
                                  }
                                }
                              }

                              else
                              {
                                v81 = *(a1 + 8);
                                v106 = *a1;
                                v107 = v81;
                                if (v81)
                                {
                                  atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
                                  v70 = a5[1] - *a5;
                                }

                                std::to_string(&v101, v70 >> 3);
                                v82 = std::string::insert(&v101, 0, "Output rank ");
                                v83 = *&v82->__r_.__value_.__l.__data_;
                                v102.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
                                *&v102.__r_.__value_.__l.__data_ = v83;
                                v82->__r_.__value_.__l.__size_ = 0;
                                v82->__r_.__value_.__r.__words[2] = 0;
                                v82->__r_.__value_.__r.__words[0] = 0;
                                v84 = std::string::append(&v102, " does not match rank of inferred shape ");
                                v85 = *&v84->__r_.__value_.__l.__data_;
                                v103.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
                                *&v103.__r_.__value_.__l.__data_ = v85;
                                v84->__r_.__value_.__l.__size_ = 0;
                                v84->__r_.__value_.__r.__words[2] = 0;
                                v84->__r_.__value_.__r.__words[0] = 0;
                                std::to_string(&v100, (v109 - v108) >> 3);
                                if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v86 = &v100;
                                }

                                else
                                {
                                  v86 = v100.__r_.__value_.__r.__words[0];
                                }

                                if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v87 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
                                }

                                else
                                {
                                  v87 = v100.__r_.__value_.__l.__size_;
                                }

                                v88 = std::string::append(&v103, v86, v87);
                                v89 = *&v88->__r_.__value_.__l.__data_;
                                v92.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
                                *&v92.__r_.__value_.__l.__data_ = v89;
                                v88->__r_.__value_.__l.__size_ = 0;
                                v88->__r_.__value_.__r.__words[2] = 0;
                                v88->__r_.__value_.__r.__words[0] = 0;
                                v90 = std::string::append(&v92, ".");
                                v91 = *&v90->__r_.__value_.__l.__data_;
                                v105 = v90->__r_.__value_.__r.__words[2];
                                *v104 = v91;
                                v90->__r_.__value_.__l.__size_ = 0;
                                v90->__r_.__value_.__r.__words[2] = 0;
                                v90->__r_.__value_.__r.__words[0] = 0;
                                MEMORY[0x259CA8EE0](a7, &v106, 313, v104);
                                if (SHIBYTE(v105) < 0)
                                {
                                  operator delete(v104[0]);
                                }

                                if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v92.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v100.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v103.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v102.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v101.__r_.__value_.__l.__data_);
                                }

                                if (v107)
                                {
                                  std::__shared_weak_count::__release_shared[abi:ne200100](v107);
                                }
                              }

                              if (v108)
                              {
                                v109 = v108;
                                operator delete(v108);
                              }
                            }

                            else
                            {
                              *(a7 + 8) = v111;
                              v111 = 0uLL;
                              *(a7 + 24) = v112;
                              *(a7 + 40) = v113;
                              v112 = 0uLL;
                              v113 = 0;
                              *a7 = MEMORY[0x277D24E58] + 16;
                              *(a7 + 48) = v114;
                            }

                            MEMORY[0x259CA8F00](&v110);
                          }

                          else
                          {
                            v80 = v117;
                            *(a7 + 8) = v116;
                            v116 = 0uLL;
                            *(a7 + 24) = v80;
                            *(a7 + 40) = v118;
                            v117 = 0uLL;
                            v118 = 0;
                            *a7 = MEMORY[0x277D24E58] + 16;
                            *(a7 + 48) = v119;
                          }

                          MEMORY[0x259CA8F00](&v115);
                        }

                        else
                        {
                          *(a7 + 8) = v121;
                          v121 = 0uLL;
                          *(a7 + 24) = v122;
                          *(a7 + 40) = v123;
                          v122 = 0uLL;
                          v123 = 0;
                          *a7 = MEMORY[0x277D24E58] + 16;
                          *(a7 + 48) = v124;
                        }

                        MEMORY[0x259CA8F00](&__p);
                        goto LABEL_221;
                      }

                      v66 = *(a1 + 8);
                      v110 = *a1;
                      *&v111 = v66;
                      if (v66)
                      {
                        atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v115, "Conv padding support constraints violated for Pz.");
                      MEMORY[0x259CA8EE0](&__p, &v110, 315, &v115);
                    }

LABEL_140:
                    if (SHIBYTE(v116) < 0)
                    {
                      operator delete(v115);
                    }

                    if (v111)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v111);
                    }

                    goto LABEL_144;
                  }

LABEL_225:
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }
              }

              else if (v56 > 8)
              {
                v58 = 0;
                goto LABEL_111;
              }

LABEL_226:
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            if (v23 <= 0x18)
            {
              goto LABEL_226;
            }

            v41 = 0;
            v42 = 0;
            v38 = *(v25 - 4);
            v40 = *(v25 - 3);
            v36 = *(a6 + 72);
            v37 = *(a6 + 80) - v36;
            v39 = 1;
          }

          if (v37 < 0xD)
          {
            goto LABEL_225;
          }

          v44 = *(v36 + v37 - 16);
          v43 = *(v36 + v37 - 12);
          v45 = 1;
          goto LABEL_78;
        }

        v32 = *(a1 + 8);
        v127 = *a1;
        v128 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v125, "Kernel must have group dimension equal to 'num_groups' or 1 if 'group_kernel_reuse' is set.");
        MEMORY[0x259CA8EE0](a7, &v127, 315, v125);
        if (v126 < 0)
        {
          operator delete(v125[0]);
        }

        v31 = v128;
        if (v128)
        {
LABEL_57:
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }
      }

      else
      {
        *(a7 + 8) = v134;
        v134 = 0uLL;
        *(a7 + 24) = v135;
        *(a7 + 40) = v136;
        v135 = 0uLL;
        v136 = 0;
        *a7 = MEMORY[0x277D24E58] + 16;
        *(a7 + 48) = v137;
      }

LABEL_221:
      MEMORY[0x259CA8F00](v133);
      return;
    }

    v20 = *(a1 + 8);
    v140 = *a1;
    v141 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v138, "kernel dimension must have spatial dims equal to number of spatial dimensions of input.");
    MEMORY[0x259CA8EE0](a7, &v140, 319, v138);
    if (v139 < 0)
    {
      operator delete(v138[0]);
    }

    v16 = v141;
    if (v141)
    {
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void sub_259915C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, std::__shared_weak_count *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  MEMORY[0x259CA8F00](v57 - 216);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::anonymous namespace::ValidateStrides(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v7 = *a5;
  v8 = a5[4];
  if (*a5 == 3)
  {
    v9 = a5[3];
    if (v8 == v9)
    {
      goto LABEL_84;
    }

    v10 = *v9;
  }

  else
  {
    v9 = a5[3];
    v10 = 1;
    if (v7 < 2)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_8;
    }
  }

  if ((v8 - v9) <= 4)
  {
    goto LABEL_84;
  }

  v11 = *(v8 - 2);
  v12 = 1;
LABEL_8:
  if (v8 == v9)
  {
    goto LABEL_84;
  }

  if (v10 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = -v10;
  }

  if ((v13 - 1) > 1 || (v11 >= 0 ? (v14 = v11) : (v14 = -v11), (v14 - 1) > 1 || ((v15 = *(v8 - 1), v15 >= 0) ? (v16 = v15) : (v16 = -v15), (v16 - 1) >= 2)))
  {
    v18 = a1[1];
    v53 = *a1;
    v54 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v51, "Strides on an individual conv must be positive 1 or 2. For larger strides, a decomposition must be used.");
    MEMORY[0x259CA8EE0](a6, &v53, 315, v51);
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    v19 = v54;
    if (v54)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v10 < 0 || v11 < 0 || v15 < 0)
  {
    v20 = a1[1];
    v49 = *a1;
    v50 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Negative strides are not implemented.");
    MEMORY[0x259CA8EE0](a6, &v49, 315, __p);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = v50;
    if (v50)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v7 == 3)
  {
    if ((a3[1] - *a3) <= 0x20)
    {
      goto LABEL_85;
    }

    *a3;
    v17 = *(a3[1] - 40);
  }

  else
  {
    v17 = 1;
  }

  v21 = *a3;
  v22 = a3[1] - *a3;
  if (v12)
  {
    if (v22 <= 0x18)
    {
      goto LABEL_85;
    }

    v23 = *(v21 + v22 - 32);
  }

  else
  {
    if (v22 <= 0x10)
    {
      goto LABEL_85;
    }

    v23 = 1;
  }

  v24 = *(v21 + v22 - 24);
  if (v7 == 3)
  {
    if ((a2[1] - *a2) <= 0x18)
    {
      goto LABEL_85;
    }

    *a2;
    v25 = *(a2[1] - 32);
  }

  else
  {
    v25 = 1;
  }

  v26 = *a2;
  v27 = a2[1];
  v29 = v27 - v26;
  if (v12)
  {
    if (v29 <= 0x10)
    {
      goto LABEL_85;
    }

    v30 = *(v27 - 24);
  }

  else
  {
    if (v29 <= 8)
    {
      goto LABEL_85;
    }

    v30 = 1;
  }

  v31 = *(v26 + v29 - 16);
  if (v7 == 3)
  {
    if ((a4[1] - *a4) <= 0x18)
    {
      goto LABEL_85;
    }

    *a4;
    v32 = *(a4[1] - 32) - 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = *a4;
  v34 = a4[1] - *a4;
  if (v12)
  {
    if (v34 > 0x10)
    {
      v35 = *(v33 + v34 - 24) - 1;
      goto LABEL_64;
    }

LABEL_85:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v34 <= 8)
  {
    goto LABEL_85;
  }

  v35 = 0;
LABEL_64:
  v36 = *(v33 + v34 - 16);
  if (v7 == 3)
  {
    v37 = a5[9];
    if (a5[10] == v37)
    {
      goto LABEL_84;
    }

    v38 = *v37;
    if (!v12)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v38 = 0;
    if (!v12)
    {
LABEL_67:
      v39 = a5[9];
      v40 = a5[10] - v39;
      if (v40 > 4)
      {
        v41 = 0;
        goto LABEL_72;
      }

LABEL_84:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  v39 = a5[9];
  v40 = a5[10] - v39;
  if (v40 <= 0xC)
  {
    goto LABEL_84;
  }

  v41 = *(a5[10] - 16);
LABEL_72:
  if (v31 > ((v24 + v16 - 1) & -v16) + (v36 - 1) * v16 - *(v39 + v40 - 8) || v30 > ((v23 + v14 - 1) & -v14) + v35 * v14 - v41 || v25 > ((v17 + v13 - 1) & -v13) + v32 * v13 - v38)
  {
    v42 = a1[1];
    v45 = *a1;
    v46 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v43, "Stride programming constraint 6.1.6.1.1 violated.");
    MEMORY[0x259CA8EE0](a6, &v45, 315, v43);
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    v19 = v46;
    if (!v46)
    {
      return;
    }

LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    return;
  }

  MIL::ValidationResult::ValidationResult(a6);
}

void sub_259916344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::InferOutputShape(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = v5 - *a1;
  if (v5 == *a1)
  {
    goto LABEL_42;
  }

  v9 = v7 >> 3;
  v10 = *v6;
  v11 = *a3;
  if (*a3 == 3)
  {
    if (v9 > 3 && a2[1] - *a2 > 0x20uLL)
    {
      if ((*(a3 + 18) & 1) == 0)
      {
        v12 = *(a3 + 24);
        if (*(a3 + 32) == v12)
        {
          goto LABEL_41;
        }

        v13 = v6 + v7;
        v15 = *(v13 - 4);
        v14 = *(v13 - 3);
        v16 = *(v13 - 2);
        *a2;
        v17 = a2[1];
        v18 = *(v17 - 40);
        v19 = *(v17 - 32);
        v20 = *(v17 - 24);
        v21 = *(v17 - 8);
        LODWORD(v22) = *v12;
        if (*v12 >= 0)
        {
          v22 = v22;
        }

        else
        {
          v22 = -v22;
        }

LABEL_15:
        v25 = *(a3 + 24);
        v26 = *(a3 + 32);
        if ((v26 - v25) > 4)
        {
          v27 = *(a3 + 32);
          LODWORD(v28) = *(v26 - 8);
          v28 = (v28 & 0x80000000) == 0 ? v28 : -v28;
          if (v26 != v25)
          {
            v29 = *(v26 - 4);
            if (v29 < 0)
            {
              v29 = -v29;
            }

            if (v11 == 3)
            {
              v30 = *(a3 + 72);
              if (*(a3 + 80) - v30 <= 4uLL)
              {
                goto LABEL_41;
              }

              v31 = v30[1] + *v30;
            }

            else
            {
              v31 = 0;
            }

            v32 = *(a3 + 72);
            v33 = *(a3 + 80) - v32;
            if (v33 > 0xC)
            {
              v34 = *(*(a3 + 80) - 12) + *(*(a3 + 80) - 16);
              v35 = v15 - v18;
              v36 = v14 - v19;
              goto LABEL_36;
            }
          }
        }

LABEL_41:
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11 >= 2)
  {
    if (v9 > 2 && a2[1] - *a2 > 0x18uLL)
    {
      if ((*(a3 + 18) & 1) == 0)
      {
        v23 = v6 + v7;
        v14 = *(v23 - 3);
        v16 = *(v23 - 2);
        *a2;
        v24 = a2[1];
        v19 = *(v24 - 32);
        v20 = *(v24 - 24);
        v15 = 1;
        v18 = 1;
        v22 = 1;
        v21 = *(v24 - 8);
        goto LABEL_15;
      }

LABEL_43:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Not implemented. Shape inference for conv transpose.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_42:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 <= 1 || a2[1] - *a2 <= 0x10uLL)
  {
    goto LABEL_42;
  }

  if (*(a3 + 18) == 1)
  {
    goto LABEL_43;
  }

  v37 = *(a3 + 32);
  if (v37 == *(a3 + 24))
  {
    goto LABEL_41;
  }

  v29 = *(v37 - 4);
  if (v29 < 0)
  {
    v29 = -v29;
  }

  v32 = *(a3 + 72);
  v33 = *(a3 + 80) - v32;
  if (v33 <= 4)
  {
    goto LABEL_41;
  }

  v34 = 0;
  v31 = 0;
  v35 = 0;
  v36 = 0;
  v16 = *(v6 + v7 - 16);
  *a2;
  v38 = a2[1];
  v20 = *(v38 - 24);
  v21 = *(v38 - 8);
  v22 = 1;
  v28 = 1;
LABEL_36:
  v39 = *(v32 + v33 - 4) + *(v32 + v33 - 8);
  v46 = v10;
  v45 = (v35 + v31 + v22) / v22;
  v44 = (v36 + v34 + v28) / v28;
  v42 = *(a3 + 8) * v21;
  v43 = (v16 - v20 + v29 + v39) / v29;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v46);
  v40 = *a3;
  if (*a3 == 3)
  {
    std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v45);
    v40 = *a3;
  }

  if (v40 >= 2)
  {
    std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v44);
  }

  std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v43);
  std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v42);
}

void ANEMachineIR::Validators::anonymous namespace::CheckKernelSizeLimits(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  if (*a4 == 3)
  {
    v7 = *a2;
    v8 = a2[1] - *a2;
    if (v8 > 0x20)
    {
      v9 = *(v7 + v8 - 40) > 0x10uLL;
      goto LABEL_7;
    }

LABEL_57:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *a2;
  v8 = a2[1] - *a2;
  if (*a4 < 2uLL)
  {
    if (v8 > 0x10)
    {
      v14 = *(v7 + v8 - 24);
      v15 = 29;
      if (a3 == 4)
      {
        v15 = 13;
      }

      if (v14 <= v15)
      {
LABEL_35:
        v18 = *(a4 + 96);
        v19 = *(a4 + 104);
        if (v18 == 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v18)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        if (v19 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v19)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (ANEMachineIR::Validators::KernelDataBytesPerNE(a2, a3, 0, 0, 1, v21, v23, *(a4 + 17)) <= 0x10000)
        {

          MIL::ValidationResult::ValidationResult(a5);
        }

        else
        {
          v24 = a1[1];
          v27 = *a1;
          v28 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v25, "KMEM limits exceeded by kernel data.");
          MEMORY[0x259CA8EE0](a5, &v27, 318, v25);
          if (v26 < 0)
          {
            operator delete(v25[0]);
          }

          v13 = v28;
          if (v28)
          {
            goto LABEL_26;
          }
        }

        return;
      }

LABEL_21:
      v16 = a1[1];
      v39 = *a1;
      v40 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v37, "Maximum kernel width exceeded.");
      MEMORY[0x259CA8EE0](a5, &v39, 315, v37);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v13 = v40;
      if (v40)
      {
        goto LABEL_26;
      }

      return;
    }

    goto LABEL_57;
  }

  if (v8 <= 0x18)
  {
    goto LABEL_57;
  }

  v9 = 0;
LABEL_7:
  v10 = v7 + v8;
  v11 = 29;
  if (a3 == 4)
  {
    v11 = 13;
  }

  if (*(v10 - 24) > v11)
  {
    goto LABEL_21;
  }

  if (*(v10 - 32) >= 0x1EuLL)
  {
    v12 = a1[1];
    v35 = *a1;
    v36 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Maximum kernel height exceeded.");
    MEMORY[0x259CA8EE0](a5, &v35, 315, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v36;
    if (!v36)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    return;
  }

  if (!v9)
  {
    goto LABEL_35;
  }

  v17 = a1[1];
  v31 = *a1;
  v32 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v29, "Maximum kernel depth exceeded.");
  MEMORY[0x259CA8EE0](a5, &v31, 315, v29);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v13 = v32;
  if (v32)
  {
    goto LABEL_26;
  }
}

void sub_25991696C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateChannelVectorShape(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, MIL::ValidationResult *a6@<X8>)
{
  v11 = (*(*a2 + 96))(a2);
  if (v11[1] - *v11 != 8)
  {
    v14 = a1[1];
    v28 = *a1;
    v29 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Expected a channel vector for parameter shape.");
    MEMORY[0x259CA8EE0](a6, &v28, 315, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v29;
    if (!v29)
    {
      return;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    return;
  }

  v12 = (*(***v11 + 16))();
  if (!v12)
  {
    v16 = a1[1];
    v24 = *a1;
    v25 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "Channel vector shape must be static.");
    MEMORY[0x259CA8EE0](a6, &v24, 315, v22);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v15 = v25;
    if (!v25)
    {
      return;
    }

    goto LABEL_15;
  }

  if (a5)
  {
    v13 = a3 / a4;
  }

  else
  {
    v13 = a3;
  }

  if ((*(*v12 + 48))(v12) == v13)
  {

    MIL::ValidationResult::ValidationResult(a6);
    return;
  }

  v17 = a1[1];
  v20 = *a1;
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "Channel does not match number of output filters.");
  MEMORY[0x259CA8EE0](a6, &v20, 315, v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v15 = v21;
  if (v21)
  {
    goto LABEL_15;
  }
}

void sub_259916C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ANEMachineIR::Validators::KernelDataBytesPerNE(uint64_t *a1, int a2, unsigned int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = (v9 >> 3) - 3;
  if (v9 >> 3 == 6)
  {
    v11 = *(v8 + v9 - 40);
LABEL_6:
    v12 = *(v8 + v9 - 32);
    goto LABEL_8;
  }

  if (v10 >= 2)
  {
    if ((v9 >> 3) <= 3)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = 1;
    goto LABEL_6;
  }

  v12 = 1;
  v11 = 1;
LABEL_8:
  v13 = *(v8 + 8 * v10);
  v14 = *(v8 + v9 - 16);
  v15 = 128;
  if (!a8)
  {
    v15 = 0;
  }

  v16 = v15 + vcvtd_n_u64_f64(ceil(vcvtd_n_f64_u64((2 << (a3 - 1)) << (a2 == 4), 6uLL)), 6uLL);
  if (a3)
  {
    v15 = v16;
  }

  if (a6 == 1)
  {
    if (a4)
    {
      v17 = v15 + 2;
      if (a7 != 2)
      {
        v18 = a7 == 1;
        v15 += 4;
LABEL_23:
        if (!v18)
        {
          v15 = v17;
        }

        v19 = 0;
        goto LABEL_42;
      }

      v19 = 0;
      v15 += 2;
LABEL_39:
      v19 += 2 * a5;
      goto LABEL_42;
    }

    v17 = v15 + 64;
    if (a7 != 2)
    {
      v18 = a7 == 1;
      v15 += 128;
      goto LABEL_23;
    }

    v19 = 0;
    v15 += 64;
LABEL_41:
    v19 += vcvtd_n_u64_f64(ceil(vcvtd_n_f64_u64(2 * a5, 6uLL)), 6uLL);
    goto LABEL_42;
  }

  if (a7 != 1)
  {
    if (a6 == 2)
    {
      if (a4)
      {
        v19 = 2 * a5;
        if (a7 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (a7 == 2)
    {
      v19 = 0;
      if (a4)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

LABEL_37:
    v19 = 0;
    goto LABEL_42;
  }

  if ((a4 & 1) == 0)
  {
    v15 += 64;
    if (a6 == 2)
    {
LABEL_32:
      v19 = vcvtd_n_u64_f64(ceil(vcvtd_n_f64_u64(2 * a5, 6uLL)), 6uLL);
      if (a7 != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v15 += 2;
  v19 = 2 * a5;
  if (a6 != 2)
  {
    v19 = 0;
  }

LABEL_42:
  v20 = 8;
  if (a2 == 4)
  {
    v20 = 16;
  }

  if (a3)
  {
    v20 = a3;
  }

  return v15 + v19 + vcvtpd_u64_f64(vcvtd_n_f64_u64(v20 * a5 * v11 * v12 * v13 * v14, 3uLL));
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t ANEMachineIR::Validators::ParseConvParameterValues@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v137, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v13 = LocationPtr[1];
  v135 = *LocationPtr;
  v136 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v126, "x");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ne_conv");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v135, v11, &v126, &__p, &v137);
  if (SHIBYTE(v122) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  if (v136)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
  }

  if ((MIL::ValidationResult::IsGood(&v137) & 1) == 0)
  {
    *(a5 + 8) = v138;
    v138 = 0uLL;
    *(a5 + 24) = v139;
    *(a5 + 40) = v140;
    v139 = 0uLL;
    v140 = 0;
    *a5 = MEMORY[0x277D24E58] + 16;
    *(a5 + 48) = v141;
    return MEMORY[0x259CA8F00](&v137);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v11, v14, &v126);
  v15 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v15;
    operator delete(v15);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v16 = v126;
  *a2 = v126;
  v115 = v127;
  *(a2 + 8) = v127;
  v17 = (*(*a1 + 176))(a1);
  if (*(v17 + 8) == *v17)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v17);
  v19 = MIL::IRValueType::AsTensorType(Type);
  ANEMachineIR::Utils::GetStaticTensorShape(v19, v20, &v126);
  v21 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v21;
    operator delete(v21);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v22 = v126;
  *a3 = v126;
  v23 = v127;
  *(a3 + 8) = v127;
  if (v23 - v22 != *(a2 + 8) - *a2)
  {
    v28 = MIL::IRObject::GetLocationPtr(a1);
    v29 = v28[1];
    v133 = *v28;
    v134 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v131, "Output should have the same rank as x parameter");
    MEMORY[0x259CA8EE0](a5, &v133, 315, v131);
    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    if (v134)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v134);
    }

    return MEMORY[0x259CA8F00](&v137);
  }

  if (v23 == v22)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = *(v23 - 1);
  std::string::basic_string[abi:ne200100]<0>(&v126, "group_kernel_reuse");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v26 = MEMORY[0x259CA93F0]()) != 0)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  std::string::basic_string[abi:ne200100]<0>(&v126, "num_groups");
  v30 = MIL::IROperation::TryGetParameterValue();
  if (v30 && (*(*v30 + 40))(v30) && (v31 = MEMORY[0x259CA9420]()) != 0)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 1;
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  std::string::basic_string[abi:ne200100]<0>(&v126, "bias");
  v33 = MIL::IROperation::TryGetParameterValue();
  v34 = v33;
  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
    if (!v34)
    {
      goto LABEL_49;
    }
  }

  else if (!v33)
  {
    goto LABEL_49;
  }

  v35 = MIL::IRValue::AsTensor(v34);
  if (MEMORY[0x259CA93C0](v35))
  {
    v34 = 1;
  }

  else
  {
    v36 = MIL::IRObject::GetLocationPtr(a1);
    v37 = (*(*v34 + 32))(v34);
    v38 = MIL::IRValueType::AsTensorType(v37);
    ANEMachineIR::Validators::ValidateChannelVectorShape(v36, v38, v24, v32, v27 & 1, a5);
    if ((MIL::ValidationResult::IsGood(a5) & 1) == 0)
    {
      return MEMORY[0x259CA8F00](&v137);
    }

    v39 = (*(*v34 + 32))(v34);
    v40 = MIL::IRValueType::AsTensorType(v39);
    v41 = (*(*v40 + 96))(v40);
    if (*(v41 + 8) == *v41)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v42 = MIL::IRDimension::AsConstant(**v41);
    v34 = (*(*v42 + 48))(v42);
    MEMORY[0x259CA8F00](a5);
  }

LABEL_49:
  std::string::basic_string[abi:ne200100]<0>(&v126, "post_scale");
  v43 = MIL::IROperation::TryGetParameterValue();
  v44 = v43;
  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
    if (v44)
    {
      goto LABEL_51;
    }

LABEL_54:
    v46 = 0;
    goto LABEL_58;
  }

  if (!v43)
  {
    goto LABEL_54;
  }

LABEL_51:
  v45 = MIL::IRValue::AsTensor(v44);
  if (MEMORY[0x259CA93C0](v45))
  {
    v46 = 1;
    goto LABEL_58;
  }

  v47 = MIL::IRObject::GetLocationPtr(a1);
  v48 = (*(*v44 + 32))(v44);
  v49 = MIL::IRValueType::AsTensorType(v48);
  ANEMachineIR::Validators::ValidateChannelVectorShape(v47, v49, v24, v32, v27 & 1, a5);
  if (MIL::ValidationResult::IsGood(a5))
  {
    v50 = (*(*v44 + 32))(v44);
    v51 = MIL::IRValueType::AsTensorType(v50);
    v52 = (*(*v51 + 96))(v51);
    if (*(v52 + 8) == *v52)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v53 = MIL::IRDimension::AsConstant(**v52);
    v46 = (*(*v53 + 48))(v53);
    MEMORY[0x259CA8F00](a5);
LABEL_58:
    std::string::basic_string[abi:ne200100]<0>(&v126, "transposed");
    v54 = MIL::IROperation::TryGetParameterValue();
    if (v54 && (*(*v54 + 40))(v54) && (v55 = MEMORY[0x259CA93F0]()) != 0)
    {
      v56 = *v55;
    }

    else
    {
      v56 = 0;
    }

    v57 = ((v115 - v16) >> 3) - 2;
    v58 = v27 & 1;
    if (SHIBYTE(v127) < 0)
    {
      operator delete(v126);
    }

    *a4 = v57;
    *(a4 + 8) = v32;
    *(a4 + 16) = v58;
    *(a4 + 17) = 0;
    *(a4 + 18) = v56 & 1;
    *(a4 + 96) = v34;
    *(a4 + 104) = v46;
    std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
    v59 = MIL::IROperation::GetParameterType();
    v60 = MIL::IRValueType::AsTensorType(v59);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(__p);
    }

    v61 = (*(*v60 + 96))(v60);
    if (v61[1] == *v61)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v62 = (*(***v61 + 16))();
    if (v62)
    {
      if ((*(*v62 + 48))(v62) == v57)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
        v63 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v63);
        Data = MIL::IRTensorValue::GetDataView<int>();
        v66 = v65;
        v116 = Data;
        *&v117 = v65;
        if (SHIBYTE(v122) < 0)
        {
          operator delete(__p);
        }

        *(a4 + 32) = *(a4 + 24);
        if (v66)
        {
          v67 = 0;
          do
          {
            v68 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v116, v67);
            v70 = *(a4 + 32);
            v69 = *(a4 + 40);
            if (v70 >= v69)
            {
              v72 = *(a4 + 24);
              v73 = v70 - v72;
              v74 = (v70 - v72) >> 2;
              v75 = v74 + 1;
              if ((v74 + 1) >> 62)
              {
                std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
              }

              v76 = v69 - v72;
              if (v76 >> 1 > v75)
              {
                v75 = v76 >> 1;
              }

              if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v77 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v77 = v75;
              }

              if (v77)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4 + 24, v77);
              }

              v78 = v74;
              v79 = (4 * v74);
              v80 = &v79[-v78];
              *v79 = *v68;
              v71 = v79 + 1;
              memcpy(v80, v72, v73);
              v81 = *(a4 + 24);
              *(a4 + 24) = v80;
              *(a4 + 32) = v71;
              *(a4 + 40) = 0;
              if (v81)
              {
                operator delete(v81);
              }
            }

            else
            {
              *v70 = *v68;
              v71 = v70 + 4;
            }

            *(a4 + 32) = v71;
            ++v67;
          }

          while (v117 > v67);
        }

        MIL::ValidationResult::ValidationResult(&v126);
        goto LABEL_98;
      }

      v84 = MIL::IRObject::GetLocationPtr(a1);
      v85 = *(v84 + 8);
      v116 = *v84;
      *&v117 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "'strides' vector must have equal length to the number of spatial dimensions.");
      MEMORY[0x259CA8EE0](&v126, &v116, 315, &__p);
    }

    else
    {
      v82 = MIL::IRObject::GetLocationPtr(a1);
      v83 = *(v82 + 8);
      v116 = *v82;
      *&v117 = v83;
      if (v83)
      {
        atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "'strides' parameter must have static shape.");
      MEMORY[0x259CA8EE0](&v126, &v116, 302, &__p);
    }

    if (SHIBYTE(v122) < 0)
    {
      operator delete(__p);
    }

    if (v117)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }

LABEL_98:
    if ((MIL::ValidationResult::IsGood(&v126) & 1) == 0)
    {
      *(a5 + 8) = v127;
      v127 = 0uLL;
      *(a5 + 24) = v128;
      *(a5 + 40) = v129;
      v128 = 0uLL;
      v129 = 0;
      *a5 = MEMORY[0x277D24E58] + 16;
      *(a5 + 48) = v130;
LABEL_159:
      MEMORY[0x259CA8F00](&v126);
      return MEMORY[0x259CA8F00](&v137);
    }

    *(a4 + 80) = *(a4 + 72);
    v86 = 2 * v57;
    if ((v115 - v16) >> 3 != 2)
    {
      v87 = 2 * v57;
      do
      {
        LODWORD(v116) = 0;
        std::vector<int>::push_back[abi:ne200100]((a4 + 72), &v116);
        --v87;
      }

      while (v87);
    }

    std::string::basic_string[abi:ne200100]<0>(&v116, "pad");
    v88 = MIL::IROperation::TryGetParameterType();
    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116);
    }

    if (!v88)
    {
      goto LABEL_113;
    }

    v89 = MIL::IRValueType::AsTensorType(v88);
    v90 = (*(*v89 + 96))(v89);
    if (v90[1] == *v90)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v91 = (*(***v90 + 16))();
    if (v91)
    {
      if ((*(*v91 + 48))(v91) == v86)
      {
        std::string::basic_string[abi:ne200100]<0>(&v116, "pad");
        v92 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v92);
        v144 = MIL::IRTensorValue::GetDataView<int>();
        v145 = v93;
        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if ((v115 - v16) >> 3 != 2)
        {
          v94 = 0;
          do
          {
            *(*(a4 + 72) + 4 * v94) = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v144, v94);
            ++v94;
          }

          while (v86 != v94);
        }

LABEL_113:
        MIL::ValidationResult::ValidationResult(&__p);
        goto LABEL_126;
      }

      v97 = MIL::IRObject::GetLocationPtr(a1);
      v98 = *(v97 + 8);
      v144 = *v97;
      v145 = v98;
      if (v98)
      {
        atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v116, "'pad' vector must have equal length to double the number of spatial dimensions.");
      MEMORY[0x259CA8EE0](&__p, &v144, 315, &v116);
    }

    else
    {
      v95 = MIL::IRObject::GetLocationPtr(a1);
      v96 = *(v95 + 8);
      v144 = *v95;
      v145 = v96;
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v116, "'pad' parameter must have static shape.");
      MEMORY[0x259CA8EE0](&__p, &v144, 302, &v116);
    }

    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116);
    }

    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

LABEL_126:
    if ((MIL::ValidationResult::IsGood(&__p) & 1) == 0)
    {
      *(a5 + 8) = v122;
      v122 = 0uLL;
      *(a5 + 24) = v123;
      *(a5 + 40) = v124;
      v123 = 0uLL;
      v124 = 0;
      *a5 = MEMORY[0x277D24E58] + 16;
      *(a5 + 48) = v125;
LABEL_158:
      MEMORY[0x259CA8F00](&__p);
      goto LABEL_159;
    }

    v100 = *(a4 + 48);
    v99 = a4 + 48;
    *(v99 + 8) = v100;
    if ((v115 - v16) >> 3 != 2)
    {
      v101 = ((v115 - v16) >> 3) - 2;
      do
      {
        LODWORD(v144) = 1;
        std::vector<int>::push_back[abi:ne200100](v99, &v144);
        --v101;
      }

      while (v101);
    }

    std::string::basic_string[abi:ne200100]<0>(&v144, "dilations");
    v102 = MIL::IROperation::TryGetParameterType();
    if (v146 < 0)
    {
      operator delete(v144);
    }

    if (!v102)
    {
      goto LABEL_141;
    }

    v103 = MIL::IRValueType::AsTensorType(v102);
    v104 = (*(*v103 + 96))(v103);
    if (v104[1] == *v104)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v105 = (*(***v104 + 16))();
    if (v105)
    {
      if ((*(*v105 + 48))(v105) == v57)
      {
        std::string::basic_string[abi:ne200100]<0>(&v144, "dilations");
        v106 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v106);
        v142 = MIL::IRTensorValue::GetDataView<int>();
        v143 = v107;
        if (v146 < 0)
        {
          operator delete(v144);
        }

        if ((v115 - v16) >> 3 != 2)
        {
          v108 = 0;
          do
          {
            *(*v99 + 4 * v108) = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v142, v108);
            ++v108;
          }

          while (v57 != v108);
        }

LABEL_141:
        MIL::ValidationResult::ValidationResult(&v116);
LABEL_154:
        if (MIL::ValidationResult::IsGood(&v116))
        {
          MIL::ValidationResult::ValidationResult(a5);
        }

        else
        {
          v113 = v118;
          *(a5 + 8) = v117;
          v117 = 0uLL;
          *(a5 + 24) = v113;
          *(a5 + 40) = v119;
          v118 = 0uLL;
          v119 = 0;
          *a5 = MEMORY[0x277D24E58] + 16;
          *(a5 + 48) = v120;
        }

        MEMORY[0x259CA8F00](&v116);
        goto LABEL_158;
      }

      v111 = MIL::IRObject::GetLocationPtr(a1);
      v112 = v111[1];
      v142 = *v111;
      v143 = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v144, "'dilations' vector must have equal length to the number of spatial dimensions.");
      MEMORY[0x259CA8EE0](&v116, &v142, 315, &v144);
    }

    else
    {
      v109 = MIL::IRObject::GetLocationPtr(a1);
      v110 = v109[1];
      v142 = *v109;
      v143 = v110;
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v144, "'dilations' parameter must have static shape.");
      MEMORY[0x259CA8EE0](&v116, &v142, 302, &v144);
    }

    if (v146 < 0)
    {
      operator delete(v144);
    }

    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    goto LABEL_154;
  }

  return MEMORY[0x259CA8F00](&v137);
}

void sub_259917E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49)
{
  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  v51 = *(v49 - 120);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  MEMORY[0x259CA8F00](&a22);
  MEMORY[0x259CA8F00](&a32);
  MEMORY[0x259CA8F00](v49 - 184);
  _Unwind_Resume(a1);
}

uint64_t ANEMachineIR::Validators::ValidateNeConv@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v85 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v7 = LocationPtr[1];
  v143 = *LocationPtr;
  v144 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  std::string::basic_string[abi:ne200100]<0>(&v138, "ne_conv");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v143, v5, __p, &v138, v145);
  if (SHIBYTE(v139) < 0)
  {
    operator delete(v138);
  }

  if (v85 < 0)
  {
    operator delete(__p[0]);
  }

  if (v144)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v144);
  }

  if (MIL::ValidationResult::IsGood(v145))
  {
    v8 = (*(*a1 + 176))(a1);
    if (*(v8 + 8) == *v8)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v8);
    v10 = MIL::IRValueType::AsTensorType(Type);
    v11 = MIL::IRObject::GetLocationPtr(a1);
    v12 = v11[1];
    v136 = *v11;
    v137 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "output");
    std::string::basic_string[abi:ne200100]<0>(&v79, "ne_conv");
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v136, v10, __p, &v79, &v138);
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    if (v85 < 0)
    {
      operator delete(__p[0]);
    }

    if (v137)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
    }

    if ((MIL::ValidationResult::IsGood(&v138) & 1) == 0)
    {
      *(a2 + 8) = v139;
      v139 = 0uLL;
      *(a2 + 24) = v140;
      *(a2 + 40) = v141;
      v140 = 0uLL;
      v141 = 0;
      *a2 = MEMORY[0x277D24E58] + 16;
      *(a2 + 48) = v142;
LABEL_89:
      MEMORY[0x259CA8F00](&v138);
      return MEMORY[0x259CA8F00](v145);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "dense_kernel");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (v85 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "alternative_format_kernel_coefficients");
    v14 = MIL::IROperation::TryGetParameterValue();
    if (v85 < 0)
    {
      operator delete(__p[0]);
    }

    if (!(ParameterValue | v14))
    {
      v15 = MIL::IRObject::GetLocationPtr(a1);
      v16 = v15[1];
      v134 = *v15;
      v135 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v132, "Must specify one of 'dense_kernel' and 'alternative_format_kernel_coefficients'");
      MEMORY[0x259CA8EE0](a2, &v134, 319, v132);
      if (v133 < 0)
      {
        operator delete(v132[0]);
      }

      v17 = v135;
      if (!v135)
      {
        goto LABEL_89;
      }

      goto LABEL_42;
    }

    if (ParameterValue && v14)
    {
      v19 = MIL::IRObject::GetLocationPtr(a1);
      v20 = v19[1];
      v130 = *v19;
      v131 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v128, "Cannot specify both of 'dense_kernel' and 'alternative_format_kernel_coefficients'");
      MEMORY[0x259CA8EE0](a2, &v130, 319, v128);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v17 = v131;
      if (!v131)
      {
        goto LABEL_89;
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      goto LABEL_89;
    }

    v126 = 0;
    v125 = 0;
    v127 = 0;
    if (ParameterValue)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "sparse_mask");
      v21 = MIL::IROperation::TryGetParameterValue();
      if (v85 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21)
      {
        v22 = MIL::IRObject::GetLocationPtr(a1);
        v23 = v22[1];
        v123 = *v22;
        v124 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v121, "'sparse_mask' is incompatible with 'dense_kernel'");
        MEMORY[0x259CA8EE0](a2, &v123, 319, v121);
        if (v122 < 0)
        {
          operator delete(v121[0]);
        }

        v24 = v124;
        if (!v124)
        {
          goto LABEL_87;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "sparse_num_nonzero");
        v28 = MIL::IROperation::TryGetParameterValue();
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }

        if (v28)
        {
          v29 = MIL::IRObject::GetLocationPtr(a1);
          v30 = v29[1];
          v119 = *v29;
          v120 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v117, "'sparse_num_nonzero' is incompatible with 'dense_kernel'");
          MEMORY[0x259CA8EE0](a2, &v119, 319, v117);
          if (v118 < 0)
          {
            operator delete(v117[0]);
          }

          v24 = v120;
          if (!v120)
          {
            goto LABEL_87;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "sparse_num_nonzero_per_filter");
          v31 = MIL::IROperation::TryGetParameterValue();
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          if (v31)
          {
            v32 = MIL::IRObject::GetLocationPtr(a1);
            v33 = v32[1];
            v115 = *v32;
            v116 = v33;
            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v113, "'sparse_num_nonzero_per_filter' is incompatible with 'dense_kernel'");
            MEMORY[0x259CA8EE0](a2, &v115, 319, v113);
            if (v114 < 0)
            {
              operator delete(v113[0]);
            }

            v24 = v116;
            if (!v116)
            {
              goto LABEL_87;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "palette_table");
            v34 = MIL::IROperation::TryGetParameterValue();
            if (v85 < 0)
            {
              operator delete(__p[0]);
            }

            if (!v34)
            {
              v38 = (*(*ParameterValue + 32))(ParameterValue);
              v39 = MIL::IRValueType::AsTensorType(v38);
              v40 = (*(*v39 + 96))(v39);
              v41 = *v40;
              v42 = v40[1];
              while (1)
              {
                if (v41 == v42)
                {
                  v44 = (*(*ParameterValue + 32))(ParameterValue);
                  v45 = MIL::IRValueType::AsTensorType(v44);
                  v25 = (*(*v45 + 88))(v45);
                  if (v14)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_96;
                }

                v43 = (*(**v41 + 16))();
                if (!v43)
                {
                  break;
                }

                __p[0] = (*(*v43 + 48))(v43);
                std::vector<unsigned long long>::emplace_back<unsigned long long>(&v125, __p);
                v41 += 8;
              }

              v58 = MIL::IRObject::GetLocationPtr(a1);
              v59 = v58[1];
              v107 = *v58;
              v108 = v59;
              if (v59)
              {
                atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(v105, "kernel shape must be static.");
              MEMORY[0x259CA8EE0](a2, &v107, 319, v105);
              if (v106 < 0)
              {
                operator delete(v105[0]);
              }

              v24 = v108;
              if (v108)
              {
                goto LABEL_86;
              }

              goto LABEL_87;
            }

            v35 = MIL::IRObject::GetLocationPtr(a1);
            v36 = v35[1];
            v111 = *v35;
            v112 = v36;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v109, "'palette_table' is incompatible with 'dense_kernel'");
            MEMORY[0x259CA8EE0](a2, &v111, 319, v109);
            if (v110 < 0)
            {
              operator delete(v109[0]);
            }

            v24 = v112;
            if (!v112)
            {
LABEL_87:
              if (v125)
              {
                v126 = v125;
                operator delete(v125);
              }

              goto LABEL_89;
            }
          }
        }
      }
    }

    else
    {
      v25 = 4;
      if (!v14)
      {
LABEL_96:
        v100 = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, "post_right_shift");
        MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v100, &v100 + 1, a2);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }

        if (!MIL::ValidationResult::IsGood(a2))
        {
          goto LABEL_87;
        }

        MEMORY[0x259CA8F00](a2);
        if (v100 == 1)
        {
          v46 = MIL::IRObject::GetLocationPtr(a1);
          v47 = v46[1];
          v98 = *v46;
          v99 = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ANEMachineIR::Validators::ValidatePostRightShiftRange(a2);
          if (v99)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v99);
          }

          if (!MIL::ValidationResult::IsGood(a2))
          {
            goto LABEL_87;
          }

          MEMORY[0x259CA8F00](a2);
        }

        v97 = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, "acc_left_shift");
        MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v97, &v97 + 1, a2);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }

        if (MIL::ValidationResult::IsGood(a2))
        {
          MEMORY[0x259CA8F00](a2);
          v96 = 0;
          std::string::basic_string[abi:ne200100]<0>(__p, "acc_bias_shift");
          MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v96, &v96 + 1, a2);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          if (MIL::ValidationResult::IsGood(a2))
          {
            MEMORY[0x259CA8F00](a2);
            v93 = 0;
            v94 = 0;
            v95 = 0;
            memset(v92, 0, sizeof(v92));
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            ANEMachineIR::Validators::ParseConvParameterValues(a1, v92, &v93, __p, &v79);
            if (MIL::ValidationResult::IsGood(&v79))
            {
              v48 = (*(*v5 + 88))(v5) == 4;
              v49 = ANEMachineIR::Validators::BinaryPointFormatOffsets((v25 == 4), v48);
              if (!v91)
              {
                goto LABEL_121;
              }

              v50 = v49;
              std::string::basic_string[abi:ne200100]<0>(&v66, "bias");
              v51 = MIL::IROperation::GetParameterValue();
              MIL::IRValue::AsTensor(v51);
              v53 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              if (SHIBYTE(v67) < 0)
              {
                v54 = v52;
                operator delete(v66);
                v52 = v54;
              }

              if (v52)
              {
                v55 = 2 * v52;
                while (1)
                {
                  v56 = *v53;
                  if (!ANEMachineIR::Validators::NeuralEngineAccumulatorInitLegal(*v53, SHIBYTE(v96), SHIBYTE(v97), v50))
                  {
                    v61 = MIL::IRObject::GetLocationPtr(a1);
                    v62 = v61[1];
                    v77 = *v61;
                    v78 = v62;
                    if (v62)
                    {
                      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    std::string::basic_string[abi:ne200100]<0>(v75, "Accumulator initialization out of range.");
                    MEMORY[0x259CA8EE0](a2, &v77, 315, v75);
                    if (v76 < 0)
                    {
                      operator delete(v75[0]);
                    }

                    v63 = v78;
                    if (v78)
                    {
                      goto LABEL_147;
                    }

                    goto LABEL_132;
                  }

                  if (!ANEMachineIR::Validators::NeuralEngineBiasShifterExponentLegal(v56, SHIBYTE(v96), SHIBYTE(v97), SHIBYTE(v50)))
                  {
                    break;
                  }

                  ++v53;
                  v55 -= 2;
                  if (!v55)
                  {
                    goto LABEL_121;
                  }
                }

                v64 = MIL::IRObject::GetLocationPtr(a1);
                v65 = v64[1];
                v73 = *v64;
                v74 = v65;
                if (v65)
                {
                  atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(v71, "Illegal bias shift exponent.");
                MEMORY[0x259CA8EE0](a2, &v73, 315, v71);
                if (v72 < 0)
                {
                  operator delete(v71[0]);
                }

                v63 = v74;
                if (v74)
                {
LABEL_147:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v63);
                }
              }

              else
              {
LABEL_121:
                v57 = MIL::IRObject::GetLocationPtr(a1);
                ANEMachineIR::Validators::ValidateConvParameters(v57, v92, &v125, v25, &v93, __p, &v66);
                if (MIL::ValidationResult::IsGood(&v66))
                {
                  MIL::ValidationResult::ValidationResult(a2);
                }

                else
                {
                  v60 = v68;
                  *(a2 + 8) = v67;
                  v67 = 0uLL;
                  *(a2 + 24) = v60;
                  *(a2 + 40) = v69;
                  v68 = 0uLL;
                  v69 = 0;
                  *a2 = MEMORY[0x277D24E58] + 16;
                  *(a2 + 48) = v70;
                }

                MEMORY[0x259CA8F00](&v66);
              }
            }

            else
            {
              *(a2 + 8) = v80;
              v80 = 0uLL;
              *(a2 + 24) = v81;
              *(a2 + 40) = v82;
              v81 = 0uLL;
              v82 = 0;
              *a2 = MEMORY[0x277D24E58] + 16;
              *(a2 + 48) = v83;
            }

LABEL_132:
            MEMORY[0x259CA8F00](&v79);
            ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(__p);
            if (v92[0])
            {
              operator delete(v92[0]);
            }

            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }
          }
        }

        goto LABEL_87;
      }

LABEL_54:
      v26 = MIL::IRObject::GetLocationPtr(a1);
      v27 = v26[1];
      v103 = *v26;
      v104 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v101, "Alternative kernel (to dense) representations not yet implemented in MIL<aneflow>.");
      MEMORY[0x259CA8EE0](a2, &v103, 309, v101);
      if (v102 < 0)
      {
        operator delete(v101[0]);
      }

      v24 = v104;
      if (!v104)
      {
        goto LABEL_87;
      }
    }

LABEL_86:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    goto LABEL_87;
  }

  v18 = v147;
  *(a2 + 8) = v146;
  v146 = 0uLL;
  *(a2 + 24) = v18;
  *(a2 + 40) = v148;
  v147 = 0uLL;
  v148 = 0;
  *a2 = MEMORY[0x277D24E58] + 16;
  *(a2 + 48) = v149;
  return MEMORY[0x259CA8F00](v145);
}

void sub_259918D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  MEMORY[0x259CA8F00](&a30);
  ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(&a37);
  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    a55 = a54;
    operator delete(a54);
  }

  v57 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v57;
    operator delete(v57);
  }

  MEMORY[0x259CA8F00](v55 - 208);
  MEMORY[0x259CA8F00](v55 - 136);
  _Unwind_Resume(a1);
}

void sub_2599190CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2599190C4);
}

void MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(MIL::IRObject *a1@<X0>, _BYTE *a2@<X2>, _BYTE *a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    *a2 = 0;
    goto LABEL_25;
  }

  if ((*(*ParameterValue + 40))(ParameterValue))
  {
    v9 = MEMORY[0x259CA93E0]();
    if (v9)
    {
      *a3 = *v9;
      *a2 = 1;
LABEL_25:

      MIL::ValidationResult::ValidationResult(a4);
      return;
    }
  }

  *a2 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v11 = LocationPtr[1];
  v27 = *LocationPtr;
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v12 = std::string::append(&v22, " in operation ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = (*(*a1 + 56))(a1);
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::string::append(&v23, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v24, ".");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v26 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a4, &v27, 304, __p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_2599192F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v37 = *(v35 - 56);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(ANEMachineIR::Validators::NeConvParameterValues *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

uint64_t MIL::Util::Span<int const,18446744073709551615ul>::operator[](void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + 4 * a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::vector<unsigned long long>::emplace_back<unsigned long long>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

void ANEMachineIR::H2021::NeReduce::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25991ABA4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<MIL::IRParameter>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(result, a2);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void **std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void ANEMachineIR::H2021::PeReduce::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25991C8A0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(result);

    JUMPOUT(0x259CA9760);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25991D158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::IRDimension const*>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::IRDimension const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25991D254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[2],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991D3EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25991DDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[10],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991DEC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991DF3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[15],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E024(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991E09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E184(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991E1FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[17],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E2E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991E35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[11],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E444(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x259CA9760](v2, 0x20C40960023A9);
  }

  return result;
}

uint64_t std::default_delete<std::vector<std::shared_ptr<MIL::IRParameter>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x259CA9760](a2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IRParameter  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(result);

    JUMPOUT(0x259CA9760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286AADC48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25991F098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991F158(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25991F40C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[16],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991F4F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991F56C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[18],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991F654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991F6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[26],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991F7B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::TranslateAvgPool(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v6 = (*(*a2 + 120))(a2, &__p, 0);
  v7 = v6;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = 4;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Immediate value inputs not handled.");
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v170, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v170.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v170.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v9 = (*(*(a2 + 8) + 16))(a2 + 64, &__p, 1);
  v11 = MIL::IRValueType::AsTensorType(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v11, v10, v169);
  std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "exclude_padding_from_average");
  MIL::IROperation::GetParameterValue();
  v12 = MIL::IRValue::GetScalar<BOOL>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ceil_mode");
  MIL::IROperation::GetParameterValue();
  v13 = MIL::IRValue::GetScalar<BOOL>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v13)
  {
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v170, v11, &v162);
    v26 = (*(*a2 + 176))(a2);
    v27 = **v26;
    v28 = (*v26)[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Type = MIL::IRNamedValueType::GetType(v27);
    v30 = MIL::IRValueType::AsTensorType(Type);
    v160 = 0;
    v159 = 0;
    v161 = 0;
    ANEMachineIR::Utils::GetStaticTensorShape(v30, v31, &v157);
    v32 = (*(*v11 + 96))(v11);
    MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v170, (v32[1] - *v32) >> 3, &__s);
    MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v158 - v157) >> 3, v153);
    if (MilTranslator::OpTranslator::IsTransposeRequired(v153))
    {
      v75 = v28;
      MilTranslator::OpTranslator::InferTransposedShape(&v157, v153, &v135);
      v33 = *(this + 1);
      (*(*v30 + 88))(v30);
      MIL::IRTensorValueType::Make();
      Name = MIL::IRNamedValueType::GetName(v27);
      v35 = Name;
      if (*(Name + 23) >= 0)
      {
        v36 = *(Name + 23);
      }

      else
      {
        v36 = *(Name + 8);
      }

      p_str = &__str;
      std::string::basic_string[abi:ne200100](&__str, v36 + 13);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (v36)
      {
        if (v35[23] >= 0)
        {
          v38 = v35;
        }

        else
        {
          v38 = *v35;
        }

        memmove(p_str, v38, v36);
      }

      strcpy(p_str + v36, "_channel_last");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        v28 = v75;
        std::string::__init_copy_ctor_external(&v136, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v136 = __s;
        v28 = v75;
      }

      LODWORD(v137) = v155;
      BYTE4(v137) = v156;
      std::string::operator=(&v136, &__str);
      v42 = MIL::IRNamedValueType::GetName(v27);
      std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, v42, &v136);
      std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v100);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v152, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v152 = __str;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v149;
      if (v149)
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v149 = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v159, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v149);
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v41 = v135.__r_.__value_.__r.__words[0];
      if (!v135.__r_.__value_.__r.__words[0])
      {
        goto LABEL_76;
      }

      v135.__r_.__value_.__l.__size_ = v135.__r_.__value_.__r.__words[0];
    }

    else
    {
      v39 = MIL::IRNamedValueType::GetName(v27);
      if (*(v39 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v151, *v39, *(v39 + 8));
      }

      else
      {
        v40 = *v39;
        v151.__r_.__value_.__r.__words[2] = *(v39 + 16);
        *&v151.__r_.__value_.__l.__data_ = v40;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v136.__r_.__value_.__r.__words[0];
      if (v136.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v136.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v159, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v136);
      if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      v41 = v151.__r_.__value_.__r.__words[0];
    }

    operator delete(v41);
LABEL_76:
    MilTranslator::OpTranslator::InferTransposedShape(v169, v153, &v149);
    v43 = *(this + 1);
    (*(*v11 + 88))(v11);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v149, v150, (v150 - v149) >> 3);
    v44 = MIL::IRTensorValueType::Make();
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&v148, 0, sizeof(v148));
    memset(&v136, 0, sizeof(v136));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v136, v167, v168, (v168 - v167) >> 2);
    v138 = 0;
    v137 = 0;
    v139 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v137, v165, v166, (v166 - v165) >> 2);
    v141 = 0;
    v140 = 0;
    v142 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v140, v163, v164, (v164 - v163) >> 2);
    v143 = 0;
    v144 = 0;
    v45 = v12 ^ 1;
    v145 = v12 ^ 1;
    v146 = 1;
    v147 = 0;
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v47 = (*(*a2 + 56))(a2);
    if (v160 == v159)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v48 = v47;
    v49 = MIL::IRNamedValueType::GetType(*v159);
    v50 = MIL::IRValueType::AsTensorType(v49);
    v51 = **(this + 12);
    ANEMachineIR::Validators::ValidatePePool(LocationPtr, v48, v44, v50, &v136, &v135);
    if (MIL::ValidationResult::IsGood(&v135))
    {
      std::string::basic_string[abi:ne200100]<0>(&v133, "pe_avg_pool");
      MilTranslator::OpTranslator::AddOperation(this);
      if (v134 < 0)
      {
        operator delete(v133);
      }

      std::string::basic_string[abi:ne200100]<0>(&v130, "x");
      if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v129, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
      }

      else
      {
        v129 = v162;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v132)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v132);
      }

      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }

      if (v131 < 0)
      {
        operator delete(v130);
      }

      std::string::basic_string[abi:ne200100]<0>(&v126, "kernel_sizes");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v128)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      }

      if (v127 < 0)
      {
        operator delete(v126);
      }

      std::string::basic_string[abi:ne200100]<0>(&v123, "strides");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }

      if (v124 < 0)
      {
        operator delete(v123);
      }

      std::string::basic_string[abi:ne200100]<0>(&v120, "custom_pads");
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v163, v164, (v164 - v163) >> 2);
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v122)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v122);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v121 < 0)
      {
        operator delete(v120);
      }

      std::string::basic_string[abi:ne200100]<0>(&v117, "include_pads");
      MIL::Builder::OperationBuilder::AddInputBool();
      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      if (v118 < 0)
      {
        operator delete(v117);
      }

      if (v160 == v159)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v71 = MIL::IRNamedValueType::GetName(*v159);
      if (*(v71 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v115, *v71, *(v71 + 8));
      }

      else
      {
        v72 = *v71;
        v115.__r_.__value_.__r.__words[2] = *(v71 + 16);
        *&v115.__r_.__value_.__l.__data_ = v72;
      }

      if (v160 == v159)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRNamedValueType::GetType(*v159);
      MIL::Builder::OperationBuilder::AddOutput();
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      MIL::MILResult::GetMessage(&v135);
      std::operator+<char>();
      v52 = std::string::append(&__str, "; ");
      v53 = *&v52->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
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
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v148, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v167, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v165, &__p);
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v167, v168, (v168 - v167) >> 2);
      v100 = 0;
      v101 = 0;
      v102 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v100, v165, v166, (v166 - v165) >> 2);
      v103 = 0;
      v104 = 0;
      v105 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v103, v163, v164, (v164 - v163) >> 2);
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = v45;
      v113 = 1;
      v114 = 0;
      v56 = MIL::IRObject::GetLocationPtr(a2);
      v57 = (*(*a2 + 56))(a2);
      if (v160 == v159)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v58 = v57;
      v59 = MIL::IRNamedValueType::GetType(*v159);
      v60 = MIL::IRValueType::AsTensorType(v59);
      v61 = **(this + 12);
      ANEMachineIR::Validators::ValidateNePool(v56, v58, v44, v60, &__p, &__str);
      if (MIL::ValidationResult::IsGood(&__str))
      {
        std::string::basic_string[abi:ne200100]<0>(&v96, "ne_avg_pool");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v97 < 0)
        {
          operator delete(v96);
        }

        std::string::basic_string[abi:ne200100]<0>(&v93, "x");
        if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v92, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
        }

        else
        {
          v92 = v162;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v95)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v95);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (v94 < 0)
        {
          operator delete(v93);
        }

        std::string::basic_string[abi:ne200100]<0>(&v89, "kernel_sizes");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        if (v90 < 0)
        {
          operator delete(v89);
        }

        std::string::basic_string[abi:ne200100]<0>(&v86, "strides");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        if (v87 < 0)
        {
          operator delete(v86);
        }

        std::string::basic_string[abi:ne200100]<0>(&v83, "custom_pads");
        memset(&v82, 0, sizeof(v82));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, v163, v164, (v164 - v163) >> 2);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        if (v82.__r_.__value_.__r.__words[0])
        {
          v82.__r_.__value_.__l.__size_ = v82.__r_.__value_.__r.__words[0];
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (v84 < 0)
        {
          operator delete(v83);
        }

        std::string::basic_string[abi:ne200100]<0>(&v79, "include_pads");
        MIL::Builder::OperationBuilder::AddInputBool();
        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        if (v160 == v159)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v73 = MIL::IRNamedValueType::GetName(*v159);
        if (*(v73 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v77, *v73, *(v73 + 8));
        }

        else
        {
          v74 = *v73;
          v77.__r_.__value_.__r.__words[2] = *(v73 + 16);
          *&v77.__r_.__value_.__l.__data_ = v74;
        }

        if (v160 == v159)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        MIL::IRNamedValueType::GetType(*v159);
        MIL::Builder::OperationBuilder::AddOutput();
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v76.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MIL::MILResult::GetMessage(&__str);
        std::operator+<char>();
        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v82;
        }

        else
        {
          v62 = v82.__r_.__value_.__r.__words[0];
        }

        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v82.__r_.__value_.__l.__size_;
        }

        std::string::append(&v148, v62, v63);
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v64 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v65 = std::string::append(&v76, "', violations: ");
        v66 = *&v65->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = &v148;
        }

        else
        {
          v67 = v148.__r_.__value_.__r.__words[0];
        }

        if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = HIBYTE(v148.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v68 = v148.__r_.__value_.__l.__size_;
        }

        v69 = std::string::append(&v82, v67, v68);
        v70 = *&v69->__r_.__value_.__l.__data_;
        *(v64 + 16) = *(&v69->__r_.__value_.__l + 2);
        *v64 = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&__str);
      if (v103)
      {
        v104 = v103;
        operator delete(v103);
      }

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    MEMORY[0x259CA8F00](&v135);
    if (v140)
    {
      v141 = v140;
      operator delete(v140);
    }

    if (v137)
    {
      v138 = v137;
      operator delete(v137);
    }

    if (v136.__r_.__value_.__r.__words[0])
    {
      v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (v149)
    {
      v150 = v149;
      operator delete(v149);
    }

    if (v153[0])
    {
      v153[1] = v153[0];
      operator delete(v153[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v157)
    {
      v158 = v157;
      operator delete(v157);
    }

    __p.__r_.__value_.__r.__words[0] = &v159;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

    v25 = v162.__r_.__value_.__r.__words[0];
    goto LABEL_216;
  }

  *a3 = 6;
  v14 = a3 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v135, "ceil_mode");
  v15 = std::string::insert(&v135, 0, "Input '");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v136.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v136.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v136, "' is not supported for ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = (*(*a2 + 56))(a2);
  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *(v14 + 16) = *(&v23->__r_.__value_.__l + 2);
  *v14 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_217;
  }

  v25 = v135.__r_.__value_.__r.__words[0];
LABEL_216:
  operator delete(v25);
LABEL_217:
  if (v163)
  {
    v164 = v163;
    operator delete(v163);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v167)
  {
    v168 = v167;
    operator delete(v167);
  }

  if (v169[0])
  {
    v169[1] = v169[0];
    operator delete(v169[0]);
  }

  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }
}

void sub_259920A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x259CA8F00](&a55);
  ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(&a62);
  MEMORY[0x259CA8F00](&STACK[0x318]);
  ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(&STACK[0x350]);
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  v65 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v65;
    operator delete(v65);
  }

  v66 = STACK[0x410];
  if (STACK[0x410])
  {
    STACK[0x418] = v66;
    operator delete(v66);
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  v67 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v67;
    operator delete(v67);
  }

  a62 = &STACK[0x460];
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a62);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (*(v63 - 225) < 0)
  {
    operator delete(*(v63 - 248));
  }

  v68 = *(v63 - 224);
  if (v68)
  {
    *(v63 - 216) = v68;
    operator delete(v68);
  }

  v69 = *(v63 - 200);
  if (v69)
  {
    *(v63 - 192) = v69;
    operator delete(v69);
  }

  v70 = *(v63 - 176);
  if (v70)
  {
    *(v63 - 168) = v70;
    operator delete(v70);
  }

  v71 = *(v63 - 152);
  if (v71)
  {
    *(v63 - 144) = v71;
    operator delete(v71);
  }

  if (*(v63 - 105) < 0)
  {
    operator delete(*(v63 - 128));
  }

  _Unwind_Resume(a1);
}

void MilTranslator::anonymous namespace::GetParamValuesOfInt32Vector(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  ParameterValue = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v17 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&Data, v4);
      v7 = a1[1];
      v6 = a1[2];
      if (v7 >= v6)
      {
        v9 = *a1;
        v10 = v7 - *a1;
        v11 = (v10 >> 2) + 1;
        if (v11 >> 62)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        v12 = v6 - v9;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v13);
        }

        v14 = (4 * (v10 >> 2));
        *v14 = *v5;
        v8 = v14 + 1;
        memcpy(0, v9, v10);
        v15 = *a1;
        *a1 = 0;
        a1[1] = v8;
        a1[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v8 = v7 + 1;
      }

      a1[1] = v8;
      ++v4;
    }

    while (v4 < v17);
  }
}