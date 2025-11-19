@interface RequestInitialModeChange
@end

@implementation RequestInitialModeChange

uint64_t __fsmcontroller_RequestInitialModeChange_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4 && (v5 = *v4) != 0)
    {
      *(v3 + 32) = v5;
      if (v5 == 2)
      {
        v6 = 100;
        *(v3 + 36) = 100;
      }

      else
      {
        *(v3 + 36) = v4[1];
        v6 = v4[2];
      }
    }

    else
    {
      *(v3 + 32) = 0x6400000002;
      v6 = 100;
    }

    *(v3 + 40) = v6;
    if (!dword_1EB75E258)
    {
      goto LABEL_15;
    }

    v7 = OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_2(v7, v8, v9, v10, v11, v12, v13, v14, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
    OUTLINED_FUNCTION_12_7();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v1;
    }

    if (v17)
    {
      FSMDebug_GetFigStarkModeEntityString(*(v3 + 32));
      FSMDebug_GetFigStarkModeConstraintString(*(v3 + 36));
      FSMDebug_GetFigStarkModeConstraintString(*(v3 + 40));
      OUTLINED_FUNCTION_6_12();
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_2_11();
      v1 = HIDWORD(v36);
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_15_7();
    v3 = *(a1 + 40);
    if (v3)
    {
LABEL_15:
      v18 = *(a1 + 56);
      if (v18 && (v19 = *v18) != 0)
      {
        *(v3 + 64) = v19;
        if (v19 == 2)
        {
          v20 = 100;
          *(v3 + 68) = 100;
        }

        else
        {
          *(v3 + 68) = v18[1];
          v20 = v18[2];
        }
      }

      else
      {
        *(v3 + 64) = 0x6400000002;
        v20 = 100;
      }

      *(v3 + 72) = v20;
      if (dword_1EB75E258)
      {
        v21 = OUTLINED_FUNCTION_10_7();
        OUTLINED_FUNCTION_4_2(v21, v22, v23, v24, v25, v26, v27, v28, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
        OUTLINED_FUNCTION_12_7();
        if (v16)
        {
          v30 = v29;
        }

        else
        {
          v30 = v1;
        }

        if (v30)
        {
          FSMDebug_GetFigStarkModeEntityString(*(v3 + 64));
          FSMDebug_GetFigStarkModeConstraintString(*(v3 + 68));
          FSMDebug_GetFigStarkModeConstraintString(*(v3 + 72));
          OUTLINED_FUNCTION_6_12();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_2_11();
        }

        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_15_7();
        v3 = *(a1 + 40);
      }
    }
  }

  result = fsm_requestModeChange(v3, a1 + 64, *(a1 + 136), 1, *(a1 + 144), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

@end