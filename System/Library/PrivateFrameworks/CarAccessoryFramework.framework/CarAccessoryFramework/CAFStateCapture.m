@interface CAFStateCapture
- (CAFStateCapture)initWithIdentifier:(id)a3 capture:(id)a4;
- (id)description;
- (os_state_data_s)stateCapture;
- (void)dealloc;
- (void)stateCapture;
@end

@implementation CAFStateCapture

- (CAFStateCapture)initWithIdentifier:(id)a3 capture:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CAFGeneralLogging();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (!v9)
  {
    v10 = CAFGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = self;
      v29 = 2080;
      v30 = "[CAFStateCapture initWithIdentifier:capture:]";
      _os_log_impl(&dword_231618000, v10, OS_LOG_TYPE_DEFAULT, "%@ %s disabled", buf, 0x16u);
    }
  }

  v26.receiver = self;
  v26.super_class = CAFStateCapture;
  v11 = [(CAFStateCapture *)&v26 init];
  if (v11)
  {
    v12 = [v6 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = MEMORY[0x231933C60](v7);
    capture = v11->_capture;
    v11->_capture = v14;

    v16 = CAFStateCaptureLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CAFStateCapture initWithIdentifier:capture:];
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.caraccessoryframework.StateCapture-%@-%p", v11->_identifier, v11];
    v18 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    queue = v11->_queue;
    v11->_queue = v20;

    objc_initWeak(buf, v11);
    v22 = v11->_queue;
    objc_copyWeak(&v25, buf);
    v11->_handler = os_state_add_handler();
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __46__CAFStateCapture_initWithIdentifier_capture___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = CAFStateCaptureLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __46__CAFStateCapture_initWithIdentifier_capture___block_invoke_cold_1();
  }

  if (WeakRetained && *(a2 + 16) == 3)
  {
    v5 = [WeakRetained stateCapture];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2080;
  v4 = "[CAFStateCapture dealloc]";
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ %s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFStateCapture *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier=%@>", v4, self, v5];

  return v6;
}

- (os_state_data_s)stateCapture
{
  v3 = [(CAFStateCapture *)self capture];
  v4 = v3[2]();

  v15 = 0;
  v5 = MEMORY[0x231933890](v4, 0, &v15);
  v6 = v5;
  if (v15)
  {
    v7 = CAFStateCaptureLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAFStateCapture *)self stateCapture];
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if ([v5 length] >= 0x7D01)
  {
    v7 = CAFStateCaptureLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAFStateCapture *)self stateCapture];
    }

    goto LABEL_12;
  }

  v8 = [v6 length];
  v9 = v8;
  v10 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
  if (!v10)
  {
    v7 = CAFStateCaptureLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CAFStateCapture stateCapture];
    }

    goto LABEL_12;
  }

  v11 = v10;
  v10->var0 = 3;
  __strlcpy_chk();
  v12 = objc_opt_class();
  class_getName(v12);
  __strlcpy_chk();
  v11->var1.var1 = v8;
  v13 = [(CAFStateCapture *)self identifier];
  [v13 UTF8String];
  __strlcpy_chk();

  memcpy(v11->var4, [v6 bytes], v9);
  v7 = CAFStateCaptureLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CAFStateCapture *)self stateCapture];
  }

LABEL_13:

  return v11;
}

- (void)initWithIdentifier:capture:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2080;
  v4 = "[CAFStateCapture initWithIdentifier:capture:]";
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ %s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __46__CAFStateCapture_initWithIdentifier_capture___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ got called os_state_add_handler", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)stateCapture
{
  v6 = *MEMORY[0x277D85DE8];
  [a2 length];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_231618000, a3, OS_LOG_TYPE_ERROR, "%@ over data limit, length=%lu", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end