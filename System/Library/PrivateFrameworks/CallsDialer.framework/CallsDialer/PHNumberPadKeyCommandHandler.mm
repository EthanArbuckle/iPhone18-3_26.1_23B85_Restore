@interface PHNumberPadKeyCommandHandler
- (PHNumberPadKeyCommandHandler)initWithViewController:(id)a3 selector:(SEL)a4;
- (char)characterForNumberPadCharacter:(int64_t)a3;
- (int64_t)numberPadCharacterForString:(id)a3;
- (void)handleKeyCommand:(id)a3 receivedCharacterBlock:(id)a4 receivedSpecialCharacterBlock:(id)a5;
@end

@implementation PHNumberPadKeyCommandHandler

- (PHNumberPadKeyCommandHandler)initWithViewController:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  if (initWithViewController_selector__onceToken != -1)
  {
    [PHNumberPadKeyCommandHandler initWithViewController:selector:];
  }

  v14.receiver = self;
  v14.super_class = PHNumberPadKeyCommandHandler;
  v7 = [(PHNumberPadKeyCommandHandler *)&v14 init];
  if (v7)
  {
    if ([initWithViewController_selector__commandCharacters length])
    {
      v8 = 0;
      do
      {
        v9 = [initWithViewController_selector__commandCharacters substringWithRange:{v8, 1}];
        v10 = [MEMORY[0x277D75650] keyCommandWithInput:v9 modifierFlags:0 action:a4];
        [v6 addKeyCommand:v10];

        ++v8;
      }

      while (v8 < [initWithViewController_selector__commandCharacters length]);
    }

    v11 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:a4];
    [v6 addKeyCommand:v11];
    v12 = [MEMORY[0x277D75650] keyCommandWithInput:@"\b" modifierFlags:0 action:a4];

    [v6 addKeyCommand:v12];
  }

  return v7;
}

void __64__PHNumberPadKeyCommandHandler_initWithViewController_selector___block_invoke()
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"01234567890abcdefghijklmnopqrstuvwxyz+*#"];
  for (i = 0; i != 12; ++i)
  {
    v1 = [MEMORY[0x277D6ED70] localizedLettersForCharacter:TPNumberPadCharacters[i]];
    [v5 appendString:v1];
  }

  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [v5 stringByTrimmingCharactersInSet:v2];
  v4 = initWithViewController_selector__commandCharacters;
  initWithViewController_selector__commandCharacters = v3;
}

- (void)handleKeyCommand:(id)a3 receivedCharacterBlock:(id)a4 receivedSpecialCharacterBlock:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v8;
    _os_log_impl(&dword_2429BC000, v11, OS_LOG_TYPE_DEFAULT, "Handling key command - %@", &v24, 0xCu);
  }

  if (v10)
  {
    v12 = [v8 input];
    v13 = [v12 isEqualToString:@"\r"];

    if (v13)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2429BC000, v14, OS_LOG_TYPE_DEFAULT, "Calling callback for PHNumberPadKeyCommandHandlerSpecialCharacterDial", &v24, 2u);
      }

      v15 = 1;
LABEL_12:

      v10[2](v10, v15);
      goto LABEL_13;
    }

    v16 = [v8 input];
    v17 = [v16 isEqualToString:@"\b"];

    if (v17)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2429BC000, v14, OS_LOG_TYPE_DEFAULT, "Calling callback for PHNumberPadKeyCommandHandlerSpecialCharacterBackspace", &v24, 2u);
      }

      v15 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  if (v9)
  {
    v18 = [v8 input];
    v19 = [(PHNumberPadKeyCommandHandler *)self numberPadCharacterForString:v18];

    v20 = [(PHNumberPadKeyCommandHandler *)self characterForNumberPadCharacter:v19];
    if (v20)
    {
      v21 = v20;
      v22 = PHDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 67109120;
        LODWORD(v25) = v21;
        _os_log_impl(&dword_2429BC000, v22, OS_LOG_TYPE_DEFAULT, "Calling callback for character '%c'", &v24, 8u);
      }

      v9[2](v9, v21);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (char)characterForNumberPadCharacter:(int64_t)a3
{
  if (a3 > 0xE)
  {
    return 48;
  }

  else
  {
    return a1234567890[a3];
  }
}

- (int64_t)numberPadCharacterForString:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_285537DC8];
  for (i = 0; i != 12; ++i)
  {
    v6 = TPNumberPadCharacters[i];
    v7 = [MEMORY[0x277D6ED70] localizedLettersForCharacter:v6];
    v8 = [v7 localizedLowercaseString];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v4 setObject:v9 forKeyedSubscript:v8];
  }

  v10 = [v3 localizedLowercaseString];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v4 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    v15 = 13;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if ([v17 containsString:v10])
        {
          v18 = [v4 objectForKeyedSubscript:v17];
          v15 = [v18 intValue];

          goto LABEL_14;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 13;
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end