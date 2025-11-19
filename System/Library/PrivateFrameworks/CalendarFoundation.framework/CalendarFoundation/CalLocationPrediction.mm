@interface CalLocationPrediction
+ (id)predictedLocationOfInterestForEventTitle:(id)a3 eventLocation:(id)a4 calendarIdentifier:(id)a5 timeout:(unint64_t)a6 error:(id *)a7;
@end

@implementation CalLocationPrediction

+ (id)predictedLocationOfInterestForEventTitle:(id)a3 eventLocation:(id)a4 calendarIdentifier:(id)a5 timeout:(unint64_t)a6 error:(id *)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [EKWeakLinkClass(@"RTRoutineManager" 0xAuLL)];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__7;
  v44 = __Block_byref_object_dispose__7;
  v45 = 0;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__7;
  v38 = __Block_byref_object_dispose__7;
  v39 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke;
  v27[3] = &unk_1E7EC6EB0;
  v16 = v11;
  v28 = v16;
  v17 = v12;
  v29 = v17;
  v18 = v13;
  v30 = v18;
  v32 = &v34;
  v33 = &v40;
  v19 = v15;
  v31 = v19;
  [v14 fetchPredictedLocationsOfInterestAssociatedToTitle:v16 location:v17 calendarIdentifier:v18 withHandler:v27];
  if (dispatch_group_wait(v19, a6))
  {
    v20 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = v16;
      v50 = 2112;
      v51 = v17;
      v52 = 2112;
      v53 = v18;
      _os_log_error_impl(&dword_1B990D000, v20, OS_LOG_TYPE_ERROR, "Error fetching locations of interest for title %@, location: %@, calendar: %@: Request timed out", buf, 0x20u);
    }

    if (a7)
    {
      v46 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prediction timed out for title %@, location: %@, calendar: %@", v16, v17, v18];
      v47 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];

      *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CalLocationPredictionErrorDomain" code:0 userInfo:v22];
    }
  }

  else if (a7)
  {
    v23 = v35[5];
    if (v23)
    {
      *a7 = v23;
    }
  }

  v24 = v41[5];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_1(a1, v6, v7);
    }

    v8 = *(*(a1 + 64) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [v5 count];
    v10 = +[CalFoundationLogSubsystem defaultCategory];
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v12)
      {
        __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_2(v5, a1, v10);
      }

      v13 = [v5 firstObject];
      v14 = *(*(a1 + 72) + 8);
      v10 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else if (v12)
    {
      __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_3(a1, v10);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = [a2 localizedDescription];
  v9 = 138478595;
  v10 = v4;
  v11 = 2113;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  v15 = 2112;
  v16 = v7;
  _os_log_error_impl(&dword_1B990D000, a3, OS_LOG_TYPE_ERROR, "Error fetching locations of interest for title %{private}@, location: %{private}@, calendar: %@: %@", &v9, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_2(void *a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [a1 count];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = 134218755;
  v11 = v5;
  v12 = 2113;
  v13 = v6;
  v14 = 2113;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  _os_log_debug_impl(&dword_1B990D000, a3, OS_LOG_TYPE_DEBUG, "%lu locations of interest found for title %{private}@, location: %{private}@, calendar: %@", &v10, 0x2Au);
  v9 = *MEMORY[0x1E69E9840];
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v6 = 138478339;
  v7 = v2;
  v8 = 2113;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "No locations of interest found for title %{private}@, location: %{private}@, calendar: %@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end