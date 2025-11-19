@interface FMPastDateComponentsFormatter
- (id)stringForObjectValue:(id)a3 withReferenceDate:(id)a4;
@end

@implementation FMPastDateComponentsFormatter

- (id)stringForObjectValue:(id)a3 withReferenceDate:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_31;
  }

  v8 = [(NSDateComponentsFormatter *)self allowedUnits];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = 0;
  do
  {
    v9 += v8 & 1;
    v10 = v8 > 1;
    v8 >>= 1;
  }

  while (v10);
  if (v9 == 1)
  {
    v11 = v6;
    v26 = 0;
    if ([(NSDateComponentsFormatter *)self allowedUnits]== 128)
    {
      v13 = [v11 second];
    }

    else if ([(NSDateComponentsFormatter *)self allowedUnits]== 64)
    {
      v13 = [v11 minute];
    }

    else
    {
      if ([(NSDateComponentsFormatter *)self allowedUnits]!= 32)
      {
        goto LABEL_21;
      }

      v13 = [v11 hour];
    }

    if (v13 < 0)
    {
      v15 = [(NSDateComponentsFormatter *)self unitsStyle]- 1;
      if (v15 <= 4)
      {
        v16 = dword_24A307538[v15];
      }

      v17 = [(NSDateComponentsFormatter *)self formattingContext]- 2;
      if (v17 <= 3)
      {
        v18 = dword_24A307550[v17];
      }

      v19 = [(NSDateComponentsFormatter *)self calendar];
      v20 = [v19 locale];
      v21 = [v20 localeIdentifier];
      [v21 UTF8String];
      ureldatefmt_open();

      v22 = ureldatefmt_formatNumeric();
      v23 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v22 + 2];
      v26 = 0;
      [v23 mutableBytes];
      [v23 length];
      ureldatefmt_formatNumeric();
      ureldatefmt_close();
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:objc_msgSend(v23 length:{"mutableBytes"), v22}];

      v14 = v12;
      goto LABEL_29;
    }

LABEL_21:
    v14 = LogCategory_Unspecified();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMPastDateComponentsFormatter stringForObjectValue:withReferenceDate:];
    }

    v12 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (v9)
  {
    v11 = LogCategory_Unspecified();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FMPastDateComponentsFormatter stringForObjectValue:withReferenceDate:];
    }

    goto LABEL_15;
  }

LABEL_8:
  v11 = LogCategory_Unspecified();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [FMPastDateComponentsFormatter stringForObjectValue:withReferenceDate:];
  }

LABEL_15:
  v12 = 0;
LABEL_30:

LABEL_31:
  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)stringForObjectValue:(int *)a1 withReferenceDate:.cold.1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stringForObjectValue:(int *)a1 withReferenceDate:.cold.3(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stringForObjectValue:withReferenceDate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end