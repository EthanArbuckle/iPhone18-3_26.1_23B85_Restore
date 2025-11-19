@interface _GCKeyboardAndMouseEventSubject
- (_GCKeyboardAndMouseEventSubject)init;
- (id)observeButtonEvents:(id)a3;
- (id)observeDigitizerEvents:(id)a3;
- (id)observeKeyboardEvents:(id)a3;
- (id)observePointerEvents:(id)a3;
- (id)observeScrollEvents:(id)a3;
- (void)addMaskAndPublishButtonEvent:(uint64_t)a3 atTimestamp:;
- (void)publishButtonEvent:(void *)a1;
- (void)publishDigitizerEvent:(void *)a1;
- (void)publishKeyboardEvent:(void *)a1;
- (void)publishPointerEvent:(void *)a1;
- (void)publishScrollEvent:(void *)a1;
- (void)removeMaskAndPublishButtonEvent:(uint64_t)a3 atTimestamp:;
@end

@implementation _GCKeyboardAndMouseEventSubject

- (_GCKeyboardAndMouseEventSubject)init
{
  v14.receiver = self;
  v14.super_class = _GCKeyboardAndMouseEventSubject;
  v2 = [(_GCKeyboardAndMouseEventSubject *)&v14 init];
  v3 = objc_opt_new();
  buttonEventObservers = v2->_buttonEventObservers;
  v2->_buttonEventObservers = v3;

  v5 = objc_opt_new();
  keyboardEventObservers = v2->_keyboardEventObservers;
  v2->_keyboardEventObservers = v5;

  v7 = objc_opt_new();
  scrollEventObservers = v2->_scrollEventObservers;
  v2->_scrollEventObservers = v7;

  v9 = objc_opt_new();
  digitizerEventObservers = v2->_digitizerEventObservers;
  v2->_digitizerEventObservers = v9;

  v11 = objc_opt_new();
  pointerEventObservers = v2->_pointerEventObservers;
  v2->_pointerEventObservers = v11;

  return v2;
}

- (id)observeButtonEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCKeyboardAndMouseEventSubject *)self buttonEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCKeyboardAndMouseEventSubject *)self buttonEventObservers];
      v9 = [v8 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setButtonEventObservers:v9];
      v11 = [(_GCKeyboardAndMouseEventSubject *)self buttonEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = objc_alloc(MEMORY[0x277D0C8F8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63___GCKeyboardAndMouseEventSubject_Button__observeButtonEvents___block_invoke;
  v18[3] = &unk_277E1DBD0;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [v14 initWithCleanupHandler:v18];

  return v16;
}

- (id)observeKeyboardEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCKeyboardAndMouseEventSubject *)self keyboardEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCKeyboardAndMouseEventSubject *)self keyboardEventObservers];
      v9 = [v8 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setKeyboardEventObservers:v9];
      v11 = [(_GCKeyboardAndMouseEventSubject *)self keyboardEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = objc_alloc(MEMORY[0x277D0C8F8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67___GCKeyboardAndMouseEventSubject_Keyboard__observeKeyboardEvents___block_invoke;
  v18[3] = &unk_277E1DBD0;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [v14 initWithCleanupHandler:v18];

  return v16;
}

- (id)observeScrollEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCKeyboardAndMouseEventSubject *)self scrollEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCKeyboardAndMouseEventSubject *)self scrollEventObservers];
      v9 = [v8 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setScrollEventObservers:v9];
      v11 = [(_GCKeyboardAndMouseEventSubject *)self scrollEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = objc_alloc(MEMORY[0x277D0C8F8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63___GCKeyboardAndMouseEventSubject_Scroll__observeScrollEvents___block_invoke;
  v18[3] = &unk_277E1DBD0;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [v14 initWithCleanupHandler:v18];

  return v16;
}

- (id)observeDigitizerEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCKeyboardAndMouseEventSubject *)self digitizerEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCKeyboardAndMouseEventSubject *)self digitizerEventObservers];
      v9 = [v8 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setDigitizerEventObservers:v9];
      v11 = [(_GCKeyboardAndMouseEventSubject *)self digitizerEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = objc_alloc(MEMORY[0x277D0C8F8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69___GCKeyboardAndMouseEventSubject_Digitizer__observeDigitizerEvents___block_invoke;
  v18[3] = &unk_277E1DBD0;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [v14 initWithCleanupHandler:v18];

  return v16;
}

- (id)observePointerEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCKeyboardAndMouseEventSubject *)self pointerEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCKeyboardAndMouseEventSubject *)self pointerEventObservers];
      v9 = [v8 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setPointerEventObservers:v9];
      v11 = [(_GCKeyboardAndMouseEventSubject *)self pointerEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = objc_alloc(MEMORY[0x277D0C8F8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65___GCKeyboardAndMouseEventSubject_Pointer__observePointerEvents___block_invoke;
  v18[3] = &unk_277E1DBD0;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [v14 initWithCleanupHandler:v18];

  return v16;
}

- (void)publishButtonEvent:(void *)a1
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1[1] = [v3 mask];
    v5 = objc_getProperty(a1, sel_buttonEventObservers, 16, 1);
    v7 = OUTLINED_FUNCTION_1(v5, v6);
    if (v7)
    {
      OUTLINED_FUNCTION_4(v7, v8, v9, v10, v11, v12, v13, v14, v35, v38, v41);
      while (1)
      {
        OUTLINED_FUNCTION_3(v15, v16, v17, v18, v19, v20, v21, v22, v36, v39, v42);
        if (!v31)
        {
          objc_enumerationMutation(a1);
        }

        v32 = OUTLINED_FUNCTION_0(v23, v24, v25, v26, v27, v28, v29, v30, v37, v40);
        v33(v32);
        OUTLINED_FUNCTION_5();
        if (v31)
        {
          v15 = OUTLINED_FUNCTION_2(v15, v16, v17, v18, v19, v20, v21, v22, v36, v39, v42, v43, v44, v45, v46, v47, v48, v49);
          if (!v15)
          {
            break;
          }
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addMaskAndPublishButtonEvent:(uint64_t)a3 atTimestamp:
{
  if (a1)
  {
    v6 = objc_opt_new();
    [v6 setTimestamp:a3];
    [v6 setMask:a1[1] | a2];
    [(_GCKeyboardAndMouseEventSubject *)a1 publishButtonEvent:v6];
  }
}

- (void)removeMaskAndPublishButtonEvent:(uint64_t)a3 atTimestamp:
{
  if (a1)
  {
    v6 = objc_opt_new();
    [v6 setTimestamp:a3];
    [v6 setMask:a1[1] & ~a2];
    [(_GCKeyboardAndMouseEventSubject *)a1 publishButtonEvent:v6];
  }
}

- (void)publishKeyboardEvent:(void *)a1
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_getProperty(a1, sel_keyboardEventObservers, 24, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(a1);
        }

        v31 = OUTLINED_FUNCTION_0(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39);
        v32(v31);
        OUTLINED_FUNCTION_5();
        if (v30)
        {
          v14 = OUTLINED_FUNCTION_2(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41, v42, v43, v44, v45, v46, v47, v48);
          if (!v14)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)publishScrollEvent:(void *)a1
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_getProperty(a1, sel_scrollEventObservers, 32, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(a1);
        }

        v31 = OUTLINED_FUNCTION_0(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39);
        v32(v31);
        OUTLINED_FUNCTION_5();
        if (v30)
        {
          v14 = OUTLINED_FUNCTION_2(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41, v42, v43, v44, v45, v46, v47, v48);
          if (!v14)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)publishDigitizerEvent:(void *)a1
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_getProperty(a1, sel_digitizerEventObservers, 40, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(a1);
        }

        v31 = OUTLINED_FUNCTION_0(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39);
        v32(v31);
        OUTLINED_FUNCTION_5();
        if (v30)
        {
          v14 = OUTLINED_FUNCTION_2(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41, v42, v43, v44, v45, v46, v47, v48);
          if (!v14)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)publishPointerEvent:(void *)a1
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_getProperty(a1, sel_pointerEventObservers, 48, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(a1);
        }

        v31 = OUTLINED_FUNCTION_0(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39);
        v32(v31);
        OUTLINED_FUNCTION_5();
        if (v30)
        {
          v14 = OUTLINED_FUNCTION_2(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41, v42, v43, v44, v45, v46, v47, v48);
          if (!v14)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end