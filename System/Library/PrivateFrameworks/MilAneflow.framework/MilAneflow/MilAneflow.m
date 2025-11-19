void MIL::ANEMachineIR::Interpreter::PeMulCpu::Run(ANEMachineIR::Validators *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
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

  if (*v6 != 1834968432 || *(v6 + 4) != 27765)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    v10 = std::string::basic_string[abi:ne200100]<0>(v280, "pe_mul");
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

void sub_259901E80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
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
    JUMPOUT(0x259901D08);
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

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
    goto LABEL_83;
  }

  v31 = 0;
  v32 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v33 = *(v90 + 2);
  v66 = v33;
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v32;
  do
  {
    if (v32)
    {
      v36 = 0;
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
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v30 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v30 * v45), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
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

        ++v36;
        v32 = v65;
      }

      while (v36 != v65);
    }

    ++v31;
  }

  while (v31 != v63);
  v24 = __p;
  if (__p)
  {
LABEL_83:
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

void sub_259903E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v17 = a2;
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
  v26 = v87 - __p;
  if (v87 == __p)
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

  v27 = v93 - v92;
  if (v93 == v92)
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

  v28 = v91 - v90;
  if (v91 == v90)
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

  v29 = v89 - v88;
  if (v89 == v88)
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

  v65 = *__p;
  if (!*__p)
  {
    goto LABEL_90;
  }

  v82 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v84 = *(__p + 4);
  v64 = *v92;
  v66 = *(v92 + 1);
  v34 = *(v92 + 2);
  v68 = v34;
  v69 = *(__p + 2);
  v70 = *(v92 + 3);
  v71 = *(__p + 3);
  v35 = *(v92 + 4);
  v80 = *v90;
  v79 = *(v90 + 1);
  v78 = *(v90 + 2);
  v77 = *(v90 + 3);
  v76 = *(v90 + 4);
  v74 = *(v88 + 1);
  v75 = *v88;
  v72 = *(v88 + 3);
  v73 = *(v88 + 2);
  v36 = *(v88 + 4);
  v67 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v69)
        {
          for (i = 0; i != v69; ++i)
          {
            if (v71)
            {
              for (j = 0; j != v71; ++j)
              {
                if (v84)
                {
                  for (k = 0; k != v84; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (v17)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v47 >= -65536.0)
                    {
                      v48 = v47;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    if (v45 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v49 = v45;
                    }

                    else
                    {
                      v49 = -65536.0;
                    }

                    v50 = 0.0;
                    v51 = 0.0;
                    if ((v31 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp((v31 * v46), __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v48 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = v17;
                    v58 = 0.0;
                    if ((v49 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v59 = frexp((v49 * v50), __e);
                      v60 = ldexp(v59, 11);
                      v58 = ldexp(round(v60), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v58);
                    if (v61 == INFINITY)
                    {
                      LOBYTE(v62) = -1;
                    }

                    else if (v61 == -INFINITY)
                    {
                      LOBYTE(v62) = 0;
                    }

                    else
                    {
                      v63 = llroundf(v61);
                      if (v63 >= 255)
                      {
                        v63 = 255;
                      }

                      v62 = v63 & ~(v63 >> 31);
                    }

                    v17 = v57;
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v67;
      }

      while (v37 != v67);
    }

    ++v32;
  }

  while (v32 != v65);
  v25 = __p;
  if (__p)
  {
LABEL_90:
    v87 = v25;
    operator delete(v25);
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

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }
}

void sub_25990461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v26 = v86 - __p;
  if (v86 == __p)
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

  v27 = v92 - v91;
  if (v92 == v91)
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

  v28 = v90 - v89;
  if (v90 == v89)
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

  v29 = v88 - v87;
  if (v88 == v87)
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_92;
  }

  v81 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v34 = *(v91 + 2);
  v67 = v34;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v47 >= -65536.0)
                    {
                      v48 = v47;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    if (v45 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v49 = v45;
                    }

                    else
                    {
                      v49 = -65536.0;
                    }

                    v50 = 0.0;
                    v51 = 0.0;
                    if ((v31 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp((v31 * v46), __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v48 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v49 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v49 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      v61 = 127;
                    }

                    else if (v60 == -INFINITY)
                    {
                      v61 = 0x80;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 127)
                      {
                        v62 = 127;
                      }

                      if (v62 <= -128)
                      {
                        v61 = 0x80;
                      }

                      else
                      {
                        v61 = v62;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v66;
      }

      while (v37 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_92:
    v86 = v25;
    operator delete(v25);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_259904DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
    goto LABEL_78;
  }

  v31 = 0;
  v32 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v33 = *(v90 + 2);
  v66 = v33;
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v32;
  do
  {
    if (v32)
    {
      v36 = 0;
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
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v46 = v41;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v45 <= 65536.0)
                    {
                      v48 = v45;
                    }

                    else
                    {
                      v48 = 65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v30 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v30 * v46), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
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

        ++v36;
        v32 = v65;
      }

      while (v36 != v65);
    }

    ++v31;
  }

  while (v31 != v63);
  v24 = __p;
  if (__p)
  {
LABEL_78:
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

void sub_2599054EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v26 = v86 - __p;
  if (v86 == __p)
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

  v27 = v92 - v91;
  if (v92 == v91)
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

  v28 = v90 - v89;
  if (v90 == v89)
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

  v29 = v88 - v87;
  if (v88 == v87)
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_85;
  }

  v81 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v34 = *(v91 + 2);
  v67 = v34;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (a2)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0.0;
                    }

                    if (a3)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v47 = v42;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v47 < -65536.0)
                    {
                      v47 = -65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = 65536.0;
                    }

                    if (v46 <= 65536.0)
                    {
                      v49 = v46;
                    }

                    else
                    {
                      v49 = 65536.0;
                    }

                    v50 = 0.0;
                    v51 = 0.0;
                    if ((v31 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp((v31 * v47), __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v48 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v49 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v49 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      LOBYTE(v61) = -1;
                    }

                    else if (v60 == -INFINITY)
                    {
                      LOBYTE(v61) = 0;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 255)
                      {
                        v62 = 255;
                      }

                      v61 = v62 & ~(v62 >> 31);
                    }
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v66;
      }

      while (v37 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_85:
    v86 = v25;
    operator delete(v25);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_259905C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v26 = v86 - __p;
  if (v86 == __p)
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

  v27 = v92 - v91;
  if (v92 == v91)
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

  v28 = v90 - v89;
  if (v90 == v89)
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

  v29 = v88 - v87;
  if (v88 == v87)
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_87;
  }

  v81 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v34 = *(v91 + 2);
  v67 = v34;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (a2)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0.0;
                    }

                    if (a3)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v47 = v42;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v47 < -65536.0)
                    {
                      v47 = -65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = 65536.0;
                    }

                    if (v46 <= 65536.0)
                    {
                      v49 = v46;
                    }

                    else
                    {
                      v49 = 65536.0;
                    }

                    v50 = 0.0;
                    v51 = 0.0;
                    if ((v31 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp((v31 * v47), __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v48 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v49 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v49 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      v61 = 127;
                    }

                    else if (v60 == -INFINITY)
                    {
                      v61 = 0x80;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 127)
                      {
                        v62 = 127;
                      }

                      if (v62 <= -128)
                      {
                        v61 = 0x80;
                      }

                      else
                      {
                        v61 = v62;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v66;
      }

      while (v37 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_87:
    v86 = v25;
    operator delete(v25);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_259906430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
    goto LABEL_83;
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
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (v31)
                    {
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v30 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v30 * v45), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
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
LABEL_83:
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

void sub_259906B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
    goto LABEL_90;
  }

  v80 = a9;
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
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (a2)
                    {
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v31 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v31 * v45), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
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

        ++v37;
        v33 = v65;
      }

      while (v37 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_90:
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

void sub_2599072FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
    goto LABEL_92;
  }

  v80 = a9;
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
                    MIL::Fp16::GetFloat(__e);
                    v42 = v41;
                    if (a2)
                    {
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v31 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v31 * v45), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      v60 = 127;
                    }

                    else if (v59 == -INFINITY)
                    {
                      v60 = 0x80;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 127)
                      {
                        v61 = 127;
                      }

                      if (v61 <= -128)
                      {
                        v60 = 0x80;
                      }

                      else
                      {
                        v60 = v61;
                      }
                    }
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
  v25 = __p;
  if (__p)
  {
LABEL_92:
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

void sub_259907AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
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
    goto LABEL_80;
  }

  v32 = a2;
  v33 = 0;
  v34 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v35 = *(v90 + 2);
  v66 = v35;
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v36 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v37 = *(v86 + 4);
  v65 = v34;
  do
  {
    if (v34)
    {
      v38 = 0;
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
                    if (v32)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
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

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = v31 * v45;
                    v11 = 0.0;
                    v50 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v49, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v11 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v11) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v11), __e);
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

        ++v38;
        v34 = v65;
      }

      while (v38 != v65);
    }

    ++v33;
  }

  while (v33 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_80:
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

void sub_2599081CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v85 - __p;
  if (v85 == __p)
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

  v28 = v91 - v90;
  if (v91 == v90)
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

  v29 = v89 - v88;
  if (v89 == v88)
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

  v30 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_87;
  }

  v80 = a9;
  v33 = 0;
  v34 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v35 = *(v90 + 2);
  v66 = v35;
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v36 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v37 = *(v86 + 4);
  v65 = v34;
  do
  {
    if (v34)
    {
      v38 = 0;
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
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
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

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = v32 * v45;
                    v11 = 0.0;
                    v50 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v49, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v11 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v11) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v11), __e);
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

        ++v38;
        v34 = v65;
      }

      while (v38 != v65);
    }

    ++v33;
  }

  while (v33 != v63);
  v26 = __p;
  if (__p)
  {
LABEL_87:
    v85 = v26;
    operator delete(v26);
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

void sub_25990897C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v18 = a2;
  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v86 - __p;
  if (v86 == __p)
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

  v28 = v92 - v91;
  if (v92 == v91)
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

  v29 = v90 - v89;
  if (v90 == v89)
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

  v30 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v81 = a9;
  v33 = 0;
  v34 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v35 = *(v91 + 2);
  v67 = v35;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v36 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v37 = *(v87 + 4);
  v66 = v34;
  do
  {
    if (v34)
    {
      v38 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    if (v18)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
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

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = v32 * v45;
                    v11 = 0.0;
                    v50 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v49, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v11 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = v18;
                    v57 = 0.0;
                    if ((v48 * v11) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v48 * v11), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      v61 = 127;
                    }

                    else if (v60 == -INFINITY)
                    {
                      v61 = 0x80;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 127)
                      {
                        v62 = 127;
                      }

                      if (v62 <= -128)
                      {
                        v61 = 0x80;
                      }

                      else
                      {
                        v61 = v62;
                      }
                    }

                    v18 = v56;
                  }
                }
              }
            }
          }
        }

        ++v38;
        v34 = v66;
      }

      while (v38 != v66);
    }

    ++v33;
  }

  while (v33 != v64);
  v26 = __p;
  if (__p)
  {
LABEL_89:
    v86 = v26;
    operator delete(v26);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_259909138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_75;
  }

  v32 = a2;
  v33 = 0;
  v34 = *(__p + 1);
  v82 = *(__p + 4);
  v65 = *(v90 + 1);
  v67 = *(v90 + 2);
  v68 = *(__p + 2);
  v35 = *(v90 + 3);
  v36 = *(v90 + 4);
  v69 = v35;
  v70 = *(__p + 3);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v62 = *v86;
  v63 = *v90;
  v73 = *(v86 + 1);
  v71 = *(v86 + 3);
  v72 = *(v86 + 2);
  v37 = *(v86 + 4);
  v66 = v34;
  do
  {
    if (v34)
    {
      v38 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (v32)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    v46 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v46 = 65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v45 <= 65536.0)
                    {
                      v11 = v45;
                    }

                    else
                    {
                      v11 = 65536.0;
                    }

                    v48 = v31 * v46;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v11 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v11 * v49), __e);
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

        ++v38;
        v34 = v66;
      }

      while (v38 != v66);
    }

    ++v33;
  }

  while (v33 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_75:
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

void sub_259909830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v18 = a2;
  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v84 - __p;
  if (v84 == __p)
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

  v28 = v90 - v89;
  if (v90 == v89)
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

  v29 = v88 - v87;
  if (v88 == v87)
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

  v30 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_82;
  }

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
                    if (v18)
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

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
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
                      v11 = v43;
                    }

                    else
                    {
                      v11 = 65536.0;
                    }

                    v46 = v32 * v44;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v45 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = v18;
                    v55 = 0.0;
                    if ((v11 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v11 * v47), __e);
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

                    v18 = v54;
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
  v26 = __p;
  if (__p)
  {
LABEL_82:
    v84 = v26;
    operator delete(v26);
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

void sub_259909FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v83 - __p;
  if (v83 == __p)
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

  v30 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_84;
  }

  v77 = a9;
  v33 = 0;
  v63 = *(__p + 1);
  v65 = *(__p + 2);
  v67 = *(__p + 3);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v34 = *(v88 + 4);
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
  v35 = *(v84 + 4);
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

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
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
                      v11 = v43;
                    }

                    else
                    {
                      v11 = 65536.0;
                    }

                    v46 = v32 * v44;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v45 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = 0.0;
                    if ((v11 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v11 * v47), __e);
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

    ++v33;
  }

  while (v33 != v61);
  v26 = __p;
  if (__p)
  {
LABEL_84:
    v83 = v26;
    operator delete(v26);
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

void sub_25990A74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
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
    goto LABEL_80;
  }

  v32 = a2;
  v33 = 0;
  v34 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v35 = *(v89 + 2);
  v65 = v35;
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v36 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v37 = *(v85 + 4);
  v64 = v34;
  do
  {
    if (v34)
    {
      v38 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    if (v32)
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

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
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
                      v11 = v43;
                    }

                    else
                    {
                      v11 = -65536.0;
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

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v11 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v11 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v38;
        v34 = v64;
      }

      while (v38 != v64);
    }

    ++v33;
  }

  while (v33 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_80:
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

void sub_25990AE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v18 = a2;
  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v83 - __p;
  if (v83 == __p)
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

  v30 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_87;
  }

  v77 = a9;
  v33 = 0;
  v63 = *(__p + 1);
  v65 = *(__p + 2);
  v67 = *(__p + 3);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v34 = *(v88 + 4);
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
  v35 = *(v84 + 4);
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
                    if (v18)
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

                    v42 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v42 = 65536.0;
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
                      v11 = v41;
                    }

                    else
                    {
                      v11 = -65536.0;
                    }

                    v45 = v32 * v42;
                    v46 = 0.0;
                    v47 = 0.0;
                    if (v45 != 0.0)
                    {
                      __e[0] = 0;
                      v48 = frexp(v45, __e);
                      v49 = ldexp(v48, 11);
                      v47 = ldexp(round(v49), __e[0] - 11);
                    }

                    v50 = (v44 * a11) + v47;
                    if (v50 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v50, __e);
                      v52 = ldexp(v51, 11);
                      v46 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = v18;
                    v54 = 0.0;
                    if ((v11 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v11 * v46), __e);
                      v56 = ldexp(v55, 11);
                      v54 = ldexp(round(v56), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v54);
                    if (v57 == INFINITY)
                    {
                      LOBYTE(v58) = -1;
                    }

                    else if (v57 == -INFINITY)
                    {
                      LOBYTE(v58) = 0;
                    }

                    else
                    {
                      v59 = llroundf(v57);
                      if (v59 >= 255)
                      {
                        v59 = 255;
                      }

                      v58 = v59 & ~(v59 >> 31);
                    }

                    v18 = v53;
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

  while (v33 != v61);
  v26 = __p;
  if (__p)
  {
LABEL_87:
    v83 = v26;
    operator delete(v26);
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

void sub_25990B5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v82 - __p;
  if (v82 == __p)
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

  v30 = v84 - v83;
  if (v84 == v83)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v60 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v76 = a9;
  v33 = 0;
  v62 = *(__p + 1);
  v64 = *(__p + 2);
  v66 = *(__p + 3);
  v79 = *(__p + 4);
  v59 = *v87;
  v61 = *(v87 + 1);
  v63 = *(v87 + 2);
  v34 = *(v87 + 4);
  v65 = *(v87 + 3);
  v74 = *(v85 + 1);
  v75 = *v85;
  v72 = *(v85 + 3);
  v73 = *(v85 + 2);
  v70 = *v83;
  v71 = *(v85 + 4);
  v69 = *(v83 + 1);
  v67 = *(v83 + 3);
  v68 = *(v83 + 2);
  v35 = *(v83 + 4);
  do
  {
    if (v62)
    {
      for (i = 0; i != v62; ++i)
      {
        if (v64)
        {
          for (j = 0; j != v64; ++j)
          {
            if (v66)
            {
              for (k = 0; k != v66; ++k)
              {
                if (v79)
                {
                  for (m = 0; m != v79; ++m)
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

                    v42 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v42 = 65536.0;
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
                      v11 = v41;
                    }

                    else
                    {
                      v11 = -65536.0;
                    }

                    v45 = v32 * v42;
                    v46 = 0.0;
                    v47 = 0.0;
                    if (v45 != 0.0)
                    {
                      __e[0] = 0;
                      v48 = frexp(v45, __e);
                      v49 = ldexp(v48, 11);
                      v47 = ldexp(round(v49), __e[0] - 11);
                    }

                    v50 = (v44 * a11) + v47;
                    if (v50 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v50, __e);
                      v52 = ldexp(v51, 11);
                      v46 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = 0.0;
                    if ((v11 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp((v11 * v46), __e);
                      v55 = ldexp(v54, 11);
                      v53 = ldexp(round(v55), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v53);
                    if (v56 == INFINITY)
                    {
                      v57 = 127;
                    }

                    else if (v56 == -INFINITY)
                    {
                      v57 = 0x80;
                    }

                    else
                    {
                      v58 = llroundf(v56);
                      if (v58 >= 127)
                      {
                        v58 = 127;
                      }

                      if (v58 <= -128)
                      {
                        v57 = 0x80;
                      }

                      else
                      {
                        v57 = v58;
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

    ++v33;
  }

  while (v33 != v60);
  v26 = __p;
  if (__p)
  {
LABEL_89:
    v82 = v26;
    operator delete(v26);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
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
}

void sub_25990BDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v25 = v86 - __p;
  if (v86 == __p)
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

  v26 = v92 - v91;
  if (v92 == v91)
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_82;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v34 = *(v91 + 2);
  v67 = v34;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    if (v31)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = v41;
                    if (v41 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = v30 * v45;
                    v50 = 0.0;
                    v51 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v49, __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v47 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v48 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v48 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    v60 = std::function<float ()(float)>::operator()(a8, v57);
                    v62 = MIL::Fp16::FromFloat(v60, v61);
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v66;
      }

      while (v37 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v24 = __p;
  if (__p)
  {
LABEL_82:
    v86 = v24;
    operator delete(v24);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_25990C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v26 = v86 - __p;
  if (v86 == __p)
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

  v27 = v92 - v91;
  if (v92 == v91)
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

  v28 = v90 - v89;
  if (v90 == v89)
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

  v29 = v88 - v87;
  if (v88 == v87)
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v81 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v34 = *(v91 + 2);
  v67 = v34;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = v41;
                    if (v41 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = v31 * v45;
                    v50 = 0.0;
                    v51 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v49, __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v47 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v48 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v48 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      LOBYTE(v61) = -1;
                    }

                    else if (v60 == -INFINITY)
                    {
                      LOBYTE(v61) = 0;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 255)
                      {
                        v62 = 255;
                      }

                      v61 = v62 & ~(v62 >> 31);
                    }
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v66;
      }

      while (v37 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_89:
    v86 = v25;
    operator delete(v25);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_25990CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v26 = v87 - __p;
  if (v87 == __p)
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

  v27 = v93 - v92;
  if (v93 == v92)
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

  v28 = v91 - v90;
  if (v91 == v90)
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

  v29 = v89 - v88;
  if (v89 == v88)
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

  v65 = *__p;
  if (!*__p)
  {
    goto LABEL_91;
  }

  v32 = a2;
  v82 = a9;
  v33 = 0;
  v34 = *(__p + 1);
  v84 = *(__p + 4);
  v64 = *v92;
  v66 = *(v92 + 1);
  v35 = *(v92 + 2);
  v68 = v35;
  v69 = *(__p + 2);
  v70 = *(v92 + 3);
  v71 = *(__p + 3);
  v36 = *(v92 + 4);
  v80 = *v90;
  v79 = *(v90 + 1);
  v78 = *(v90 + 2);
  v77 = *(v90 + 3);
  v76 = *(v90 + 4);
  v74 = *(v88 + 1);
  v75 = *v88;
  v72 = *(v88 + 3);
  v73 = *(v88 + 2);
  v37 = *(v88 + 4);
  v67 = v34;
  do
  {
    if (v34)
    {
      v38 = 0;
      do
      {
        if (v69)
        {
          for (i = 0; i != v69; ++i)
          {
            if (v71)
            {
              for (j = 0; j != v71; ++j)
              {
                if (v84)
                {
                  for (k = 0; k != v84; ++k)
                  {
                    if (v32)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    v46 = v42;
                    if (v42 > 65536.0)
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v47 >= -65536.0)
                    {
                      v48 = v47;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    if (v45 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v49 = v45;
                    }

                    else
                    {
                      v49 = -65536.0;
                    }

                    v50 = v31 * v46;
                    v51 = 0.0;
                    v52 = 0.0;
                    if (v50 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v50, __e);
                      v54 = ldexp(v53, 11);
                      v52 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = (v48 * a11) + v52;
                    if (v55 != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp(v55, __e);
                      v57 = ldexp(v56, 11);
                      v51 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = 0.0;
                    if ((v49 * v51) != 0.0)
                    {
                      __e[0] = 0;
                      v59 = frexp((v49 * v51), __e);
                      v60 = ldexp(v59, 11);
                      v58 = ldexp(round(v60), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v58);
                    if (v61 == INFINITY)
                    {
                      v62 = 127;
                    }

                    else if (v61 == -INFINITY)
                    {
                      v62 = 0x80;
                    }

                    else
                    {
                      v63 = llroundf(v61);
                      if (v63 >= 127)
                      {
                        v63 = 127;
                      }

                      if (v63 <= -128)
                      {
                        v62 = 0x80;
                      }

                      else
                      {
                        v62 = v63;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v38;
        v34 = v67;
      }

      while (v38 != v67);
    }

    ++v33;
  }

  while (v33 != v65);
  v25 = __p;
  if (__p)
  {
LABEL_91:
    v87 = v25;
    operator delete(v25);
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

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }
}

void sub_25990D43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>)
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
  v25 = v86 - __p;
  if (v86 == __p)
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

  v26 = v92 - v91;
  if (v92 == v91)
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

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_77;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v34 = *(v91 + 2);
  v67 = v34;
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    if (v31)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    v46 = v41;
                    if (v41 > 65536.0)
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v45 <= 65536.0)
                    {
                      v48 = v45;
                    }

                    else
                    {
                      v48 = 65536.0;
                    }

                    v49 = v30 * v46;
                    v50 = 0.0;
                    v51 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v49, __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v47 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v48 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v48 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    v60 = std::function<float ()(float)>::operator()(a8, v57);
                    v62 = MIL::Fp16::FromFloat(v60, v61);
                  }
                }
              }
            }
          }
        }

        ++v37;
        v33 = v66;
      }

      while (v37 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v24 = __p;
  if (__p)
  {
LABEL_77:
    v86 = v24;
    operator delete(v24);
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

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_25990DB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
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