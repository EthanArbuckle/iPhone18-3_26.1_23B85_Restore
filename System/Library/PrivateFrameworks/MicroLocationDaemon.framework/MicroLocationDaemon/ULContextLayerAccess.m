@interface ULContextLayerAccess
- (ULContextLayerAccess)initWithSingleAccess:(id)a3;
- (ULContextLayerAccess)initWithWriter:(id)a3 readers:(id)a4;
@end

@implementation ULContextLayerAccess

- (ULContextLayerAccess)initWithWriter:(id)a3 readers:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v6 = a4;
  v43.receiver = self;
  v43.super_class = ULContextLayerAccess;
  v7 = [(ULContextLayerAccess *)&v43 init];
  v8 = v7;
  if (v7)
  {
    [(ULContextLayerAccess *)v7 setWriter:0];
    if (v38)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v38];
      [(ULContextLayerAccess *)v8 setWriter:v9];

      v10 = [(ULContextLayerAccess *)v8 writer];
      v11 = v10 == 0;

      if (v11)
      {
        v30 = _CLLogObjectForCategory_MicroLocation_Default();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          v31 = v38;
          v32 = [v38 UTF8String];
          buf = 68289795;
          v46 = 2082;
          v47 = "";
          v48 = 2081;
          v49 = v32;
          v50 = 2082;
          v51 = "assert";
          v52 = 2081;
          v53 = "self.writer";
          _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid writer UUID, writer:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
        }

        v33 = _CLLogObjectForCategory_MicroLocation_Default();
        if (os_signpost_enabled(v33))
        {
          v34 = v38;
          v35 = [v38 UTF8String];
          buf = 68289795;
          v46 = 2082;
          v47 = "";
          v48 = 2081;
          v49 = v35;
          v50 = 2082;
          v51 = "assert";
          v52 = 2081;
          v53 = "self.writer";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid writer UUID", "{msg%{public}.0s:invalid writer UUID, writer:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
        }

        v36 = _CLLogObjectForCategory_MicroLocation_Default();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = v38;
          -[ULContextLayerAccess initWithWriter:readers:].cold.1([v38 UTF8String], &buf);
        }

        abort_report_np();
LABEL_29:
        __break(1u);
      }
    }

    [(ULContextLayerAccess *)v8 setReaders:0];
    if (v6)
    {
      v12 = [MEMORY[0x277CBEB58] set];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v14)
      {
        goto LABEL_13;
      }

      v15 = *v40;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
          if (!v18)
          {
            v22 = _CLLogObjectForCategory_MicroLocation_Default();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              v23 = v17;
              v24 = [v17 UTF8String];
              buf = 68289795;
              v46 = 2082;
              v47 = "";
              v48 = 2081;
              v49 = v24;
              v50 = 2082;
              v51 = "assert";
              v52 = 2081;
              v53 = "uuid";
              _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid reader UUID, reader:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
            }

            v25 = _CLLogObjectForCategory_MicroLocation_Default();
            if (os_signpost_enabled(v25))
            {
              v26 = v17;
              v27 = [v17 UTF8String];
              buf = 68289795;
              v46 = 2082;
              v47 = "";
              v48 = 2081;
              v49 = v27;
              v50 = 2082;
              v51 = "assert";
              v52 = 2081;
              v53 = "uuid";
              _os_signpost_emit_with_name_impl(&dword_258FE9000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid reader UUID", "{msg%{public}.0s:invalid reader UUID, reader:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
            }

            v28 = _CLLogObjectForCategory_MicroLocation_Default();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = v17;
              -[ULContextLayerAccess initWithWriter:readers:].cold.2([v17 UTF8String], &buf);
            }

            abort_report_np();
            goto LABEL_29;
          }

          [v12 addObject:v18];
        }

        v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (!v14)
        {
LABEL_13:

          v19 = [v12 copy];
          [(ULContextLayerAccess *)v8 setReaders:v19];

          break;
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (ULContextLayerAccess)initWithSingleAccess:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
    v6 = [(ULContextLayerAccess *)self initWithWriter:v4 readers:v5];
  }

  else
  {
    v6 = [(ULContextLayerAccess *)self initWithWriter:0 readers:0];
  }

  return v6;
}

- (void)initWithWriter:(uint64_t)a1 readers:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_1_4(v2, v3);
  *(v4 + 28) = v5;
  *(v4 + 30) = "assert";
  *(v4 + 38) = v6;
  *(v4 + 40) = "self.writer";
  _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid writer UUID, writer:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x30u);
}

- (void)initWithWriter:(uint64_t)a1 readers:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_1_4(v2, v3);
  *(v4 + 28) = v5;
  *(v4 + 30) = "assert";
  *(v4 + 38) = v6;
  *(v4 + 40) = "uuid";
  _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid reader UUID, reader:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x30u);
}

@end