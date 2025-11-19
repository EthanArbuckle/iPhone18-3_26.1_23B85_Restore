uint64_t *std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void Nightingale::fwEstimatorOPK::getHistFwOpk(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  v6 = (a5 + 8);
  *(a5 + 12) = 0;
  *(a5 + 16) = 3;
  *(a5 + 32) = 0;
  *(a5 + 20) = 0;
  *(a5 + 28) = 0;
  v7.i64[0] = 0x3F0000003FLL;
  v7.i64[1] = 0x3F0000003FLL;
  *(a5 + 36) = vnegq_f32(v7);
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 140) = 0;
  *(a5 + 144) = 0x17FC00000;
  *(a5 + 152) = 0;
  *(a5 + 156) = 0;
  if (*(a2 + 24) == 1 && *(a2 + 16) == 1 && (a4 & 0x100000000) != 0)
  {
    v9 = *(a2 + 12);
    if (v9 <= a4)
    {
      *a5 = v9 - 4;
      *(a5 + 4) = 1;
      *(a5 + 8) = v9 + 1;
      *(a5 + 12) = 1;
      *(a5 + 16) = 0;
      *(a5 + 29) = Nightingale::phaseFactorProcessor::suppressFWStEnd(a1, a5, v6, a3);
      v11 = *a2;
      v12 = *(a2 + 20);

      Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(a1, v11, v12, a5);
    }

    else
    {
      *(a5 + 28) = 1;
    }
  }
}

uint64_t Nightingale::fwEstimatorOPK::getOnGoingjDayFwEndOpk(uint64_t a1, int a2, uint64_t a3)
{
  if ((BYTE4(a3) & (a3 - 4 >= a2)) != 0)
  {
    return (a3 + 1) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

void __65__period_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[period_lstm alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__period_lstm_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [period_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(period_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __64__period_lstm_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [period_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(period_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __72__model_period_10pct_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[model_period_10pct alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __63__model_period_10pct_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [model_period_10pctOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(model_period_10pctOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __71__model_period_10pct_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [model_period_10pctOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(model_period_10pctOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __65__fwEnddet_rf_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[fwEnddet_rf alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__fwEnddet_rf_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [fwEnddet_rfOutput alloc];
    v7 = [v14 featureValueForName:@"classLabel"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(fwEnddet_rfOutput *)v6 initWithClassLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__fwEnddet_rf_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [fwEnddet_rfOutput alloc];
    v7 = [v14 featureValueForName:@"classLabel"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(fwEnddet_rfOutput *)v6 initWithClassLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __67__fwEnddet_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[fwEnddet_lstm alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__fwEnddet_lstm_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [fwEnddet_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(fwEnddet_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __66__fwEnddet_lstm_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [fwEnddet_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(fwEnddet_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __71__model_fwEnd_10pct_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[model_fwEnd_10pct alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __62__model_fwEnd_10pct_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [model_fwEnd_10pctOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(model_fwEnd_10pctOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __70__model_fwEnd_10pct_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [model_fwEnd_10pctOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(model_fwEnd_10pctOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void Nightingale::ngt_DayStreamProcessor::analyze()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 - 4);
  v3 = *(*(a2 + 32) - 8);
  OUTLINED_FUNCTION_3();
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_2588F5000, v5, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, phase: %d}", v7, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  if (*(a1 + 52))
  {
    v2 = *(a1 + 48);
  }

  if (*(a1 + 36))
  {
    v3 = *(a1 + 32);
  }

  if (*(a1 + 44))
  {
    v4 = *(a1 + 40);
  }

  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x18u);
  v10 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(int *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  *(a1 + 4);
  v2 = a1[4];
  *(a1 + 20);
  v3 = a1[2];
  *(a1 + 12);
  v4 = a1[6];
  *(a1 + 28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Au);
  v10 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_DayStreamProcessor::printStats()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printStats(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4) == 1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_DayStreamProcessor::printStats(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 12) == 1)
  {
    v1 = *(a1 + 8);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) == 1)
  {
    v1 = *(a1 + 16);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28) == 1)
  {
    v1 = *(a1 + 24);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 36) == 1)
  {
    v1 = *(a1 + 32);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 44) == 1)
  {
    v1 = *(a1 + 40);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 52) == 1)
  {
    v1 = *(a1 + 48);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 60) == 1)
  {
    v1 = *(a1 + 56);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 68) == 1)
  {
    v1 = *(a1 + 64);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_DayStreamProcessor::printDeviations()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printDeviations(unsigned __int8 *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x14u);
  v9 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_DayStreamProcessor::printDeviations(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x14u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x14u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 36);
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x14u);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  std::vector<char>::push_back[abi:nn200100]((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = (a1[5] + 1);
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant()
{
  __assert_rtn("assert_invariant", "json.hpp", 1223, "m_type != value_t::binary or m_value.binary != nullptr");
}

{
  __assert_rtn("assert_invariant", "json.hpp", 1222, "m_type != value_t::string or m_value.string != nullptr");
}

{
  __assert_rtn("assert_invariant", "json.hpp", 1221, "m_type != value_t::array or m_value.array != nullptr");
}

{
  __assert_rtn("assert_invariant", "json.hpp", 1220, "m_type != value_t::object or m_value.object != nullptr");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump()
{
  __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 363, "false");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped()
{
  __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
}

{
  __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
}

void nlohmann::detail::to_chars<double>()
{
  __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1064, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2<double>()
{
  __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 889, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::format_buffer()
{
  __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 980, "max_exp > 0");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 979, "min_exp < 0");
}

void nlohmann::detail::dtoa_impl::compute_boundaries<double>()
{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 186, "value > 0");
}

{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 185, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2()
{
  __assert_rtn("grisu2", "to_chars.hpp", 827, "m_plus.e == m_minus.e");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
}

void nlohmann::detail::dtoa_impl::diyfp::normalize_to()
{
  __assert_rtn("normalize_to", "to_chars.hpp", 163, "((x.f << delta) >> delta) == x.f");
}

{
  __assert_rtn("normalize_to", "to_chars.hpp", 162, "delta >= 0");
}

void nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent()
{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
}

void nlohmann::detail::dtoa_impl::grisu2_digit_gen()
{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
}

void nlohmann::detail::dtoa_impl::diyfp::sub()
{
  __assert_rtn("sub", "to_chars.hpp", 66, "x.e == y.e");
}

{
  __assert_rtn("sub", "to_chars.hpp", 67, "x.f >= y.f");
}

void nlohmann::detail::dtoa_impl::grisu2_round()
{
  __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string()
{
  __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
}

{
  __assert_rtn("scan_string", "lexer.hpp", 370, "0x00 <= codepoint and codepoint <= 0x10FFFF");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(unsigned int a1, std::string *this, _BYTE *a3)
{
  std::string::push_back(this, (a1 >> 18) | 0xF0);
  std::string::push_back(this, (a1 >> 12) & 0x3F | 0x80);
  std::string::push_back(this, (a1 >> 6) & 0x3F | 0x80);
  *a3 = a1 & 0x3F | 0x80;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number()
{
  __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 928, "false");
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(unsigned __int8 **a1, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v14 = *MEMORY[0x277D85DE8];
  v13 = xmmword_258950490;
  do
  {
    v8 = *(&v13 + v7);
    result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(_DWORD *a1, uint64_t a2, std::string *a3, uint64_t a4, char *a5)
{
  std::string::push_back(a3 + 3, a3->__r_.__value_.__s.__data_[16]);
  v9 = &a1[a4];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a3);
    v10 = a3->__r_.__value_.__r.__words[2];
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back(a3 + 3, v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  a3[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object()
{
  __assert_rtn("end_object", "json_sax.hpp", 451, "not keep_stack.empty()");
}

{
  __assert_rtn("end_object", "json_sax.hpp", 450, "not ref_stack.empty()");
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array()
{
  __assert_rtn("end_array", "json_sax.hpp", 503, "not keep_stack.empty()");
}

{
  __assert_rtn("end_array", "json_sax.hpp", 502, "not ref_stack.empty()");
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->()
{
  __assert_rtn("operator->", "iter_impl.hpp", 291, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 285, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 279, "m_object != nullptr");
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>()
{
  __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
}

{
  __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
}

void Nightingale::uiLogProcessor::genPeriodSlide()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::genPeriodSlide(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void Nightingale::uiLogProcessor::genCycleSlide()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::process()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::process(uint64_t *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  v3 = *(v2 - 4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  v3 = *(v2 - 96);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  if (*(v2 - 88) == 1)
  {
    v3 = *(v2 - 92);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  v3 = *(v2 - 68);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

void Nightingale::uiLogProcessor::print_anUILog()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::print_anUILog(_DWORD *a1, uint64_t a2, int *a3)
{
  if (*(a2 + 8) == 1)
  {
    v3 = *(a2 + 4);
  }

  else
  {
    v3 = -1;
  }

  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

{
  if (*(a2 + 24) == 1)
  {
    v3 = *(a2 + 20);
  }

  else
  {
    v3 = -1;
  }

  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

{
  if (*(a2 + 16) == 1)
  {
    v3 = *(a2 + 12);
  }

  else
  {
    v3 = -1;
  }

  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

void Nightingale::uiLogProcessor::print_anUILog(float *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = -1.0;
  if (*(a2 + 36) == 1)
  {
    v4 = *(a2 + 32);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

{
  v4 = -1.0;
  if (*(a2 + 44) == 1)
  {
    v4 = *(a2 + 40);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

{
  v4 = -1.0;
  if (*(a2 + 52) == 1)
  {
    v4 = *(a2 + 48);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

{
  v4 = -1.0;
  if (*(a2 + 60) == 1)
  {
    v4 = *(a2 + 56);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void Nightingale::uiLogProcessor::print_anUILog(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_2588F5000, v2, v2, "phases: [", v3);
}

{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_2588F5000, v2, v2, ", ", v3);
}

{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_2588F5000, v2, v2, "]} ", v3);
}

{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_2588F5000, v2, v2, ",\n", v3);
}

void Nightingale::uiLogProcessor::print_anUILog(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 28);
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 36);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 44);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 52);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 60);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 68);
  v2 = *(a1 + 64);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 76);
  v2 = *(a1 + 72);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 84);
  v2 = *(a1 + 80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 92);
  v2 = *(a1 + 88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 100);
  v2 = *(a1 + 96);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 108);
  v2 = *(a1 + 104);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 116);
  v2 = *(a1 + 112);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 120);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 124);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 128);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void Nightingale::phaseFactorProcessor::ccMenstCycleLen_handling(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_2588F5000, a2, OS_LOG_TYPE_DEBUG, "\tccMenstCycleLen_handling: {jDayLastEndOfCC: %d}\n\n)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngtProjector::isFinite_aProj()
{
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngtProjector::getCAPeriodPredictionMethod()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngtProjector::isFinite_aGrad(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void Nightingale::ngt_HistoricalAnalyzer::analyze()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "Historical Analyzer debug message: {\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "  CycleProcessHistOut: {fwStart: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "],\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "\t\t\tfwEnd: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "]},\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "\t\t\talgUsed: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, "\t\t\tFailureCode: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_2588F5000, v0, v1, " dummy_key:0 \n},\n\n", v2, v3, v4, v5, v6);
}

void Nightingale::ngt_HistoricalAnalyzer::analyze(uint64_t *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  if (*(v2 - 68) == 1)
  {
    v3 = *(v2 - 72);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  if (*(v2 - 60) == 1)
  {
    v3 = *(v2 - 64);
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  v3 = *(v2 - 16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1);
  v3 = *(v2 - 12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  v9 = *MEMORY[0x277D85DE8];
}

void Nightingale::vVar<double>()
{
    ;
  }
}

void Nightingale::vVar<float>()
{
    ;
  }
}

void Nightingale::vMean<double>()
{
    ;
  }
}

void Nightingale::vMean<float>()
{
    ;
  }
}

void Nightingale::vMedian<double>()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}