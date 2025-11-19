@interface NSDictionary
@end

@implementation NSDictionary

id __54__NSDictionary_SFExtras__sf_asTextColumnsCardSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69CA4F8];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 parsec_mapAndFilterObjectsUsingBlock:&__block_literal_global_912];

  [v4 setSections:v5];

  return v4;
}

id __54__NSDictionary_SFExtras__sf_asTextColumnsCardSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69CA500];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 parsec_arrayForKey:@"text_lines"];
  [v4 setTextLines:v5];

  [v4 setTextNoWrap:{objc_msgSend(v3, "parsec_BOOLForKey:", @"text_nowrap"}];
  v6 = [v3 parsec_numberForKey:@"text_weight"];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = -1;
  }

  [v4 setTextWeight:v7];

  return v4;
}

id __51__NSDictionary_SFExtras__sf_asTableAlignmentSchema__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69CA4D8];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  if ([v8 isEqualToString:@"right"])
  {
    v9 = v7;
    v10 = 2;
LABEL_7:
    [v9 setColumnAlignment:v10];
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"left"])
  {
    v9 = v7;
    v10 = 0;
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"center"])
  {
    v9 = v7;
    v10 = 1;
    goto LABEL_7;
  }

  [v7 setColumnAlignment:0];
  if (PARLogHandleForCategory_onceToken_364 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
  }

  v15 = PARLogHandleForCategory_logHandles_1_365;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = v8;
    _os_log_error_impl(&dword_1B1064000, v15, OS_LOG_TYPE_ERROR, "unknown table alignment schema column_align: %@", &v22, 0xCu);
  }

LABEL_8:
  if ([*(a1 + 32) count] > a3)
  {
    v11 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    if ([v11 isEqualToString:@"center"])
    {
      v12 = v7;
      v13 = 1;
    }

    else if ([v11 isEqualToString:@"right"])
    {
      v12 = v7;
      v13 = 2;
    }

    else
    {
      if (![v11 isEqualToString:@"left"])
      {
        [v7 setColumnAlignment:0];
        if (PARLogHandleForCategory_onceToken_364 != -1)
        {
          dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
        }

        v21 = PARLogHandleForCategory_logHandles_1_365;
        if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
        {
          v22 = 138412290;
          v23 = v11;
          _os_log_error_impl(&dword_1B1064000, v21, OS_LOG_TYPE_ERROR, "unknown table alignment schema within_column_align: %@", &v22, 0xCu);
        }

        goto LABEL_24;
      }

      v12 = v7;
      v13 = 0;
    }

    [v12 setDataAlignment:v13];
LABEL_24:

    goto LABEL_25;
  }

  [v7 setColumnAlignment:0];
  if (PARLogHandleForCategory_onceToken_364 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
  }

  v14 = PARLogHandleForCategory_logHandles_1_365;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
  {
    v22 = 134217984;
    v23 = a3;
    _os_log_error_impl(&dword_1B1064000, v14, OS_LOG_TYPE_ERROR, "missing table alignment schema within_column_align[%lu]", &v22, 0xCu);
  }

LABEL_25:
  [v7 setIsEqualWidth:0];
  v16 = *(a1 + 40);
  if (v16)
  {
    if ([v16 count] <= a3)
    {
      if (PARLogHandleForCategory_onceToken_364 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
      }

      v18 = PARLogHandleForCategory_logHandles_1_365;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
      {
        v22 = 134217984;
        v23 = a3;
        _os_log_error_impl(&dword_1B1064000, v18, OS_LOG_TYPE_ERROR, "missing table alignment schema equal_width[%lu]", &v22, 0xCu);
      }
    }

    else
    {
      v17 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      [v7 setIsEqualWidth:{objc_msgSend(v17, "BOOLValue")}];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

id __55__NSDictionary_SFExtras__sf_asKeyValueDataCardSection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69CA180];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 setKey:v6];

  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v7 setValue:v8];

  return v7;
}

id __53__NSDictionary_SFExtras__sf_asScoreboardCardSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69CA468];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 sf_imageForKey:@"image" reply:*(a1 + 32)];
  [v5 setLogo:v6];

  v7 = [v4 parsec_stringForKey:@"label"];
  [v5 setRecord:v7];

  v8 = [v4 parsec_stringForKey:@"readable_string"];
  [v5 setAccessibilityDescription:v8];

  v9 = [v4 parsec_stringForKey:@"name"];

  [v5 setName:v9];

  return v5;
}

id __51__NSDictionary_SFExtras__sf_baseCardSection_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sf_asPunchout:*(a1 + 32)];
  v4 = [*(a1 + 40) parsec_stringForKey:@"action_target_id"];
  if ([(__CFString *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = @"open";
  }

  [v3 setActionTarget:v5];

  return v3;
}

id __37__NSDictionary_SFExtras__sf_asFlight__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E69CA0E0]);
  v4 = [v2 parsec_numberForKey:@"status"];
  [v3 setStatus:{objc_msgSend(v4, "integerValue")}];

  v5 = MEMORY[0x1E695DF00];
  v6 = [v2 parsec_numberForKey:@"departure_published_time"];
  v7 = [v5 dateWithTimeIntervalSince1970:{objc_msgSend(v6, "intValue")}];
  [v3 setDeparturePublishedTime:v7];

  v8 = MEMORY[0x1E695DF00];
  v9 = [v2 parsec_numberForKey:@"departure_actual_time"];
  v10 = [v8 dateWithTimeIntervalSince1970:{objc_msgSend(v9, "intValue")}];
  [v3 setDepartureActualTime:v10];

  v11 = [v2 parsec_stringForKey:@"departure_terminal"];
  [v3 setDepartureTerminal:v11];

  v12 = [v2 parsec_stringForKey:@"departure_gate"];
  [v3 setDepartureGate:v12];

  v13 = MEMORY[0x1E695DF00];
  v14 = [v2 parsec_numberForKey:@"departure_gate_closed"];
  v15 = [v13 dateWithTimeIntervalSince1970:{objc_msgSend(v14, "intValue")}];
  [v3 setDepartureGateClosedTime:v15];

  v16 = MEMORY[0x1E695DF00];
  v17 = [v2 parsec_numberForKey:@"departure_runway"];
  v18 = [v16 dateWithTimeIntervalSince1970:{objc_msgSend(v17, "intValue")}];
  [v3 setDepartureRunwayTime:v18];

  v19 = [v2 parsec_dictionaryForKey:@"departure_airport"];
  v20 = [v19 sf_asAirport];
  [v3 setDepartureAirport:v20];

  v21 = MEMORY[0x1E695DF00];
  v22 = [v2 parsec_numberForKey:@"arrival_published_time"];
  v23 = [v21 dateWithTimeIntervalSince1970:{objc_msgSend(v22, "intValue")}];
  [v3 setArrivalPublishedTime:v23];

  v24 = MEMORY[0x1E695DF00];
  v25 = [v2 parsec_numberForKey:@"arrival_actual_time"];
  v26 = [v24 dateWithTimeIntervalSince1970:{objc_msgSend(v25, "intValue")}];
  [v3 setArrivalActualTime:v26];

  v27 = [v2 parsec_stringForKey:@"arrival_terminal"];
  [v3 setArrivalTerminal:v27];

  v28 = [v2 parsec_stringForKey:@"arrival_gate"];
  [v3 setArrivalGate:v28];

  v29 = [v2 parsec_stringForKey:@"baggage_claim"];
  [v3 setBaggageClaim:v29];

  v30 = MEMORY[0x1E695DF00];
  v31 = [v2 parsec_numberForKey:@"arrival_runway"];
  v32 = [v30 dateWithTimeIntervalSince1970:{objc_msgSend(v31, "intValue")}];
  [v3 setArrivalRunwayTime:v32];

  v33 = MEMORY[0x1E695DF00];
  v34 = [v2 parsec_numberForKey:@"gate_arrival"];
  v35 = [v33 dateWithTimeIntervalSince1970:{objc_msgSend(v34, "intValue")}];
  [v3 setArrivalGateTime:v35];

  v36 = [v2 parsec_dictionaryForKey:@"arrival_airport"];
  v37 = [v36 sf_asAirport];
  [v3 setArrivalAirport:v37];

  v38 = [v2 parsec_dictionaryForKey:@"diverted_airport"];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 sf_asAirport];
    [v3 setDivertedAirport:v40];
  }

  v41 = [v2 parsec_stringForKey:@"title"];
  [v3 setTitle:v41];

  return v3;
}

@end