@interface _GCKeyboardAndMouseEventSubject
- (_GCKeyboardAndMouseEventSubject)init;
- (id)observeButtonEvents:(id)events;
- (id)observeDigitizerEvents:(id)events;
- (id)observeKeyboardEvents:(id)events;
- (id)observePointerEvents:(id)events;
- (id)observeScrollEvents:(id)events;
- (void)addMaskAndPublishButtonEvent:(uint64_t)event atTimestamp:;
- (void)publishButtonEvent:(void *)event;
- (void)publishDigitizerEvent:(void *)event;
- (void)publishKeyboardEvent:(void *)event;
- (void)publishPointerEvent:(void *)event;
- (void)publishScrollEvent:(void *)event;
- (void)removeMaskAndPublishButtonEvent:(uint64_t)event atTimestamp:;
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

- (id)observeButtonEvents:(id)events
{
  v4 = [events copy];
  buttonEventObservers = [(_GCKeyboardAndMouseEventSubject *)self buttonEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [buttonEventObservers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      buttonEventObservers2 = [(_GCKeyboardAndMouseEventSubject *)self buttonEventObservers];
      v9 = [buttonEventObservers2 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setButtonEventObservers:v9];
      buttonEventObservers3 = [(_GCKeyboardAndMouseEventSubject *)self buttonEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [buttonEventObservers3 containsObject:v12];
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

- (id)observeKeyboardEvents:(id)events
{
  v4 = [events copy];
  keyboardEventObservers = [(_GCKeyboardAndMouseEventSubject *)self keyboardEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [keyboardEventObservers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      keyboardEventObservers2 = [(_GCKeyboardAndMouseEventSubject *)self keyboardEventObservers];
      v9 = [keyboardEventObservers2 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setKeyboardEventObservers:v9];
      keyboardEventObservers3 = [(_GCKeyboardAndMouseEventSubject *)self keyboardEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [keyboardEventObservers3 containsObject:v12];
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

- (id)observeScrollEvents:(id)events
{
  v4 = [events copy];
  scrollEventObservers = [(_GCKeyboardAndMouseEventSubject *)self scrollEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [scrollEventObservers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      scrollEventObservers2 = [(_GCKeyboardAndMouseEventSubject *)self scrollEventObservers];
      v9 = [scrollEventObservers2 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setScrollEventObservers:v9];
      scrollEventObservers3 = [(_GCKeyboardAndMouseEventSubject *)self scrollEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [scrollEventObservers3 containsObject:v12];
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

- (id)observeDigitizerEvents:(id)events
{
  v4 = [events copy];
  digitizerEventObservers = [(_GCKeyboardAndMouseEventSubject *)self digitizerEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [digitizerEventObservers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      digitizerEventObservers2 = [(_GCKeyboardAndMouseEventSubject *)self digitizerEventObservers];
      v9 = [digitizerEventObservers2 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setDigitizerEventObservers:v9];
      digitizerEventObservers3 = [(_GCKeyboardAndMouseEventSubject *)self digitizerEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [digitizerEventObservers3 containsObject:v12];
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

- (id)observePointerEvents:(id)events
{
  v4 = [events copy];
  pointerEventObservers = [(_GCKeyboardAndMouseEventSubject *)self pointerEventObservers];
  v6 = MEMORY[0x20F32E600](v4);
  v7 = [pointerEventObservers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      pointerEventObservers2 = [(_GCKeyboardAndMouseEventSubject *)self pointerEventObservers];
      v9 = [pointerEventObservers2 mutableCopy];

      v10 = MEMORY[0x20F32E600](v4);
      [v9 addObject:v10];

      [(_GCKeyboardAndMouseEventSubject *)self setPointerEventObservers:v9];
      pointerEventObservers3 = [(_GCKeyboardAndMouseEventSubject *)self pointerEventObservers];
      v12 = MEMORY[0x20F32E600](v4);
      v13 = [pointerEventObservers3 containsObject:v12];
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

- (void)publishButtonEvent:(void *)event
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (event)
  {
    event[1] = [v3 mask];
    v5 = objc_getProperty(event, sel_buttonEventObservers, 16, 1);
    v7 = OUTLINED_FUNCTION_1(v5, v6);
    if (v7)
    {
      OUTLINED_FUNCTION_4(v7, v8, v9, v10, v11, v12, v13, v14, v35, v38, v41);
      while (1)
      {
        OUTLINED_FUNCTION_3(v15, v16, v17, v18, v19, v20, v21, v22, v36, v39, v42);
        if (!v31)
        {
          objc_enumerationMutation(event);
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

- (void)addMaskAndPublishButtonEvent:(uint64_t)event atTimestamp:
{
  if (self)
  {
    v6 = objc_opt_new();
    [v6 setTimestamp:event];
    [v6 setMask:self[1] | a2];
    [(_GCKeyboardAndMouseEventSubject *)self publishButtonEvent:v6];
  }
}

- (void)removeMaskAndPublishButtonEvent:(uint64_t)event atTimestamp:
{
  if (self)
  {
    v6 = objc_opt_new();
    [v6 setTimestamp:event];
    [v6 setMask:self[1] & ~a2];
    [(_GCKeyboardAndMouseEventSubject *)self publishButtonEvent:v6];
  }
}

- (void)publishKeyboardEvent:(void *)event
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    v4 = objc_getProperty(event, sel_keyboardEventObservers, 24, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(event);
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

- (void)publishScrollEvent:(void *)event
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    v4 = objc_getProperty(event, sel_scrollEventObservers, 32, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(event);
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

- (void)publishDigitizerEvent:(void *)event
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    v4 = objc_getProperty(event, sel_digitizerEventObservers, 40, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(event);
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

- (void)publishPointerEvent:(void *)event
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    v4 = objc_getProperty(event, sel_pointerEventObservers, 48, 1);
    v6 = OUTLINED_FUNCTION_1(v4, v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40);
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41);
        if (!v30)
        {
          objc_enumerationMutation(event);
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